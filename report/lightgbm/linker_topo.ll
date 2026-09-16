Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linker_topo?download=true
inline.NumInlined: 226
inline.NumDeleted: 85
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8LightGBM8BruckMapC2Ei:bb.a
bb.k:                                             ; preds = %.noexc18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.ai, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14: ; preds = %bb.k, %.noexc18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %.not.i17.i.i.i15 = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i.i15, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.az) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14
  store ptr %i.at, ptr %i.b, align 8, !tbaa !20
  store ptr %i.aw, ptr %i.f, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar ; 2 uses
  store ptr %i.ba, ptr %i.g, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit19

_ZNSt6vectorIiSaIiEE9push_backEOi.exit19:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16, %bb.h
  %i.bb = phi ptr [ %i.ba, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16 ], [ %i.af, %bb.h ]
  %i.bc = phi ptr [ %i.aw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16 ], [ %i.ah, %bb.h ]
  %i.bd = add nuw nsw i32 %.0733, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !28

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit25:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11
  %lpad.loopexit27 = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp26:                             ; preds = %bb.j
  %lpad.loopexit.split-lp28 = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit25, %.loopexit.split-lp26, %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit27, %.loopexit25 ], [ %lpad.loopexit.split-lp28, %.loopexit.split-lp26 ]
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.m, %bb.n
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit21

_ZNSt6vectorIiSaIiEED2Ev.exit21:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.o
  resume { ptr, i32 } %.pn
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
  %.052 = phi i32 [ %i.q, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.13.051 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %bb.a ] ; 5 uses
  %.sroa.10.050 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %bb.a ] ; 3 uses
  %.sroa.0.049 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %bb.a ] ; 7 uses
  %.not.i.i = icmp eq ptr %.sroa.10.050, %.sroa.13.051
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i32 %i.b, ptr %.sroa.10.050, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.c:                                             ; preds = %.lr.ph
  %i.c = ptrtoint ptr %.sroa.13.051 to i64
  %i.d = ptrtoint ptr %.sroa.0.049 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 6 uses
  %i.f = icmp eq i64 %i.e, 9223372036854775804
  br i1 %i.f, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
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
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #11
          to label %.noexc27 unwind label %.loopexit ; 4 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.e ; 2 uses
  store i32 %i.b, ptr %i.n, align 4, !tbaa !19
  %i.o = icmp sgt i64 %i.e, 0
  br i1 %i.o, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %.noexc27
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %.sroa.0.049, i64 %i.e, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %.noexc27
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.049, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.049, i64 noundef %i.e) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.k
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.b
  %.sroa.0.1 = phi ptr [ %i.m, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0.049, %bb.b ] ; 2 uses
  %.pn38 = phi ptr [ %i.n, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.10.050, %bb.b ]
  %.sroa.13.1 = phi ptr [ %i.p, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.13.051, %bb.b ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn38, i64 4
  %i.q = add nuw nsw i32 %.052, 1                 ; 2 uses
  %i.r = shl nuw i32 2, %.052                     ; 2 uses
  %i.s = icmp slt i32 %i.r, %2
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !29

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 11 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.q, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  invoke void @_ZN8LightGBM8BruckMapC1Ei(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.0.lcssa)
          to label %.preheader unwind label %bb.g

.preheader:                                       ; preds = %._crit_edge
  %.not = icmp eq i32 %.0.lcssa, 0
  br i1 %.not, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20   ; 7 uses
  %i.v = add i32 %2, %1                           ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20   ; 7 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.0.lcssa, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 6 uses
  %min.iters.check = icmp slt i32 %.0.lcssa, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph56
  %i.y = shl nuw nsw i64 %wide.trip.count, 2      ; 3 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.y ; 2 uses
  %scevgep74 = getelementptr i8, ptr %i.x, i64 %i.y ; 2 uses
  %scevgep75 = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 %i.y ; 2 uses
  %bound0 = icmp ult ptr %i.u, %scevgep74
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound076 = icmp ult ptr %i.u, %scevgep75
  %bound177 = icmp ult ptr %.sroa.0.0.lcssa, %scevgep
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx = or i1 %found.conflict, %found.conflict78
  %bound079 = icmp ult ptr %i.x, %scevgep75
  %bound180 = icmp ult ptr %.sroa.0.0.lcssa, %scevgep74
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx82 = or i1 %conflict.rdx, %found.conflict81
  br i1 %conflict.rdx82, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert83 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat84 = shufflevector <4 x i32> %broadcast.splatinsert83, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert85 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat86 = shufflevector <4 x i32> %broadcast.splatinsert85, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %index
  %wide.load = load <4 x i32>, ptr %i.z, align 4, !tbaa !19, !alias.scope !36 ; 2 uses
  %i.aa = add nsw <4 x i32> %wide.load, %broadcast.splat84
  %i.ab = srem <4 x i32> %i.aa, %broadcast.splat86
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index
  store <4 x i32> %i.ab, ptr %i.ac, align 4, !tbaa !19, !alias.scope !37, !noalias !38
  %i.ad = sub <4 x i32> %broadcast.splat, %wide.load
  %i.ae = srem <4 x i32> %i.ad, %broadcast.splat86
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index
  store <4 x i32> %i.ae, ptr %i.af, align 4, !tbaa !19, !alias.scope !39, !noalias !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge57.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph56, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph56 ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv.ph ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !19
  %i.aj = add nsw i32 %i.ai, %1
  %i.ak = srem i32 %i.aj, %2
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.ph
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !19
  %i.am = load i32, ptr %i.ah, align 4, !tbaa !19
  %i.an = sub i32 %i.v, %i.am
  %i.ao = srem i32 %i.an, %2
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.ph
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !19
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aq = add nsw i64 %wide.trip.count, -1
  %i.ar = icmp eq i64 %indvars.iv.ph, %i.aq
  br i1 %i.ar, label %._crit_edge57.thread, label %scalar.ph

bb.g:                                             ; preds = %._crit_edge
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !19
  %i.av = add nsw i32 %i.au, %1
  %i.aw = srem i32 %i.av, %2
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !19
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !19
  %i.az = sub i32 %i.v, %i.ay
  %i.ba = srem i32 %i.az, %2
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv.next ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !19
  %i.be = add nsw i32 %i.bd, %1
  %i.bf = srem i32 %i.be, %2
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !19
  %i.bh = load i32, ptr %i.bc, align 4, !tbaa !19
  %i.bi = sub i32 %i.v, %i.bh
  %i.bj = srem i32 %i.bi, %2
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge57.thread, label %scalar.ph, !llvm.loop !35

._crit_edge57:                                    ; preds = %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %._crit_edge57.thread

._crit_edge57.thread:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge57
  %i.bl = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.bm = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.bn) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge57, %._crit_edge57.thread
  ret void

