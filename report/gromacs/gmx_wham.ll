Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_wham?download=true
inline.NumInlined: 929
inline.NumDeleted: 365
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 21
begin_hunk_0
@.str.324 = private unnamed_addr constant [13 x i8] c"window->Ntot\00", align 1
@.str.325 = private unnamed_addr constant [10 x i8] c"window->g\00", align 1
@.str.326 = private unnamed_addr constant [17 x i8] c"window->bsWeight\00", align 1
@.str.327 = private unnamed_addr constant [14 x i8] c"window->ztime\00", align 1
@.str.328 = private unnamed_addr constant [7 x i8] c"lennow\00", align 1
@.str.329 = private unnamed_addr constant [17 x i8] c"window->Histo[g]\00", align 1
@.str.330 = private unnamed_addr constant [76 x i8] c"gUsed too large (%d, nPull=%d). This error should have been caught before.\0A\00", align 1
@.str.331 = private unnamed_addr constant [21 x i8] c"window->ztime[gUsed]\00", align 1
@.str.332 = private unnamed_addr constant [65 x i8] c"time %f larger than tmax %f, stop reading this pullx/pullf file\0A\00", align 1
@.str.333 = private unnamed_addr constant [5 x i8] c"y[i]\00", align 1
@.str.334 = private unnamed_addr constant [127 x i8] c"\0AFound -hist-eq. Enforcing equal weights for all histograms, \0Ai.e. doing a non-weighted histogram analysis method. Ndata = %d\0A\00", align 1
@.str.335 = private unnamed_addr constant [45 x i8] c"Setting up tabulated potential from file %s\0A\00", align 1
@.str.336 = private unnamed_addr constant [37 x i8] c"Found %d columns in %s. Expected 2.\0A\00", align 1
@.str.337 = private unnamed_addr constant [73 x i8] c"The tabulated potential in %s must be provided in \0Aascending z-direction\00", align 1
@.str.338 = private unnamed_addr constant [40 x i8] c"z-values in %s are not equally spaced.\0A\00", align 1
@.str.339 = private unnamed_addr constant [10 x i8] c"opt->tabY\00", align 1
@.str.340 = private unnamed_addr constant [10 x i8] c"opt->tabX\00", align 1
@.str.341 = private unnamed_addr constant [68 x i8] c"Found equally spaced tabulated potential from %g to %g, spacing %g\0A\00", align 1
@.str.342 = private unnamed_addr constant [55 x i8] c"Readging Integrated autocorrelation times from %s ...\0A\00", align 1
@.str.343 = private unnamed_addr constant [72 x i8] c"Found %d lines with integrated autocorrelation times in %s.\0AExpected %d\00", align 1
@.str.344 = private unnamed_addr constant [163 x i8] c"You are providing autocorrelation times with option -iiact and the\0Anumber of pull groups is different in different simulations. That is not\0Asupported yet. Sorry.\0A\00", align 1
@.str.345 = private unnamed_addr constant [43 x i8] c"\0AWARNING, IACT = %f (window %d, group %d)\0A\00", align 1
@.str.346 = private unnamed_addr constant [18 x i8] c"hist_autocorr.xvg\00", align 1
@.str.347 = private unnamed_addr constant [46 x i8] c"Autocorrelation functions of umbrella windows\00", align 1
@.str.348 = private unnamed_addr constant [10 x i8] c"time [ps]\00", align 1
@.str.349 = private unnamed_addr constant [25 x i8] c"autocorrelation function\00", align 1
@.str.350 = private unnamed_addr constant [63 x i8] c"\0DEstimating integrated autocorrelation times ... [%2.0f%%] ...\00", align 1
@.str.351 = private unnamed_addr constant [85 x i8] c"Tryig to estimtate autocorrelation time from only %d points. Provide more pull data!\00", align 1
@.str.352 = private unnamed_addr constant [14 x i8] c"window[i].tau\00", align 1
@.str.353 = private unnamed_addr constant [98 x i8] c"Encountered different nr of frames in different pull groups.\0AThat should not happen. (%d and %d)\0A\00", align 1
@.str.354 = private unnamed_addr constant [8 x i8] c"%g  %g\0A\00", align 1
@.str.355 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.356 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.358 = private unnamed_addr constant [33 x i8] c"Integrated autocorrelation times\00", align 1
@.str.359 = private unnamed_addr constant [10 x i8] c"IACT [ps]\00", align 1
@.str.360 = private unnamed_addr constant [67 x i8] c"@    s0 symbol 1\0A@    s0 symbol size 0.5\0A@    s0 line linestyle 0\0A\00", align 1
@.str.361 = private unnamed_addr constant [33 x i8] c"#  WIN   tau(gr1)  tau(gr2) ...\0A\00", align 1
@.str.362 = private unnamed_addr constant [9 x i8] c"# %3d   \00", align 1
@.str.363 = private unnamed_addr constant [6 x i8] c" %11g\00", align 1
@.str.364 = private unnamed_addr constant [9 x i8] c"%8g %8g\0A\00", align 1
@.str.365 = private unnamed_addr constant [85 x i8] c"Smoothing autocorrelation times along reaction coordinate with Gaussian of sig = %g\0A\00", align 1
@.str.366 = private unnamed_addr constant [67 x i8] c"@    s1 symbol 1\0A@    s1 symbol size 0.5\0A@    s1 line linestyle 0\0A\00", align 1
@.str.367 = private unnamed_addr constant [24 x i8] c"@    s1 symbol color 2\0A\00", align 1
@.str.369 = private unnamed_addr constant [20 x i8] c"window[i].tausmooth\00", align 1
@.str.370 = private unnamed_addr constant [15 x i8] c"window[i].aver\00", align 1
@.str.371 = private unnamed_addr constant [16 x i8] c"window[i].sigma\00", align 1
@.str.372 = private unnamed_addr constant [29 x i8] c"win %d, aver = %f  sig = %f\0A\00", align 1
@.str.374 = private unnamed_addr constant [4 x i8] c"pot\00", align 1
@.str.375 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.376 = private unnamed_addr constant [18 x i8] c"pmfintegrated.xvg\00", align 1
@.str.377 = private unnamed_addr constant [27 x i8] c"PMF from force integration\00", align 1
@.str.378 = private unnamed_addr constant [13 x i8] c"PMF (kJ/mol)\00", align 1
@.str.379 = private unnamed_addr constant [55 x i8] c"verbose mode: wrote %s with PMF from interated forces\0A\00", align 1
@.str.380 = private unnamed_addr constant [18 x i8] c"window[j].forceAv\00", align 1
@.str.381 = private unnamed_addr constant [105 x i8] c"\0AWARNING, no data point in bin %d (z=%g) !\0AYou may not get a reasonable profile. Check your histograms!\0A\00", align 1
@.str.382 = private unnamed_addr constant [62 x i8] c"Warning, poor sampling bin %d (z=%g). Check your histograms!\0A\00", align 1
@_ZZL14setup_acc_whamPKdP16t_UmbrellaWindowiP15UmbrellaOptionsE6bFirst = internal unnamed_addr global i1 false, align 4
@_ZZL14setup_acc_whamPKdP16t_UmbrellaWindowiP15UmbrellaOptionsE16wham_contrib_lim = internal unnamed_addr global double 0.000000e+00, align 8
@.str.383 = private unnamed_addr constant [19 x i8] c"window[i].bContrib\00", align 1
@.str.384 = private unnamed_addr constant [22 x i8] c"window[i].bContrib[j]\00", align 1
@.str.385 = private unnamed_addr constant [92 x i8] c"Initialized rapid wham stuff (contrib tolerance %g)\0AEvaluating only %d of %d expressions.\0A\0A\00", align 1
@.str.386 = private unnamed_addr constant [68 x i8] c"Updated rapid wham stuff. (evaluating only %d of %d contributions)\0A\00", align 1
@.str.387 = private unnamed_addr constant [92 x i8] c"Distance %f out of bounds of tabulated potential (jl=%d, ju=%d).\0AProvide an extended table.\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer, align 8
@.str.388 = private unnamed_addr constant [38 x i8] c"Sorry, I don't know this energy unit.\00", align 1
@.str.389 = private unnamed_addr constant [61 x i8] c"Cannot symmetrize profile around z=0 with min=%f and max=%f\0A\00", align 1
@.str.390 = private unnamed_addr constant [6 x i8] c"prof2\00", align 1
@.str.391 = private unnamed_addr constant [10 x i8] c"bsProfile\00", align 1
@.str.392 = private unnamed_addr constant [14 x i8] c"bsProfiles_av\00", align 1
@.str.393 = private unnamed_addr constant [15 x i8] c"bsProfiles_av2\00", align 1
@.str.394 = private unnamed_addr constant [14 x i8] c"allPull_winId\00", align 1
@.str.395 = private unnamed_addr constant [15 x i8] c"allPull_pullId\00", align 1
@.str.396 = private unnamed_addr constant [12 x i8] c"synthWindow\00", align 1
@.str.397 = private unnamed_addr constant [21 x i8] c"synthWindow[i].Histo\00", align 1
@.str.398 = private unnamed_addr constant [24 x i8] c"synthWindow[i].Histo[0]\00", align 1
@.str.399 = private unnamed_addr constant [17 x i8] c"synthWindow[i].N\00", align 1
@.str.400 = private unnamed_addr constant [19 x i8] c"synthWindow[i].pos\00", align 1
@.str.401 = private unnamed_addr constant [17 x i8] c"synthWindow[i].z\00", align 1
@.str.402 = private unnamed_addr constant [17 x i8] c"synthWindow[i].k\00", align 1
@.str.403 = private unnamed_addr constant [24 x i8] c"synthWindow[i].bContrib\00", align 1
@.str.404 = private unnamed_addr constant [17 x i8] c"synthWindow[i].g\00", align 1
@.str.405 = private unnamed_addr constant [24 x i8] c"synthWindow[i].bsWeight\00", align 1
@.str.407 = private unnamed_addr constant [8 x i8] c"Hub2006\00", align 1
@.str.408 = private unnamed_addr constant [58 x i8] c"Unknown bootstrap method. That should not have happened.\0A\00", align 1
@.str.409 = private unnamed_addr constant [19 x i8] c"Bootstrap profiles\00", align 1
@.str.410 = private unnamed_addr constant [139 x i8] c"  *******************************************\0A  ******** Start bootstrap nr %d ************\0A  *******************************************\0A\00", align 1
@.str.411 = private unnamed_addr constant [12 x i8] c"randomArray\00", align 1
@.str.412 = private unnamed_addr constant [54 x i8] c"\09Converged in %d iterations. Final maximum change %g\0A\00", align 1
@.str.413 = private unnamed_addr constant [38 x i8] c"Average and stddev from bootstrapping\00", align 1
@.str.414 = private unnamed_addr constant [12 x i8] c"@TYPE xydy\0A\00", align 1
@.str.415 = private unnamed_addr constant [10 x i8] c"%e\09%e\09%e\0A\00", align 1
@.str.416 = private unnamed_addr constant [31 x i8] c"Wrote boot strap result to %s\0A\00", align 1
@.str.417 = private unnamed_addr constant [7 x i8] c"_cumul\00", align 1
@.str.418 = private unnamed_addr constant [25 x i8] c"CDFs of umbrella windows\00", align 1
@.str.419 = private unnamed_addr constant [4 x i8] c"CDF\00", align 1
@.str.420 = private unnamed_addr constant [14 x i8] c"window[i].cum\00", align 1
@.str.421 = private unnamed_addr constant [17 x i8] c"window[i].cum[j]\00", align 1
@.str.423 = private unnamed_addr constant [4 x i8] c"%g\09\00", align 1
@.str.424 = private unnamed_addr constant [47 x i8] c"Wrote cumulative distribution functions to %s\0A\00", align 1
@.str.425 = private unnamed_addr constant [78 x i8] c"Ups, random iWin = %d, nPull = %d, nr = %d, blockLength = %d, blockBase = %d\0A\00", align 1
@.str.426 = private unnamed_addr constant [7 x i8] c"a <= b\00", align 1
@.str.427 = private unnamed_addr constant [47 x i8] c"The uniform integer distribution requires a<=b\00", align 1
@__PRETTY_FUNCTION__._ZZN3gmx22UniformIntDistributionIiE10param_typeC1EiiENKUlvE_clEv = private unnamed_addr constant [131 x i8] c"auto gmx::UniformIntDistribution<>::param_type::param_type(result_type, result_type)::(lambda)::operator()() const [IntType = int]\00", align 1
@.str.428 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/random/uniformintdistribution.h\00", align 1
@__PRETTY_FUNCTION__._ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE = private unnamed_addr constant [140 x i8] c"static void gmx::internal::highBitCounter::increment(std::array<UIntType, words> *) [UIntType = unsigned long, words = 2UL, highBits = 64U]\00", align 1
@.str.429 = private unnamed_addr constant [6 x i8] c"a < b\00", align 1
@.str.430 = private unnamed_addr constant [43 x i8] c"The uniform real distribution requires a<b\00", align 1
@__PRETTY_FUNCTION__._ZZN3gmx23UniformRealDistributionIfE10param_typeC1EffENKUlvE_clEv = private unnamed_addr constant [135 x i8] c"auto gmx::UniformRealDistribution<>::param_type::param_type(result_type, result_type)::(lambda)::operator()() const [RealType = float]\00", align 1
@.str.431 = private unnamed_addr constant [77 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/random/uniformrealdistribution.h\00", align 1
@.str.432 = private unnamed_addr constant [327 x i8] c"When generating hypothetical trajectories from given umbrella histograms,\0Aautocorrelation times (ACTs) are required. Otherwise the statistical error\0Acannot be predicted. You have 3 options:\0A1) Make gmx wham estimate the ACTs (options -ac and -acsig).\0A2) Calculate the ACTs by yourself (e.g. with gmx analyze) and provide them\0A\00", align 1
@.str.433 = private unnamed_addr constant [253 x i8] c"   with option -iiact for all umbrella windows.\0A3) If all ACTs are identical and know, you can define them with -bs-tau.\0A   Use option (3) only if you are sure what you're doing, you may severely\0A   underestimate the error if a too small ACT is given.\0A\00", align 1
@.str.434 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.435 = private unnamed_addr constant [51 x i8] c"Unknown bsMethod (id %d). That should not happen.\0A\00", align 1
@_ZN3gmx27TabulatedNormalDistributionIfLj14EE8c_table_E = external local_unnamed_addr global %"struct.std::array.132", align 4
@.str.436 = private unnamed_addr constant [6 x i8] c"_bs%d\00", align 1
@.str.437 = private unnamed_addr constant [35 x i8] c"Umbrella histograms. Bootstrap #%d\00", align 1
@.str.438 = private unnamed_addr constant [16 x i8] c"win[i].Histo[j]\00", align 1
@.str.439 = private unnamed_addr constant [14 x i8] c"win[i].cum[j]\00", align 1
@.str.440 = private unnamed_addr constant [19 x i8] c"win[i].bContrib[j]\00", align 1
@.str.441 = private unnamed_addr constant [13 x i8] c"win[i].Histo\00", align 1
@.str.442 = private unnamed_addr constant [11 x i8] c"win[i].cum\00", align 1
@.str.443 = private unnamed_addr constant [9 x i8] c"win[i].k\00", align 1
@.str.444 = private unnamed_addr constant [11 x i8] c"win[i].pos\00", align 1
@.str.445 = private unnamed_addr constant [9 x i8] c"win[i].z\00", align 1
@.str.446 = private unnamed_addr constant [9 x i8] c"win[i].N\00", align 1
@.str.447 = private unnamed_addr constant [12 x i8] c"win[i].Ntot\00", align 1
@.str.448 = private unnamed_addr constant [9 x i8] c"win[i].g\00", align 1
@.str.449 = private unnamed_addr constant [11 x i8] c"win[i].tau\00", align 1
@.str.450 = private unnamed_addr constant [17 x i8] c"win[i].tausmooth\00", align 1
@.str.451 = private unnamed_addr constant [16 x i8] c"win[i].bContrib\00", align 1
@.str.452 = private unnamed_addr constant [13 x i8] c"win[i].ztime\00", align 1
@.str.453 = private unnamed_addr constant [15 x i8] c"win[i].forceAv\00", align 1
@.str.454 = private unnamed_addr constant [12 x i8] c"win[i].aver\00", align 1
@.str.455 = private unnamed_addr constant [13 x i8] c"win[i].sigma\00", align 1
@.str.456 = private unnamed_addr constant [16 x i8] c"win[i].bsWeight\00", align 1
@str = private unnamed_addr constant [46 x i8] c"Note: min and max given, switching off -auto.\00", align 1
@str.1 = private unnamed_addr constant [71 x i8] c"\0AIn case you use results from gmx wham for a publication, please cite:\00", align 1
@str.2 = private unnamed_addr constant [34 x i8] c"\0AUse only these pull coordinates:\00", align 1
@str.3 = private unnamed_addr constant [41 x i8] c"Automatic determination of boundaries...\00", align 1
@str.4 = private unnamed_addr constant [39 x i8] c"Found option -boundsonly, now exiting.\00", align 1
@str.5 = private unnamed_addr constant [6 x i8] c" done\00", align 1
@str.6 = private unnamed_addr constant [42 x i8] c"Getting initial potential by integration.\00", align 1
@str.7 = private unnamed_addr constant [72 x i8] c"\0A\0AWhen computing statistical errors by bootstrapping entire histograms:\00", align 1
@str.8 = private unnamed_addr constant [59 x i8] c"\09Use option -v to see this output for all input tpr files\0A\00", align 1
@str.9 = private unnamed_addr constant [20 x i8] c"\09Column for time: 1\00", align 1
@str.10 = private unnamed_addr constant [38 x i8] c"\09\09reference position column:       No\00", align 1
@str.11 = private unnamed_addr constant [61 x i8] c"Cumulative distribution functions of all histograms created.\00", align 1

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z8gmx_whamiPPc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 12 uses
  %i.e = alloca i32, align 4                      ; 12 uses
  %i.f = alloca ptr, align 8                      ; 12 uses
  %i.g = alloca i8, align 1                       ; 12 uses
  %i.h = alloca double, align 8                   ; 12 uses
  %i.i = alloca double, align 8                   ; 12 uses
  %i.j = alloca double, align 8                   ; 12 uses
  %i.k = alloca double, align 8                   ; 12 uses
  %i.l = alloca double, align 8                   ; 15 uses
  %i.m = alloca ptr, align 8                      ; 12 uses
  %i.n = alloca ptr, align 8                      ; 12 uses
  %i.o = alloca i32, align 4                      ; 12 uses
  %i.p = alloca ptr, align 8                      ; 12 uses
  %i.q = alloca i8, align 1                       ; 12 uses
  %i.r = alloca double, align 8                   ; 12 uses
  %i.s = alloca double, align 8                   ; 12 uses
  %i.t = alloca double, align 8                   ; 12 uses
  %i.u = alloca double, align 8                   ; 12 uses
  %i.v = alloca ptr, align 8                      ; 4 uses
  %i.w = alloca ptr, align 8                      ; 4 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  %i.y = alloca ptr, align 8                      ; 4 uses
  %i.z = alloca i8, align 1                       ; 4 uses
  %i.aa = alloca double, align 8                  ; 4 uses
  %i.ab = alloca double, align 8                  ; 4 uses
  %i.ac = alloca double, align 8                  ; 4 uses
  %i.ad = alloca double, align 8                  ; 4 uses
  %i.ae = alloca double, align 8                  ; 4 uses
  %i.af = alloca i64, align 8                     ; 6 uses
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.ag = alloca i64, align 8                     ; 6 uses
  %i.ah = alloca i64, align 8                     ; 5 uses
  %i.ai = alloca ptr, align 8                     ; 5 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %10 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.aj = alloca ptr, align 8                     ; 5 uses
  %i.ak = alloca i32, align 4                     ; 6 uses
  %i.al = alloca ptr, align 8                     ; 6 uses
  %13 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %15 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.am = alloca ptr, align 8                     ; 7 uses
  %i.an = alloca i32, align 4                     ; 6 uses
  %i.ao = alloca ptr, align 8                     ; 6 uses
  %16 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %17 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %18 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %19 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.ap = alloca i64, align 8                     ; 6 uses
  %i.aq = alloca float, align 4                   ; 5 uses
  %i.ar = alloca float, align 4                   ; 5 uses
  %20 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %21 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %22 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %23 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %24 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.as = alloca [2 x i32], align 4               ; 5 uses
  %i.at = alloca i32, align 4                     ; 5 uses
  %i.au = alloca [1024 x i8], align 16            ; 7 uses
  %i.av = alloca [1024 x i8], align 16            ; 7 uses
  %25 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %26 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.aw = alloca i32, align 4                     ; 2 uses
  %i.ax = alloca [148 x ptr], align 16            ; 5 uses
  %i.ay = alloca [5 x ptr], align 16              ; 6 uses
  %i.az = alloca [6 x ptr], align 16              ; 6 uses
  %27 = alloca [30 x %struct.t_pargs], align 16   ; 159 uses
  %28 = alloca [11 x %struct.t_filenm], align 16  ; 123 uses
  %i.ba = alloca i32, align 4                     ; 7 uses
  %i.bb = alloca i32, align 4                     ; 5 uses
  %29 = alloca %struct.t_UmbrellaHeader, align 8  ; 8 uses
  %i.bc = alloca ptr, align 8                     ; 6 uses
  %i.bd = alloca ptr, align 8                     ; 5 uses
  %i.be = alloca [4096 x i8], align 16            ; 17 uses
  %i.bf = alloca [256 x i8], align 16             ; 9 uses
  %i.bg = alloca [256 x i8], align 16             ; 6 uses
  %30 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %31 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %32 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %33 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %34 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %35 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %36 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %37 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %38 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.bh = alloca ptr, align 8                     ; 5 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %41 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.bi = alloca ptr, align 8                     ; 5 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store i32 %0, ptr %i.aw, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1184) %i.ax, ptr noundef nonnull align 16 dereferenceable(1184) @__const._Z8gmx_whamiPPc.desc, i64 1184, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.ay, ptr noundef nonnull align 16 dereferenceable(40) @__const._Z8gmx_whamiPPc.en_unit, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.az, ptr noundef nonnull align 16 dereferenceable(48) @__const._Z8gmx_whamiPPc.en_bsMethod, i64 48, i1 false)
  %i.bj = load atomic i8, ptr @_ZGVZ8gmx_whamiPPcE3opt acquire, align 8
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.b, label %bb.e, !prof !236

