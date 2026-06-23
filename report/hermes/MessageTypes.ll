inline.NumInlined: 13240
inline.NumDeleted: 6779
begin_hunk_0_@_ZN8facebook6hermes3cdp7message7runtime9CallFrameaSEOS4_:bb.a
  store i64 %i.y, ptr %i.d, align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.c, ptr %i.b, align 8, !tbaa !9
  store i64 %i.u, ptr %i.g, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %i.b, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.z = phi ptr [ %i.c, %bb.f ], [ %i.g, %bb.g ], [ %i.f, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.aa, align 8, !tbaa !45
  store i8 0, ptr %i.z, align 1, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !9  ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !9  ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ai, label %bb.h, label %.thread.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i7

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !45 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %.not21.i9 = icmp eq ptr %1, %0
  br i1 %.not21.i9, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14, label %bb.i, !prof !301

bb.i:                                             ; preds = %bb.h
  switch i64 %i.ak, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !15
  store i8 %i.am, ptr %i.ad, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10: ; preds = %bb.k, %bb.j, %bb.i
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !45 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !45
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !15
  %.pre.i11 = load ptr, ptr %i.ac, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14

.thread.i13:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load i64, ptr %i.as, align 8, !tbaa !45
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !45
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !15
  store i64 %i.au, ptr %i.ae, align 8, !tbaa !15
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i6
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !15
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !45
  %i.az = load i64, ptr %i.ah, align 8, !tbaa !15
  store i64 %i.az, ptr %i.ae, align 8, !tbaa !15
  %.not.i8 = icmp eq ptr %i.ad, null
  br i1 %.not.i8, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i7
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !9
  store i64 %i.av, ptr %i.ah, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i7, %.thread.i13
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10, %bb.l, %bb.m
  %i.ba = phi ptr [ %i.ad, %bb.l ], [ %i.ah, %bb.m ], [ %i.ag, %bb.h ], [ %.pre.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.bb, align 8, !tbaa !45
  store i8 0, ptr %i.ba, align 1, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !9  ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !9  ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi                ; 2 uses
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14
  br i1 %i.bj, label %bb.n, label %.thread.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14
  br i1 %i.bj, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i16

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !45 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  tail call void @llvm.assume(i1 %i.bm)
  %.not21.i18 = icmp eq ptr %1, %0
  br i1 %.not21.i18, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit23, label %bb.o, !prof !301

bb.o:                                             ; preds = %bb.n
  switch i64 %i.bl, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i19
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.bn = load i8, ptr %i.bh, align 1, !tbaa !15
  store i8 %i.bn, ptr %i.be, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i19

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.bh, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i19: ; preds = %bb.q, %bb.p, %bb.o
  %i.bo = load i64, ptr %i.bk, align 8, !tbaa !45 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !45
  %i.bq = load ptr, ptr %i.bc, align 8, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !15
  %.pre.i20 = load ptr, ptr %i.bd, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit23

.thread.i22:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !45
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !45
  %i.bv = load i64, ptr %i.bi, align 8, !tbaa !15
  store i64 %i.bv, ptr %i.bf, align 8, !tbaa !15
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i15
  %i.bw = load i64, ptr %i.bf, align 8, !tbaa !15
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !9
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !45
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !45
  %i.ca = load i64, ptr %i.bi, align 8, !tbaa !15
  store i64 %i.ca, ptr %i.bf, align 8, !tbaa !15
  %.not.i17 = icmp eq ptr %i.be, null
  br i1 %.not.i17, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i16
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !9
  store i64 %i.bw, ptr %i.bi, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit23

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i16, %.thread.i22
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit23: ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i19, %bb.r, %bb.s
  %i.cb = phi ptr [ %i.be, %bb.r ], [ %i.bi, %bb.s ], [ %i.bh, %bb.n ], [ %.pre.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i19 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %i.cc, align 8, !tbaa !45
  store i8 0, ptr %i.cb, align 1, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes3cdp7message13valueFromJsonISt6vectorINS2_12heapProfiler23SamplingHeapProfileNodeESaIS6_EEEENSt9enable_ifIXsr9is_vectorIT_EE5valueESt10unique_ptrISA_St14default_deleteISA_EEE4typeEPKN6hermes6parser9JSONValueE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.1323") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.std::unique_ptr.245", align 8 ; 5 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !73
  %i.b = icmp eq i32 %i.a, 1
  %spec.select.i = select i1 %i.b, ptr %1, ptr null ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23, !noalias !2295 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !noalias !2295
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2147 ; 4 uses
  %i.f = icmp ugt i64 %i.e, 54901024028897475
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.191) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.not35 = icmp eq i64 %i.e, 0
  br i1 %.not35, label %.thread23, label %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS5_EE7reserveEm.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.i = mul nuw nsw i64 %i.e, 168
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #23 ; 3 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !727
  store ptr %i.j, ptr %i.h, align 8, !tbaa !729
  %i.k = getelementptr inbounds nuw [168 x i8], ptr %i.j, i64 %i.e
  store ptr %i.k, ptr %i.g, align 8, !tbaa !730
  %.pre = load i64, ptr %i.d, align 8, !tbaa !2147 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %.pre, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %.not27 = icmp eq i64 %.pre, 0
  br i1 %.not27, label %.thread23, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS5_EE7reserveEm.exit, %bb.e
  %.028 = phi ptr [ %i.u, %bb.e ], [ %i.l, %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS5_EE7reserveEm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.n = load ptr, ptr %.028, align 8, !tbaa !71  ; 3 uses
  %.not.i17 = icmp eq ptr %i.n, null
  br i1 %.not.i17, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.o = load i32, ptr %i.n, align 4, !tbaa !73, !noalias !2298
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN8facebook6hermes3cdp7message13valueFromJsonINS2_12heapProfiler23SamplingHeapProfileNodeEEENSt9enable_ifIXsr3std10is_base_ofINS2_12SerializableET_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE.exit, label %.loopexit

_ZN8facebook6hermes3cdp7message13valueFromJsonINS2_12heapProfiler23SamplingHeapProfileNodeEEENSt9enable_ifIXsr3std10is_base_ofINS2_12SerializableET_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE.exit: ; preds = %bb.d
  call void @_ZN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNode7tryMakeEPKN6hermes6parser10JSONObjectE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.245") align 8 %2, ptr noundef nonnull %i.n), !inline_history !763
  %.pr = load ptr, ptr %2, align 8, !tbaa !720    ; 4 uses
  %.not26 = icmp eq ptr %.pr, null
  br i1 %.not26, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook6hermes3cdp7message13valueFromJsonINS2_12heapProfiler23SamplingHeapProfileNodeEEENSt9enable_ifIXsr3std10is_base_ofINS2_12SerializableET_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE.exit
  %i.q = tail call noundef nonnull align 8 dereferenceable(168) ptr @_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(168) %.pr) ; 0 uses
  %i.r = load ptr, ptr %.pr, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(168) %.pr) #21, !inline_history !724
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.u = getelementptr inbounds nuw i8, ptr %.028, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.m
  br i1 %.not, label %.thread23, label %.lr.ph

.thread23:                                        ; preds = %bb.e, %bb.c, %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS5_EE7reserveEm.exit
  %i.v = ptrtoint ptr %i.c to i64
  store i64 %i.v, ptr %0, align 8, !tbaa !725
  br label %_ZNSt10unique_ptrISt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS6_EESt14default_deleteIS8_EED2Ev.exit

.loopexit:                                        ; preds = %_ZN8facebook6hermes3cdp7message13valueFromJsonINS2_12heapProfiler23SamplingHeapProfileNodeEEENSt9enable_ifIXsr3std10is_base_ofINS2_12SerializableET_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE.exit, %.lr.ph, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !2301
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !727  ; 3 uses
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !729  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.w, %.loopexit ] ; 3 uses
  %i.y = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !84
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(168) %.05.i.i.i.i.i) #21, !inline_history !733
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeEEvT_S7_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !732

