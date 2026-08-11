inline.NumInlined: 2108
inline.NumDeleted: 793
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 39
begin_hunk_0
@.str.2 = private unnamed_addr constant [10 x i8] c" Parallel\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@debug = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"PLINCS communication before each iteration: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"LINCS: using %d threads, tasks are %sdependent\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Hess2008a\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Hess97a\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"The number of constraints is %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [132 x i8] c"There are constraints between atoms in different decomposition domains,\0Awill communicate selected coordinates each lincs iteration\0A\00", align 1
@.str.11 = private unnamed_addr constant [159 x i8] c"%d constraints are involved in constraint triangles,\0Awill apply an additional matrix expansion of order %d for couplings\0Abetween constraints inside triangles\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@"_ZTIZN3gmx10init_lincsEP8_IO_FILERK10gmx_mtop_tiNS_8ArrayRefIKNS_11ListOfListsIiEEEEbiiPNS_25ObservablesReducerBuilderEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN3gmx10init_lincsEP8_IO_FILERK10gmx_mtop_tiNS_8ArrayRefIKNS_11ListOfListsIiEEEEbiiPNS_25ObservablesReducerBuilderEE3$_0" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN3gmx10init_lincsEP8_IO_FILERK10gmx_mtop_tiNS_8ArrayRefIKNS_11ListOfListsIiEEEEbiiPNS_25ObservablesReducerBuilderEE3$_0" = internal constant [121 x i8] c"ZN3gmx10init_lincsEP8_IO_FILERK10gmx_mtop_tiNS_8ArrayRefIKNS_11ListOfListsIiEEEEbiiPNS_25ObservablesReducerBuilderEE3$_0\00", align 1
@"_ZTIZN3gmx10init_lincsEP8_IO_FILERK10gmx_mtop_tiNS_8ArrayRefIKNS_11ListOfListsIiEEEEbiiPNS_25ObservablesReducerBuilderEE3$_1" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN3gmx10init_lincsEP8_IO_FILERK10gmx_mtop_tiNS_8ArrayRefIKNS_11ListOfListsIiEEEEbiiPNS_25ObservablesReducerBuilderEE3$_1" }, align 8
@"_ZTSZN3gmx10init_lincsEP8_IO_FILERK10gmx_mtop_tiNS_8ArrayRefIKNS_11ListOfListsIiEEEEbiiPNS_25ObservablesReducerBuilderEE3$_1" = internal constant [121 x i8] c"ZN3gmx10init_lincsEP8_IO_FILERK10gmx_mtop_tiNS_8ArrayRefIKNS_11ListOfListsIiEEEEbiiPNS_25ObservablesReducerBuilderEE3$_1\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Building the LINCS connectivity\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"LINCS task %d constraints %d - %d\0A\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str.15 = private unnamed_addr constant [54 x i8] c"Number of constraints is %d, padded %d, couplings %d\0A\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@.str.16 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/mdlib/lincs.cpp\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"More than %d threads is not supported for LINCS.\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"LINCS thread %d: %zu constraints, %zu constraints\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"LINCS thread r: %zu constraints\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 22, ptr @0 }, align 8
@.str.25 = private unnamed_addr constant [48 x i8] c"The %d constraints participate in %d triangles\0A\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"There are %d constraint couplings, of which %d in triangles\0A\00", align 1
@.str.27 = private unnamed_addr constant [73 x i8] c"%d constraint triangles contain constraints assigned to different tasks\0A\00", align 1
@.str.28 = private unnamed_addr constant [122 x i8] c"A constraint is connected to %d constraints, this is more than the %zu allowed for constraints participating in triangles\00", align 1
@.str.29 = private unnamed_addr constant [66 x i8] c"   Rel. Constraint Deviation:  RMS         MAX     between atoms\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"       Before LINCS          %.6f    %.6f %6d %6d\0A\00", align 1
@.str.31 = private unnamed_addr constant [52 x i8] c"        After LINCS          %.6f    %.6f %6d %6d\0A\0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c" in simulation %d\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [130 x i8] c"\0AStep %ld, time %g (ps)  LINCS WARNING%s\0Arelative constraint deviation after LINCS:\0Arms %.6f, max %.6f (between atoms %d and %d)\0A\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 34, i32 0, i32 22, ptr @0 }, align 8
@.str.36 = private unnamed_addr constant [102 x i8] c"bonds that rotated more than %g degrees:\0A atom 1 atom 2  angle  previous, current, constraint length\0A\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c" %6d %6d  %5.1f  %8.4f %8.4f    %8.4f\0A\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"Bond length not finite.\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZN3gmx10lincs_rmsdEPKNS_5LincsE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load i8, ptr %i.a, align 8, !tbaa !9, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNKRSt8optionalIdE5valueEv.exit, label %bb.b

