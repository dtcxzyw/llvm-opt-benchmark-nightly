inline.NumInlined: 105
inline.NumDeleted: 33
begin_hunk_0_@LenEnc_Encode2:bb.a
  %i.jy = zext i16 %i.jx to i32                   ; 5 uses
  %i.jz = lshr i32 %i.jq, 11
  %i.ka = mul i32 %i.jz, %i.jy                    ; 3 uses
  %i.kb = icmp eq i32 %i.ju, 0
  br i1 %i.kb, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %RangeEnc_EncodeBit.exit.i34.3.i
  %i.kc = zext i32 %i.ka to i64
  %i.kd = load i64, ptr %i.cf, align 8, !tbaa !75
  %i.ke = add i64 %i.kd, %i.kc
  store i64 %i.ke, ptr %i.cf, align 8, !tbaa !75
  %i.kf = sub i32 %i.jq, %i.ka
  %i.kg = lshr i32 %i.jy, 5
  %i.kh = sub nsw i32 %i.jy, %i.kg
  br label %bb.ax

bb.aw:                                            ; preds = %RangeEnc_EncodeBit.exit.i34.3.i
  %i.ki = sub nsw i32 2048, %i.jy
  %i.kj = lshr i32 %i.ki, 5
  %i.kk = add nuw nsw i32 %i.kj, %i.jy
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sink.i.i32.4.i = phi i32 [ %i.ka, %bb.aw ], [ %i.kf, %bb.av ] ; 3 uses
  %.0.i.i33.4.i = phi i32 [ %i.kk, %bb.aw ], [ %i.kh, %bb.av ]
  %i.kl = trunc i32 %.0.i.i33.4.i to i16
  store i16 %i.kl, ptr %i.jw, align 2, !tbaa !23
  %i.km = icmp ult i32 %.sink.i.i32.4.i, 16777216
  br i1 %i.km, label %bb.ay, label %RangeEnc_EncodeBit.exit.i34.4.i

bb.ay:                                            ; preds = %bb.ax
  %i.kn = shl nuw i32 %.sink.i.i32.4.i, 8
  store i32 %i.kn, ptr %1, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %1)
  %.pre45.i = load i32, ptr %1, align 8, !tbaa !76
  br label %RangeEnc_EncodeBit.exit.i34.4.i

RangeEnc_EncodeBit.exit.i34.4.i:                  ; preds = %bb.ay, %bb.ax
  %i.ko = phi i32 [ %.pre45.i, %bb.ay ], [ %.sink.i.i32.4.i, %bb.ax ] ; 2 uses
  %i.kp = shl nuw nsw i32 %i.js, 1
  %i.kq = or disjoint i32 %i.kp, %i.ju            ; 2 uses
  %i.kr = lshr i32 %2, 2
  %i.ks = and i32 %i.kr, 1                        ; 2 uses
  %i.kt = zext nneg i32 %i.kq to i64
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.gb, i64 %i.kt ; 2 uses
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !23
  %i.kw = zext i16 %i.kv to i32                   ; 5 uses
  %i.kx = lshr i32 %i.ko, 11
  %i.ky = mul i32 %i.kx, %i.kw                    ; 3 uses
  %i.kz = icmp eq i32 %i.ks, 0
  br i1 %i.kz, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %RangeEnc_EncodeBit.exit.i34.4.i
  %i.la = zext i32 %i.ky to i64
  %i.lb = load i64, ptr %i.cf, align 8, !tbaa !75
  %i.lc = add i64 %i.lb, %i.la
  store i64 %i.lc, ptr %i.cf, align 8, !tbaa !75
  %i.ld = sub i32 %i.ko, %i.ky
  %i.le = lshr i32 %i.kw, 5
  %i.lf = sub nsw i32 %i.kw, %i.le
  br label %bb.bb

