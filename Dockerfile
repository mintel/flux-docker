FROM fluxcd/flux:1.21.0

# Copy in patched version of kubeyaml which uses yaml CLoader bindings.
COPY --from=mintel/kubeyaml:v0.7.0_mintel.0.1.0 /usr/lib/kubeyaml /usr/lib/kubeyaml/
ENV PATH=/bin:/usr/bin:/usr/local/bin:/usr/lib/kubeyaml
