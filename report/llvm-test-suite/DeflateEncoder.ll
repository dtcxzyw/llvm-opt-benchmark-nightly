Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/DeflateEncoder?download=true
inline.NumInlined: 97
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN9NCompress8NDeflate8NEncoder6CCoder10WriteBlockEv:vector.ph
  %i.iu = zext i32 %i.is to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iu
  store i8 %i.iq, ptr %i.iv, align 1, !tbaa !62
  %i.iw = load i32, ptr %i.ac, align 8, !tbaa !21
  %i.ix = load i32, ptr %i.ad, align 4, !tbaa !80
  %i.iy = icmp eq i32 %i.iw, %i.ix
  br i1 %i.iy, label %bb.w, label %_ZN10COutBuffer9WriteByteEh.exit.i60.peel

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i60.peel

_ZN10COutBuffer9WriteByteEh.exit.i60.peel:        ; preds = %bb.w, %bb.v
  %i.iz = load i32, ptr %i.aa, align 8, !tbaa !78
  store i32 8, ptr %i.aa, align 8, !tbaa !78
  store i8 0, ptr %i.ab, align 4, !tbaa !79
  %.not.i61.peel = icmp eq i32 %i.im, 0
  br i1 %.not.i61.peel, label %_ZN12CBitlEncoder9WriteBitsEjj.exit63, label %.peel.next128

.peel.next128:                                    ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i60.peel
  %i.ja = lshr i32 %i.ik, %i.iz                   ; 2 uses
  %i.jb = icmp samesign ult i32 %i.im, 8
  br i1 %i.jb, label %.loopexit130, label %.lr.ph239

bb.x:                                             ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i60
  %i.jc = lshr i32 %.0814.i59238, %i.jw           ; 2 uses
  %i.jd = icmp ult i32 %i.jm, 8
  br i1 %i.jd, label %.loopexit130, label %.lr.ph239, !llvm.loop !149

.loopexit130:                                     ; preds = %bb.x, %.peel.next128, %.lr.ph.i56
  %i.je = phi i8 [ %.pre145, %.lr.ph.i56 ], [ 0, %.peel.next128 ], [ 0, %bb.x ]
  %.lcssa112 = phi i32 [ %.pre.i57, %.lr.ph.i56 ], [ 8, %.peel.next128 ], [ 8, %bb.x ] ; 2 uses
  %.015.i58.lcssa = phi i32 [ %i.ii, %.lr.ph.i56 ], [ %i.im, %.peel.next128 ], [ %i.jm, %bb.x ] ; 2 uses
  %.0814.i59.lcssa = phi i32 [ %i.ik, %.lr.ph.i56 ], [ %i.ja, %.peel.next128 ], [ %i.jc, %bb.x ]
  %notmask.i62 = shl nsw i32 -1, %.015.i58.lcssa
  %i.jf = xor i32 %notmask.i62, -1
  %i.jg = and i32 %.0814.i59.lcssa, %i.jf
  %i.jh = sub i32 8, %.lcssa112
  %i.ji = shl i32 %i.jg, %i.jh
  %i.jj = trunc i32 %i.ji to i8
  %i.jk = or i8 %i.je, %i.jj
  store i8 %i.jk, ptr %i.ab, align 4, !tbaa !79
  %i.jl = sub nuw i32 %.lcssa112, %.015.i58.lcssa
  store i32 %i.jl, ptr %i.aa, align 8, !tbaa !78
  br label %_ZN12CBitlEncoder9WriteBitsEjj.exit63

.lr.ph239:                                        ; preds = %.peel.next128, %bb.x
  %.0814.i59238 = phi i32 [ %i.jc, %bb.x ], [ %i.ja, %.peel.next128 ] ; 2 uses
  %.015.i58237 = phi i32 [ %i.jm, %bb.x ], [ %i.im, %.peel.next128 ]
  %i.jm = add nsw i32 %.015.i58237, -8            ; 4 uses
  %i.jn = trunc i32 %.0814.i59238 to i8
  %i.jo = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.jp = load i32, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.jq = add i32 %i.jp, 1
  store i32 %i.jq, ptr %i.ac, align 8, !tbaa !21
  %i.jr = zext i32 %i.jp to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jr
  store i8 %i.jn, ptr %i.js, align 1, !tbaa !62
  %i.jt = load i32, ptr %i.ac, align 8, !tbaa !21
  %i.ju = load i32, ptr %i.ad, align 4, !tbaa !80
  %i.jv = icmp eq i32 %i.jt, %i.ju
  br i1 %i.jv, label %bb.y, label %_ZN10COutBuffer9WriteByteEh.exit.i60

