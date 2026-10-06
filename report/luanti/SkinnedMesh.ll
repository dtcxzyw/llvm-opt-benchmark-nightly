Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/SkinnedMesh?download=true
inline.NumInlined: 2819
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNO5scene18SkinnedMeshBuilder8finalizeEv:bb.a

.noexc68:                                         ; preds = %._crit_edge195
  invoke void @_ZN5scene11SkinnedMesh27calculateJointBoundingBoxesEv(ptr noundef nonnull align 8 dereferenceable(152) %i.hx)
          to label %.noexc69 unwind label %.loopexit.split-lp

.noexc69:                                         ; preds = %.noexc68
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 24 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !134
  %i.ib = load ptr, ptr %i.hy, align 8, !tbaa !56 ; 2 uses
  %.not.i.i67 = icmp eq ptr %i.ia, %i.ib
  br i1 %.not.i.i67, label %_ZN5scene11SkinnedMesh28recalculateBaseBoundingBoxesEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc69, %.noexc70
  %i.ic = phi ptr [ %i.ij, %.noexc70 ], [ %i.ib, %.noexc69 ]
  %i.id = phi i64 [ %i.ih, %.noexc70 ], [ 0, %.noexc69 ]
  %.04.i.i = phi i32 [ %i.ig, %.noexc70 ], [ 0, %.noexc69 ]
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.id
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !59
  invoke void @_ZN5scene15SSkinMeshBuffer22recalculateBoundingBoxEv(ptr noundef nonnull align 8 dereferenceable(288) %i.if)
          to label %.noexc70 unwind label %.loopexit

.noexc70:                                         ; preds = %.lr.ph.i.i
  %i.ig = add i32 %.04.i.i, 1                     ; 2 uses
  %i.ih = zext i32 %i.ig to i64                   ; 2 uses
  %i.ii = load ptr, ptr %i.hz, align 8, !tbaa !134
  %i.ij = load ptr, ptr %i.hy, align 8, !tbaa !56 ; 2 uses
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = ashr exact i64 %i.im, 3
  %i.io = icmp ugt i64 %i.in, %i.ih
  br i1 %i.io, label %.lr.ph.i.i, label %_ZN5scene11SkinnedMesh28recalculateBaseBoundingBoxesEv.exit, !llvm.loop !4

.lr.ph194:                                        ; preds = %._crit_edge189, %bb.ae
  %.sroa.080.0192 = phi ptr [ %i.jj, %bb.ae ], [ %i.gk, %._crit_edge189 ] ; 2 uses
  %i.ip = load ptr, ptr %.sroa.080.0192, align 8, !tbaa !59 ; 6 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !20
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = invoke noundef ptr %i.is(ptr noundef nonnull align 8 dereferenceable(8) %i.ip)
          to label %.noexc71 unwind label %bb.ac, !inline_history !2

.noexc71:                                         ; preds = %.lr.ph194
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store i32 1, ptr %i.iu, align 8, !tbaa !138
  %i.iv = load ptr, ptr %i.ip, align 8, !tbaa !20
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = invoke noundef ptr %i.ix(ptr noundef nonnull align 8 dereferenceable(8) %i.ip)
          to label %bb.z unwind label %bb.ac, !inline_history !2

bb.z:                                             ; preds = %.noexc71
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i32 1, ptr %i.iz, align 8, !tbaa !138
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ip, i64 232
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !100 ; 2 uses
  %i.jc = icmp ult i32 %i.jb, 3
  br i1 %i.jc, label %_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit76, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 233, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene15SSkinMeshBuffer10getWeightsEv) #30
  unreachable

_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit76:  ; preds = %bb.z
  %i.jd = shl nuw nsw i32 %i.jb, 3
  %narrow.i73 = sub nuw nsw i32 24, %i.jd
  %switch.offset.i74 = zext nneg i32 %narrow.i73 to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.ip, i64 %switch.offset.i74
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !101
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 56
  %.0.i75 = load ptr, ptr %i.jg, align 8, !tbaa !104 ; 2 uses
  %.not = icmp eq ptr %.0.i75, null
  br i1 %.not, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit76
  invoke void @_ZN5scene12WeightBuffer8finalizeEv(ptr noundef nonnull align 8 dereferenceable(112) %.0.i75)
          to label %bb.ae unwind label %bb.ad