_ZNKRSt8optionalIdE5valueEv.exit:                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.e = load double, ptr %i.d, align 8, !tbaa !14
  %i.f = fptrunc double %i.e to float
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNKRSt8optionalIdE5valueEv.exit
  %.0 = phi float [ %i.f, %_ZNKRSt8optionalIdE5valueEv.exit ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN3gmx26count_triangle_constraintsERKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEERKNS_11ListOfListsIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2280) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 2 uses
  %i.c = load <2 x ptr>, ptr %i.a, align 8, !tbaa !16 ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  %i.f = shufflevector <2 x ptr> %i.c, <2 x ptr> %i.e, <2 x i32> <i32 1, i32 3>
  %i.g = ptrtoint <2 x ptr> %i.f to <2 x i64>
  %i.h = shufflevector <2 x ptr> %i.c, <2 x ptr> %i.e, <2 x i32> <i32 0, i32 2>
  %i.i = ptrtoint <2 x ptr> %i.h to <2 x i64>
  %i.j = sub <2 x i64> %i.g, %i.i                 ; 2 uses
  %i.k = lshr exact <2 x i64> %i.j, splat (i64 2)
  %i.l = trunc <2 x i64> %i.k to <2 x i32>
  %i.m = sdiv <2 x i32> %i.l, splat (i32 3)
  %i.n = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.m) ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %bb.a
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.q = extractelement <2 x i64> %i.j, i64 0
  %i.r = ashr exact i64 %i.q, 2                   ; 5 uses
  %i.s = sub nsw i64 0, %i.r
  %invariant.gep109 = getelementptr [4 x i8], ptr %i.p, i64 %i.s ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 4 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.n to i64
  %broadcast.splatinsert119 = insertelement <8 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat120 = shufflevector <8 x i64> %broadcast.splatinsert119, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splat122 = shufflevector <2 x ptr> %i.c, <2 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert123 = insertelement <8 x ptr> poison, ptr %invariant.gep109, i64 0
  %broadcast.splat124 = shufflevector <8 x ptr> %broadcast.splatinsert123, <8 x ptr> poison, <8 x i32> zeroinitializer
  br label %bb.b

._crit_edge107:                                   ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %._crit_edge ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph106, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next, %._crit_edge ] ; 5 uses
  %.0104 = phi i32 [ 0, %.lr.ph106 ], [ %spec.select, %._crit_edge ]
  %i.w = mul nuw nsw i64 %indvars.iv, 3           ; 2 uses
  %i.x = icmp sgt i64 %i.r, %i.w
  %.0.i.v = select i1 %i.x, ptr %i.d, ptr %invariant.gep109
  %.0.i = getelementptr [4 x i8], ptr %.0.i.v, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !21 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr [4 x i8], ptr %i.v, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !21 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !21 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ah
  %.not9198 = icmp eq i32 %i.ae, %i.ag
  br i1 %.not9198, label %._crit_edge, label %.lr.ph101.preheader

.lr.ph101.preheader:                              ; preds = %bb.b
  %i.aj = sext i32 %i.ae to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.aj
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %indvars.iv, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert125 = insertelement <8 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat126 = shufflevector <8 x i32> %broadcast.splatinsert125, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph101

._crit_edge.loopexit:                             ; preds = %.loopexit
  %i.al = zext nneg i8 %.4 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.047.lcssa = phi i32 [ 0, %bb.b ], [ %i.al, %._crit_edge.loopexit ]
  %spec.select = add nuw nsw i32 %.0104, %.047.lcssa ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge107, label %bb.b, !llvm.loop !22