_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeEEvT_S7_.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !727
  br label %_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeEEvT_S7_.exit.i.i.i

_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeEEvT_S7_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeEEvT_S7_.exitthread-pre-split.i.i.i, %.loopexit
  %i.ab = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeEEvT_S7_.exitthread-pre-split.i.i.i ], [ %i.w, %.loopexit ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i.i.i, label %_ZNKSt14default_deleteISt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS6_EEEclEPS8_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeEEvT_S7_.exit.i.i.i
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !730
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #22
  br label %_ZNKSt14default_deleteISt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS6_EEEclEPS8_.exit.i

_ZNKSt14default_deleteISt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS6_EEEclEPS8_.exit.i: ; preds = %bb.f, %_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeEEvT_S7_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 24) #22
  br label %_ZNSt10unique_ptrISt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS6_EESt14default_deleteIS8_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS6_EESt14default_deleteIS8_EED2Ev.exit: ; preds = %.thread23, %_ZNKSt14default_deleteISt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS6_EEEclEPS8_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not10.i.i = icmp eq ptr %0, %1
  br i1 %.not10.i.i, label %_ZSt12__relocate_aIPN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt19__relocate_object_aIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i
  %.012.i.i = phi ptr [ %i.bd, %_ZSt19__relocate_object_aIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i ], [ %2, %bb.a ] ; 15 uses
  %.0911.i.i = phi ptr [ %i.bc, %_ZSt19__relocate_object_aIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i ], [ %0, %bb.a ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message7runtime9CallFrameE, i64 16)>, ptr %.012.i.i, align 8, !tbaa !84, !alias.scope !2303, !noalias !2306
  %i.a = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !44, !alias.scope !2303, !noalias !2306
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !9, !alias.scope !2306, !noalias !2303 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 32 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45, !alias.scope !2306, !noalias !2303 ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false), !alias.scope !2308
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.d, ptr %i.a, align 8, !tbaa !9, !alias.scope !2303, !noalias !2306
  %i.k = load i64, ptr %i.e, align 8, !tbaa !15, !alias.scope !2306, !noalias !2303
  store i64 %i.k, ptr %i.c, align 8, !tbaa !15, !alias.scope !2303, !noalias !2306
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 24
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !45, !alias.scope !2306, !noalias !2303
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.l = phi i64 [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 24
  store i64 %i.l, ptr %i.n, align 8, !tbaa !45, !alias.scope !2303, !noalias !2306
  store ptr %i.e, ptr %i.b, align 8, !tbaa !9, !alias.scope !2306, !noalias !2303
  store i64 0, ptr %i.m, align 8, !tbaa !45, !alias.scope !2306, !noalias !2303
  store i8 0, ptr %i.e, align 8, !tbaa !15, !alias.scope !2306, !noalias !2303
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 64 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !44, !alias.scope !2303, !noalias !2306
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !9, !alias.scope !2306, !noalias !2303 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 64 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 56
  %i.v = load i64, ptr %i.u, align 8, !tbaa !45, !alias.scope !2306, !noalias !2303 ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false), !alias.scope !2308
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.r, ptr %i.o, align 8, !tbaa !9, !alias.scope !2303, !noalias !2306
  %i.y = load i64, ptr %i.s, align 8, !tbaa !15, !alias.scope !2306, !noalias !2303
  store i64 %i.y, ptr %i.q, align 8, !tbaa !15, !alias.scope !2303, !noalias !2306
  %.phi.trans.insert5.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 56
  %.pre6.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i, align 8, !tbaa !45, !alias.scope !2306, !noalias !2303
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i, %bb.c
  %i.z = phi i64 [ %.pre6.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i ], [ %i.v, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 56
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !45, !alias.scope !2303, !noalias !2306
  store ptr %i.s, ptr %i.p, align 8, !tbaa !9, !alias.scope !2306, !noalias !2303
  store i64 0, ptr %i.aa, align 8, !tbaa !45, !alias.scope !2306, !noalias !2303
  store i8 0, ptr %i.s, align 8, !tbaa !15, !alias.scope !2306, !noalias !2303
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 80 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 96 ; 3 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !44, !alias.scope !2303, !noalias !2306
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !9, !alias.scope !2306, !noalias !2303 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 96 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 88
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !45, !alias.scope !2306, !noalias !2303 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !2308
  br label %_ZSt19__relocate_object_aIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !9, !alias.scope !2303, !noalias !2306
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !15, !alias.scope !2306, !noalias !2303
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !15, !alias.scope !2303, !noalias !2306
  %.phi.trans.insert7.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 88
  %.pre8.i.i.i = load i64, ptr %.phi.trans.insert7.i.i.i, align 8, !tbaa !45, !alias.scope !2306, !noalias !2303
  br label %_ZSt19__relocate_object_aIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i

_ZSt19__relocate_object_aIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i.i.i.i, %bb.d
  %i.an = phi i64 [ %i.aj, %bb.d ], [ %.pre8.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 88
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !45, !alias.scope !2303, !noalias !2306
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !9, !alias.scope !2306, !noalias !2303
  store i64 0, ptr %i.ao, align 8, !tbaa !45, !alias.scope !2306, !noalias !2303
  store i8 0, ptr %i.ag, align 8, !tbaa !15, !alias.scope !2306, !noalias !2303
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !alias.scope !2308
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !alias.scope !2308
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 144
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 144 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !720, !alias.scope !2306, !noalias !2303
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !720, !alias.scope !2303, !noalias !2306
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 160
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 160
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !730, !alias.scope !2306, !noalias !2303
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !730, !alias.scope !2303, !noalias !2306
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false), !alias.scope !2306, !noalias !2303
  %i.ba = load ptr, ptr %.0911.i.i, align 8, !tbaa !84, !alias.scope !2306, !noalias !2303
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(168) %.0911.i.i) #21, !inline_history !2309
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 168 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 168 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !2310