bb.ac:                                            ; preds = %.noexc71, %.lr.ph194
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.ad:                                            ; preds = %bb.ab
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.ae:                                            ; preds = %bb.ab, %_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit76
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.080.0192, i64 8 ; 2 uses
  %.not129 = icmp eq ptr %i.jj, %i.gm
  br i1 %.not129, label %._crit_edge195.loopexit, label %.lr.ph194

_ZN5scene11SkinnedMesh28recalculateBaseBoundingBoxesEv.exit: ; preds = %.noexc70, %.noexc69
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.jk = load ptr, ptr %0, align 8, !tbaa !186
  call void @_ZN5scene11SkinnedMesh20calculateBoundingBoxERKSt6vectorIN4core8CMatrix4IfEESaIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.core::aabbox3d") align 4 %3, ptr noundef nonnull align 8 dereferenceable(152) %i.jk, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.jl = load ptr, ptr %0, align 8, !tbaa !186
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jm, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !125
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.jn = load ptr, ptr %0, align 8, !tbaa !186
  store ptr null, ptr %0, align 8, !tbaa !186
  %i.jo = load ptr, ptr %2, align 8, !tbaa !124   ; 3 uses
  %.not.i.i.i77 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5scene11SkinnedMesh28recalculateBaseBoundingBoxesEv.exit
  %i.jp = load ptr, ptr %i.p, align 8, !tbaa !131
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = ptrtoint ptr %i.jo to i64
  %i.js = sub i64 %i.jq, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.js) #29
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit: ; preds = %_ZN5scene11SkinnedMesh28recalculateBaseBoundingBoxesEv.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret ptr %i.jn

thread-pre-split:                                 ; preds = %bb.w, %bb.ad, %bb.ac, %.loopexit.split-lp, %.loopexit, %.loopexit.split-lp133
  %.pn48.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp135, %.loopexit.split-lp133 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.jh, %bb.ac ], [ %i.gw, %bb.w ], [ %i.ji, %bb.ad ]
  %.pr = load ptr, ptr %2, align 8, !tbaa !124
  br label %bb.ag

bb.ag:                                            ; preds = %thread-pre-split, %.loopexit132, %.loopexit137, %.loopexit.split-lp138
  %i.jt = phi ptr [ %.pr, %thread-pre-split ], [ %i.bo, %.loopexit132 ], [ %i.bo, %.loopexit137 ], [ %i.bo, %.loopexit.split-lp138 ] ; 3 uses
  %.pn48.pn = phi { ptr, i32 } [ %.pn48.pn.ph, %thread-pre-split ], [ %lpad.loopexit134, %.loopexit132 ], [ %lpad.loopexit139, %.loopexit137 ], [ %lpad.loopexit.split-lp140, %.loopexit.split-lp138 ]
  %.not.i.i.i78 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit79, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !131
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = ptrtoint ptr %i.jt to i64
  %i.jy = sub i64 %i.jw, %i.jx
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.jy) #29
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit79

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit79: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn48.pn
}

declare void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene15SSkinMeshBuffer15addWeightBufferEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100
  switch i32 %i.b, label %bb.t [
    i32 0, label %bb.b
    i32 1, label %bb.h
    i32 2, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.f = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #33 ; 13 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc unwind label %bb.g, !inline_history !3 ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(28) %i.j)
          to label %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit unwind label %bb.g, !inline_history !3 ; 2 uses

_ZNK5scene11IMeshBuffer14getVertexCountEv.exit:   ; preds = %.noexc
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i32 1, ptr %i.q, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !138
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %i.s, align 8, !tbaa !229
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 1, ptr %i.t, align 8, !tbaa !230
  store ptr getelementptr inbounds nuw inrange(-24, 48) (i8, ptr @_ZTVN5scene12WeightBufferE, i64 24), ptr %i.f, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene12WeightBufferE, i64 96), ptr %i.p, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EEC2EmRKS3_.exit.thread.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit
  %i.v = mul nuw nsw i64 %i.o, 24                 ; 3 uses
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #33
          to label %.noexc5 unwind label %bb.g    ; 4 uses

