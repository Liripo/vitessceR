% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wrappers_sce.R
\docType{class}
\name{SCEWrapper}
\alias{SCEWrapper}
\title{SCEWrapper Class}
\description{
Class representing a local SingleCellExperiment object in a Vitessce dataset.
}
\details{
SingleCellExperiment object wrapper class
}
\examples{
obj <- get_sce_obj()
w <- SCEWrapper$new(
  obj,
  cell_embeddings = c("pca"),
  cell_embedding_names = c("PCA")
)
}
\keyword{internal}
\section{Super class}{
\code{\link[vitessceR:AbstractWrapper]{vitessceR::AbstractWrapper}} -> \code{SCEWrapper}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{obj}}{The object to wrap.}

\item{\code{cell_embeddings}}{The keys in the Seurat object's reductions/cell.embeddings
to use for creating dimensionality reduction mappings.}

\item{\code{cell_embedding_names}}{Names
to use for creating dimensionality reduction mappings.}

\item{\code{cell_embedding_dims}}{The dimension indices
to use for creating dimensionality reduction mappings.}

\item{\code{cell_set_metas}}{The keys in the Seurat object's meta.data
to use for creating cell sets.}

\item{\code{cell_set_meta_names}}{The keys in the Seurat object's meta.data
to use for cell set names mapped to new names.}

\item{\code{cell_set_meta_scores}}{The keys in the Seurat object's meta.data
to use for cell set names mapped to keys for scores.}

