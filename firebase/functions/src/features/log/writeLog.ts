import { logger } from "firebase-functions";
import { onCall } from "firebase-functions/https";
import type { WriteLogRequest } from "./domain/writeLogRequest";

export const writeLog = onCall(
  {
    maxInstances: 5,
  },
  (request) => {
    const data = request.data as WriteLogRequest;

    for (const log of data.logs) {
      switch (log.level) {
        case "info":
          logger.info(log.log);
          break;
        case "debug":
          logger.debug(log.log);
          break;
        case "verbose":
          logger.debug(log.log);
          break;
        case "warning":
          logger.warn(log.log);
          break;
        case "error":
          logger.error(log.log);
          break;
        case "critical":
          logger.error(log.log);
          break;
      }
    }
  },
);
