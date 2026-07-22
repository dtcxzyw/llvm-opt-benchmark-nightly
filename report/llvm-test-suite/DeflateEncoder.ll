inline.NumInlined: 97
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN9NCompress8NDeflate8NEncoder6CCoder10WriteBlockEv:vector.ph
  %i.jz = zext i8 %i.jy to i32                    ; 3 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr @_ZN9NCompress8NDeflateL10kDistStartE, i64 %.0.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !4
  %i.kc = sub i32 %i.hu, %i.kb                    ; 3 uses
  %.pre.i66 = load i32, ptr %i.aa, align 8, !tbaa !91 ; 4 uses
  %i.kd = icmp ugt i32 %.pre.i66, %i.jz
  %.pre146 = load i8, ptr %i.ab, align 4, !tbaa !92 ; 2 uses
  br i1 %i.kd, label %.loopexit134, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i65
  %i.ke = sub nuw nsw i32 %i.jz, %.pre.i66        ; 4 uses
  %i.kf = sub nsw i32 8, %.pre.i66
  %i.kg = shl i32 %i.kc, %i.kf
  %i.kh = trunc i32 %i.kg to i8
  %i.ki = or i8 %.pre146, %i.kh
  %i.kj = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.kk = load i32, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  %i.kl = add i32 %i.kk, 1
  store i32 %i.kl, ptr %i.ac, align 8, !tbaa !16
  %i.km = zext i32 %i.kk to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.km
  store i8 %i.ki, ptr %i.kn, align 1, !tbaa !62
  %i.ko = load i32, ptr %i.ac, align 8, !tbaa !16
  %i.kp = load i32, ptr %i.ad, align 4, !tbaa !93
  %i.kq = icmp eq i32 %i.ko, %i.kp
  br i1 %i.kq, label %bb.aa, label %_ZN10COutBuffer9WriteByteEh.exit.i69.peel

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i69.peel

_ZN10COutBuffer9WriteByteEh.exit.i69.peel:        ; preds = %bb.aa, %bb.z
  %i.kr = load i32, ptr %i.aa, align 8, !tbaa !91
  store i32 8, ptr %i.aa, align 8, !tbaa !91
  store i8 0, ptr %i.ab, align 4, !tbaa !92
  %.not.i70.peel = icmp eq i32 %i.ke, 0
  br i1 %.not.i70.peel, label %_ZN12CBitlEncoder9WriteBitsEjj.exit36, label %.peel.next132

.peel.next132:                                    ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i69.peel
  %i.ks = lshr i32 %i.kc, %i.kr                   ; 2 uses
  %i.kt = icmp samesign ult i32 %i.ke, 8
  br i1 %i.kt, label %.loopexit134, label %.lr.ph245

bb.ab:                                            ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i69
  %i.ku = lshr i32 %.0814.i68244, %i.lo           ; 2 uses
  %i.kv = icmp ult i32 %i.le, 8
  br i1 %i.kv, label %.loopexit134, label %.lr.ph245, !llvm.loop !129

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
  store i8 %i.lc, ptr %i.ab, align 4, !tbaa !92
  %i.ld = sub nuw i32 %.lcssa116, %.015.i67.lcssa
  br label %_ZN12CBitlEncoder9WriteBitsEjj.exit36.sink.split

.lr.ph245:                                        ; preds = %.peel.next132, %bb.ab
  %.0814.i68244 = phi i32 [ %i.ku, %bb.ab ], [ %i.ks, %.peel.next132 ] ; 2 uses
  %.015.i67243 = phi i32 [ %i.le, %bb.ab ], [ %i.ke, %.peel.next132 ]
  %i.le = add nsw i32 %.015.i67243, -8            ; 4 uses
  %i.lf = trunc i32 %.0814.i68244 to i8
  %i.lg = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.lh = load i32, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  %i.li = add i32 %i.lh, 1
  store i32 %i.li, ptr %i.ac, align 8, !tbaa !16
  %i.lj = zext i32 %i.lh to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lj
  store i8 %i.lf, ptr %i.lk, align 1, !tbaa !62
  %i.ll = load i32, ptr %i.ac, align 8, !tbaa !16
  %i.lm = load i32, ptr %i.ad, align 4, !tbaa !93
  %i.ln = icmp eq i32 %i.ll, %i.lm
  br i1 %i.ln, label %bb.ac, label %_ZN10COutBuffer9WriteByteEh.exit.i69

bb.ac:                                            ; preds = %.lr.ph245
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i69

_ZN10COutBuffer9WriteByteEh.exit.i69:             ; preds = %bb.ac, %.lr.ph245
  %i.lo = load i32, ptr %i.aa, align 8, !tbaa !91
  store i32 8, ptr %i.aa, align 8, !tbaa !91
  store i8 0, ptr %i.ab, align 4, !tbaa !92
  %.not.i70 = icmp eq i32 %i.le, 0
  br i1 %.not.i70, label %_ZN12CBitlEncoder9WriteBitsEjj.exit36, label %bb.ab, !llvm.loop !129

_ZN12CBitlEncoder9WriteBitsEjj.exit36.sink.split: ; preds = %.loopexit138, %.loopexit134
  %.sink = phi i32 [ %i.ld, %.loopexit134 ], [ %i.do, %.loopexit138 ]
  store i32 %.sink, ptr %i.aa, align 8, !tbaa !91
  br label %_ZN12CBitlEncoder9WriteBitsEjj.exit36

_ZN12CBitlEncoder9WriteBitsEjj.exit36:            ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i69, %_ZN10COutBuffer9WriteByteEh.exit.i33, %_ZN12CBitlEncoder9WriteBitsEjj.exit36.sink.split, %_ZN10COutBuffer9WriteByteEh.exit.i69.peel, %_ZN10COutBuffer9WriteByteEh.exit.i33.peel, %_ZN12CBitlEncoder9WriteBitsEjj.exit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lp = load i32, ptr %i.w, align 4, !tbaa !106
  %i.lq = zext i32 %i.lp to i64
  %i.lr = icmp samesign ult i64 %indvars.iv.next, %i.lq
  br i1 %i.lr, label %bb.e, label %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26._crit_edge, !llvm.loop !130
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
  %.018 = phi i32 [ %2, %bb.a ], [ %i.aa, %._crit_edge ] ; 2 uses
  %.017 = phi i32 [ %1, %bb.a ], [ %i.g, %._crit_edge ] ; 3 uses
  %i.f = tail call i32 @llvm.umin.i32(i32 %.017, i32 65535) ; 5 uses
  %i.g = sub i32 %.017, %i.f                      ; 2 uses
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  %i.i = select i1 %3, i1 %i.h, i1 false
  %i.j = zext i1 %i.i to i32
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.j, i32 noundef 1)
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 0, i32 noundef 2)
  %i.k = load i32, ptr %i.b, align 8, !tbaa !91
  %i.l = icmp ult i32 %i.k, 8
  br i1 %i.l, label %bb.c, label %_ZN12CBitlEncoder9FlushByteEv.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.c, align 4, !tbaa !92
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.o = load i32, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !16
  %i.q = zext i32 %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  store i8 %i.m, ptr %i.r, align 1, !tbaa !62
  %i.s = load i32, ptr %i.d, align 8, !tbaa !16
  %i.t = load i32, ptr %i.e, align 4, !tbaa !93
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZN12CBitlEncoder9FlushByteEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.a)
  br label %_ZN12CBitlEncoder9FlushByteEv.exit

_ZN12CBitlEncoder9FlushByteEv.exit:               ; preds = %bb.b, %bb.c, %bb.d
  store i32 8, ptr %i.b, align 8, !tbaa !91
  store i8 0, ptr %i.c, align 4, !tbaa !92
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.f, i32 noundef 16)
  %i.v = xor i32 %i.f, 65535
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.v, i32 noundef 16)
  %i.w = load ptr, ptr %0, align 8, !tbaa !74
  %i.x = zext i32 %.018 to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y
  %.not = icmp eq i32 %.017, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN12CBitlEncoder9FlushByteEv.exit
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN12CBitlEncoder9WriteByteEh.exit, %_ZN12CBitlEncoder9FlushByteEv.exit
  %i.aa = sub i32 %.018, %i.f
  br i1 %i.h, label %bb.f, label %bb.b, !llvm.loop !131

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN12CBitlEncoder9WriteByteEh.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN12CBitlEncoder9WriteByteEh.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !62
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !16  ; 2 uses
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.d, align 8, !tbaa !16
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  store i8 %i.ac, ptr %i.ah, align 1, !tbaa !62
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !16
  %i.aj = load i32, ptr %i.e, align 4, !tbaa !93
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZN12CBitlEncoder9WriteByteEh.exit

bb.e:                                             ; preds = %.lr.ph
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.a)
  br label %_ZN12CBitlEncoder9WriteByteEh.exit

_ZN12CBitlEncoder9WriteByteEh.exit:               ; preds = %.lr.ph, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !132

bb.f:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij(ptr noundef nonnull align 8 dereferenceable(39764) initializes((4912, 4916)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [19 x i32], align 16              ; 35 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4920
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [332 x i8], ptr %i.c, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 324
  %i.g = load i32, ptr %i.f, align 4, !tbaa !133
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4912
  store i32 %i.g, ptr %i.h, align 8, !tbaa !107
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.j = load i32, ptr %i.i, align 4, !tbaa !135
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
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(320) %i.e, ptr noundef nonnull align 8 dereferenceable(320) %i.s, i64 320, i1 false), !tbaa.struct !136
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 30 uses
  store i32 286, ptr %i.t, align 8, !tbaa !137
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2221
  %i.v = load i8, ptr %i.u, align 1, !tbaa !62
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.f, label %.critedge

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.050 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %bb.e ]
  store i32 %i.j, ptr %i.k, align 8, !tbaa !65
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.x = load i32, ptr %i.l, align 4, !tbaa !106  ; 3 uses
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
  %i.ad = add nuw i32 %.050, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ad, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !138

bb.f:                                             ; preds = %._crit_edge
  store i32 285, ptr %i.t, align 8, !tbaa !137
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2220
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !62
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  store i32 284, ptr %i.t, align 8, !tbaa !137
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2219
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !62
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  store i32 283, ptr %i.t, align 8, !tbaa !137
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2218
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !62
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  store i32 282, ptr %i.t, align 8, !tbaa !137
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2217
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !62
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  store i32 281, ptr %i.t, align 8, !tbaa !137
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !62
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  store i32 280, ptr %i.t, align 8, !tbaa !137
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2215
  %i.au = load i8, ptr %i.at, align 1, !tbaa !62
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  store i32 279, ptr %i.t, align 8, !tbaa !137
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2214
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !62
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  store i32 278, ptr %i.t, align 8, !tbaa !137
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2213
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !62
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  store i32 277, ptr %i.t, align 8, !tbaa !137
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2212
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !62
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  store i32 276, ptr %i.t, align 8, !tbaa !137
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2211
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !62
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  store i32 275, ptr %i.t, align 8, !tbaa !137
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2210
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !62
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  store i32 274, ptr %i.t, align 8, !tbaa !137
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2209
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !62
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  store i32 273, ptr %i.t, align 8, !tbaa !137
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !62
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  store i32 272, ptr %i.t, align 8, !tbaa !137
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2207
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !62
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  store i32 271, ptr %i.t, align 8, !tbaa !137
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2206
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !62
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  store i32 270, ptr %i.t, align 8, !tbaa !137
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2205
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !62
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  store i32 269, ptr %i.t, align 8, !tbaa !137
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2204
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !62
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  store i32 268, ptr %i.t, align 8, !tbaa !137
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 2203
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !62
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  store i32 267, ptr %i.t, align 8, !tbaa !137
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 2202
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !62
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  store i32 266, ptr %i.t, align 8, !tbaa !137
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2201
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !62
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  store i32 265, ptr %i.t, align 8, !tbaa !137
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !62
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  store i32 264, ptr %i.t, align 8, !tbaa !137
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 2199
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !62
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  store i32 263, ptr %i.t, align 8, !tbaa !137
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 2198
  %i.ct = load i8, ptr %i.cs, align 2, !tbaa !62
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  store i32 262, ptr %i.t, align 8, !tbaa !137
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2197
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !62
  %i.cx = icmp eq i8 %i.cw, 0
end_hunk_0
begin_hunk_1_@_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij:bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2251
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !62
  %i.dz = icmp eq i8 %i.dy, 0
  br i1 %i.dz, label %bb.al, label %.lr.ph.i

bb.al:                                            ; preds = %bb.ak
  store i32 27, ptr %i.dk, align 4, !tbaa !139
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 2250
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !62
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %bb.am, label %.lr.ph.i

bb.am:                                            ; preds = %bb.al
  store i32 26, ptr %i.dk, align 4, !tbaa !139
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 2249
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !62
  %i.ef = icmp eq i8 %i.ee, 0
  br i1 %i.ef, label %bb.an, label %.lr.ph.i

bb.an:                                            ; preds = %bb.am
  store i32 25, ptr %i.dk, align 4, !tbaa !139
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !62
  %i.ei = icmp eq i8 %i.eh, 0
  br i1 %i.ei, label %bb.ao, label %.lr.ph.i

bb.ao:                                            ; preds = %bb.an
  store i32 24, ptr %i.dk, align 4, !tbaa !139
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 2247
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !62
  %i.el = icmp eq i8 %i.ek, 0
  br i1 %i.el, label %bb.ap, label %.lr.ph.i

bb.ap:                                            ; preds = %bb.ao
  store i32 23, ptr %i.dk, align 4, !tbaa !139
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 2246
  %i.en = load i8, ptr %i.em, align 2, !tbaa !62
  %i.eo = icmp eq i8 %i.en, 0
  br i1 %i.eo, label %bb.aq, label %.lr.ph.i

bb.aq:                                            ; preds = %bb.ap
  store i32 22, ptr %i.dk, align 4, !tbaa !139
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 2245
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !62
  %i.er = icmp eq i8 %i.eq, 0
  br i1 %i.er, label %bb.ar, label %.lr.ph.i

bb.ar:                                            ; preds = %bb.aq
  store i32 21, ptr %i.dk, align 4, !tbaa !139
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 2244
  %i.et = load i8, ptr %i.es, align 4, !tbaa !62
  %i.eu = icmp eq i8 %i.et, 0
  br i1 %i.eu, label %bb.as, label %.lr.ph.i

bb.as:                                            ; preds = %bb.ar
  store i32 20, ptr %i.dk, align 4, !tbaa !139
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 2243
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !62
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.at, label %.lr.ph.i

bb.at:                                            ; preds = %bb.as
  store i32 19, ptr %i.dk, align 4, !tbaa !139
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2242
  %i.ez = load i8, ptr %i.ey, align 2, !tbaa !62
  %i.fa = icmp eq i8 %i.ez, 0
  br i1 %i.fa, label %bb.au, label %.lr.ph.i

bb.au:                                            ; preds = %bb.at
  store i32 18, ptr %i.dk, align 4, !tbaa !139
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 2241
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !62
  %i.fd = icmp eq i8 %i.fc, 0
  br i1 %i.fd, label %bb.av, label %.lr.ph.i