bb.y:                                             ; preds = %.lr.ph239
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i60

_ZN10COutBuffer9WriteByteEh.exit.i60:             ; preds = %bb.y, %.lr.ph239
  %i.jw = load i32, ptr %i.aa, align 8, !tbaa !78
  store i32 8, ptr %i.aa, align 8, !tbaa !78
  store i8 0, ptr %i.ab, align 4, !tbaa !79
  %.not.i61 = icmp eq i32 %i.jm, 0
  br i1 %.not.i61, label %_ZN12CBitlEncoder9WriteBitsEjj.exit63, label %bb.x, !llvm.loop !149

_ZN12CBitlEncoder9WriteBitsEjj.exit63:            ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i60, %_ZN10COutBuffer9WriteByteEh.exit.i60.peel, %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit, %.loopexit130
  %.not13.i64 = icmp ult i64 %.0.i, 4
  br i1 %.not13.i64, label %_ZN12CBitlEncoder9WriteBitsEjj.exit36, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %_ZN12CBitlEncoder9WriteBitsEjj.exit63
  %i.jx = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflateL15kDistDirectBitsE, i64 %.0.i
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !62
  %i.jz = zext i8 %i.jy to i32                    ; 3 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr @_ZN9NCompress8NDeflateL10kDistStartE, i64 %.0.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !12
  %i.kc = sub i32 %i.hu, %i.kb                    ; 3 uses
  %.pre.i66 = load i32, ptr %i.aa, align 8, !tbaa !78 ; 4 uses
  %i.kd = icmp ugt i32 %.pre.i66, %i.jz
  %.pre146 = load i8, ptr %i.ab, align 4, !tbaa !79 ; 2 uses
  br i1 %i.kd, label %.loopexit134, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i65
  %i.ke = sub nuw nsw i32 %i.jz, %.pre.i66        ; 4 uses
  %i.kf = sub nsw i32 8, %.pre.i66
  %i.kg = shl i32 %i.kc, %i.kf
  %i.kh = trunc i32 %i.kg to i8
  %i.ki = or i8 %.pre146, %i.kh
  %i.kj = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.kk = load i32, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.kl = add i32 %i.kk, 1
  store i32 %i.kl, ptr %i.ac, align 8, !tbaa !21
  %i.km = zext i32 %i.kk to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.km
  store i8 %i.ki, ptr %i.kn, align 1, !tbaa !62
  %i.ko = load i32, ptr %i.ac, align 8, !tbaa !21
  %i.kp = load i32, ptr %i.ad, align 4, !tbaa !80
  %i.kq = icmp eq i32 %i.ko, %i.kp
  br i1 %i.kq, label %bb.aa, label %_ZN10COutBuffer9WriteByteEh.exit.i69.peel

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i69.peel

_ZN10COutBuffer9WriteByteEh.exit.i69.peel:        ; preds = %bb.aa, %bb.z
  %i.kr = load i32, ptr %i.aa, align 8, !tbaa !78
  store i32 8, ptr %i.aa, align 8, !tbaa !78
  store i8 0, ptr %i.ab, align 4, !tbaa !79
  %.not.i70.peel = icmp eq i32 %i.ke, 0
  br i1 %.not.i70.peel, label %_ZN12CBitlEncoder9WriteBitsEjj.exit36, label %.peel.next132

.peel.next132:                                    ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i69.peel
  %i.ks = lshr i32 %i.kc, %i.kr                   ; 2 uses
  %i.kt = icmp samesign ult i32 %i.ke, 8
  br i1 %i.kt, label %.loopexit134, label %.lr.ph244

bb.ab:                                            ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i69
  %i.ku = lshr i32 %.0814.i68243, %i.lo           ; 2 uses
  %i.kv = icmp ult i32 %i.le, 8
  br i1 %i.kv, label %.loopexit134, label %.lr.ph244, !llvm.loop !150

.loopexit134:                                     ; preds = %bb.ab, %.peel.next132, %.lr.ph.i65
  %i.kw = phi i8 [ %.pre146, %.lr.ph.i65 ], [ 0, %.peel.next132 ], [ 0, %bb.ab ]
  %.lcssa116 = phi i32 [ %.pre.i66, %.lr.ph.i65 ], [ 8, %.peel.next132 ], [ 8, %bb.ab ] ; 2 uses
  %.015.i67.lcssa = phi i32 [ %i.jz, %.lr.ph.i65 ], [ %i.ke, %.peel.next132 ], [ %i.le, %bb.ab ] ; 2 uses
  %.0814.i68.lcssa = phi i32 [ %i.kc, %.lr.ph.i65 ], [ %i.ks, %.peel.next132 ], [ %i.ku, %bb.ab ]
  %notmask.i71 = shl nsw i32 -1, %.015.i67.lcssa
  %i.kx = xor i32 %notmask.i71, -1
  %i.ky = and i32 %.0814.i68.lcssa, %i.kx
  %i.kz = sub i32 8, %.lcssa116
  %i.la = shl i32 %i.ky, %i.kz
  %i.lb = trunc i32 %i.la to i8
  %i.lc = or i8 %i.kw, %i.lb
  store i8 %i.lc, ptr %i.ab, align 4, !tbaa !79
  %i.ld = sub nuw i32 %.lcssa116, %.015.i67.lcssa
  br label %_ZN12CBitlEncoder9WriteBitsEjj.exit36.sink.split

