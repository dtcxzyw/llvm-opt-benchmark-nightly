Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/constraint_gpu_helpers?download=true
inline.NumInlined: 449
inline.NumDeleted: 280
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str.5 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/mdlib/constraint_gpu_helpers.cpp\00", align 1
@.str.7 = private unnamed_addr constant [429 x i8] c"The [molecules] section of your topology specifies more than one block of\0Aa [moleculetype] with a [settles] block. Only one such is allowed.\0AIf you are trying to partition your solvent into different *groups*\0A(e.g. for freezing, T-coupling, etc.), you are using the wrong approach. Index\0Afiles specify groups. Otherwise, you may wish to change the least-used\0Ablock of molecules with SETTLE constraints into 3 normal constraints.\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"mO == ow1.m\00", align 1
@.str.9 = private unnamed_addr constant [91 x i8] c"Topology has different values for oxygen mass. Should be identical in order to use SETTLE.\00", align 1
@"__PRETTY_FUNCTION__._ZZ21getSettleTopologyDataRK10gmx_mtop_tENK3$_0clEv" = private unnamed_addr constant [77 x i8] c"auto getSettleTopologyData(const gmx_mtop_t &)::(lambda)::operator()() const\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"hw2.m == hw3.m && hw2.m == mH\00", align 1
@.str.11 = private unnamed_addr constant [93 x i8] c"Topology has different values for hydrogen mass. Should be identical in order to use SETTLE.\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"mO > 0\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"Could not find oxygen mass in the topology. Needed in SETTLE.\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"mH > 0\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c"Could not find hydrogen mass in the topology. Needed in SETTLE.\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"settle_type >= 0\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"settle_init called without settles\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_Z12countCouplediN3gmx8ArrayRefIiEERKNS_11ListOfListsI25AtomsAdjacencyListElementEE(i32 noundef %0, ptr %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !15
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.a ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !16   ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16   ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [12 x i8], ptr %i.c, i64 %i.i
  %.not19 = icmp eq i32 %i.f, %i.h
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds [12 x i8], ptr %i.c, i64 %i.k
  %i.m = ptrtoint ptr %1 to i64
  %i.n = ptrtoint ptr %2 to i64
  %i.o = sub i64 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.d ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.021 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 2 uses
  %.sroa.013.020 = phi ptr [ %i.l, %.lr.ph ], [ %i.aa, %bb.d ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.020, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !66
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %1, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.t, align 4, !tbaa !16
  %i.w = load i32, ptr %.sroa.013.020, align 4, !tbaa !67
  %i.x = tail call noundef i32 @_Z12countCouplediN3gmx8ArrayRefIiEERKNS_11ListOfListsI25AtomsAdjacencyListElementEE(i32 noundef %i.w, ptr nonnull %1, ptr nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.y = add i32 %.021, 1
  %i.z = add i32 %i.y, %i.x
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %i.z, %bb.c ], [ %.021, %bb.b ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.020, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.j
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_Z26countNumCoupledConstraintsN3gmx8ArrayRefIKiEERKNS_11ListOfListsI25AtomsAdjacencyListElementEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2000), align 8, !tbaa !19
  %i.b = add nsw i32 %i.a, 1
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 2
  %i.g = sext i32 %i.b to i64                     ; 2 uses
  %i.h = sdiv i64 %i.f, %i.g                      ; 3 uses
  %i.i = trunc i64 %i.h to i32
  %sext = shl i64 %i.h, 32                        ; 3 uses
  %i.j = ashr exact i64 %sext, 32                 ; 2 uses
  %i.k = icmp ugt i64 %i.j, 2305843009213693951
  br i1 %i.k, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %.noexc20

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

.noexc20:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.l = ashr exact i64 %sext, 30                 ; 3 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #19 ; 5 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.m, i8 -1, i64 %i.l, i1 false), !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc20, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  %i.q = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.m, %.noexc20 ] ; 5 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.p, %.noexc20 ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.r, align 8, !tbaa !21
  %i.s = icmp sgt i32 %i.i, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %i.t = ptrtoint ptr %.0.i.i.i.i.i.i.i to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v ; 2 uses
  %wide.trip.count = and i64 %i.h, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !16
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = mul nsw i64 %indvars.iv, %i.g
  %i.ab = getelementptr [4 x i8], ptr %1, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16
  %i.ae = getelementptr i8, ptr %i.ab, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = tail call noundef i32 @_Z12countCouplediN3gmx8ArrayRefIiEERKNS_11ListOfListsI25AtomsAdjacencyListElementEE(i32 noundef %i.af, ptr nonnull %i.q, ptr nonnull %i.w, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.ah = tail call noundef i32 @_Z12countCouplediN3gmx8ArrayRefIiEERKNS_11ListOfListsI25AtomsAdjacencyListElementEE(i32 noundef %i.ad, ptr nonnull %i.q, ptr nonnull %i.w, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.ai = add nsw i32 %i.ah, %i.ag
  store i32 %i.ai, ptr %i.x, align 4, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.d, %.loopexit
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z27constructAtomsAdjacencyListiN3gmx8ArrayRefIKiEE(ptr dead_on_unwind noalias writable sret(%"class.gmx::ListOfLists") align 8 %0, i32 noundef %1, ptr %2, ptr %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 9 uses
  %5 = alloca %"class.std::vector.3", align 8     ; 13 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2000), align 8, !tbaa !19
  %i.b = add nsw i32 %i.a, 1
  %i.c = ptrtoint ptr %3 to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 2
  %i.g = sext i32 %i.b to i64                     ; 9 uses
  %i.h = sdiv i64 %i.f, %i.g                      ; 8 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp slt i32 %1, -1
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %i.k = add nsw i32 %1, 1                        ; 2 uses
  %i.l = zext nneg i32 %i.k to i64                ; 4 uses
  %.not.i.i.i.i = icmp ne i32 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #19 ; 24 uses
  store i32 0, ptr %i.n, align 4, !tbaa !16
  %i.o = getelementptr i8, ptr %i.n, i64 4        ; 4 uses
  %6 = add nsw i64 %i.l, -1                       ; 2 uses
  %i.p = icmp eq i64 %6, 0
  br i1 %i.p, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %6, 2     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !16
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.0.i.i.i.i.i.idx = phi i64 [ %.idx.i.i.i.i.i.i.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 6 uses
  %.0.i.i.i.i.i.ptr = getelementptr i8, ptr %i.o, i64 %.0.i.i.i.i.i.idx
  store i32 0, ptr %i.n, align 4, !tbaa !16
  %i.q = icmp sgt i32 %i.i, 0                     ; 2 uses
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %wide.trip.count = and i64 %i.h, 2147483647
  %i.r = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.s = icmp ult i64 %i.r, 3
  br i1 %i.s, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, 2147483644
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod108 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.t = mul nsw i64 %indvars.iv.epil, %i.g
  %i.u = getelementptr [4 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !16
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr [4 x i8], ptr %i.n, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 4      ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !16
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !16
  %i.ae = sext i32 %i.y to i64
  %i.af = getelementptr [4 x i8], ptr %i.n, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 4      ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !16
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !16
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !69

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.not13.i.i = icmp eq i64 %.0.i.i.i.i.i.idx, 0
  br i1 %.not13.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !16  ; 2 uses
  %i.ak = add nsw i64 %.0.i.i.i.i.i.idx, -4       ; 2 uses
  %i.al = lshr exact i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1
  %xtraiter109 = and i64 %i.am, 7                 ; 2 uses
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.sroa.03.09.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.08.i.i.i.prol = phi i32 [ %i.ao, %.lr.ph.i.i.i.prol ], [ %i.aj, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.an = load i32, ptr %.sroa.03.09.i.i.i.prol, align 4, !tbaa !16
  %i.ao = add nsw i32 %i.an, %.08.i.i.i.prol      ; 3 uses
  %i.ap = getelementptr i8, ptr %.sroa.03.09.i.i.i.prol, i64 4 ; 2 uses
  store i32 %i.ao, ptr %.sroa.03.09.i.i.i.prol, align 4, !tbaa !16
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter109
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !70

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.03.09.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi i32 [ %i.aj, %.lr.ph.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.prol ]
  %i.aq = icmp ult i64 %i.ak, 28
  br i1 %i.aq, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.sroa.03.09.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i ], [ %.sroa.03.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 10 uses
  %.08.i.i.i = phi i32 [ %i.bn, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.ar = load i32, ptr %.sroa.03.09.i.i.i, align 4, !tbaa !16
  %i.as = add nsw i32 %i.ar, %.08.i.i.i           ; 2 uses
  %i.at = getelementptr i8, ptr %.sroa.03.09.i.i.i, i64 4 ; 2 uses
  store i32 %i.as, ptr %.sroa.03.09.i.i.i, align 4, !tbaa !16
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16
  %i.av = add nsw i32 %i.au, %i.as                ; 2 uses
  %i.aw = getelementptr i8, ptr %.sroa.03.09.i.i.i, i64 8 ; 2 uses
  store i32 %i.av, ptr %i.at, align 4, !tbaa !16
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16
  %i.ay = add nsw i32 %i.ax, %i.av                ; 2 uses
  %i.az = getelementptr i8, ptr %.sroa.03.09.i.i.i, i64 12 ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !16
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16
  %i.bb = add nsw i32 %i.ba, %i.ay                ; 2 uses
  %i.bc = getelementptr i8, ptr %.sroa.03.09.i.i.i, i64 16 ; 2 uses
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !16
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = add nsw i32 %i.bd, %i.bb                ; 2 uses
  %i.bf = getelementptr i8, ptr %.sroa.03.09.i.i.i, i64 20 ; 2 uses
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !16
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !16
  %i.bh = add nsw i32 %i.bg, %i.be                ; 2 uses
  %i.bi = getelementptr i8, ptr %.sroa.03.09.i.i.i, i64 24 ; 2 uses
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !16
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !16
  %i.bk = add nsw i32 %i.bj, %i.bh                ; 2 uses
  %i.bl = getelementptr i8, ptr %.sroa.03.09.i.i.i, i64 28 ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !16
  %i.bn = add nsw i32 %i.bm, %i.bk                ; 2 uses
  %i.bo = getelementptr i8, ptr %.sroa.03.09.i.i.i, i64 32 ; 2 uses
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !16
  %.not.i.i.i.7 = icmp eq ptr %i.bo, %.0.i.i.i.i.i.ptr
  br i1 %.not.i.i.i.7, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !71

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bp = mul nsw i64 %indvars.iv, %i.g
  %i.bq = getelementptr [4 x i8], ptr %2, i64 %i.bp ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !16
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !16
  %i.bv = sext i32 %i.bs to i64
  %i.bw = getelementptr [4 x i8], ptr %i.n, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 4      ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !16
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !16
  %i.ca = sext i32 %i.bu to i64
  %i.cb = getelementptr [4 x i8], ptr %i.n, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 4      ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !16
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !16
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.cf = mul nsw i64 %indvars.iv.next, %i.g
  %i.cg = getelementptr [4 x i8], ptr %2, i64 %i.cf ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !16
  %i.cj = getelementptr i8, ptr %i.cg, i64 8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !16
  %i.cl = sext i32 %i.ci to i64
  %i.cm = getelementptr [4 x i8], ptr %i.n, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 4      ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !16
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !16
  %i.cq = sext i32 %i.ck to i64
  %i.cr = getelementptr [4 x i8], ptr %i.n, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 4      ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !16
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !16
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.cv = mul nsw i64 %indvars.iv.next.1, %i.g
  %i.cw = getelementptr [4 x i8], ptr %2, i64 %i.cv ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !16
  %i.cz = getelementptr i8, ptr %i.cw, i64 8
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !16
  %i.db = sext i32 %i.cy to i64
  %i.dc = getelementptr [4 x i8], ptr %i.n, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 4      ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !16
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !16
  %i.dg = sext i32 %i.da to i64
  %i.dh = getelementptr [4 x i8], ptr %i.n, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 4      ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !16
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !16
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.dl = mul nsw i64 %indvars.iv.next.2, %i.g
  %i.dm = getelementptr [4 x i8], ptr %2, i64 %i.dl ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !16
  %i.dp = getelementptr i8, ptr %i.dm, i64 8
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !16
  %i.dr = sext i32 %i.do to i64
  %i.ds = getelementptr [4 x i8], ptr %i.n, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 4      ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !16
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !16
  %i.dw = sext i32 %i.dq to i64
end_hunk_0