bb.av:                                            ; preds = %bb.au
  store i32 17, ptr %i.dk, align 4, !tbaa !139
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !62
  %i.fg = icmp eq i8 %i.ff, 0
  br i1 %i.fg, label %bb.aw, label %.lr.ph.i

bb.aw:                                            ; preds = %bb.av
  store i32 16, ptr %i.dk, align 4, !tbaa !139
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2239
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !62
  %i.fj = icmp eq i8 %i.fi, 0
  br i1 %i.fj, label %bb.ax, label %.lr.ph.i

bb.ax:                                            ; preds = %bb.aw
  store i32 15, ptr %i.dk, align 4, !tbaa !139
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 2238
  %i.fl = load i8, ptr %i.fk, align 2, !tbaa !62
  %i.fm = icmp eq i8 %i.fl, 0
  br i1 %i.fm, label %bb.ay, label %.lr.ph.i

bb.ay:                                            ; preds = %bb.ax
  store i32 14, ptr %i.dk, align 4, !tbaa !139
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 2237
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !62
  %i.fp = icmp eq i8 %i.fo, 0
  br i1 %i.fp, label %bb.az, label %.lr.ph.i

bb.az:                                            ; preds = %bb.ay
  store i32 13, ptr %i.dk, align 4, !tbaa !139
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 2236
  %i.fr = load i8, ptr %i.fq, align 4, !tbaa !62
  %i.fs = icmp eq i8 %i.fr, 0
  br i1 %i.fs, label %bb.ba, label %.lr.ph.i

bb.ba:                                            ; preds = %bb.az
  store i32 12, ptr %i.dk, align 4, !tbaa !139
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2235
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !62
  %i.fv = icmp eq i8 %i.fu, 0
  br i1 %i.fv, label %bb.bb, label %.lr.ph.i

bb.bb:                                            ; preds = %bb.ba
  store i32 11, ptr %i.dk, align 4, !tbaa !139
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 2234
  %i.fx = load i8, ptr %i.fw, align 2, !tbaa !62
  %i.fy = icmp eq i8 %i.fx, 0
  br i1 %i.fy, label %bb.bc, label %.lr.ph.i

bb.bc:                                            ; preds = %bb.bb
  store i32 10, ptr %i.dk, align 4, !tbaa !139
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2233
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !62
  %i.gb = icmp eq i8 %i.ga, 0
  br i1 %i.gb, label %bb.bd, label %.lr.ph.i

bb.bd:                                            ; preds = %bb.bc
  store i32 9, ptr %i.dk, align 4, !tbaa !139
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 2232
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !62
  %i.ge = icmp eq i8 %i.gd, 0
  br i1 %i.ge, label %bb.be, label %.lr.ph.i

bb.be:                                            ; preds = %bb.bd
  store i32 8, ptr %i.dk, align 4, !tbaa !139
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 2231
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !62
  %i.gh = icmp eq i8 %i.gg, 0
  br i1 %i.gh, label %bb.bf, label %.lr.ph.i

bb.bf:                                            ; preds = %bb.be
  store i32 7, ptr %i.dk, align 4, !tbaa !139
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 2230
  %i.gj = load i8, ptr %i.gi, align 2, !tbaa !62
  %i.gk = icmp eq i8 %i.gj, 0
  br i1 %i.gk, label %bb.bg, label %.lr.ph.i

bb.bg:                                            ; preds = %bb.bf
  store i32 6, ptr %i.dk, align 4, !tbaa !139
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 2229
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !62
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %bb.bh, label %.lr.ph.i

bb.bh:                                            ; preds = %bb.bg
  store i32 5, ptr %i.dk, align 4, !tbaa !139
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 2228
  %i.gp = load i8, ptr %i.go, align 4, !tbaa !62
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.bi, label %.lr.ph.i

bb.bi:                                            ; preds = %bb.bh
  store i32 4, ptr %i.dk, align 4, !tbaa !139
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 2227
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !62
  %i.gt = icmp eq i8 %i.gs, 0
  br i1 %i.gt, label %bb.bj, label %.lr.ph.i

bb.bj:                                            ; preds = %bb.bi
  store i32 3, ptr %i.dk, align 4, !tbaa !139
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 2226
  %i.gv = load i8, ptr %i.gu, align 2, !tbaa !62
  %i.gw = icmp eq i8 %i.gv, 0
  br i1 %i.gw, label %bb.bk, label %.lr.ph.i

bb.bk:                                            ; preds = %bb.bj
  store i32 2, ptr %i.dk, align 4, !tbaa !139
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 2225
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !62
  %i.gz = icmp eq i8 %i.gy, 0                     ; 2 uses
  %spec.store.select68 = select i1 %i.gz, i32 1, i32 2
  store i32 %spec.store.select68, ptr %i.dk, align 4
  %spec.select69 = select i1 %i.gz, i32 1, i32 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bk, %.critedge, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj
  %storemerge24.lcssa = phi i32 [ 9, %bb.bd ], [ 32, %.critedge ], [ 31, %bb.ah ], [ %spec.select69, %bb.bk ], [ 30, %bb.ai ], [ 16, %bb.aw ], [ 29, %bb.aj ], [ 3, %bb.bj ], [ 28, %bb.ak ], [ 11, %bb.bb ], [ 27, %bb.al ], [ 4, %bb.bi ], [ 26, %bb.am ], [ 15, %bb.ax ], [ 25, %bb.an ], [ 5, %bb.bh ], [ 24, %bb.ao ], [ 10, %bb.bc ], [ 23, %bb.ap ], [ 6, %bb.bg ], [ 22, %bb.aq ], [ 14, %bb.ay ], [ 21, %bb.ar ], [ 7, %bb.bf ], [ 20, %bb.as ], [ 12, %bb.ba ], [ 19, %bb.at ], [ 8, %bb.be ], [ 18, %bb.au ], [ 13, %bb.az ], [ 17, %bb.av ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.a, i8 0, i64 76, i1 false)
  %i.ha = load i8, ptr %i.s, align 8, !tbaa !62   ; 2 uses
  %i.hb = icmp eq i8 %i.ha, 0                     ; 2 uses
  %spec.select49.i = select i1 %i.hb, i32 3, i32 4
  %spec.select.i = select i1 %i.hb, i32 138, i32 7
  %i.hc = zext i8 %i.ha to i32
  %i.hd = add nsw i32 %storemerge.lcssa, -1
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 68 ; 4 uses
  %i.hh = zext nneg i32 %i.hd to i64              ; 2 uses
  %wide.trip.count.i = zext nneg i32 %storemerge.lcssa to i64
  %3 = add nsw i64 %wide.trip.count.i, -2
  br label %bb.bl

bb.bl:                                            ; preds = %bb.by, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.by ] ; 4 uses
  %.056.i = phi i32 [ 255, %.lr.ph.i ], [ %.1.i, %bb.by ] ; 2 uses
  %.13554.i = phi i32 [ %spec.select49.i, %.lr.ph.i ], [ %.3.i, %bb.by ] ; 2 uses
  %.13753.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.339.i, %bb.by ] ; 2 uses
  %.04052.i = phi i32 [ 0, %.lr.ph.i ], [ %.141.i, %bb.by ] ; 2 uses
  %.04251.i = phi i32 [ %i.hc, %.lr.ph.i ], [ %i.hn, %bb.by ] ; 6 uses
  %i.hi = icmp samesign ult i64 %indvars.iv.i, %i.hh
  br i1 %i.hi, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hj = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !62
  %i.hm = zext i8 %i.hl to i32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.hn = phi i32 [ %i.hm, %bb.bm ], [ 255, %bb.bl ] ; 8 uses
  %i.ho = add nsw i32 %.04052.i, 1                ; 4 uses
  %i.hp = icmp slt i32 %i.ho, %.13753.i
  %i.hq = icmp eq i32 %.04251.i, %i.hn            ; 3 uses
  %or.cond.i = select i1 %i.hp, i1 %i.hq, i1 false
  br i1 %or.cond.i, label %bb.by, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hr = icmp slt i32 %i.ho, %.13554.i
  br i1 %i.hr, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hs = zext nneg i32 %.04251.i to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hs ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !4
  %i.hv = add i32 %i.hu, %i.ho
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !4
  br label %bb.bx

bb.bq:                                            ; preds = %bb.bo
  %.not.i = icmp eq i32 %.04251.i, 0
  br i1 %.not.i, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not48.i = icmp eq i32 %.04251.i, %.056.i
  br i1 %.not48.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hw = zext nneg i32 %.04251.i to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hw ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !4
  %i.hz = add i32 %i.hy, 1
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !4
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.ia = load i32, ptr %i.he, align 16, !tbaa !4
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr %i.he, align 16, !tbaa !4
  br label %bb.bx

