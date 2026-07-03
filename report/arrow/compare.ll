inline.NumInlined: 2996
inline.NumDeleted: 1287
begin_hunk_0_@_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_11BooleanTypeEENKUlllE_clEll:bb.a

bb.i:                                             ; preds = %bb.g
  %i.cq = load i16, ptr %i.ce, align 1
  %.sroa.081.0.insert.ext = zext i16 %i.cq to i64
  %i.cr = and i64 %i.cf, 4294967295
  %i.cs = lshr i64 %.sroa.081.0.insert.ext, %i.cr
  %notmask.i.i6.i36 = shl nsw i64 -1, %2
  %i.ct = xor i64 %notmask.i.i6.i36, -1
  %i.cu = and i64 %i.cs, %i.ct
  br label %_ZN5arrow8internal18BitmapUInt64ReaderC2EPKhll.exit37

_ZN5arrow8internal18BitmapUInt64ReaderC2EPKhll.exit37: ; preds = %bb.h, %bb.i
  %.pn58 = phi i64 [ 2, %bb.i ], [ %i.cl, %bb.h ]
  %.sink.i34 = phi i64 [ %i.cu, %bb.i ], [ %i.cp, %bb.h ]
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.pn58
  %i.cv = sub nsw i64 72, %i.bc
  %i.cw = add nsw i64 %i.bc, 56                   ; 2 uses
  %i.cx = sub nsw i64 72, %i.cf
  %i.cy = add nsw i64 %i.cf, 56                   ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit47, %_ZN5arrow8internal18BitmapUInt64ReaderC2EPKhll.exit37
  %.sroa.051.0 = phi ptr [ %.sroa.051.1, %_ZN5arrow8internal18BitmapUInt64ReaderC2EPKhll.exit37 ], [ %.sroa.051.3, %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit47 ] ; 5 uses
  %.sroa.17.0 = phi i64 [ %.sink.i34, %_ZN5arrow8internal18BitmapUInt64ReaderC2EPKhll.exit37 ], [ %.sroa.17.2, %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit47 ] ; 4 uses
  %.sroa.12.0 = phi i64 [ %2, %_ZN5arrow8internal18BitmapUInt64ReaderC2EPKhll.exit37 ], [ %.sroa.12.1, %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit47 ] ; 5 uses
  %.sroa.13.0 = phi i64 [ %2, %_ZN5arrow8internal18BitmapUInt64ReaderC2EPKhll.exit37 ], [ %.sroa.13.1, %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit47 ] ; 6 uses
  %.sroa.19.0 = phi i64 [ %.sink.i, %_ZN5arrow8internal18BitmapUInt64ReaderC2EPKhll.exit37 ], [ %.sroa.19.2, %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit47 ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZN5arrow8internal18BitmapUInt64ReaderC2EPKhll.exit37 ], [ %.sroa.0.3, %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit47 ] ; 5 uses
  %i.cz = icmp slt i64 %.sroa.13.0, 1             ; 3 uses
  br i1 %i.cz, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i38 = icmp slt i64 %.sroa.13.0, %i.cv
  br i1 %.not.i38, label %bb.m, label %bb.l, !prof !290

bb.l:                                             ; preds = %bb.k
  %.0.copyload.i.i = load i64, ptr %.sroa.051.0, align 1 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.051.0, i64 8
  %i.db = shl i64 %.0.copyload.i.i, %i.bd
  %i.dc = or i64 %i.db, %.sroa.19.0
  %i.dd = lshr i64 %.0.copyload.i.i, %i.cw
  %i.de = add nsw i64 %.sroa.13.0, -64
  br label %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit

bb.m:                                             ; preds = %bb.k
  %i.df = icmp sgt i64 %.sroa.13.0, %i.bd
  br i1 %i.df, label %bb.n, label %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit

