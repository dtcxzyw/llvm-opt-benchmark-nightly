Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3ConvexUtility?download=true
inline.NumInlined: 499
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN15b3ConvexUtility10initializeEv:bb.a
  %i.hc = load <2 x float>, ptr %i.gm, align 16, !tbaa !45 ; 2 uses
  %i.hd = fmul float %i.ha, %i.gu
  %i.he = fsub <2 x float> %i.gy, %i.hc           ; 3 uses
  %i.hf = fneg <2 x float> %i.he                  ; 2 uses
  %i.hg = extractelement <2 x float> %i.hf, i64 1
  %i.hh = fmul float %i.gq, %i.hg
  %i.hi = call float @llvm.fmuladd.f32(float %i.hb, float %i.gt, float %i.hh) ; 2 uses
  %i.hj = extractelement <2 x float> %i.he, i64 0
  %i.hk = call float @llvm.fmuladd.f32(float %i.gq, float %i.hj, float %i.hd) ; 2 uses
  %i.hl = extractelement <2 x float> %i.hf, i64 0
  %i.hm = fmul float %i.hb, %i.hl
  %i.hn = extractelement <2 x float> %i.he, i64 1
  %i.ho = call float @llvm.fmuladd.f32(float %i.ha, float %i.hn, float %i.hm) ; 2 uses
  %i.hp = fmul float %i.hk, %i.hk
  %i.hq = call float @llvm.fmuladd.f32(float %i.hi, float %i.hi, float %i.hp)
  %i.hr = call noundef float @llvm.fmuladd.f32(float %i.ho, float %i.ho, float %i.hq)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.hr)
  %i.hs = fmul float %sqrt.i, 5.000000e-01        ; 3 uses
  %i.ht = fadd <2 x float> %i.gy, %i.gz
  %i.hu = fadd <2 x float> %i.ht, %i.hc
  %i.hv = fmul <2 x float> %i.hu, splat (float f0x3EAAAAAB)
  %i.hw = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.hx = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hy = fmul <2 x float> %i.hv, %i.hx
  %i.hz = fmul float %i.gx, %i.hs
  %i.ia = fadd <2 x float> %i.gd, %i.hy           ; 2 uses
  store <2 x float> %i.ia, ptr %i.q, align 16, !tbaa !45
  %i.ib = fadd float %i.gc, %i.hz                 ; 2 uses
  store float %i.ib, ptr %i.r, align 8, !tbaa !45
  %i.ic = fadd float %.1186, %i.hs                ; 2 uses
  %exitcond211.not = icmp eq i64 %indvars.iv.next208, %wide.trip.count210
  br i1 %exitcond211.not, label %._crit_edge190, label %bb.x, !llvm.loop !156

._crit_edge194:                                   ; preds = %._crit_edge190, %bb.a, %.preheader
  %.0167.lcssa = phi float [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %bb.a ], [ %.1.lcssa, %._crit_edge190 ]
  %i.id = fdiv float 1.000000e+00, %.0167.lcssa   ; 2 uses
  %i.ie = load <2 x float>, ptr %i.q, align 16, !tbaa !45
  %i.if = insertelement <2 x float> poison, float %i.id, i64 0
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ih = fmul <2 x float> %i.ig, %i.ie
  store <2 x float> %i.ih, ptr %i.q, align 16, !tbaa !45
  %i.ii = load float, ptr %i.r, align 8, !tbaa !45
  %i.ij = fmul float %i.id, %i.ii
  store float %i.ij, ptr %i.r, align 8, !tbaa !45
  call void @_ZN9b3HashMapI20b3InternalVertexPair14b3InternalEdgeED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3ConvexHullComputerD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i8, ptr %i.c, align 8, !range !20
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20b3AlignedObjectArrayIiED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20b3AlignedObjectArrayIiED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #13
  unreachable

_ZN20b3AlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39   ; 2 uses
  %.not.i.i.i1 = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i8, ptr %i.j, align 8, !range !20
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i.i2 = select i1 %.not.i.i.i1, i1 %i.l, i1 false
  br i1 %or.cond.i.i2, label %bb.d, label %_ZN20b3AlignedObjectArrayIN20b3ConvexHullComputer4EdgeEED2Ev.exit

bb.d:                                             ; preds = %_ZN20b3AlignedObjectArrayIiED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN20b3AlignedObjectArrayIN20b3ConvexHullComputer4EdgeEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #13
  unreachable

_ZN20b3AlignedObjectArrayIN20b3ConvexHullComputer4EdgeEED2Ev.exit: ; preds = %_ZN20b3AlignedObjectArrayIiED2Ev.exit, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  %.not.i.i.i3 = icmp ne ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i8, ptr %i.q, align 8, !range !20
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i4 = select i1 %.not.i.i.i3, i1 %i.s, i1 false
  br i1 %or.cond.i.i4, label %bb.f, label %_ZN20b3AlignedObjectArrayI9b3Vector3ED2Ev.exit

bb.f:                                             ; preds = %_ZN20b3AlignedObjectArrayIN20b3ConvexHullComputer4EdgeEED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.p)
          to label %_ZN20b3AlignedObjectArrayI9b3Vector3ED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #13
  unreachable

_ZN20b3AlignedObjectArrayI9b3Vector3ED2Ev.exit:   ; preds = %_ZN20b3AlignedObjectArrayIN20b3ConvexHullComputer4EdgeEED2Ev.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9b3HashMapI20b3InternalVertexPair14b3InternalEdgeE6insertERKS0_RKS1_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 2 dereferenceable(4) %1, ptr noundef nonnull align 2 dereferenceable(4) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !79     ; 2 uses
  %i.b = sext i16 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !80   ; 2 uses
  %i.e = sext i16 %i.d to i32
  %i.f = shl nsw i32 %i.e, 16
  %i.g = add nsw i32 %i.f, %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !69   ; 9 uses
  %i.j = add nsw i32 %i.i, -1
  %i.k = and i32 %i.g, %i.j                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !41
  %.not.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.p = sext i32 %i.k to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %.012.i = load i32, ptr %i.q, align 4, !tbaa !47 ; 2 uses
  %.not1113.i = icmp eq i32 %.012.i, -1
  br i1 %.not1113.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.014.i = phi i32 [ %.012.i, %.lr.ph.i ], [ %.0.i, %bb.d ]
  %i.v = sext i32 %.014.i to i64                  ; 3 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.v ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !79
  %i.y = icmp eq i16 %i.a, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = icmp eq i16 %i.d, %i.aa
  %i.ac = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %i.ac, label %_ZNK9b3HashMapI20b3InternalVertexPair14b3InternalEdgeE9findIndexERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v
  %.0.i = load i32, ptr %i.ad, align 4, !tbaa !47 ; 2 uses
  %.not11.i = icmp eq i32 %.0.i, -1
  br i1 %.not11.i, label %.loopexit, label %bb.c, !llvm.loop !4

_ZNK9b3HashMapI20b3InternalVertexPair14b3InternalEdgeE9findIndexERKS0_.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !67
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.v
  %i.ah = load i32, ptr %2, align 2, !tbaa !81
  store i32 %i.ah, ptr %i.ag, align 2, !tbaa !81
  br label %bb.o

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 5 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !68 ; 4 uses
  %i.ak = icmp eq i32 %i.aj, %i.i
  br i1 %i.ak, label %bb.e, label %_ZN20b3AlignedObjectArrayI14b3InternalEdgeE9push_backERKS0_.exit