bb.h:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %.sroa.0.047 = phi ptr [ %.sroa.0.0.lcssa, %bb.g ], [ %.sroa.0.049, %.loopexit ], [ %.sroa.0.049, %.loopexit.split-lp ] ; 3 uses
  %.sroa.13.043 = phi ptr [ %.sroa.13.0.lcssa, %bb.g ], [ %.sroa.13.051, %.loopexit ], [ %.sroa.13.051, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.as, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i28 = icmp eq ptr %.sroa.0.047, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = ptrtoint ptr %.sroa.13.043 to i64
  %i.bp = ptrtoint ptr %.sroa.0.047 to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.047, i64 noundef %i.bq) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn
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
  %.0898 = phi i32 [ 0, %.lr.ph ], [ %i.dz, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50 ]
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
  %i.aa = icmp eq i64 %i.z, 9223372036854775804
  br i1 %i.aa, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ab = ashr exact i64 %i.z, 2                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 2305843009213693951)
  %i.af = select i1 %i.ad, i64 2305843009213693951, i64 %i.ae ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
end_hunk_0
begin_hunk_1_@_ZN8LightGBM19RecursiveHalvingMap9ConstructEii:bb.a
  br i1 %cmp.n443, label %._crit_edge321, label %scalar.ph430.preheader

scalar.ph430.preheader:                           ; preds = %.lr.ph320, %middle.block441
  %indvars.iv359.ph = phi i64 [ 0, %.lr.ph320 ], [ %n.vec433, %middle.block441 ]
  %.0125317.ph = phi i32 [ 0, %.lr.ph320 ], [ %i.il, %middle.block441 ]
  br label %scalar.ph430