bb.n:                                             ; preds = %bb.m
  %i.dg = sub nsw i64 %.sroa.13.0, %i.bd          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !tbaa !228
  %i.dh = add nuw nsw i64 %i.dg, 7
  %i.di = lshr i64 %i.dh, 3                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr align 1 %.sroa.051.0, i64 %i.di, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.051.0, i64 %i.di
  %.0..0..0..0..0..0..0..0..i.i39 = load i64, ptr %i.b, align 8, !tbaa !228
  %notmask.i.i.i40 = shl nsw i64 -1, %i.dg
  %i.dk = xor i64 %notmask.i.i.i40, -1
  %i.dl = and i64 %.0..0..0..0..0..0..0..0..i.i39, %i.dk ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dm = shl i64 %i.dl, %i.bd
  %i.dn = or i64 %i.dm, %.sroa.19.0
  %i.do = lshr i64 %i.dl, %i.cw
  %.sroa.speculated.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.13.0, i64 64)
  br label %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit

_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit: ; preds = %bb.m, %bb.l, %bb.n
  %.sroa.051.3 = phi ptr [ %i.dj, %bb.n ], [ %i.da, %bb.l ], [ %.sroa.051.0, %bb.m ]
  %.sroa.13.1 = phi i64 [ %.sroa.speculated.i, %bb.n ], [ %i.de, %bb.l ], [ 0, %bb.m ]
  %.sroa.19.2 = phi i64 [ %i.do, %bb.n ], [ %i.dd, %bb.l ], [ %.sroa.19.0, %bb.m ]
  %.0.i = phi i64 [ %i.dn, %bb.n ], [ %i.dc, %bb.l ], [ %.sroa.19.0, %bb.m ]
  %.not.i41 = icmp slt i64 %.sroa.12.0, %i.cx
  br i1 %.not.i41, label %bb.p, label %bb.o, !prof !290

bb.o:                                             ; preds = %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit
  %.0.copyload.i.i42 = load i64, ptr %.sroa.0.0, align 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.dq = shl i64 %.0.copyload.i.i42, %i.cg
  %i.dr = or i64 %i.dq, %.sroa.17.0
  %i.ds = lshr i64 %.0.copyload.i.i42, %i.cy
  %i.dt = add nsw i64 %.sroa.12.0, -64
  br label %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit47

bb.p:                                             ; preds = %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit
  %i.du = icmp sgt i64 %.sroa.12.0, %i.cg
  br i1 %i.du, label %bb.q, label %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit47

bb.q:                                             ; preds = %bb.p
  %i.dv = sub nsw i64 %.sroa.12.0, %i.cg          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !228
  %i.dw = add nuw nsw i64 %i.dv, 7
  %i.dx = lshr i64 %i.dw, 3                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %.sroa.0.0, i64 %i.dx, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.dx
  %.0..0..0..0..0..0..0..0..i.i44 = load i64, ptr %i.a, align 8, !tbaa !228
  %notmask.i.i.i45 = shl nsw i64 -1, %i.dv
  %i.dz = xor i64 %notmask.i.i.i45, -1
  %i.ea = and i64 %.0..0..0..0..0..0..0..0..i.i44, %i.dz ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.eb = shl i64 %i.ea, %i.cg
  %i.ec = or i64 %i.eb, %.sroa.17.0
  %i.ed = lshr i64 %i.ea, %i.cy
  %i.ee = tail call i64 @llvm.smax.i64(i64 %.sroa.12.0, i64 64)
  %.sroa.speculated.i46 = add nsw i64 %i.ee, -64
  br label %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit47

_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit47: ; preds = %bb.p, %bb.o, %bb.q
  %.sroa.17.2 = phi i64 [ %i.ed, %bb.q ], [ %i.ds, %bb.o ], [ %.sroa.17.0, %bb.p ]
  %.sroa.12.1 = phi i64 [ %.sroa.speculated.i46, %bb.q ], [ %i.dt, %bb.o ], [ 0, %bb.p ]
  %.sroa.0.3 = phi ptr [ %i.dy, %bb.q ], [ %i.dp, %bb.o ], [ %.sroa.0.0, %bb.p ]
  %.0.i43 = phi i64 [ %i.ec, %bb.q ], [ %i.dr, %bb.o ], [ %.sroa.17.0, %bb.p ]
  %.not = icmp eq i64 %.0.i, %.0.i43
  br i1 %.not, label %bb.j, label %.loopexit, !llvm.loop !1133