bb.e:                                             ; preds = %.loopexit
  %.not.i.i = icmp eq i32 %i.i, 0
  %i.al = shl nsw i32 %i.i, 1
  %i.am = select i1 %.not.i.i, i32 1, i32 %i.al   ; 7 uses
  %i.an = icmp slt i32 %i.i, %i.am
  br i1 %i.an, label %bb.f, label %_ZN20b3AlignedObjectArrayI14b3InternalEdgeE9push_backERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI14b3InternalEdgeE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI14b3InternalEdgeE8allocateEi.exit.i.i: ; preds = %bb.f
  %i.ao = sext i32 %i.am to i64
  %i.ap = shl nsw i64 %i.ao, 2
  %i.aq = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.ap, i32 noundef 16) ; 12 uses
  %3 = ptrtoaddr ptr %i.aq to i64
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI14b3InternalEdgeE8allocateEi.exit.i.i
  %i.as = load i32, ptr %i.ai, align 4, !tbaa !68 ; 7 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI14b3InternalEdgeE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !67 ; 7 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.as to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.as, 8
  %i.aw = ptrtoaddr ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %3
  %diff.check = icmp ugt i64 %i.ax, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <4 x i32>, ptr %i.az, align 2, !tbaa !81
  %wide.load52 = load <4 x i32>, ptr %i.ba, align 2, !tbaa !81
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %wide.load, ptr %i.ay, align 2, !tbaa !81
  store <4 x i32> %wide.load52, ptr %i.bb, align 2, !tbaa !81
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayI14b3InternalEdgeE4copyEiiPS0_.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i.i.i.prol
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i.i.i.prol
  %i.bf = load i32, ptr %i.be, align 2, !tbaa !81
  store i32 %i.bf, ptr %i.bd, align 2, !tbaa !81
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !161

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.bg = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %_ZNK20b3AlignedObjectArrayI14b3InternalEdgeE4copyEiiPS0_.exit.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i.i.i
  %i.bk = load i32, ptr %i.bj, align 2, !tbaa !81
  store i32 %i.bk, ptr %i.bi, align 2, !tbaa !81
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i.i
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next.i.i.i
  %i.bn = load i32, ptr %i.bm, align 2, !tbaa !81
  store i32 %i.bn, ptr %i.bl, align 2, !tbaa !81
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i.i.1
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next.i.i.i.1
  %i.bq = load i32, ptr %i.bp, align 2, !tbaa !81
  store i32 %i.bq, ptr %i.bo, align 2, !tbaa !81
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i.i.2
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next.i.i.i.2
  %i.bt = load i32, ptr %i.bs, align 2, !tbaa !81
  store i32 %i.bt, ptr %i.br, align 2, !tbaa !81
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20b3AlignedObjectArrayI14b3InternalEdgeE4copyEiiPS0_.exit.i.i, label %scalar.ph, !llvm.loop !162

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI14b3InternalEdgeE8allocateEi.exit.i.i, %bb.f
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
  store i32 0, ptr %i.ai, align 4, !tbaa !68
  br label %_ZNK20b3AlignedObjectArrayI14b3InternalEdgeE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI14b3InternalEdgeE4copyEiiPS0_.exit.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split7.i.i, %.split.i.i
  %.pre3.i = phi i32 [ 0, %.split7.i.i ], [ %i.as, %.split.i.i ], [ %i.as, %middle.block ], [ %i.as, %scalar.ph ], [ %i.as, %scalar.ph.prol.loopexit ] ; 2 uses
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.aq, %.split.i.i ], [ %i.aq, %middle.block ], [ %i.aq, %scalar.ph ], [ %i.aq, %scalar.ph.prol.loopexit ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.am, %.split.i.i ], [ %i.am, %middle.block ], [ %i.am, %scalar.ph ], [ %i.am, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !67 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI14b3InternalEdgeE10deallocateEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNK20b3AlignedObjectArrayI14b3InternalEdgeE4copyEiiPS0_.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !66, !range !20, !noundef !32
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.h, label %_ZN20b3AlignedObjectArrayI14b3InternalEdgeE10deallocateEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.bv)
  %.pre.pre.i = load i32, ptr %i.ai, align 4, !tbaa !68
  br label %_ZN20b3AlignedObjectArrayI14b3InternalEdgeE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI14b3InternalEdgeE10deallocateEv.exit.i.i: ; preds = %bb.h, %bb.g, %_ZNK20b3AlignedObjectArrayI14b3InternalEdgeE4copyEiiPS0_.exit.i.i
  %.pre.i = phi i32 [ %.pre.pre.i, %bb.h ], [ %.pre3.i, %bb.g ], [ %.pre3.i, %_ZNK20b3AlignedObjectArrayI14b3InternalEdgeE4copyEiiPS0_.exit.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.bz, align 8, !tbaa !66
  store ptr %.0.i12.i.i, ptr %i.bu, align 8, !tbaa !67
  store i32 %.0.i.i, ptr %i.h, align 8, !tbaa !69
  br label %_ZN20b3AlignedObjectArrayI14b3InternalEdgeE9push_backERKS0_.exit

_ZN20b3AlignedObjectArrayI14b3InternalEdgeE9push_backERKS0_.exit: ; preds = %.loopexit, %bb.e, %_ZN20b3AlignedObjectArrayI14b3InternalEdgeE10deallocateEv.exit.i.i
  %i.ca = phi i32 [ %.0.i.i, %_ZN20b3AlignedObjectArrayI14b3InternalEdgeE10deallocateEv.exit.i.i ], [ %i.i, %bb.e ], [ %i.i, %.loopexit ] ; 2 uses
  %i.cb = phi i32 [ %.pre.i, %_ZN20b3AlignedObjectArrayI14b3InternalEdgeE10deallocateEv.exit.i.i ], [ %i.i, %bb.e ], [ %i.aj, %.loopexit ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !67
  %i.ce = sext i32 %i.cb to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %2, align 2, !tbaa !81
  store i32 %i.cg, ptr %i.cf, align 2, !tbaa !81
  %i.ch = add nsw i32 %i.cb, 1
  store i32 %i.ch, ptr %i.ai, align 4, !tbaa !68
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !75 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !76
  %i.cm = icmp eq i32 %i.cj, %i.cl
  br i1 %i.cm, label %bb.i, label %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE9push_backERKS0_.exit

bb.i:                                             ; preds = %_ZN20b3AlignedObjectArrayI14b3InternalEdgeE9push_backERKS0_.exit
  %.not.i.i16 = icmp eq i32 %i.cj, 0
  %i.cn = shl nsw i32 %i.cj, 1
  %i.co = select i1 %.not.i.i16, i32 1, i32 %i.cn ; 7 uses
  %i.cp = icmp slt i32 %i.cj, %i.co
  br i1 %i.cp, label %bb.j, label %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE9push_backERKS0_.exit

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i17 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i.i17, label %.split7.i.i30, label %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE8allocateEi.exit.i.i: ; preds = %bb.j
  %i.cq = sext i32 %i.co to i64
  %i.cr = shl nsw i64 %i.cq, 2
  %i.cs = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.cr, i32 noundef 16) ; 12 uses
  %4 = ptrtoaddr ptr %i.cs to i64
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.split7.i.i30, label %.split.i.i18

.split.i.i18:                                     ; preds = %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE8allocateEi.exit.i.i
  %i.cu = load i32, ptr %i.ci, align 4, !tbaa !75 ; 7 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.lr.ph.i.i.i25, label %_ZNK20b3AlignedObjectArrayI20b3InternalVertexPairE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i25:                                   ; preds = %.split.i.i18
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !74 ; 7 uses
  %wide.trip.count.i.i.i26 = zext nneg i32 %i.cu to i64 ; 5 uses
  %min.iters.check56 = icmp ult i32 %i.cu, 8
  %i.cy = ptrtoaddr ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %4
  %diff.check54 = icmp ugt i64 %i.cz, -32
  %or.cond69 = select i1 %min.iters.check56, i1 true, i1 %diff.check54
  br i1 %or.cond69, label %scalar.ph55.preheader, label %vector.ph57

vector.ph57:                                      ; preds = %.lr.ph.i.i.i25
  %n.vec58 = and i64 %wide.trip.count.i.i.i26, 2147483640 ; 3 uses
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next63, %vector.body59 ] ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index60 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %index60 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load61 = load <4 x i32>, ptr %i.db, align 2, !tbaa !81
  %wide.load62 = load <4 x i32>, ptr %i.dc, align 2, !tbaa !81
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <4 x i32> %wide.load61, ptr %i.da, align 2, !tbaa !81
  store <4 x i32> %wide.load62, ptr %i.dd, align 2, !tbaa !81
  %index.next63 = add nuw i64 %index60, 8         ; 2 uses
  %i.de = icmp eq i64 %index.next63, %n.vec58
  br i1 %i.de, label %middle.block64, label %vector.body59, !llvm.loop !163