.lr.ph244:                                        ; preds = %.peel.next132, %bb.ab
  %.0814.i68243 = phi i32 [ %i.ku, %bb.ab ], [ %i.ks, %.peel.next132 ] ; 2 uses
  %.015.i67242 = phi i32 [ %i.le, %bb.ab ], [ %i.ke, %.peel.next132 ]
  %i.le = add nsw i32 %.015.i67242, -8            ; 4 uses
  %i.lf = trunc i32 %.0814.i68243 to i8
  %i.lg = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.lh = load i32, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.li = add i32 %i.lh, 1
  store i32 %i.li, ptr %i.ac, align 8, !tbaa !21
  %i.lj = zext i32 %i.lh to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lj
  store i8 %i.lf, ptr %i.lk, align 1, !tbaa !62
  %i.ll = load i32, ptr %i.ac, align 8, !tbaa !21
  %i.lm = load i32, ptr %i.ad, align 4, !tbaa !80
  %i.ln = icmp eq i32 %i.ll, %i.lm
  br i1 %i.ln, label %bb.ac, label %_ZN10COutBuffer9WriteByteEh.exit.i69

bb.ac:                                            ; preds = %.lr.ph244
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i69

_ZN10COutBuffer9WriteByteEh.exit.i69:             ; preds = %bb.ac, %.lr.ph244
  %i.lo = load i32, ptr %i.aa, align 8, !tbaa !78
  store i32 8, ptr %i.aa, align 8, !tbaa !78
  store i8 0, ptr %i.ab, align 4, !tbaa !79
  %.not.i70 = icmp eq i32 %i.le, 0
  br i1 %.not.i70, label %_ZN12CBitlEncoder9WriteBitsEjj.exit36, label %bb.ab, !llvm.loop !150

_ZN12CBitlEncoder9WriteBitsEjj.exit36.sink.split: ; preds = %.loopexit138, %.loopexit134
  %.sink = phi i32 [ %i.ld, %.loopexit134 ], [ %i.do, %.loopexit138 ]
  store i32 %.sink, ptr %i.aa, align 8, !tbaa !78
  br label %_ZN12CBitlEncoder9WriteBitsEjj.exit36

_ZN12CBitlEncoder9WriteBitsEjj.exit36:            ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i69, %_ZN10COutBuffer9WriteByteEh.exit.i33, %_ZN12CBitlEncoder9WriteBitsEjj.exit36.sink.split, %_ZN10COutBuffer9WriteByteEh.exit.i69.peel, %_ZN10COutBuffer9WriteByteEh.exit.i33.peel, %_ZN12CBitlEncoder9WriteBitsEjj.exit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lp = load i32, ptr %i.w, align 4, !tbaa !82
  %i.lq = zext i32 %i.lp to i64
  %i.lr = icmp samesign ult i64 %indvars.iv.next, %i.lq
  br i1 %i.lr, label %bb.e, label %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26._crit_edge, !llvm.loop !151
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress8NDeflate8NEncoder6CCoder15WriteStoreBlockEjjb(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1228 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1180 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.018 = phi i32 [ %2, %bb.a ], [ %i.z, %._crit_edge ] ; 2 uses
  %.017 = phi i32 [ %1, %bb.a ], [ %i.g, %._crit_edge ] ; 3 uses
  %i.f = tail call i32 @llvm.umin.i32(i32 %.017, i32 65535) ; 5 uses
  %i.g = sub i32 %.017, %i.f                      ; 2 uses
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  %4 = select i1 %3, i1 %i.h, i1 false
  %i.i = zext i1 %4 to i32
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.i, i32 noundef 1)
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 0, i32 noundef 2)
  %i.j = load i32, ptr %i.b, align 8, !tbaa !78
  %i.k = icmp ult i32 %i.j, 8
  br i1 %i.k, label %bb.c, label %_ZN12CBitlEncoder9FlushByteEv.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.c, align 4, !tbaa !79
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.n = load i32, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.d, align 8, !tbaa !21
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  store i8 %i.l, ptr %i.q, align 1, !tbaa !62
  %i.r = load i32, ptr %i.d, align 8, !tbaa !21
  %i.s = load i32, ptr %i.e, align 4, !tbaa !80
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZN12CBitlEncoder9FlushByteEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.a)
  br label %_ZN12CBitlEncoder9FlushByteEv.exit