bb.r:                                             ; preds = %bb.c
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1131, !nonnull !40, !align !709
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !726
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !92
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !710, !nonnull !40, !align !709
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load i64, ptr %i.em, align 8, !tbaa !712
  %i.eo = add i64 %i.ej, %1
  %i.ep = add i64 %i.eo, %i.en
  %i.eq = tail call noundef zeroext i1 @_ZN5arrow8internal12BitmapEqualsEPKhlS2_ll(ptr noundef %i.ar, i64 noundef %i.az, ptr noundef %i.eh, i64 noundef %i.ep, i64 noundef %2)
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  %.2.ph = xor i1 %i.an, true
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit47, %bb.j, %.loopexit.loopexit, %.preheader, %bb.r
  %.2 = phi i1 [ %i.eq, %bb.r ], [ %.2.ph, %.loopexit.loopexit ], [ true, %.preheader ], [ %i.cz, %bb.j ], [ %i.cz, %_ZN5arrow8internal18BitmapUInt64Reader8NextWordEv.exit47 ]
  ret i1 %.2
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %.not.i = icmp eq ptr %1, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i = select i1 %.not.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %1, !prof !290
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.b, align 8, !tbaa !1134
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.c, align 8, !tbaa !1136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !1137
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !1138
  %i.f = sdiv i64 %2, 8
  %i.g = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i, i64 %i.f ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !1139
  %i.h = srem i64 %2, 8                           ; 3 uses
  %i.i = icmp sgt i64 %3, 0
  %i.j = icmp ne i64 %i.h, 0
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = trunc i64 %3 to i32
  %i.l = trunc nsw i64 %i.h to i32
  %i.m = sub nsw i32 8, %i.l
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %i.k) ; 3 uses
  store i32 %.sroa.speculated, ptr %i.e, align 8, !tbaa !1138
  %i.n = sext i32 %.sroa.speculated to i64        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !228
  %i.o = ashr i64 %i.n, 3
  %i.p = and i32 %.sroa.speculated, 7
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i64
  %i.s = add nsw i64 %i.o, %i.r                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 1 %i.g, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds i8, ptr %i.g, i64 %i.s
  store ptr %i.t, ptr %0, align 8, !tbaa !1139
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8, !tbaa !228
  %i.u = and i64 %i.h, 4294967295
  %i.v = lshr i64 %.0..0..0..0..0..0..i, %i.u
  %notmask.i.i = shl nsw i64 -1, %i.n
  %i.w = xor i64 %notmask.i.i, -1
  %i.x = and i64 %i.v, %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.x, ptr %i.d, align 8, !tbaa !1137
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1138 ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %..thread50_crit_edge, label %bb.b

..thread50_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.promoted.i.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !1136
  br label %.thread50

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1137 ; 2 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.f, i1 false) ; 3 uses
  %i.h = trunc nuw nsw i64 %i.g to i32            ; 2 uses
  %.not.i = icmp sgt i32 %i.d, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1136 ; 2 uses
  br i1 %.not.i, label %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE14FindCurrentRunEv.exit, label %.thread56

.thread56:                                        ; preds = %bb.b
  %i.k = sext i32 %i.d to i64
  %i.l = sub nsw i64 %i.j, %i.k                   ; 2 uses
  store i64 %i.l, ptr %i.i, align 8, !tbaa !1136
  store i64 0, ptr %i.e, align 8, !tbaa !1137
  store i32 0, ptr %i.c, align 8, !tbaa !1138
  br label %.thread50

_ZN5arrow8internal19BaseSetBitRunReaderILb0EE14FindCurrentRunEv.exit: ; preds = %bb.b
  %i.m = lshr exact i64 %i.f, %i.g                ; 2 uses
  %i.n = sub nsw i64 %i.j, %i.g                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1134
  %i.q = sub nsw i64 %i.p, %i.n                   ; 5 uses
  %i.r = xor i64 %i.m, -1
  %i.s = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.r, i1 false) ; 9 uses
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = lshr i64 %i.m, %i.s
  store i64 %i.u, ptr %i.e, align 8, !tbaa !1137
  %i.v = add nuw nsw i32 %i.t, %i.h               ; 3 uses
  %i.w = sub nsw i32 %i.d, %i.v
  store i32 %i.w, ptr %i.c, align 8, !tbaa !1138
  %i.x = sub nsw i64 %i.n, %i.s                   ; 7 uses
  store i64 %i.x, ptr %i.i, align 8, !tbaa !1136
  %.not25 = icmp eq i64 %i.s, 0                   ; 2 uses
  %.not26.a = icmp eq i32 %i.d, %i.v
  %or.cond = select i1 %.not25, i1 true, i1 %.not26.a
  br i1 %or.cond, label %bb.c, label %bb.n