bb.b:                                             ; preds = %bb.a
  %i.bl = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ8gmx_whamiPPcE3opt) #25
  %.not129 = icmp eq i32 %i.bl, 0
  br i1 %.not129, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN15UmbrellaOptionsC2Ev(ptr noundef nonnull align 8 dereferenceable(312) @_ZZ8gmx_whamiPPcE3opt)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ8gmx_whamiPPcE3opt) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  store ptr @.str.137, ptr %27, align 16, !tbaa !238
  %i.bm = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i8 0, ptr %i.bm, align 8, !tbaa !239
  %i.bn = getelementptr inbounds nuw i8, ptr %27, i64 12
  store i32 2, ptr %i.bn, align 4, !tbaa !240
  %i.bo = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 76), ptr %i.bo, align 16, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr @.str.138, ptr %i.bp, align 8, !tbaa !241
  %i.bq = getelementptr inbounds nuw i8, ptr %27, i64 32
  store ptr @.str.139, ptr %i.bq, align 16, !tbaa !238
  %i.br = getelementptr inbounds nuw i8, ptr %27, i64 40
  store i8 0, ptr %i.br, align 8, !tbaa !239
  %i.bs = getelementptr inbounds nuw i8, ptr %27, i64 44
  store i32 2, ptr %i.bs, align 4, !tbaa !240
  %i.bt = getelementptr inbounds nuw i8, ptr %27, i64 48
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 80), ptr %i.bt, align 16, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %27, i64 56
  store ptr @.str.140, ptr %i.bu, align 8, !tbaa !241
  %i.bv = getelementptr inbounds nuw i8, ptr %27, i64 64
  store ptr @.str.141, ptr %i.bv, align 16, !tbaa !238
  %i.bw = getelementptr inbounds nuw i8, ptr %27, i64 72
  store i8 0, ptr %i.bw, align 8, !tbaa !239
  %i.bx = getelementptr inbounds nuw i8, ptr %27, i64 76
  store i32 5, ptr %i.bx, align 4, !tbaa !240
  %i.by = getelementptr inbounds nuw i8, ptr %27, i64 80
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 115), ptr %i.by, align 16, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %27, i64 88
  store ptr @.str.142, ptr %i.bz, align 8, !tbaa !241
  %i.ca = getelementptr inbounds nuw i8, ptr %27, i64 96
  store ptr @.str.143, ptr %i.ca, align 16, !tbaa !238
  %i.cb = getelementptr inbounds nuw i8, ptr %27, i64 104
  store i8 0, ptr %i.cb, align 8, !tbaa !239
  %i.cc = getelementptr inbounds nuw i8, ptr %27, i64 108
  store i32 0, ptr %i.cc, align 4, !tbaa !240
  %i.cd = getelementptr inbounds nuw i8, ptr %27, i64 112
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 72), ptr %i.cd, align 16, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %27, i64 120
  store ptr @.str.144, ptr %i.ce, align 8, !tbaa !241
  %i.cf = getelementptr inbounds nuw i8, ptr %27, i64 128
  store ptr @.str.145, ptr %i.cf, align 16, !tbaa !238
  %i.cg = getelementptr inbounds nuw i8, ptr %27, i64 136
  store i8 0, ptr %i.cg, align 8, !tbaa !239
  %i.ch = getelementptr inbounds nuw i8, ptr %27, i64 140
  store i32 2, ptr %i.ch, align 4, !tbaa !240
  %i.ci = getelementptr inbounds nuw i8, ptr %27, i64 144
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 88), ptr %i.ci, align 16, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %27, i64 152
  store ptr @.str.146, ptr %i.cj, align 8, !tbaa !241
  %i.ck = getelementptr inbounds nuw i8, ptr %27, i64 160
  store ptr @.str.147, ptr %i.ck, align 16, !tbaa !238
  %i.cl = getelementptr inbounds nuw i8, ptr %27, i64 168
  store i8 0, ptr %i.cl, align 8, !tbaa !239
  %i.cm = getelementptr inbounds nuw i8, ptr %27, i64 172
  store i32 2, ptr %i.cm, align 4, !tbaa !240
  %i.cn = getelementptr inbounds nuw i8, ptr %27, i64 176
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 92), ptr %i.cn, align 16, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %27, i64 184
  store ptr @.str.148, ptr %i.co, align 8, !tbaa !241
  %i.cp = getelementptr inbounds nuw i8, ptr %27, i64 192
  store ptr @.str.149, ptr %i.cp, align 16, !tbaa !238
  %i.cq = getelementptr inbounds nuw i8, ptr %27, i64 200
  store i8 0, ptr %i.cq, align 8, !tbaa !239
  %i.cr = getelementptr inbounds nuw i8, ptr %27, i64 204
  store i32 5, ptr %i.cr, align 4, !tbaa !240
  %i.cs = getelementptr inbounds nuw i8, ptr %27, i64 208
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 116), ptr %i.cs, align 16, !tbaa !16
  %i.ct = getelementptr inbounds nuw i8, ptr %27, i64 216
  store ptr @.str.150, ptr %i.ct, align 8, !tbaa !241
  %i.cu = getelementptr inbounds nuw i8, ptr %27, i64 224
  store ptr @.str.151, ptr %i.cu, align 16, !tbaa !238
  %i.cv = getelementptr inbounds nuw i8, ptr %27, i64 232
  store i8 0, ptr %i.cv, align 8, !tbaa !239
  %i.cw = getelementptr inbounds nuw i8, ptr %27, i64 236
  store i32 2, ptr %i.cw, align 4, !tbaa !240
  %i.cx = getelementptr inbounds nuw i8, ptr %27, i64 240
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 36), ptr %i.cx, align 16, !tbaa !16
  %i.cy = getelementptr inbounds nuw i8, ptr %27, i64 248
  store ptr @.str.152, ptr %i.cy, align 8, !tbaa !241
  %i.cz = getelementptr inbounds nuw i8, ptr %27, i64 256
  store ptr @.str.153, ptr %i.cz, align 16, !tbaa !238
  %i.da = getelementptr inbounds nuw i8, ptr %27, i64 264
  store i8 0, ptr %i.da, align 8, !tbaa !239
  %i.db = getelementptr inbounds nuw i8, ptr %27, i64 268
  store i32 2, ptr %i.db, align 4, !tbaa !240
  %i.dc = getelementptr inbounds nuw i8, ptr %27, i64 272
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 40), ptr %i.dc, align 16, !tbaa !16
  %i.dd = getelementptr inbounds nuw i8, ptr %27, i64 280
  store ptr @.str.154, ptr %i.dd, align 8, !tbaa !241
  %i.de = getelementptr inbounds nuw i8, ptr %27, i64 288
  store ptr @.str.155, ptr %i.de, align 16, !tbaa !238
  %i.df = getelementptr inbounds nuw i8, ptr %27, i64 296
  store i8 0, ptr %i.df, align 8, !tbaa !239
  %i.dg = getelementptr inbounds nuw i8, ptr %27, i64 300
  store i32 2, ptr %i.dg, align 4, !tbaa !240
  %i.dh = getelementptr inbounds nuw i8, ptr %27, i64 304
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 44), ptr %i.dh, align 16, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %27, i64 312
  store ptr @.str.156, ptr %i.di, align 8, !tbaa !241
  %i.dj = getelementptr inbounds nuw i8, ptr %27, i64 320
  store ptr @.str.157, ptr %i.dj, align 16, !tbaa !238
  %i.dk = getelementptr inbounds nuw i8, ptr %27, i64 328
  store i8 0, ptr %i.dk, align 8, !tbaa !239
  %i.dl = getelementptr inbounds nuw i8, ptr %27, i64 332
  store i32 5, ptr %i.dl, align 4, !tbaa !240
  %i.dm = getelementptr inbounds nuw i8, ptr %27, i64 336
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 114), ptr %i.dm, align 16, !tbaa !16
  %i.dn = getelementptr inbounds nuw i8, ptr %27, i64 344
  store ptr @.str.158, ptr %i.dn, align 8, !tbaa !241
  %i.do = getelementptr inbounds nuw i8, ptr %27, i64 352
  store ptr @.str.159, ptr %i.do, align 16, !tbaa !238
  %i.dp = getelementptr inbounds nuw i8, ptr %27, i64 360
  store i8 0, ptr %i.dp, align 8, !tbaa !239
  %i.dq = getelementptr inbounds nuw i8, ptr %27, i64 364
  store i32 5, ptr %i.dq, align 4, !tbaa !240
  %i.dr = getelementptr inbounds nuw i8, ptr %27, i64 368
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 113), ptr %i.dr, align 16, !tbaa !16
  %i.ds = getelementptr inbounds nuw i8, ptr %27, i64 376
  store ptr @.str.160, ptr %i.ds, align 8, !tbaa !241