_ZSt12__relocate_aIPN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %_ZSt19__relocate_object_aIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.bd, %_ZSt19__relocate_object_aIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(168) ptr @_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !729  ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !730
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeE, i64 16), ptr %i.b, align 8, !tbaa !84
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !9  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !45 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false)
  br label %_ZN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !9
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !15
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !15
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre23 = load i64, ptr %.phi.trans.insert22, align 8, !tbaa !45
  br label %_ZN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeC2EOS4_.exit

_ZN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i
  %i.bf = phi i64 [ %i.bb, %bb.e ], [ %.pre23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !45
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !9
  store i64 0, ptr %i.bg, align 8, !tbaa !45
  store i8 0, ptr %i.ay, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.bo = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !720
  store <2 x ptr> %i.bo, ptr %i.bm, align 8, !tbaa !720
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !730
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !730
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %i.bs = tail call noundef ptr @_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p, ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 168
  %i.bu = tail call noundef ptr @_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.bt, ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i16 = icmp eq ptr %i.c, null
  br i1 %.not.i16, label %_ZNSt12_Vector_baseIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeC2EOS4_.exit
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !730
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.by) #22
  br label %_ZNSt12_Vector_baseIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeC2EOS4_.exit, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !727
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !729
  %i.bz = getelementptr inbounds nuw [168 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !730
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN8facebook6hermes3cdp7message11valueToJsonINS2_12heapProfiler23SamplingHeapProfileNodeEEEPN6hermes6parser9JSONValueERKSt6vectorIT_SaISB_EERNS7_11JSONFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvh::SmallVector.1281", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !315
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 5, ptr %i.c, align 4, !tbaa !346
  %i.d = load ptr, ptr %0, align 8, !tbaa !720    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !720  ; 2 uses
  %.not9 = icmp eq ptr %i.d, %i.f
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.g = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = phi i32 [ %i.az, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 4 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !2208, !nonnull !349, !align !2227 ; 3 uses
  %i.k = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 16                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !16
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !24
  %i.w = add i64 %i.v, 7                          ; 2 uses
  %i.x = add i64 %i.w, %i.t
  %i.y = and i64 %i.x, 7
  %i.z = sub i64 %i.w, %i.y                       ; 3 uses
  store i64 %i.z, ptr %i.u, align 8, !tbaa !24
  %i.aa = icmp ugt i32 %i.h, 32766
  br i1 %i.aa, label %.critedge.i.i.i.i, label %bb.b, !prof !301

bb.b:                                             ; preds = %._crit_edge
  %i.ab = add i64 %i.z, %i.l                      ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 262144
  br i1 %i.ac, label %.critedge.i.i.i.i, label %bb.c, !prof !301

.critedge.i.i.i.i:                                ; preds = %bb.b, %._crit_edge
  %i.ad = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.l, i64 noundef 8) #21
  br label %_ZN6hermes6parser9JSONArraynwINS_28BacktrackingBumpPtrAllocatorEEEPvmRT_m.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ae = add i64 %i.z, %i.t
  %i.af = inttoptr i64 %i.ae to ptr
  store i64 %i.ab, ptr %i.u, align 8, !tbaa !24
  br label %_ZN6hermes6parser9JSONArraynwINS_28BacktrackingBumpPtrAllocatorEEEPvmRT_m.exit.i

_ZN6hermes6parser9JSONArraynwINS_28BacktrackingBumpPtrAllocatorEEEPvmRT_m.exit.i: ; preds = %bb.c, %.critedge.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.ad, %.critedge.i.i.i.i ], [ %i.af, %bb.c ] ; 4 uses
  store i32 1, ptr %.0.i.i.i.i, align 4, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store i64 %i.i, ptr %i.ag, align 8, !tbaa !2147
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  %i.ai = icmp ugt i32 %i.h, 1
  br i1 %i.ai, label %bb.d, label %bb.e, !prof !347

bb.d:                                             ; preds = %_ZN6hermes6parser9JSONArraynwINS_28BacktrackingBumpPtrAllocatorEEEPvmRT_m.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit

bb.e:                                             ; preds = %_ZN6hermes6parser9JSONArraynwINS_28BacktrackingBumpPtrAllocatorEEEPvmRT_m.exit.i
  %i.aj = icmp eq i32 %i.h, 1
  br i1 %i.aj, label %bb.f, label %_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !71
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !71
  br label %_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit

_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.al = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.a
  br i1 %i.am, label %_ZN4llvh11SmallVectorIPN6hermes6parser9JSONValueELj5EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit
  call void @free(ptr noundef %i.al) #21
  br label %_ZN4llvh11SmallVectorIPN6hermes6parser9JSONValueELj5EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes6parser9JSONValueELj5EED2Ev.exit: ; preds = %_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret ptr %.0.i.i.i.i

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit
  %.sroa.06.010 = phi ptr [ %i.ba, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit ], [ %i.d, %bb.a ] ; 3 uses
  %i.an = load ptr, ptr %.sroa.06.010, align 8, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.06.010, ptr noundef nonnull align 8 dereferenceable(120) %1) #21, !inline_history !2228
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !315 ; 2 uses
  %i.as = load i32, ptr %i.c, align 4, !tbaa !346
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit, label %bb.h, !prof !347