middle.block64:                                   ; preds = %vector.body59
  %cmp.n65 = icmp eq i64 %n.vec58, %wide.trip.count.i.i.i26
  br i1 %cmp.n65, label %_ZNK20b3AlignedObjectArrayI20b3InternalVertexPairE4copyEiiPS0_.exit.i.i, label %scalar.ph55.preheader

scalar.ph55.preheader:                            ; preds = %.lr.ph.i.i.i25, %middle.block64
  %indvars.iv.i.i.i27.ph = phi i64 [ 0, %.lr.ph.i.i.i25 ], [ %n.vec58, %middle.block64 ] ; 3 uses
  %xtraiter71 = and i64 %wide.trip.count.i.i.i26, 3 ; 2 uses
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %scalar.ph55.prol.loopexit, label %scalar.ph55.prol

scalar.ph55.prol:                                 ; preds = %scalar.ph55.preheader, %scalar.ph55.prol
  %indvars.iv.i.i.i27.prol = phi i64 [ %indvars.iv.next.i.i.i28.prol, %scalar.ph55.prol ], [ %indvars.iv.i.i.i27.ph, %scalar.ph55.preheader ] ; 3 uses
  %prol.iter73 = phi i64 [ %prol.iter73.next, %scalar.ph55.prol ], [ 0, %scalar.ph55.preheader ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.i.i.i27.prol
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.i.i.i27.prol
  %i.dh = load i32, ptr %i.dg, align 2, !tbaa !81
  store i32 %i.dh, ptr %i.df, align 2, !tbaa !81
  %indvars.iv.next.i.i.i28.prol = add nuw nsw i64 %indvars.iv.i.i.i27.prol, 1 ; 2 uses
  %prol.iter73.next = add i64 %prol.iter73, 1     ; 2 uses
  %prol.iter73.cmp.not = icmp eq i64 %prol.iter73.next, %xtraiter71
  br i1 %prol.iter73.cmp.not, label %scalar.ph55.prol.loopexit, label %scalar.ph55.prol, !llvm.loop !164

scalar.ph55.prol.loopexit:                        ; preds = %scalar.ph55.prol, %scalar.ph55.preheader
  %indvars.iv.i.i.i27.unr = phi i64 [ %indvars.iv.i.i.i27.ph, %scalar.ph55.preheader ], [ %indvars.iv.next.i.i.i28.prol, %scalar.ph55.prol ]
  %i.di = sub nsw i64 %indvars.iv.i.i.i27.ph, %wide.trip.count.i.i.i26
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %_ZNK20b3AlignedObjectArrayI20b3InternalVertexPairE4copyEiiPS0_.exit.i.i, label %scalar.ph55

scalar.ph55:                                      ; preds = %scalar.ph55.prol.loopexit, %scalar.ph55
  %indvars.iv.i.i.i27 = phi i64 [ %indvars.iv.next.i.i.i28.3, %scalar.ph55 ], [ %indvars.iv.i.i.i27.unr, %scalar.ph55.prol.loopexit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.i.i.i27
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.i.i.i27
  %i.dm = load i32, ptr %i.dl, align 2, !tbaa !81
  store i32 %i.dm, ptr %i.dk, align 2, !tbaa !81
  %indvars.iv.next.i.i.i28 = add nuw nsw i64 %indvars.iv.i.i.i27, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i28
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next.i.i.i28
  %i.dp = load i32, ptr %i.do, align 2, !tbaa !81
  store i32 %i.dp, ptr %i.dn, align 2, !tbaa !81
  %indvars.iv.next.i.i.i28.1 = add nuw nsw i64 %indvars.iv.i.i.i27, 2 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i28.1
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next.i.i.i28.1
  %i.ds = load i32, ptr %i.dr, align 2, !tbaa !81
  store i32 %i.ds, ptr %i.dq, align 2, !tbaa !81
  %indvars.iv.next.i.i.i28.2 = add nuw nsw i64 %indvars.iv.i.i.i27, 3 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i28.2
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next.i.i.i28.2
  %i.dv = load i32, ptr %i.du, align 2, !tbaa !81
  store i32 %i.dv, ptr %i.dt, align 2, !tbaa !81
  %indvars.iv.next.i.i.i28.3 = add nuw nsw i64 %indvars.iv.i.i.i27, 4 ; 2 uses
  %exitcond.not.i.i.i29.3 = icmp eq i64 %indvars.iv.next.i.i.i28.3, %wide.trip.count.i.i.i26
  br i1 %exitcond.not.i.i.i29.3, label %_ZNK20b3AlignedObjectArrayI20b3InternalVertexPairE4copyEiiPS0_.exit.i.i, label %scalar.ph55, !llvm.loop !165

.split7.i.i30:                                    ; preds = %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE8allocateEi.exit.i.i, %bb.j
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
  store i32 0, ptr %i.ci, align 4, !tbaa !75
  br label %_ZNK20b3AlignedObjectArrayI20b3InternalVertexPairE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI20b3InternalVertexPairE4copyEiiPS0_.exit.i.i: ; preds = %scalar.ph55.prol.loopexit, %scalar.ph55, %middle.block64, %.split7.i.i30, %.split.i.i18
  %.pre3.i19 = phi i32 [ 0, %.split7.i.i30 ], [ %i.cu, %.split.i.i18 ], [ %i.cu, %middle.block64 ], [ %i.cu, %scalar.ph55 ], [ %i.cu, %scalar.ph55.prol.loopexit ] ; 2 uses
  %.0.i12.i.i20 = phi ptr [ null, %.split7.i.i30 ], [ %i.cs, %.split.i.i18 ], [ %i.cs, %middle.block64 ], [ %i.cs, %scalar.ph55 ], [ %i.cs, %scalar.ph55.prol.loopexit ]
  %.0.i.i21 = phi i32 [ 0, %.split7.i.i30 ], [ %i.co, %.split.i.i18 ], [ %i.co, %middle.block64 ], [ %i.co, %scalar.ph55 ], [ %i.co, %scalar.ph55.prol.loopexit ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !74 ; 2 uses
  %.not.i10.i.i22 = icmp eq ptr %i.dx, null
  br i1 %.not.i10.i.i22, label %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE10deallocateEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK20b3AlignedObjectArrayI20b3InternalVertexPairE4copyEiiPS0_.exit.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !73, !range !20, !noundef !32
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.l, label %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE10deallocateEv.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.dx)
  %.pre.pre.i24 = load i32, ptr %i.ci, align 4, !tbaa !75
  br label %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE10deallocateEv.exit.i.i: ; preds = %bb.l, %bb.k, %_ZNK20b3AlignedObjectArrayI20b3InternalVertexPairE4copyEiiPS0_.exit.i.i
  %.pre.i23 = phi i32 [ %.pre.pre.i24, %bb.l ], [ %.pre3.i19, %bb.k ], [ %.pre3.i19, %_ZNK20b3AlignedObjectArrayI20b3InternalVertexPairE4copyEiiPS0_.exit.i.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.eb, align 8, !tbaa !73
  store ptr %.0.i12.i.i20, ptr %i.dw, align 8, !tbaa !74
  store i32 %.0.i.i21, ptr %i.ck, align 8, !tbaa !76
  %.pre = load i32, ptr %i.h, align 8, !tbaa !69
  br label %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE9push_backERKS0_.exit

_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE9push_backERKS0_.exit: ; preds = %_ZN20b3AlignedObjectArrayI14b3InternalEdgeE9push_backERKS0_.exit, %bb.i, %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE10deallocateEv.exit.i.i
  %i.ec = phi i32 [ %.pre, %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE10deallocateEv.exit.i.i ], [ %i.ca, %bb.i ], [ %i.ca, %_ZN20b3AlignedObjectArrayI14b3InternalEdgeE9push_backERKS0_.exit ]
  %i.ed = phi i32 [ %.pre.i23, %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE10deallocateEv.exit.i.i ], [ %i.cj, %bb.i ], [ %i.cj, %_ZN20b3AlignedObjectArrayI14b3InternalEdgeE9push_backERKS0_.exit ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !74
  %i.eg = sext i32 %i.ed to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = load i32, ptr %1, align 2, !tbaa !81
  store i32 %i.ei, ptr %i.eh, align 2, !tbaa !81
  %i.ej = add nsw i32 %i.ed, 1
  store i32 %i.ej, ptr %i.ci, align 4, !tbaa !75
  %i.ek = icmp slt i32 %i.i, %i.ec
  br i1 %i.ek, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE9push_backERKS0_.exit
  tail call void @_ZN9b3HashMapI20b3InternalVertexPair14b3InternalEdgeE10growTablesERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 2 dereferenceable(4) %1)
  %i.el = load i16, ptr %1, align 2, !tbaa !79
  %i.em = sext i16 %i.el to i32
  %i.en = load i16, ptr %i.c, align 2, !tbaa !80
  %i.eo = sext i16 %i.en to i32
  %i.ep = shl nsw i32 %i.eo, 16
  %i.eq = add nsw i32 %i.ep, %i.em
  %i.er = load i32, ptr %i.h, align 8, !tbaa !69
  %i.es = add nsw i32 %i.er, -1
  %i.et = and i32 %i.eq, %i.es
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE9push_backERKS0_.exit
  %.0 = phi i32 [ %i.et, %bb.m ], [ %i.k, %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairE9push_backERKS0_.exit ]
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !29
  %i.ew = sext i32 %.0 to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !47
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !29
  %i.fb = sext i32 %i.aj to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fb
  store i32 %i.ey, ptr %i.fc, align 4, !tbaa !47
  store i32 %i.aj, ptr %i.ex, align 4, !tbaa !47
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK9b3HashMapI20b3InternalVertexPair14b3InternalEdgeE9findIndexERKS0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9b3HashMapI20b3InternalVertexPair14b3InternalEdgeED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i8, ptr %i.c, align 8, !range !20
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #13
  unreachable

_ZN20b3AlignedObjectArrayI20b3InternalVertexPairED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67   ; 2 uses
  %.not.i.i.i1 = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i8, ptr %i.j, align 8, !range !20
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i.i2 = select i1 %.not.i.i.i1, i1 %i.l, i1 false
  br i1 %or.cond.i.i2, label %bb.d, label %_ZN20b3AlignedObjectArrayI14b3InternalEdgeED2Ev.exit

bb.d:                                             ; preds = %_ZN20b3AlignedObjectArrayI20b3InternalVertexPairED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN20b3AlignedObjectArrayI14b3InternalEdgeED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #13
end_hunk_0
begin_hunk_1_@_ZSt9terminatev
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare noundef float @_ZN20b3ConvexHullComputer7computeEPKvbiiff(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI15b3GrahamVector3E17quickSortInternalI18b3AngleCompareFuncEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %struct.b3GrahamVector3, align 16   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.n, %bb.a
  %.tr46 = phi i32 [ %2, %bb.a ], [ %.230, %bb.n ] ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = add nsw i32 %.tr46, %3
  %i.d = sdiv i32 %i.c, 2
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.e ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.g = load <2 x float>, ptr %i.f, align 16     ; 3 uses
  %i.h = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4 ; 3 uses
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.939.0.copyload = load float, ptr %.sroa.939.0..sroa_idx, align 16 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %tailrecurse
  %.028 = phi i32 [ %.tr46, %tailrecurse ], [ %.230, %bb.k ]
  %.0 = phi i32 [ %3, %tailrecurse ], [ %.2, %bb.k ]
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.k = sext i32 %.028 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.k, %bb.b ] ; 4 uses
  %i.l = getelementptr inbounds [32 x i8], ptr %i.j, i64 %indvars.iv ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load float, ptr %i.m, align 16, !tbaa !62 ; 2 uses
  %i.o = fcmp une float %i.n, %.sroa.939.0.copyload
  br i1 %i.o, label %.split, label %bb.d

.split:                                           ; preds = %bb.c
  %i.p = fcmp olt float %i.n, %.sroa.939.0.copyload
  br i1 %i.p, label %bb.e, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load float, ptr %i.q, align 8, !tbaa !45
  %i.s = load <2 x float>, ptr %i.l, align 16, !tbaa !45 ; 2 uses
  %i.t = load <3 x float>, ptr %1, align 16, !tbaa !45 ; 3 uses
  %i.u = shufflevector <2 x float> %i.s, <2 x float> %i.g, <2 x i32> <i32 0, i32 2>
  %i.v = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> zeroinitializer
  %i.w = fsub <2 x float> %i.u, %i.v              ; 2 uses
  %i.x = shufflevector <2 x float> %i.s, <2 x float> %i.h, <2 x i32> <i32 1, i32 2>
  %i.y = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.z = fsub <2 x float> %i.x, %i.y              ; 2 uses
  %i.aa = insertelement <2 x float> %i.h, float %i.r, i64 0
  %i.ab = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ac = fsub <2 x float> %i.aa, %i.ab           ; 2 uses
  %i.ad = fmul <2 x float> %i.z, %i.z
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.w, <2 x float> %i.ad)
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ac, <2 x float> %i.ae) ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.ah = extractelement <2 x float> %i.af, i64 1 ; 2 uses
  %i.ai = fcmp une float %i.ag, %i.ah
  br i1 %i.ai, label %_ZNK18b3AngleCompareFuncclERK15b3GrahamVector3S2_.exit, label %.split42

.split42:                                         ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !61
  %i.al = icmp slt i32 %i.ak, %.sroa.11.0.copyload
  br i1 %i.al, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZNK18b3AngleCompareFuncclERK15b3GrahamVector3S2_.exit, %.split, %.split42
  %i.am = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.an = sext i32 %.0 to i64
  br label %bb.f

_ZNK18b3AngleCompareFuncclERK15b3GrahamVector3S2_.exit: ; preds = %bb.d
  %i.ao = fcmp olt float %i.ag, %i.ah
  br i1 %i.ao, label %bb.e, label %.preheader

bb.e:                                             ; preds = %.split42, %.split, %_ZNK18b3AngleCompareFuncclERK15b3GrahamVector3S2_.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %bb.c, !llvm.loop !166

bb.f:                                             ; preds = %.preheader, %bb.h
  %indvars.iv54 = phi i64 [ %i.an, %.preheader ], [ %indvars.iv.next55, %bb.h ] ; 5 uses
  %i.ap = getelementptr inbounds [32 x i8], ptr %i.j, i64 %indvars.iv54 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load float, ptr %i.aq, align 16, !tbaa !62 ; 2 uses
  %i.as = fcmp une float %.sroa.939.0.copyload, %i.ar
  br i1 %i.as, label %.split43, label %bb.g

.split43:                                         ; preds = %bb.f
  %i.at = fcmp olt float %.sroa.939.0.copyload, %i.ar
  br i1 %i.at, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.av = load float, ptr %i.au, align 8, !tbaa !45
  %i.aw = load <3 x float>, ptr %1, align 16, !tbaa !45 ; 3 uses
  %i.ax = load <2 x float>, ptr %i.ap, align 16, !tbaa !45 ; 2 uses
  %i.ay = shufflevector <2 x float> %i.g, <2 x float> %i.ax, <2 x i32> <i32 0, i32 2>
  %i.az = shufflevector <3 x float> %i.aw, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fsub <2 x float> %i.ay, %i.az           ; 2 uses
  %i.bb = shufflevector <2 x float> %i.g, <2 x float> %i.ax, <2 x i32> <i32 1, i32 3>
  %i.bc = shufflevector <3 x float> %i.aw, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = fsub <2 x float> %i.bb, %i.bc           ; 2 uses
  %i.be = insertelement <2 x float> %i.i, float %i.av, i64 1
  %i.bf = shufflevector <3 x float> %i.aw, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bg = fsub <2 x float> %i.be, %i.bf           ; 2 uses
  %i.bh = fmul <2 x float> %i.bd, %i.bd
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.ba, <2 x float> %i.bh)
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bg, <2 x float> %i.bi) ; 2 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0 ; 2 uses
  %i.bl = extractelement <2 x float> %i.bj, i64 1 ; 2 uses
  %i.bm = fcmp une float %i.bk, %i.bl
  br i1 %i.bm, label %_ZNK18b3AngleCompareFuncclERK15b3GrahamVector3S2_.exit35, label %.split44

