inline.NumInlined: 12826
inline.NumDeleted: 1652
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2v88internal12StringHasher20HashSequentialStringIhEEjPKT_jNS0_8HashSeedE:bb.a
  %i.ej = or disjoint i64 %i.eh, %i.ei
  %i.ek = and i64 %i.dp, 24
  %i.el = lshr i64 %i.dp, 3
  %i.em = lshr exact i64 %i.ek, %i.el             ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %i.em
  %.0.copyload.i54 = load i32, ptr %i.en, align 1
  %i.eo = zext i32 %.0.copyload.i54 to i64
  %i.ep = shl nuw i64 %i.eo, 32
  %i.eq = sub nsw i64 0, %i.em
  %i.er = getelementptr inbounds i8, ptr %i.ef, i64 %i.eq
  %.0.copyload.i55 = load i32, ptr %i.er, align 1
  %i.es = zext i32 %.0.copyload.i55 to i64
  %i.et = or disjoint i64 %i.ep, %i.es
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.o:                                             ; preds = %bb.m
  br i1 %.not, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, label %bb.p, !prof !5

bb.p:                                             ; preds = %bb.o
  %i.eu = load i8, ptr %0, align 1
  %i.ev = zext i8 %i.eu to i64
  %i.ew = shl nuw i64 %i.ev, 56
  %i.ex = lshr i64 %i.dp, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = zext i8 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 32
  %i.fc = or disjoint i64 %i.fb, %i.ew
  %i.fd = getelementptr i8, ptr %0, i64 %i.dp
  %i.fe = getelementptr i8, ptr %i.fd, i64 -1
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = zext i8 %i.ff to i64
  %i.fh = or disjoint i64 %i.fc, %i.fg
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.q:                                             ; preds = %.thread128
  %i.fi = icmp ugt i32 %1, 48
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fk = load i64, ptr %i.fj, align 8            ; 3 uses
  br i1 %i.fi, label %.preheader, label %.thread131, !prof !5

.preheader:                                       ; preds = %bb.q, %.preheader
  %.065.i = phi i64 [ %i.ft, %.preheader ], [ %i.eb, %bb.q ]
  %.063.i = phi ptr [ %i.go, %.preheader ], [ %0, %bb.q ] ; 7 uses
  %.062.i = phi i64 [ %i.gp, %.preheader ], [ %i.dp, %bb.q ]
  %.061.i = phi i64 [ %i.gd, %.preheader ], [ %i.eb, %bb.q ]
  %.0.i = phi i64 [ %i.gn, %.preheader ], [ %i.eb, %bb.q ]
  %.0.copyload.i56 = load i64, ptr %.063.i, align 1
  %i.fl = xor i64 %.0.copyload.i56, %i.dq
  %i.fm = getelementptr inbounds nuw i8, ptr %.063.i, i64 8
  %.0.copyload.i57 = load i64, ptr %i.fm, align 1
  %i.fn = xor i64 %.0.copyload.i57, %.065.i
  %i.fo = zext i64 %i.fl to i128
  %i.fp = zext i64 %i.fn to i128
  %i.fq = mul nuw i128 %i.fp, %i.fo               ; 2 uses
  %i.fr = lshr i128 %i.fq, 64
  %i.fs = xor i128 %i.fr, %i.fq
  %i.ft = trunc i128 %i.fs to i64                 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.063.i, i64 16
  %.0.copyload.i58 = load i64, ptr %i.fu, align 1
  %i.fv = xor i64 %.0.copyload.i58, %i.dt
  %i.fw = getelementptr inbounds nuw i8, ptr %.063.i, i64 24
  %.0.copyload.i59 = load i64, ptr %i.fw, align 1
  %i.fx = xor i64 %.0.copyload.i59, %.061.i
  %i.fy = zext i64 %i.fv to i128
  %i.fz = zext i64 %i.fx to i128
  %i.ga = mul nuw i128 %i.fz, %i.fy               ; 2 uses
  %i.gb = lshr i128 %i.ga, 64
  %i.gc = xor i128 %i.gb, %i.ga
  %i.gd = trunc i128 %i.gc to i64                 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.063.i, i64 32
  %.0.copyload.i60 = load i64, ptr %i.ge, align 1
  %i.gf = xor i64 %i.fk, %.0.copyload.i60
  %i.gg = getelementptr inbounds nuw i8, ptr %.063.i, i64 40
  %.0.copyload.i61 = load i64, ptr %i.gg, align 1
  %i.gh = xor i64 %.0.copyload.i61, %.0.i
  %i.gi = zext i64 %i.gf to i128
  %i.gj = zext i64 %i.gh to i128
  %i.gk = mul nuw i128 %i.gj, %i.gi               ; 2 uses
  %i.gl = lshr i128 %i.gk, 64
  %i.gm = xor i128 %i.gl, %i.gk
  %i.gn = trunc i128 %i.gm to i64                 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.063.i, i64 48 ; 3 uses
  %i.gp = add i64 %.062.i, -48                    ; 5 uses
  %i.gq = icmp ugt i64 %i.gp, 47
  br i1 %i.gq, label %.preheader, label %bb.r, !prof !9, !llvm.loop !54

