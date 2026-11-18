Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linker_topo?download=true
inline.NumInlined: 226
inline.NumDeleted: 85
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8LightGBM8BruckMapC2Ei:bb.a
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11: ; preds = %bb.h
  %i.an = ashr exact i64 %i.al, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i12 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i.i12, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 2305843009213693951)
  %i.ar = select i1 %i.ap, i64 2305843009213693951, i64 %i.aq ; 3 uses
  %.not.i.i.i.i13 = icmp ne i64 %i.ar, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i13)
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #10
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.al ; 2 uses
  store i32 -1, ptr %i.au, align 4, !tbaa !19
  %i.av = icmp sgt i64 %i.al, 0
  br i1 %i.av, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14

bb.i:                                             ; preds = %.noexc18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.ai, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14: ; preds = %bb.i, %.noexc18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %.not.i17.i.i.i15 = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i.i15, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.az) #11
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14
  store ptr %i.at, ptr %i.b, align 8, !tbaa !20
  store ptr %i.aw, ptr %i.f, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar ; 2 uses
  store ptr %i.ba, ptr %i.g, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19

_ZNSt6vectorIiSaIiEE9push_backEOi.exit19:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16, %bb.g
  %i.bb = phi ptr [ %i.ba, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16 ], [ %i.af, %bb.g ]
  %i.bc = phi ptr [ %i.aw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16 ], [ %i.ah, %bb.g ]
  %i.bd = add nuw nsw i32 %.0727, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !28

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit21, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit21