end_hunk_0
begin_hunk_1_@_Z8gmx_whamiPPc:bb.a

.noexc244:                                        ; preds = %.noexc243
  %i.abn = ptrtoaddr ptr %i.abm to i64            ; 3 uses
  store ptr %i.abm, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 184), align 8, !tbaa !89
  %i.abo = icmp sgt i32 %i.zz, 0
  br i1 %i.abo, label %.lr.ph.i237, label %_ZL9setup_tabPKcP15UmbrellaOptions.exit

.lr.ph.i237:                                      ; preds = %.noexc244
  %i.abp = load ptr, ptr %i.ao, align 8, !tbaa !99 ; 2 uses
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !89 ; 7 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abp, i64 8
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !89 ; 7 uses
  %i.abt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 192), align 8, !tbaa !102 ; 7 uses
  %wide.trip.count6.i = zext nneg i32 %i.zz to i64 ; 5 uses
  %min.iters.check1010 = icmp ult i32 %i.zz, 32
  br i1 %min.iters.check1010, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i237
  %i.abu = ptrtoaddr ptr %i.abt to i64            ; 3 uses
  %i.abv = ptrtoaddr ptr %i.abs to i64            ; 2 uses
  %i.abw = ptrtoaddr ptr %i.abq to i64            ; 2 uses
  %i.abx = sub i64 %i.abn, %i.abu
  %diff.check = icmp ugt i64 %i.abx, -64
  %i.aby = sub i64 %i.abw, %i.abn
  %diff.check1011 = icmp ugt i64 %i.aby, -64
  %conflict.rdx = or i1 %diff.check, %diff.check1011
  %i.abz = sub i64 %i.abn, %i.abv
  %diff.check1012 = icmp ugt i64 %i.abz, -64
  %conflict.rdx1013 = or i1 %conflict.rdx, %diff.check1012
  %i.aca = sub i64 %i.abw, %i.abu
  %diff.check1014 = icmp ugt i64 %i.aca, -64
  %conflict.rdx1015 = or i1 %conflict.rdx1013, %diff.check1014
  %i.acb = sub i64 %i.abv, %i.abu
  %diff.check1016 = icmp ugt i64 %i.acb, -64
  %conflict.rdx1017 = or i1 %conflict.rdx1015, %diff.check1016
  br i1 %conflict.rdx1017, label %scalar.ph.preheader, label %vector.ph1018

