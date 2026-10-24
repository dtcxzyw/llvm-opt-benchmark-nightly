Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7222
inline.NumDeleted: 1430
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json6detail6digestINS1_13pointer_token8iteratorEEEmT_S5_m:bb.a

_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit82: ; preds = %.lr.ph.i72, %bb.k
  %.0.i80 = phi i8 [ %..i81, %bb.k ], [ %i.ch, %.lr.ph.i72 ]
  %i.cl = sext i8 %.0.i80 to i64
  %i.cm = shl nsw i64 %i.cl, 40
  %i.cn = xor i64 %i.cm, %.1
  br label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %._crit_edge..lr.ph.i85_crit_edge, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit82
  %i.co = phi i8 [ %i.bx, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit82 ], [ %.pre163, %._crit_edge..lr.ph.i85_crit_edge ] ; 2 uses
  %.2 = phi i64 [ %i.cn, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit82 ], [ %.0.lcssa, %._crit_edge..lr.ph.i85_crit_edge ]
  %i.cp = icmp eq i8 %i.co, 126
  %storemerge.v.i.i88 = select i1 %i.cp, i64 2, i64 1
  %storemerge.i.i89 = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.lcssa, i64 %storemerge.v.i.i88 ; 2 uses
  %i.cq = load i8, ptr %storemerge.i.i89, align 1, !tbaa !93
  %i.cr = icmp eq i8 %i.cq, 126
  %storemerge.v.i.i88.1 = select i1 %i.cr, i64 2, i64 1
  %storemerge.i.i89.1 = getelementptr inbounds nuw i8, ptr %storemerge.i.i89, i64 %storemerge.v.i.i88.1 ; 2 uses
  %i.cs = load i8, ptr %storemerge.i.i89.1, align 1, !tbaa !93
  %i.ct = icmp eq i8 %i.cs, 126
  %storemerge.v.i.i88.2 = select i1 %i.ct, i64 2, i64 1
  %storemerge.i.i89.2 = getelementptr inbounds nuw i8, ptr %storemerge.i.i89.1, i64 %storemerge.v.i.i88.2 ; 2 uses
  %i.cu = load i8, ptr %storemerge.i.i89.2, align 1, !tbaa !93
  %i.cv = icmp eq i8 %i.cu, 126
  %storemerge.v.i.i88.3 = select i1 %i.cv, i64 2, i64 1
  %storemerge.i.i89.3 = getelementptr inbounds nuw i8, ptr %storemerge.i.i89.2, i64 %storemerge.v.i.i88.3 ; 2 uses
  %i.cw = load i8, ptr %storemerge.i.i89.3, align 1, !tbaa !93 ; 2 uses
  %cond.i92 = icmp eq i8 %i.cw, 126
  br i1 %cond.i92, label %bb.l, label %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit95

bb.l:                                             ; preds = %.lr.ph.i85
  %i.cx = getelementptr inbounds nuw i8, ptr %storemerge.i.i89.3, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !93
  %i.cz = icmp eq i8 %i.cy, 48
  %..i94 = select i1 %i.cz, i8 126, i8 47
  br label %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit95