._crit_edge321:                                   ; preds = %scalar.ph430, %middle.block441, %bb.ad
  %.0125.lcssa = phi i32 [ 0, %bb.ad ], [ %i.il, %middle.block441 ], [ %i.ji, %scalar.ph430 ]
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv369
  store i32 %.0125.lcssa, ptr %i.im, align 4, !tbaa !19
  %i.in = load i32, ptr %i.hi, align 4, !tbaa !19 ; 3 uses
  %i.io = mul nsw i32 %i.in, %i.hn
  %i.ip = add nsw i32 %i.io, %i.gx
  %i.iq = sdiv i32 %i.ip, %i.in                   ; 2 uses
  %i.ir = sext i32 %i.iq to i64
  %i.is = sext i32 %i.in to i64
  %i.it = mul nsw i64 %i.ir, %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !19
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv369
  store i32 %i.iv, ptr %i.iw, align 4, !tbaa !19
  %i.ix = load i32, ptr %i.hi, align 4, !tbaa !19 ; 4 uses
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %.lr.ph326, label %._crit_edge327

.lr.ph326:                                        ; preds = %._crit_edge321
  %i.iz = mul nsw i32 %i.ix, %i.iq
  %i.ja = sext i32 %i.iz to i64
  %wide.trip.count367 = zext nneg i32 %i.ix to i64 ; 3 uses
  %invariant.gep411 = getelementptr [4 x i8], ptr %i.eg, i64 %i.ja ; 2 uses
  %min.iters.check419 = icmp ult i32 %i.ix, 8
  br i1 %min.iters.check419, label %scalar.ph418.preheader, label %vector.ph420

vector.ph420:                                     ; preds = %.lr.ph326
  %n.vec421 = and i64 %wide.trip.count367, 2147483640 ; 3 uses
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph420
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next426, %vector.body422 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph420 ], [ %i.jd, %vector.body422 ]
  %vec.phi424 = phi <4 x i32> [ zeroinitializer, %vector.ph420 ], [ %i.je, %vector.body422 ]
  %i.jb = getelementptr [4 x i8], ptr %invariant.gep411, i64 %index423 ; 2 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 16
  %wide.load = load <4 x i32>, ptr %i.jb, align 4, !tbaa !19
  %wide.load425 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !19
  %i.jd = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.je = add <4 x i32> %wide.load425, %vec.phi424 ; 2 uses
  %index.next426 = add nuw i64 %index423, 8       ; 2 uses
  %i.jf = icmp eq i64 %index.next426, %n.vec421
  br i1 %i.jf, label %middle.block427, label %vector.body422, !llvm.loop !60

middle.block427:                                  ; preds = %vector.body422
  %bin.rdx = add <4 x i32> %i.je, %i.jd
  %i.jg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n428 = icmp eq i64 %n.vec421, %wide.trip.count367
  br i1 %cmp.n428, label %._crit_edge327, label %scalar.ph418.preheader

scalar.ph418.preheader:                           ; preds = %.lr.ph326, %middle.block427
  %indvars.iv364.ph = phi i64 [ 0, %.lr.ph326 ], [ %n.vec421, %middle.block427 ]
  %.0123323.ph = phi i32 [ 0, %.lr.ph326 ], [ %i.jg, %middle.block427 ]
  br label %scalar.ph418