vector.ph1018:                                    ; preds = %vector.memcheck
  %n.vec1019 = and i64 %wide.trip.count6.i, 2147483640 ; 3 uses
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %vector.ph1018
  %index1021 = phi i64 [ 0, %vector.ph1018 ], [ %index.next1026, %vector.body1020 ] ; 5 uses
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.abq, i64 %index1021 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 32
  %wide.load1022 = load <4 x double>, ptr %i.acc, align 8, !tbaa !90
  %wide.load1023 = load <4 x double>, ptr %i.acd, align 8, !tbaa !90
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %index1021 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 32
  store <4 x double> %wide.load1022, ptr %i.ace, align 8, !tbaa !90
  store <4 x double> %wide.load1023, ptr %i.acf, align 8, !tbaa !90
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %index1021 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 32
  %wide.load1024 = load <4 x double>, ptr %i.acg, align 8, !tbaa !90
  %wide.load1025 = load <4 x double>, ptr %i.ach, align 8, !tbaa !90
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.abt, i64 %index1021 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 32
  store <4 x double> %wide.load1024, ptr %i.aci, align 8, !tbaa !90
  store <4 x double> %wide.load1025, ptr %i.acj, align 8, !tbaa !90
  %index.next1026 = add nuw i64 %index1021, 8     ; 2 uses
  %i.ack = icmp eq i64 %index.next1026, %n.vec1019
  br i1 %i.ack, label %middle.block1027, label %vector.body1020, !llvm.loop !173

