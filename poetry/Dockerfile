FROM python:3.11.5

ENV POETRY_VERSION=1.6
ENV POETRY_VENV=/opt/.venv

RUN python -m venv ${POETRY_VENV}
ENV PATH="$POETRY_VENV/bin:$PATH"
RUN python -m pip install poetry==${POETRY_VERSION}

WORKDIR /workdir
COPY . /workdir

CMD ["python", "-m", "poetry"]