_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit95: ; preds = %.lr.ph.i85, %bb.l
  %.0.i93 = phi i8 [ %..i94, %bb.l ], [ %i.cw, %.lr.ph.i85 ]
  %i.da = sext i8 %.0.i93 to i64
  %i.db = shl nsw i64 %i.da, 32
  %i.dc = xor i64 %i.db, %.2
  br label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %._crit_edge..lr.ph.i98_crit_edge, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit95
  %i.dd = phi i8 [ %i.co, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit95 ], [ %.pre164, %._crit_edge..lr.ph.i98_crit_edge ] ; 2 uses
  %.3 = phi i64 [ %i.dc, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit95 ], [ %.0.lcssa, %._crit_edge..lr.ph.i98_crit_edge ]
  %i.de = icmp eq i8 %i.dd, 126
  %storemerge.v.i.i101 = select i1 %i.de, i64 2, i64 1
  %storemerge.i.i102 = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.lcssa, i64 %storemerge.v.i.i101 ; 2 uses
  %i.df = load i8, ptr %storemerge.i.i102, align 1, !tbaa !93
  %i.dg = icmp eq i8 %i.df, 126
  %storemerge.v.i.i101.1 = select i1 %i.dg, i64 2, i64 1
  %storemerge.i.i102.1 = getelementptr inbounds nuw i8, ptr %storemerge.i.i102, i64 %storemerge.v.i.i101.1 ; 2 uses
  %i.dh = load i8, ptr %storemerge.i.i102.1, align 1, !tbaa !93
  %i.di = icmp eq i8 %i.dh, 126
  %storemerge.v.i.i101.2 = select i1 %i.di, i64 2, i64 1
  %storemerge.i.i102.2 = getelementptr inbounds nuw i8, ptr %storemerge.i.i102.1, i64 %storemerge.v.i.i101.2 ; 2 uses
  %i.dj = load i8, ptr %storemerge.i.i102.2, align 1, !tbaa !93 ; 2 uses
  %cond.i105 = icmp eq i8 %i.dj, 126
  br i1 %cond.i105, label %bb.m, label %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit108

bb.m:                                             ; preds = %.lr.ph.i98
  %i.dk = getelementptr inbounds nuw i8, ptr %storemerge.i.i102.2, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !93
  %i.dm = icmp eq i8 %i.dl, 48
  %..i107 = select i1 %i.dm, i8 126, i8 47
  br label %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit108

_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit108: ; preds = %.lr.ph.i98, %bb.m
  %.0.i106 = phi i8 [ %..i107, %bb.m ], [ %i.dj, %.lr.ph.i98 ]
  %i.dn = sext i8 %.0.i106 to i64
  %i.do = shl nsw i64 %i.dn, 24
  %i.dp = xor i64 %i.do, %.3
  br label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %._crit_edge..lr.ph.i111_crit_edge, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit108
  %i.dq = phi i8 [ %i.dd, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit108 ], [ %.pre165, %._crit_edge..lr.ph.i111_crit_edge ] ; 2 uses
  %.4 = phi i64 [ %i.dp, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit108 ], [ %.0.lcssa, %._crit_edge..lr.ph.i111_crit_edge ]
  %i.dr = icmp eq i8 %i.dq, 126
  %storemerge.v.i.i114 = select i1 %i.dr, i64 2, i64 1
  %storemerge.i.i115 = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.lcssa, i64 %storemerge.v.i.i114 ; 2 uses
  %i.ds = load i8, ptr %storemerge.i.i115, align 1, !tbaa !93
  %i.dt = icmp eq i8 %i.ds, 126
  %storemerge.v.i.i114.1 = select i1 %i.dt, i64 2, i64 1
  %storemerge.i.i115.1 = getelementptr inbounds nuw i8, ptr %storemerge.i.i115, i64 %storemerge.v.i.i114.1 ; 2 uses
  %i.du = load i8, ptr %storemerge.i.i115.1, align 1, !tbaa !93 ; 2 uses
  %cond.i118 = icmp eq i8 %i.du, 126
  br i1 %cond.i118, label %bb.n, label %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit121

bb.n:                                             ; preds = %.lr.ph.i111
  %i.dv = getelementptr inbounds nuw i8, ptr %storemerge.i.i115.1, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !93
  %i.dx = icmp eq i8 %i.dw, 48
  %..i120 = select i1 %i.dx, i8 126, i8 47
  br label %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit121