.split44:                                         ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !61
  %i.bp = icmp slt i32 %.sroa.11.0.copyload, %i.bo
  br i1 %i.bp, label %bb.h, label %bb.i

_ZNK18b3AngleCompareFuncclERK15b3GrahamVector3S2_.exit35: ; preds = %bb.g
  %i.bq = fcmp olt float %i.bk, %i.bl
  br i1 %i.bq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split44, %.split43, %_ZNK18b3AngleCompareFuncclERK15b3GrahamVector3S2_.exit35
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, -1
  br label %bb.f, !llvm.loop !167

bb.i:                                             ; preds = %.split44, %.split43, %_ZNK18b3AngleCompareFuncclERK15b3GrahamVector3S2_.exit35
  %i.br = trunc nsw i64 %indvars.iv54 to i32      ; 2 uses
  %.not = icmp sgt i64 %indvars.iv, %indvars.iv54
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 16 dereferenceable(32) %i.l, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.l, ptr noundef nonnull align 16 dereferenceable(24) %i.ap, i64 24, i1 false)
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.bt = getelementptr inbounds [32 x i8], ptr %i.bs, i64 %indvars.iv54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bt, ptr noundef nonnull align 16 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bu = add nsw i32 %i.am, 1
  %i.bv = add nsw i32 %i.br, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.230 = phi i32 [ %i.bu, %bb.j ], [ %i.am, %bb.i ] ; 4 uses
  %.2 = phi i32 [ %i.bv, %bb.j ], [ %i.br, %bb.i ] ; 4 uses
  %.not33 = icmp sgt i32 %.230, %.2
  br i1 %.not33, label %bb.l, label %bb.b, !llvm.loop !168

