FROM ubuntu as builder
RUN echo "moin!"
RUN sleep 2
RUN echo "done"

FROM scratch as export
COPY --from=builder /bin/bash /bin/bash