bb.bu:                                            ; preds = %bb.bq
  %i.ic = icmp slt i32 %.04052.i, 10
  br i1 %i.ic, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.id = load i32, ptr %i.hg, align 4, !tbaa !4
  %i.ie = add i32 %i.id, 1
  store i32 %i.ie, ptr %i.hg, align 4, !tbaa !4
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.if = load i32, ptr %i.hf, align 8, !tbaa !4
  %i.ig = add i32 %i.if, 1
  store i32 %i.ig, ptr %i.hf, align 8, !tbaa !4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bt, %bb.bp
  %i.ih = icmp eq i32 %i.hn, 0                    ; 2 uses
  %..i = select i1 %i.hq, i32 6, i32 7
  %.238.i = select i1 %i.ih, i32 138, i32 %..i
  %i.ii = select i1 %i.ih, i1 true, i1 %i.hq
  %.2.i = select i1 %i.ii, i32 3, i32 4
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bn
  %.141.i = phi i32 [ 0, %bb.bx ], [ %i.ho, %bb.bn ] ; 3 uses
  %.339.i = phi i32 [ %.238.i, %bb.bx ], [ %.13753.i, %bb.bn ] ; 2 uses
  %.3.i = phi i32 [ %.2.i, %bb.bx ], [ %.13554.i, %bb.bn ] ; 2 uses
  %.1.i = phi i32 [ %.04251.i, %bb.bx ], [ %.056.i, %bb.bn ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %3
  br i1 %exitcond.not.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder15LevelTableDummyEPKhiPj.exit.loopexit.peel.begin, label %bb.bl, !llvm.loop !140

_ZN9NCompress8NDeflate8NEncoder6CCoder15LevelTableDummyEPKhiPj.exit.loopexit.peel.begin: ; preds = %bb.by
  %4 = icmp samesign ult i64 %indvars.iv.next.i, %i.hh
  br i1 %4, label %5, label %10

5:                                                ; preds = %_ZN9NCompress8NDeflate8NEncoder6CCoder15LevelTableDummyEPKhiPj.exit.loopexit.peel.begin
  %6 = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.next.i
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !62
  %9 = zext i8 %8 to i32
  br label %10

10:                                               ; preds = %5, %_ZN9NCompress8NDeflate8NEncoder6CCoder15LevelTableDummyEPKhiPj.exit.loopexit.peel.begin
  %11 = phi i32 [ %9, %5 ], [ 255, %_ZN9NCompress8NDeflate8NEncoder6CCoder15LevelTableDummyEPKhiPj.exit.loopexit.peel.begin ]
  %12 = add nsw i32 %.141.i, 1                    ; 3 uses
  %13 = icmp slt i32 %12, %.339.i
  %14 = icmp eq i32 %i.hn, %11
  %or.cond.i.peel = select i1 %13, i1 %14, i1 false
  br i1 %or.cond.i.peel, label %.lr.ph.i26, label %15

15:                                               ; preds = %10
  %16 = icmp slt i32 %12, %.3.i
  br i1 %16, label %35, label %17

17:                                               ; preds = %15
  %.not.i.peel = icmp eq i32 %i.hn, 0
  br i1 %.not.i.peel, label %27, label %18

18:                                               ; preds = %17
  %.not48.i.peel = icmp eq i32 %i.hn, %.1.i
  br i1 %.not48.i.peel, label %24, label %19

19:                                               ; preds = %18
  %20 = zext nneg i32 %i.hn to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %20 ; 2 uses
  %22 = load i32, ptr %21, align 4, !tbaa !4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !4
  br label %24

24:                                               ; preds = %19, %18
  %25 = load i32, ptr %i.he, align 16, !tbaa !4
  %26 = add i32 %25, 1
  store i32 %26, ptr %i.he, align 16, !tbaa !4
  br label %.lr.ph.i26

27:                                               ; preds = %17
  %28 = icmp slt i32 %.141.i, 10
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = load i32, ptr %i.hf, align 8, !tbaa !4
  %31 = add i32 %30, 1
  store i32 %31, ptr %i.hf, align 8, !tbaa !4
  br label %.lr.ph.i26

32:                                               ; preds = %27
  %33 = load i32, ptr %i.hg, align 4, !tbaa !4
  %34 = add i32 %33, 1
  store i32 %34, ptr %i.hg, align 4, !tbaa !4
  br label %.lr.ph.i26

35:                                               ; preds = %15
  %36 = zext nneg i32 %i.hn to i64
  %37 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %36 ; 2 uses
  %38 = load i32, ptr %37, align 4, !tbaa !4
  %39 = add i32 %38, %12
  store i32 %39, ptr %37, align 4, !tbaa !4
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %24, %29, %32, %35, %10
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !62  ; 2 uses
  %i.il = icmp eq i8 %i.ik, 0                     ; 2 uses
  %spec.select49.i27 = select i1 %i.il, i32 3, i32 4
  %spec.select.i28 = select i1 %i.il, i32 138, i32 7
  %i.im = zext i8 %i.ik to i32
  %i.in = add nsw i32 %storemerge24.lcssa, -1
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.a, i64 68 ; 2 uses
  %i.ir = zext nneg i32 %i.in to i64
  %wide.trip.count.i29 = zext nneg i32 %storemerge24.lcssa to i64
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cm, %.lr.ph.i26
  %indvars.iv.i30 = phi i64 [ 0, %.lr.ph.i26 ], [ %indvars.iv.next.i46, %bb.cm ] ; 3 uses
  %.056.i31 = phi i32 [ 255, %.lr.ph.i26 ], [ %.1.i45, %bb.cm ] ; 2 uses
  %.13554.i32 = phi i32 [ %spec.select49.i27, %.lr.ph.i26 ], [ %.3.i44, %bb.cm ] ; 2 uses
  %.13753.i33 = phi i32 [ %spec.select.i28, %.lr.ph.i26 ], [ %.339.i43, %bb.cm ] ; 2 uses
  %.04052.i34 = phi i32 [ 0, %.lr.ph.i26 ], [ %.141.i42, %bb.cm ] ; 2 uses
  %.04251.i35 = phi i32 [ %i.im, %.lr.ph.i26 ], [ %i.ix, %bb.cm ] ; 6 uses
  %i.is = icmp samesign ult i64 %indvars.iv.i30, %i.ir
  br i1 %i.is, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.it = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv.i30
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !62
  %i.iw = zext i8 %i.iv to i32
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.ix = phi i32 [ %i.iw, %bb.ca ], [ 255, %bb.bz ] ; 3 uses
  %i.iy = add nsw i32 %.04052.i34, 1              ; 4 uses
  %i.iz = icmp slt i32 %i.iy, %.13753.i33
  %i.ja = icmp eq i32 %.04251.i35, %i.ix          ; 3 uses
  %or.cond.i36 = select i1 %i.iz, i1 %i.ja, i1 false
  br i1 %or.cond.i36, label %bb.cm, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jb = icmp slt i32 %i.iy, %.13554.i32
  br i1 %i.jb, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.jc = zext nneg i32 %.04251.i35 to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jc ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !4
  %i.jf = add i32 %i.je, %i.iy
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !4
  br label %bb.cl

bb.ce:                                            ; preds = %bb.cc
  %.not.i37 = icmp eq i32 %.04251.i35, 0
  br i1 %.not.i37, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.not48.i38 = icmp eq i32 %.04251.i35, %.056.i31
  br i1 %.not48.i38, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jg = zext nneg i32 %.04251.i35 to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jg ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !4
  %i.jj = add i32 %i.ji, 1
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !4
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.jk = load i32, ptr %i.io, align 16, !tbaa !4
  %i.jl = add i32 %i.jk, 1
  store i32 %i.jl, ptr %i.io, align 16, !tbaa !4
  br label %bb.cl

bb.ci:                                            ; preds = %bb.ce
  %i.jm = icmp slt i32 %.04052.i34, 10
  br i1 %i.jm, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.jn = load i32, ptr %i.iq, align 4, !tbaa !4
  %i.jo = add i32 %i.jn, 1
  store i32 %i.jo, ptr %i.iq, align 4, !tbaa !4
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.jp = load i32, ptr %i.ip, align 8, !tbaa !4
  %i.jq = add i32 %i.jp, 1
  store i32 %i.jq, ptr %i.ip, align 8, !tbaa !4
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ch, %bb.cd
  %i.jr = icmp eq i32 %i.ix, 0                    ; 2 uses
  %..i39 = select i1 %i.ja, i32 6, i32 7
  %.238.i40 = select i1 %i.jr, i32 138, i32 %..i39
  %i.js = select i1 %i.jr, i1 true, i1 %i.ja
  %.2.i41 = select i1 %i.js, i32 3, i32 4
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cb
  %.141.i42 = phi i32 [ 0, %bb.cl ], [ %i.iy, %bb.cb ]
  %.339.i43 = phi i32 [ %.238.i40, %bb.cl ], [ %.13753.i33, %bb.cb ]
  %.3.i44 = phi i32 [ %.2.i41, %bb.cl ], [ %.13554.i32, %bb.cb ]
  %.1.i45 = phi i32 [ %.04251.i35, %bb.cl ], [ %.056.i31, %bb.cb ]
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i30, 1 ; 2 uses
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i46, %wide.trip.count.i29
  br i1 %exitcond.not.i47, label %_ZN9NCompress8NDeflate8NEncoder6CCoder15LevelTableDummyEPKhiPj.exit48, label %bb.bz, !llvm.loop !90

_ZN9NCompress8NDeflate8NEncoder6CCoder15LevelTableDummyEPKhiPj.exit48: ; preds = %bb.cm
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 4816
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 4892 ; 2 uses
  call void @Huffman_Generate(ptr noundef nonnull %i.a, ptr noundef nonnull %i.jt, ptr noundef nonnull %i.ju, i32 noundef 19, i32 noundef 7)
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 17 uses
  store i32 4, ptr %i.jv, align 8, !tbaa !141
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 1338
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 4908
  %i.jy = load i8, ptr %i.jx, align 4, !tbaa !62  ; 2 uses
  store i8 %i.jy, ptr %i.jw, align 2, !tbaa !62
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 4909
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !62  ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 1339
  store i8 %i.ka, ptr %i.kb, align 1, !tbaa !62
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 4910
  %i.kd = load i8, ptr %i.kc, align 2, !tbaa !62  ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 1340
  store i8 %i.kd, ptr %i.ke, align 4, !tbaa !62
  %i.kf = load i8, ptr %i.ju, align 4, !tbaa !62  ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 1341
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !62
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 4900
  %i.ki = load i8, ptr %i.kh, align 4, !tbaa !62  ; 3 uses
  %.not.4 = icmp eq i8 %i.ki, 0
  br i1 %.not.4, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_ZN9NCompress8NDeflate8NEncoder6CCoder15LevelTableDummyEPKhiPj.exit48
  store i32 5, ptr %i.jv, align 8, !tbaa !141
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_ZN9NCompress8NDeflate8NEncoder6CCoder15LevelTableDummyEPKhiPj.exit48
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 1342
  store i8 %i.ki, ptr %i.kj, align 2, !tbaa !62
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 4899
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !62  ; 3 uses
  %.not.5 = icmp eq i8 %i.kl, 0
  br i1 %.not.5, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i32 6, ptr %i.jv, align 8, !tbaa !141
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 1343
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !62
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 4901
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !62  ; 3 uses
  %.not.6 = icmp eq i8 %i.ko, 0
  br i1 %.not.6, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  store i32 7, ptr %i.jv, align 8, !tbaa !141
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i8 %i.ko, ptr %i.kp, align 8, !tbaa !62
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 4898
  %i.kr = load i8, ptr %i.kq, align 2, !tbaa !62  ; 3 uses
  %.not.7 = icmp eq i8 %i.kr, 0
  br i1 %.not.7, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store i32 8, ptr %i.jv, align 8, !tbaa !141
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 1345
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !62
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 4902
  %i.ku = load i8, ptr %i.kt, align 2, !tbaa !62  ; 3 uses
  %.not.8 = icmp eq i8 %i.ku, 0
  br i1 %.not.8, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store i32 9, ptr %i.jv, align 8, !tbaa !141
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 1346
  store i8 %i.ku, ptr %i.kv, align 2, !tbaa !62
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 4897
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !62  ; 3 uses
  %.not.9 = icmp eq i8 %i.kx, 0
  br i1 %.not.9, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i32 10, ptr %i.jv, align 8, !tbaa !141
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 1347
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !62
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 4903
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !62  ; 3 uses
  %.not.10 = icmp eq i8 %i.la, 0
  br i1 %.not.10, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i32 11, ptr %i.jv, align 8, !tbaa !141
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 1348
  store i8 %i.la, ptr %i.lb, align 4, !tbaa !62
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 4896
  %i.ld = load i8, ptr %i.lc, align 8, !tbaa !62  ; 3 uses
  %.not.11 = icmp eq i8 %i.ld, 0
  br i1 %.not.11, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  store i32 12, ptr %i.jv, align 8, !tbaa !141
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 1349
  store i8 %i.ld, ptr %i.le, align 1, !tbaa !62
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 4904
  %i.lg = load i8, ptr %i.lf, align 8, !tbaa !62  ; 3 uses
  %.not.12 = icmp eq i8 %i.lg, 0
  br i1 %.not.12, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i32 13, ptr %i.jv, align 8, !tbaa !141
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 1350
  store i8 %i.lg, ptr %i.lh, align 2, !tbaa !62
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 4895
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !62  ; 3 uses
  %.not.13 = icmp eq i8 %i.lj, 0
  br i1 %.not.13, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i32 14, ptr %i.jv, align 8, !tbaa !141
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 1351
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !62
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 4905
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !62  ; 3 uses
  %.not.14 = icmp eq i8 %i.lm, 0
  br i1 %.not.14, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store i32 15, ptr %i.jv, align 8, !tbaa !141
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i8 %i.lm, ptr %i.ln, align 8, !tbaa !62
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 4894
  %i.lp = load i8, ptr %i.lo, align 2, !tbaa !62  ; 3 uses
  %.not.15 = icmp eq i8 %i.lp, 0
  br i1 %.not.15, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  store i32 16, ptr %i.jv, align 8, !tbaa !141
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 1353
  store i8 %i.lp, ptr %i.lq, align 1, !tbaa !62
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 4906
  %i.ls = load i8, ptr %i.lr, align 2, !tbaa !62  ; 3 uses
  %.not.16 = icmp eq i8 %i.ls, 0
  br i1 %.not.16, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  store i32 17, ptr %i.jv, align 8, !tbaa !141
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i8 %i.ls, ptr %i.lt, align 2, !tbaa !62
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 4893
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !62  ; 3 uses
  %.not.17 = icmp eq i8 %i.lv, 0
  br i1 %.not.17, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store i32 18, ptr %i.jv, align 8, !tbaa !141
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 1355
  store i8 %i.lv, ptr %i.lw, align 1, !tbaa !62
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 4907
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !62  ; 3 uses
  %.not.18 = icmp eq i8 %i.ly, 0
  br i1 %.not.18, label %.lr.ph.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  store i32 19, ptr %i.jv, align 8, !tbaa !141
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.dp, %bb.do
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 1356
  store i8 %i.ly, ptr %i.lz, align 4, !tbaa !62
  %i.ma = call noundef i32 @_ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.mb = load i32, ptr %i.a, align 16, !tbaa !4
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !4
  %i.me = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !4
  %i.mg = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.mj = load i32, ptr %i.mi, align 16, !tbaa !4
  %i.mk = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !4
  %i.mo = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !4
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.mr = load i32, ptr %i.mq, align 16, !tbaa !4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !4
  %i.mu = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !4
  %i.mw = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !4
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.mz = load i32, ptr %i.my, align 16, !tbaa !4
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !4
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !4
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !4
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.nh = load i32, ptr %i.ng, align 16, !tbaa !4 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !4  ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !4  ; 2 uses
  %i.nm = shl i32 %i.nh, 1
  %i.nn = mul i32 %i.nj, 3
  %i.no = add i32 %i.nn, %i.nm
  %i.np = mul i32 %i.nl, 7
  %i.nq = add i32 %i.np, %i.no
  %i.nr = zext i8 %i.kf to i32
  %i.ns = mul i32 %i.mb, %i.nr
  %i.nt = zext i8 %i.lv to i32
  %i.nu = mul i32 %i.md, %i.nt
  %i.nv = add i32 %i.nu, %i.ns
  %i.nw = zext i8 %i.lp to i32
  %i.nx = mul i32 %i.mf, %i.nw
  %i.ny = add i32 %i.nx, %i.nv
  %i.nz = zext i8 %i.lj to i32
  %i.oa = mul i32 %i.mh, %i.nz
  %i.ob = add i32 %i.oa, %i.ny
  %i.oc = zext i8 %i.ld to i32
  %i.od = mul i32 %i.mj, %i.oc
  %i.oe = add i32 %i.od, %i.ob
  %i.of = zext i8 %i.kx to i32
  %i.og = mul i32 %i.ml, %i.of
  %i.oh = add i32 %i.og, %i.oe
  %i.oi = zext i8 %i.kr to i32
  %i.oj = mul i32 %i.mn, %i.oi
  %i.ok = add i32 %i.oj, %i.oh
  %i.ol = zext i8 %i.kl to i32
  %i.om = mul i32 %i.mp, %i.ol
  %i.on = add i32 %i.om, %i.ok
  %i.oo = zext i8 %i.ki to i32
  %i.op = mul i32 %i.mr, %i.oo
  %i.oq = add i32 %i.op, %i.on
  %i.or = zext i8 %i.ko to i32
  %i.os = mul i32 %i.mt, %i.or
  %i.ot = add i32 %i.os, %i.oq
  %i.ou = zext i8 %i.ku to i32
  %i.ov = mul i32 %i.mv, %i.ou
  %i.ow = add i32 %i.ov, %i.ot
  %i.ox = zext i8 %i.la to i32
  %i.oy = mul i32 %i.mx, %i.ox
  %i.oz = add i32 %i.oy, %i.ow
  %i.pa = zext i8 %i.lg to i32
  %i.pb = mul i32 %i.mz, %i.pa
  %i.pc = add i32 %i.pb, %i.oz
  %i.pd = zext i8 %i.lm to i32
  %i.pe = mul i32 %i.nb, %i.pd
  %i.pf = add i32 %i.pe, %i.pc
  %i.pg = zext i8 %i.ls to i32
  %i.ph = mul i32 %i.nd, %i.pg
  %i.pi = add i32 %i.ph, %i.pf
  %i.pj = zext i8 %i.ly to i32
  %i.pk = mul i32 %i.nf, %i.pj
  %i.pl = add i32 %i.pk, %i.pi
  %i.pm = zext i8 %i.jy to i32
  %i.pn = mul i32 %i.nh, %i.pm
  %i.po = add i32 %i.pn, %i.pl
  %i.pp = zext i8 %i.ka to i32
  %i.pq = mul i32 %i.nj, %i.pp
  %i.pr = add i32 %i.pq, %i.po
  %i.ps = zext i8 %i.kd to i32
  %i.pt = mul i32 %i.nl, %i.ps
  %i.pu = add i32 %i.pt, %i.pr
  %i.pv = load i32, ptr %i.jv, align 8, !tbaa !141
  %i.pw = mul i32 %i.pv, 3
  %i.px = add i32 %i.ma, 17
  %i.py = add i32 %i.px, %i.pu
  %i.pz = add i32 %i.py, %i.nq
  %i.qa = add i32 %i.pz, %i.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %i.qa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder13TryFixedBlockEi(ptr noundef nonnull align 8 dereferenceable(39764) initializes((1288, 1292), (1936, 2256), (4912, 4916)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4920
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [332 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 324
  %i.f = load i32, ptr %i.e, align 4, !tbaa !133
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4912
  store i32 %i.f, ptr %i.g, align 8, !tbaa !107
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %i.i = load i32, ptr %i.h, align 4, !tbaa !135
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1288
  store i32 %i.i, ptr %i.j, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.k, i8 8, i64 144, i1 false), !tbaa !62
  %scevgep.i = getelementptr inbounds nuw i8, ptr %0, i64 2080
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %scevgep.i, i8 9, i64 112, i1 false), !tbaa !62
  %scevgep30.i = getelementptr inbounds nuw i8, ptr %0, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep30.i, i8 7, i64 24, i1 false), !tbaa !62
  %scevgep32.i = getelementptr inbounds nuw i8, ptr %0, i64 2216
  store i64 578721382704613384, ptr %scevgep32.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 5, i64 32, i1 false), !tbaa !62
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull align 1 dereferenceable(320) %i.k)
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.m = tail call noundef i32 @_ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.n = add i32 %i.m, 3
  ret i32 %i.n
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii(ptr noundef nonnull align 8 dereferenceable(39764) initializes((4912, 4916)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4920 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [332 x i8], ptr %i.b, i64 %i.c ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 322 ; 2 uses
  store i8 0, ptr %i.e, align 2, !tbaa !142
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %i.h = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %1, i32 noundef %i.g) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4912 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !107  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 324 ; 3 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.m = load i32, ptr %i.l, align 4, !tbaa !106  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1380 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1300
  %i.s = load i8, ptr %i.r, align 4, !tbaa !143, !range !51, !noundef !52
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = icmp ult i32 %i.m, 257
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.w = getelementptr inbounds [332 x i8], ptr %i.v, i64 %i.c ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 324
  %i.y = load i32, ptr %i.x, align 4, !tbaa !133
  store i32 %i.y, ptr %i.i, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 328
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !135
  store i32 %i.aa, ptr %i.n, align 8, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.ab, i8 8, i64 144, i1 false), !tbaa !62
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2080
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %scevgep.i.i, i8 9, i64 112, i1 false), !tbaa !62
  %scevgep30.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep30.i.i, i8 7, i64 24, i1 false), !tbaa !62
  %scevgep32.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2216
  store i64 578721382704613384, ptr %scevgep32.i.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 5, i64 32, i1 false), !tbaa !62
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull align 1 dereferenceable(320) %i.ab)
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.ad = tail call noundef i32 @_ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.ae = add i32 %i.ad, 3                        ; 2 uses
  %i.af = icmp ult i32 %i.ae, %i.h
  %i.ag = zext i1 %i.af to i8
  store i8 %i.ag, ptr %i.e, align 2, !tbaa !142
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 %i.h)
  %.pre = load i32, ptr %i.i, align 8, !tbaa !107
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ah = phi i32 [ %.pre, %bb.b ], [ %i.j, %bb.a ]
  %.1 = phi i32 [ %spec.select, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.013.i = phi i32 [ 0, %bb.c ], [ %i.al, %bb.d ]
  %.0.i = phi i32 [ %i.ah, %bb.c ], [ %i.am, %bb.d ] ; 2 uses
  %i.ai = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 65535) ; 2 uses
  %i.aj = shl nuw nsw i32 %i.ai, 3
  %i.ak = add i32 %.013.i, 40
  %i.al = add i32 %i.ak, %i.aj                    ; 3 uses
  %i.am = sub i32 %.0.i, %i.ai                    ; 2 uses
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %_ZN9NCompress8NDeflate8NEncoderL13GetStorePriceEji.exit, label %bb.d, !llvm.loop !144