_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit121: ; preds = %.lr.ph.i111, %bb.n
  %.0.i119 = phi i8 [ %..i120, %bb.n ], [ %i.du, %.lr.ph.i111 ]
  %i.dy = sext i8 %.0.i119 to i64
  %i.dz = shl nsw i64 %i.dy, 16
  %i.ea = xor i64 %i.dz, %.4
  br label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %._crit_edge..lr.ph.i124_crit_edge, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit121
  %i.eb = phi i8 [ %i.dq, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit121 ], [ %.pre166, %._crit_edge..lr.ph.i124_crit_edge ] ; 2 uses
  %.5 = phi i64 [ %i.ea, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit121 ], [ %.0.lcssa, %._crit_edge..lr.ph.i124_crit_edge ]
  %i.ec = icmp eq i8 %i.eb, 126
  %storemerge.v.i.i127 = select i1 %i.ec, i64 2, i64 1
  %storemerge.i.i128 = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.lcssa, i64 %storemerge.v.i.i127 ; 2 uses
  %i.ed = load i8, ptr %storemerge.i.i128, align 1, !tbaa !93 ; 2 uses
  %cond.i131 = icmp eq i8 %i.ed, 126
  br i1 %cond.i131, label %bb.o, label %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit134

bb.o:                                             ; preds = %.lr.ph.i124
  %i.ee = getelementptr inbounds nuw i8, ptr %storemerge.i.i128, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !93
  %i.eg = icmp eq i8 %i.ef, 48
  %..i133 = select i1 %i.eg, i8 126, i8 47
  br label %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit134

_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit134: ; preds = %.lr.ph.i124, %bb.o
  %.0.i132 = phi i8 [ %..i133, %bb.o ], [ %i.ed, %.lr.ph.i124 ]
  %i.eh = sext i8 %.0.i132 to i64
  %i.ei = shl nsw i64 %i.eh, 8
  %i.ej = xor i64 %i.ei, %.5
  br label %_ZSt4nextIN5boost4json6detail13pointer_token8iteratorEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit

_ZSt4nextIN5boost4json6detail13pointer_token8iteratorEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit: ; preds = %._crit_edge._ZSt4nextIN5boost4json6detail13pointer_token8iteratorEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit_crit_edge, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit134
  %i.ek = phi i8 [ %i.eb, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit134 ], [ %.pre167, %._crit_edge._ZSt4nextIN5boost4json6detail13pointer_token8iteratorEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit_crit_edge ] ; 2 uses
  %.6 = phi i64 [ %i.ej, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit134 ], [ %.0.lcssa, %._crit_edge._ZSt4nextIN5boost4json6detail13pointer_token8iteratorEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit_crit_edge ]
  %cond.i135 = icmp eq i8 %i.ek, 126
  br i1 %cond.i135, label %bb.p, label %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit138

bb.p:                                             ; preds = %_ZSt4nextIN5boost4json6detail13pointer_token8iteratorEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.lcssa, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !93
  %i.en = icmp eq i8 %i.em, 48
  %..i137 = select i1 %i.en, i8 126, i8 47
  br label %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit138

_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit138: ; preds = %_ZSt4nextIN5boost4json6detail13pointer_token8iteratorEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit, %bb.p
  %.0.i136 = phi i8 [ %..i137, %bb.p ], [ %i.ek, %_ZSt4nextIN5boost4json6detail13pointer_token8iteratorEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit ]
  %i.eo = sext i8 %.0.i136 to i64
  %i.ep = xor i64 %.6, %i.eo
  %i.eq = mul i64 %i.ep, -4132994306676758123
  br label %bb.q

default.unreachable188:                           ; preds = %._crit_edge
  unreachable