_ZNSt6vectorIiSaIiEED2Ev.exit21:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.l
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM8BruckMap9ConstructEii(ptr dead_on_unwind noalias writable sret(%"class.LightGBM::BruckMap") align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %2, 1
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.b = phi i32 [ %i.r, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ 1, %bb.a ] ; 2 uses
  %.051 = phi i32 [ %i.q, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.13.050 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %bb.a ] ; 5 uses
  %.sroa.10.049 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %bb.a ] ; 3 uses
  %.sroa.0.048 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %bb.a ] ; 7 uses
  %.not.i.i = icmp eq ptr %.sroa.10.049, %.sroa.13.050
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i32 %i.b, ptr %.sroa.10.049, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.c:                                             ; preds = %.lr.ph
  %i.c = ptrtoint ptr %.sroa.13.050 to i64
  %i.d = ptrtoint ptr %.sroa.0.048 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 6 uses
  %i.f = icmp eq i64 %i.e, 9223372036854775804
  br i1 %i.f, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.g = ashr exact i64 %i.e, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 1)
  %i.h = add nsw i64 %.sroa.speculated.i.i.i.i, %i.g ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.g
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.h, i64 2305843009213693951)
  %i.k = select i1 %i.i, i64 2305843009213693951, i64 %i.j ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #10
          to label %.noexc27 unwind label %.loopexit ; 4 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.e ; 2 uses
  store i32 %i.b, ptr %i.n, align 4, !tbaa !19
  %i.o = icmp sgt i64 %i.e, 0
  br i1 %i.o, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %.noexc27
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %.sroa.0.048, i64 %i.e, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %.noexc27
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.048, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.048, i64 noundef %i.e) #11
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.k
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.b
  %.sroa.0.1 = phi ptr [ %i.m, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0.048, %bb.b ] ; 2 uses
  %.pn = phi ptr [ %i.n, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.10.049, %bb.b ]
  %.sroa.13.1 = phi ptr [ %i.p, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.13.050, %bb.b ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %i.q = add nuw nsw i32 %.051, 1                 ; 2 uses
  %i.r = shl nuw i32 2, %.051                     ; 2 uses
  %i.s = icmp slt i32 %i.r, %2
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 11 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.q, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  invoke void @_ZN8LightGBM8BruckMapC1Ei(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.0.lcssa)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %._crit_edge
  %.not = icmp eq i32 %.0.lcssa, 0
  br i1 %.not, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20   ; 7 uses
  %i.v = add i32 %2, %1                           ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20   ; 7 uses
  %wide.trip.count = zext i32 %.0.lcssa to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %.0.lcssa, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph55
  %i.y = shl nuw nsw i64 %wide.trip.count, 2      ; 3 uses
  %i.z = getelementptr i8, ptr %i.u, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.y    ; 2 uses
  %3 = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 %i.y ; 2 uses
  %bound0.a = icmp ult ptr %i.u, %i.aa
  %bound1 = icmp ult ptr %i.x, %i.z
  %found.conflict = and i1 %bound0.a, %bound1
  %bound082 = icmp ult ptr %i.u, %3
  %bound183 = icmp ult ptr %.sroa.0.0.lcssa, %i.z
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx = or i1 %found.conflict, %found.conflict84
  %bound085 = icmp ult ptr %i.x, %3
  %bound186 = icmp ult ptr %.sroa.0.0.lcssa, %i.aa
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx, %found.conflict87
  br i1 %conflict.rdx88, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert89 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat90 = shufflevector <4 x i32> %broadcast.splatinsert89, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat92 = shufflevector <4 x i32> %broadcast.splatinsert91, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %index
  %wide.load = load <4 x i32>, ptr %i.ab, align 4, !tbaa !19, !alias.scope !36 ; 2 uses
  %i.ac = add nsw <4 x i32> %wide.load, %broadcast.splat90
  %i.ad = srem <4 x i32> %i.ac, %broadcast.splat92
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index
  store <4 x i32> %i.ad, ptr %i.ae, align 4, !tbaa !19, !alias.scope !37, !noalias !38
  %i.af = sub <4 x i32> %broadcast.splat, %wide.load
  %i.ag = srem <4 x i32> %i.af, %broadcast.splat92
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index
  store <4 x i32> %i.ag, ptr %i.ah, align 4, !tbaa !19, !alias.scope !39, !noalias !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge56.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph55, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph55 ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv.ph ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !19
  %i.al = add nsw i32 %i.ak, %1
  %i.am = srem i32 %i.al, %2
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.ph
  store i32 %i.am, ptr %i.an, align 4, !tbaa !19
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !19
  %i.ap = sub i32 %i.v, %i.ao
  %i.aq = srem i32 %i.ap, %2
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.ph
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !19
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.as = add nsw i64 %wide.trip.count, -1
  %i.at = icmp eq i64 %indvars.iv.ph, %i.as
  br i1 %i.at, label %._crit_edge56.thread, label %scalar.ph

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.d
  %.sroa.0.047 = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %.sroa.0.048, %bb.d ]
  %.sroa.13.043 = phi ptr [ %.sroa.13.0.lcssa, %._crit_edge ], [ %.sroa.13.050, %bb.d ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.0.046 = phi ptr [ %.sroa.0.048, %.loopexit ], [ %.sroa.0.047, %.loopexit.split-lp ] ; 3 uses
  %.sroa.13.042 = phi ptr [ %.sroa.13.050, %.loopexit ], [ %.sroa.13.043, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i28 = icmp eq ptr %.sroa.0.046, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !19
  %i.aw = add nsw i32 %i.av, %1
  %i.ax = srem i32 %i.aw, %2
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !19
  %i.az = load i32, ptr %i.au, align 4, !tbaa !19
  %i.ba = sub i32 %i.v, %i.az
  %i.bb = srem i32 %i.ba, %2
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv.next ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !19
  %i.bf = add nsw i32 %i.be, %1
  %i.bg = srem i32 %i.bf, %2
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !19
  %i.bi = load i32, ptr %i.bd, align 4, !tbaa !19
  %i.bj = sub i32 %i.v, %i.bi
  %i.bk = srem i32 %i.bj, %2
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge56.thread, label %scalar.ph, !llvm.loop !35

._crit_edge56:                                    ; preds = %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %._crit_edge56.thread

._crit_edge56.thread:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge56
  %i.bm = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.bn = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.bo) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge56, %._crit_edge56.thread
  ret void

bb.h:                                             ; preds = %bb.g
  %i.bp = ptrtoint ptr %.sroa.13.042 to i64
  %i.bq = ptrtoint ptr %.sroa.0.046 to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.046, i64 noundef %i.br) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN8LightGBM19RecursiveHalvingMapC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(136) initializes((0, 4), (16, 136)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %0, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i8 0, i64 120, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM19RecursiveHalvingMapC2EiNS_24RecursiveHalvingNodeTypeEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) initializes((0, 9), (16, 136)) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.b, i8 0, i64 120, i1 false)
  store i32 %2, ptr %i.g, align 4, !tbaa !41
  store i32 %1, ptr %0, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %i.h, align 8, !tbaa !42
  %.not = icmp ne i32 %2, 2
  %i.i = icmp sgt i32 %1, 0
  %or.cond = and i1 %.not, %i.i
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50
  %.0874 = phi i32 [ 0, %.lr.ph ], [ %i.dz, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50 ]
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !17   ; 4 uses
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %i.t, align 4, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store ptr %i.v, ptr %i.j, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !20   ; 4 uses
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN8LightGBM19RecursiveHalvingMapC2EiNS_24RecursiveHalvingNodeTypeEb:bb.a
.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i32, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i22, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i12, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i42, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.ec = load ptr, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ed = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eg) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %i.eh = load ptr, ptr %i.e, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i51 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIiSaIiEED2Ev.exit52, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ei = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit52