middle.block1027:                                 ; preds = %vector.body1020
  %cmp.n1028 = icmp eq i64 %n.vec1019, %wide.trip.count6.i
  br i1 %cmp.n1028, label %_ZL9setup_tabPKcP15UmbrellaOptions.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i237, %middle.block1027
  %indvars.iv3.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i237 ], [ %n.vec1019, %middle.block1027 ] ; 3 uses
  %xtraiter1284 = and i64 %wide.trip.count6.i, 3  ; 2 uses
  %lcmp.mod1285.not = icmp eq i64 %xtraiter1284, 0
  br i1 %lcmp.mod1285.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv3.i.prol = phi i64 [ %indvars.iv.next4.i.prol, %scalar.ph.prol ], [ %indvars.iv3.i.ph, %scalar.ph.preheader ] ; 5 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.abq, i64 %indvars.iv3.i.prol
  %i.acm = load double, ptr %i.acl, align 8, !tbaa !90
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %indvars.iv3.i.prol
  store double %i.acm, ptr %i.acn, align 8, !tbaa !90
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv3.i.prol
  %i.acp = load double, ptr %i.aco, align 8, !tbaa !90
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.abt, i64 %indvars.iv3.i.prol
  store double %i.acp, ptr %i.acq, align 8, !tbaa !90
  %indvars.iv.next4.i.prol = add nuw nsw i64 %indvars.iv3.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1284
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !174

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv3.i.unr = phi i64 [ %indvars.iv3.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next4.i.prol, %scalar.ph.prol ]
  %i.acr = sub nsw i64 %indvars.iv3.i.ph, %wide.trip.count6.i
  %i.acs = icmp ugt i64 %i.acr, -4
  br i1 %i.acs, label %_ZL9setup_tabPKcP15UmbrellaOptions.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv3.i = phi i64 [ %indvars.iv.next4.i.3, %scalar.ph ], [ %indvars.iv3.i.unr, %scalar.ph.prol.loopexit ] ; 8 uses
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.abq, i64 %indvars.iv3.i
  %i.acu = load double, ptr %i.act, align 8, !tbaa !90
  %i.acv = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %indvars.iv3.i
  store double %i.acu, ptr %i.acv, align 8, !tbaa !90
  %i.acw = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv3.i
  %i.acx = load double, ptr %i.acw, align 8, !tbaa !90
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.abt, i64 %indvars.iv3.i
  store double %i.acx, ptr %i.acy, align 8, !tbaa !90
  %indvars.iv.next4.i = add nuw nsw i64 %indvars.iv3.i, 1 ; 4 uses
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %i.abq, i64 %indvars.iv.next4.i
  %i.ada = load double, ptr %i.acz, align 8, !tbaa !90
  %i.adb = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %indvars.iv.next4.i
  store double %i.ada, ptr %i.adb, align 8, !tbaa !90
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.next4.i
  %i.add = load double, ptr %i.adc, align 8, !tbaa !90
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.abt, i64 %indvars.iv.next4.i
  store double %i.add, ptr %i.ade, align 8, !tbaa !90
  %indvars.iv.next4.i.1 = add nuw nsw i64 %indvars.iv3.i, 2 ; 4 uses
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.abq, i64 %indvars.iv.next4.i.1
  %i.adg = load double, ptr %i.adf, align 8, !tbaa !90
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %indvars.iv.next4.i.1
  store double %i.adg, ptr %i.adh, align 8, !tbaa !90
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.next4.i.1
  %i.adj = load double, ptr %i.adi, align 8, !tbaa !90
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.abt, i64 %indvars.iv.next4.i.1
  store double %i.adj, ptr %i.adk, align 8, !tbaa !90
  %indvars.iv.next4.i.2 = add nuw nsw i64 %indvars.iv3.i, 3 ; 4 uses
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %i.abq, i64 %indvars.iv.next4.i.2
  %i.adm = load double, ptr %i.adl, align 8, !tbaa !90
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %indvars.iv.next4.i.2
  store double %i.adm, ptr %i.adn, align 8, !tbaa !90
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.next4.i.2
  %i.adp = load double, ptr %i.ado, align 8, !tbaa !90
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.abt, i64 %indvars.iv.next4.i.2
  store double %i.adp, ptr %i.adq, align 8, !tbaa !90
  %indvars.iv.next4.i.3 = add nuw nsw i64 %indvars.iv3.i, 4 ; 2 uses
  %exitcond7.not.i.3 = icmp eq i64 %indvars.iv.next4.i.3, %wide.trip.count6.i
  br i1 %exitcond7.not.i.3, label %_ZL9setup_tabPKcP15UmbrellaOptions.exit, label %scalar.ph, !llvm.loop !175