bb.q:                                             ; preds = %._crit_edge, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit138
  %.7 = phi i64 [ %i.eq, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit138 ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %i.er = lshr i64 %.7, 47
  %i.es = xor i64 %i.er, %.7
  %i.et = mul i64 %i.es, -4132994306676758123     ; 2 uses
  %i.eu = lshr i64 %i.et, 47
  %i.ev = xor i64 %i.eu, %i.et
  ret i64 %i.ev
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4json6detail11string_implC2INS1_13pointer_token8iteratorEEET_S6_RKNS0_11storage_ptrESt18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.undo.336, align 8           ; 6 uses
  store i8 -123, ptr %0, align 8, !tbaa !93
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 6 uses
  store i8 14, ptr %i.b, align 1, !tbaa !93
  store i8 0, ptr %i.a, align 1, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  store ptr %0, ptr %4, align 8, !tbaa !375
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.c, align 8, !tbaa !324
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.not12 = icmp eq ptr %1, %2
  br i1 %.not12, label %_ZNK5boost4json6detail11string_impl4sizeEv.exit10.thread20, label %.lr.ph

_ZNK5boost4json6detail11string_impl4sizeEv.exit10.thread20: ; preds = %bb.a
  %i.e = load i8, ptr %i.b, align 1, !tbaa !93
  %i.f = sext i8 %i.e to i64
  %i.g = sub nsw i64 14, %i.f
  br label %bb.f

.lr.ph:                                           ; preds = %bb.a, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit
  %.014 = phi ptr [ %i.y, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.011.013 = phi ptr [ %storemerge.i.i, %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit ], [ %1, %bb.a ] ; 3 uses
  %i.h = load i8, ptr %0, align 8, !tbaa !93
  %i.i = icmp eq i8 %i.h, 5
  br i1 %i.i, label %_ZNK5boost4json6detail11string_impl8capacityEv.exit, label %_ZNK5boost4json6detail11string_impl8capacityEv.exit.thread

_ZNK5boost4json6detail11string_impl8capacityEv.exit: ; preds = %.lr.ph
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !93   ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !255  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !197
  %i.n = icmp ult i32 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

_ZNK5boost4json6detail11string_impl8capacityEv.exit.thread: ; preds = %.lr.ph
  %i.o = load i8, ptr %i.b, align 1, !tbaa !93    ; 2 uses
  %5 = sext i8 %i.o to i64
  %6 = add nsw i64 %5, -1
  %i.p = icmp ult i64 %6, 14
  br i1 %i.p, label %.thread, label %bb.c

bb.b:                                             ; preds = %_ZNK5boost4json6detail11string_impl8capacityEv.exit
  %i.q = add nuw i32 %i.k, 1
  store i32 %i.q, ptr %i.j, align 4, !tbaa !255
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit

.thread:                                          ; preds = %_ZNK5boost4json6detail11string_impl8capacityEv.exit.thread
  %7 = add i8 %i.o, -1
  store i8 %7, ptr %i.b, align 1, !tbaa !93
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit

bb.c:                                             ; preds = %_ZNK5boost4json6detail11string_impl8capacityEv.exit.thread, %_ZNK5boost4json6detail11string_impl8capacityEv.exit
  %i.r = invoke noundef ptr @_ZN5boost4json6detail11string_impl6appendEmRKNS0_11storage_ptrE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5boost4json6detail11string_impl4sizeEm.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN5boost4json6detail11string_implC1INS1_13pointer_token8iteratorEEET_S6_RKNS0_11storage_ptrESt18input_iterator_tagEN4undoD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  resume { ptr, i32 } %i.s

_ZN5boost4json6detail11string_impl4sizeEm.exit:   ; preds = %.thread, %bb.b, %bb.c
  %.1 = phi ptr [ %i.r, %bb.c ], [ %.014, %bb.b ], [ %.014, %.thread ] ; 2 uses
  %i.t = load i8, ptr %.sroa.011.013, align 1, !tbaa !93 ; 2 uses
  %i.u = icmp eq i8 %i.t, 126                     ; 2 uses
  %storemerge.v.i.i = select i1 %i.u, i64 2, i64 1
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.013, i64 %storemerge.v.i.i ; 2 uses
  br i1 %i.u, label %bb.e, label %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit

bb.e:                                             ; preds = %_ZN5boost4json6detail11string_impl4sizeEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.011.013, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !93
  %i.x = icmp eq i8 %i.w, 48
  %..i = select i1 %i.x, i8 126, i8 47
  br label %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit

_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit: ; preds = %_ZN5boost4json6detail11string_impl4sizeEm.exit, %bb.e
  %.0.i9 = phi i8 [ %..i, %bb.e ], [ %i.t, %_ZN5boost4json6detail11string_impl4sizeEm.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %.0.i9, ptr %.1, align 1, !tbaa !93
  %.not = icmp eq ptr %storemerge.i.i, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !964

._crit_edge:                                      ; preds = %_ZNK5boost4json6detail13pointer_token8iteratordeEv.exit
  %.pre = load i8, ptr %0, align 8, !tbaa !93     ; 2 uses
  %i.z = icmp eq i8 %.pre, 5
  br i1 %i.z, label %_ZNK5boost4json6detail11string_impl4sizeEv.exit10.thread, label %_ZNK5boost4json6detail11string_impl4sizeEv.exit10

_ZNK5boost4json6detail11string_impl4sizeEv.exit10.thread: ; preds = %._crit_edge
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !93  ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !255
  %i.ac = zext i32 %i.ab to i64
  br label %bb.g

_ZNK5boost4json6detail11string_impl4sizeEv.exit10: ; preds = %._crit_edge
  %i.ad = load i8, ptr %i.b, align 1, !tbaa !93
  %i.ae = sext i8 %i.ad to i64
  %i.af = sub nsw i64 14, %i.ae                   ; 2 uses
  %i.ag = icmp eq i8 %.pre, -123
  br i1 %i.ag, label %bb.f, label %_ZNK5boost4json6detail11string_impl4sizeEv.exit10._crit_edge

_ZNK5boost4json6detail11string_impl4sizeEv.exit10._crit_edge: ; preds = %_ZNK5boost4json6detail11string_impl4sizeEv.exit10
  %.pre15 = load ptr, ptr %i.d, align 8, !tbaa !93
  br label %bb.g

bb.f:                                             ; preds = %_ZNK5boost4json6detail11string_impl4sizeEv.exit10.thread20, %_ZNK5boost4json6detail11string_impl4sizeEv.exit10
  %i.ah = phi i64 [ %i.g, %_ZNK5boost4json6detail11string_impl4sizeEv.exit10.thread20 ], [ %i.af, %_ZNK5boost4json6detail11string_impl4sizeEv.exit10 ] ; 2 uses
  %i.ai = trunc i64 %i.ah to i8
  %i.aj = sub i8 14, %i.ai
  store i8 %i.aj, ptr %i.b, align 1, !tbaa !93
  br label %_ZZN5boost4json6detail11string_implC1INS1_13pointer_token8iteratorEEET_S6_RKNS0_11storage_ptrESt18input_iterator_tagEN4undoD2Ev.exit

bb.g:                                             ; preds = %_ZNK5boost4json6detail11string_impl4sizeEv.exit10._crit_edge, %_ZNK5boost4json6detail11string_impl4sizeEv.exit10.thread
  %i.ak = phi ptr [ %i.aa, %_ZNK5boost4json6detail11string_impl4sizeEv.exit10.thread ], [ %.pre15, %_ZNK5boost4json6detail11string_impl4sizeEv.exit10._crit_edge ]
  %i.al = phi i64 [ %i.ac, %_ZNK5boost4json6detail11string_impl4sizeEv.exit10.thread ], [ %i.af, %_ZNK5boost4json6detail11string_impl4sizeEv.exit10._crit_edge ] ; 2 uses
  %i.am = trunc i64 %i.al to i32
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !255
  %i.an = load i8, ptr %0, align 8, !tbaa !93
  %i.ao = icmp eq i8 %i.an, -123
  %i.ap = load ptr, ptr %i.d, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.0.i.i = select i1 %i.ao, ptr %i.a, ptr %i.aq
  br label %_ZZN5boost4json6detail11string_implC1INS1_13pointer_token8iteratorEEET_S6_RKNS0_11storage_ptrESt18input_iterator_tagEN4undoD2Ev.exit

_ZZN5boost4json6detail11string_implC1INS1_13pointer_token8iteratorEEET_S6_RKNS0_11storage_ptrESt18input_iterator_tagEN4undoD2Ev.exit: ; preds = %bb.g, %bb.f
  %i.ar = phi i64 [ %i.al, %bb.g ], [ %i.ah, %bb.f ]
  %.0.i.sink.i = phi ptr [ %.0.i.i, %bb.g ], [ %i.a, %bb.f ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.sink.i, i64 %i.ar
  store i8 0, ptr %i.as, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN5boost4json6detail11string_implC1INS1_13pointer_token8iteratorEEET_S6_RKNS0_11storage_ptrESt18input_iterator_tagEN4undoD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !375    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !965, !nonnull !125, !align !126 ; 2 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !93
  switch i8 %i.d, label %_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit [
    i8 5, label %bb.c
    i8 69, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.e, 0
  %i.f = and i64 %i.e, -4
  %i.g = inttoptr i64 %i.f to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !197
  %i.l = zext i32 %i.k to i64
  %i.m = add nuw nsw i64 %i.l, 9
  br label %.invoke.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %.not.i.i3.i = icmp eq i64 %i.n, 0
  %i.o = and i64 %i.n, -4
  %i.p = inttoptr i64 %i.o to ptr
  %.0.i.i4.i = select i1 %.not.i.i3.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !93
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !93
  %i.u = add i32 %i.t, 1
  %i.v = zext i32 %i.u to i64
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.d, %bb.c
  %.0.i.i.sink.i = phi ptr [ %.0.i.i.i, %bb.c ], [ %.0.i.i4.i, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %i.i, %bb.c ], [ %i.r, %bb.d ]
  %i.x = phi i64 [ %i.m, %bb.c ], [ %i.v, %bb.d ]
  %i.y = phi i64 [ 4, %bb.c ], [ 16, %bb.d ]
  %i.z = load ptr, ptr %.0.i.i.sink.i, align 8, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.sink.i, ptr noundef %i.w, i64 noundef %i.x, i64 noundef %i.y)
          to label %_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit unwind label %bb.e, !inline_history !2

bb.e:                                             ; preds = %.invoke.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #48
  unreachable

_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit: ; preds = %.invoke.i, %bb.b, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK5boost4json6detail16uint64_formatterclEPc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 3 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !967    ; 5 uses
  %i.c = icmp ult i64 %i.b, 10
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw nsw i64 %i.b to i8
  %i.e = or disjoint i8 %i.d, 48
  store i8 %i.e, ptr %1, align 1, !tbaa !93
  br label %_ZN5boost4json6detail13format_uint64EPcm.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.g = icmp ugt i64 %i.b, 999
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.02234.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.f, %bb.c ] ; 2 uses
  %.02333.i = phi i64 [ %i.u, %.lr.ph.i ], [ %i.b, %bb.c ] ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %.02234.i, i64 -4 ; 4 uses
  %i.i = urem i64 %.02333.i, 10000
  %i.j = getelementptr inbounds i8, ptr %.02234.i, i64 -2
  %.lhs.trunc.i = trunc nuw nsw i64 %i.i to i16   ; 2 uses
  %i.k = urem i16 %.lhs.trunc.i, 100
  %i.l = shl nuw nsw i16 %i.k, 1
  %i.m = zext nneg i16 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.m
  %i.o = load i16, ptr %i.n, align 1
  store i16 %i.o, ptr %i.j, align 1
  %i.p = udiv i16 %.lhs.trunc.i, 100
  %i.q = shl nuw nsw i16 %i.p, 1
  %i.r = zext nneg i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @.str.108, i64 %i.r
  %i.t = load i16, ptr %i.s, align 1
  store i16 %i.t, ptr %i.h, align 1
  %i.u = udiv i64 %.02333.i, 10000                ; 3 uses
  %i.v = icmp ugt i64 %.02333.i, 9999999
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !46

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.w = icmp samesign ugt i64 %.02333.i, 99999
  br i1 %i.w, label %._crit_edge.thread.i, label %bb.d

end_hunk_0
