# These functions are tested indirectly when the models are used.
# It is executed on package startup, and can't be executed for testing
# since they are already in the parsnip model database.

# coverage stats for this reason.

# nocov

additive_make <- function(modes = c("classification", "regression")) {
  model <- "additive"
  engine <- "mgcv"

  fitfunc <- c(pkg = "additive", fun = "additive_fit")
  predfunc <- c(fun = "predict")

  dependpkgs <- unique(c("mgcv", fitfunc["pkg"], predfunc["pkg"]))
  dependpkgs <- dependpkgs[!is.na(dependpkgs)]

  parsnip::set_new_model(model)

  for (mode in modes) {
    parsnip::set_model_mode(model = model, mode = mode)

    # -------------------------------------------------------------------------

    parsnip::set_model_engine(model = model, mode = mode, eng = engine)

    # -------------------------------------------------------------------------

    for (pkg in dependpkgs) {
      parsnip::set_dependency(model = model, eng = engine, pkg = pkg)
    }

    # -------------------------------------------------------------------------

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "fitfunc",
      original = "fitfunc",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "formula.override",
      original = "formula.override",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "family",
      original = "family",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "method",
      original = "method",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "optimizer",
      original = "optimizer",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "control",
      original = "control",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "scale",
      original = "scale",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "gamma",
      original = "gamma",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "knots",
      original = "knots",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "sp",
      original = "sp",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "min.sp",
      original = "min.sp",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "paraPen",
      original = "paraPen",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "chunk.size",
      original = "chunk.size",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "rho",
      original = "rho",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "AR.start",
      original = "AR.start",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "H",
      original = "H",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "G",
      original = "G",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "offset",
      original = "offset",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "weights",
      original = "weights",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "subset",
      original = "subset",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "start",
      original = "start",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "etastart",
      original = "etastart",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "mustart",
      original = "mustart",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "drop.intercept",
      original = "drop.intercept",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "drop.unused.levels",
      original = "drop.unused.levels",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "cluster",
      original = "cluster",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "nthreads",
      original = "nthreads",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "gc.level",
      original = "gc.level",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "use.chol",
      original = "use.chol",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "samfrac",
      original = "samfrac",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "coef",
      original = "coef",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "discrete",
      original = "discrete",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "select",
      original = "select",
      func = fitfunc,
      has_submodel = FALSE
    )

    parsnip::set_model_arg(
      model = model,
      eng = engine,
      parsnip = "fit",
      original = "fit",
      func = fitfunc,
      has_submodel = FALSE
    )

    # -------------------------------------------------------------------------

    parsnip::set_fit(
      model = model,
      eng = engine,
      mode = mode,
      value = list(
        interface = "formula",
        protect = c("formula", "data"),
        func = fitfunc,
        defaults = list()
      )
    )

    # -------------------------------------------------------------------------

    parsnip::set_encoding(
      model = model,
      eng = engine,
      mode = mode,
      options = list(
        predictor_indicators = "none",
        compute_intercept = FALSE,
        remove_intercept = FALSE,
        allow_sparse_x = FALSE
      )
    )

    # -------------------------------------------------------------------------

    if (mode == "classification") {
      parsnip::set_pred(
        model = model,
        eng = engine,
        mode = mode,
        type = "class",
        value = list(
          pre = NULL,
          post = function(results, object) {
            if (length(object$lvl) == 2) {
              results <- ifelse(
                results >= 0.5,
                object$lvl[2],
                object$lvl[1]
              )
            } else if (
              length(object$lvl) > 2 &
                length(object$lvl) == ncol(results)
            ) {
              results <- object$lvl[apply(results, 1, which.max)]
            } else {
              rlang::abort("Unexpected model predictions!")
            }
            unname(results)
          },
          func = predfunc,
          args = list(
            object = rlang::expr(object$fit),
            newdata = rlang::expr(new_data),
            type = "response"
          )
        )
      )

      parsnip::set_pred(
        model = model,
        eng = engine,
        mode = mode,
        type = "prob",
        value = list(
          pre = NULL,
          post = function(results, object) {
            if (length(object$lvl) == 2) {
              results <- tibble::tibble(
                v1 = 1 - results,
                v2 = results
              )
              colnames(results) <- object$lvl
            } else if (
              length(object$lvl) > 2 &
                length(object$lvl) == ncol(results)
            ) {
              colnames(results) <- object$lvl
            } else {
              rlang::abort("Unexpected model predictions!")
            }
            results
          },
          func = predfunc,
          args = list(
            object = rlang::expr(object$fit),
            newdata = rlang::expr(new_data),
            type = "response"
          )
        )
      )
    } else {
      parsnip::set_pred(
        model = model,
        eng = engine,
        mode = mode,
        type = "numeric",
        value = list(
          pre = NULL,
          post = function(results, object) {
            tibble::tibble(.pred = results)
          },
          func = predfunc,
          args = list(
            object = rlang::expr(object$fit),
            newdata = rlang::expr(new_data),
            type = "response"
          )
        )
      )

      parsnip::set_pred(
        model = model,
        eng = engine,
        mode = mode,
        type = "conf_int",
        value = list(
          pre = NULL,
          post = function(results, object) {
            tibble::tibble(
              .pred_lower = results$fit - 2 * results$se.fit,
              .pred_upper = results$fit + 2 * results$se.fit
            )
          },
          func = predfunc,
          args = list(
            object = rlang::expr(object$fit),
            newdata = rlang::expr(new_data),
            type = "link",
            se.fit = TRUE
          )
        )
      )
    }

    parsnip::set_pred(
      model = model,
      eng = engine,
      mode = mode,
      type = "raw",
      value = list(
        pre = NULL,
        post = NULL,
        func = predfunc,
        args = list(
          object = rlang::expr(object$fit),
          newdata = rlang::expr(new_data)
        )
      )
    )
  }
}

# nocov end