bb.h:                                             ; preds = %.lr.ph
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 8) #21
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !315
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit: ; preds = %.lr.ph, %bb.h
  %i.at = phi i32 [ %.pre.i, %bb.h ], [ %i.ar, %.lr.ph ]
  %i.au = load ptr, ptr %2, align 8, !tbaa !25
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = ptrtoint ptr %i.aq to i64
  store i64 %i.ax, ptr %i.aw, align 1
  %i.ay = load i32, ptr %i.b, align 8, !tbaa !315
  %i.az = add i32 %i.ay, 1                        ; 2 uses
  store i32 %i.az, ptr %i.b, align 8, !tbaa !315
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 168 ; 2 uses
  %.not = icmp eq ptr %i.ba, %i.f
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes3cdp7message13valueFromJsonISt6vectorINS2_12heapProfiler25SamplingHeapProfileSampleESaIS6_EEEENSt9enable_ifIXsr9is_vectorIT_EE5valueESt10unique_ptrISA_St14default_deleteISA_EEE4typeEPKN6hermes6parser9JSONValueE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.1335") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.std::unique_ptr.260", align 8 ; 5 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !73
  %i.b = icmp eq i32 %i.a, 1
  %spec.select.i = select i1 %i.b, ptr %1, ptr null ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23, !noalias !2311 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !noalias !2311
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2147 ; 4 uses
  %i.f = icmp ugt i64 %i.e, 288230376151711743
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.191) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.not34 = icmp eq i64 %i.e, 0
  br i1 %.not34, label %.thread, label %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE7reserveEm.exit: ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = shl nuw nsw i64 %i.e, 5
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23 ; 3 uses
  %.pre.pre = load i64, ptr %i.d, align 8, !tbaa !2147 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !767
  store ptr %i.i, ptr %3, align 8, !tbaa !769
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.e
  store ptr %i.j, ptr %i.g, align 8, !tbaa !770
  %i.k = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %.pre.pre, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not24 = icmp eq i64 %.pre.pre, 0
  br i1 %.not24, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE7reserveEm.exit
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.025 = phi ptr [ %i.k, %.lr.ph ], [ %i.y, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.m = load ptr, ptr %.025, align 8, !tbaa !71  ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.m, align 4, !tbaa !73, !noalias !2314
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN8facebook6hermes3cdp7message13valueFromJsonINS2_12heapProfiler25SamplingHeapProfileSampleEEENSt9enable_ifIXsr3std10is_base_ofINS2_12SerializableET_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE.exit, label %.loopexit

_ZN8facebook6hermes3cdp7message13valueFromJsonINS2_12heapProfiler25SamplingHeapProfileSampleEEENSt9enable_ifIXsr3std10is_base_ofINS2_12SerializableET_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE.exit: ; preds = %bb.e
  call void @_ZN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSample7tryMakeEPKN6hermes6parser10JSONObjectE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.260") align 8 %2, ptr noundef nonnull %i.m)
  %.pr = load ptr, ptr %2, align 8, !tbaa !747    ; 5 uses
  %.not23 = icmp eq ptr %.pr, null
  br i1 %.not23, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook6hermes3cdp7message13valueFromJsonINS2_12heapProfiler25SamplingHeapProfileSampleEEENSt9enable_ifIXsr3std10is_base_ofINS2_12SerializableET_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE.exit
  %i.p = load ptr, ptr %4, align 8, !tbaa !769    ; 4 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !770
  %.not.i.i15 = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleE, i64 16), ptr %i.p, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.t = load ptr, ptr %4, align 8, !tbaa !769
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.u, ptr %4, align 8, !tbaa !769
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(32) %.pr)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = load ptr, ptr %.pr, align 8, !tbaa !84
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %.pr) #21, !inline_history !751
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.y = getelementptr inbounds nuw i8, ptr %.025, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.y, %i.l
  br i1 %.not, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.i, %bb.c, %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE7reserveEm.exit
  %i.z = ptrtoint ptr %i.c to i64
  store i64 %i.z, ptr %0, align 8, !tbaa !765
  br label %_ZNSt10unique_ptrISt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS6_EESt14default_deleteIS8_EED2Ev.exit

.loopexit:                                        ; preds = %_ZN8facebook6hermes3cdp7message13valueFromJsonINS2_12heapProfiler25SamplingHeapProfileSampleEEENSt9enable_ifIXsr3std10is_base_ofINS2_12SerializableET_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE.exit, %bb.e, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !767 ; 3 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !769   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %i.aa, %.loopexit ] ; 3 uses
  %i.ac = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !84
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i.i) #21, !inline_history !773
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleEEvT_S7_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !772

_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleEEvT_S7_.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !767
  br label %_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleEEvT_S7_.exit.i.i.i

_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleEEvT_S7_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleEEvT_S7_.exitthread-pre-split.i.i.i, %.loopexit
  %i.af = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleEEvT_S7_.exitthread-pre-split.i.i.i ], [ %i.aa, %.loopexit ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i.i.i, label %_ZNKSt14default_deleteISt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS6_EEEclEPS8_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleEEvT_S7_.exit.i.i.i
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !770
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #22
  br label %_ZNKSt14default_deleteISt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS6_EEEclEPS8_.exit.i

_ZNKSt14default_deleteISt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS6_EEEclEPS8_.exit.i: ; preds = %bb.j, %_ZSt8_DestroyIPN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleEEvT_S7_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 24) #22
  br label %_ZNSt10unique_ptrISt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS6_EESt14default_deleteIS8_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS6_EESt14default_deleteIS8_EED2Ev.exit: ; preds = %.thread, %_ZNKSt14default_deleteISt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS6_EEEclEPS8_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !769  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !767    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #25
  unreachable

_ZNKSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleE, i64 16), ptr %i.q, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleE, i64 16), ptr %.012.i.i.i, align 8, !tbaa !84, !alias.scope !2319, !noalias !2322
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !alias.scope !2324
  %i.v = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !84, !alias.scope !2322, !noalias !2319
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2324
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i) #21, !noalias !2319, !inline_history !2325
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !2326

_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.y, %.lr.ph.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.af, %.lr.ph.i.i.i17 ], [ %i.z, %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ae, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2330)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleE, i64 16), ptr %.012.i.i.i18, align 8, !tbaa !84, !alias.scope !2327, !noalias !2330
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !alias.scope !2332
  %i.ac = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !84, !alias.scope !2330, !noalias !2327
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !2332
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19) #21, !noalias !2327, !inline_history !2325
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ae, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2326

_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.z, %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.af, %.lr.ph.i.i.i17 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !770
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aj) #22
  br label %_ZNSt12_Vector_baseIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler25SamplingHeapProfileSampleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !767
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !769
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !770
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN8facebook6hermes3cdp7message11valueToJsonINS2_12heapProfiler25SamplingHeapProfileSampleEEEPN6hermes6parser9JSONValueERKSt6vectorIT_SaISB_EERNS7_11JSONFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvh::SmallVector.1281", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !315
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 5, ptr %i.c, align 4, !tbaa !346
  %i.d = load ptr, ptr %0, align 8, !tbaa !747    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !747  ; 2 uses
  %.not9 = icmp eq ptr %i.d, %i.f
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.g = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = phi i32 [ %i.az, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 4 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !2208, !nonnull !349, !align !2227 ; 3 uses
  %i.k = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 16                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !16
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !24
  %i.w = add i64 %i.v, 7                          ; 2 uses
  %i.x = add i64 %i.w, %i.t
  %i.y = and i64 %i.x, 7
  %i.z = sub i64 %i.w, %i.y                       ; 3 uses
  store i64 %i.z, ptr %i.u, align 8, !tbaa !24
  %i.aa = icmp ugt i32 %i.h, 32766
  br i1 %i.aa, label %.critedge.i.i.i.i, label %bb.b, !prof !301

bb.b:                                             ; preds = %._crit_edge
  %i.ab = add i64 %i.z, %i.l                      ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 262144
  br i1 %i.ac, label %.critedge.i.i.i.i, label %bb.c, !prof !301

.critedge.i.i.i.i:                                ; preds = %bb.b, %._crit_edge
  %i.ad = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.l, i64 noundef 8) #21
  br label %_ZN6hermes6parser9JSONArraynwINS_28BacktrackingBumpPtrAllocatorEEEPvmRT_m.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ae = add i64 %i.z, %i.t
  %i.af = inttoptr i64 %i.ae to ptr
  store i64 %i.ab, ptr %i.u, align 8, !tbaa !24
  br label %_ZN6hermes6parser9JSONArraynwINS_28BacktrackingBumpPtrAllocatorEEEPvmRT_m.exit.i

_ZN6hermes6parser9JSONArraynwINS_28BacktrackingBumpPtrAllocatorEEEPvmRT_m.exit.i: ; preds = %bb.c, %.critedge.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.ad, %.critedge.i.i.i.i ], [ %i.af, %bb.c ] ; 4 uses
  store i32 1, ptr %.0.i.i.i.i, align 4, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store i64 %i.i, ptr %i.ag, align 8, !tbaa !2147
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  %i.ai = icmp ugt i32 %i.h, 1
  br i1 %i.ai, label %bb.d, label %bb.e, !prof !347