.noexc5:                                          ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.w, i8 0, i64 %i.v, i1 false)
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.w, i64 %i.v
  br label %_ZNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EEC2EmRKS3_.exit.thread.i.i

_ZNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EEC2EmRKS3_.exit.thread.i.i: ; preds = %.noexc5, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit
  %.sink.i = phi ptr [ %i.w, %.noexc5 ], [ null, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit ]
  %.sink.i.i = phi ptr [ %i.x, %.noexc5 ], [ null, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %.noexc5 ], [ null, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit ]
  store ptr %.sink.i, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %.sink.i.i, ptr %i.z, align 8, !tbaa !231
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.y, align 8, !tbaa !232
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i8 0, ptr %i.aa, align 8, !tbaa !152
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store ptr null, ptr %i.ab, align 8, !tbaa !343
  store i32 1, ptr %i.r, align 8, !tbaa !138
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !104 ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN7irr_ptrIN5scene12WeightBufferEE5resetEPS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EEC2EmRKS3_.exit.thread.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 104 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !61 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ah = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.ae, align 8, !tbaa !61
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %bb.f, label %_ZN7irr_ptrIN5scene12WeightBufferEE5resetEPS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #31, !inline_history !341
  br label %_ZN7irr_ptrIN5scene12WeightBufferEE5resetEPS1_.exit

_ZN7irr_ptrIN5scene12WeightBufferEE5resetEPS1_.exit: ; preds = %_ZNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EEC2EmRKS3_.exit.thread.i.i, %bb.e, %bb.f
  store ptr %i.f, ptr %i.e, align 8, !tbaa !104
  br label %bb.u

bb.g:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %.noexc, %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.h:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !159
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 2 uses
  %i.ap = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #33 ; 13 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc6 unwind label %bb.m, !inline_history !3 ; 2 uses

.noexc6:                                          ; preds = %bb.h
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(28) %i.at)
          to label %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit8 unwind label %bb.m, !inline_history !3 ; 2 uses

_ZNK5scene11IMeshBuffer14getVertexCountEv.exit8:  ; preds = %.noexc6
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  store i32 1, ptr %i.ba, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !138
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr null, ptr %i.bc, align 8, !tbaa !229
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i32 1, ptr %i.bd, align 8, !tbaa !230
  store ptr getelementptr inbounds nuw inrange(-24, 48) (i8, ptr @_ZTVN5scene12WeightBufferE, i64 24), ptr %i.ap, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene12WeightBufferE, i64 96), ptr %i.az, align 8, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i9 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i.i9, label %_ZNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EEC2EmRKS3_.exit.thread.i.i14, label %.lr.ph.preheader.i.i.i.i.i.i10

.lr.ph.preheader.i.i.i.i.i.i10:                   ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit8
  %i.bf = mul nuw nsw i64 %i.ay, 24               ; 3 uses
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #33
          to label %.noexc15 unwind label %bb.m   ; 4 uses

.noexc15:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i.i10
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.ay
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bg, i8 0, i64 %i.bf, i1 false)
  %scevgep.i.i.i.i.i.i11 = getelementptr i8, ptr %i.bg, i64 %i.bf
  br label %_ZNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EEC2EmRKS3_.exit.thread.i.i14

_ZNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EEC2EmRKS3_.exit.thread.i.i14: ; preds = %.noexc15, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit8
  %.sink.i12 = phi ptr [ %i.bg, %.noexc15 ], [ null, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit8 ]
  %.sink.i.i12 = phi ptr [ %i.bh, %.noexc15 ], [ null, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit8 ]
  %.0.lcssa.i.i.i.i.i.i13 = phi ptr [ %scevgep.i.i.i.i.i.i11, %.noexc15 ], [ null, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit8 ]
  store ptr %.sink.i12, ptr %i.be, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store ptr %.sink.i.i12, ptr %i.bj, align 8, !tbaa !231
  store ptr %.0.lcssa.i.i.i.i.i.i13, ptr %i.bi, align 8, !tbaa !232
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store i8 0, ptr %i.bk, align 8, !tbaa !152
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  store ptr null, ptr %i.bl, align 8, !tbaa !343
  store i32 1, ptr %i.bb, align 8, !tbaa !138
  %i.bm = load ptr, ptr %i.ao, align 8, !tbaa !104 ; 3 uses
  %.not.i17 = icmp eq ptr %i.bm, null
  br i1 %.not.i17, label %_ZN7irr_ptrIN5scene12WeightBufferEE5resetEPS1_.exit19, label %bb.i

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EEC2EmRKS3_.exit.thread.i.i14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 96 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 104 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !61 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #30
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.br = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.br, ptr %i.bo, align 8, !tbaa !61
  %.not.i.i18 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i18, label %bb.l, label %_ZN7irr_ptrIN5scene12WeightBufferEE5resetEPS1_.exit19

