FROM ubuntu as builder
RUN echo "moin!"
RUN sleep 2
RUN echo "done"

RUN something_that_will_not_work

FROM scratch as export
COPY --from=builder /bin/bash /bin/bash