bb.l:                                             ; preds = %bb.k
  %i.bw = icmp slt i32 %.tr46, %.2
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN20b3AlignedObjectArrayI15b3GrahamVector3E17quickSortInternalI18b3AngleCompareFuncEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, i32 noundef %.tr46, i32 noundef %.2)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bx = icmp slt i32 %.230, %3
  br i1 %i.bx, label %tailrecurse, label %bb.o

bb.o:                                             ; preds = %bb.n
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayIiEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i8 1, ptr %i.a, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  store i32 0, ptr %i.c, align 4, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41   ; 10 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i, label %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.i, i32 noundef 16) ; 16 uses
  %2 = ptrtoaddr ptr %i.j to i64                  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.l = load i32, ptr %i.c, align 4, !tbaa !41   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  %.pre10 = load ptr, ptr %i.b, align 8, !tbaa !29 ; 11 uses
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %.pre1018 = ptrtoaddr ptr %.pre10 to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %i.n = sub i64 %.pre1018, %2
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.pre10, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !tbaa !47
  %wide.load19 = load <4 x i32>, ptr %i.q, align 4, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> %wide.load, ptr %i.o, align 4, !tbaa !47
  store <4 x i32> %wide.load19, ptr %i.r, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.i.i.prol
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.pre10, i64 %indvars.iv.i.i.i.prol
  %i.v = load i32, ptr %i.u, align 4, !tbaa !47
  store i32 %i.v, ptr %i.t, align 4, !tbaa !47
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !170

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.w = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.i.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.pre10, i64 %indvars.iv.i.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !47
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !47
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.pre10, i64 %indvars.iv.next.i.i.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !47
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !47
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.1
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.pre10, i64 %indvars.iv.next.i.i.i.1
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !47
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !47
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.2
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre10, i64 %indvars.iv.next.i.i.i.2
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !47
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !47
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread, label %scalar.ph, !llvm.loop !171

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
  store i32 0, ptr %i.c, align 4, !tbaa !41
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !29
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %.split7.i.i, %.split.i.i
  %i.ak = phi ptr [ %.pre, %.split7.i.i ], [ %.pre10, %.split.i.i ] ; 2 uses
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.f, %.split.i.i ] ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i10.i.i, label %.lr.ph, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %.0.i.i16 = phi i32 [ %.0.i.i, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i ], [ %i.f, %middle.block ], [ %i.f, %scalar.ph ], [ %i.f, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.al = phi ptr [ %i.ak, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i ], [ %.pre10, %middle.block ], [ %.pre10, %scalar.ph ], [ %.pre10, %scalar.ph.prol.loopexit ]
  %i.am = load i8, ptr %i.a, align 8, !tbaa !40, !range !20, !noundef !32
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.al)
  br label %.lr.ph