bb.l:                                             ; preds = %bb.k
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(12) %i.bn) #31, !inline_history !341
  br label %_ZN7irr_ptrIN5scene12WeightBufferEE5resetEPS1_.exit19

_ZN7irr_ptrIN5scene12WeightBufferEE5resetEPS1_.exit19: ; preds = %_ZNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EEC2EmRKS3_.exit.thread.i.i14, %bb.k, %bb.l
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !104
  br label %bb.u

bb.m:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i10, %.noexc6, %bb.h
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.n:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !163
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 56 ; 2 uses
  %i.bz = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #33 ; 13 uses
  %i.ca = load ptr, ptr %0, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = invoke noundef ptr %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc20 unwind label %bb.s, !inline_history !3 ; 2 uses

.noexc20:                                         ; preds = %bb.n
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef i32 %i.cg(ptr noundef nonnull align 8 dereferenceable(28) %i.cd)
          to label %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit22 unwind label %bb.s, !inline_history !3 ; 2 uses

_ZNK5scene11IMeshBuffer14getVertexCountEv.exit22: ; preds = %.noexc20
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 104
  store i32 1, ptr %i.ck, align 8, !tbaa !61
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  store i32 0, ptr %i.cl, align 8, !tbaa !138
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr null, ptr %i.cm, align 8, !tbaa !229
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i32 1, ptr %i.cn, align 8, !tbaa !230
  store ptr getelementptr inbounds nuw inrange(-24, 48) (i8, ptr @_ZTVN5scene12WeightBufferE, i64 24), ptr %i.bz, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene12WeightBufferE, i64 96), ptr %i.cj, align 8, !tbaa !20
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i23 = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.i.i.i23, label %_ZNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EEC2EmRKS3_.exit.thread.i.i28, label %.lr.ph.preheader.i.i.i.i.i.i24

.lr.ph.preheader.i.i.i.i.i.i24:                   ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit22
  %i.cp = mul nuw nsw i64 %i.ci, 24               ; 3 uses
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #33
          to label %.noexc29 unwind label %bb.s   ; 4 uses

.noexc29:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i.i24
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.ci
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cq, i8 0, i64 %i.cp, i1 false)
  %scevgep.i.i.i.i.i.i25 = getelementptr i8, ptr %i.cq, i64 %i.cp
  br label %_ZNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EEC2EmRKS3_.exit.thread.i.i28

_ZNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EEC2EmRKS3_.exit.thread.i.i28: ; preds = %.noexc29, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit22
  %.sink.i26 = phi ptr [ %i.cq, %.noexc29 ], [ null, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit22 ]
  %.sink.i.i26 = phi ptr [ %i.cr, %.noexc29 ], [ null, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit22 ]
  %.0.lcssa.i.i.i.i.i.i27 = phi ptr [ %scevgep.i.i.i.i.i.i25, %.noexc29 ], [ null, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit22 ]
  store ptr %.sink.i26, ptr %i.co, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  store ptr %.sink.i.i26, ptr %i.ct, align 8, !tbaa !231
  store ptr %.0.lcssa.i.i.i.i.i.i27, ptr %i.cs, align 8, !tbaa !232
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  store i8 0, ptr %i.cu, align 8, !tbaa !152
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  store ptr null, ptr %i.cv, align 8, !tbaa !343
  store i32 1, ptr %i.cl, align 8, !tbaa !138
  %i.cw = load ptr, ptr %i.by, align 8, !tbaa !104 ; 3 uses
  %.not.i31 = icmp eq ptr %i.cw, null
  br i1 %.not.i31, label %_ZN7irr_ptrIN5scene12WeightBufferEE5resetEPS1_.exit33, label %bb.o

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EEC2EmRKS3_.exit.thread.i.i28
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 96 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 104 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !61 ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #30
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.db = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.db, ptr %i.cy, align 8, !tbaa !61
  %.not.i.i32 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i32, label %bb.r, label %_ZN7irr_ptrIN5scene12WeightBufferEE5resetEPS1_.exit33