scalar.ph430:                                     ; preds = %scalar.ph430.preheader, %scalar.ph430
  %indvars.iv359 = phi i64 [ %indvars.iv.next360, %scalar.ph430 ], [ %indvars.iv359.ph, %scalar.ph430.preheader ] ; 2 uses
  %.0125317 = phi i32 [ %i.ji, %scalar.ph430 ], [ %.0125317.ph, %scalar.ph430.preheader ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv359
  %i.jh = load i32, ptr %gep, align 4, !tbaa !19
  %i.ji = add nsw i32 %i.jh, %.0125317            ; 2 uses
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %wide.trip.count362
  br i1 %exitcond363.not, label %._crit_edge321, label %scalar.ph430, !llvm.loop !61

._crit_edge327:                                   ; preds = %scalar.ph418, %middle.block427, %._crit_edge321
  %.0123.lcssa = phi i32 [ 0, %._crit_edge321 ], [ %i.jg, %middle.block427 ], [ %i.jl, %scalar.ph418 ]
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv369
  store i32 %.0123.lcssa, ptr %i.jj, align 4, !tbaa !19
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond374.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count373
  br i1 %exitcond374.not, label %.loopexit, label %bb.ad, !llvm.loop !62

scalar.ph418:                                     ; preds = %scalar.ph418.preheader, %scalar.ph418
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %scalar.ph418 ], [ %indvars.iv364.ph, %scalar.ph418.preheader ] ; 2 uses
  %.0123323 = phi i32 [ %i.jl, %scalar.ph418 ], [ %.0123323.ph, %scalar.ph418.preheader ]
  %gep412 = getelementptr [4 x i8], ptr %invariant.gep411, i64 %indvars.iv364
  %i.jk = load i32, ptr %gep412, align 4, !tbaa !19
  %i.jl = add nsw i32 %i.jk, %.0123323            ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %wide.trip.count367
  br i1 %exitcond368.not, label %._crit_edge327, label %scalar.ph418, !llvm.loop !63

.loopexit:                                        ; preds = %._crit_edge327, %bb.y
  %.not.i.i.i184 = icmp eq ptr %.sroa.0205.0401, null
  br i1 %.not.i.i.i184, label %_ZNSt6vectorIiSaIiEED2Ev.exit191, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.ac, %.loopexit
  %i.jm = ptrtoint ptr %.sroa.0205.0401 to i64
  %i.jn = sub i64 %.sroa.11.0403, %i.jm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0205.0401, i64 noundef %i.jn) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit191

_ZNSt6vectorIiSaIiEED2Ev.exit191:                 ; preds = %.loopexit, %.loopexit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.dw) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.dw) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.dw) #12
  %.not.i.i.i192 = icmp eq ptr %.sroa.0237.0397, null
  br i1 %.not.i.i.i192, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit191
  %i.jo = ptrtoint ptr %.sroa.0237.0397 to i64
  %i.jp = sub i64 %.sroa.17.0395, %i.jo
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.0397, i64 noundef %i.jp) #12
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit194:                 ; preds = %bb.aa, %bb.z, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ex, %bb.u ], [ %i.gr, %bb.z ], [ %i.gr, %bb.aa ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.dw) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit196

_ZNSt6vectorIiSaIiEED2Ev.exit196:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit194, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit194 ], [ %i.ew, %bb.t ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.dw) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit198

_ZNSt6vectorIiSaIiEED2Ev.exit198:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit196, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit196 ], [ %i.ev, %bb.s ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.dw) #12
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit198, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit198 ], [ %i.eu, %bb.r ] ; 2 uses
  %.not.i.i.i199 = icmp eq ptr %.sroa.0237.0397, null
  br i1 %.not.i.i.i199, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jq = ptrtoint ptr %.sroa.0237.0397 to i64
  %i.jr = sub i64 %.sroa.17.0395, %i.jq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.0397, i64 noundef %i.jr) #12
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit: ; preds = %.preheader, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit191
  %.not.i.i.i201 = icmp eq ptr %.sroa.0250.0.lcssa, null
  br i1 %.not.i.i.i201, label %_ZNSt6vectorIiSaIiEED2Ev.exit202, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread: ; preds = %scalar.ph506, %middle.block517, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit
  %i.js = ptrtoint ptr %.sroa.30.0.lcssa to i64
  %i.jt = ptrtoint ptr %.sroa.0250.0.lcssa to i64
  %i.ju = sub i64 %i.js, %i.jt
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0250.0.lcssa, i64 noundef %i.ju) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit202