bb.d:                                             ; preds = %_ZN6hermes6parser9JSONArraynwINS_28BacktrackingBumpPtrAllocatorEEEPvmRT_m.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit

bb.e:                                             ; preds = %_ZN6hermes6parser9JSONArraynwINS_28BacktrackingBumpPtrAllocatorEEEPvmRT_m.exit.i
  %i.aj = icmp eq i32 %i.h, 1
  br i1 %i.aj, label %bb.f, label %_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !71
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !71
  br label %_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit

_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.al = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.a
  br i1 %i.am, label %_ZN4llvh11SmallVectorIPN6hermes6parser9JSONValueELj5EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit
  call void @free(ptr noundef %i.al) #21
  br label %_ZN4llvh11SmallVectorIPN6hermes6parser9JSONValueELj5EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes6parser9JSONValueELj5EED2Ev.exit: ; preds = %_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret ptr %.0.i.i.i.i

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit
  %.sroa.06.010 = phi ptr [ %i.ba, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit ], [ %i.d, %bb.a ] ; 3 uses
  %i.an = load ptr, ptr %.sroa.06.010, align 8, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.06.010, ptr noundef nonnull align 8 dereferenceable(120) %1) #21, !inline_history !2228
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !315 ; 2 uses
  %i.as = load i32, ptr %i.c, align 4, !tbaa !346
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit, label %bb.h, !prof !347

bb.h:                                             ; preds = %.lr.ph
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 8) #21
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !315
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit: ; preds = %.lr.ph, %bb.h
  %i.at = phi i32 [ %.pre.i, %bb.h ], [ %i.ar, %.lr.ph ]
  %i.au = load ptr, ptr %2, align 8, !tbaa !25
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = ptrtoint ptr %i.aq to i64
  store i64 %i.ax, ptr %i.aw, align 1
  %i.ay = load i32, ptr %i.b, align 8, !tbaa !315
  %i.az = add i32 %i.ay, 1                        ; 2 uses
  store i32 %i.az, ptr %i.b, align 8, !tbaa !315
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ba, %i.f
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes3cdp7message13valueFromJsonISt6vectorIxSaIxEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.1347") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !73
  %i.b = icmp eq i32 %i.a, 1
  %spec.select.i = select i1 %i.b, ptr %1, ptr null ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23, !noalias !2333 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !noalias !2333
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2147 ; 4 uses
  %i.f = icmp ugt i64 %i.e, 1152921504606846975
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.191) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %.not38 = icmp eq i64 %i.e, 0
  br i1 %.not38, label %.thread, label %_ZNSt6vectorIxSaIxEE7reserveEm.exit

_ZNSt6vectorIxSaIxEE7reserveEm.exit:              ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = shl nuw nsw i64 %i.e, 3
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #23 ; 3 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !812
  store ptr %i.j, ptr %i.h, align 8, !tbaa !2336
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.e
  store ptr %i.k, ptr %i.g, align 8, !tbaa !815
  %.pre = load i64, ptr %i.d, align 8, !tbaa !2147 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %.pre, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %.not30 = icmp eq i64 %.pre, 0
  br i1 %.not30, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIxSaIxEE7reserveEm.exit
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %.031 = phi ptr [ %i.l, %.lr.ph ], [ %i.am, %bb.l ] ; 2 uses
  %i.n = load ptr, ptr %.031, align 8, !tbaa !71  ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.n, align 4, !tbaa !73, !noalias !2337
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !77, !noalias !2337
  %i.s = fptosi double %i.r to i64                ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !2336   ; 4 uses
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !815
  %.not.i.i15 = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.s, ptr %i.t, align 8, !tbaa !82
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %2, align 8, !tbaa !2336
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !812  ; 4 uses
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.i, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #25
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #23 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  store i64 %i.s, ptr %i.ai, align 8, !tbaa !82
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.j, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.w, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #22
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !812
  store ptr %i.ak, ptr %2, align 8, !tbaa !2336
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.al, ptr %i.g, align 8, !tbaa !815
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.m
  br i1 %.not, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.l, %bb.c, %_ZNSt6vectorIxSaIxEE7reserveEm.exit
  %i.an = ptrtoint ptr %i.c to i64
  store i64 %i.an, ptr %0, align 8, !tbaa !808
  br label %_ZNSt10unique_ptrISt6vectorIxSaIxEESt14default_deleteIS2_EED2Ev.exit

bb.m:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !2340
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !812 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorIxSaIxEEEclEPS2_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !815
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #22
  br label %_ZNKSt14default_deleteISt6vectorIxSaIxEEEclEPS2_.exit.i

_ZNKSt14default_deleteISt6vectorIxSaIxEEEclEPS2_.exit.i: ; preds = %bb.n, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 24) #22
  br label %_ZNSt10unique_ptrISt6vectorIxSaIxEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorIxSaIxEESt14default_deleteIS2_EED2Ev.exit: ; preds = %.thread, %_ZNKSt14default_deleteISt6vectorIxSaIxEEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes3cdp7message13valueFromJsonISt6vectorINS2_8profiler16PositionTickInfoESaIS6_EEEENSt9enable_ifIXsr9is_vectorIT_EE5valueESt10unique_ptrISA_St14default_deleteISA_EEE4typeEPKN6hermes6parser9JSONValueE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.1358") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.std::unique_ptr.281", align 8 ; 6 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !73
  %i.b = icmp eq i32 %i.a, 1
  %spec.select.i = select i1 %i.b, ptr %1, ptr null ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23, !noalias !2342 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !noalias !2342
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2147 ; 4 uses
  %i.f = icmp ugt i64 %i.e, 384307168202282325
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.191) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.not34 = icmp eq i64 %i.e, 0
  br i1 %.not34, label %.thread, label %_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE7reserveEm.exit: ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = mul nuw nsw i64 %i.e, 24
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23 ; 3 uses
  %.pre.pre = load i64, ptr %i.d, align 8, !tbaa !2147 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !819
  store ptr %i.i, ptr %3, align 8, !tbaa !821
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.e
  store ptr %i.j, ptr %i.g, align 8, !tbaa !822
  %i.k = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %.pre.pre, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not23 = icmp eq i64 %.pre.pre, 0
  br i1 %.not23, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE7reserveEm.exit
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.024 = phi ptr [ %i.k, %.lr.ph ], [ %i.x, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.m = load ptr, ptr %.024, align 8, !tbaa !71
  call void @_ZN8facebook6hermes3cdp7message13valueFromJsonINS2_8profiler16PositionTickInfoEEENSt9enable_ifIXsr3std10is_base_ofINS2_12SerializableET_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.281") align 8 %2, ptr noundef %i.m)
  %i.n = load ptr, ptr %2, align 8, !tbaa !784    ; 4 uses
  %.not22 = icmp eq ptr %i.n, null
  br i1 %.not22, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %4, align 8, !tbaa !821    ; 4 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !822
  %.not.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE9push_backEOS5_.exit, label %_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message8profiler16PositionTickInfoE, i64 16), ptr %i.o, align 8, !tbaa !84
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.s = load ptr, ptr %4, align 8, !tbaa !821
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %4, align 8, !tbaa !821
  br label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEclEPS5_.exit.i

