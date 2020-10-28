FROM fluxcd/flux:1.21.0

# Get the kubeyaml  inary (files) and put them on the path
COPY --from=nabadger/kubeyaml:cyaml-latest /usr/lib/kubeyaml /usr/lib/kubeyaml/
ENV PATH=/bin:/usr/bin:/usr/local/bin:/usr/lib/kubeyaml