_ZNSt6vectorIiSaIiEED2Ev.exit52:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.x
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIiSaIiEED2Ev.exit54, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit52
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  tail call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.eq) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit54

_ZNSt6vectorIiSaIiEED2Ev.exit54:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit52, %bb.y
  %i.er = load ptr, ptr %i.c, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIiSaIiEED2Ev.exit56, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit54
  %i.es = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = sub i64 %i.et, %i.eu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ev) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit56

_ZNSt6vectorIiSaIiEED2Ev.exit56:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit54, %bb.z
  %i.ew = load ptr, ptr %i.b, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i57 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIiSaIiEED2Ev.exit58, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit56
  %i.ex = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fa) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit58

_ZNSt6vectorIiSaIiEED2Ev.exit58:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit56, %bb.aa
  resume { ptr, i32 } %lpad.loopexit.split-lp

.loopexit:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM19RecursiveHalvingMap9ConstructEii(ptr dead_on_unwind noalias writable sret(%"class.LightGBM::RecursiveHalvingMap") align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.b ], [ -1, %bb.a ] ; 5 uses
  %.0131 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]  ; 5 uses
  %i.a = shl nuw i32 1, %.0131
  %.not = icmp sgt i32 %i.a, %2
  %i.b = add nuw nsw i32 %.0131, 1
  %indvars.iv.next = add nsw i32 %indvars.iv, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !43

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %.0131, -1                   ; 4 uses
  %i.d = icmp samesign ugt i32 %.0131, 1          ; 3 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.e = add nsw i32 %.0131, -2
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.c
  %.sroa.30.0.lcssa = phi ptr [ null, %bb.c ], [ %.sroa.30.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 6 uses
  %.sroa.0250.0.lcssa = phi ptr [ null, %bb.c ], [ %.sroa.0250.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 17 uses
  %i.f = shl nuw i32 1, %i.c                      ; 6 uses
  %i.g = icmp eq i32 %i.f, %2
  br i1 %i.g, label %bb.j, label %bb.k

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.0132304 = phi i32 [ 0, %.lr.ph ], [ %i.x, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.0250.0303 = phi ptr [ null, %.lr.ph ], [ %.sroa.0250.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %.sroa.27.0302 = phi ptr [ null, %.lr.ph ], [ %.sroa.27.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 6 uses
  %.sroa.30.0301 = phi ptr [ null, %.lr.ph ], [ %.sroa.30.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.h = sub nsw i32 %i.e, %.0132304
  %i.i = shl nuw i32 1, %i.h                      ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.27.0302, %.sroa.30.0301
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.i, ptr %.sroa.27.0302, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.f:                                             ; preds = %bb.d
  %i.j = ptrtoint ptr %.sroa.27.0302 to i64
  %i.k = ptrtoint ptr %.sroa.0250.0303 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 6 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775804
  br i1 %i.m, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.n = ashr exact i64 %i.l, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 2305843009213693951)
  %i.r = select i1 %i.p, i64 2305843009213693951, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #10
          to label %.noexc155 unwind label %.loopexit283 ; 4 uses

.noexc155:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store i32 %i.i, ptr %i.u, align 4, !tbaa !19
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc155
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.t, ptr align 4 %.sroa.0250.0303, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %.noexc155
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0250.0303, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0250.0303, i64 noundef %i.l) #11
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.e
  %.sroa.30.1 = phi ptr [ %i.w, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.30.0301, %bb.e ] ; 2 uses
  %.pn281 = phi ptr [ %i.u, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.27.0302, %bb.e ]
  %.sroa.0250.1 = phi ptr [ %i.t, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0250.0303, %bb.e ] ; 2 uses
  %.sroa.27.1 = getelementptr inbounds nuw i8, ptr %.pn281, i64 4
  %i.x = add nuw nsw i32 %.0132304, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !44

bb.j:                                             ; preds = %._crit_edge
  invoke void @_ZN8LightGBM19RecursiveHalvingMapC1EiNS_24RecursiveHalvingNodeTypeEb(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %i.c, i32 noundef 0, i1 noundef zeroext true)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.j
  br i1 %i.d, label %.lr.ph335, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit

.lr.ph335:                                        ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20 ; 8 uses
  %wide.trip.count380 = zext i32 %indvars.iv to i64 ; 4 uses
  %min.iters.check508 = icmp ult i32 %indvars.iv, 8
  br i1 %min.iters.check508, label %scalar.ph507.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph335
  %i.ai = shl nuw nsw i64 %wide.trip.count380, 2  ; 6 uses
  %3 = getelementptr i8, ptr %i.z, i64 %i.ai      ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ab, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.ad, i64 %i.ai  ; 5 uses
  %i.al = getelementptr i8, ptr %i.af, i64 %i.ai  ; 5 uses
  %i.am = getelementptr i8, ptr %i.ah, i64 %i.ai  ; 5 uses
  %i.an = getelementptr i8, ptr %.sroa.0250.0.lcssa, i64 %i.ai ; 5 uses
  %i.ao = insertelement <4 x ptr> poison, ptr %i.z, i64 0
  %i.ap = shufflevector <4 x ptr> %i.ao, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aq = insertelement <4 x ptr> poison, ptr %i.aj, i64 0 ; 2 uses
  %i.ar = insertelement <4 x ptr> %i.aq, ptr %i.ak, i64 1
  %i.as = insertelement <4 x ptr> %i.ar, ptr %i.al, i64 2
  %i.at = insertelement <4 x ptr> %i.as, ptr %i.am, i64 3
  %i.au = icmp ult <4 x ptr> %i.ap, %i.at
  %i.av = insertelement <4 x ptr> poison, ptr %i.ab, i64 0 ; 2 uses
  %i.aw = insertelement <4 x ptr> %i.av, ptr %i.ad, i64 1
  %i.ax = insertelement <4 x ptr> %i.aw, ptr %i.af, i64 2
  %i.ay = insertelement <4 x ptr> %i.ax, ptr %i.ah, i64 3
  %i.az = insertelement <4 x ptr> poison, ptr %3, i64 0
  %i.ba = shufflevector <4 x ptr> %i.az, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bb = icmp ult <4 x ptr> %i.ay, %i.ba
  %i.bc = and <4 x i1> %i.au, %i.bb
  %bound0520 = icmp ult ptr %i.z, %i.an
  %bound1521 = icmp ult ptr %.sroa.0250.0.lcssa, %3
  %found.conflict522 = and i1 %bound0520, %bound1521
  %i.bd = shufflevector <4 x ptr> %i.av, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = insertelement <4 x ptr> poison, ptr %i.ak, i64 0
  %i.bf = insertelement <4 x ptr> %i.be, ptr %i.al, i64 1
  %i.bg = insertelement <4 x ptr> %i.bf, ptr %i.am, i64 2
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %i.an, i64 3
  %i.bi = icmp ult <4 x ptr> %i.bd, %i.bh
  %i.bj = insertelement <4 x ptr> poison, ptr %i.ad, i64 0
  %i.bk = insertelement <4 x ptr> %i.bj, ptr %i.af, i64 1
  %i.bl = insertelement <4 x ptr> %i.bk, ptr %i.ah, i64 2
  %i.bm = insertelement <4 x ptr> %i.bl, ptr %.sroa.0250.0.lcssa, i64 3
  %i.bn = shufflevector <4 x ptr> %i.aq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bo = icmp ult <4 x ptr> %i.bm, %i.bn
  %i.bp = and <4 x i1> %i.bi, %i.bo
  %bound0540 = icmp ult ptr %i.ad, %i.al
  %bound1541 = icmp ult ptr %i.af, %i.ak
  %found.conflict542 = and i1 %bound0540, %bound1541
  %bound0544 = icmp ult ptr %i.ad, %i.am
  %bound1545 = icmp ult ptr %i.ah, %i.ak
  %found.conflict546 = and i1 %bound0544, %bound1545
  %bound0548 = icmp ult ptr %i.ad, %i.an
  %bound1549 = icmp ult ptr %.sroa.0250.0.lcssa, %i.ak
  %found.conflict550 = and i1 %bound0548, %bound1549
  %bound0552 = icmp ult ptr %i.af, %i.am
  %bound1553 = icmp ult ptr %i.ah, %i.al
  %found.conflict554 = and i1 %bound0552, %bound1553
  %bound0556 = icmp ult ptr %i.af, %i.an
  %bound1557 = icmp ult ptr %.sroa.0250.0.lcssa, %i.al
  %found.conflict558 = and i1 %bound0556, %bound1557
  %bound0560 = icmp ult ptr %i.ah, %i.an
  %bound1561 = icmp ult ptr %.sroa.0250.0.lcssa, %i.am
  %found.conflict562 = and i1 %bound0560, %bound1561
  %rdx.op = or <4 x i1> %i.bc, %i.bp
  %i.bq = bitcast <4 x i1> %rdx.op to i4
  %i.br = icmp ne i4 %i.bq, 0
  %op.rdx = or i1 %i.br, %found.conflict522
  %op.rdx576 = or i1 %found.conflict542, %found.conflict546
  %op.rdx577 = or i1 %found.conflict550, %found.conflict554
  %op.rdx578 = or i1 %found.conflict558, %found.conflict562
  %op.rdx579 = or i1 %op.rdx, %op.rdx576
  %op.rdx580 = or i1 %op.rdx577, %op.rdx578
  %op.rdx581 = or i1 %op.rdx579, %op.rdx580
  br i1 %op.rdx581, label %scalar.ph507.preheader, label %vector.ph564

vector.ph564:                                     ; preds = %vector.memcheck
  %n.vec565 = and i64 %wide.trip.count380, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body566

vector.body566:                                   ; preds = %vector.body566, %vector.ph564
  %index567 = phi i64 [ 0, %vector.ph564 ], [ %index.next572, %vector.body566 ] ; 7 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0250.0.lcssa, i64 %index567 ; 3 uses
  %wide.load568 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !19, !alias.scope !64 ; 3 uses
  %i.bt = sdiv <4 x i32> %broadcast.splat, %wide.load568
  %i.bu = and <4 x i32> %i.bt, splat (i32 1)
  %i.bv = icmp eq <4 x i32> %i.bu, zeroinitializer
  %i.bw = sub nsw <4 x i32> zeroinitializer, %wide.load568
  %i.bx = select <4 x i1> %i.bv, <4 x i32> %wide.load568, <4 x i32> %i.bw
  %i.by = freeze <4 x i32> %i.bx
  %i.bz = add <4 x i32> %i.by, %broadcast.splat   ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index567
  store <4 x i32> %i.bz, ptr %i.ca, align 4, !tbaa !19, !alias.scope !65, !noalias !66
  %wide.load569 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !19, !alias.scope !64 ; 3 uses
  %i.cb = srem <4 x i32> %broadcast.splat, %wide.load569
  %i.cc = sub nsw <4 x i32> %broadcast.splat, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index567
  store <4 x i32> %i.cc, ptr %i.cd, align 4, !tbaa !19, !alias.scope !67, !noalias !68
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index567
  store <4 x i32> %wide.load569, ptr %i.ce, align 4, !tbaa !19, !alias.scope !69, !noalias !70
  %i.cf = srem <4 x i32> %i.bz, %wide.load569
  %i.cg = sub nsw <4 x i32> %i.bz, %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index567
  store <4 x i32> %i.cg, ptr %i.ch, align 4, !tbaa !19, !alias.scope !71, !noalias !72
  %wide.load571 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !19, !alias.scope !64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index567
  store <4 x i32> %wide.load571, ptr %i.ci, align 4, !tbaa !19, !alias.scope !73, !noalias !64
  %index.next572 = add nuw i64 %index567, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next572, %n.vec565
  br i1 %i.cj, label %middle.block573, label %vector.body566, !llvm.loop !52

middle.block573:                                  ; preds = %vector.body566
  %cmp.n574 = icmp eq i64 %n.vec565, %wide.trip.count380
  br i1 %cmp.n574, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread, label %scalar.ph507.preheader

scalar.ph507.preheader:                           ; preds = %vector.memcheck, %.lr.ph335, %middle.block573
  %indvars.iv376.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph335 ], [ %n.vec565, %middle.block573 ]
  br label %scalar.ph507

scalar.ph507:                                     ; preds = %scalar.ph507.preheader, %scalar.ph507
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %scalar.ph507 ], [ %indvars.iv376.ph, %scalar.ph507.preheader ] ; 7 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0250.0.lcssa, i64 %indvars.iv376 ; 4 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !19 ; 3 uses
  %i.cm = sdiv i32 %1, %i.cl
  %i.cn = and i32 %i.cm, 1
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = sub nsw i32 0, %i.cl
  %i.cq = select i1 %i.co, i32 %i.cl, i32 %i.cp
  %.fr280 = freeze i32 %i.cq
  %i.cr = add i32 %.fr280, %1                     ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv376
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !19
  %i.ct = load i32, ptr %i.ck, align 4, !tbaa !19
  %i.cu = srem i32 %1, %i.ct
  %i.cv = sub nsw i32 %1, %i.cu
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv376
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !19
  %i.cx = load i32, ptr %i.ck, align 4, !tbaa !19 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv376
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !19
  %i.cz = srem i32 %i.cr, %i.cx
  %i.da = sub nsw i32 %i.cr, %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv376
  store i32 %i.da, ptr %i.db, align 4, !tbaa !19
  %i.dc = load i32, ptr %i.ck, align 4, !tbaa !19
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv376
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !19
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond381.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count380
  br i1 %exitcond381.not, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread, label %scalar.ph507, !llvm.loop !53

bb.k:                                             ; preds = %._crit_edge
  %i.de = sub i32 %2, %i.f                        ; 3 uses
  %i.df = sext i32 %2 to i64                      ; 8 uses
  %i.dg = icmp slt i32 %2, 0
  br i1 %i.dg, label %bb.l, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc157 unwind label %.loopexit.split-lp

.noexc157:                                        ; preds = %bb.l
  unreachable

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.k
  %.not.i.i.i.i156 = icmp eq i32 %2, 0            ; 2 uses
  br i1 %.not.i.i.i.i156, label %.preheader282, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.dh = shl nuw nsw i64 %i.df, 2
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #10
          to label %.noexc158 unwind label %.loopexit.split-lp ; 5 uses

.noexc158:                                        ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.df
  store i32 0, ptr %i.di, align 4, !tbaa !74
  %i.dk = add nsw i64 %i.df, -1                   ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %.lr.ph307.preheader, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc158
  %i.dm = getelementptr i8, ptr %i.di, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.dk, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dm, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !74
  br label %.lr.ph307.preheader

.lr.ph307.preheader:                              ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %.noexc158
  %i.dn = zext nneg i32 %2 to i64
  %i.do = shl nuw nsw i64 %i.dn, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.di, i8 0, i64 %i.do, i1 false), !tbaa !74
  %i.dp = ptrtoint ptr %i.dj to i64
  br label %.preheader282

.preheader282:                                    ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.lr.ph307.preheader
  %.sroa.0237.0398 = phi ptr [ %i.di, %.lr.ph307.preheader ], [ null, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 10 uses
  %.sroa.17.0396 = phi i64 [ %i.dp, %.lr.ph307.preheader ], [ 0, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %i.dq = icmp sgt i32 %i.de, 0
  br i1 %i.dq, label %.lr.ph309.preheader, label %._crit_edge310

.lr.ph309.preheader:                              ; preds = %.preheader282
  %wide.trip.count = zext nneg i32 %i.de to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.de, 4
  br i1 %min.iters.check, label %.lr.ph309.preheader587, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph309.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dr = shl nuw nsw i64 %index, 1
  %i.ds = sub nsw i64 %i.df, %i.dr
  %i.dt = getelementptr [4 x i8], ptr %.sroa.0237.0398, i64 %i.ds ; 2 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 -16
  %i.dv = getelementptr i8, ptr %i.dt, i64 -32
  store <4 x i32> <i32 1, i32 2, i32 1, i32 2>, ptr %i.du, align 4, !tbaa !74
  store <4 x i32> <i32 1, i32 2, i32 1, i32 2>, ptr %i.dv, align 4, !tbaa !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge310, label %.lr.ph309.preheader587

.lr.ph309.preheader587:                           ; preds = %.lr.ph309.preheader, %middle.block
  %indvars.iv346.ph = phi i64 [ 0, %.lr.ph309.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph309

.loopexit283:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

.loopexit.split-lp:                               ; preds = %bb.l, %bb.m, %bb.g, %bb.j
  %.sroa.30.0297 = phi ptr [ %.sroa.30.0.lcssa, %bb.l ], [ %.sroa.30.0.lcssa, %bb.m ], [ %.sroa.27.0302, %bb.g ], [ %.sroa.30.0.lcssa, %bb.j ]
  %.sroa.0250.0289 = phi ptr [ %.sroa.0250.0.lcssa, %bb.l ], [ %.sroa.0250.0.lcssa, %bb.m ], [ %.sroa.0250.0303, %bb.g ], [ %.sroa.0250.0.lcssa, %bb.j ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

._crit_edge310:                                   ; preds = %.lr.ph309, %middle.block, %.preheader282
  %i.dx = sext i32 %i.f to i64                    ; 2 uses
  %i.dy = icmp eq i32 %i.c, 31
  br i1 %i.dy, label %bb.n, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.n:                                             ; preds = %._crit_edge310
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc162 unwind label %bb.p

.noexc162:                                        ; preds = %bb.n
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge310
  %i.dz = shl nuw nsw i64 %i.dx, 2                ; 10 uses
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #10
          to label %.noexc163 unwind label %bb.p  ; 12 uses

.noexc163:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  store i32 0, ptr %i.ea, align 4, !tbaa !19
  %i.eb = add nsw i64 %i.dx, -1                   ; 3 uses
end_hunk_1