_ZN12CBitlEncoder9FlushByteEv.exit:               ; preds = %bb.b, %bb.c, %bb.d
  store i32 8, ptr %i.b, align 8, !tbaa !78
  store i8 0, ptr %i.c, align 4, !tbaa !79
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.f, i32 noundef 16)
  %i.u = xor i32 %i.f, 65535
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.u, i32 noundef 16)
  %i.v = load ptr, ptr %0, align 8, !tbaa !71
  %i.w = zext i32 %.018 to i64
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  %.not = icmp eq i32 %.017, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN12CBitlEncoder9FlushByteEv.exit
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN12CBitlEncoder9WriteByteEh.exit, %_ZN12CBitlEncoder9FlushByteEv.exit
  %i.z = sub i32 %.018, %i.f
  br i1 %i.h, label %bb.f, label %bb.b, !llvm.loop !152

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN12CBitlEncoder9WriteByteEh.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN12CBitlEncoder9WriteByteEh.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !62
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !21  ; 2 uses
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.d, align 8, !tbaa !21
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af
  store i8 %i.ab, ptr %i.ag, align 1, !tbaa !62
  %i.ah = load i32, ptr %i.d, align 8, !tbaa !21
  %i.ai = load i32, ptr %i.e, align 4, !tbaa !80
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN12CBitlEncoder9WriteByteEh.exit

bb.e:                                             ; preds = %.lr.ph
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.a)
  br label %_ZN12CBitlEncoder9WriteByteEh.exit

_ZN12CBitlEncoder9WriteByteEh.exit:               ; preds = %.lr.ph, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !153

bb.f:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij(ptr noundef nonnull align 8 dereferenceable(39764) initializes((4912, 4916)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [19 x i32], align 16              ; 33 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4920
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [332 x i8], ptr %i.c, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 324
  %i.g = load i32, ptr %i.f, align 4, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4912
  store i32 %i.g, ptr %i.h, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.j = load i32, ptr %i.i, align 4, !tbaa !90
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull align 1 dereferenceable(320) %i.e)
  %.not54 = icmp eq i32 %2, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3536
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4688
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2224
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(320) %i.e, ptr noundef nonnull align 8 dereferenceable(320) %i.s, i64 320, i1 false), !tbaa.struct !91
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 30 uses
  store i32 286, ptr %i.t, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2221
  %i.v = load i8, ptr %i.u, align 1, !tbaa !62
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.f, label %.critedge

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.02050 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %bb.e ]
  store i32 %i.j, ptr %i.k, align 8, !tbaa !64
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.x = load i32, ptr %i.l, align 4, !tbaa !82   ; 3 uses
  %i.y = icmp ugt i32 %i.x, 18000
  br i1 %i.y, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = icmp samesign ugt i32 %i.x, 7000
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp samesign ugt i32 %i.x, 2000
  %i.ab = select i1 %i.aa, i32 10, i32 9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ac = phi i32 [ 12, %bb.b ], [ %i.ab, %bb.d ], [ 11, %bb.c ] ; 2 uses
  tail call void @Huffman_Generate(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i32 noundef 288, i32 noundef %i.ac)
  tail call void @Huffman_Generate(ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i32 noundef 32, i32 noundef %i.ac)
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull align 1 dereferenceable(320) %i.o)
  %i.ad = add nuw i32 %.02050, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ad, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !154

bb.f:                                             ; preds = %._crit_edge
  store i32 285, ptr %i.t, align 8, !tbaa !92
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2220
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !62
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  store i32 284, ptr %i.t, align 8, !tbaa !92
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2219
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !62
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  store i32 283, ptr %i.t, align 8, !tbaa !92
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2218
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !62
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  store i32 282, ptr %i.t, align 8, !tbaa !92
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2217
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !62
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  store i32 281, ptr %i.t, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !62
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  store i32 280, ptr %i.t, align 8, !tbaa !92
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2215
  %i.au = load i8, ptr %i.at, align 1, !tbaa !62
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  store i32 279, ptr %i.t, align 8, !tbaa !92
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2214
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !62
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  store i32 278, ptr %i.t, align 8, !tbaa !92
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2213
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !62
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  store i32 277, ptr %i.t, align 8, !tbaa !92
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2212
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !62
end_hunk_0