bb.ba:                                            ; preds = %RangeEnc_EncodeBit.exit.i34.4.i
  %i.lg = sub nsw i32 2048, %i.kw
  %i.lh = lshr i32 %i.lg, 5
  %i.li = add nuw nsw i32 %i.lh, %i.kw
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sink.i.i32.5.i = phi i32 [ %i.ky, %bb.ba ], [ %i.ld, %bb.az ] ; 3 uses
  %.0.i.i33.5.i = phi i32 [ %i.li, %bb.ba ], [ %i.lf, %bb.az ]
  %i.lj = trunc i32 %.0.i.i33.5.i to i16
  store i16 %i.lj, ptr %i.ku, align 2, !tbaa !23
  %i.lk = icmp ult i32 %.sink.i.i32.5.i, 16777216
  br i1 %i.lk, label %bb.bc, label %RangeEnc_EncodeBit.exit.i34.5.i

bb.bc:                                            ; preds = %bb.bb
  %i.ll = shl nuw i32 %.sink.i.i32.5.i, 8
  store i32 %i.ll, ptr %1, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %1)
  %.pre46.i = load i32, ptr %1, align 8, !tbaa !76
  br label %RangeEnc_EncodeBit.exit.i34.5.i

RangeEnc_EncodeBit.exit.i34.5.i:                  ; preds = %bb.bc, %bb.bb
  %i.lm = phi i32 [ %.pre46.i, %bb.bc ], [ %.sink.i.i32.5.i, %bb.bb ] ; 2 uses
  %i.ln = shl nuw nsw i32 %i.kq, 1
  %i.lo = or disjoint i32 %i.ln, %i.ks            ; 2 uses
  %i.lp = lshr i32 %2, 1
  %i.lq = and i32 %i.lp, 1                        ; 2 uses
  %i.lr = zext nneg i32 %i.lo to i64
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.gb, i64 %i.lr ; 2 uses
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !23
  %i.lu = zext i16 %i.lt to i32                   ; 5 uses
  %i.lv = lshr i32 %i.lm, 11
  %i.lw = mul i32 %i.lv, %i.lu                    ; 3 uses
  %i.lx = icmp eq i32 %i.lq, 0
  br i1 %i.lx, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %RangeEnc_EncodeBit.exit.i34.5.i
  %i.ly = zext i32 %i.lw to i64
  %i.lz = load i64, ptr %i.cf, align 8, !tbaa !75
  %i.ma = add i64 %i.lz, %i.ly
  store i64 %i.ma, ptr %i.cf, align 8, !tbaa !75
  %i.mb = sub i32 %i.lm, %i.lw
  %i.mc = lshr i32 %i.lu, 5
  %i.md = sub nsw i32 %i.lu, %i.mc
  br label %bb.bf

bb.be:                                            ; preds = %RangeEnc_EncodeBit.exit.i34.5.i
  %i.me = sub nsw i32 2048, %i.lu
  %i.mf = lshr i32 %i.me, 5
  %i.mg = add nuw nsw i32 %i.mf, %i.lu
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sink.i.i32.6.i = phi i32 [ %i.lw, %bb.be ], [ %i.mb, %bb.bd ] ; 3 uses
  %.0.i.i33.6.i = phi i32 [ %i.mg, %bb.be ], [ %i.md, %bb.bd ]
  %i.mh = trunc i32 %.0.i.i33.6.i to i16
  store i16 %i.mh, ptr %i.ls, align 2, !tbaa !23
  %i.mi = icmp ult i32 %.sink.i.i32.6.i, 16777216
  br i1 %i.mi, label %bb.bg, label %RangeEnc_EncodeBit.exit.i34.6.i

bb.bg:                                            ; preds = %bb.bf
  %i.mj = shl nuw i32 %.sink.i.i32.6.i, 8
  store i32 %i.mj, ptr %1, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %1)
  %.pre47.i = load i32, ptr %1, align 8, !tbaa !76
  br label %RangeEnc_EncodeBit.exit.i34.6.i