_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit:    ; preds = %bb.a
  store i32 %i.f, ptr %i.c, align 4, !tbaa !41
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %.0.i.i17 = phi i32 [ %.0.i.i, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i ], [ %.0.i.i16, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i.thread ], [ %.0.i.i16, %bb.b ]
  store i8 1, ptr %i.a, align 8, !tbaa !40
  store ptr %i.j, ptr %i.b, align 8, !tbaa !29
  store i32 %.0.i.i17, ptr %i.d, align 8, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %i.i, i1 false), !tbaa !47
  store i32 %i.f, ptr %i.c, align 4, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !29 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 5 uses
  %min.iters.check23 = icmp ult i32 %i.f, 8
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %2
  %diff.check21 = icmp ugt i64 %i.ar, -32
  %or.cond35 = select i1 %min.iters.check23, i1 true, i1 %diff.check21
  br i1 %or.cond35, label %scalar.ph22.preheader, label %vector.ph24

vector.ph24:                                      ; preds = %.lr.ph
  %n.vec25 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph24
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next30, %vector.body26 ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index27 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load28 = load <4 x i32>, ptr %i.as, align 4, !tbaa !47
  %wide.load29 = load <4 x i32>, ptr %i.at, align 4, !tbaa !47
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index27 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <4 x i32> %wide.load28, ptr %i.au, align 4, !tbaa !47
  store <4 x i32> %wide.load29, ptr %i.av, align 4, !tbaa !47
  %index.next30 = add nuw i64 %index27, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.aw, label %middle.block31, label %vector.body26, !llvm.loop !172

middle.block31:                                   ; preds = %vector.body26
  %cmp.n32 = icmp eq i64 %n.vec25, %wide.trip.count
  br i1 %cmp.n32, label %._crit_edge, label %scalar.ph22.preheader

scalar.ph22.preheader:                            ; preds = %.lr.ph, %middle.block31
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec25, %middle.block31 ] ; 3 uses
  %xtraiter36 = and i64 %wide.trip.count, 3       ; 2 uses
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %scalar.ph22.prol.loopexit, label %scalar.ph22.prol

scalar.ph22.prol:                                 ; preds = %scalar.ph22.preheader, %scalar.ph22.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph22.prol ], [ %indvars.iv.ph, %scalar.ph22.preheader ] ; 3 uses
  %prol.iter38 = phi i64 [ %prol.iter38.next, %scalar.ph22.prol ], [ 0, %scalar.ph22.preheader ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.prol
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !47
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.prol
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !47
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter38.next = add i64 %prol.iter38, 1     ; 2 uses
  %prol.iter38.cmp.not = icmp eq i64 %prol.iter38.next, %xtraiter36
  br i1 %prol.iter38.cmp.not, label %scalar.ph22.prol.loopexit, label %scalar.ph22.prol, !llvm.loop !173

scalar.ph22.prol.loopexit:                        ; preds = %scalar.ph22.prol, %scalar.ph22.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph22.preheader ], [ %indvars.iv.next.prol, %scalar.ph22.prol ]
  %i.ba = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %._crit_edge, label %scalar.ph22

._crit_edge:                                      ; preds = %scalar.ph22.prol.loopexit, %scalar.ph22, %middle.block31, %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit
  ret void

scalar.ph22:                                      ; preds = %scalar.ph22.prol.loopexit, %scalar.ph22
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph22 ], [ %indvars.iv.unr, %scalar.ph22.prol.loopexit ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !47
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !47
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !47
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.1
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !47
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.1
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !47
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.2
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !47
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.2
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !47
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph22, !llvm.loop !174
}

declare void @b3OutputErrorMessageVarArgsInternal(ptr noundef, ...) local_unnamed_addr #8

declare noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI8b3MyFaceE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp slt i32 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %.split7, label %_ZN20b3AlignedObjectArrayI8b3MyFaceE8allocateEi.exit

_ZN20b3AlignedObjectArrayI8b3MyFaceE8allocateEi.exit: ; preds = %bb.b
  %i.d = sext i32 %1 to i64
  %i.e = mul nsw i64 %i.d, 48
  %i.f = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.e, i32 noundef 16) ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.split7, label %.split

.split:                                           ; preds = %_ZN20b3AlignedObjectArrayI8b3MyFaceE8allocateEi.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN20b3AlignedObjectArrayI8b3MyFaceE7destroyEii.exit

.lr.ph.i:                                         ; preds = %.split
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext = zext nneg i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %indvars.iv.i ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %indvars.iv.i ; 2 uses
  tail call void @_ZN20b3AlignedObjectArrayIiEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !46
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.q = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.q, label %_ZNK20b3AlignedObjectArrayI8b3MyFaceE4copyEiiPS0_.exit, label %bb.c, !llvm.loop !3

.split7:                                          ; preds = %bb.b, %_ZN20b3AlignedObjectArrayI8b3MyFaceE8allocateEi.exit
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.r, align 4, !tbaa !24
  br label %_ZN20b3AlignedObjectArrayI8b3MyFaceE7destroyEii.exit

_ZNK20b3AlignedObjectArrayI8b3MyFaceE4copyEiiPS0_.exit: ; preds = %bb.c
  %.pre = load i32, ptr %i.h, align 4, !tbaa !24  ; 2 uses
  %i.s = icmp sgt i32 %.pre, 0
  br i1 %i.s, label %.lr.ph.i10, label %_ZN20b3AlignedObjectArrayI8b3MyFaceE7destroyEii.exit

.lr.ph.i10:                                       ; preds = %_ZNK20b3AlignedObjectArrayI8b3MyFaceE4copyEiiPS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext19 = zext nneg i32 %.pre to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZN8b3MyFaceD2Ev.exit.i, %.lr.ph.i10
  %indvars.iv.i11 = phi i64 [ 0, %.lr.ph.i10 ], [ %indvars.iv.next.i12, %_ZN8b3MyFaceD2Ev.exit.i ] ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %indvars.iv.i11 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29   ; 2 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load i8, ptr %i.y, align 8, !range !20
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.aa, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.e, label %_ZN8b3MyFaceD2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.x)
          to label %_ZN8b3MyFaceD2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #13
  unreachable