bb.c:                                             ; preds = %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE14FindCurrentRunEv.exit
  br i1 %.not25, label %.thread50, label %1

.thread50:                                        ; preds = %..thread50_crit_edge, %.thread56, %bb.c
  %.promoted.i = phi i64 [ %.promoted.i.pre, %..thread50_crit_edge ], [ %i.l, %.thread56 ], [ %i.x, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = icmp sgt i64 %.promoted.i, 63
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i, !prof !1140

.lr.ph.i:                                         ; preds = %.thread50
  %.promoted18.i = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %i.ab = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ak, %bb.e ] ; 3 uses
  %i.ac = phi ptr [ %.promoted18.i, %.lr.ph.i ], [ %i.ad, %bb.e ] ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.ac, align 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !1139
  store i64 %.0.copyload.i.i, ptr %i.aa, align 8, !tbaa !1137
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.copyload.i.i, i1 false) ; 4 uses
  %i.af = icmp samesign ult i64 %i.ae, 64
  br i1 %i.af, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d
  %i.ag = trunc nuw nsw i64 %i.ae to i32
  %i.ah = lshr exact i64 %.0.copyload.i.i, %i.ae
  store i64 %i.ah, ptr %i.aa, align 8, !tbaa !1137
  %i.ai = sub nuw nsw i32 64, %i.ag
  store i32 %i.ai, ptr %i.c, align 8, !tbaa !1138
  %i.aj = sub nuw nsw i64 %i.ab, %i.ae
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.ak = add nsw i64 %i.ab, -64                  ; 3 uses
  store i64 %i.ak, ptr %i.y, align 8, !tbaa !1136
  %i.al = icmp sgt i64 %i.ab, 127
  br i1 %i.al, label %bb.d, label %._crit_edge.i, !prof !1141

._crit_edge.i:                                    ; preds = %bb.e, %.thread50
  %.pr = phi i64 [ %.promoted.i, %.thread50 ], [ %i.ak, %bb.e ] ; 7 uses
  %i.am = icmp sgt i64 %.pr, 0
  br i1 %i.am, label %bb.f, label %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13SkipNextZerosEv.exit

bb.f:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !tbaa !228
  %i.an = add nuw nsw i64 %.pr, 7
  %i.ao = lshr i64 %i.an, 3                       ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1139  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr align 1 %i.ap, i64 %i.ao, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store ptr %i.aq, ptr %0, align 8, !tbaa !1139
  %.0..0..0..0..0..0..0..0..i.i = load i64, ptr %i.b, align 8, !tbaa !228
  %notmask.i.i.i = shl nsw i64 -1, %.pr
  %i.ar = xor i64 %notmask.i.i.i, -1
  %i.as = and i64 %.0..0..0..0..0..0..0..0..i.i, %i.ar ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = trunc nuw nsw i64 %.pr to i32
  %i.av = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.as, i1 false)
  %.sroa.speculated12.i = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %.pr) ; 3 uses
  %.sroa.speculated.i = trunc nuw nsw i64 %.sroa.speculated12.i to i32
  %i.aw = lshr i64 %i.as, %.sroa.speculated12.i
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !1137
  %i.ax = sub nsw i32 %i.au, %.sroa.speculated.i
  store i32 %i.ax, ptr %i.c, align 8, !tbaa !1138
  %i.ay = sub nsw i64 %.pr, %.sroa.speculated12.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %.thread.i
  %.sink.i = phi i64 [ %i.aj, %.thread.i ], [ %i.ay, %bb.f ] ; 2 uses
  store i64 %.sink.i, ptr %i.y, align 8, !tbaa !1136
  br label %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13SkipNextZerosEv.exit