_ZN9NCompress8NDeflate8NEncoderL13GetStorePriceEji.exit: ; preds = %bb.d
  %i.an = icmp ule i32 %i.al, %.1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 321
  %i.ap = zext i1 %i.an to i8
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !145
  %spec.select56 = tail call i32 @llvm.umin.i32(i32 %i.al, i32 %.1) ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 320 ; 2 uses
  store i8 0, ptr %i.aq, align 4, !tbaa !146
  %i.ar = icmp sgt i32 %2, 1
  %i.as = icmp ugt i32 %i.m, 127
  %or.cond57 = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond57, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN9NCompress8NDeflate8NEncoderL13GetStorePriceEji.exit
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.au = shl i32 %1, 1                           ; 3 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [332 x i8], ptr %i.at, i64 %i.av ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(320) %i.aw, ptr noundef nonnull align 4 dereferenceable(320) %i.d, i64 320, i1 false), !tbaa.struct !136
  %i.ax = load i32, ptr %i.k, align 4, !tbaa !133
  %i.ay = lshr i32 %i.ax, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 324 ; 3 uses
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !133
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !135
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 328
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !135
  %i.bd = add nsw i32 %2, -1                      ; 2 uses
  %i.be = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.au, i32 noundef %i.bd)
  %i.bf = load i32, ptr %i.k, align 4, !tbaa !133
  %i.bg = load i32, ptr %i.az, align 4, !tbaa !133 ; 2 uses
  %i.bh = sub i32 %i.bf, %i.bg                    ; 2 uses
  %i.bi = icmp ugt i32 %i.bg, 63
  %i.bj = icmp ugt i32 %i.bh, 63
  %or.cond58 = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond58, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.bl = or disjoint i32 %i.au, 1                ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [332 x i8], ptr %i.bk, i64 %i.bm ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(320) %i.bn, ptr noundef nonnull align 4 dereferenceable(320) %i.d, i64 320, i1 false), !tbaa.struct !136
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 324
  store i32 %i.bh, ptr %i.bo, align 4, !tbaa !133
  %i.bp = load i32, ptr %i.n, align 8, !tbaa !65
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 328
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !135
  %i.br = load i32, ptr %i.az, align 4, !tbaa !133
  %i.bs = load i32, ptr %i.p, align 4, !tbaa !76
  %i.bt = sub i32 %i.bs, %i.br
  store i32 %i.bt, ptr %i.p, align 4, !tbaa !76
  %i.bu = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.bl, i32 noundef %i.bd)
  %i.bv = add i32 %i.bu, %i.be                    ; 2 uses
  %i.bw = icmp ult i32 %i.bv, %spec.select56
  %i.bx = zext i1 %i.bw to i8
  store i8 %i.bx, ptr %i.aq, align 4, !tbaa !146
  %spec.select59 = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 %spec.select56)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %_ZN9NCompress8NDeflate8NEncoderL13GetStorePriceEji.exit
  %.5 = phi i32 [ %spec.select56, %_ZN9NCompress8NDeflate8NEncoderL13GetStorePriceEji.exit ], [ %spec.select59, %bb.f ], [ %spec.select56, %bb.e ]
  store i32 %i.q, ptr %i.p, align 4, !tbaa !76
  store i32 %i.o, ptr %i.n, align 8, !tbaa !65
  ret i32 %.5
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4920 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [332 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.f = load i8, ptr %i.e, align 4, !tbaa !146, !range !51, !noundef !52
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %.tr2529 = phi i32 [ %i.i, %tailrecurse ], [ %1, %bb.a ]
  %i.h = shl i32 %.tr2529, 1                      ; 2 uses
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.h, i1 noundef zeroext false)
  %i.i = or disjoint i32 %i.h, 1                  ; 3 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.k = sext i32 %i.i to i64                     ; 2 uses
  %i.l = getelementptr inbounds [332 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 320
  %i.n = load i8, ptr %i.m, align 4, !tbaa !146, !range !51, !noundef !52
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr25.lcssa = phi i32 [ %1, %bb.a ], [ %i.i, %tailrecurse ]
  %.lcssa27 = phi i64 [ %i.c, %bb.a ], [ %i.k, %tailrecurse ]
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.l, %tailrecurse ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.lcssa, i64 321
  %i.q = load i8, ptr %i.p, align 1, !tbaa !145, !range !51, !noundef !52
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa, i64 324
  %i.t = load i32, ptr %i.s, align 4, !tbaa !133
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.v = load i32, ptr %i.u, align 4, !tbaa !76
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder15WriteStoreBlockEjjb(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.t, i32 noundef %i.v, i1 noundef zeroext %2)
  br label %bb.l

bb.c:                                             ; preds = %tailrecurse._crit_edge
  %i.w = zext i1 %2 to i32
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.w, i32 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %.lcssa, i64 322
  %i.y = load i8, ptr %i.x, align 2, !tbaa !142, !range !51, !noundef !52
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 1, i32 noundef 2)
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.ab = getelementptr inbounds [332 x i8], ptr %i.aa, i64 %.lcssa27 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 324
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !133
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4912
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !107
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 328
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !135
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1288
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !65
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.ai, i8 8, i64 144, i1 false), !tbaa !62
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2080
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %scevgep.i.i, i8 9, i64 112, i1 false), !tbaa !62
  %scevgep30.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep30.i.i, i8 7, i64 24, i1 false), !tbaa !62
  %scevgep32.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2216
  store i64 578721382704613384, ptr %scevgep32.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 5, i64 32, i1 false), !tbaa !62
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull align 1 dereferenceable(320) %i.ai)
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 5 uses
  br label %bb.e

.preheader:                                       ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3408 ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !62
  %i.an = zext i8 %i.am to i32
  %i.ao = sub nsw i32 9, %i.an
  %i.ap = shl nuw nsw i32 1, %i.ao
  store i32 %i.ap, ptr %i.al, align 8, !tbaa !4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2225
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !62
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 9, %i.as
  %i.au = shl nuw nsw i32 1, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3412
  store i32 %i.au, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2226
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !62
  %i.ay = zext i8 %i.ax to i32
  %i.az = sub nsw i32 9, %i.ay
  %i.ba = shl nuw nsw i32 1, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 3416
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2227
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !62
  %i.be = zext i8 %i.bd to i32
  %i.bf = sub nsw i32 9, %i.be
  %i.bg = shl nuw nsw i32 1, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 3420
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2228
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !62
  %i.bk = zext i8 %i.bj to i32
  %i.bl = sub nsw i32 9, %i.bk
  %i.bm = shl nuw nsw i32 1, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3424
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2229
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = zext i8 %i.bp to i32
  %i.br = sub nsw i32 9, %i.bq
  %i.bs = shl nuw nsw i32 1, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3428
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2230
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !62
  %i.bw = zext i8 %i.bv to i32
  %i.bx = sub nsw i32 9, %i.bw
  %i.by = shl nuw nsw i32 1, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 3432
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !4
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2231
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62
  %i.cc = zext i8 %i.cb to i32
  %i.cd = sub nsw i32 9, %i.cc
  %i.ce = shl nuw nsw i32 1, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 3436
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 2232
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !62
  %i.ci = zext i8 %i.ch to i32
  %i.cj = sub nsw i32 9, %i.ci
  %i.ck = shl nuw nsw i32 1, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 3440
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !4
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 2233
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !62
  %i.co = zext i8 %i.cn to i32
  %i.cp = sub nsw i32 9, %i.co
  %i.cq = shl nuw nsw i32 1, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 3444
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !4
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 2234
  %i.ct = load i8, ptr %i.cs, align 2, !tbaa !62
  %i.cu = zext i8 %i.ct to i32
  %i.cv = sub nsw i32 9, %i.cu
  %i.cw = shl nuw nsw i32 1, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 3448
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !4
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 2235
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !62
  %i.da = zext i8 %i.cz to i32
  %i.db = sub nsw i32 9, %i.da
  %i.dc = shl nuw nsw i32 1, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 3452
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !4
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 2236
  %i.df = load i8, ptr %i.de, align 4, !tbaa !62
  %i.dg = zext i8 %i.df to i32
  %i.dh = sub nsw i32 9, %i.dg
  %i.di = shl nuw nsw i32 1, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 3456
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !4
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 2237
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !62
  %i.dm = zext i8 %i.dl to i32
  %i.dn = sub nsw i32 9, %i.dm
  %i.do = shl nuw nsw i32 1, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 3460
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !4
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2238
  %i.dr = load i8, ptr %i.dq, align 2, !tbaa !62
  %i.ds = zext i8 %i.dr to i32
  %i.dt = sub nsw i32 9, %i.ds
  %i.du = shl nuw nsw i32 1, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 3464
  store i32 %i.du, ptr %i.dv, align 8, !tbaa !4
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 2239
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !62
  %i.dy = zext i8 %i.dx to i32
  %i.dz = sub nsw i32 9, %i.dy
  %i.ea = shl nuw nsw i32 1, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 3468
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !4
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !62
  %i.ee = zext i8 %i.ed to i32
  %i.ef = sub nsw i32 9, %i.ee
  %i.eg = shl nuw nsw i32 1, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 3472
  store i32 %i.eg, ptr %i.eh, align 8, !tbaa !4
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 2241
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !62
  %i.ek = zext i8 %i.ej to i32
  %i.el = sub nsw i32 9, %i.ek
  %i.em = shl nuw nsw i32 1, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 3476
  store i32 %i.em, ptr %i.en, align 4, !tbaa !4
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 2242
  %i.ep = load i8, ptr %i.eo, align 2, !tbaa !62
  %i.eq = zext i8 %i.ep to i32
  %i.er = sub nsw i32 9, %i.eq
  %i.es = shl nuw nsw i32 1, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store i32 %i.es, ptr %i.et, align 8, !tbaa !4
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 2243
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !62
  %i.ew = zext i8 %i.ev to i32
  %i.ex = sub nsw i32 9, %i.ew
  %i.ey = shl nuw nsw i32 1, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 3484
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !4
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 2244
  %i.fb = load i8, ptr %i.fa, align 4, !tbaa !62
  %i.fc = zext i8 %i.fb to i32
  %i.fd = sub nsw i32 9, %i.fc
  %i.fe = shl nuw nsw i32 1, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 3488
  store i32 %i.fe, ptr %i.ff, align 8, !tbaa !4
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 2245
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !62
  %i.fi = zext i8 %i.fh to i32
  %i.fj = sub nsw i32 9, %i.fi
  %i.fk = shl nuw nsw i32 1, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 3492
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !4
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 2246
  %i.fn = load i8, ptr %i.fm, align 2, !tbaa !62
  %i.fo = zext i8 %i.fn to i32
  %i.fp = sub nsw i32 9, %i.fo
  %i.fq = shl nuw nsw i32 1, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 3496
  store i32 %i.fq, ptr %i.fr, align 8, !tbaa !4
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 2247
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !62
  %i.fu = zext i8 %i.ft to i32
  %i.fv = sub nsw i32 9, %i.fu
  %i.fw = shl nuw nsw i32 1, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 3500
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !4
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.fz = load i8, ptr %i.fy, align 8, !tbaa !62
  %i.ga = zext i8 %i.fz to i32
  %i.gb = sub nsw i32 9, %i.ga
  %i.gc = shl nuw nsw i32 1, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 3504
  store i32 %i.gc, ptr %i.gd, align 8, !tbaa !4
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 2249
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !62
  %i.gg = zext i8 %i.gf to i32
  %i.gh = sub nsw i32 9, %i.gg
  %i.gi = shl nuw nsw i32 1, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 3508
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !4
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 2250
  %i.gl = load i8, ptr %i.gk, align 2, !tbaa !62
  %i.gm = zext i8 %i.gl to i32
  %i.gn = sub nsw i32 9, %i.gm
  %i.go = shl nuw nsw i32 1, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 3512
  store i32 %i.go, ptr %i.gp, align 8, !tbaa !4
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 2251
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !62
  %i.gs = zext i8 %i.gr to i32
  %i.gt = sub nsw i32 9, %i.gs
  %i.gu = shl nuw nsw i32 1, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 3516
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !4
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 2252
  %i.gx = load i8, ptr %i.gw, align 4, !tbaa !62
  %i.gy = zext i8 %i.gx to i32
  %i.gz = sub nsw i32 9, %i.gy
  %i.ha = shl nuw nsw i32 1, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 3520
  store i32 %i.ha, ptr %i.hb, align 8, !tbaa !4
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 2253
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !62
  %i.he = zext i8 %i.hd to i32
  %i.hf = sub nsw i32 9, %i.he
  %i.hg = shl nuw nsw i32 1, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 3524
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !4
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 2254
  %i.hj = load i8, ptr %i.hi, align 2, !tbaa !62
  %i.hk = zext i8 %i.hj to i32
  %i.hl = sub nsw i32 9, %i.hk
  %i.hm = shl nuw nsw i32 1, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store i32 %i.hm, ptr %i.hn, align 8, !tbaa !4
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 2255
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !62
  %i.hq = zext i8 %i.hp to i32
  %i.hr = sub nsw i32 9, %i.hq
  %i.hs = shl nuw nsw i32 1, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 3532
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !4
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 3536
  tail call void @Huffman_Generate(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.hu, ptr noundef nonnull %i.ai, i32 noundef 288, i32 noundef 9)
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 4688
  tail call void @Huffman_Generate(ptr noundef nonnull %i.al, ptr noundef nonnull %i.hv, ptr noundef nonnull %i.aj, i32 noundef 32, i32 noundef 9)
  br label %bb.k

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv40 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next41.3, %bb.e ] ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv40
  %i.hx = load i8, ptr %i.hw, align 4, !tbaa !62
  %i.hy = zext i8 %i.hx to i32
  %i.hz = sub nsw i32 9, %i.hy
  %i.ia = shl nuw nsw i32 1, %i.hz
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv40
  store i32 %i.ia, ptr %i.ib, align 8, !tbaa !4
  %indvars.iv.next41 = or disjoint i64 %indvars.iv40, 1 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next41
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !62
  %i.ie = zext i8 %i.id to i32
  %i.if = sub nsw i32 9, %i.ie
  %i.ig = shl nuw nsw i32 1, %i.if
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next41
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !4
  %indvars.iv.next41.1 = or disjoint i64 %indvars.iv40, 2 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next41.1
  %i.ij = load i8, ptr %i.ii, align 2, !tbaa !62
  %i.ik = zext i8 %i.ij to i32
  %i.il = sub nsw i32 9, %i.ik
  %i.im = shl nuw nsw i32 1, %i.il
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next41.1
  store i32 %i.im, ptr %i.in, align 8, !tbaa !4
  %indvars.iv.next41.2 = or disjoint i64 %indvars.iv40, 3 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next41.2
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !62
  %i.iq = zext i8 %i.ip to i32
  %i.ir = sub nsw i32 9, %i.iq
  %i.is = shl nuw nsw i32 1, %i.ir
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next41.2
  store i32 %i.is, ptr %i.it, align 4, !tbaa !4
  %indvars.iv.next41.3 = add nuw nsw i64 %indvars.iv40, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next41.3, 288
  br i1 %exitcond.not.3, label %.preheader, label %bb.e, !llvm.loop !147