.lr.ph101:                                        ; preds = %.lr.ph101.preheader, %.loopexit
  %.047100 = phi i8 [ %.4, %.loopexit ], [ 0, %.lr.ph101.preheader ] ; 5 uses
  %.sroa.072.099 = phi ptr [ %i.cr, %.loopexit ], [ %i.ak, %.lr.ph101.preheader ] ; 2 uses
  %i.am = load i32, ptr %.sroa.072.099, align 4, !tbaa !21 ; 4 uses
  %i.an = zext i32 %i.am to i64
  %.not = icmp eq i64 %indvars.iv, %i.an
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph101
  %i.ao = mul nsw i32 %i.am, 3
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = icmp sgt i64 %i.r, %i.ap
  %.0.i57.v = select i1 %i.aq, ptr %i.d, ptr %invariant.gep109
  %.0.i57 = getelementptr [4 x i8], ptr %.0.i57.v, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i57, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !21 ; 2 uses
  %i.at = icmp eq i32 %i.as, %i.ab
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i57, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.049 = phi i32 [ %i.av, %bb.d ], [ %i.as, %bb.c ]
  %i.aw = sext i32 %.049 to i64
  %i.ax = getelementptr [4 x i8], ptr %i.v, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !21 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ax, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !21 ; 2 uses
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bb
  %.not9293 = icmp eq i32 %i.ay, %i.ba
  br i1 %.not9293, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.bd = sext i32 %i.ay to i64                   ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bd ; 3 uses
  %2 = shl nsw i64 %i.bb, 2
  %i.bf = add nsw i64 %2, -4
  %3 = shl nsw i64 %i.bd, 2
  %4 = sub nsw i64 %i.bf, %3                      ; 2 uses
  %5 = lshr exact i64 %4, 2
  %i.bg = add nuw nsw i64 %5, 1                   ; 2 uses
  %min.iters.check = icmp ult i64 %4, 28
  br i1 %min.iters.check, label %.lr.ph.preheader137, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bh = shl i64 %n.vec, 2
  %i.bi = getelementptr i8, ptr %i.be, i64 %i.bh
  %broadcast.splatinsert117 = insertelement <8 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat118 = shufflevector <8 x i32> %broadcast.splatinsert117, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert127 = insertelement <8 x i8> poison, i8 %.047100, i64 0
  %broadcast.splat128 = shufflevector <8 x i8> %broadcast.splatinsert127, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i8> [ %broadcast.splat128, %vector.ph ], [ %i.cc, %vector.body ]
  %i.bj = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %i.bk = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bk
  %wide.load = load <8 x i32>, ptr %next.gep, align 4, !tbaa !21 ; 3 uses
  %i.bl = zext <8 x i32> %wide.load to <8 x i64>
  %i.bm = icmp ne <8 x i64> %broadcast.splat, %i.bl
  %i.bn = icmp ne <8 x i32> %wide.load, %broadcast.splat118
  %.not134 = and <8 x i1> %i.bm, %i.bn            ; 3 uses
  %i.bo = mul nsw <8 x i32> %wide.load, splat (i32 3)
  %i.bp = sext <8 x i32> %i.bo to <8 x i64>       ; 2 uses
  %i.bq = icmp sgt <8 x i64> %broadcast.splat120, %i.bp
  %i.br = select <8 x i1> %i.bq, <8 x ptr> %broadcast.splat122, <8 x ptr> %broadcast.splat124
  %wide.gep = getelementptr [4 x i8], <8 x ptr> %i.br, <8 x i64> %i.bp ; 2 uses
  %wide.gep129 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep129, <8 x i1> %.not134, <8 x i32> poison), !tbaa !21
  %i.bs = icmp eq <8 x i32> %wide.masked.gather, %broadcast.splat126 ; 2 uses
  %i.bt = xor <8 x i1> %i.bs, splat (i1 true)
  %i.bu = select <8 x i1> %.not134, <8 x i1> %i.bt, <8 x i1> zeroinitializer ; 2 uses
  %wide.gep130 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather131 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep130, <8 x i1> %i.bu, <8 x i32> poison), !tbaa !21
  %i.bv = icmp eq <8 x i32> %wide.masked.gather131, %broadcast.splat126
  %i.bw = select <8 x i1> %i.bu, <8 x i1> %i.bv, <8 x i1> zeroinitializer
  %i.bx = select <8 x i1> %.not134, <8 x i1> %i.bs, <8 x i1> zeroinitializer
  %i.by = or <8 x i1> %i.bw, %i.bx
  %i.bz = freeze <8 x i1> %i.by                   ; 2 uses
  %i.ca = bitcast <8 x i1> %i.bz to i8
  %.not135 = icmp eq i8 %i.ca, 0                  ; 2 uses
  %i.cb = select i1 %.not135, <8 x i1> %i.bj, <8 x i1> %i.bz ; 2 uses
  %i.cc = select i1 %.not135, <8 x i8> %vec.phi, <8 x i8> splat (i8 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %i.ce = tail call i8 @llvm.experimental.vector.extract.last.active.v8i8(<8 x i8> %i.cc, <8 x i1> %i.cb, i8 %.047100) ; 2 uses
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader137

.lr.ph.preheader137:                              ; preds = %.lr.ph.preheader, %middle.block
  %.14895.ph = phi i8 [ %.047100, %.lr.ph.preheader ], [ %i.ce, %middle.block ]
  %.sroa.065.094.ph = phi ptr [ %i.be, %.lr.ph.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader137, %bb.i
  %.14895 = phi i8 [ %.3, %bb.i ], [ %.14895.ph, %.lr.ph.preheader137 ] ; 2 uses
  %.sroa.065.094 = phi ptr [ %i.cq, %bb.i ], [ %.sroa.065.094.ph, %.lr.ph.preheader137 ] ; 2 uses
  %i.cf = load i32, ptr %.sroa.065.094, align 4, !tbaa !21 ; 3 uses
  %i.cg = zext i32 %i.cf to i64
  %.not54 = icmp eq i64 %indvars.iv, %i.cg
  %.not55 = icmp eq i32 %i.cf, %i.am
  %or.cond = or i1 %.not54, %.not55
  br i1 %or.cond, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ch = mul nsw i32 %i.cf, 3
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = icmp sgt i64 %i.r, %i.ci
  %.0.i62.v = select i1 %i.cj, ptr %i.d, ptr %invariant.gep109
  %.0.i62 = getelementptr [4 x i8], ptr %.0.i62.v, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i62, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !21
  %i.cm = icmp eq i32 %i.cl, %i.z
  br i1 %i.cm, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i62, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !21
  %i.cp = icmp eq i32 %i.co, %i.z
  br i1 %i.cp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %.lr.ph
  %.3 = phi i8 [ %.14895, %.lr.ph ], [ 1, %bb.h ], [ %.14895, %bb.g ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.065.094, i64 4 ; 2 uses
  %.not92 = icmp eq ptr %i.cq, %i.bc
  br i1 %.not92, label %.loopexit, label %.lr.ph, !llvm.loop !27

.loopexit:                                        ; preds = %bb.i, %middle.block, %bb.e, %.lr.ph101
  %.4 = phi i8 [ %.047100, %.lr.ph101 ], [ %.047100, %bb.e ], [ %i.ce, %middle.block ], [ %.3, %bb.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.072.099, i64 4 ; 2 uses
  %.not91 = icmp eq ptr %i.cr, %i.ai
  br i1 %.not91, label %._crit_edge.loopexit, label %.lr.ph101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN3gmx10init_lincsEP8_IO_FILERK10gmx_mtop_tiNS_8ArrayRefIKNS_11ListOfListsIiEEEEbiiPNS_25ObservablesReducerBuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(768) %1, i32 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readnone captures(none) %4, i1 noundef zeroext %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::function.91", align 8  ; 12 uses
  %10 = alloca %"class.std::function.93", align 8 ; 12 uses
  %.not = icmp eq ptr %0, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = select i1 %5, ptr @.str.2, ptr @.str.3
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = tail call noalias noundef nonnull dereferenceable(656) ptr @_Znwm(i64 noundef 656) #37 ; 22 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  store i8 0, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 648
  store i8 0, ptr %i.i, align 8, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %i.c, i8 0, i64 241, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %i.d, i8 0, i64 100, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(51) %i.e, i8 0, i64 51, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.f, i8 0, i64 176, i1 false)
  %i.j = tail call noundef i32 @_Z20gmx_mtop_ftype_countRK10gmx_mtop_t19InteractionFunction(ptr noundef nonnull align 8 dereferenceable(768) %1, i32 noundef 62)
  %i.k = tail call noundef i32 @_Z20gmx_mtop_ftype_countRK10gmx_mtop_t19InteractionFunction(ptr noundef nonnull align 8 dereferenceable(768) %1, i32 noundef 63)
  %i.l = add nsw i32 %i.k, %i.j
  store i32 %i.l, ptr %i.c, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %2, ptr %i.m, align 4, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %6, ptr %i.n, align 4, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i32 %7, ptr %i.o, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 9 uses
  store i32 0, ptr %i.p, align 4, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81   ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !84   ; 4 uses
  %.not127 = icmp eq ptr %i.s, %i.t
  br i1 %.not127, label %._crit_edge118, label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %bb.c
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 2408
  %scevgep = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %.lr.ph117

._crit_edge118:                                   ; preds = %._crit_edge, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store i32 0, ptr %i.y, align 8, !tbaa !85
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !86 ; 2 uses
  %.not111119 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not111119, label %._crit_edge124, label %.lr.ph123

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %._crit_edge
  %.promoted = phi i32 [ %.promoted130, %._crit_edge ], [ 0, %.lr.ph117.preheader ] ; 5 uses
  %.077115 = phi i64 [ %i.br, %._crit_edge ], [ 0, %.lr.ph117.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [2408 x i8], ptr %i.t, i64 %.077115
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !88 ; 4 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.lr.ph117
  %i.ah = getelementptr inbounds [48 x i8], ptr %3, i64 %.077115
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.af to i64   ; 9 uses
  %min.iters.check = icmp ult i32 %i.af, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep149 = getelementptr i8, ptr %i.ai, i64 4
  %i.aj = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep150 = getelementptr i8, ptr %scevgep149, i64 %i.aj
  %bound0 = icmp ult ptr %i.p, %scevgep150
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

end_hunk_0
