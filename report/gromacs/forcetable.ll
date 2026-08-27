Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/forcetable?download=true
inline.NumInlined: 816
inline.NumDeleted: 354
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0
@.str.11 = private unnamed_addr constant [22 x i8] c"ic.vdw.ewaldCoeff > 0\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"Tables in file %s not long enough for cut-off:\0A\09should be at least %f nm\0A\00", align 1
@.str.13 = private unnamed_addr constant [71 x i8] c"Generated table with %d data points for %s%s.\0ATabscale = %g points/nm\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"1-4 \00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZL6tprops = internal unnamed_addr constant [18 x %struct.t_tab_props] [%struct.t_tab_props { ptr @.str.45, i8 0 }, %struct.t_tab_props { ptr @.str.46, i8 0 }, %struct.t_tab_props { ptr @.str.47, i8 0 }, %struct.t_tab_props { ptr @.str.48, i8 0 }, %struct.t_tab_props { ptr @.str.49, i8 1 }, %struct.t_tab_props { ptr @.str.50, i8 1 }, %struct.t_tab_props { ptr @.str.51, i8 1 }, %struct.t_tab_props { ptr @.str.52, i8 1 }, %struct.t_tab_props { ptr @.str.53, i8 1 }, %struct.t_tab_props { ptr @.str.54, i8 1 }, %struct.t_tab_props { ptr @.str.55, i8 1 }, %struct.t_tab_props { ptr @.str.56, i8 1 }, %struct.t_tab_props { ptr @.str.57, i8 0 }, %struct.t_tab_props { ptr @.str.58, i8 0 }, %struct.t_tab_props { ptr @.str.59, i8 0 }, %struct.t_tab_props { ptr @.str.60, i8 1 }, %struct.t_tab_props { ptr @.str.61, i8 0 }, %struct.t_tab_props { ptr @.str.62, i8 0 }], align 16
@.str.16 = private unnamed_addr constant [19 x i8] c"Invalid eeltype %s\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Invalid vdwtype %s in %s line %d\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"incons\00", align 1
@.str.19 = private unnamed_addr constant [83 x i8] c"Potential modifiers other than potential-shift are only implemented for LJ cut-off\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Unsupported vdw_modifier\00", align 1
@.str.21 = private unnamed_addr constant [58 x i8] c"Trying to read file %s, but nr columns = %d, should be %d\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"The first distance in file %s is %f nm instead of %f nm\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"The angles in file %s should go from %f to %f instead of %f to %f\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"Read user tables from %s with %d data points.\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Tabscale = %g points/nm\0A\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"In table file '%s' the x values are not equally spaced: %f %f %f\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"Out of range potential value %g in file '%s'\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"Out of range force value %g in file '%s'\00", align 1
@.str.29 = private unnamed_addr constant [137 x i8] c"For the %d non-zero entries for table %d in %s the forces deviate on average %ld%% from minus the numerical derivative of the potential\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"\0AWARNING: %s\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [43 x i8] c"\0ANOTE: All elements in table %s are zero\0A\0A\00", align 1
@.str.33 = private unnamed_addr constant [62 x i8] c"Force generation for dihedral tables is not (yet) implemented\00", align 1
@.str.34 = private unnamed_addr constant [75 x i8] c"Generating forces for table %d, boundary conditions: V''' at %g, %s at %g\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"V'''\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"V'=0\00", align 1
@.str.37 = private unnamed_addr constant [96 x i8] c"Can not generate splines with third derivative boundary conditions with less than 4 (%d) points\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"The left third derivative is %g\0A\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"The right third derivative is %g\0A\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"Setting up tables\0A\00", align 1
@.str.43 = private unnamed_addr constant [80 x i8] c"Cannot apply new potential-shift modifier to interaction type '%s' yet. (%s,%d)\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"Table type %d not implemented yet. (%s,%d)\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"LJ6\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"LJ12\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"LJ6Shift\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"LJ12Shift\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Shift\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"RF\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"RF-zero\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"COUL\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"Ewald\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"Ewald-Switch\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"Ewald-User\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"Ewald-User-Switch\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"LJ6Ewald\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"LJ6Switch\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"LJ12Switch\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"COULSwitch\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"EXPMIN\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"ic.vdw.type != VanDerWaalsType::User || tabfn\00", align 1
@.str.64 = private unnamed_addr constant [47 x i8] c"With VdW user tables we need a table file name\00", align 1
@"__PRETTY_FUNCTION__._ZZ29makeDispersionCorrectionTableP8_IO_FILERK19interaction_const_tfPKcENK3$_0clEv" = private unnamed_addr constant [122 x i8] c"auto makeDispersionCorrectionTable(FILE *, const interaction_const_t &, real, const char *)::(lambda)::operator()() const\00", align 1
@switch.table._Z11make_tablesP8_IO_FILERK19interaction_const_tPKcfi = private unnamed_addr constant [7 x i8] c"\11\07\07\07\11\07\11", align 4

@_ZN11t_tabledataC1Eiidb = unnamed_addr alias void (ptr, i32, i32, double, i1), ptr @_ZN11t_tabledataC2Eiidb
@_ZN12t_forcetableC1E16TableInteraction11TableFormat = unnamed_addr alias void (ptr, i32, i32), ptr @_ZN12t_forcetableC2E16TableInteraction11TableFormat
@_ZN12t_forcetableD1Ev = unnamed_addr alias void (ptr), ptr @_ZN12t_forcetableD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef double @_Z12v_q_ewald_lrdd(double noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp oeq double %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fmul double %0, 2.000000e+00
  %i.c = fdiv double %i.b, f0x3FFC5BF891B4EF6A
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = fmul double %0, %1
  %i.e = tail call double @erf(double noundef %i.d) #24
  %i.f = fdiv double %i.e, %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi double [ %i.c, %bb.b ], [ %i.f, %bb.c ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @erf(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef double @_Z13v_lj_ewald_lrdd(double noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp oeq double %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fmul double %0, %0
  %i.c = fmul double %0, %i.b                     ; 2 uses
  %i.d = fmul double %i.c, %i.c
  %i.e = fdiv double %i.d, 6.000000e+00
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = fmul double %0, %1                       ; 2 uses
  %i.g = fmul double %i.f, %i.f                   ; 4 uses
  %i.h = fmul double %i.g, %i.g
  %i.i = fmul double %1, %1
  %i.j = fmul double %1, %i.i                     ; 2 uses
  %i.k = fmul double %i.j, %i.j
  %i.l = fneg double %i.g
  %i.m = tail call double @exp(double noundef %i.l) #24
  %i.n = fadd double %i.g, 1.000000e+00
  %i.o = tail call double @llvm.fmuladd.f64(double %i.h, double 5.000000e-01, double %i.n)
  %i.p = fneg double %i.m
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.o, double 1.000000e+00)
  %i.r = fdiv double %i.q, %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi double [ %i.e, %bb.b ], [ %i.r, %bb.c ]
  ret double %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_Z29generateEwaldCorrectionTablesidfPFdddE(ptr dead_on_unwind noalias writable sret(%struct.EwaldCorrectionTables) align 8 %0, i32 noundef %1, double noundef %2, float noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = icmp slt i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 157, ptr noundef nonnull @.str.1) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ad

bb.e:                                             ; preds = %bb.a
  %i.c = fdiv double 1.000000e+00, %2             ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i8 0, i64 72, i1 false)
  %i.e = fptrunc double %2 to float
  store float %i.e, ptr %0, align 8, !tbaa !9
  %i.f = zext nneg i32 %1 to i64                  ; 5 uses
  invoke void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.f)
          to label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit unwind label %bb.t

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit: ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.f
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit
  %i.p = sub nuw nsw i64 %i.f, %i.n
  invoke void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.p)
          to label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit123 unwind label %bb.t

bb.g:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit
  %i.q = icmp ugt i64 %i.n, %i.f
  br i1 %i.q, label %bb.h, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit123

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.f ; 2 uses
  %.not.i.i121 = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i121, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit123, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.r, ptr %i.h, align 8, !tbaa !18
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit123

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit123: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.t = shl nsw i32 %1, 2
  %i.u = zext nneg i32 %i.t to i64                ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 4 uses
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !19   ; 5 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2                 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %i.u
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit123
  %i.ad = sub nuw nsw i64 %i.u, %i.ab
  invoke void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.ad)
          to label %._ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit126_crit_edge unwind label %bb.t

._ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit126_crit_edge: ; preds = %bb.j
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !19
  %.pre159 = load ptr, ptr %i.v, align 8, !tbaa !18
  br label %.lr.ph

bb.k:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit123
  %i.ae = icmp ugt i64 %i.ab, %i.u
  br i1 %i.ae, label %bb.l, label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.u ; 3 uses
  %.not.i.i124 = icmp eq ptr %i.w, %i.af
  br i1 %.not.i.i124, label %.lr.ph, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.af, ptr %i.v, align 8, !tbaa !18
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.l, %bb.m, %._ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit126_crit_edge
  %i.ag = phi ptr [ %.pre159, %._ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit126_crit_edge ], [ %i.af, %bb.m ], [ %i.w, %bb.l ], [ %i.w, %bb.k ]
  %i.ah = phi ptr [ %.pre, %._ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit126_crit_edge ], [ %i.x, %bb.m ], [ %i.x, %bb.l ], [ %i.x, %bb.k ] ; 12 uses
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !19  ; 23 uses
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !19  ; 11 uses
  %i.ak = add nsw i32 %1, -1                      ; 6 uses
  %i.al = fpext float %3 to double                ; 6 uses
  %i.am = insertelement <2 x double> poison, double %i.c, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x double> %i.an, <double 2.500000e-01, double 1.000000e+00> ; 2 uses
  %i.ap = zext nneg i32 %i.ak to i64              ; 4 uses
  %i.aq = uitofp nneg i32 %i.ak to double
  %i.ar = fmul double %i.c, %i.aq                 ; 2 uses
  %i.as = invoke noundef double %4(double noundef %i.al, double noundef %i.ar)
          to label %bb.n unwind label %.loopexit.split-lp ; 5 uses

bb.n:                                             ; preds = %.lr.ph
  %i.at = fptrunc double %i.as to float
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ap
  store float %i.at, ptr %i.au, align 4, !tbaa !20
  %i.av = add nsw i32 %1, -2                      ; 2 uses
  %i.aw = uitofp nneg i32 %i.av to double
  %i.ax = fmul double %i.c, %i.aw
  %i.ay = invoke noundef double %4(double noundef %i.al, double noundef %i.ax)
          to label %bb.o unwind label %.loopexit.split-lp ; 5 uses

bb.o:                                             ; preds = %bb.n
  %i.az = fcmp uno double %i.ay, 0.000000e+00
  %i.ba = tail call double @llvm.fabs.f64(double %i.ay)
  %i.bb = fcmp ogt double %i.ba, f0x471A36E2E0000000
  %or.cond117.peel = or i1 %i.az, %i.bb
  br i1 %or.cond117.peel, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ap
  store float -0.000000e+00, ptr %i.bc, align 4, !tbaa !20
  br label %.peel.next

bb.p:                                             ; preds = %bb.o
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.c, double -5.000000e-01, double %i.ar)
  %i.be = invoke noundef double %4(double noundef %i.al, double noundef %i.bd)
          to label %bb.q unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.bf = fadd double %i.as, %i.ay
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.be, double -2.000000e+00, double %i.bf)
  %i.bh = extractelement <2 x double> %i.ao, i64 0
  %i.bi = fdiv double %i.bg, %i.bh
  %i.bj = fsub double %i.as, %i.ay
  %i.bk = fdiv double %i.bj, %i.c
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bi, double 5.000000e-01, double %i.bk) ; 4 uses
  %i.bm = fptrunc double %i.bl to float
  %i.bn = fneg float %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ap
  store float %i.bn, ptr %i.bo, align 4, !tbaa !20
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.c, double %i.ay)
  %i.bq = fsub double %i.bp, %i.as
  %i.br = fmul double %i.bq, 2.000000e+00
  %i.bs = fdiv double %i.br, %i.c
  %i.bt = fsub double %i.bl, %i.bs                ; 3 uses
  %i.bu = fcmp uno double %i.bt, 0.000000e+00
  %i.bv = tail call double @llvm.fabs.f64(double %i.bt)
  %i.bw = fcmp ogt double %i.bv, f0x471A36E2E0000000
  %or.cond119.peel = or i1 %i.bu, %i.bw           ; 2 uses
  %spec.select.peel = select i1 %or.cond119.peel, double %i.bl, double %i.bt
  %spec.select120.peel = zext i1 %or.cond119.peel to i8
  br label %.peel.next

.peel.next:                                       ; preds = %.thread, %bb.q
  %.2104.peel = phi double [ 0.000000e+00, %.thread ], [ %spec.select.peel, %bb.q ] ; 2 uses
  %.2.peel = phi i8 [ 1, %.thread ], [ %spec.select120.peel, %bb.q ]
  %i.bx = fmul double %.2104.peel, -5.000000e-01
  %i.by = fptrunc double %i.bx to float
  %i.bz = zext nneg i32 %i.av to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bz
  store float %i.by, ptr %i.ca, align 4, !tbaa !20
  br label %bb.r

bb.r:                                             ; preds = %.peel.next, %bb.aa
  %indvars.iv.in = phi i64 [ %i.ap, %.peel.next ], [ %indvars.iv, %bb.aa ]
  %.098151 = phi double [ %i.as, %.peel.next ], [ %.199, %bb.aa ] ; 2 uses
  %.0100150 = phi i8 [ %.2.peel, %.peel.next ], [ %.2, %bb.aa ] ; 2 uses
  %.0102149 = phi double [ %.2104.peel, %.peel.next ], [ %.2104, %bb.aa ] ; 3 uses
  %.0106148 = phi i32 [ %i.ak, %.peel.next ], [ %.1107, %bb.aa ] ; 2 uses
  %indvars.iv = add nsw i64 %indvars.iv.in, -1    ; 6 uses
  %i.cb = trunc nuw i64 %indvars.iv to i32        ; 5 uses
  %i.cc = uitofp nneg i32 %i.cb to double
  %i.cd = fmul double %i.c, %i.cc                 ; 2 uses
  %i.ce = invoke noundef double %4(double noundef %i.al, double noundef %i.cd)
          to label %bb.s unwind label %.loopexit  ; 5 uses

bb.s:                                             ; preds = %bb.r
  %i.cf = trunc nuw i8 %.0100150 to i1
  br i1 %i.cf, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.j, %bb.f, %bb.e
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit:                                        ; preds = %bb.r, %bb.w, %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %.lr.ph, %bb.n, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.u:                                             ; preds = %bb.s
  %i.ch = sub nsw i32 %i.cb, %.0106148
  %i.ci = sitofp i32 %i.ch to double
  %i.cj = fneg double %i.ci
  %i.ck = fmul double %.0102149, %i.cj
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.c, double %.098151)
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u
  %.1107 = phi i32 [ %.0106148, %bb.u ], [ %i.cb, %bb.s ]
  %.199 = phi double [ %.098151, %bb.u ], [ %i.ce, %bb.s ]
  %.097 = phi double [ %i.cl, %bb.u ], [ %i.ce, %bb.s ]
  %i.cm = fptrunc double %.097 to float
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  store float %i.cm, ptr %i.cn, align 4, !tbaa !20
  %i.co = icmp eq i64 %indvars.iv, 0
  br i1 %i.co, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = add nsw i32 %i.cb, -1                   ; 2 uses
  %i.cq = uitofp nneg i32 %i.cp to double
  %i.cr = fmul double %i.c, %i.cq
  %i.cs = invoke noundef double %4(double noundef %i.al, double noundef %i.cr)
          to label %bb.x unwind label %.loopexit  ; 5 uses

bb.x:                                             ; preds = %bb.w
  %i.ct = fcmp uno double %i.cs, 0.000000e+00
  %i.cu = tail call double @llvm.fabs.f64(double %i.cs)
  %i.cv = fcmp ogt double %i.cu, f0x471A36E2E0000000
  %or.cond117 = or i1 %i.ct, %i.cv
  %i.cw = trunc nuw i8 %.0100150 to i1
  %i.cx = select i1 %or.cond117, i1 true, i1 %i.cw
  br i1 %i.cx, label %.thread174, label %bb.y

.thread174:                                       ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !20
  %i.da = fpext float %i.cz to double
  %i.db = tail call double @llvm.fmuladd.f64(double %.0102149, double -5.000000e-01, double %i.da)
  %i.dc = fptrunc double %i.db to float
  store float %i.dc, ptr %i.cy, align 4, !tbaa !20
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.c, double -5.000000e-01, double %i.cd)
  %i.de = invoke noundef double %4(double noundef %i.al, double noundef %i.dd)
          to label %bb.z unwind label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.df = fadd double %i.ce, %i.cs
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.de, double -2.000000e+00, double %i.df)
  %i.dh = fsub double %i.ce, %i.cs
  %i.di = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.dh, i64 1
  %i.dk = fdiv <2 x double> %i.dj, %i.ao          ; 2 uses
  %i.dl = extractelement <2 x double> %i.dk, i64 0
  %i.dm = extractelement <2 x double> %i.dk, i64 1
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dl, double 5.000000e-01, double %i.dm) ; 4 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !20
  %i.dq = fpext float %i.dp to double
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dn, double -5.000000e-01, double %i.dq)
  %i.ds = fptrunc double %i.dr to float
  store float %i.ds, ptr %i.do, align 4, !tbaa !20
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.c, double %i.cs)
  %i.du = fsub double %i.dt, %i.ce
  %i.dv = fmul double %i.du, 2.000000e+00
  %i.dw = fdiv double %i.dv, %i.c
  %i.dx = fsub double %i.dn, %i.dw                ; 3 uses
  %i.dy = fcmp uno double %i.dx, 0.000000e+00
  %i.dz = tail call double @llvm.fabs.f64(double %i.dx)
  %i.ea = fcmp ogt double %i.dz, f0x471A36E2E0000000
  %or.cond119 = or i1 %i.dy, %i.ea                ; 2 uses
  %spec.select = select i1 %or.cond119, double %i.dn, double %i.dx
  %spec.select120 = zext i1 %or.cond119 to i8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread174
  %.2104 = phi double [ %.0102149, %.thread174 ], [ %spec.select, %bb.z ] ; 2 uses
  %.2 = phi i8 [ 1, %.thread174 ], [ %spec.select120, %bb.z ]
  %i.eb = fmul double %.2104, -5.000000e-01
  %i.ec = fptrunc double %i.eb to float
  %i.ed = zext nneg i32 %i.cp to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ed
  store float %i.ec, ptr %i.ee, align 4, !tbaa !20
  %i.ef = icmp sgt i32 %i.cb, 0
  br i1 %i.ef, label %bb.r, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.v, %bb.aa
  %i.eg = load float, ptr %i.ai, align 4, !tbaa !20
  %i.eh = fmul float %i.eg, 2.000000e+00
  store float %i.eh, ptr %i.ai, align 4, !tbaa !20
  %i.ei = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ei, label %bb.ab, label %.lr.ph153.preheader

.lr.ph153.preheader:                              ; preds = %._crit_edge
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 7 uses
  %min.iters.check = icmp slt i32 %1, 17
  br i1 %min.iters.check, label %.lr.ph153.preheader186, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph153.preheader
  %i.ej = shl nuw nsw i64 %wide.trip.count, 4
  %scevgep = getelementptr i8, ptr %i.ah, i64 %i.ej ; 2 uses
  %i.ek = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.el = getelementptr i8, ptr %i.ai, i64 %i.ek
  %scevgep179 = getelementptr i8, ptr %i.el, i64 4
  %scevgep180 = getelementptr i8, ptr %i.aj, i64 %i.ek
  %bound0 = icmp ult ptr %i.ah, %scevgep179
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0181 = icmp ult ptr %i.ah, %scevgep180
  %bound1182 = icmp ult ptr %i.aj, %scevgep
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx = or i1 %found.conflict, %found.conflict183
  br i1 %conflict.rdx, label %.lr.ph153.preheader186, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index
  %wide.load = load <8 x float>, ptr %i.em, align 4, !tbaa !20, !alias.scope !24 ; 2 uses
  %i.en = shl nuw nsw i64 %index, 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.en
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %wide.load184 = load <8 x float>, ptr %i.eq, align 4, !tbaa !20, !alias.scope !24
  %i.er = fsub <8 x float> %wide.load184, %wide.load
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index
  %wide.load185 = load <8 x float>, ptr %i.es, align 4, !tbaa !20, !alias.scope !27
  %i.et = shufflevector <8 x float> %wide.load, <8 x float> %i.er, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eu = shufflevector <8 x float> %wide.load185, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.et, <16 x float> %i.eu, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.eo, align 4, !tbaa !20, !alias.scope !29, !noalias !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge154, label %.lr.ph153.preheader186

.lr.ph153.preheader186:                           ; preds = %vector.memcheck, %.lr.ph153.preheader, %middle.block
  %indvars.iv156.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph153.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph153.prol.loopexit, label %.lr.ph153.prol

.lr.ph153.prol:                                   ; preds = %.lr.ph153.preheader186, %.lr.ph153.prol
  %indvars.iv156.prol = phi i64 [ %indvars.iv.next157.prol, %.lr.ph153.prol ], [ %indvars.iv156.ph, %.lr.ph153.preheader186 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph153.prol ], [ 0, %.lr.ph153.preheader186 ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv156.prol
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !20 ; 2 uses
  %.idx.prol = shl nuw nsw i64 %indvars.iv156.prol, 4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.prol ; 3 uses
  store float %i.ex, ptr %i.ey, align 4, !tbaa !20
  %indvars.iv.next157.prol = add nuw nsw i64 %indvars.iv156.prol, 1 ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next157.prol
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !20
  %i.fb = fsub float %i.fa, %i.ex
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store float %i.fb, ptr %i.fc, align 4, !tbaa !20
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv156.prol
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !20
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fg = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fe, i64 0
  store <2 x float> %i.fg, ptr %i.ff, align 4, !tbaa !20
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph153.prol.loopexit, label %.lr.ph153.prol, !llvm.loop !35

.lr.ph153.prol.loopexit:                          ; preds = %.lr.ph153.prol, %.lr.ph153.preheader186
  %indvars.iv156.unr = phi i64 [ %indvars.iv156.ph, %.lr.ph153.preheader186 ], [ %indvars.iv.next157.prol, %.lr.ph153.prol ]
  %i.fh = sub nsw i64 %indvars.iv156.ph, %wide.trip.count
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %.lr.ph153.prol.loopexit, %.lr.ph153
  %indvars.iv156 = phi i64 [ %indvars.iv.next157.3, %.lr.ph153 ], [ %indvars.iv156.unr, %.lr.ph153.prol.loopexit ] ; 7 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv156
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !20 ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv156, 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx ; 3 uses
  store float %i.fk, ptr %i.fl, align 4, !tbaa !20
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 4 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next157
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !20
  %i.fo = fsub float %i.fn, %i.fk
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store float %i.fo, ptr %i.fp, align 4, !tbaa !20
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv156
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !20
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.ft = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fr, i64 0
  store <2 x float> %i.ft, ptr %i.fs, align 4, !tbaa !20
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next157
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !20 ; 2 uses
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next157, 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.1 ; 3 uses
  store float %i.fv, ptr %i.fw, align 4, !tbaa !20
  %indvars.iv.next157.1 = add nuw nsw i64 %indvars.iv156, 2 ; 4 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next157.1
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !20
  %i.fz = fsub float %i.fy, %i.fv
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store float %i.fz, ptr %i.ga, align 4, !tbaa !20
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next157
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !20
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.ge = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gc, i64 0
  store <2 x float> %i.ge, ptr %i.gd, align 4, !tbaa !20
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next157.1
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !20 ; 2 uses
  %.idx.2 = shl nuw nsw i64 %indvars.iv.next157.1, 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.2 ; 3 uses
  store float %i.gg, ptr %i.gh, align 4, !tbaa !20
  %indvars.iv.next157.2 = add nuw nsw i64 %indvars.iv156, 3 ; 4 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next157.2
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !20
  %i.gk = fsub float %i.gj, %i.gg
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store float %i.gk, ptr %i.gl, align 4, !tbaa !20
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next157.1
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !20
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gp = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gn, i64 0
  store <2 x float> %i.gp, ptr %i.go, align 4, !tbaa !20
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next157.2
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !20 ; 2 uses
  %.idx.3 = shl nuw nsw i64 %indvars.iv.next157.2, 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.3 ; 3 uses
  store float %i.gr, ptr %i.gs, align 4, !tbaa !20
  %indvars.iv.next157.3 = add nuw nsw i64 %indvars.iv156, 4 ; 3 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next157.3
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !20
  %i.gv = fsub float %i.gu, %i.gr
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store float %i.gv, ptr %i.gw, align 4, !tbaa !20
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next157.2
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !20
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.ha = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gy, i64 0
  store <2 x float> %i.ha, ptr %i.gz, align 4, !tbaa !20
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next157.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge154, label %.lr.ph153, !llvm.loop !37

._crit_edge154:                                   ; preds = %.lr.ph153.prol.loopexit, %.lr.ph153, %middle.block
  %i.hb = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !20 ; 2 uses
  %i.he = shl nsw i32 %i.ak, 2                    ; 2 uses
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.hf
  store float %i.hd, ptr %i.hg, align 4, !tbaa !20
  %i.hh = fneg float %i.hd
  %6 = zext nneg i32 %i.he to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %6 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.hh, ptr %i.hi, align 4, !tbaa !20
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.hb
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !20
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hm = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hk, i64 0
  store <2 x float> %i.hm, ptr %i.hl, align 4, !tbaa !20
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge154, %._crit_edge
  ret void

bb.ac:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZN21EwaldCorrectionTablesD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #24
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.d
  %.pn115 = phi { ptr, i32 } [ %i.b, %bb.d ], [ %.pn, %bb.ac ]
  resume { ptr, i32 } %.pn115
}

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(66) %1, i8 noundef zeroext %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(66) %1) #24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.b, ptr %i.a, align 8, !tbaa !41
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !43
  %i.f = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.f, ptr %i.c, align 8, !tbaa !45
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !45
  store i8 %i.h, ptr %i.g, align 1, !tbaa !45
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !46
  %i.k = load ptr, ptr %0, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !45
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !45
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN21EwaldCorrectionTablesD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.b)
          to label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27
  unreachable

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev.exit
  invoke void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.f)
          to label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev.exit2 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #27
  unreachable

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev.exit2: ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev.exit, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev.exit4, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev.exit2
  invoke void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.j)
          to label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev.exit4 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev.exit4: ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev.exit2, %bb.f
  ret void
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

end_hunk_0