_ZN8b3MyFaceD2Ev.exit.i:                          ; preds = %bb.e, %bb.d
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %i.ad = icmp eq i64 %indvars.iv.next.i12, %zext19
  br i1 %i.ad, label %_ZN20b3AlignedObjectArrayI8b3MyFaceE7destroyEii.exit, label %bb.d, !llvm.loop !0

_ZN20b3AlignedObjectArrayI8b3MyFaceE7destroyEii.exit: ; preds = %_ZN8b3MyFaceD2Ev.exit.i, %.split, %.split7, %_ZNK20b3AlignedObjectArrayI8b3MyFaceE4copyEiiPS0_.exit
  %.029 = phi i32 [ 0, %.split7 ], [ %1, %_ZNK20b3AlignedObjectArrayI8b3MyFaceE4copyEiiPS0_.exit ], [ %1, %.split ], [ %1, %_ZN8b3MyFaceD2Ev.exit.i ]
  %.0.i1728 = phi ptr [ null, %.split7 ], [ %i.f, %_ZNK20b3AlignedObjectArrayI8b3MyFaceE4copyEiiPS0_.exit ], [ %i.f, %.split ], [ %i.f, %_ZN8b3MyFaceD2Ev.exit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25 ; 2 uses
  %.not.i15 = icmp eq ptr %i.af, null
  br i1 %.not.i15, label %_ZN20b3AlignedObjectArrayI8b3MyFaceE10deallocateEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN20b3AlignedObjectArrayI8b3MyFaceE7destroyEii.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !31, !range !20, !noundef !32
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %_ZN20b3AlignedObjectArrayI8b3MyFaceE10deallocateEv.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.af)
  br label %_ZN20b3AlignedObjectArrayI8b3MyFaceE10deallocateEv.exit

_ZN20b3AlignedObjectArrayI8b3MyFaceE10deallocateEv.exit: ; preds = %bb.g, %bb.h, %_ZN20b3AlignedObjectArrayI8b3MyFaceE7destroyEii.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.aj, align 8, !tbaa !31
  store ptr %.0.i1728, ptr %i.ae, align 8, !tbaa !25
  store i32 %.029, ptr %i.a, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %_ZN20b3AlignedObjectArrayI8b3MyFaceE10deallocateEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9b3HashMapI20b3InternalVertexPair14b3InternalEdgeE10growTablesERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 2 dereferenceable(4) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !69   ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !41   ; 4 uses
  %i.e = icmp slt i32 %i.d, %i.b
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !42
  %i.h = icmp slt i32 %i.g, %i.b
  br i1 %i.h, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !29
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.c
  %i.i = sext i32 %i.b to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 12 uses
  %2 = ptrtoaddr ptr %i.k to i64
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.m = load i32, ptr %i.c, align 4, !tbaa !41   ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 7 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.m to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.m, 8
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = sub i64 %i.q, %2
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !47
  %wide.load62 = load <4 x i32>, ptr %i.u, align 4, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> %wide.load, ptr %i.s, align 4, !tbaa !47
  store <4 x i32> %wide.load62, ptr %i.v, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.prol
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.i.prol
  %i.z = load i32, ptr %i.y, align 4, !tbaa !47
  store i32 %i.z, ptr %i.x, align 4, !tbaa !47
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !176

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !47
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !47
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !47
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i.1
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i.1
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !47
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !47
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i.2
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i.2
  %i.an = load i32, ptr %i.am, align 4, !tbaa !47
  store i32 %i.an, ptr %i.al, align 4, !tbaa !47
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph, !llvm.loop !177

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
  store i32 0, ptr %i.c, align 4, !tbaa !41
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.k, %.split.i.i ], [ %i.k, %middle.block ], [ %i.k, %scalar.ph ], [ %i.k, %scalar.ph.prol.loopexit ] ; 2 uses
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.b, %.split.i.i ], [ %i.b, %middle.block ], [ %i.b, %scalar.ph ], [ %i.b, %scalar.ph.prol.loopexit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !29 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !40, !range !20, !noundef !32
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.e, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ap)
  br label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.e, %bb.d, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.at, align 8, !tbaa !40
  store ptr %.0.i12.i.i, ptr %i.ao, align 8, !tbaa !29
  store i32 %.0.i.i, ptr %i.f, align 8, !tbaa !42
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.au = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i12.i.i, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = sext i32 %i.d to i64
  %wide.trip.count.i = sext i32 %i.b to i64
  %i.ax = shl nsw i64 %i.aw, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.au, i64 %i.ax
  %i.ay = shl nsw i64 %wide.trip.count.i, 2       ; 3 uses
  %i.az = sub nsw i64 %i.ay, %i.ax
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.az, i1 false), !tbaa !47
  store i32 %i.b, ptr %i.c, align 4, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !41 ; 2 uses
  %i.bc = icmp sgt i32 %i.b, %i.bb
  br i1 %i.bc, label %bb.f, label %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit40

bb.f:                                             ; preds = %.lr.ph.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !42
  %i.bf = icmp slt i32 %i.be, %i.b
  br i1 %i.bf, label %bb.g, label %..lr.ph.i20_crit_edge

..lr.ph.i20_crit_edge:                            ; preds = %bb.f
  %.phi.trans.insert52 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre53 = load ptr, ptr %.phi.trans.insert52, align 8, !tbaa !29
  br label %.lr.ph.i20

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i26 = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i26, label %.split7.i.i39, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i27

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i27: ; preds = %bb.g
  %i.bg = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.ay, i32 noundef 16) ; 12 uses
  %3 = ptrtoaddr ptr %i.bg to i64
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.split7.i.i39, label %.split.i.i28

.split.i.i28:                                     ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i27
  %i.bi = load i32, ptr %i.ba, align 4, !tbaa !41 ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i34, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i29

.lr.ph.i.i.i34:                                   ; preds = %.split.i.i28
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !29 ; 7 uses
  %wide.trip.count.i.i.i35 = zext nneg i32 %i.bi to i64 ; 5 uses
  %min.iters.check66 = icmp ult i32 %i.bi, 8
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %3
  %diff.check64 = icmp ugt i64 %i.bn, -32
  %or.cond79 = select i1 %min.iters.check66, i1 true, i1 %diff.check64
  br i1 %or.cond79, label %scalar.ph65.preheader, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i.i.i34
  %n.vec68 = and i64 %wide.trip.count.i.i.i35, 2147483640 ; 3 uses
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next73, %vector.body69 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index70 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %index70 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load71 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !47
  %wide.load72 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !47
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x i32> %wide.load71, ptr %i.bo, align 4, !tbaa !47
  store <4 x i32> %wide.load72, ptr %i.br, align 4, !tbaa !47
  %index.next73 = add nuw i64 %index70, 8         ; 2 uses
  %i.bs = icmp eq i64 %index.next73, %n.vec68
  br i1 %i.bs, label %middle.block74, label %vector.body69, !llvm.loop !178