RangeEnc_EncodeBit.exit.i34.6.i:                  ; preds = %bb.bg, %bb.bf
  %i.mk = phi i32 [ %.pre47.i, %bb.bg ], [ %.sink.i.i32.6.i, %bb.bf ] ; 2 uses
  %i.ml = shl nuw nsw i32 %i.lo, 1
  %i.mm = or disjoint i32 %i.ml, %i.lq
  %i.mn = and i32 %2, 1
  %i.mo = zext nneg i32 %i.mm to i64
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %i.gb, i64 %i.mo ; 2 uses
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !23
  %i.mr = zext i16 %i.mq to i32                   ; 5 uses
  %i.ms = lshr i32 %i.mk, 11
  %i.mt = mul i32 %i.ms, %i.mr                    ; 3 uses
  %i.mu = icmp eq i32 %i.mn, 0
  br i1 %i.mu, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %RangeEnc_EncodeBit.exit.i34.6.i
  %i.mv = zext i32 %i.mt to i64
  %i.mw = load i64, ptr %i.cf, align 8, !tbaa !75
  %i.mx = add i64 %i.mw, %i.mv
  store i64 %i.mx, ptr %i.cf, align 8, !tbaa !75
  %i.my = sub i32 %i.mk, %i.mt
  %i.mz = lshr i32 %i.mr, 5
  %i.na = sub nsw i32 %i.mr, %i.mz
  br label %bb.bj

bb.bi:                                            ; preds = %RangeEnc_EncodeBit.exit.i34.6.i
  %i.nb = sub nsw i32 2048, %i.mr
  %i.nc = lshr i32 %i.nb, 5
  %i.nd = add nuw nsw i32 %i.nc, %i.mr
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sink.i.i32.7.i = phi i32 [ %i.mt, %bb.bi ], [ %i.my, %bb.bh ] ; 3 uses
  %.0.i.i33.7.i = phi i32 [ %i.nd, %bb.bi ], [ %i.na, %bb.bh ]
  store i32 %.sink.i.i32.7.i, ptr %1, align 8, !tbaa !76
  %i.ne = trunc i32 %.0.i.i33.7.i to i16
  store i16 %i.ne, ptr %i.mp, align 2, !tbaa !23
  %i.nf = icmp ult i32 %.sink.i.i32.7.i, 16777216
  br i1 %i.nf, label %RcTree_Encode.exit.sink.split.i, label %LenEnc_Encode.exit

RcTree_Encode.exit.sink.split.i:                  ; preds = %bb.bj, %bb.ac, %bb.n
  %.sink.i.i32.7.sink.i = phi i32 [ %.sink.i.i24.2.i, %bb.ac ], [ %.sink.i.i.2.i, %bb.n ], [ %.sink.i.i32.7.i, %bb.bj ]
  %i.ng = shl nuw i32 %.sink.i.i32.7.sink.i, 8
  store i32 %i.ng, ptr %1, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %1)
  br label %LenEnc_Encode.exit