bb.f:                                             ; preds = %bb.c
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !36
  %i.iw = icmp sgt i32 %i.iv, 1
  br i1 %i.iw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1300
  %i.iy = load i8, ptr %i.ix, align 4, !tbaa !143, !range !51, !noundef !52
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ja = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %.tr25.lcssa, i32 noundef 1) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 2, i32 noundef 2)
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !137
  %i.jd = add i32 %i.jc, -257
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.jd, i32 noundef 5)
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !139
  %i.jg = add i32 %i.jf, -1
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.jg, i32 noundef 5)
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 3 uses
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !141
  %i.jj = add i32 %i.ji, -4
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.jj, i32 noundef 4)
  %i.jk = load i32, ptr %i.jh, align 8, !tbaa !141
  %.not = icmp eq i32 %i.jk, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.i
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 1338
  br label %bb.j

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 4816 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 4892 ; 3 uses
  %wide.load = load <4 x i32>, ptr %i.jm, align 8, !tbaa !4
  %i.jo = trunc <4 x i32> %wide.load to <4 x i16>
  %i.jp = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.jo)
  %i.jq = zext <4 x i16> %i.jp to <4 x i32>
  %wide.load53 = load <4 x i8>, ptr %i.jn, align 4, !tbaa !62
  %i.jr = zext <4 x i8> %wide.load53 to <4 x i32>
  %i.js = sub nsw <4 x i32> splat (i32 16), %i.jr
  %i.jt = lshr <4 x i32> %i.jq, %i.js
  store <4 x i32> %i.jt, ptr %i.jm, align 8, !tbaa !4
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 4832 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.ju, align 8, !tbaa !4
  %i.jv = trunc <4 x i32> %wide.load.1 to <4 x i16>
  %i.jw = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.jv)
  %i.jx = zext <4 x i16> %i.jw to <4 x i32>
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 4896
  %wide.load53.1 = load <4 x i8>, ptr %i.jy, align 8, !tbaa !62
  %i.jz = zext <4 x i8> %wide.load53.1 to <4 x i32>
  %i.ka = sub nsw <4 x i32> splat (i32 16), %i.jz
  %i.kb = lshr <4 x i32> %i.jx, %i.ka
  store <4 x i32> %i.kb, ptr %i.ju, align 8, !tbaa !4
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %wide.load.2 = load <4 x i32>, ptr %i.kc, align 8, !tbaa !4
  %i.kd = trunc <4 x i32> %wide.load.2 to <4 x i16>
  %i.ke = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.kd)
  %i.kf = zext <4 x i16> %i.ke to <4 x i32>
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 4900
  %wide.load53.2 = load <4 x i8>, ptr %i.kg, align 4, !tbaa !62
  %i.kh = zext <4 x i8> %wide.load53.2 to <4 x i32>
  %i.ki = sub nsw <4 x i32> splat (i32 16), %i.kh
  %i.kj = lshr <4 x i32> %i.kf, %i.ki
  store <4 x i32> %i.kj, ptr %i.kc, align 8, !tbaa !4
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 4864 ; 2 uses
  %wide.load.3 = load <4 x i32>, ptr %i.kk, align 8, !tbaa !4
  %i.kl = trunc <4 x i32> %wide.load.3 to <4 x i16>
  %i.km = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.kl)
  %i.kn = zext <4 x i16> %i.km to <4 x i32>
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 4904
  %wide.load53.3 = load <4 x i8>, ptr %i.ko, align 8, !tbaa !62
  %i.kp = zext <4 x i8> %wide.load53.3 to <4 x i32>
  %i.kq = sub nsw <4 x i32> splat (i32 16), %i.kp
  %i.kr = lshr <4 x i32> %i.kn, %i.kq
  store <4 x i32> %i.kr, ptr %i.kk, align 8, !tbaa !4
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 4880 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !4
  %trunc.i = trunc i32 %i.kt to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i)
  %i.ku = zext i16 %rev.i to i32
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 4908
  %i.kw = load i8, ptr %i.kv, align 4, !tbaa !62
  %i.kx = zext i8 %i.kw to i32
  %i.ky = sub nsw i32 16, %i.kx
  %i.kz = lshr i32 %i.ku, %i.ky
  store i32 %i.kz, ptr %i.ks, align 8, !tbaa !4
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 4884 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !4
  %trunc.i.1 = trunc i32 %i.lb to i16
  %rev.i.1 = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.1)
  %i.lc = zext i16 %rev.i.1 to i32
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 4909
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !62
  %i.lf = zext i8 %i.le to i32
  %i.lg = sub nsw i32 16, %i.lf
  %i.lh = lshr i32 %i.lc, %i.lg
  store i32 %i.lh, ptr %i.la, align 4, !tbaa !4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 4888 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !4
  %trunc.i.2 = trunc i32 %i.lj to i16
  %rev.i.2 = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.2)
  %i.lk = zext i16 %rev.i.2 to i32
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 4910
  %i.lm = load i8, ptr %i.ll, align 2, !tbaa !62
  %i.ln = zext i8 %i.lm to i32
  %i.lo = sub nsw i32 16, %i.ln
  %i.lp = lshr i32 %i.lk, %i.lo
  store i32 %i.lp, ptr %i.li, align 8, !tbaa !4
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.lr = load i32, ptr %i.jb, align 8, !tbaa !137
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder14LevelTableCodeEPKhiS4_PKj(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull %i.lq, i32 noundef %i.lr, ptr noundef nonnull %i.jn, ptr noundef nonnull %i.jm)
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.lt = load i32, ptr %i.je, align 4, !tbaa !139
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder14LevelTableCodeEPKhiS4_PKj(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull %i.ls, i32 noundef %i.lt, ptr noundef nonnull %i.jn, ptr noundef nonnull %i.jm)
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph33, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jl, i64 %indvars.iv
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !62
  %i.lw = zext i8 %i.lv to i32
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.lw, i32 noundef 3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lx = load i32, ptr %i.jh, align 8, !tbaa !141
  %i.ly = zext i32 %i.lx to i64
  %i.lz = icmp samesign ult i64 %indvars.iv.next, %i.ly
  br i1 %i.lz, label %bb.j, label %._crit_edge, !llvm.loop !148

bb.k:                                             ; preds = %._crit_edge, %.preheader
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder10WriteBlockEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %i.ma = getelementptr inbounds nuw i8, ptr %.lcssa, i64 324
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !133
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 1380 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !76
  %i.me = sub i32 %i.md, %i.mb
  store i32 %i.me, ptr %i.mc, align 4, !tbaa !76
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder4ReadEPvS2_Pm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load i64, ptr %2, align 8, !tbaa !149
  %spec.select5 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 2147483648)
  %spec.select = trunc nuw i64 %spec.select5 to i32 ; 2 uses
  store i32 %spec.select, ptr %i.a, align 4, !tbaa !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %1, i32 noundef %spec.select, ptr noundef nonnull %i.a)
  %i.i = load i32, ptr %i.a, align 4, !tbaa !4
  %i.j = zext i32 %i.i to i64
  store i64 %i.j, ptr %2, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39764) initializes((1300, 1302)) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %6 = alloca %"class.NCompress::NDeflate::NEncoder::CCoder::CCoderReleaser", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35
  %.not = icmp ne i32 %i.d, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp ne i32 %i.f, 1
  %i.h = select i1 %.not, i1 true, i1 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1300
  %i.j = zext i1 %i.h to i8                       ; 2 uses
  store i8 %i.j, ptr %i.i, align 4, !tbaa !143
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1301
  store i8 %i.j, ptr %i.k, align 1, !tbaa !50
  %i.l = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder6CreateEv(ptr noundef nonnull align 8 dereferenceable(39764) %0) ; 2 uses
  %.not27.not = icmp eq i32 %i.l, 0
  br i1 %.not27.not, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.e, align 8, !tbaa !36
  %i.n = shl nsw i32 %i.m, 12
  %i.o = add nsw i32 %i.n, 7168
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1304
  store i32 %i.o, ptr %i.p, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !150
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 4 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %1, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !45   ; 3 uses
  %.not6.i = icmp eq ptr %i.w, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w), !inline_history !151 ; 0 uses
  br label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit

_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit: ; preds = %bb.d, %bb.e
  store ptr %1, ptr %i.r, align 8, !tbaa !45
  store ptr @_ZN9NCompress8NDeflate8NEncoder4ReadEPvS2_Pm, ptr %i.q, align 8, !tbaa !152
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.q, ptr %i.ab, align 8, !tbaa !153
  tail call void @MatchFinder_Init(ptr noundef nonnull %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 6 uses
  tail call void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(61) %i.ac, ptr noundef %2)
  tail call void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(61) %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 4 uses
  store i32 8, ptr %i.ad, align 8, !tbaa !91
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1228 ; 3 uses
  store i8 0, ptr %i.ae, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %0, ptr %6, align 8, !tbaa !154
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1388
  store i32 0, ptr %i.af, align 4, !tbaa !82
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 0, ptr %i.ag, align 8, !tbaa !77
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4920 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 332
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 660
  store i32 0, ptr %i.ak, align 4, !tbaa !135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(332) %i.aj, i8 8, i64 256, i1 false), !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 588
  store i8 13, ptr %i.al, align 4, !tbaa !62
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 589
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %scevgep.i, i8 5, i64 63, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 0, ptr %i.am, align 4, !tbaa !76
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 656 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.not28 = icmp eq ptr %5, null
  br i1 %.not28, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split

_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us: ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit, %bb.g
  %i.ar = phi i64 [ %i.bb, %bb.g ], [ 0, %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit ]
  store i32 60923, ptr %i.an, align 4, !tbaa !133
  store i8 0, ptr %i.ao, align 8, !tbaa !66
  %i.as = load i32, ptr %i.e, align 8, !tbaa !36
  %i.at = invoke noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 1, i32 noundef %i.as)
          to label %bb.f unwind label %.loopexit.split.us ; 0 uses

bb.f:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us
  %i.au = load i32, ptr %i.ap, align 8, !tbaa !72
  %i.av = load i32, ptr %i.aq, align 8, !tbaa !73
  %i.aw = icmp eq i32 %i.au, %i.av
  invoke void @_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 1, i1 noundef zeroext %i.aw)
          to label %bb.g unwind label %.loopexit.split.us

bb.g:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 656
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !133
  %i.ba = zext i32 %i.az to i64
  %i.bb = add i64 %i.ar, %i.ba                    ; 2 uses
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !150
  %i.bc = load i32, ptr %i.ap, align 8, !tbaa !72
  %i.bd = load i32, ptr %i.aq, align 8, !tbaa !73
  %.not31.us = icmp eq i32 %i.bc, %i.bd
  br i1 %.not31.us, label %.split.us, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us, !llvm.loop !157

.loopexit.split.us:                               ; preds = %bb.f, %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split: ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit, %bb.o
  store i32 60923, ptr %i.an, align 4, !tbaa !133
  store i8 0, ptr %i.ao, align 8, !tbaa !66
  %i.be = load i32, ptr %i.e, align 8, !tbaa !36
  %i.bf = invoke noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 1, i32 noundef %i.be)
          to label %bb.h unwind label %.loopexit.split ; 0 uses

bb.h:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split
  %i.bg = load i32, ptr %i.ap, align 8, !tbaa !72
  %i.bh = load i32, ptr %i.aq, align 8, !tbaa !73
  %i.bi = icmp eq i32 %i.bg, %i.bh
  invoke void @_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 1, i1 noundef zeroext %i.bi)
          to label %bb.i unwind label %.loopexit.split

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 656
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !133
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !150
  %i.bo = add i64 %i.bn, %i.bm
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bp = invoke noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(61) %i.ac)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bq = load i32, ptr %i.ad, align 8, !tbaa !91
  %i.br = sub i32 15, %i.bq
  %i.bs = lshr i32 %i.br, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = add i64 %i.bp, %i.bt
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !150
  %i.bv = load ptr, ptr %5, align 8, !tbaa !46
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.m       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not30 = icmp eq i32 %i.by, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %.not30, label %bb.o, label %_ZN12CBitlEncoder5FlushEv.exit

.loopexit.split:                                  ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %bb.r, %_ZN12CBitlEncoder9FlushByteEv.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.l:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.m ], [ %i.bz, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.loopexit

bb.o:                                             ; preds = %bb.k
  %i.cb = load i32, ptr %i.ap, align 8, !tbaa !72
  %i.cc = load i32, ptr %i.aq, align 8, !tbaa !73
  %.not31 = icmp eq i32 %i.cb, %i.cc
  br i1 %.not31, label %.split.us, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split, !llvm.loop !157

.split.us:                                        ; preds = %bb.o, %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !158 ; 2 uses
  %.not32 = icmp eq i32 %i.ce, 0
  br i1 %.not32, label %bb.p, label %_ZN12CBitlEncoder5FlushEv.exit

bb.p:                                             ; preds = %.split.us
  %i.cf = load i32, ptr %i.ad, align 8, !tbaa !91
  %i.cg = icmp ult i32 %i.cf, 8
  br i1 %i.cg, label %bb.q, label %_ZN12CBitlEncoder9FlushByteEv.exit.i

bb.q:                                             ; preds = %bb.p
  %i.ch = load i8, ptr %i.ae, align 4, !tbaa !92
  %i.ci = load ptr, ptr %i.ac, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !16 ; 2 uses
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !16
  %i.cm = zext i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cm
  store i8 %i.ch, ptr %i.cn, align 1, !tbaa !62
  %i.co = load i32, ptr %i.cj, align 8, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1180
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !93
  %i.cr = icmp eq i32 %i.co, %i.cq
  br i1 %i.cr, label %bb.r, label %_ZN12CBitlEncoder9FlushByteEv.exit.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.ac)
          to label %_ZN12CBitlEncoder9FlushByteEv.exit.i unwind label %.loopexit.split-lp