bb.fn:                                            ; preds = %bb.fm, %bb.fi, %bb.fe, %bb.fd
  %.pn.i225 = phi { ptr, i32 } [ %i.aal, %bb.fe ], [ %i.aaz, %bb.fi ], [ %i.abj, %bb.fm ], [ %i.aak, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #25
  br label %.body

_ZL9setup_tabPKcP15UmbrellaOptions.exit:          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block1027, %.noexc244
  %i.adr = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 200), align 8, !tbaa !100
  %i.ads = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 208), align 8, !tbaa !267
  %i.adt = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 216), align 8, !tbaa !101
  %i.adu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.341, double noundef %i.adr, double noundef %i.ads, double noundef %i.adt) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.fo

bb.fo:                                            ; preds = %_ZL9setup_tabPKcP15UmbrellaOptions.exit, %bb.ew
  %i.adv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 136), align 8, !tbaa !256, !range !52, !noundef !53
  %i.adw = trunc nuw i8 %i.adv to i1
  br i1 %i.adw, label %bb.fp, label %bb.ge

bb.fp:                                            ; preds = %bb.fo
  %i.adx = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.211, i32 noundef 11, ptr noundef nonnull %28)
          to label %bb.fq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1279 ; 2 uses

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.adx, ptr %i.aj, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #25
  %i.ady = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.342, ptr noundef %i.adx) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i8 noundef zeroext 2)
          to label %.noexc262 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1279

.noexc262:                                        ; preds = %bb.fq
  %i.adz = invoke noundef i32 @_Z8read_xvgRKNSt10filesystem7__cxx114pathEPPPdPi(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ak)
          to label %bb.fr unwind label %bb.fv     ; 2 uses

bb.fr:                                            ; preds = %.noexc262
  %i.aea = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i.i248 = icmp eq ptr %i.aeb, null
  br i1 %.not.i.i.i.i248, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i249, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.aea, ptr noundef nonnull %i.aeb) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i249

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i249: ; preds = %bb.fs, %bb.fr
  %i.aec = load ptr, ptr %13, align 8, !tbaa !61  ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.aee = icmp eq ptr %i.aec, %i.aed
  br i1 %i.aee, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i250: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i249
  %i.aef = load i64, ptr %i.aed, align 8, !tbaa !16
  %i.aeg = add i64 %i.aef, 1
  call void @_ZdlPvm(ptr noundef %i.aec, i64 noundef %i.aeg) #32
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i251

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i251:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %.not.i252 = icmp eq i32 %i.adz, %i.px
  br i1 %.not.i252, label %.lr.ph38.preheader.i, label %bb.ft

.lr.ph38.preheader.i:                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i251
  %.pre44.i = load i32, ptr %i.ak, align 4, !tbaa !12
  br label %.lr.ph38.i