LenEnc_Encode.exit:                               ; preds = %bb.n, %bb.ac, %bb.bj, %RcTree_Encode.exit.sink.split.i
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %LenEnc_Encode.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 18440
  %i.ni = zext i32 %3 to i64
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.ni ; 2 uses
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !4
  %i.nl = add i32 %i.nk, -1                       ; 2 uses
  store i32 %i.nl, ptr %i.nj, align 4, !tbaa !4
  %i.nm = icmp eq i32 %i.nl, 0
  br i1 %i.nm, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  tail call fastcc void @LenPriceEnc_UpdateTable(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %5)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %LenEnc_Encode.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @RangeEnc_ShiftLow(ptr noundef captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75   ; 3 uses
  %i.c = and i64 %i.b, -16777216
  %or.cond = icmp eq i64 %i.c, 4278190080
  br i1 %or.cond, label %._crit_edge, label %.peel.begin

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !77
  %i.d = add i64 %.pre, 1
  br label %bb.j

.peel.begin:                                      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !79   ; 2 uses
  %1 = lshr i64 %i.b, 32
  %2 = trunc i64 %1 to i8
  %i.o = add i8 %i.f, %2
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 5 uses
  store i8 %i.o, ptr %i.n, align 1, !tbaa !21
  store ptr %i.p, ptr %i.g, align 8, !tbaa !79
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !111
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.b, label %RangeEnc_FlushStream.exit.peel

bb.b:                                             ; preds = %.peel.begin
  %i.s = load i32, ptr %i.i, align 8, !tbaa !81
  %.not.i.peel = icmp eq i32 %i.s, 0
  br i1 %.not.i.peel, label %bb.c, label %RangeEnc_FlushStream.exit.peel

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !71   ; 2 uses
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !201  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !194
  %i.z = tail call i64 %i.y(ptr noundef nonnull %i.x, ptr noundef %i.t, i64 noundef %i.w) #14, !inline_history !202
  %.not12.i.peel = icmp eq i64 %i.w, %i.z
  br i1 %.not12.i.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 9, ptr %i.i, align 8, !tbaa !81
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = load i64, ptr %i.l, align 8, !tbaa !80
  %i.ab = add i64 %i.aa, %i.w
  store i64 %i.ab, ptr %i.l, align 8, !tbaa !80
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !71  ; 2 uses
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !79
  br label %RangeEnc_FlushStream.exit.peel

RangeEnc_FlushStream.exit.peel:                   ; preds = %bb.e, %bb.b, %.peel.begin
  %i.ad = phi ptr [ %i.ac, %bb.e ], [ %i.p, %bb.b ], [ %i.p, %.peel.begin ]
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !77
  %i.af = add i64 %i.ae, -1                       ; 2 uses
  store i64 %i.af, ptr %i.m, align 8, !tbaa !77
  %.not18.peel = icmp eq i64 %i.af, 0
  br i1 %.not18.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %RangeEnc_FlushStream.exit.peel, %RangeEnc_FlushStream.exit
  %i.ag = phi ptr [ %i.ax, %RangeEnc_FlushStream.exit ], [ %i.ad, %RangeEnc_FlushStream.exit.peel ] ; 2 uses
  %3 = load i64, ptr %i.a, align 8, !tbaa !75
  %4 = lshr i64 %3, 32
  %i.ah = trunc i64 %4 to i8
  %i.ai = add i8 %i.ah, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 5 uses
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !21
  store ptr %i.aj, ptr %i.g, align 8, !tbaa !79
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !111
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.f, label %RangeEnc_FlushStream.exit

bb.f:                                             ; preds = %.peel.next
  %i.am = load i32, ptr %i.i, align 8, !tbaa !81
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.g, label %RangeEnc_FlushStream.exit

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !71  ; 2 uses
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !201 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !194
  %i.at = tail call i64 %i.as(ptr noundef nonnull %i.ar, ptr noundef %i.an, i64 noundef %i.aq) #14, !inline_history !202
  %.not12.i = icmp eq i64 %i.aq, %i.at
  br i1 %.not12.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 9, ptr %i.i, align 8, !tbaa !81
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = load i64, ptr %i.l, align 8, !tbaa !80
  %i.av = add i64 %i.au, %i.aq
  store i64 %i.av, ptr %i.l, align 8, !tbaa !80
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !71  ; 2 uses
  store ptr %i.aw, ptr %i.g, align 8, !tbaa !79
  br label %RangeEnc_FlushStream.exit

RangeEnc_FlushStream.exit:                        ; preds = %bb.i, %bb.f, %.peel.next
  %i.ax = phi ptr [ %i.aw, %bb.i ], [ %i.aj, %bb.f ], [ %i.aj, %.peel.next ]
  %i.ay = load i64, ptr %i.m, align 8, !tbaa !77
  %i.az = add i64 %i.ay, -1                       ; 2 uses
  store i64 %i.az, ptr %i.m, align 8, !tbaa !77
  %.not18 = icmp eq i64 %i.az, 0
  br i1 %.not18, label %.loopexit, label %.peel.next, !llvm.loop !203

.loopexit:                                        ; preds = %RangeEnc_FlushStream.exit, %RangeEnc_FlushStream.exit.peel
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !75  ; 2 uses
  %i.bb = lshr i64 %i.ba, 24
  %i.bc = trunc i64 %i.bb to i8
  store i8 %i.bc, ptr %i.e, align 4, !tbaa !78
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %.loopexit
  %i.bd = phi i64 [ %i.b, %._crit_edge ], [ %i.ba, %.loopexit ]
  %i.be = phi i64 [ %i.d, %._crit_edge ], [ 1, %.loopexit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !77
  %i.bg = shl i64 %i.bd, 8
  %i.bh = and i64 %i.bg, 4294967040
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !75
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i32 @LitEnc_GetPriceMatched(ptr noundef readonly captures(none) %0, i32 noundef range(i32 0, 256) %1, i32 noundef range(i32 0, 256) %2, ptr noundef readonly captures(none) %3) unnamed_addr #10 {
bb.a:
  %i.a = or disjoint i32 %1, 256
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.017 = phi i32 [ %2, %bb.a ], [ %i.b, %bb.b ]
  %.016 = phi i32 [ %i.a, %bb.a ], [ %i.q, %bb.b ] ; 4 uses
  %.015 = phi i32 [ 0, %bb.a ], [ %i.p, %bb.b ]
  %.0 = phi i32 [ 256, %bb.a ], [ %i.t, %bb.b ]   ; 3 uses
  %i.b = shl i32 %.017, 1                         ; 3 uses
  %i.c = and i32 %.0, %i.b
  %i.d = lshr i32 %.016, 8
  %i.e = add nuw nsw i32 %.0, %i.d
  %i.f = add nuw nsw i32 %i.e, %i.c
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !23
  %i.j = zext i16 %i.i to i64
  %.mask = and i32 %.016, 128
  %isneg.not = icmp eq i32 %.mask, 0
  %i.k = select i1 %isneg.not, i64 0, i64 2032
  %i.l = xor i64 %i.k, %i.j
  %i.m = lshr i64 %i.l, 4
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = add i32 %i.o, %.015                      ; 2 uses
  %i.q = shl nuw nsw i32 %.016, 1                 ; 2 uses
  %i.r = xor i32 %i.b, %i.q
  %i.s = xor i32 %i.r, -1
  %i.t = and i32 %.0, %i.s
  %i.u = icmp samesign ult i32 %.016, 32768
  br i1 %i.u, label %bb.b, label %bb.c, !llvm.loop !168

bb.c:                                             ; preds = %bb.b
  ret i32 %i.p
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

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
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_CLzmaEncProps", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44}
!10 = !{!9, !5, i64 36}
!11 = !{!9, !5, i64 4}
!12 = !{!9, !5, i64 44}
!13 = !{!9, !5, i64 40}
!14 = !{!9, !5, i64 8}
!15 = !{!9, !5, i64 12}
!16 = !{!9, !5, i64 16}
!17 = !{!9, !5, i64 20}
!18 = !{!9, !5, i64 24}
!19 = !{!9, !5, i64 28}
!20 = !{!9, !5, i64 32}
!21 = !{!6, !6, i64 0}
!22 = !{i64 0, i64 2, !23, i64 2, i64 2, !23, i64 4, i64 256, !21, i64 260, i64 256, !21, i64 516, i64 512, !21, i64 1028, i64 17408, !21, i64 18436, i64 4, !4, i64 18440, i64 64, !21}
!23 = !{!24, !24, i64 0}
!24 = !{!"short", !6, i64 0}
!25 = !{!26, !5, i64 210408}
!26 = !{!"", !27, i64 0, !28, i64 48, !5, i64 56, !29, i64 64, !39, i64 1560, !6, i64 2728, !5, i64 2856, !5, i64 2860, !5, i64 2864, !5, i64 2868, !5, i64 2872, !6, i64 2876, !6, i64 199484, !6, i64 207676, !6, i64 208188, !5, i64 210384, !5, i64 210388, !6, i64 210392, !5, i64 210408, !6, i64 210412, !6, i64 211436, !6, i64 213484, !5, i64 213548, !5, i64 213552, !5, i64 213556, !5, i64 213560, !5, i64 213564, !5, i64 213568, !5, i64 213572, !40, i64 213576, !6, i64 213584, !6, i64 213968, !6, i64 213992, !6, i64 214016, !6, i64 214040, !6, i64 214064, !6, i64 214448, !6, i64 214960, !6, i64 215188, !41, i64 215220, !41, i64 233724, !5, i64 252228, !5, i64 252232, !43, i64 252240, !5, i64 252312, !44, i64 252320, !5, i64 252328, !5, i64 252332, !5, i64 252336, !5, i64 252340, !5, i64 252344, !5, i64 252348, !5, i64 252352, !45, i64 252360}
!27 = !{!"_IMatchFinder", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40}
!28 = !{!"any pointer", !6, i64 0}
!29 = !{!"_CMatchFinderMt", !30, i64 0, !31, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !31, i64 32, !5, i64 40, !5, i64 44, !31, i64 48, !28, i64 56, !32, i64 64, !6, i64 672, !31, i64 800, !5, i64 808, !5, i64 812, !5, i64 816, !31, i64 824, !5, i64 832, !5, i64 836, !5, i64 840, !30, i64 848, !5, i64 856, !5, i64 860, !5, i64 864, !32, i64 872, !28, i64 1480, !38, i64 1488}
!30 = !{!"p1 omnipotent char", !28, i64 0}
!31 = !{!"p1 int", !28, i64 0}
!32 = !{!"_CMtSync", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !33, i64 16, !35, i64 32, !35, i64 136, !35, i64 240, !36, i64 344, !36, i64 448, !5, i64 552, !5, i64 556, !37, i64 560, !5, i64 600}
!33 = !{!"_CThread", !34, i64 0, !5, i64 8}
!34 = !{!"long", !6, i64 0}
!35 = !{!"_CEvent", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 16, !6, i64 56}
!36 = !{!"_CSemaphore", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 16, !6, i64 56}
!37 = !{!"", !6, i64 0}
!38 = !{!"p1 _ZTS13_CMatchFinder", !28, i64 0}
!39 = !{!"_CMatchFinder", !30, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !31, i64 40, !31, i64 48, !5, i64 56, !5, i64 60, !30, i64 64, !28, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !34, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !6, i64 140}
!40 = !{!"p1 short", !28, i64 0}
!41 = !{!"", !42, i64 0, !6, i64 1028, !5, i64 18436, !6, i64 18440}
!42 = !{!"", !24, i64 0, !24, i64 2, !6, i64 4, !6, i64 260, !6, i64 516}
!43 = !{!"", !5, i64 0, !6, i64 4, !44, i64 8, !44, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !28, i64 48, !44, i64 56, !5, i64 64}
!44 = !{!"long long", !6, i64 0}
!45 = !{!"", !40, i64 0, !6, i64 8, !6, i64 392, !6, i64 416, !6, i64 440, !6, i64 464, !6, i64 488, !6, i64 872, !6, i64 1384, !6, i64 1612, !41, i64 1644, !41, i64 20148, !6, i64 38652, !5, i64 38668}
!46 = !{!45, !5, i64 38668}
!47 = !{!45, !40, i64 0}
!48 = !{!26, !40, i64 213576}
!49 = !{!26, !5, i64 252228}
!50 = !{!26, !5, i64 252344}
!51 = !{!26, !5, i64 252348}
!52 = !{!26, !5, i64 210384}
!53 = !{!26, !5, i64 213556}
!54 = !{!26, !5, i64 213560}
!55 = !{!26, !5, i64 213564}
!56 = !{!26, !5, i64 252232}
!57 = !{!26, !5, i64 1672}
!58 = !{!26, !5, i64 1656}
!59 = !{!26, !5, i64 1620}
!60 = !{!26, !5, i64 252312}
end_hunk_0