_ZN12CBitlEncoder9FlushByteEv.exit.i:             ; preds = %bb.r, %bb.q, %bb.p
  store i32 8, ptr %i.ad, align 8, !tbaa !91
  store i8 0, ptr %i.ae, align 4, !tbaa !92
  %i.cs = invoke noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(61) %i.ac)
          to label %_ZN12CBitlEncoder5FlushEv.exit unwind label %.loopexit.split-lp

_ZN12CBitlEncoder5FlushEv.exit:                   ; preds = %bb.k, %_ZN12CBitlEncoder9FlushByteEv.exit.i, %.split.us
  %.4 = phi i32 [ %i.cs, %_ZN12CBitlEncoder9FlushByteEv.exit.i ], [ %i.ce, %.split.us ], [ %i.by, %bb.k ]
  %i.ct = load ptr, ptr %i.r, align 8, !tbaa !45  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i, label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZN12CBitlEncoder5FlushEv.exit
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !46
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = invoke noundef i32 %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct)
          to label %.noexc.i unwind label %bb.u, !inline_history !159 ; 0 uses

.noexc.i:                                         ; preds = %bb.s
  store ptr null, ptr %i.r, align 8, !tbaa !45
  br label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i.i

_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i.i: ; preds = %.noexc.i, %_ZN12CBitlEncoder5FlushEv.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !17 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !46
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef i32 %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %.noexc1.i unwind label %bb.u, !inline_history !159 ; 0 uses

.noexc1.i:                                        ; preds = %bb.t
  store ptr null, ptr %i.cy, align 8, !tbaa !17
  br label %_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #22
  unreachable

_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev.exit: ; preds = %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i.i, %.noexc1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.v

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.split.us, %.loopexit.split, %bb.n
  %.pn33 = phi { ptr, i32 } [ %.pn, %bb.n ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  call void @_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn33

bb.v:                                             ; preds = %bb.a, %_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev.exit
  %.5 = phi i32 [ %.4, %_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev.exit ], [ %i.l, %bb.a ]
  ret i32 %.5
}

declare void @MatchFinder_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !154    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1240 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc unwind label %bb.d, !inline_history !159 ; 0 uses

.noexc:                                           ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !45
  br label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i

_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i: ; preds = %.noexc, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder14ReleaseStreamsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc1 unwind label %bb.d, !inline_history !159 ; 0 uses

.noexc1:                                          ; preds = %bb.c
  store ptr null, ptr %i.h, align 8, !tbaa !17
  br label %_ZN9NCompress8NDeflate8NEncoder6CCoder14ReleaseStreamsEv.exit

_ZN9NCompress8NDeflate8NEncoder6CCoder14ReleaseStreamsEv.exit: ; preds = %.noexc1, %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i
  ret void

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39764) initializes((1300, 1302)) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef %1, ptr noundef %2, ptr poison, ptr poison, ptr noundef %5)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTI19COutBufferException
          catch ptr null                          ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = extractvalue { ptr, i32 } %i.b, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI19COutBufferException) #23
  %i.f = icmp eq i32 %i.d, %i.e
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #23
  br i1 %i.f, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 4, !tbaa !160
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.0.ph = phi i32 [ %i.h, %bb.c ], [ -2147467259, %bb.b ]
  tail call void @__cxa_end_catch()
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39788) initializes((1324, 1326)) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39764) %i.a, ptr noundef %1, ptr noundef %2, ptr readnone poison, ptr readnone poison, ptr noundef %5)
          to label %_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr @_ZTI19COutBufferException
          catch ptr null                          ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = extractvalue { ptr, i32 } %i.c, 1
  %i.f = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI19COutBufferException) #23
  %i.g = icmp eq i32 %i.e, %i.f
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.d) #23
  br i1 %i.g, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 4, !tbaa !160
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.0.ph.i = phi i32 [ %i.i, %bb.c ], [ -2147467259, %bb.b ]
  tail call void @__cxa_end_catch()
  br label %_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo.exit

_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo.exit: ; preds = %bb.a, %.sink.split.i
  %.0.i = phi i32 [ %i.b, %bb.a ], [ %.0.ph.i, %.sink.split.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147024809, 1) i32 @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(39788) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #6 align 2 {
bb.a:
  %.not44.i = icmp eq i32 %3, 0
  br i1 %.not44.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1293
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 39784
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.f = load i32, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1316 ; 3 uses
  %wide.trip.count.i = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 3 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i ; 8 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  switch i32 %i.k, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit [
    i32 11, label %bb.c
    i32 8, label %bb.i
    i32 10, label %bb.k
    i32 12, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = load i16, ptr %i.i, align 8, !tbaa !59
  %.not26.i = icmp eq i16 %i.l, 19
  br i1 %.not26.i, label %bb.d, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.n, i32 1) ; 3 uses
  store i32 %spec.select.i, ptr %i.g, align 8, !tbaa !36
  %i.o = icmp ult i32 %i.n, 2
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.h, align 4, !tbaa !35
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.p = icmp slt i32 %spec.select.i, 11
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.h, align 4, !tbaa !35
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.q = add nsw i32 %spec.select.i, -8
  store i32 %i.q, ptr %i.h, align 4, !tbaa !35
  store i32 10, ptr %i.g, align 8, !tbaa !36
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  %i.r = load i16, ptr %i.i, align 8, !tbaa !59
  %.not25.i = icmp eq i16 %i.r, 19
  br i1 %.not25.i, label %bb.j, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !62   ; 3 uses
  store i32 %i.t, ptr %i.e, align 8, !tbaa !19
  %i.u = icmp ult i32 %i.t, 3
  %i.v = icmp ugt i32 %i.t, %i.f
  %or.cond.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit, label %bb.o

bb.k:                                             ; preds = %bb.b
  %i.w = load i16, ptr %i.i, align 8, !tbaa !59
  %.not24.i = icmp eq i16 %i.w, 19
  br i1 %.not24.i, label %bb.l, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !62
  store i32 %i.y, ptr %i.d, align 8, !tbaa !40
  br label %bb.o

bb.m:                                             ; preds = %bb.b
  %i.z = load i16, ptr %i.i, align 8, !tbaa !59
  %.not.i = icmp eq i16 %i.z, 19
  br i1 %.not.i, label %bb.n, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !62
  %i.ac = icmp eq i32 %i.ab, 0                    ; 2 uses
  %i.ad = zext i1 %i.ac to i8
  store i8 %i.ad, ptr %i.b, align 4, !tbaa !33
  %i.ae = xor i1 %i.ac, true
  %i.af = zext i1 %i.ae to i8
  store i8 %i.af, ptr %i.c, align 1, !tbaa !34
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.j, %bb.h, %bb.g, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit, label %bb.b, !llvm.loop !63

_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit: ; preds = %bb.b, %bb.c, %bb.i, %bb.j, %bb.k, %bb.m, %bb.o, %bb.a
  %i.ag = phi i32 [ 0, %bb.a ], [ -2147024809, %bb.m ], [ -2147024809, %bb.k ], [ -2147024809, %bb.c ], [ -2147024809, %bb.i ], [ -2147024809, %bb.j ], [ 0, %bb.o ], [ -2147024809, %bb.b ]
  ret i32 %i.ag
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147024809, 1) i32 @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #15 align 2 {
bb.a:
  %.not44.i.i = icmp eq i32 %3, 0
  br i1 %.not44.i.i, label %_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1284
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1285
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 39776
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.f = load i32, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 3 uses
  %wide.trip.count.i.i = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.o ] ; 3 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i.i ; 8 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  switch i32 %i.k, label %_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit [
    i32 11, label %bb.c
    i32 8, label %bb.i
    i32 10, label %bb.k
    i32 12, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = load i16, ptr %i.i, align 8, !tbaa !59
  %.not26.i.i = icmp eq i16 %i.l, 19
  br i1 %.not26.i.i, label %bb.d, label %_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %spec.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.n, i32 1) ; 3 uses
  store i32 %spec.select.i.i, ptr %i.g, align 8, !tbaa !36
  %i.o = icmp ult i32 %i.n, 2
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.h, align 4, !tbaa !35
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.p = icmp slt i32 %spec.select.i.i, 11
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.h, align 4, !tbaa !35
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.q = add nsw i32 %spec.select.i.i, -8
  store i32 %i.q, ptr %i.h, align 4, !tbaa !35
  store i32 10, ptr %i.g, align 8, !tbaa !36
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  %i.r = load i16, ptr %i.i, align 8, !tbaa !59
  %.not25.i.i = icmp eq i16 %i.r, 19
  br i1 %.not25.i.i, label %bb.j, label %_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !62   ; 3 uses
  store i32 %i.t, ptr %i.e, align 8, !tbaa !19
  %i.u = icmp ult i32 %i.t, 3
  %i.v = icmp ugt i32 %i.t, %i.f
  %or.cond.i.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i.i, label %_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit, label %bb.o

bb.k:                                             ; preds = %bb.b
  %i.w = load i16, ptr %i.i, align 8, !tbaa !59
  %.not24.i.i = icmp eq i16 %i.w, 19
  br i1 %.not24.i.i, label %bb.l, label %_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !62
  store i32 %i.y, ptr %i.d, align 8, !tbaa !40
  br label %bb.o

bb.m:                                             ; preds = %bb.b
  %i.z = load i16, ptr %i.i, align 8, !tbaa !59
  %.not.i.i = icmp eq i16 %i.z, 19
  br i1 %.not.i.i, label %bb.n, label %_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !62
  %i.ac = icmp eq i32 %i.ab, 0                    ; 2 uses
  %i.ad = zext i1 %i.ac to i8
  store i8 %i.ad, ptr %i.b, align 4, !tbaa !33
  %i.ae = xor i1 %i.ac, true
  %i.af = zext i1 %i.ae to i8
  store i8 %i.af, ptr %i.c, align 1, !tbaa !34
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.j, %bb.h, %bb.g, %bb.e
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit, label %bb.b, !llvm.loop !63

_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit: ; preds = %bb.b, %bb.c, %bb.i, %bb.j, %bb.k, %bb.m, %bb.o, %bb.a
  %i.ag = phi i32 [ 0, %bb.a ], [ -2147024809, %bb.b ], [ 0, %bb.o ], [ -2147024809, %bb.j ], [ -2147024809, %bb.i ], [ -2147024809, %bb.c ], [ -2147024809, %bb.k ], [ -2147024809, %bb.m ]
  ret i32 %i.ag
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder644CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39788) initializes((1324, 1326)) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39764) %i.a, ptr noundef %1, ptr noundef %2, ptr readnone poison, ptr readnone poison, ptr noundef %5)
          to label %_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr @_ZTI19COutBufferException
          catch ptr null                          ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = extractvalue { ptr, i32 } %i.c, 1
  %i.f = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI19COutBufferException) #23
  %i.g = icmp eq i32 %i.e, %i.f
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.d) #23
  br i1 %i.g, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 4, !tbaa !160
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.0.ph.i = phi i32 [ %i.i, %bb.c ], [ -2147467259, %bb.b ]
  tail call void @__cxa_end_catch()
  br label %_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo.exit

_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo.exit: ; preds = %bb.a, %.sink.split.i
  %.0.i = phi i32 [ %i.b, %bb.a ], [ %.0.ph.i, %.sink.split.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147024809, 1) i32 @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(39788) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #6 align 2 {
bb.a:
  %.not44.i = icmp eq i32 %3, 0
  br i1 %.not44.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1293
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 39784
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.f = load i32, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1316 ; 3 uses
  %wide.trip.count.i = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 3 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i ; 8 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  switch i32 %i.k, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit [
    i32 11, label %bb.c
    i32 8, label %bb.i
    i32 10, label %bb.k
    i32 12, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = load i16, ptr %i.i, align 8, !tbaa !59
  %.not26.i = icmp eq i16 %i.l, 19
  br i1 %.not26.i, label %bb.d, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.n, i32 1) ; 3 uses
  store i32 %spec.select.i, ptr %i.g, align 8, !tbaa !36
  %i.o = icmp ult i32 %i.n, 2
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.h, align 4, !tbaa !35
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.p = icmp slt i32 %spec.select.i, 11
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.h, align 4, !tbaa !35
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.q = add nsw i32 %spec.select.i, -8
  store i32 %i.q, ptr %i.h, align 4, !tbaa !35
  store i32 10, ptr %i.g, align 8, !tbaa !36
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  %i.r = load i16, ptr %i.i, align 8, !tbaa !59
  %.not25.i = icmp eq i16 %i.r, 19
  br i1 %.not25.i, label %bb.j, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !62   ; 3 uses
  store i32 %i.t, ptr %i.e, align 8, !tbaa !19
  %i.u = icmp ult i32 %i.t, 3
  %i.v = icmp ugt i32 %i.t, %i.f
  %or.cond.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit, label %bb.o

bb.k:                                             ; preds = %bb.b
  %i.w = load i16, ptr %i.i, align 8, !tbaa !59
  %.not24.i = icmp eq i16 %i.w, 19
  br i1 %.not24.i, label %bb.l, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !62
  store i32 %i.y, ptr %i.d, align 8, !tbaa !40
  br label %bb.o

bb.m:                                             ; preds = %bb.b
  %i.z = load i16, ptr %i.i, align 8, !tbaa !59
  %.not.i = icmp eq i16 %i.z, 19
  br i1 %.not.i, label %bb.n, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !62
  %i.ac = icmp eq i32 %i.ab, 0                    ; 2 uses
  %i.ad = zext i1 %i.ac to i8
  store i8 %i.ad, ptr %i.b, align 4, !tbaa !33
  %i.ae = xor i1 %i.ac, true
  %i.af = zext i1 %i.ae to i8
  store i8 %i.af, ptr %i.c, align 1, !tbaa !34
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.j, %bb.h, %bb.g, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit, label %bb.b, !llvm.loop !63

_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit: ; preds = %bb.b, %bb.c, %bb.i, %bb.j, %bb.k, %bb.m, %bb.o, %bb.a
  %i.ag = phi i32 [ 0, %bb.a ], [ -2147024809, %bb.m ], [ -2147024809, %bb.k ], [ -2147024809, %bb.c ], [ -2147024809, %bb.i ], [ -2147024809, %bb.j ], [ 0, %bb.o ], [ -2147024809, %bb.b ]
  ret i32 %i.ag
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147024809, 1) i32 @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #15 align 2 {
bb.a:
  %.not44.i.i = icmp eq i32 %3, 0
  br i1 %.not44.i.i, label %_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1284
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1285
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 39776
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.f = load i32, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 3 uses
  %wide.trip.count.i.i = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.o ] ; 3 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i.i ; 8 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  switch i32 %i.k, label %_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit [
    i32 11, label %bb.c
    i32 8, label %bb.i
    i32 10, label %bb.k
    i32 12, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = load i16, ptr %i.i, align 8, !tbaa !59
  %.not26.i.i = icmp eq i16 %i.l, 19
  br i1 %.not26.i.i, label %bb.d, label %_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %spec.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.n, i32 1) ; 3 uses
  store i32 %spec.select.i.i, ptr %i.g, align 8, !tbaa !36
  %i.o = icmp ult i32 %i.n, 2
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.h, align 4, !tbaa !35
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.p = icmp slt i32 %spec.select.i.i, 11
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.h, align 4, !tbaa !35
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.q = add nsw i32 %spec.select.i.i, -8
  store i32 %i.q, ptr %i.h, align 4, !tbaa !35
  store i32 10, ptr %i.g, align 8, !tbaa !36
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  %i.r = load i16, ptr %i.i, align 8, !tbaa !59
  %.not25.i.i = icmp eq i16 %i.r, 19
  br i1 %.not25.i.i, label %bb.j, label %_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !62   ; 3 uses
  store i32 %i.t, ptr %i.e, align 8, !tbaa !19
  %i.u = icmp ult i32 %i.t, 3
  %i.v = icmp ugt i32 %i.t, %i.f
  %or.cond.i.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i.i, label %_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit, label %bb.o