bb.ft:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i251
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(64) @.str.219, i8 noundef zeroext 2)
          to label %.noexc263 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1279

.noexc263:                                        ; preds = %bb.ft
  %i.aeh = load ptr, ptr %i.aj, align 8, !tbaa !69
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 2232, ptr noundef nonnull @.str.343, i32 noundef %i.adz, ptr noundef %i.aeh, i32 noundef %i.px) #31
          to label %bb.fu unwind label %bb.fw

bb.fu:                                            ; preds = %.noexc263
  unreachable

bb.fv:                                            ; preds = %.noexc262
  %i.aei = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.gd

bb.fw:                                            ; preds = %.noexc263
  %i.aej = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.gd

.lr.ph38.i:                                       ; preds = %._crit_edge.i255, %.lr.ph38.preheader.i
  %44 = phi i32 [ %.pre44.i, %.lr.ph38.preheader.i ], [ %46, %._crit_edge.i255 ] ; 4 uses
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph38.preheader.i ], [ %indvars.iv.next42.i, %._crit_edge.i255 ] ; 4 uses
  %45 = getelementptr inbounds nuw [152 x i8], ptr %i.pz, i64 %indvars.iv41.i ; 4 uses
  %i.aek = load i32, ptr %45, align 8, !tbaa !85
  %.not33.i = icmp eq i32 %i.aek, %44
  br i1 %.not33.i, label %.preheader.i254, label %bb.fx

.preheader.i254:                                  ; preds = %.lr.ph38.i
  %i.ael = icmp sgt i32 %44, 0
  br i1 %i.ael, label %.lr.ph.i257, label %._crit_edge.i255

.lr.ph.i257:                                      ; preds = %.preheader.i254
  %i.aem = getelementptr inbounds nuw i8, ptr %45, i64 96
  %i.aen = getelementptr inbounds nuw i8, ptr %45, i64 72 ; 2 uses
  %.pre44.i.a = load ptr, ptr %i.al, align 8, !tbaa !99
  %.pre46.i = load ptr, ptr %i.aen, align 8, !tbaa !103
  %i.aeo = trunc nuw nsw i64 %indvars.iv41.i to i32
  br label %bb.ga

bb.fx:                                            ; preds = %.lr.ph38.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 1 dereferenceable(64) @.str.219, i8 noundef zeroext 2)
          to label %.noexc264 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1279

.noexc264:                                        ; preds = %bb.fx
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 2242, ptr noundef nonnull @.str.344) #31
          to label %bb.fy unwind label %bb.fz

bb.fy:                                            ; preds = %.noexc264
  unreachable

bb.fz:                                            ; preds = %.noexc264
  %i.aep = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.gd

bb.ga:                                            ; preds = %bb.gc, %.lr.ph.i257
  %i.aeq = phi i32 [ %44, %.lr.ph.i257 ], [ %i.afh, %bb.gc ]
  %i.aer = phi ptr [ %.pre46.i, %.lr.ph.i257 ], [ %i.afi, %bb.gc ] ; 2 uses
  %i.aes = phi ptr [ %.pre44.i.a, %.lr.ph.i257 ], [ %i.afj, %bb.gc ] ; 2 uses
  %indvars.iv.i258 = phi i64 [ 0, %.lr.ph.i257 ], [ %indvars.iv.next.i260, %bb.gc ] ; 4 uses
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %i.aes, i64 %indvars.iv.i258
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !89
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.aeu, i64 %indvars.iv41.i ; 2 uses
  %i.aew = load double, ptr %i.aev, align 8, !tbaa !90
  %i.aex = fmul double %i.aew, 2.000000e+00
  %i.aey = load double, ptr %i.aem, align 8, !tbaa !104
  %i.aez = fdiv double %i.aex, %i.aey
  %i.afa = fadd double %i.aez, 1.000000e+00
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr %i.aer, i64 %indvars.iv.i258
  store double %i.afa, ptr %i.afb, align 8, !tbaa !90
  %i.afc = load double, ptr %i.aev, align 8, !tbaa !90 ; 2 uses
  %i.afd = fcmp ugt double %i.afc, 0.000000e+00
  br i1 %i.afd, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.afe = load ptr, ptr @stderr, align 8, !tbaa !82
  %i.aff = trunc nuw nsw i64 %indvars.iv.i258 to i32
  %i.afg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afe, ptr noundef nonnull @.str.345, double noundef %i.afc, i32 noundef %i.aeo, i32 noundef %i.aff) #35 ; 0 uses
  %.pre.i259 = load ptr, ptr %i.al, align 8, !tbaa !99
  %.pre45.i = load ptr, ptr %i.aen, align 8, !tbaa !103
  %.pre47.i = load i32, ptr %45, align 8, !tbaa !85
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.afh = phi i32 [ %i.aeq, %bb.ga ], [ %.pre47.i, %bb.gb ] ; 2 uses
  %i.afi = phi ptr [ %i.aer, %bb.ga ], [ %.pre45.i, %bb.gb ]
  %i.afj = phi ptr [ %i.aes, %bb.ga ], [ %.pre.i259, %bb.gb ]
  %indvars.iv.next.i260 = add nuw nsw i64 %indvars.iv.i258, 1 ; 2 uses
  %i.afk = sext i32 %i.afh to i64
  %i.afl = icmp slt i64 %indvars.iv.next.i260, %i.afk
  br i1 %i.afl, label %bb.ga, label %._crit_edge.loopexit.i260, !llvm.loop !176

._crit_edge.loopexit.i260:                        ; preds = %bb.gc
  %.pre.i261 = load i32, ptr %i.ak, align 4, !tbaa !12
  br label %._crit_edge.i255

._crit_edge.i255:                                 ; preds = %._crit_edge.loopexit.i260, %.preheader.i254
  %46 = phi i32 [ %.pre.i261, %._crit_edge.loopexit.i260 ], [ %44, %.preheader.i254 ]
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond.not.i256 = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count23.i
  br i1 %exitcond.not.i256, label %_ZL34readIntegratedAutocorrelationTimesP16t_UmbrellaWindowiPKc.exit, label %.lr.ph38.i, !llvm.loop !177

bb.gd:                                            ; preds = %bb.fz, %bb.fw, %bb.fv
  %.pn.i247 = phi { ptr, i32 } [ %i.aej, %bb.fw ], [ %i.aep, %bb.fz ], [ %i.aei, %bb.fv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #25
  br label %.body

_ZL34readIntegratedAutocorrelationTimesP16t_UmbrellaWindowiPKc.exit: ; preds = %._crit_edge.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.ge

bb.ge:                                            ; preds = %_ZL34readIntegratedAutocorrelationTimesP16t_UmbrellaWindowiPKc.exit, %bb.fo
  %i.afm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 137), align 1, !tbaa !45, !range !52, !noundef !53
  %i.afn = trunc nuw i8 %i.afm to i1
  br i1 %i.afn, label %bb.gf, label %bb.hq

bb.gf:                                            ; preds = %bb.ge
  %i.afo = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.209, i32 noundef 11, ptr noundef nonnull %28)
          to label %bb.gg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1279

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %i.afo, ptr %i.ai, align 8, !tbaa !69
  %i.afp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 116), align 4, !tbaa !105, !range !52, !noundef !53
  %i.afq = trunc nuw i8 %i.afp to i1
  br i1 %i.afq, label %._crit_edge.i.i.i, label %.lr.ph81.i