middle.block74:                                   ; preds = %vector.body69
  %cmp.n75 = icmp eq i64 %n.vec68, %wide.trip.count.i.i.i35
  br i1 %cmp.n75, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i29, label %scalar.ph65.preheader

scalar.ph65.preheader:                            ; preds = %.lr.ph.i.i.i34, %middle.block74
  %indvars.iv.i.i.i36.ph = phi i64 [ 0, %.lr.ph.i.i.i34 ], [ %n.vec68, %middle.block74 ] ; 3 uses
  %xtraiter80 = and i64 %wide.trip.count.i.i.i35, 3 ; 2 uses
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %scalar.ph65.prol.loopexit, label %scalar.ph65.prol

scalar.ph65.prol:                                 ; preds = %scalar.ph65.preheader, %scalar.ph65.prol
  %indvars.iv.i.i.i36.prol = phi i64 [ %indvars.iv.next.i.i.i37.prol, %scalar.ph65.prol ], [ %indvars.iv.i.i.i36.ph, %scalar.ph65.preheader ] ; 3 uses
  %prol.iter82 = phi i64 [ %prol.iter82.next, %scalar.ph65.prol ], [ 0, %scalar.ph65.preheader ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i.i.i36.prol
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i.i36.prol
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !47
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !47
  %indvars.iv.next.i.i.i37.prol = add nuw nsw i64 %indvars.iv.i.i.i36.prol, 1 ; 2 uses
  %prol.iter82.next = add i64 %prol.iter82, 1     ; 2 uses
  %prol.iter82.cmp.not = icmp eq i64 %prol.iter82.next, %xtraiter80
  br i1 %prol.iter82.cmp.not, label %scalar.ph65.prol.loopexit, label %scalar.ph65.prol, !llvm.loop !179

scalar.ph65.prol.loopexit:                        ; preds = %scalar.ph65.prol, %scalar.ph65.preheader
  %indvars.iv.i.i.i36.unr = phi i64 [ %indvars.iv.i.i.i36.ph, %scalar.ph65.preheader ], [ %indvars.iv.next.i.i.i37.prol, %scalar.ph65.prol ]
  %i.bw = sub nsw i64 %indvars.iv.i.i.i36.ph, %wide.trip.count.i.i.i35
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i29, label %scalar.ph65

scalar.ph65:                                      ; preds = %scalar.ph65.prol.loopexit, %scalar.ph65
  %indvars.iv.i.i.i36 = phi i64 [ %indvars.iv.next.i.i.i37.3, %scalar.ph65 ], [ %indvars.iv.i.i.i36.unr, %scalar.ph65.prol.loopexit ] ; 6 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i.i.i36
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i.i36
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !47
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !47
  %indvars.iv.next.i.i.i37 = add nuw nsw i64 %indvars.iv.i.i.i36, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i37
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i.i37
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !47
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !47
  %indvars.iv.next.i.i.i37.1 = add nuw nsw i64 %indvars.iv.i.i.i36, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i37.1
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i.i37.1
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !47
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !47
  %indvars.iv.next.i.i.i37.2 = add nuw nsw i64 %indvars.iv.i.i.i36, 3 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i37.2
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i.i37.2
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !47
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !47
  %indvars.iv.next.i.i.i37.3 = add nuw nsw i64 %indvars.iv.i.i.i36, 4 ; 2 uses
  %exitcond.not.i.i.i38.3 = icmp eq i64 %indvars.iv.next.i.i.i37.3, %wide.trip.count.i.i.i35
  br i1 %exitcond.not.i.i.i38.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i29, label %scalar.ph65, !llvm.loop !180

.split7.i.i39:                                    ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i27, %bb.g
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
  store i32 0, ptr %i.ba, align 4, !tbaa !41
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i29

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i29: ; preds = %scalar.ph65.prol.loopexit, %scalar.ph65, %middle.block74, %.split7.i.i39, %.split.i.i28
  %.0.i12.i.i30 = phi ptr [ null, %.split7.i.i39 ], [ %i.bg, %.split.i.i28 ], [ %i.bg, %middle.block74 ], [ %i.bg, %scalar.ph65 ], [ %i.bg, %scalar.ph65.prol.loopexit ] ; 2 uses
  %.0.i.i31 = phi i32 [ 0, %.split7.i.i39 ], [ %i.b, %.split.i.i28 ], [ %i.b, %middle.block74 ], [ %i.b, %scalar.ph65 ], [ %i.b, %scalar.ph65.prol.loopexit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !29 ; 2 uses
  %.not.i10.i.i32 = icmp eq ptr %i.cl, null
  br i1 %.not.i10.i.i32, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i33, label %bb.h

bb.h:                                             ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i29
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !40, !range !20, !noundef !32
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.i, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i33

bb.i:                                             ; preds = %bb.h
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.cl)
  br label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i33

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i33: ; preds = %bb.i, %bb.h, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i29
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.cp, align 8, !tbaa !40
  store ptr %.0.i12.i.i30, ptr %i.ck, align 8, !tbaa !29
  store i32 %.0.i.i31, ptr %i.bd, align 8, !tbaa !42
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %..lr.ph.i20_crit_edge, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i33
  %i.cq = phi ptr [ %.pre53, %..lr.ph.i20_crit_edge ], [ %.0.i12.i.i30, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i33 ]
  %i.cr = sext i32 %i.bb to i64
  %i.cs = shl nsw i64 %i.cr, 2                    ; 2 uses
  %scevgep48 = getelementptr i8, ptr %i.cq, i64 %i.cs
  %i.ct = sub nsw i64 %i.ay, %i.cs
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep48, i8 0, i64 %i.ct, i1 false), !tbaa !47
  br label %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit40

_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit40:  ; preds = %.lr.ph.i20, %.lr.ph.i
  store i32 %i.b, ptr %i.ba, align 4, !tbaa !41
  %i.cu = icmp sgt i32 %i.b, 0
  br i1 %i.cu, label %.lr.ph45, label %.preheader

.lr.ph45:                                         ; preds = %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit40
  %i.cv = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.cw = zext nneg i32 %i.b to i64
  %i.cx = shl nuw nsw i64 %i.cw, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cv, i8 -1, i64 %i.cx, i1 false), !tbaa !47
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !29
  %i.da = zext nneg i32 %i.b to i64
  %i.db = shl nuw nsw i64 %i.da, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cz, i8 -1, i64 %i.db, i1 false), !tbaa !47
  br label %.preheader

.preheader:                                       ; preds = %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit40, %.lr.ph45
  %i.dc = icmp sgt i32 %i.d, 0
  br i1 %i.dc, label %.lr.ph47, label %.loopexit

.lr.ph47:                                         ; preds = %.preheader
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !74
  %i.df = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !29
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph47, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv ; 2 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !79
  %i.dk = sext i16 %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !80
  %i.dn = sext i16 %i.dm to i32
  %i.do = shl nsw i32 %i.dn, 16
  %i.dp = add nsw i32 %i.do, %i.dk
  %i.dq = load i32, ptr %i.a, align 8, !tbaa !69
  %i.dr = add nsw i32 %i.dq, -1
  %i.ds = and i32 %i.dp, %i.dr
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dt ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !47
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !47
  %i.dx = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !181

.loopexit:                                        ; preds = %bb.j, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