bb.r:                                             ; preds = %bb.q
  %i.dc = load ptr, ptr %i.cx, align 8, !tbaa !20
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  tail call void %i.de(ptr noundef nonnull align 8 dereferenceable(12) %i.cx) #31, !inline_history !341
  br label %_ZN7irr_ptrIN5scene12WeightBufferEE5resetEPS1_.exit33

_ZN7irr_ptrIN5scene12WeightBufferEE5resetEPS1_.exit33: ; preds = %_ZNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EEC2EmRKS3_.exit.thread.i.i28, %bb.q, %bb.r
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !104
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i24, %.noexc20, %bb.n
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 250, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene15SSkinMeshBuffer15addWeightBufferEv) #30
  unreachable

bb.u:                                             ; preds = %_ZN7irr_ptrIN5scene12WeightBufferEE5resetEPS1_.exit33, %_ZN7irr_ptrIN5scene12WeightBufferEE5resetEPS1_.exit19, %_ZN7irr_ptrIN5scene12WeightBufferEE5resetEPS1_.exit
  ret void

bb.v:                                             ; preds = %bb.s, %bb.m, %bb.g
  %.sink = phi ptr [ %i.bz, %bb.s ], [ %i.ap, %bb.m ], [ %i.f, %bb.g ]
  %.pn = phi { ptr, i32 } [ %i.df, %bb.s ], [ %i.bv, %bb.m ], [ %i.al, %bb.g ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 112) #29
  resume { ptr, i32 } %.pn
}

declare void @_ZN5scene12WeightBuffer9addWeightEjtf(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, i16 noundef zeroext, float noundef) local_unnamed_addr #8

declare void @_ZN5scene12WeightBuffer8finalizeEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5scene18SkinnedMeshBuilder13addMeshBufferEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #33 ; 5 uses
  invoke void @_ZN5scene15SSkinMeshBufferC1EN5video13E_VERTEX_TYPEE(ptr noundef nonnull align 8 dereferenceable(288) %i.a, i32 noundef 0)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !186    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !135  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.l, ptr %i.n, align 4, !tbaa !130
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store ptr %i.q, ptr %i.m, align 8, !tbaa !135
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !39   ; 4 uses
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775804
  br i1 %i.v, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.w = ashr exact i64 %i.u, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 2305843009213693951)
  %i.aa = select i1 %i.y, i64 2305843009213693951, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #33 ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.u ; 2 uses
  store i32 %i.l, ptr %i.ad, align 4, !tbaa !130
  %i.ae = icmp sgt i64 %i.u, 0
  br i1 %i.ae, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr align 4 %i.r, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ai) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !39
  store ptr %i.af, ptr %i.m, align 8, !tbaa !135
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.aj, ptr %i.o, align 8, !tbaa !40
  %.pre = load ptr, ptr %0, align 8, !tbaa !186   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre5 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !134
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.c, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.ak = phi ptr [ %i.f, %bb.c ], [ %.pre5, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 4 uses
  %i.al = phi ptr [ %i.b, %bb.c ], [ %.pre, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57
  %.not.i = icmp eq ptr %i.ak, %i.ap
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !59
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !134
  br label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE9push_backERKS2_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !56 ; 4 uses
  %i.as = ptrtoint ptr %i.ak to i64
  %i.at = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.au = sub i64 %i.as, %i.at                    ; 5 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.j, label %_ZNKSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.aw = ashr exact i64 %i.au, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 1152921504606846975)
  %i.ba = select i1 %i.ay, i64 1152921504606846975, i64 %i.az ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #33 ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.au ; 2 uses
  store ptr %i.a, ptr %i.bd, align 8, !tbaa !59
  %i.be = icmp sgt i64 %i.au, 0
  br i1 %i.be, label %bb.k, label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %i.ar, i64 %i.au, i1 false)
  br label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
end_hunk_0