bb.r:                                             ; preds = %.preheader
  %i.gr = xor i64 %i.gd, %i.ft
  %i.gs = xor i64 %i.gr, %i.gn                    ; 2 uses
  %i.gt = icmp samesign ugt i64 %i.gp, 16
  br i1 %i.gt, label %.thread131, label %bb.t

.thread131:                                       ; preds = %bb.q, %bb.r
  %.1.i139 = phi i64 [ %i.gp, %bb.r ], [ %i.dp, %bb.q ] ; 3 uses
  %.164.i137 = phi ptr [ %i.go, %bb.r ], [ %0, %bb.q ] ; 6 uses
  %.166.i135 = phi i64 [ %i.gs, %bb.r ], [ %i.eb, %bb.q ]
  %.0.copyload.i62 = load i64, ptr %.164.i137, align 1
  %i.gu = xor i64 %i.fk, %.0.copyload.i62
  %i.gv = getelementptr inbounds nuw i8, ptr %.164.i137, i64 8
  %.0.copyload.i63 = load i64, ptr %i.gv, align 1
  %i.gw = xor i64 %.166.i135, %.0.copyload.i63
  %i.gx = xor i64 %i.gw, %i.dt
  %i.gy = zext i64 %i.gu to i128
  %i.gz = zext i64 %i.gx to i128
  %i.ha = mul nuw i128 %i.gz, %i.gy               ; 2 uses
  %i.hb = lshr i128 %i.ha, 64
  %i.hc = xor i128 %i.hb, %i.ha
  %i.hd = trunc i128 %i.hc to i64                 ; 2 uses
  %i.he = icmp samesign ugt i64 %.1.i139, 32
  br i1 %i.he, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread131
  %i.hf = getelementptr inbounds nuw i8, ptr %.164.i137, i64 16
  %.0.copyload.i64 = load i64, ptr %i.hf, align 1
  %i.hg = xor i64 %.0.copyload.i64, %i.fk
  %i.hh = getelementptr inbounds nuw i8, ptr %.164.i137, i64 24
  %.0.copyload.i65 = load i64, ptr %i.hh, align 1
  %i.hi = xor i64 %.0.copyload.i65, %i.hd
  %i.hj = zext i64 %i.hg to i128
  %i.hk = zext i64 %i.hi to i128
  %i.hl = mul nuw i128 %i.hk, %i.hj               ; 2 uses
  %i.hm = lshr i128 %i.hl, 64
  %i.hn = xor i128 %i.hm, %i.hl
  %i.ho = trunc i128 %i.hn to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread131, %bb.r
  %.1.i138 = phi i64 [ %.1.i139, %bb.s ], [ %.1.i139, %.thread131 ], [ %i.gp, %bb.r ]
  %.164.i136 = phi ptr [ %.164.i137, %bb.s ], [ %.164.i137, %.thread131 ], [ %i.go, %bb.r ]
  %.2.i24 = phi i64 [ %i.ho, %bb.s ], [ %i.hd, %.thread131 ], [ %i.gs, %bb.r ]
  %i.hp = getelementptr i8, ptr %.164.i136, i64 %.1.i138 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 -16
  %.0.copyload.i66 = load i64, ptr %i.hq, align 1
  %i.hr = getelementptr i8, ptr %i.hp, i64 -8
  %.0.copyload.i67 = load i64, ptr %i.hr, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit:    ; preds = %bb.o, %bb.n, %bb.p, %bb.t
  %.0103 = phi i64 [ %i.et, %bb.n ], [ %.0.copyload.i67, %bb.t ], [ 0, %bb.p ], [ 0, %bb.o ]
  %.0102 = phi i64 [ %i.ej, %bb.n ], [ %.0.copyload.i66, %bb.t ], [ %i.fh, %bb.p ], [ 0, %bb.o ]
  %.3.i = phi i64 [ %i.eb, %bb.n ], [ %.2.i24, %bb.t ], [ %i.eb, %bb.p ], [ %i.eb, %bb.o ]
  %i.hs = xor i64 %.0102, %i.dt
  %i.ht = xor i64 %.3.i, %.0103
  %i.hu = zext i64 %i.hs to i128
  %i.hv = zext i64 %i.ht to i128
  %i.hw = mul nuw i128 %i.hv, %i.hu               ; 2 uses
  %i.hx = trunc i128 %i.hw to i64
  %i.hy = lshr i128 %i.hw, 64
  %i.hz = xor i64 %i.dp, %i.hx
  %i.ia = xor i64 %i.hz, %i.dq
  %i.ib = zext i64 %i.ia to i128
  %i.ic = xor i128 %i.hy, %i.dv
  %i.id = mul nuw i128 %i.ic, %i.ib               ; 2 uses
  %i.ie = lshr i128 %i.id, 64
  %i.if = xor i128 %i.ie, %i.id
  %i.ig = trunc i128 %i.if to i32
  %i.ih = and i32 %i.ig, 1073741823               ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 0
  %i.ij = shl nuw i32 %i.ih, 2
  %i.ik = or disjoint i32 %i.ij, 2
  %i.il = select i1 %i.ii, i32 110, i32 %i.ik
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, %bb.l
  %.1 = phi i32 [ %i.il, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit ], [ %i.dm, %bb.l ], [ %spec.select, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36 ], [ %i.an, %._crit_edge.thread ]
  ret i32 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal19SequentialStringKeyIhED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringItEEjPKT_jNS0_8HashSeedE(ptr noundef %0, i32 noundef %1, ptr %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.thread133.thread206, label %bb.b

.thread133.thread206:                             ; preds = %bb.a
  %i.a = load i64, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %._crit_edge168

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %1, 17
  br i1 %i.c, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.d = load i16, ptr %0, align 2                ; 3 uses
  %i.e = zext i16 %i.d to i64
  %i.f = add nsw i64 %i.e, -48                    ; 5 uses
  %i.g = icmp ugt i64 %i.f, 9
  %i.h = lshr i16 %i.d, 8
  %i.i = zext nneg i16 %i.h to i64
  br i1 %i.g, label %.lr.ph167.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not147 = icmp eq i32 %1, 1
  br i1 %.not147, label %._crit_edge.thread, label %.lr.ph167.preheader

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %1, 10
  br i1 %i.k, label %.lr.ph162, label %.preheader148

.preheader148:                                    ; preds = %bb.f
  %.not169 = icmp eq i32 %1, 1
  br i1 %.not169, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader148
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.096157 = phi i64 [ %i.f, %.lr.ph.preheader ], [ %i.s, %bb.g ]
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %i.p = icmp ugt i32 %i.o, 9
  br i1 %i.p, label %.lr.ph167.preheader, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.q = mul i64 %.096157, 10
  %i.r = zext nneg i32 %i.o to i64
  %i.s = add i64 %i.q, %i.r                       ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.g
  %i.t = icmp ugt i64 %i.s, 4294967294
  br i1 %i.t, label %._crit_edge163, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader148, %bb.e, %._crit_edge
  %.2.ph = phi i64 [ %i.s, %._crit_edge ], [ 0, %bb.e ], [ %i.f, %.preheader148 ]
  %i.u = trunc nuw i64 %.2.ph to i32              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = lshr i32 %i.u, 12
  %i.ac = xor i32 %i.ab, %i.u
  %i.ad = mul i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 12
  %i.af = and i32 %i.ae, 4095
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = mul i32 %i.ag, %i.y                     ; 2 uses
  %i.ai = lshr i32 %i.ah, 12
  %i.aj = and i32 %i.ai, 4095
  %i.ak = xor i32 %i.aj, %i.ah
  %i.al = mul i32 %i.ak, %i.aa
  %i.am = and i32 %i.al, 16777215                 ; 2 uses
  %i.an = lshr i32 %i.am, 12
  %i.ao = xor i32 %i.an, %i.am
  %i.ap = shl nuw nsw i32 %i.ao, 2
  %i.aq = shl nuw nsw i32 %1, 26
  %i.ar = or disjoint i32 %i.ap, %i.aq
  br label %bb.z

.lr.ph162:                                        ; preds = %bb.f, %bb.h
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.013.i160 = phi i64 [ %i.az, %bb.h ], [ %i.f, %bb.f ]
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv180
  %i.at = load i16, ptr %i.as, align 2
  %i.au = zext i16 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.h, label %.lr.ph167.preheader

bb.h:                                             ; preds = %.lr.ph162
  %i.ax = mul i64 %.013.i160, 10
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = add i64 %i.ax, %i.ay                    ; 2 uses
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next181 to i32
  %exitcond183.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond183.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !56

._crit_edge163:                                   ; preds = %bb.h, %._crit_edge
  %.013.i.lcssa = phi i64 [ %i.s, %._crit_edge ], [ %i.az, %bb.h ]
  %i.ba = icmp ugt i64 %.013.i.lcssa, 9007199254740991
  br i1 %i.ba, label %.lr.ph167.preheader, label %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit

_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit: ; preds = %._crit_edge163
  %i.bb = load i64, ptr %2, align 8               ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count187 = zext nneg i32 %1 to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %bb.k, label %bb.j, !llvm.loop !57

bb.j:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit, %bb.i
  %indvars.iv184 = phi i64 [ 0, %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit ], [ %indvars.iv.next185, %bb.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv184
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = icmp ugt i16 %i.be, 255
  br i1 %i.bf, label %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41, label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.bg = tail call noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.bb, ptr noundef nonnull %i.bc) #15
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit

_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41:   ; preds = %bb.j
  %i.bh = shl nuw nsw i32 %1, 1
  %i.bi = zext nneg i32 %i.bh to i64              ; 7 uses
  %i.bj = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.bk = xor i64 %i.bj, %i.bb
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = load i64, ptr %i.bl, align 8            ; 3 uses
  %i.bn = zext i64 %i.bk to i128
  %i.bo = zext i64 %i.bm to i128                  ; 2 uses
  %i.bp = mul nuw i128 %i.bo, %i.bn               ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = xor i128 %i.bq, %i.bp
  %i.bs = trunc i128 %i.br to i64
  %i.bt = xor i64 %i.bi, %i.bs
  %i.bu = xor i64 %i.bt, %i.bb                    ; 3 uses
  %i.bv = icmp ult i32 %1, 9
  br i1 %i.bv, label %bb.l, label %.thread, !prof !9

bb.l:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41
  %.not146 = icmp eq i32 %1, 1
  br i1 %.not146, label %bb.n, label %bb.m, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr i8, ptr %0, i64 %i.bi
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4     ; 2 uses
  %.0.copyload.i = load i32, ptr %0, align 2
  %i.by = zext i32 %.0.copyload.i to i64
  %i.bz = shl nuw i64 %i.by, 32
  %.0.copyload.i42 = load i32, ptr %i.bx, align 1
  %i.ca = zext i32 %.0.copyload.i42 to i64
  %i.cb = or disjoint i64 %i.bz, %i.ca
  %i.cc = and i64 %i.bi, 24
  %i.cd = lshr i64 %i.bi, 3
  %i.ce = lshr exact i64 %i.cc, %i.cd             ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %.0.copyload.i43 = load i32, ptr %i.cf, align 1
  %i.cg = zext i32 %.0.copyload.i43 to i64
  %i.ch = shl nuw i64 %i.cg, 32
  %i.ci = sub nsw i64 0, %i.ce
  %i.cj = getelementptr inbounds i8, ptr %i.bx, i64 %i.ci
  %.0.copyload.i44 = load i32, ptr %i.cj, align 1
  %i.ck = zext i32 %.0.copyload.i44 to i64
  %i.cl = or disjoint i64 %i.ch, %i.ck
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cm = and i16 %i.d, 255
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = shl nuw i64 %i.cn, 56
  %i.cp = shl nuw nsw i64 %i.i, 32
  %i.cq = or disjoint i64 %i.cp, %i.co
  %3 = getelementptr i8, ptr %0, i64 %i.bi
  %4 = getelementptr i8, ptr %3, i64 -1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i64
  %i.cr = or disjoint i64 %i.cq, %6
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

.thread:                                          ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41
  %.0.copyload.i51 = load i64, ptr %0, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = xor i64 %i.ct, %.0.copyload.i51
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i52 = load i64, ptr %i.cv, align 2
  %i.cw = xor i64 %i.bm, %.0.copyload.i52
  %i.cx = xor i64 %i.cw, %i.bu
  %i.cy = zext i64 %i.cu to i128
  %i.cz = zext i64 %i.cx to i128
  %i.da = mul nuw i128 %i.cz, %i.cy               ; 2 uses
  %i.db = lshr i128 %i.da, 64
  %i.dc = xor i128 %i.db, %i.da
  %i.dd = trunc i128 %i.dc to i64
  %i.de = getelementptr i8, ptr %0, i64 %i.bi     ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 -16
  %.0.copyload.i55 = load i64, ptr %i.df, align 1
  %i.dg = getelementptr i8, ptr %i.de, i64 -8
  %.0.copyload.i56 = load i64, ptr %i.dg, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i:  ; preds = %.thread, %bb.n, %bb.m
  %.0108 = phi i64 [ %i.cl, %bb.m ], [ %.0.copyload.i56, %.thread ], [ 0, %bb.n ]
  %.0107 = phi i64 [ %i.cb, %bb.m ], [ %.0.copyload.i55, %.thread ], [ %i.cr, %bb.n ]
  %.3.i.i = phi i64 [ %i.bu, %bb.m ], [ %i.dd, %.thread ], [ %i.bu, %bb.n ]
  %i.dh = xor i64 %.0107, %i.bm
  %i.di = xor i64 %.3.i.i, %.0108
  %i.dj = zext i64 %i.dh to i128
  %i.dk = zext i64 %i.di to i128
  %i.dl = mul nuw i128 %i.dk, %i.dj               ; 2 uses
  %i.dm = trunc i128 %i.dl to i64
  %i.dn = lshr i128 %i.dl, 64
  %i.do = xor i64 %i.bi, %i.dm
  %i.dp = xor i64 %i.do, %i.bj
  %i.dq = zext i64 %i.dp to i128
  %i.dr = xor i128 %i.dn, %i.bo
  %i.ds = mul nuw i128 %i.dr, %i.dq               ; 2 uses
  %i.dt = lshr i128 %i.ds, 64
  %i.du = xor i128 %i.dt, %i.ds
  %i.dv = trunc i128 %i.du to i64
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit

_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit: ; preds = %bb.k, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i
  %.0.i = phi i64 [ %i.bg, %bb.k ], [ %i.dv, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i ]
  %i.dw = trunc i64 %.0.i to i32
  %i.dx = and i32 %i.dw, 1073741823               ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 0
  %i.dz = shl nuw i32 %i.dx, 2
  %i.ea = select i1 %i.dy, i32 108, i32 %i.dz     ; 3 uses
  %i.eb = icmp ult i32 %i.ea, 536870912
  %i.ec = or i32 %i.ea, 536870912
  %spec.select = select i1 %i.eb, i32 %i.ec, i32 %i.ea
  br label %bb.z

bb.o:                                             ; preds = %bb.b
  %i.ed = icmp ugt i32 %1, 16383
  br i1 %i.ed, label %bb.p, label %.lr.ph167.preheader

bb.p:                                             ; preds = %bb.o
  %i.ee = shl i32 %1, 2
  %i.ef = or disjoint i32 %i.ee, 2
  br label %bb.z

.lr.ph167.preheader:                              ; preds = %.lr.ph, %.lr.ph162, %._crit_edge163, %bb.o, %bb.c, %bb.e
  %i.eg = load i64, ptr %2, align 8               ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count192 = zext i32 %1 to i64
  br label %.lr.ph167

bb.q:                                             ; preds = %.lr.ph167
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge168, label %.lr.ph167, !llvm.loop !57

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %bb.q
  %indvars.iv189 = phi i64 [ 0, %.lr.ph167.preheader ], [ %indvars.iv.next190, %bb.q ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv189
  %i.ej = load i16, ptr %i.ei, align 2
  %i.ek = icmp ugt i16 %i.ej, 255
  br i1 %i.ek, label %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit, label %bb.q

._crit_edge168:                                   ; preds = %bb.q, %.thread133.thread206
  %i.el = phi ptr [ %i.b, %.thread133.thread206 ], [ %i.eh, %bb.q ]
  %i.em = phi i64 [ %i.a, %.thread133.thread206 ], [ %i.eg, %bb.q ]
  %i.en = tail call noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef %0, i32 noundef %1, i64 noundef %i.em, ptr noundef nonnull %i.el) #15
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37

_ZN2v88internal6detail10IsOnly8BitEPKtj.exit:     ; preds = %.lr.ph167
  %i.eo = shl i32 %1, 1                           ; 5 uses
  %i.ep = zext i32 %i.eo to i64                   ; 9 uses
  %i.eq = load i64, ptr %i.eh, align 8            ; 3 uses
  %i.er = xor i64 %i.eq, %i.eg
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.et = load i64, ptr %i.es, align 8            ; 4 uses
  %i.eu = zext i64 %i.er to i128
  %i.ev = zext i64 %i.et to i128                  ; 2 uses
  %i.ew = mul nuw i128 %i.ev, %i.eu               ; 2 uses
  %i.ex = lshr i128 %i.ew, 64
  %i.ey = xor i128 %i.ex, %i.ew
  %i.ez = trunc i128 %i.ey to i64
  %i.fa = xor i64 %i.ep, %i.ez
  %i.fb = xor i64 %i.fa, %i.eg                    ; 7 uses
  %i.fc = icmp ult i32 %i.eo, 17
  br i1 %i.fc, label %bb.r, label %bb.v, !prof !9

bb.r:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.fd = icmp samesign ugt i32 %i.eo, 3
  br i1 %i.fd, label %bb.s, label %bb.t, !prof !9

bb.s:                                             ; preds = %bb.r
  %i.fe = getelementptr i8, ptr %0, i64 %i.ep
  %i.ff = getelementptr i8, ptr %i.fe, i64 -4     ; 2 uses
  %.0.copyload.i57 = load i32, ptr %0, align 1
  %i.fg = zext i32 %.0.copyload.i57 to i64
  %i.fh = shl nuw i64 %i.fg, 32
  %.0.copyload.i58 = load i32, ptr %i.ff, align 1
  %i.fi = zext i32 %.0.copyload.i58 to i64
  %i.fj = or disjoint i64 %i.fh, %i.fi
  %i.fk = and i64 %i.ep, 24
  %i.fl = lshr i64 %i.ep, 3
  %i.fm = lshr exact i64 %i.fk, %i.fl             ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 %i.fm
  %.0.copyload.i59 = load i32, ptr %i.fn, align 1
  %i.fo = zext i32 %.0.copyload.i59 to i64
  %i.fp = shl nuw i64 %i.fo, 32
  %i.fq = sub nsw i64 0, %i.fm
  %i.fr = getelementptr inbounds i8, ptr %i.ff, i64 %i.fq
  %.0.copyload.i60 = load i32, ptr %i.fr, align 1
  %i.fs = zext i32 %.0.copyload.i60 to i64
  %i.ft = or disjoint i64 %i.fp, %i.fs
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.t:                                             ; preds = %bb.r
  %.not.i.i36 = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i36, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28, label %bb.u, !prof !5

bb.u:                                             ; preds = %bb.t
  %i.fu = load i8, ptr %0, align 1
  %i.fv = zext i8 %i.fu to i64
  %i.fw = shl nuw i64 %i.fv, 56
  %i.fx = lshr exact i64 %i.ep, 1
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = zext i8 %i.fz to i64
  %i.gb = shl nuw nsw i64 %i.ga, 32
  %i.gc = or disjoint i64 %i.gb, %i.fw
  %i.gd = getelementptr i8, ptr %0, i64 %i.ep
  %i.ge = getelementptr i8, ptr %i.gd, i64 -1
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = zext i8 %i.gf to i64
  %i.gh = or disjoint i64 %i.gc, %i.gg
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.v:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.gi = icmp ugt i32 %i.eo, 48
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gk = load i64, ptr %i.gj, align 8            ; 3 uses
  br i1 %i.gi, label %.preheader, label %.thread137, !prof !5

.preheader:                                       ; preds = %bb.v, %.preheader
  %.065.i.i31 = phi i64 [ %i.gt, %.preheader ], [ %i.fb, %bb.v ]
  %.063.i.i32 = phi ptr [ %i.ho, %.preheader ], [ %0, %bb.v ] ; 7 uses
  %.062.i.i33 = phi i64 [ %i.hp, %.preheader ], [ %i.ep, %bb.v ]
  %.061.i.i34 = phi i64 [ %i.hd, %.preheader ], [ %i.fb, %bb.v ]
  %.0.i.i35 = phi i64 [ %i.hn, %.preheader ], [ %i.fb, %bb.v ]
  %.0.copyload.i61 = load i64, ptr %.063.i.i32, align 1
  %i.gl = xor i64 %.0.copyload.i61, %i.eq
  %i.gm = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 8
  %.0.copyload.i62 = load i64, ptr %i.gm, align 1
  %i.gn = xor i64 %.0.copyload.i62, %.065.i.i31
  %i.go = zext i64 %i.gl to i128
  %i.gp = zext i64 %i.gn to i128
  %i.gq = mul nuw i128 %i.gp, %i.go               ; 2 uses
  %i.gr = lshr i128 %i.gq, 64
  %i.gs = xor i128 %i.gr, %i.gq
  %i.gt = trunc i128 %i.gs to i64                 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 16
  %.0.copyload.i63 = load i64, ptr %i.gu, align 1
  %i.gv = xor i64 %.0.copyload.i63, %i.et
  %i.gw = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 24
  %.0.copyload.i64 = load i64, ptr %i.gw, align 1
  %i.gx = xor i64 %.0.copyload.i64, %.061.i.i34
  %i.gy = zext i64 %i.gv to i128
  %i.gz = zext i64 %i.gx to i128
  %i.ha = mul nuw i128 %i.gz, %i.gy               ; 2 uses
  %i.hb = lshr i128 %i.ha, 64
  %i.hc = xor i128 %i.hb, %i.ha
  %i.hd = trunc i128 %i.hc to i64                 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 32
  %.0.copyload.i65 = load i64, ptr %i.he, align 1
  %i.hf = xor i64 %i.gk, %.0.copyload.i65
  %i.hg = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 40
  %.0.copyload.i66 = load i64, ptr %i.hg, align 1
  %i.hh = xor i64 %.0.copyload.i66, %.0.i.i35
  %i.hi = zext i64 %i.hf to i128
  %i.hj = zext i64 %i.hh to i128
  %i.hk = mul nuw i128 %i.hj, %i.hi               ; 2 uses
end_hunk_0
