Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4crow7requestaSEOS0_:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 6 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr                ; 2 uses
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26
  br i1 %i.cs, label %bb.u, label %.thread.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26
  br i1 %i.cs, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i33
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !166 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  tail call void @llvm.assume(i1 %i.cv)
  %.not21.i30 = icmp eq ptr %1, %0
  br i1 %.not21.i30, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35, label %bb.v, !prof !316

bb.v:                                             ; preds = %bb.u
  switch i64 %i.cu, label %bb.x [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.cw = load i8, ptr %i.cq, align 1, !tbaa !165
  store i8 %i.cw, ptr %i.cn, align 1, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %i.cq, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31: ; preds = %bb.x, %bb.w, %bb.v
  %i.cx = load i64, ptr %i.ct, align 8, !tbaa !166 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !166
  %i.cz = load ptr, ptr %i.cl, align 8, !tbaa !164
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1, !tbaa !165
  %.pre.i32 = load ptr, ptr %i.cm, align 8, !tbaa !164
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35

.thread.i34:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i33
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.cq, ptr %i.cl, align 8, !tbaa !164
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !166
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !166
  %i.de = load i64, ptr %i.cr, align 8, !tbaa !165
  store i64 %i.de, ptr %i.co, align 8, !tbaa !165
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27
  %i.df = load i64, ptr %i.co, align 8, !tbaa !165
  store ptr %i.cq, ptr %i.cl, align 8, !tbaa !164
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !166
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !166
  %i.dj = load i64, ptr %i.cr, align 8, !tbaa !165
  store i64 %i.dj, ptr %i.co, align 8, !tbaa !165
  %.not.i29 = icmp eq ptr %i.cn, null
  br i1 %.not.i29, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !164
  store i64 %i.df, ptr %i.cr, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28, %.thread.i34
  store ptr %i.cr, ptr %i.cm, align 8, !tbaa !164
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35: ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31, %bb.y, %bb.z
  %i.dk = phi ptr [ %.pre.i32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31 ], [ %i.cn, %bb.y ], [ %i.cr, %bb.z ], [ %i.cq, %bb.u ]
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i64 0, ptr %i.dl, align 8, !tbaa !166
  store i8 0, ptr %i.dk, align 1, !tbaa !165
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i64 32, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN4crow12query_stringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1399 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1400
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !tbaa !1437
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !1437
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1400
  store ptr %i.i, ptr %i.e, align 8, !tbaa !1400
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPcSaIS0_EEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.l) #41
  br label %_ZNSt6vectorIPcSaIS0_EEaSEOS2_.exit

_ZNSt6vectorIPcSaIS0_EEaSEOS2_.exit:              ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %1, align 8, !tbaa !164    ; 7 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !164    ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.r = icmp eq ptr %i.m, %i.q                   ; 2 uses
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt6vectorIPcSaIS0_EEaSEOS2_.exit
  br i1 %i.r, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt6vectorIPcSaIS0_EEaSEOS2_.exit
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !166  ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !316