._crit_edge.i.i.i:                                ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA18_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(18) @.str.346, i8 noundef zeroext 2)
          to label %.noexc288 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1279

.noexc288:                                        ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.afr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.afr, ptr %6, align 8, !tbaa !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.afr, ptr noundef nonnull align 1 dereferenceable(9) @.str.348, i64 9, i1 false)
  %i.afs = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9, ptr %i.afs, align 8, !tbaa !96
  %i.aft = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 0, ptr %i.aft, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.afu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.afu, ptr %7, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #25
  store i64 24, ptr %i.ah, align 8, !tbaa !95
  %i.afv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i64 noundef 0)
          to label %.noexc218.i unwind label %bb.gj ; 2 uses

.noexc218.i:                                      ; preds = %.noexc288
  store ptr %i.afv, ptr %7, align 8, !tbaa !61
  %i.afw = load i64, ptr %i.ah, align 8, !tbaa !95 ; 3 uses
  store i64 %i.afw, ptr %i.afu, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.afv, ptr noundef nonnull align 1 dereferenceable(24) @.str.349, i64 24, i1 false)
  %i.afx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.afw, ptr %i.afx, align 8, !tbaa !96
  %i.afy = load ptr, ptr %7, align 8, !tbaa !61
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 %i.afw
  store i8 0, ptr %i.afz, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #25
  %i.aga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 128), align 8, !tbaa !97
  %i.agb = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @.str.347, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.aga)
          to label %bb.gh unwind label %bb.gk

bb.gh:                                            ; preds = %.noexc218.i
  %i.agc = load ptr, ptr %7, align 8, !tbaa !61   ; 2 uses
  %i.agd = icmp eq ptr %i.agc, %i.afu
  br i1 %i.agd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i281: ; preds = %bb.gh
  %i.age = load i64, ptr %i.afu, align 8, !tbaa !16
  %i.agf = add i64 %i.age, 1
  call void @_ZdlPvm(ptr noundef %i.agc, i64 noundef %i.agf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i281
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.agg = load ptr, ptr %6, align 8, !tbaa !61   ; 2 uses
  %i.agh = icmp eq ptr %i.agg, %i.afr
  br i1 %i.agh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.agi = load i64, ptr %i.afr, align 8, !tbaa !16
  %i.agj = add i64 %i.agi, 1
  call void @_ZdlPvm(ptr noundef %i.agg, i64 noundef %i.agj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.agk = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i.i282 = icmp eq ptr %i.agl, null
  br i1 %.not.i.i.i.i282, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i283, label %bb.gi

bb.gi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.agk, ptr noundef nonnull %i.agl) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i283

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i283: ; preds = %bb.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i
  %i.agm = load ptr, ptr %5, align 8, !tbaa !61   ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ago = icmp eq ptr %i.agm, %i.agn
  br i1 %i.ago, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i283
  %i.agp = load i64, ptr %i.agn, align 8, !tbaa !16
  %i.agq = add i64 %i.agp, 1
  call void @_ZdlPvm(ptr noundef %i.agm, i64 noundef %i.agq) #32
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i285

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i285:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i283, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.lr.ph81.i

bb.gj:                                            ; preds = %.noexc288
  %i.agr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i

bb.gk:                                            ; preds = %.noexc218.i
  %i.ags = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agt = load ptr, ptr %7, align 8, !tbaa !61   ; 2 uses
  %i.agu = icmp eq ptr %i.agt, %i.afu
  br i1 %i.agu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.i: ; preds = %bb.gk
  %i.agv = load i64, ptr %i.afu, align 8, !tbaa !16
  %i.agw = add i64 %i.agv, 1
  call void @_ZdlPvm(ptr noundef %i.agt, i64 noundef %i.agw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.i, %bb.gj
  %.pn.i280 = phi { ptr, i32 } [ %i.agr, %bb.gj ], [ %i.ags, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.i ], [ %i.ags, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.agx = load ptr, ptr %6, align 8, !tbaa !61   ; 2 uses
  %i.agy = icmp eq ptr %i.agx, %i.afr
  br i1 %i.agy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i
  %i.agz = load i64, ptr %i.afr, align 8, !tbaa !16
  %i.aha = add i64 %i.agz, 1
  call void @_ZdlPvm(ptr noundef %i.agx, i64 noundef %i.aha) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body

.lr.ph81.i:                                       ; preds = %bb.gg, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i285
  %.0173.i = phi ptr [ %i.agb, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i285 ], [ null, %bb.gg ] ; 4 uses
  %putchar.i267 = call i32 @putchar(i32 10)       ; 0 uses
  %i.ahb = uitofp nneg i32 %i.px to double
  %.not208.i = icmp eq ptr %.0173.i, null         ; 2 uses
  br label %bb.gl

.loopexit37.i:                                    ; preds = %.critedge2.i, %.noexc290
  %exitcond164.not.i = icmp eq i64 %indvars.iv.next161.i, %wide.trip.count23.i
  br i1 %exitcond164.not.i, label %._crit_edge82.i, label %bb.gl, !llvm.loop !178

bb.gl:                                            ; preds = %.loopexit37.i, %.lr.ph81.i
  %indvars.iv160.i = phi i64 [ 0, %.lr.ph81.i ], [ %indvars.iv.next161.i, %.loopexit37.i ] ; 2 uses
  %i.ahc = load ptr, ptr @stdout, align 8, !tbaa !82
  %indvars.iv.next161.i = add nuw nsw i64 %indvars.iv160.i, 1 ; 3 uses
  %i.ahd = trunc nuw nsw i64 %indvars.iv.next161.i to i32
  %i.ahe = uitofp nneg i32 %i.ahd to double
  %i.ahf = fmul nnan double %i.ahe, 1.000000e+02
  %i.ahg = fdiv double %i.ahf, %i.ahb
  %i.ahh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahc, ptr noundef nonnull @.str.350, double noundef %i.ahg) #25 ; 0 uses
  %i.ahi = load ptr, ptr @stdout, align 8, !tbaa !82
  %i.ahj = call i32 @fflush(ptr noundef %i.ahi)   ; 0 uses
  %i.ahk = getelementptr inbounds nuw [152 x i8], ptr %i.pz, i64 %indvars.iv160.i ; 8 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 64 ; 3 uses
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !80
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !12 ; 9 uses
  %i.aho = sdiv i32 %i.ahn, 2                     ; 2 uses
  %i.ahp = icmp slt i32 %i.ahn, 10
  br i1 %i.ahp, label %bb.gm, label %bb.gp

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(64) @.str.219, i8 noundef zeroext 2)
          to label %.noexc289 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1279

.noexc289:                                        ; preds = %bb.gm
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 2358, ptr noundef nonnull @.str.351, i32 noundef %i.ahn) #31
          to label %bb.gn unwind label %bb.go

bb.gn:                                            ; preds = %.noexc289
  unreachable

bb.go:                                            ; preds = %.noexc289
  %i.ahq = landingpad { ptr, i32 }
end_hunk_1