_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13SkipNextZerosEv.exit: ; preds = %._crit_edge.i, %.sink.split.i
  %i.az = phi i64 [ %.sink.i, %.sink.split.i ], [ %.pr, %._crit_edge.i ] ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13SkipNextZerosEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !1134
  %i.bd = sub nsw i64 %i.bc, %i.az
  br label %bb.m

1:                                                ; preds = %bb.c
  %.not28 = icmp eq i32 %i.d, %i.v
  br i1 %.not28, label %bb.h, label %bb.m

bb.h:                                             ; preds = %1
  %i.be = icmp sgt i64 %i.x, 63
  br i1 %i.be, label %bb.i, label %bb.j, !prof !99

bb.i:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %0, align 8, !tbaa !1139  ; 2 uses
  %.0.copyload.i = load i64, ptr %i.bf, align 1   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %0, align 8, !tbaa !1139
  store i64 %.0.copyload.i, ptr %i.e, align 8, !tbaa !1137
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bh = icmp sgt i64 %i.x, 0
  br i1 %i.bh, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !228
  %i.bi = add nuw nsw i64 %i.x, 7
  %i.bj = lshr i64 %i.bi, 3                       ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !1139  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.bk, i64 %i.bj, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store ptr %i.bl, ptr %0, align 8, !tbaa !1139
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8, !tbaa !228
  %notmask.i.i = shl nsw i64 -1, %i.x
  %i.bm = xor i64 %notmask.i.i, -1
  %i.bn = and i64 %.0..0..0..0..0..0..i, %i.bm    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.bn, ptr %i.e, align 8, !tbaa !1137
  %i.bo = trunc nuw nsw i64 %i.x to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.bp = phi i64 [ %i.bn, %bb.k ], [ %.0.copyload.i, %bb.i ]
  %storemerge = phi i32 [ %i.bo, %bb.k ], [ 64, %bb.i ]
  store i32 %storemerge, ptr %i.c, align 8, !tbaa !1138
  %i.bq = and i64 %i.bp, 1
  %.not29 = icmp eq i64 %i.bq, 0
  br i1 %.not29, label %bb.n, label %bb.m