bb.d:                                             ; preds = %bb.c
  switch i64 %i.t, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.m, align 1, !tbaa !165
  store i8 %i.v, ptr %i.n, align 1, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.m, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.w = load i64, ptr %i.s, align 8, !tbaa !166  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !166
  %i.y = load ptr, ptr %0, align 8, !tbaa !164
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !165
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !164
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %0, align 8, !tbaa !164
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !166
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !166
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !165
  store i64 %i.ad, ptr %i.o, align 8, !tbaa !165
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !165
  store ptr %i.m, ptr %0, align 8, !tbaa !164
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !166
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !166
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !165
  store i64 %i.ai, ptr %i.o, align 8, !tbaa !165
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.n, ptr %1, align 8, !tbaa !164
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.q, ptr %1, align 8, !tbaa !164
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.aj = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.n, %bb.g ], [ %i.q, %bb.h ], [ %i.m, %bb.c ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !166
  store i8 0, ptr %i.aj, align 1, !tbaa !165
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !1437 ; 8 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !1437 ; 3 uses
  %.not11 = icmp eq ptr %i.al, %i.am
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.al to i64
  %2 = ptrtoint ptr %i.m to i64                   ; 2 uses
  %i.ap = add i64 %i.an, -8
  %i.aq = sub i64 %i.ap, %i.ao                    ; 3 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 104
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.at = and i64 %i.aq, -8
  %i.au = getelementptr i8, ptr %i.al, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %bound0 = icmp ult ptr %i.al, %i.aw
  %bound1 = icmp ult ptr %0, %i.av
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ax = shl i64 %n.vec, 3
  %i.ay = getelementptr i8, ptr %i.al, i64 %i.ax
  %i.az = load ptr, ptr %0, align 8, !tbaa !164, !alias.scope !3181
  %broadcast.splatinsert24 = insertelement <2 x ptr> poison, ptr %i.az, i64 0
  %broadcast.splat25 = shufflevector <2 x ptr> %broadcast.splatinsert24, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ba = ptrtoint <2 x ptr> %broadcast.splat25 to <2 x i64>
  %i.bb = sub <2 x i64> %i.ba, %broadcast.splat   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.bc ; 3 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !551, !alias.scope !3182, !noalias !3181
  %wide.load26 = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !551, !alias.scope !3182, !noalias !3181
  %wide.gep = getelementptr inbounds i8, <2 x ptr> %wide.load, <2 x i64> %i.bb
  %wide.gep27 = getelementptr inbounds i8, <2 x ptr> %wide.load26, <2 x i64> %i.bb
  store <2 x ptr> %wide.gep, ptr %next.gep, align 8, !tbaa !551, !alias.scope !3182, !noalias !3181
  store <2 x ptr> %wide.gep27, ptr %i.bd, align 8, !tbaa !551, !alias.scope !3182, !noalias !3181
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !3179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.sroa.08.012.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph ], [ %i.ay, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret ptr %0

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.08.012 = phi ptr [ %i.bk, %scalar.ph ], [ %.sroa.08.012.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !164
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %2
  %i.bi = load ptr, ptr %.sroa.08.012, align 8, !tbaa !551
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.bh
  store ptr %i.bj, ptr %.sroa.08.012, align 8, !tbaa !551
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bk, %i.am
  br i1 %.not, label %._crit_edge, label %scalar.ph, !llvm.loop !3180
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEE7do_readEvENUlRKSt10error_codemE_D2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !314
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !315
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !125
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !125
  br label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40
  br label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_14mutable_bufferEZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEEEvRNS1_24base_implementation_typeERKT_iRT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(56) %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.asio::detail::reactive_socket_recv_op<asio::mutable_buffer, (lambda at /opt-bench/work/crow/Crow/include/crow/http_connection.h:396:15), asio::any_io_executor>::ptr", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store ptr %4, ptr %6, align 8, !tbaa !1440
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !448  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferEZN4crow10ConnectionINS3_17UnixSocketAdaptorENS3_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEE3ptr8allocateERSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !449
  br label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferEZN4crow10ConnectionINS3_17UnixSocketAdaptorENS3_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEE3ptr8allocateERSC_.exit

_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferEZN4crow10ConnectionINS3_17UnixSocketAdaptorENS3_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEE3ptr8allocateERSC_.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.g = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_11default_tagEEEPvT_PS1_mm(ptr noundef %i.f, i64 noundef 168, i64 noundef 8) ; 18 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1441
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !1442
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %1, align 8, !tbaa !485
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !488
  store ptr null, ptr %i.g, align 8, !tbaa !415
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferEZN4crow10ConnectionINS3_17UnixSocketAdaptorENS3_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEE11do_completeEPvPNS0_19scheduler_operationESB_m, ptr %i.m, align 8, !tbaa !417
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 0, ptr %i.n, align 8, !tbaa !671
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !705
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr @_ZN4asio6detail28reactive_socket_recv_op_baseINS_14mutable_bufferEE10do_performEPNS0_10reactor_opE, ptr %i.q, align 8, !tbaa !707
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i32 %i.j, ptr %i.r, align 8, !tbaa !774
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  store i8 %i.l, ptr %i.s, align 4, !tbaa !775
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !605
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i32 %3, ptr %i.u, align 8, !tbaa !776
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr null, ptr %i.w, align 8, !tbaa !312
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load <2 x ptr>, ptr %4, align 8, !tbaa !179
  store ptr null, ptr %i.x, align 8, !tbaa !312
  store <2 x ptr> %i.y, ptr %i.v, align 8, !tbaa !179
  store ptr null, ptr %4, align 8, !tbaa !1233
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !350
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferEZN4crow10ConnectionINS3_17UnixSocketAdaptorENS3_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEE3ptr8allocateERSC_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !572
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !714
  %i.af = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.ae()
          to label %_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i unwind label %bb.e, !inline_history !3183

_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i: ; preds = %bb.c, %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferEZN4crow10ConnectionINS3_17UnixSocketAdaptorENS3_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEE3ptr8allocateERSC_.exit
  %i.ag = phi ptr [ @_ZTIv, %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferEZN4crow10ConnectionINS3_17UnixSocketAdaptorENS3_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEE3ptr8allocateERSC_.exit ], [ %i.af, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !657 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, @_ZTSN4asio10io_context19basic_executor_typeISaIvELm0EEE
  br i1 %i.aj, label %_ZNKSt9type_infoeqERKS_.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i
end_hunk_0