bb.k:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZN9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv:bb.a
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 3), align 1, !tbaa !62
  %.not.3.i = icmp eq i8 %i.j, %i.k
  br i1 %.not.3.i, label %bb.e, label %_ZeqRK4GUIDS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !62
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 4), align 4, !tbaa !62
  %.not.4.i = icmp eq i8 %i.m, %i.n
  br i1 %.not.4.i, label %bb.f, label %_ZeqRK4GUIDS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !62
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 5), align 1, !tbaa !62
  %.not.5.i = icmp eq i8 %i.p, %i.q
  br i1 %.not.5.i, label %bb.g, label %_ZeqRK4GUIDS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 2, !tbaa !62
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 6), align 2, !tbaa !62
  %.not.6.i = icmp eq i8 %i.s, %i.t
  br i1 %.not.6.i, label %bb.h, label %_ZeqRK4GUIDS1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !62
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 7), align 1, !tbaa !62
  %.not.7.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.7.i, label %bb.i, label %_ZeqRK4GUIDS1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 4, !tbaa !62
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 8), align 4, !tbaa !62
  %.not.8.i = icmp eq i8 %i.y, %i.z
  br i1 %.not.8.i, label %bb.j, label %_ZeqRK4GUIDS1_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !62
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 9), align 1, !tbaa !62
  %.not.9.i = icmp eq i8 %i.ab, %i.ac
  br i1 %.not.9.i, label %bb.k, label %_ZeqRK4GUIDS1_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !62
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 10), align 2, !tbaa !62
  %.not.10.i = icmp eq i8 %i.ae, %i.af
  br i1 %.not.10.i, label %bb.l, label %_ZeqRK4GUIDS1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !62
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 11), align 1, !tbaa !62
  %.not.11.i = icmp eq i8 %i.ah, %i.ai
  br i1 %.not.11.i, label %bb.m, label %_ZeqRK4GUIDS1_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !62
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 12), align 4, !tbaa !62
  %.not.12.i = icmp eq i8 %i.ak, %i.al
  br i1 %.not.12.i, label %bb.n, label %_ZeqRK4GUIDS1_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !62
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 13), align 1, !tbaa !62
  %.not.13.i = icmp eq i8 %i.an, %i.ao
  br i1 %.not.13.i, label %bb.o, label %_ZeqRK4GUIDS1_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !62
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 14), align 2, !tbaa !62
  %.not.14.i = icmp eq i8 %i.aq, %i.ar
  br i1 %.not.14.i, label %_ZeqRK4GUIDS1_.exit, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit:                              ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !62
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 15), align 1, !tbaa !62
  %.not.15.i.not = icmp eq i8 %i.at, %i.au
  br i1 %.not.15.i.not, label %_ZeqRK4GUIDS1_.exit23.thread.sink.split, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit.thread:                       ; preds = %bb.m, %bb.h, %bb.l, %bb.g, %bb.n, %bb.f, %bb.j, %bb.e, %bb.o, %bb.d, %bb.k, %bb.c, %bb.b, %bb.i, %bb.a, %_ZeqRK4GUIDS1_.exit
  %i.av = load i8, ptr @IID_ICompressSetCoderProperties, align 4, !tbaa !62
  %.not.i6 = icmp eq i8 %i.a, %i.av
  br i1 %.not.i6, label %bb.p, label %_ZeqRK4GUIDS1_.exit23.thread

bb.p:                                             ; preds = %_ZeqRK4GUIDS1_.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 1), align 1, !tbaa !62
  %.not.1.i7 = icmp eq i8 %i.ax, %i.ay
  br i1 %.not.1.i7, label %bb.q, label %_ZeqRK4GUIDS1_.exit23.thread

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !62
  %i.bb = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 2), align 2, !tbaa !62
  %.not.2.i8 = icmp eq i8 %i.ba, %i.bb
  br i1 %.not.2.i8, label %bb.r, label %_ZeqRK4GUIDS1_.exit23.thread

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !62
  %i.be = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 3), align 1, !tbaa !62
  %.not.3.i9 = icmp eq i8 %i.bd, %i.be
  br i1 %.not.3.i9, label %bb.s, label %_ZeqRK4GUIDS1_.exit23.thread

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !62
  %i.bh = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 4), align 4, !tbaa !62
  %.not.4.i10 = icmp eq i8 %i.bg, %i.bh
  br i1 %.not.4.i10, label %bb.t, label %_ZeqRK4GUIDS1_.exit23.thread

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !62
  %i.bk = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 5), align 1, !tbaa !62
  %.not.5.i11 = icmp eq i8 %i.bj, %i.bk
  br i1 %.not.5.i11, label %bb.u, label %_ZeqRK4GUIDS1_.exit23.thread

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !62
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 6), align 2, !tbaa !62
  %.not.6.i12 = icmp eq i8 %i.bm, %i.bn
  br i1 %.not.6.i12, label %bb.v, label %_ZeqRK4GUIDS1_.exit23.thread

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 7), align 1, !tbaa !62
  %.not.7.i13 = icmp eq i8 %i.bp, %i.bq
  br i1 %.not.7.i13, label %bb.w, label %_ZeqRK4GUIDS1_.exit23.thread

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !62
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 8), align 4, !tbaa !62
  %.not.8.i14 = icmp eq i8 %i.bs, %i.bt
  br i1 %.not.8.i14, label %bb.x, label %_ZeqRK4GUIDS1_.exit23.thread

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !62
  %i.bw = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 9), align 1, !tbaa !62
  %.not.9.i15 = icmp eq i8 %i.bv, %i.bw
  br i1 %.not.9.i15, label %bb.y, label %_ZeqRK4GUIDS1_.exit23.thread

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !62
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 10), align 2, !tbaa !62
  %.not.10.i16 = icmp eq i8 %i.by, %i.bz
  br i1 %.not.10.i16, label %bb.z, label %_ZeqRK4GUIDS1_.exit23.thread

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62
  %i.cc = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 11), align 1, !tbaa !62
  %.not.11.i17 = icmp eq i8 %i.cb, %i.cc
  br i1 %.not.11.i17, label %bb.aa, label %_ZeqRK4GUIDS1_.exit23.thread

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !62
  %i.cf = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 12), align 4, !tbaa !62
  %.not.12.i18 = icmp eq i8 %i.ce, %i.cf
  br i1 %.not.12.i18, label %bb.ab, label %_ZeqRK4GUIDS1_.exit23.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !62
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 13), align 1, !tbaa !62
  %.not.13.i19 = icmp eq i8 %i.ch, %i.ci
  br i1 %.not.13.i19, label %bb.ac, label %_ZeqRK4GUIDS1_.exit23.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !62
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 14), align 2, !tbaa !62
  %.not.14.i20 = icmp eq i8 %i.ck, %i.cl
  br i1 %.not.14.i20, label %_ZeqRK4GUIDS1_.exit23, label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23:                            ; preds = %bb.ac
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !62
  %i.co = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 15), align 1, !tbaa !62
  %.not.15.i21.not = icmp eq i8 %i.cn, %i.co
  br i1 %.not.15.i21.not, label %_ZeqRK4GUIDS1_.exit23.thread.sink.split, label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23.thread.sink.split:          ; preds = %_ZeqRK4GUIDS1_.exit23, %_ZeqRK4GUIDS1_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cp, ptr %2, align 8, !tbaa !162
  %i.cq = load ptr, ptr %0, align 8, !tbaa !46
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef i32 %i.cs(ptr noundef nonnull align 8 dereferenceable(39788) %0) ; 0 uses
  br label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23.thread:                     ; preds = %_ZeqRK4GUIDS1_.exit23.thread.sink.split, %bb.aa, %bb.v, %bb.z, %bb.u, %bb.ab, %bb.t, %bb.x, %bb.s, %bb.ac, %bb.r, %bb.y, %bb.q, %bb.p, %bb.w, %_ZeqRK4GUIDS1_.exit.thread, %_ZeqRK4GUIDS1_.exit23
  %.0 = phi i32 [ -2147467262, %bb.v ], [ -2147467262, %bb.aa ], [ -2147467262, %_ZeqRK4GUIDS1_.exit23 ], [ -2147467262, %_ZeqRK4GUIDS1_.exit.thread ], [ -2147467262, %bb.w ], [ -2147467262, %bb.p ], [ -2147467262, %bb.q ], [ -2147467262, %bb.y ], [ -2147467262, %bb.r ], [ -2147467262, %bb.ac ], [ -2147467262, %bb.s ], [ -2147467262, %bb.x ], [ -2147467262, %bb.t ], [ -2147467262, %bb.ab ], [ -2147467262, %bb.u ], [ -2147467262, %bb.z ], [ 0, %_ZeqRK4GUIDS1_.exit23.thread.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !163
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !163
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !163
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !163
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(39788) %0) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD2Ev(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.a) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.a) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 39792) #25
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(39788) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv(ptr noundef %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !163
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !163
  ret i32 %i.c
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv(ptr noundef %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !163
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !163
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(39788) %i.d) #23, !inline_history !165
  br label %_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv.exit

_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv.exit: ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD1Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.a) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.b) #23
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(39788) %i.a, i64 noundef 39792) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(39788) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 4, !tbaa !62      ; 2 uses
  %i.b = load i8, ptr @IID_IUnknown, align 4, !tbaa !62
  %.not.i = icmp eq i8 %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZeqRK4GUIDS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !62
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 1), align 1, !tbaa !62
  %.not.1.i = icmp eq i8 %i.d, %i.e
  br i1 %.not.1.i, label %bb.c, label %_ZeqRK4GUIDS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !62
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 2), align 2, !tbaa !62
  %.not.2.i = icmp eq i8 %i.g, %i.h
  br i1 %.not.2.i, label %bb.d, label %_ZeqRK4GUIDS1_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !62
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 3), align 1, !tbaa !62
  %.not.3.i = icmp eq i8 %i.j, %i.k
  br i1 %.not.3.i, label %bb.e, label %_ZeqRK4GUIDS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !62
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 4), align 4, !tbaa !62
  %.not.4.i = icmp eq i8 %i.m, %i.n
  br i1 %.not.4.i, label %bb.f, label %_ZeqRK4GUIDS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !62
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 5), align 1, !tbaa !62
  %.not.5.i = icmp eq i8 %i.p, %i.q
  br i1 %.not.5.i, label %bb.g, label %_ZeqRK4GUIDS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 2, !tbaa !62
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 6), align 2, !tbaa !62
  %.not.6.i = icmp eq i8 %i.s, %i.t
  br i1 %.not.6.i, label %bb.h, label %_ZeqRK4GUIDS1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !62
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 7), align 1, !tbaa !62
  %.not.7.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.7.i, label %bb.i, label %_ZeqRK4GUIDS1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 4, !tbaa !62
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 8), align 4, !tbaa !62
  %.not.8.i = icmp eq i8 %i.y, %i.z
  br i1 %.not.8.i, label %bb.j, label %_ZeqRK4GUIDS1_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !62
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 9), align 1, !tbaa !62
  %.not.9.i = icmp eq i8 %i.ab, %i.ac
  br i1 %.not.9.i, label %bb.k, label %_ZeqRK4GUIDS1_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !62
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 10), align 2, !tbaa !62
  %.not.10.i = icmp eq i8 %i.ae, %i.af
  br i1 %.not.10.i, label %bb.l, label %_ZeqRK4GUIDS1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !62
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 11), align 1, !tbaa !62
  %.not.11.i = icmp eq i8 %i.ah, %i.ai
  br i1 %.not.11.i, label %bb.m, label %_ZeqRK4GUIDS1_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !62
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 12), align 4, !tbaa !62
  %.not.12.i = icmp eq i8 %i.ak, %i.al
  br i1 %.not.12.i, label %bb.n, label %_ZeqRK4GUIDS1_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !62
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 13), align 1, !tbaa !62
  %.not.13.i = icmp eq i8 %i.an, %i.ao
  br i1 %.not.13.i, label %bb.o, label %_ZeqRK4GUIDS1_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !62
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 14), align 2, !tbaa !62
  %.not.14.i = icmp eq i8 %i.aq, %i.ar
  br i1 %.not.14.i, label %_ZeqRK4GUIDS1_.exit, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit:                              ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !62
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 15), align 1, !tbaa !62
  %.not.15.i.not = icmp eq i8 %i.at, %i.au
  br i1 %.not.15.i.not, label %_ZeqRK4GUIDS1_.exit23.thread.sink.split, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit.thread:                       ; preds = %bb.m, %bb.h, %bb.l, %bb.g, %bb.n, %bb.f, %bb.j, %bb.e, %bb.o, %bb.d, %bb.k, %bb.c, %bb.b, %bb.i, %bb.a, %_ZeqRK4GUIDS1_.exit
  %i.av = load i8, ptr @IID_ICompressSetCoderProperties, align 4, !tbaa !62
  %.not.i6 = icmp eq i8 %i.a, %i.av
  br i1 %.not.i6, label %bb.p, label %_ZeqRK4GUIDS1_.exit23.thread