\item{\code{zarr_folder}}{The name for the folder at the root of the zarr store.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-SCEWrapper-new}{\code{SCEWrapper$new()}}
\item \href{#method-SCEWrapper-check_obj}{\code{SCEWrapper$check_obj()}}
\item \href{#method-SCEWrapper-get_zarr_path}{\code{SCEWrapper$get_zarr_path()}}
\item \href{#method-SCEWrapper-get_zarr_url}{\code{SCEWrapper$get_zarr_url()}}
\item \href{#method-SCEWrapper-convert_and_save}{\code{SCEWrapper$convert_and_save()}}
\item \href{#method-SCEWrapper-make_cells_file_def_creator}{\code{SCEWrapper$make_cells_file_def_creator()}}
\item \href{#method-SCEWrapper-make_cell_sets_file_def_creator}{\code{SCEWrapper$make_cell_sets_file_def_creator()}}
\item \href{#method-SCEWrapper-make_expression_matrix_file_def_creator}{\code{SCEWrapper$make_expression_matrix_file_def_creator()}}
\item \href{#method-SCEWrapper-clone}{\code{SCEWrapper$clone()}}
}
}
\if{html}{\out{
<details><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="vitessceR" data-topic="AbstractWrapper" data-id="auto_view_config"><a href='../../vitessceR/html/AbstractWrapper.html#method-AbstractWrapper-auto_view_config'><code>vitessceR::AbstractWrapper$auto_view_config()</code></a></span></li>
<li><span class="pkg-link" data-pkg="vitessceR" data-topic="AbstractWrapper" data-id="get_file_defs"><a href='../../vitessceR/html/AbstractWrapper.html#method-AbstractWrapper-get_file_defs'><code>vitessceR::AbstractWrapper$get_file_defs()</code></a></span></li>
<li><span class="pkg-link" data-pkg="vitessceR" data-topic="AbstractWrapper" data-id="get_out_dir"><a href='../../vitessceR/html/AbstractWrapper.html#method-AbstractWrapper-get_out_dir'><code>vitessceR::AbstractWrapper$get_out_dir()</code></a></span></li>
<li><span class="pkg-link" data-pkg="vitessceR" data-topic="AbstractWrapper" data-id="get_out_dir_route"><a href='../../vitessceR/html/AbstractWrapper.html#method-AbstractWrapper-get_out_dir_route'><code>vitessceR::AbstractWrapper$get_out_dir_route()</code></a></span></li>
<li><span class="pkg-link" data-pkg="vitessceR" data-topic="AbstractWrapper" data-id="get_route_str"><a href='../../vitessceR/html/AbstractWrapper.html#method-AbstractWrapper-get_route_str'><code>vitessceR::AbstractWrapper$get_route_str()</code></a></span></li>
<li><span class="pkg-link" data-pkg="vitessceR" data-topic="AbstractWrapper" data-id="get_routes"><a href='../../vitessceR/html/AbstractWrapper.html#method-AbstractWrapper-get_routes'><code>vitessceR::AbstractWrapper$get_routes()</code></a></span></li>
<li><span class="pkg-link" data-pkg="vitessceR" data-topic="AbstractWrapper" data-id="get_url"><a href='../../vitessceR/html/AbstractWrapper.html#method-AbstractWrapper-get_url'><code>vitessceR::AbstractWrapper$get_url()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-SCEWrapper-new"></a>}}
\if{latex}{\out{\hypertarget{method-SCEWrapper-new}{}}}
\subsection{Method \code{new()}}{
Create a wrapper around a Seurat object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{SCEWrapper$new(
  obj,
  cell_embeddings = NA,
  cell_embedding_names = NA,
  cell_embedding_dims = NA,
  cell_set_metas = NA,
  cell_set_meta_names = NA,
  cell_set_meta_scores = NA,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{obj}}{The object to wrap.}

\item{\code{cell_embeddings}}{The keys in the Seurat object's reductions/cell.embeddings
to use for creating dimensionality reduction plots.}

\item{\code{cell_embedding_names}}{Names
to use for creating dimensionality reduction plots.}

\item{\code{cell_embedding_dims}}{An array of dimension indices to use for each cell_embedding.}

\item{\code{cell_set_metas}}{An optional list of keys in the object's meta.data
list to use for creating cell sets.}

\item{\code{cell_set_meta_names}}{If cell_set_metas is provided, this list can
also be provided to set new names to replace
the keys in the interface.}

\item{\code{cell_set_meta_scores}}{If cell_set_metas is provided, this list can
also be provided to map between meta.data keys for set annotations
and keys for annotation scores.}

\item{\code{...}}{Parameters inherited from \code{AbstractWrapper}.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A new \code{SCEWrapper} object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-SCEWrapper-check_obj"></a>}}
\if{latex}{\out{\hypertarget{method-SCEWrapper-check_obj}{}}}
\subsection{Method \code{check_obj()}}{
Check that the object is valid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{SCEWrapper$check_obj()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Success or failure.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-SCEWrapper-get_zarr_path"></a>}}
\if{latex}{\out{\hypertarget{method-SCEWrapper-get_zarr_path}{}}}
\subsection{Method \code{get_zarr_path()}}{
Get the path to the zarr store, relative to the current directory.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{SCEWrapper$get_zarr_path(dataset_uid, obj_i)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{dataset_uid}}{The ID for this dataset.}

\item{\code{obj_i}}{The index of this data object within the dataset.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A path as a string.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-SCEWrapper-get_zarr_url"></a>}}
\if{latex}{\out{\hypertarget{method-SCEWrapper-get_zarr_url}{}}}
\subsection{Method \code{get_zarr_url()}}{
Get the URL to the Zarr store, to fill in the file URL in the file definitions.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{SCEWrapper$get_zarr_url(base_url, dataset_uid, obj_i)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{base_url}}{The base URL, on which the route will be served.}

\item{\code{dataset_uid}}{The ID for this dataset.}

\item{\code{obj_i}}{The index of this data object within the dataset.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A URL as a string.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-SCEWrapper-convert_and_save"></a>}}
\if{latex}{\out{\hypertarget{method-SCEWrapper-convert_and_save}{}}}
\subsection{Method \code{convert_and_save()}}{
Create the JSON output files, web server routes, and file definition creators.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{SCEWrapper$convert_and_save(dataset_uid, obj_i)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{dataset_uid}}{The ID for this dataset.}

\item{\code{obj_i}}{The index of this data object within the dataset.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-SCEWrapper-make_cells_file_def_creator"></a>}}
\if{latex}{\out{\hypertarget{method-SCEWrapper-make_cells_file_def_creator}{}}}
\subsection{Method \code{make_cells_file_def_creator()}}{
Make the file definition creator function for the cells data type.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{SCEWrapper$make_cells_file_def_creator(dataset_uid, obj_i)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{dataset_uid}}{The ID for this dataset.}

\item{\code{obj_i}}{The index of this data object within the dataset.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A file definition creator function which takes a \code{base_url} parameter.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-SCEWrapper-make_cell_sets_file_def_creator"></a>}}
\if{latex}{\out{\hypertarget{method-SCEWrapper-make_cell_sets_file_def_creator}{}}}
\subsection{Method \code{make_cell_sets_file_def_creator()}}{
Make the file definition creator function for the cell sets data type.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{SCEWrapper$make_cell_sets_file_def_creator(dataset_uid, obj_i)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{dataset_uid}}{The ID for this dataset.}

\item{\code{obj_i}}{The index of this data object within the dataset.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A file definition creator function which takes a \code{base_url} parameter.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-SCEWrapper-make_expression_matrix_file_def_creator"></a>}}
\if{latex}{\out{\hypertarget{method-SCEWrapper-make_expression_matrix_file_def_creator}{}}}
\subsection{Method \code{make_expression_matrix_file_def_creator()}}{
Make the file definition creator function for the expression matrix data type.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{SCEWrapper$make_expression_matrix_file_def_creator(dataset_uid, obj_i)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{dataset_uid}}{The ID for this dataset.}

\item{\code{obj_i}}{The index of this data object within the dataset.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A file definition creator function which takes a \code{base_url} parameter.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-SCEWrapper-clone"></a>}}
\if{latex}{\out{\hypertarget{method-SCEWrapper-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{SCEWrapper$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