_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.e
  call void @_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  %.pr.pre = load ptr, ptr %2, align 8, !tbaa !784 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %bb.f, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEclEPS5_.exit.i

_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEclEPS5_.exit.i: ; preds = %_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE9push_backEOS5_.exit
  %.pr39 = phi ptr [ %i.n, %_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE9push_backEOS5_.exit.thread ], [ %.pr.pre, %_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  %i.u = load ptr, ptr %.pr39, align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(24) %.pr39) #21, !inline_history !788
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.x = getelementptr inbounds nuw i8, ptr %.024, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.l
  br i1 %.not, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.f, %bb.c, %_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE7reserveEm.exit
  %i.y = ptrtoint ptr %i.c to i64
  store i64 %i.y, ptr %0, align 8, !tbaa !817
  br label %_ZNSt10unique_ptrISt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS6_EESt14default_deleteIS8_EED2Ev.exit

bb.g:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !2345
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !819  ; 3 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !821   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.z, %bb.g ] ; 3 uses
  %i.ab = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !84
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i.i.i) #21, !inline_history !825
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEvT_S7_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !824

_ZSt8_DestroyIPN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEvT_S7_.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !819
  br label %_ZSt8_DestroyIPN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEvT_S7_.exit.i.i.i

_ZSt8_DestroyIPN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEvT_S7_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEvT_S7_.exitthread-pre-split.i.i.i, %bb.g
  %i.ae = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEvT_S7_.exitthread-pre-split.i.i.i ], [ %i.z, %bb.g ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i.i.i, label %_ZNKSt14default_deleteISt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS6_EEEclEPS8_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEvT_S7_.exit.i.i.i
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !822
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #22
  br label %_ZNKSt14default_deleteISt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS6_EEEclEPS8_.exit.i

_ZNKSt14default_deleteISt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS6_EEEclEPS8_.exit.i: ; preds = %bb.h, %_ZSt8_DestroyIPN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEvT_S7_.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 24) #22
  br label %_ZNSt10unique_ptrISt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS6_EESt14default_deleteIS8_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS6_EESt14default_deleteIS8_EED2Ev.exit: ; preds = %.thread, %_ZNKSt14default_deleteISt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS6_EEEclEPS8_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes3cdp7message13valueFromJsonINS2_8profiler16PositionTickInfoEEENSt9enable_ifIXsr3std10is_base_ofINS2_12SerializableET_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.281") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !73
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !786
  br label %_ZN8facebook6hermes3cdp7message8profiler16PositionTickInfo7tryMakeEPKN6hermes6parser10JSONObjectE.exit

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2347)
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23, !noalias !2350 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message8profiler16PositionTickInfoE, i64 16), ptr %i.c, align 8, !tbaa !84, !noalias !2350
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !2350
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65, !noalias !2347
  %i.g = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr nonnull @.str.86, i64 4), !noalias !2347 ; 2 uses
  %i.h = extractvalue { i64, i8 } %i.g, 1
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEclEPS5_.exit.i.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit
  %i.j = extractvalue { i64, i8 } %i.g, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !71, !noalias !2347 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEclEPS5_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i
  %i.o = load i32, ptr %i.m, align 4, !tbaa !73, !noalias !2353
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %bb.e, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEclEPS5_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !77, !noalias !2353
  %i.s = fptosi double %i.r to i64
  store i64 %i.s, ptr %i.d, align 8, !tbaa !82, !noalias !2347
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !65, !noalias !2347
  %i.v = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr nonnull @.str.87, i64 5), !noalias !2347 ; 2 uses
  %i.w = extractvalue { i64, i8 } %i.v, 1
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i3.i, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEclEPS5_.exit.i.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i3.i: ; preds = %bb.e
  %i.y = extractvalue { i64, i8 } %i.v, 0
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !71, !noalias !2347 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEclEPS5_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i3.i
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !73, !noalias !2356
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %bb.g, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEclEPS5_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !77, !noalias !2356
  %i.ag = fptosi double %i.af to i64
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !82, !noalias !2347
  %i.ah = ptrtoint ptr %i.c to i64
  store i64 %i.ah, ptr %0, align 8, !tbaa !784, !alias.scope !2347
  br label %_ZN8facebook6hermes3cdp7message8profiler16PositionTickInfo7tryMakeEPKN6hermes6parser10JSONObjectE.exit

_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEclEPS5_.exit.i.i: ; preds = %bb.f, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i3.i, %bb.e, %bb.d, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit
  store ptr null, ptr %0, align 8, !tbaa !786, !alias.scope !2347
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !84, !noalias !2347
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !2347
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #21, !noalias !2347, !inline_history !2359
  br label %_ZN8facebook6hermes3cdp7message8profiler16PositionTickInfo7tryMakeEPKN6hermes6parser10JSONObjectE.exit

_ZN8facebook6hermes3cdp7message8profiler16PositionTickInfo7tryMakeEPKN6hermes6parser10JSONObjectE.exit: ; preds = %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8profiler16PositionTickInfoEEclEPS5_.exit.i.i, %bb.g, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !821  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !819    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #25
  unreachable

_ZNKSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message8profiler16PositionTickInfoE, i64 16), ptr %i.q, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2363)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message8profiler16PositionTickInfoE, i64 16), ptr %.012.i.i.i, align 8, !tbaa !84, !alias.scope !2360, !noalias !2363
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !alias.scope !2365
  %i.v = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !84, !alias.scope !2363, !noalias !2360
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2365
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i) #21, !noalias !2360, !inline_history !2366
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !2367