_ZNSt6vectorIiSaIiEED2Ev.exit202:                 ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread
  ret void

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200: ; preds = %.loopexit283, %.loopexit.split-lp, %bb.o, %bb.af, %bb.ag, %bb.k
  %.sroa.30.0294 = phi ptr [ %.sroa.30.0.lcssa, %bb.ag ], [ %.sroa.30.0.lcssa, %bb.k ], [ %.sroa.30.0.lcssa, %bb.o ], [ %.sroa.30.0.lcssa, %bb.af ], [ %.sroa.27.0300, %.loopexit283 ], [ %.sroa.27.0300, %.loopexit.split-lp ]
  %.sroa.0250.0287 = phi ptr [ %.sroa.0250.0.lcssa, %bb.ag ], [ %.sroa.0250.0.lcssa, %bb.k ], [ %.sroa.0250.0.lcssa, %bb.o ], [ %.sroa.0250.0.lcssa, %bb.af ], [ %.sroa.0250.0301, %.loopexit283 ], [ %.sroa.0250.0301, %.loopexit.split-lp ] ; 3 uses
  %.pn153 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ag ], [ %i.cf, %bb.k ], [ %i.dt, %bb.o ], [ %.pn.pn.pn.pn, %bb.af ], [ %lpad.loopexit, %.loopexit283 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i203 = icmp eq ptr %.sroa.0250.0287, null
  br i1 %.not.i.i.i203, label %_ZNSt6vectorIiSaIiEED2Ev.exit204, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200
  %i.jv = ptrtoint ptr %.sroa.30.0294 to i64
  %i.jw = ptrtoint ptr %.sroa.0250.0287 to i64
  %i.jx = sub i64 %i.jv, %i.jw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0250.0287, i64 noundef %i.jx) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit204

_ZNSt6vectorIiSaIiEED2Ev.exit204:                 ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200, %bb.ah
  resume { ptr, i32 } %.pn153
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #6 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !11, i64 0}
!13 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !12, i64 0}
!14 = !{!"_ZTSSt6vectorIiSaIiEE", !13, i64 0}
!15 = !{!"_ZTSN8LightGBM8BruckMapE", !6, i64 0, !14, i64 8, !14, i64 32}
!16 = !{!15, !6, i64 0}
!17 = !{!11, !10, i64 8}
!18 = !{!11, !10, i64 16}
!19 = !{!6, !6, i64 0}
!20 = !{!11, !10, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"_ZTSN8LightGBM24RecursiveHalvingNodeTypeE", !5, i64 0}
!25 = !{!"bool", !5, i64 0}
!26 = !{!"_ZTSN8LightGBM19RecursiveHalvingMapE", !6, i64 0, !24, i64 4, !25, i64 8, !6, i64 12, !14, i64 16, !14, i64 40, !14, i64 64, !14, i64 88, !14, i64 112}
!27 = !{!26, !6, i64 0}
!28 = distinct !{!28, !21}
!29 = distinct !{!29, !21}
!30 = distinct !{!30, !"LVerDomain"}
!31 = distinct !{!31, !30}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !30}
!34 = distinct !{!34, !21, !22, !23}
!35 = distinct !{!35, !21, !22}
!36 = !{!31}
!37 = !{!32}
!38 = !{!33, !31}
!39 = !{!33}
!40 = distinct !{!40, !21}
!41 = !{!26, !24, i64 4}
!42 = !{!26, !25, i64 8}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21}
!45 = distinct !{!45, !"LVerDomain"}
!46 = distinct !{!46, !45}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !45}
!49 = distinct !{!49, !45}
!50 = distinct !{!50, !45}
!51 = distinct !{!51, !45}
!52 = distinct !{!52, !21, !22, !23}
!53 = distinct !{!53, !21, !22}
!54 = distinct !{!54, !21, !22, !23}
!55 = distinct !{!55, !21, !23, !22}
!56 = distinct !{!56, !21}
!57 = distinct !{!57, !75}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21, !22, !23}
!60 = distinct !{!60, !21, !22, !23}
!61 = distinct !{!61, !21, !23, !22}
!62 = distinct !{!62, !21}
!63 = distinct !{!63, !21, !23, !22}
!64 = !{!46}
!65 = !{!47}
!66 = !{!51, !50, !49, !48, !46}
!67 = !{!51}
!68 = !{!50, !49, !48, !46}
!69 = !{!50}
!70 = !{!49, !48, !46}
!71 = !{!49}
!72 = !{!48, !46}
!73 = !{!48}
!74 = !{!24, !24, i64 0}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!26, !6, i64 12}
end_hunk_1