bb.m:                                             ; preds = %1, %bb.l, %bb.g
  %.12154 = phi i64 [ %i.s, %1 ], [ %i.s, %bb.l ], [ 0, %bb.g ]
  %.2 = phi i64 [ %i.q, %1 ], [ %i.q, %bb.l ], [ %i.bd, %bb.g ]
  %i.br = tail call noundef i64 @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13CountNextOnesEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
  %i.bs = add nsw i64 %i.br, %.12154
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.j, %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE14FindCurrentRunEv.exit, %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13SkipNextZerosEv.exit, %bb.m
  %.sroa.019.1 = phi i64 [ %.2, %bb.m ], [ %i.q, %bb.j ], [ %i.q, %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE14FindCurrentRunEv.exit ], [ 0, %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13SkipNextZerosEv.exit ], [ %i.q, %bb.l ]
  %.sroa.6.1 = phi i64 [ %i.bs, %bb.m ], [ %i.s, %bb.j ], [ %i.s, %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE14FindCurrentRunEv.exit ], [ 0, %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13SkipNextZerosEv.exit ], [ %i.s, %bb.l ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.019.1, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { i64, i64 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZN5arrow8internal12BitmapEqualsEPKhlS2_ll(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13CountNextOnesEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1137 ; 3 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = xor i64 %i.c, -1
  %i.e = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.d, i1 true) ; 5 uses
  %i.f = trunc nuw nsw i64 %i.e to i32            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1136
  %i.i = sub nsw i64 %i.h, %i.e                   ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !1136
  %i.j = lshr i64 %i.c, %i.e
  store i64 %i.j, ptr %i.b, align 8, !tbaa !1137
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1138 ; 2 uses
  %i.m = sub nsw i32 %i.l, %i.f
  store i32 %i.m, ptr %i.k, align 8, !tbaa !1138
  %.not30 = icmp eq i32 %i.l, %i.f
  br i1 %.not30, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1136
  %i.p = add nsw i64 %i.o, -64                    ; 2 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !1136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.q, align 8, !tbaa !1138
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.promoted = phi i64 [ %i.i, %bb.b ], [ %i.p, %bb.c ]
  %.123 = phi i64 [ %i.e, %bb.b ], [ 64, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted38 = load ptr, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %1 = phi ptr [ %.promoted38, %bb.d ], [ %i.u, %bb.f ] ; 4 uses
  %i.s = phi i64 [ %.promoted, %bb.d ], [ %i.y, %bb.f ] ; 7 uses
  %.224 = phi i64 [ %.123, %bb.d ], [ %i.x, %bb.f ] ; 3 uses
  %i.t = icmp sgt i64 %i.s, 63
  br i1 %i.t, label %bb.f, label %bb.g, !prof !99

bb.f:                                             ; preds = %bb.e
  %.0.copyload.i = load i64, ptr %1, align 1      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !1139
  store i64 %.0.copyload.i, ptr %i.b, align 8, !tbaa !1137
  %i.v = xor i64 %.0.copyload.i, -1
  %i.w = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.v, i1 false) ; 5 uses
  %i.x = add nuw nsw i64 %i.w, %.224              ; 2 uses
  %i.y = sub nuw nsw i64 %i.s, %i.w               ; 2 uses
  store i64 %i.y, ptr %i.r, align 8, !tbaa !1136
  %i.z = icmp samesign ugt i64 %i.w, 63
  br i1 %i.z, label %bb.e, label %.thread, !llvm.loop !1142

.thread:                                          ; preds = %bb.f
  %i.aa = trunc nuw nsw i64 %i.w to i32
  %i.ab = lshr i64 %.0.copyload.i, %i.w
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !1137
  %i.ac = sub nuw nsw i32 64, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !1138
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ae = icmp sgt i64 %i.s, 0
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !228
  %i.af = add nuw nsw i64 %i.s, 7
  %i.ag = lshr i64 %i.af, 3                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %1, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  store ptr %i.ah, ptr %0, align 8, !tbaa !1139
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8, !tbaa !228
  %notmask.i.i = shl nsw i64 -1, %i.s
  %i.ai = xor i64 %notmask.i.i, -1
  %i.aj = and i64 %.0..0..0..0..0..0..i, %i.ai    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = trunc nuw nsw i64 %i.s to i32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = xor i64 %i.aj, -1
  %i.an = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 %i.am, i1 true) ; 4 uses
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = lshr i64 %i.aj, %i.an
  store i64 %i.ap, ptr %i.b, align 8, !tbaa !1137
  %i.aq = sub nsw i32 %i.ak, %i.ao
  store i32 %i.aq, ptr %i.al, align 8, !tbaa !1138
  %i.ar = sub nsw i64 %i.s, %i.an
  store i64 %i.ar, ptr %i.r, align 8, !tbaa !1136
  %i.as = add nuw nsw i64 %i.an, %.224
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.g, %bb.h, %bb.b
  %.4 = phi i64 [ %i.x, %.thread ], [ %i.e, %bb.b ], [ %i.as, %bb.h ], [ %.224, %bb.g ]
  ret i64 %.4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #8

declare noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1065 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1082 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i), !inline_history !1143
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !1084

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1065
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i, %bb.a
  %i.f = phi ptr [ %.pre.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1085
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #26, !inline_history !1144
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  ret void
}

declare void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1065   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1082 ; 2 uses
  %.not.i1 = icmp eq ptr %i.a, %i.c
  br i1 %.not.i1, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i2 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2), !inline_history !1145
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i2, i64 128 ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit, label %.lr.ph, !llvm.loop !1084

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !1065
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1085
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #26
  br label %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1065 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1082 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i1, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i.i2 = phi ptr [ %i.e, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i.i2), !inline_history !1146
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i2, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit, label %.lr.ph, !llvm.loop !1084

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1065
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit, %bb.a
  %i.f = phi ptr [ %.pre, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1085
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #26, !inline_history !1147
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i, %bb.b
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1148, !nonnull !40, !align !709
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(24) %1) #25
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(24) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1148, !nonnull !40, !align !709
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit
  %i.h = landingpad { ptr, i32 }
end_hunk_0