_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.y, %.lr.ph.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.af, %.lr.ph.i.i.i17 ], [ %i.z, %_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ae, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN8facebook6hermes3cdp7message8profiler16PositionTickInfoESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2371)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message8profiler16PositionTickInfoE, i64 16), ptr %.012.i.i.i18, align 8, !tbaa !84, !alias.scope !2368, !noalias !2371
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
end_hunk_1
begin_hunk_2_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2431)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !44, !alias.scope !2428, !noalias !2431
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !9, !alias.scope !2431, !noalias !2428 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45, !alias.scope !2431, !noalias !2428 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !2433
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !9, !alias.scope !2428, !noalias !2431
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !15, !alias.scope !2431, !noalias !2428
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !15, !alias.scope !2428, !noalias !2431
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !45, !alias.scope !2431, !noalias !2428
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !45, !alias.scope !2428, !noalias !2431
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !9, !alias.scope !2431, !noalias !2428
  store i64 0, ptr %i.bc, align 8, !tbaa !45, !alias.scope !2431, !noalias !2428
  store i8 0, ptr %i.au, align 8, !tbaa !15, !alias.scope !2431, !noalias !2428
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !2421

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1038
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !1034
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !1037
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !1038
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN8facebook6hermes3cdp7message11valueToJsonINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPN6hermes6parser9JSONValueERKSt6vectorIT_SaISF_EERNSB_11JSONFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvh::SmallVector.1281", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !315
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 5, ptr %i.c, align 4, !tbaa !346
  %i.d = load ptr, ptr %0, align 8, !tbaa !1039   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1039 ; 2 uses
  %.not9 = icmp eq ptr %i.d, %i.f
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.g = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = phi i32 [ %i.az, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 4 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !2208, !nonnull !349, !align !2227 ; 3 uses
  %i.k = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 16                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !16
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !24
  %i.w = add i64 %i.v, 7                          ; 2 uses
  %i.x = add i64 %i.w, %i.t
  %i.y = and i64 %i.x, 7
  %i.z = sub i64 %i.w, %i.y                       ; 3 uses
  store i64 %i.z, ptr %i.u, align 8, !tbaa !24
  %i.aa = icmp ugt i32 %i.h, 32766
  br i1 %i.aa, label %.critedge.i.i.i.i, label %bb.b, !prof !301

bb.b:                                             ; preds = %._crit_edge
  %i.ab = add i64 %i.z, %i.l                      ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 262144
  br i1 %i.ac, label %.critedge.i.i.i.i, label %bb.c, !prof !301

.critedge.i.i.i.i:                                ; preds = %bb.b, %._crit_edge
  %i.ad = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.l, i64 noundef 8) #21
  br label %_ZN6hermes6parser9JSONArraynwINS_28BacktrackingBumpPtrAllocatorEEEPvmRT_m.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ae = add i64 %i.z, %i.t
  %i.af = inttoptr i64 %i.ae to ptr
  store i64 %i.ab, ptr %i.u, align 8, !tbaa !24
  br label %_ZN6hermes6parser9JSONArraynwINS_28BacktrackingBumpPtrAllocatorEEEPvmRT_m.exit.i

_ZN6hermes6parser9JSONArraynwINS_28BacktrackingBumpPtrAllocatorEEEPvmRT_m.exit.i: ; preds = %bb.c, %.critedge.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.ad, %.critedge.i.i.i.i ], [ %i.af, %bb.c ] ; 4 uses
  store i32 1, ptr %.0.i.i.i.i, align 4, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store i64 %i.i, ptr %i.ag, align 8, !tbaa !2147
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  %i.ai = icmp ugt i32 %i.h, 1
  br i1 %i.ai, label %bb.d, label %bb.e, !prof !347

bb.d:                                             ; preds = %_ZN6hermes6parser9JSONArraynwINS_28BacktrackingBumpPtrAllocatorEEEPvmRT_m.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit

bb.e:                                             ; preds = %_ZN6hermes6parser9JSONArraynwINS_28BacktrackingBumpPtrAllocatorEEEPvmRT_m.exit.i
  %i.aj = icmp eq i32 %i.h, 1
  br i1 %i.aj, label %bb.f, label %_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !71
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !71
  br label %_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit

_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.al = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.a
  br i1 %i.am, label %_ZN4llvh11SmallVectorIPN6hermes6parser9JSONValueELj5EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit
  call void @free(ptr noundef %i.al) #21
  br label %_ZN4llvh11SmallVectorIPN6hermes6parser9JSONValueELj5EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes6parser9JSONValueELj5EED2Ev.exit: ; preds = %_ZNK6hermes6parser11JSONFactory8newArrayIPPNS0_9JSONValueEEEPNS0_9JSONArrayEmT_S8_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret ptr %.0.i.i.i.i

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit
  %.sroa.06.010 = phi ptr [ %i.ba, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit ], [ %i.d, %bb.a ] ; 3 uses
  %i.an = load ptr, ptr %.sroa.06.010, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !45
  %i.aq = call noundef ptr @_ZN6hermes6parser11JSONFactory9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %i.an, i64 %i.ap) #21
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !315 ; 2 uses
  %i.as = load i32, ptr %i.c, align 4, !tbaa !346
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit, label %bb.h, !prof !347

bb.h:                                             ; preds = %.lr.ph
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 8) #21
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !315
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6parser9JSONValueELb1EE9push_backERKS4_.exit: ; preds = %.lr.ph, %bb.h
  %i.at = phi i32 [ %.pre.i, %bb.h ], [ %i.ar, %.lr.ph ]
  %i.au = load ptr, ptr %2, align 8, !tbaa !25
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = ptrtoint ptr %i.aq to i64
  store i64 %i.ax, ptr %i.aw, align 1
  %i.ay = load i32, ptr %i.b, align 8, !tbaa !315
  %i.az = add i32 %i.ay, 1                        ; 2 uses
  store i32 %i.az, ptr %i.b, align 8, !tbaa !315
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ba, %i.f
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes3cdp7message13valueFromJsonISt6vectorINS2_8debugger14ScriptPositionESaIS6_EEEENSt9enable_ifIXsr9is_vectorIT_EE5valueESt10unique_ptrISA_St14default_deleteISA_EEE4typeEPKN6hermes6parser9JSONValueE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.1397") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.std::unique_ptr.237", align 8 ; 6 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !73
  %i.b = icmp eq i32 %i.a, 1
  %spec.select.i = select i1 %i.b, ptr %1, ptr null ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23, !noalias !2434 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !noalias !2434
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2147 ; 4 uses
  %i.f = icmp ugt i64 %i.e, 384307168202282325
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.191) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.not34 = icmp eq i64 %i.e, 0
  br i1 %.not34, label %.thread, label %_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE7reserveEm.exit: ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = mul nuw nsw i64 %i.e, 24
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23 ; 3 uses
  %.pre.pre = load i64, ptr %i.d, align 8, !tbaa !2147 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !1055
  store ptr %i.i, ptr %3, align 8, !tbaa !1057
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.e
  store ptr %i.j, ptr %i.g, align 8, !tbaa !1058
  %i.k = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %.pre.pre, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not23 = icmp eq i64 %.pre.pre, 0
  br i1 %.not23, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE7reserveEm.exit
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.024 = phi ptr [ %i.k, %.lr.ph ], [ %i.x, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.m = load ptr, ptr %.024, align 8, !tbaa !71
  call void @_ZN8facebook6hermes3cdp7message13valueFromJsonINS2_8debugger14ScriptPositionEEENSt9enable_ifIXsr3std10is_base_ofINS2_12SerializableET_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.237") align 8 %2, ptr noundef %i.m)
  %i.n = load ptr, ptr %2, align 8, !tbaa !701    ; 4 uses
  %.not22 = icmp eq ptr %i.n, null
  br i1 %.not22, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %4, align 8, !tbaa !1057   ; 4 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !1058
  %.not.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE9push_backEOS5_.exit, label %_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message8debugger14ScriptPositionE, i64 16), ptr %i.o, align 8, !tbaa !84
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.s = load ptr, ptr %4, align 8, !tbaa !1057
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %4, align 8, !tbaa !1057
  br label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8debugger14ScriptPositionEEclEPS5_.exit.i