bb.p:                                             ; preds = %_ZeqRK4GUIDS1_.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 1), align 1, !tbaa !62
  %.not.1.i7 = icmp eq i8 %i.ax, %i.ay
  br i1 %.not.1.i7, label %bb.q, label %_ZeqRK4GUIDS1_.exit23.thread

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !62
  %i.bb = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 2), align 2, !tbaa !62
  %.not.2.i8 = icmp eq i8 %i.ba, %i.bb
  br i1 %.not.2.i8, label %bb.r, label %_ZeqRK4GUIDS1_.exit23.thread

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !62
  %i.be = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 3), align 1, !tbaa !62
  %.not.3.i9 = icmp eq i8 %i.bd, %i.be
  br i1 %.not.3.i9, label %bb.s, label %_ZeqRK4GUIDS1_.exit23.thread

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !62
  %i.bh = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 4), align 4, !tbaa !62
  %.not.4.i10 = icmp eq i8 %i.bg, %i.bh
  br i1 %.not.4.i10, label %bb.t, label %_ZeqRK4GUIDS1_.exit23.thread

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !62
  %i.bk = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 5), align 1, !tbaa !62
  %.not.5.i11 = icmp eq i8 %i.bj, %i.bk
  br i1 %.not.5.i11, label %bb.u, label %_ZeqRK4GUIDS1_.exit23.thread

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !62
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 6), align 2, !tbaa !62
  %.not.6.i12 = icmp eq i8 %i.bm, %i.bn
  br i1 %.not.6.i12, label %bb.v, label %_ZeqRK4GUIDS1_.exit23.thread

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 7), align 1, !tbaa !62
  %.not.7.i13 = icmp eq i8 %i.bp, %i.bq
  br i1 %.not.7.i13, label %bb.w, label %_ZeqRK4GUIDS1_.exit23.thread

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !62
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 8), align 4, !tbaa !62
  %.not.8.i14 = icmp eq i8 %i.bs, %i.bt
  br i1 %.not.8.i14, label %bb.x, label %_ZeqRK4GUIDS1_.exit23.thread

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !62
  %i.bw = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 9), align 1, !tbaa !62
  %.not.9.i15 = icmp eq i8 %i.bv, %i.bw
  br i1 %.not.9.i15, label %bb.y, label %_ZeqRK4GUIDS1_.exit23.thread

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !62
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 10), align 2, !tbaa !62
  %.not.10.i16 = icmp eq i8 %i.by, %i.bz
  br i1 %.not.10.i16, label %bb.z, label %_ZeqRK4GUIDS1_.exit23.thread

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62
  %i.cc = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 11), align 1, !tbaa !62
  %.not.11.i17 = icmp eq i8 %i.cb, %i.cc
  br i1 %.not.11.i17, label %bb.aa, label %_ZeqRK4GUIDS1_.exit23.thread

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !62
  %i.cf = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 12), align 4, !tbaa !62
  %.not.12.i18 = icmp eq i8 %i.ce, %i.cf
  br i1 %.not.12.i18, label %bb.ab, label %_ZeqRK4GUIDS1_.exit23.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !62
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 13), align 1, !tbaa !62
  %.not.13.i19 = icmp eq i8 %i.ch, %i.ci
  br i1 %.not.13.i19, label %bb.ac, label %_ZeqRK4GUIDS1_.exit23.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !62
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 14), align 2, !tbaa !62
  %.not.14.i20 = icmp eq i8 %i.ck, %i.cl
  br i1 %.not.14.i20, label %_ZeqRK4GUIDS1_.exit23, label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23:                            ; preds = %bb.ac
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !62
  %i.co = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 15), align 1, !tbaa !62
  %.not.15.i21.not = icmp eq i8 %i.cn, %i.co
  br i1 %.not.15.i21.not, label %_ZeqRK4GUIDS1_.exit23.thread.sink.split, label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23.thread.sink.split:          ; preds = %_ZeqRK4GUIDS1_.exit23, %_ZeqRK4GUIDS1_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cp, ptr %2, align 8, !tbaa !162
  %i.cq = load ptr, ptr %0, align 8, !tbaa !46
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef i32 %i.cs(ptr noundef nonnull align 8 dereferenceable(39788) %0) ; 0 uses
  br label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23.thread:                     ; preds = %_ZeqRK4GUIDS1_.exit23.thread.sink.split, %bb.aa, %bb.v, %bb.z, %bb.u, %bb.ab, %bb.t, %bb.x, %bb.s, %bb.ac, %bb.r, %bb.y, %bb.q, %bb.p, %bb.w, %_ZeqRK4GUIDS1_.exit.thread, %_ZeqRK4GUIDS1_.exit23
  %.0 = phi i32 [ -2147467262, %bb.v ], [ -2147467262, %bb.aa ], [ -2147467262, %_ZeqRK4GUIDS1_.exit23 ], [ -2147467262, %_ZeqRK4GUIDS1_.exit.thread ], [ -2147467262, %bb.w ], [ -2147467262, %bb.p ], [ -2147467262, %bb.q ], [ -2147467262, %bb.y ], [ -2147467262, %bb.r ], [ -2147467262, %bb.ac ], [ -2147467262, %bb.s ], [ -2147467262, %bb.x ], [ -2147467262, %bb.t ], [ -2147467262, %bb.ab ], [ -2147467262, %bb.u ], [ -2147467262, %bb.z ], [ 0, %_ZeqRK4GUIDS1_.exit23.thread.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !163
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !163
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !163
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !163
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(39788) %0) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D2Ev(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.a) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.a) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 39792) #25
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(39788) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv(ptr noundef %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !163
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !163
  ret i32 %i.c
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv(ptr noundef %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !163
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !163
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(39788) %i.d) #23, !inline_history !166
  br label %_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv.exit

_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv.exit: ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D1Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.a) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.b) #23
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(39788) %i.a, i64 noundef 39792) #25
  ret void
}

declare void @_ZN10COutBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN9NCompress8NDeflate8NEncoderL7SzAllocEPvm(ptr nofree readnone captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @MyAlloc(i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN9NCompress8NDeflate8NEncoderL6SzFreeEPvS2_(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @MyFree(ptr noundef %1)
  ret void
}

declare noundef zeroext i1 @_ZN10COutBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) local_unnamed_addr #1

declare void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #1

declare void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_DeflateEncoder.cpp() #19 section ".text.startup" {
bb.a:
  store <8 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, align 16
  store <4 x i16> <i16 2056, i16 2313, i16 2570, i16 2827>, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 8), align 8
  store <4 x i32> <i32 202116108, i32 218959117, i32 235802126, i32 252645135>, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 16), align 16
  store i64 1157442765409226768, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 32), align 16
  store i64 1229782938247303441, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 40), align 8
  store i64 1302123111085380114, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 48), align 16
  store i64 1374463283923456787, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 56), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 64), i8 20, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 80), i8 21, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 96), i8 22, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 112), i8 23, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 128), i8 24, i64 32, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 160), i8 25, i64 32, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 192), i8 26, i64 32, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 224), i8 27, i64 32, i1 false), !tbaa !62
  store i8 28, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 255), align 1
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, align 16, !tbaa !62
  store i16 1028, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 4), align 4
  store i16 1285, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 6), align 2
  store i32 101058054, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 8), align 8
  store i32 117901063, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 12), align 4
  store i64 578721382704613384, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 16), align 16
  store i64 651061555542690057, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 24), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 32), i8 10, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 48), i8 11, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 64), i8 12, i64 32, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 96), i8 13, i64 32, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 128), i8 14, i64 64, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 192), i8 15, i64 64, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 256), i8 16, i64 128, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 384), i8 17, i64 128, i1 false), !tbaa !62
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bitreverse.v4i16(<4 x i16>) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS10COutBuffer", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !12, i64 24, !14, i64 32, !10, i64 40, !15, i64 48}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"_ZTS9CMyComPtrI20ISequentialOutStreamE", !13, i64 0}
!13 = !{!"p1 _ZTS20ISequentialOutStream", !11, i64 0}
!14 = !{!"long long", !6, i64 0}
!15 = !{!"bool", !6, i64 0}
!16 = !{!9, !5, i64 8}
!17 = !{!12, !13, i64 0}
!18 = !{!9, !10, i64 40}
!19 = !{!20, !5, i64 1264}
!20 = !{!"_ZTSN9NCompress8NDeflate8NEncoder6CCoderE", !21, i64 0, !24, i64 1168, !25, i64 1232, !29, i64 1248, !30, i64 1256, !5, i64 1264, !15, i64 1268, !15, i64 1269, !30, i64 1272, !30, i64 1280, !5, i64 1288, !5, i64 1292, !5, i64 1296, !15, i64 1300, !15, i64 1301, !5, i64 1304, !5, i64 1308, !5, i64 1312, !10, i64 1320, !10, i64 1328, !15, i64 1336, !15, i64 1337, !6, i64 1338, !5, i64 1360, !5, i64 1364, !5, i64 1368, !5, i64 1372, !15, i64 1376, !5, i64 1380, !5, i64 1384, !5, i64 1388, !6, i64 1392, !6, i64 1648, !6, i64 1904, !31, i64 1936, !6, i64 2256, !6, i64 3408, !6, i64 3536, !6, i64 4688, !6, i64 4816, !6, i64 4892, !5, i64 4912, !32, i64 4920, !6, i64 4928, !5, i64 39760}
!21 = !{!"_ZTS13_CMatchFinder", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !22, i64 40, !22, i64 48, !5, i64 56, !5, i64 60, !10, i64 64, !11, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !23, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !6, i64 140}
!22 = !{!"p1 int", !11, i64 0}
!23 = !{!"long", !6, i64 0}
!24 = !{!"_ZTS12CBitlEncoder", !9, i64 0, !5, i64 56, !6, i64 60}
!25 = !{!"_ZTSN9NCompress8NDeflate8NEncoder13_CSeqInStreamE", !26, i64 0, !27, i64 8}
!26 = !{!"_ZTS12ISeqInStream", !11, i64 0}
!27 = !{!"_ZTS9CMyComPtrI19ISequentialInStreamE", !28, i64 0}
!28 = !{!"p1 _ZTS19ISequentialInStream", !11, i64 0}
!29 = !{!"p1 _ZTSN9NCompress8NDeflate8NEncoder10CCodeValueE", !11, i64 0}
!30 = !{!"p1 short", !11, i64 0}
!31 = !{!"_ZTSN9NCompress8NDeflate7CLevelsE", !6, i64 0, !6, i64 288}
!32 = !{!"p1 _ZTSN9NCompress8NDeflate8NEncoder7CTablesE", !11, i64 0}
!33 = !{!20, !15, i64 1268}
!34 = !{!20, !15, i64 1269}
!35 = !{!20, !5, i64 1292}
!36 = !{!20, !5, i64 1296}
!37 = !{!20, !15, i64 1336}
!38 = !{!20, !15, i64 1337}
!39 = !{!20, !32, i64 4920}
!40 = !{!20, !5, i64 39760}
!41 = !{!20, !5, i64 1312}
!42 = !{!20, !5, i64 1308}
!43 = !{!20, !10, i64 1320}
!44 = !{!20, !10, i64 1328}
!45 = !{!27, !28, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !7, i64 0}
!48 = !{!20, !29, i64 1248}
!49 = !{!10, !10, i64 0}
!50 = !{!20, !15, i64 1301}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = !{!20, !30, i64 1272}
!54 = !{!20, !30, i64 1280}
!55 = !{!20, !30, i64 1256}
!56 = !{!20, !5, i64 112}
!57 = !{!20, !5, i64 96}
!58 = !{!20, !5, i64 60}
!59 = !{!60, !61, i64 0}
!60 = !{!"_ZTS14tagPROPVARIANT", !61, i64 0, !61, i64 2, !61, i64 4, !61, i64 6, !6, i64 8}
!61 = !{!"short", !6, i64 0}
!62 = !{!6, !6, i64 0}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!20, !5, i64 1288}
!66 = !{!20, !15, i64 1376}
!67 = !{!61, !61, i64 0}
!68 = distinct !{!68, !64, !69, !70}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = distinct !{!71, !64, !70, !69}
!72 = !{!20, !5, i64 16}
!73 = !{!20, !5, i64 8}
!74 = !{!20, !10, i64 0}
!75 = distinct !{!75, !64}
!76 = !{!20, !5, i64 1380}
!77 = !{!20, !5, i64 1384}
!78 = !{!79, !61, i64 4}
!79 = !{!"_ZTSN9NCompress8NDeflate8NEncoder8COptimalE", !5, i64 0, !61, i64 4, !61, i64 6}
!80 = !{!79, !61, i64 6}
!81 = distinct !{!81, !64}
!82 = !{!20, !5, i64 1388}
!83 = !{!79, !5, i64 0}
!84 = distinct !{!84, !64}
!85 = distinct !{!85, !64}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = distinct !{!88, !64}
!89 = distinct !{!89, !64}
!90 = distinct !{!90, !64}
!91 = !{!24, !5, i64 56}
!92 = !{!24, !6, i64 60}
!93 = !{!9, !5, i64 12}
!94 = distinct !{!94, !64, !95}
!95 = !{!"llvm.loop.peeled.count", i32 1}
!96 = distinct !{!96, !64, !97}
!97 = !{!"llvm.loop.unswitch.partial.disable"}
!98 = distinct !{!98, !64}
!99 = distinct !{!99, !64, !69, !70}
!100 = distinct !{!100, !64, !70, !69}
!101 = distinct !{!101, !64, !69, !70}
!102 = distinct !{!102, !64, !70, !69}
!103 = distinct !{!103, !64, !69, !70}
!104 = distinct !{!104, !64, !70, !69}
!105 = distinct !{!105, !64, !69, !70}
!106 = !{!20, !5, i64 1372}
!107 = !{!20, !5, i64 4912}
!108 = !{!20, !5, i64 1304}
!109 = !{!110, !61, i64 0}
!110 = !{!"_ZTSN9NCompress8NDeflate8NEncoder10CCodeValueE", !61, i64 0, !61, i64 2}
!111 = !{!110, !61, i64 2}
!112 = distinct !{!112, !64}
!113 = distinct !{!113, !64, !69}
!114 = distinct !{!114, !64}
!115 = !{!116}
!116 = distinct !{!116, !117}
!117 = distinct !{!117, !"LVerDomain"}
!118 = !{!119}
!119 = distinct !{!119, !117}
!120 = distinct !{!120, !64, !69, !70}
!121 = distinct !{!121, !64, !69}
!122 = distinct !{!122, !64, !69, !70}
!123 = distinct !{!123, !64, !69, !70}
!124 = distinct !{!124, !64, !95}
!125 = distinct !{!125, !64, !95}
!126 = distinct !{!126, !64, !95}
!127 = distinct !{!127, !64, !95}
!128 = distinct !{!128, !64, !95}
!129 = distinct !{!129, !64, !95}
!130 = distinct !{!130, !64}
!131 = distinct !{!131, !64}
!132 = distinct !{!132, !64}
!133 = !{!134, !5, i64 324}
!134 = !{!"_ZTSN9NCompress8NDeflate8NEncoder7CTablesE", !31, i64 0, !15, i64 320, !15, i64 321, !15, i64 322, !5, i64 324, !5, i64 328}
!135 = !{!134, !5, i64 328}
!136 = !{i64 0, i64 288, !62, i64 288, i64 32, !62}
!137 = !{!20, !5, i64 1360}
!138 = distinct !{!138, !64}
!139 = !{!20, !5, i64 1364}
!140 = distinct !{!140, !64, !95}
!141 = !{!20, !5, i64 1368}
!142 = !{!134, !15, i64 322}
!143 = !{!20, !15, i64 1300}
!144 = distinct !{!144, !64}
!145 = !{!134, !15, i64 321}
!146 = !{!134, !15, i64 320}
!147 = distinct !{!147, !64}
!148 = distinct !{!148, !64}
!149 = !{!23, !23, i64 0}
!150 = !{!14, !14, i64 0}
!151 = distinct !{null}
!152 = !{!20, !11, i64 1232}
!153 = !{!20, !11, i64 72}
!154 = !{!155, !156, i64 0}
!155 = !{!"_ZTSN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserE", !156, i64 0}
!156 = !{!"p1 _ZTSN9NCompress8NDeflate8NEncoder6CCoderE", !11, i64 0}
!157 = distinct !{!157, !64}
!158 = !{!20, !5, i64 136}
!159 = distinct !{null}
!160 = !{!161, !5, i64 0}
!161 = !{!"_ZTS16CSystemException", !5, i64 0}
!162 = !{!11, !11, i64 0}
!163 = !{!164, !5, i64 0}
!164 = !{!"_ZTS13CMyUnknownImp", !5, i64 0}
!165 = !{ptr @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv}
!166 = !{ptr @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv}
end_hunk_2