_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.e
  call void @_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  %.pr.pre = load ptr, ptr %2, align 8, !tbaa !701 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %bb.f, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8debugger14ScriptPositionEEclEPS5_.exit.i

_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8debugger14ScriptPositionEEclEPS5_.exit.i: ; preds = %_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE9push_backEOS5_.exit
  %.pr39 = phi ptr [ %i.n, %_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE9push_backEOS5_.exit.thread ], [ %.pr.pre, %_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  %i.u = load ptr, ptr %.pr39, align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(24) %.pr39) #21, !inline_history !705
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8debugger14ScriptPositionEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.x = getelementptr inbounds nuw i8, ptr %.024, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.l
  br i1 %.not, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.f, %bb.c, %_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE7reserveEm.exit
  %i.y = ptrtoint ptr %i.c to i64
  store i64 %i.y, ptr %0, align 8, !tbaa !1053
  br label %_ZNSt10unique_ptrISt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS6_EESt14default_deleteIS8_EED2Ev.exit

bb.g:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !1055 ; 3 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !1057  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook6hermes3cdp7message8debugger14ScriptPositionEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.z, %bb.g ] ; 3 uses
  %i.ab = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !84
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i.i.i) #21, !inline_history !1061
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook6hermes3cdp7message8debugger14ScriptPositionEEvT_S7_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1060

_ZSt8_DestroyIPN8facebook6hermes3cdp7message8debugger14ScriptPositionEEvT_S7_.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !1055
  br label %_ZSt8_DestroyIPN8facebook6hermes3cdp7message8debugger14ScriptPositionEEvT_S7_.exit.i.i.i

_ZSt8_DestroyIPN8facebook6hermes3cdp7message8debugger14ScriptPositionEEvT_S7_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN8facebook6hermes3cdp7message8debugger14ScriptPositionEEvT_S7_.exitthread-pre-split.i.i.i, %bb.g
  %i.ae = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN8facebook6hermes3cdp7message8debugger14ScriptPositionEEvT_S7_.exitthread-pre-split.i.i.i ], [ %i.z, %bb.g ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i.i.i, label %_ZNKSt14default_deleteISt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS6_EEEclEPS8_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN8facebook6hermes3cdp7message8debugger14ScriptPositionEEvT_S7_.exit.i.i.i
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !1058
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #22
  br label %_ZNKSt14default_deleteISt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS6_EEEclEPS8_.exit.i

_ZNKSt14default_deleteISt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS6_EEEclEPS8_.exit.i: ; preds = %bb.h, %_ZSt8_DestroyIPN8facebook6hermes3cdp7message8debugger14ScriptPositionEEvT_S7_.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 24) #22
  br label %_ZNSt10unique_ptrISt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS6_EESt14default_deleteIS8_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS6_EESt14default_deleteIS8_EED2Ev.exit: ; preds = %.thread, %_ZNKSt14default_deleteISt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS6_EEEclEPS8_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes3cdp7message13valueFromJsonINS2_8debugger14ScriptPositionEEENSt9enable_ifIXsr3std10is_base_ofINS2_12SerializableET_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.237") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !73
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !703
  br label %_ZN8facebook6hermes3cdp7message8debugger14ScriptPosition7tryMakeEPKN6hermes6parser10JSONObjectE.exit

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2439)
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23, !noalias !2442 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message8debugger14ScriptPositionE, i64 16), ptr %i.c, align 8, !tbaa !84, !noalias !2442
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !2442
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65, !noalias !2439
  %i.g = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr nonnull @.str.40, i64 10), !noalias !2439 ; 2 uses
  %i.h = extractvalue { i64, i8 } %i.g, 1
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8debugger14ScriptPositionEEclEPS5_.exit.i.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit
  %i.j = extractvalue { i64, i8 } %i.g, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !71, !noalias !2439 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8debugger14ScriptPositionEEclEPS5_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i
  %i.o = load i32, ptr %i.m, align 4, !tbaa !73, !noalias !2445
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %bb.e, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8debugger14ScriptPositionEEclEPS5_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !77, !noalias !2445
  %i.s = fptosi double %i.r to i64
  store i64 %i.s, ptr %i.d, align 8, !tbaa !82, !noalias !2439
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !65, !noalias !2439
  %i.v = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr nonnull @.str.41, i64 12), !noalias !2439 ; 2 uses
  %i.w = extractvalue { i64, i8 } %i.v, 1
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i3.i, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8debugger14ScriptPositionEEclEPS5_.exit.i.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i3.i: ; preds = %bb.e
  %i.y = extractvalue { i64, i8 } %i.v, 0
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !71, !noalias !2439 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8debugger14ScriptPositionEEclEPS5_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i3.i
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !73, !noalias !2448
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %bb.g, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8debugger14ScriptPositionEEclEPS5_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !77, !noalias !2448
  %i.ag = fptosi double %i.af to i64
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !82, !noalias !2439
  %i.ah = ptrtoint ptr %i.c to i64
  store i64 %i.ah, ptr %0, align 8, !tbaa !701, !alias.scope !2439
  br label %_ZN8facebook6hermes3cdp7message8debugger14ScriptPosition7tryMakeEPKN6hermes6parser10JSONObjectE.exit

_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8debugger14ScriptPositionEEclEPS5_.exit.i.i: ; preds = %bb.f, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i3.i, %bb.e, %bb.d, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i.i, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit
  store ptr null, ptr %0, align 8, !tbaa !703, !alias.scope !2439
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !84, !noalias !2439
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !2439
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #21, !noalias !2439, !inline_history !2451
  br label %_ZN8facebook6hermes3cdp7message8debugger14ScriptPosition7tryMakeEPKN6hermes6parser10JSONObjectE.exit

_ZN8facebook6hermes3cdp7message8debugger14ScriptPosition7tryMakeEPKN6hermes6parser10JSONObjectE.exit: ; preds = %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message8debugger14ScriptPositionEEclEPS5_.exit.i.i, %bb.g, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1057 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1055   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #25
  unreachable

_ZNKSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message8debugger14ScriptPositionE, i64 16), ptr %i.q, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2455)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message8debugger14ScriptPositionE, i64 16), ptr %.012.i.i.i, align 8, !tbaa !84, !alias.scope !2452, !noalias !2455
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !alias.scope !2457
  %i.v = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !84, !alias.scope !2455, !noalias !2452
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2457
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i) #21, !noalias !2452, !inline_history !2458
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !2459

_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.y, %.lr.ph.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.af, %.lr.ph.i.i.i17 ], [ %i.z, %_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ae, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN8facebook6hermes3cdp7message8debugger14ScriptPositionESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message8debugger14ScriptPositionE, i64 16), ptr %.012.i.i.i18, align 8, !tbaa !84, !alias.scope !2460, !noalias !2463
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
end_hunk_2
