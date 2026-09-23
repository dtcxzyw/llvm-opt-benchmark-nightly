Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zstd_lazy?download=true
inline.NumInlined: 1254
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 169
begin_hunk_0_@_ZN11duckdb_zstdL32ZSTD_RowFindBestMatch_noDict_4_4EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph27
  %indvars.iv48.unr = phi i64 [ %i.cb, %.lr.ph27 ], [ %indvars.iv.next49.prol, %.prol.loopexit.unr-lcssa ]
  %i.db = icmp eq i32 %i.ck, 1
  br i1 %i.db, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph27.new

.lr.ph27.new:                                     ; preds = %.prol.loopexit, %.lr.ph27.new
  %indvars.iv48 = phi i64 [ %indvars.iv.next49.1, %.lr.ph27.new ], [ %indvars.iv48.unr, %.prol.loopexit ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv48
  %.val6 = load i32, ptr %i.dc, align 1, !tbaa !23
  %i.dd = mul i32 %.val6, -1640531535
  %i.de = xor i32 %i.dd, %i.co
  %i.df = lshr i32 %i.de, %i.cp                   ; 2 uses
  %i.dg = lshr i32 %i.df, 4
  %i.dh = and i32 %i.dg, 268435440
  %i.di = zext nneg i32 %i.dh to i64              ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.di
  tail call void @llvm.prefetch.p0(ptr %i.dj, i32 0, i32 3, i32 1)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.di
  tail call void @llvm.prefetch.p0(ptr %i.dk, i32 0, i32 3, i32 1)
  %i.dl = and i64 %indvars.iv48, 7
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dl
  store i32 %i.df, ptr %i.dm, align 4, !tbaa !23
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next49
  %.val6.1 = load i32, ptr %i.dn, align 1, !tbaa !23
  %i.do = mul i32 %.val6.1, -1640531535
  %i.dp = xor i32 %i.do, %i.co
  %i.dq = lshr i32 %i.dp, %i.cp                   ; 2 uses
  %i.dr = lshr i32 %i.dq, 4
  %i.ds = and i32 %i.dr, 268435440
  %i.dt = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.dt
  tail call void @llvm.prefetch.p0(ptr %i.du, i32 0, i32 3, i32 1)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.dt
  tail call void @llvm.prefetch.p0(ptr %i.dv, i32 0, i32 3, i32 1)
  %i.dw = and i64 %indvars.iv.next49, 7
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dw
  store i32 %i.dq, ptr %i.dx, align 4, !tbaa !23
  %indvars.iv.next49.1 = add nuw nsw i64 %indvars.iv48, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next49.1 to i32
  %exitcond51.not.1 = icmp eq i32 %i.cl, %lftr.wideiv.1
  br i1 %exitcond51.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph27.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph27.new, %bb.f, %bb.b
  %i.dy = phi i32 [ %i.h, %bb.b ], [ %i.bw, %bb.f ], [ %i.bw, %.lr.ph27.new ], [ %i.bw, %.prol.loopexit ]
  %i.dz = phi ptr [ %i.e, %bb.b ], [ %i.bx, %bb.f ], [ %i.bx, %.lr.ph27.new ], [ %i.bx, %.prol.loopexit ] ; 2 uses
  %i.ea = phi ptr [ %i.c, %bb.b ], [ %i.by, %bb.f ], [ %i.by, %.lr.ph27.new ], [ %i.by, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.ai, %bb.b ], [ %i.bz, %bb.f ], [ %i.bz, %.lr.ph27.new ], [ %i.bz, %.prol.loopexit ] ; 2 uses
  %i.eb = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.ec = icmp ult i32 %.0.i284.i, %i.o
  br i1 %i.ec, label %.lr.ph29, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph29:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.ed = sub i32 24, %i.dy
  %i.ee = zext i32 %.0.i284.i to i64
  %i.ef = and i64 %i.n, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph29, %bb.g
  %indvars.iv52 = phi i64 [ %i.ee, %.lr.ph29 ], [ %indvars.iv.next53, %bb.g ] ; 4 uses
  %i.eg = load i64, ptr %i.ac, align 8, !tbaa !50
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv52
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = trunc i64 %i.eg to i32
  %.val7 = load i32, ptr %i.ei, align 1, !tbaa !23
  %i.ek = mul i32 %.val7, -1640531535
  %i.el = xor i32 %i.ek, %i.ej
  %i.em = lshr i32 %i.el, %i.ed                   ; 2 uses
  %i.en = lshr i32 %i.em, 4
  %i.eo = and i32 %i.en, 268435440
  %i.ep = zext nneg i32 %i.eo to i64              ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ep
  tail call void @llvm.prefetch.p0(ptr %i.eq, i32 0, i32 3, i32 1)
  %i.er = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ep
  tail call void @llvm.prefetch.p0(ptr %i.er, i32 0, i32 3, i32 1)
  %i.es = trunc nuw i64 %indvars.iv52 to i32
  %i.et = and i64 %indvars.iv52, 7
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !23 ; 2 uses
  store i32 %i.em, ptr %i.eu, align 4, !tbaa !23
  %i.ew = lshr i32 %i.ev, 4
  %i.ex = and i32 %i.ew, 268435440
  %i.ey = zext nneg i32 %i.ex to i64              ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ey ; 3 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !51
  %i.fc = add i8 %i.fb, 15
  %i.fd = and i8 %i.fc, 15                        ; 2 uses
  %i.fe = zext nneg i8 %i.fd to i32
  %i.ff = icmp eq i8 %i.fd, 0
  %i.fg = select i1 %i.ff, i32 15, i32 0
  %i.fh = add nuw nsw i32 %i.fg, %i.fe            ; 2 uses
  %i.fi = trunc nuw nsw i32 %i.fh to i8
  store i8 %i.fi, ptr %i.fa, align 1, !tbaa !51
  %i.fj = trunc i32 %i.ev to i8
  %i.fk = zext nneg i32 %i.fh to i64              ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fk
  store i8 %i.fj, ptr %i.fl, align 1, !tbaa !51
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.fk
  store i32 %i.es, ptr %i.fm, align 4, !tbaa !23
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.fn = icmp samesign ult i64 %indvars.iv.next53, %i.ef
  br i1 %i.fn, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.o, ptr %i.ah, align 4, !tbaa !40
  %i.fo = and i64 %i.n, 4294967295
  %i.fp = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = trunc i64 %i.ad to i32
  %.val8 = load i32, ptr %i.fq, align 1, !tbaa !23
  %i.fs = mul i32 %.val8, -1640531535
  %i.ft = xor i32 %i.fs, %i.fr
  %i.fu = sub i32 24, %i.h
  %i.fv = lshr i32 %i.ft, %i.fu                   ; 2 uses
  %i.fw = lshr i32 %i.fv, 4
  %i.fx = and i32 %i.fw, 268435440
  %i.fy = zext nneg i32 %i.fx to i64              ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fy
  tail call void @llvm.prefetch.p0(ptr %i.fz, i32 0, i32 3, i32 1)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.fy
  tail call void @llvm.prefetch.p0(ptr %i.ga, i32 0, i32 3, i32 1)
  %i.gb = and i64 %i.n, 7
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gb ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !23
  store i32 %i.fv, ptr %i.gc, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %i.ge = trunc i64 %i.ad to i32
  %.val9 = load i32, ptr %1, align 1, !tbaa !23
  %i.gf = mul i32 %.val9, -1640531535
  %i.gg = xor i32 %i.gf, %i.ge
  %i.gh = sub i32 24, %i.h
  %i.gi = lshr i32 %i.gg, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.o, ptr %i.gj, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.gi, %bb.h ], [ %i.gd, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !83
  %i.gm = add i32 %i.gl, %.0257.i
  store i32 %i.gm, ptr %i.gk, align 8, !tbaa !83
  %i.gn = lshr i32 %.0257.i, 4
  %i.go = and i32 %i.gn, 268435440
  %i.gp = zext nneg i32 %i.go to i64              ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gp ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gp ; 4 uses
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !51  ; 2 uses
  %i.gt = zext i8 %i.gs to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.gu = trunc i32 %.0257.i to i8                ; 2 uses
  %i.gv = insertelement <16 x i8> poison, i8 %i.gu, i64 0
  %i.gw = shufflevector <16 x i8> %i.gv, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.gx = load <16 x i8>, ptr %i.gr, align 1, !tbaa !51
  %i.gy = icmp eq <16 x i8> %i.gx, %i.gw
  %i.gz = bitcast <16 x i1> %i.gy to i16          ; 3 uses
  %.not = icmp eq i16 %i.gz, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.ha = zext i8 %i.gs to i16
  %i.hb = tail call noundef i16 @llvm.fshr.i16(i16 %i.gz, i16 %i.gz, i16 %i.ha)
  %i.hc = zext i16 %i.hb to i64
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %bb.k
  %.0247.i33 = phi i64 [ %i.hs, %bb.k ], [ %i.hc, %.lr.ph34.preheader ] ; 3 uses
  %.0249.i32 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph34.preheader ] ; 4 uses
  %.0262.i31 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ae, %.lr.ph34.preheader ] ; 2 uses
  %i.hd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i33, i1 true)
  %i.he = trunc nuw nsw i64 %i.hd to i32
  %i.hf = add nuw nsw i32 %i.he, %i.gt
  %i.hg = and i32 %i.hf, 15                       ; 2 uses
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !23 ; 3 uses
  %i.hk = icmp eq i32 %i.hg, 0
  br i1 %i.hk, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph34
  %i.hl = icmp ult i32 %i.hj, %i.z
  br i1 %i.hl, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hm = zext i32 %i.hj to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.hm
  tail call void @llvm.prefetch.p0(ptr %i.hn, i32 0, i32 3, i32 1)
  %i.ho = add nuw nsw i64 %.0249.i32, 1
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i32
  store i32 %i.hj, ptr %i.hp, align 4, !tbaa !23
  %i.hq = add nsw i32 %.0262.i31, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph34
  %.1263.i.ph = phi i32 [ %.0262.i31, %.lr.ph34 ], [ %i.hq, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i32, %.lr.ph34 ], [ %i.ho, %bb.j ] ; 2 uses
  %i.hr = add nuw nsw i64 %.0247.i33, 65535
  %i.hs = and i64 %i.hr, %.0247.i33               ; 2 uses
  %i.ht = icmp ne i64 %i.hs, 0
  %i.hu = icmp ne i32 %.1263.i.ph, 0
  %i.hv = select i1 %i.ht, i1 %i.hu, i1 false
  br i1 %i.hv, label %.lr.ph34, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i32, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.hw = add nuw nsw i32 %i.gt, 15
  %i.hx = and i32 %i.hw, 15                       ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 0
  %i.hz = select i1 %i.hy, i32 15, i32 0
  %i.ia = add nuw nsw i32 %i.hz, %i.hx            ; 2 uses
  %i.ib = trunc nuw nsw i32 %i.ia to i8
  store i8 %i.ib, ptr %i.gr, align 1, !tbaa !51
  %i.ic = zext nneg i32 %i.ia to i64              ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.ic
  store i8 %i.gu, ptr %i.id, align 1, !tbaa !51
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !40 ; 2 uses
  %i.ig = add i32 %i.if, 1
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !40
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.ic
  store i32 %i.if, ptr %i.ih, align 4, !tbaa !23
  %.not44 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not44, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph40

.lr.ph40:                                         ; preds = %._crit_edge
  %i.ii = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.ij = icmp ult ptr %1, %i.ii
  %i.ik = getelementptr inbounds i8, ptr %2, i64 -3
  %i.il = getelementptr inbounds i8, ptr %2, i64 -1
  %i.im = add i32 %i.o, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph40, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i38 = phi i64 [ 0, %.lr.ph40 ], [ %i.jz, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i37 = phi i64 [ 3, %.lr.ph40 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i38
  %i.io = load i32, ptr %i.in, align 4, !tbaa !23 ; 2 uses
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ip ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.0258.i37
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 -3
  %.val4 = load i32, ptr %i.is, align 1, !tbaa !23
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i37
  %i.iu = getelementptr inbounds i8, ptr %i.it, i64 -3
  %.val = load i32, ptr %i.iu, align 1, !tbaa !23
  %i.iv = icmp eq i32 %.val4, %.val
  br i1 %i.iv, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.ij, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.iq, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i11 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i11, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.iw = xor i64 %.val.i, %.val60.i
  %i.ix = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.iw, i1 true)
  %i.iy = lshr i64 %i.ix, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.iq, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.iz = icmp ult ptr %.049.i, %i.ii
  br i1 %i.iz, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.ja = xor i64 %.049.val.i, %.045.val.i
  %i.jb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ja, i1 true)
  %i.jc = lshr i64 %i.jb, 3
  %i.jd = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jc
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = sub i64 %i.je, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.iq, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jg = icmp ult ptr %.251.i, %i.ik
  br i1 %i.jg, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.jh = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.jh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ji = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.jj = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.ji, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.jj, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.jk = icmp ult ptr %.352.i, %i.il
  br i1 %i.jk, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.jl = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.jl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jm = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.jn = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.jm, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.jn, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.jo = icmp ult ptr %.453.i, %2
  br i1 %i.jo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jp = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.jq = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.jr = icmp eq i8 %i.jp, %i.jq
  %spec.select.idx.i = zext i1 %i.jr to i64
  %spec.select.i10 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i10, %bb.w ]
  %i.js = ptrtoint ptr %.5.i to i64
  %i.jt = sub i64 %i.js, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.iy, %bb.o ], [ %i.jf, %.thread63.i ], [ %i.jt, %bb.x ] ; 4 uses
  %i.ju = icmp ugt i64 %.2243.i, %.0258.i37
  br i1 %i.ju, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.jv = sub i32 %i.im, %i.io
  %i.jw = zext i32 %i.jv to i64
  store i64 %i.jw, ptr %3, align 8, !tbaa !44
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.jy = icmp eq ptr %i.jx, %2
  br i1 %i.jy, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i37, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i37, %bb.l ] ; 2 uses
  %i.jz = add nuw i64 %.0248.i38, 1               ; 2 uses
  %exitcond55.not = icmp eq i64 %i.jz, %.0249.i.lcssa
  br i1 %exitcond55.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.l, !llvm.loop !10

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.3261.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL32ZSTD_RowFindBestMatch_noDict_4_5EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 9 uses
  %i.l = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = trunc i64 %i.n to i32                    ; 8 uses
  %i.p = load i32, ptr %i.i, align 8, !tbaa !80
  %i.q = shl nuw i32 1, %i.p                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !78   ; 2 uses
  %i.t = sub i32 %i.o, %i.s
  %i.u = icmp ugt i32 %i.t, %i.q
  %i.v = sub i32 %i.o, %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !54
  %.not.i = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not.i, i1 %i.u, i1 false
  %i.z = select i1 %i.y, i32 %i.v, i32 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !81
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL32ZSTD_RowFindBestMatch_noDict_4_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %i.df = mul i32 %.val6, -1640531535
  %i.dg = xor i32 %i.df, %i.cp
  %i.dh = lshr i32 %i.dg, %i.cq                   ; 2 uses
  %i.di = lshr i32 %i.dh, 3
  %i.dj = and i32 %i.di, 536870880
  %i.dk = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dk ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dl, i32 0, i32 3, i32 1)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dm, i32 0, i32 3, i32 1)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dk
  tail call void @llvm.prefetch.p0(ptr %i.dn, i32 0, i32 3, i32 1)
  %i.do = and i64 %indvars.iv48, 7
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.do
  store i32 %i.dh, ptr %i.dp, align 4, !tbaa !23
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next49
  %.val6.1 = load i32, ptr %i.dq, align 1, !tbaa !23
  %i.dr = mul i32 %.val6.1, -1640531535
  %i.ds = xor i32 %i.dr, %i.cp
  %i.dt = lshr i32 %i.ds, %i.cq                   ; 2 uses
  %i.du = lshr i32 %i.dt, 3
  %i.dv = and i32 %i.du, 536870880
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dw ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dx, i32 0, i32 3, i32 1)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dy, i32 0, i32 3, i32 1)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dw
  tail call void @llvm.prefetch.p0(ptr %i.dz, i32 0, i32 3, i32 1)
  %i.ea = and i64 %indvars.iv.next49, 7
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ea
  store i32 %i.dt, ptr %i.eb, align 4, !tbaa !23
  %indvars.iv.next49.1 = add nuw nsw i64 %indvars.iv48, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next49.1 to i32
  %exitcond51.not.1 = icmp eq i32 %i.cm, %lftr.wideiv.1
  br i1 %exitcond51.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph27.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph27.new, %bb.f, %bb.b
  %i.ec = phi i32 [ %i.h, %bb.b ], [ %i.bx, %bb.f ], [ %i.bx, %.lr.ph27.new ], [ %i.bx, %.prol.loopexit ]
  %i.ed = phi ptr [ %i.e, %bb.b ], [ %i.by, %bb.f ], [ %i.by, %.lr.ph27.new ], [ %i.by, %.prol.loopexit ] ; 2 uses
  %i.ee = phi ptr [ %i.c, %bb.b ], [ %i.bz, %bb.f ], [ %i.bz, %.lr.ph27.new ], [ %i.bz, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.ai, %bb.b ], [ %i.ca, %bb.f ], [ %i.ca, %.lr.ph27.new ], [ %i.ca, %.prol.loopexit ] ; 2 uses
  %i.ef = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.eg = icmp ult i32 %.0.i284.i, %i.o
  br i1 %i.eg, label %.lr.ph29, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph29:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.eh = sub i32 24, %i.ec
  %i.ei = zext i32 %.0.i284.i to i64
  %i.ej = and i64 %i.n, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph29, %bb.g
  %indvars.iv52 = phi i64 [ %i.ei, %.lr.ph29 ], [ %indvars.iv.next53, %bb.g ] ; 4 uses
  %i.ek = load i64, ptr %i.ac, align 8, !tbaa !50
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 %indvars.iv52
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = trunc i64 %i.ek to i32
  %.val7 = load i32, ptr %i.em, align 1, !tbaa !23
  %i.eo = mul i32 %.val7, -1640531535
  %i.ep = xor i32 %i.eo, %i.en
  %i.eq = lshr i32 %i.ep, %i.eh                   ; 2 uses
  %i.er = lshr i32 %i.eq, 3
  %i.es = and i32 %i.er, 536870880
  %i.et = zext nneg i32 %i.es to i64              ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.et ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.eu, i32 0, i32 3, i32 1)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ev, i32 0, i32 3, i32 1)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.et
  tail call void @llvm.prefetch.p0(ptr %i.ew, i32 0, i32 3, i32 1)
  %i.ex = trunc nuw i64 %indvars.iv52 to i32
  %i.ey = and i64 %indvars.iv52, 7
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !23 ; 2 uses
  store i32 %i.eq, ptr %i.ez, align 4, !tbaa !23
  %i.fb = lshr i32 %i.fa, 3
  %i.fc = and i32 %i.fb, 536870880
  %i.fd = zext nneg i32 %i.fc to i64              ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.fd ; 3 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !51
  %i.fh = add i8 %i.fg, 31
  %i.fi = and i8 %i.fh, 31                        ; 2 uses
  %i.fj = zext nneg i8 %i.fi to i32
  %i.fk = icmp eq i8 %i.fi, 0
  %i.fl = select i1 %i.fk, i32 31, i32 0
  %i.fm = add nuw nsw i32 %i.fl, %i.fj            ; 2 uses
  %i.fn = trunc nuw nsw i32 %i.fm to i8
  store i8 %i.fn, ptr %i.ff, align 1, !tbaa !51
  %i.fo = trunc i32 %i.fa to i8
  %i.fp = zext nneg i32 %i.fm to i64              ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fp
  store i8 %i.fo, ptr %i.fq, align 1, !tbaa !51
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fp
  store i32 %i.ex, ptr %i.fr, align 4, !tbaa !23
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.fs = icmp samesign ult i64 %indvars.iv.next53, %i.ej
  br i1 %i.fs, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.o, ptr %i.ah, align 4, !tbaa !40
  %i.ft = and i64 %i.n, 4294967295
  %i.fu = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = trunc i64 %i.ad to i32
  %.val8 = load i32, ptr %i.fv, align 1, !tbaa !23
  %i.fx = mul i32 %.val8, -1640531535
  %i.fy = xor i32 %i.fx, %i.fw
  %i.fz = sub i32 24, %i.h
  %i.ga = lshr i32 %i.fy, %i.fz                   ; 2 uses
  %i.gb = lshr i32 %i.ga, 3
  %i.gc = and i32 %i.gb, 536870880
  %i.gd = zext nneg i32 %i.gc to i64              ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gd ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ge, i32 0, i32 3, i32 1)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.gf, i32 0, i32 3, i32 1)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gd
  tail call void @llvm.prefetch.p0(ptr %i.gg, i32 0, i32 3, i32 1)
  %i.gh = and i64 %i.n, 7
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !23
  store i32 %i.ga, ptr %i.gi, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %i.gk = trunc i64 %i.ad to i32
  %.val9 = load i32, ptr %1, align 1, !tbaa !23
  %i.gl = mul i32 %.val9, -1640531535
  %i.gm = xor i32 %i.gl, %i.gk
  %i.gn = sub i32 24, %i.h
  %i.go = lshr i32 %i.gm, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.o, ptr %i.gp, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.go, %bb.h ], [ %i.gj, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !83
  %i.gs = add i32 %i.gr, %.0257.i
  store i32 %i.gs, ptr %i.gq, align 8, !tbaa !83
  %i.gt = lshr i32 %.0257.i, 3
  %i.gu = and i32 %i.gt, 536870880
  %i.gv = zext nneg i32 %i.gu to i64              ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gv ; 5 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.gy = trunc i32 %.0257.i to i8                ; 2 uses
  %i.gz = insertelement <16 x i8> poison, i8 %i.gy, i64 0
  %i.ha = load <16 x i8>, ptr %i.gw, align 1, !tbaa !51
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hc = load <16 x i8>, ptr %i.hb, align 1, !tbaa !51
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gv ; 2 uses
  %i.he = zext i8 %i.gx to i32                    ; 3 uses
  %i.hf = shufflevector <16 x i8> %i.ha, <16 x i8> %i.hc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hg = shufflevector <16 x i8> %i.gz, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.hh = icmp eq <32 x i8> %i.hf, %i.hg
  %i.hi = bitcast <32 x i1> %i.hh to i32          ; 3 uses
  %.not = icmp eq i32 %i.hi, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hj = tail call noundef i32 @llvm.fshr.i32(i32 %i.hi, i32 %i.hi, i32 range(i32 0, 64) %i.he)
  %i.hk = zext i32 %i.hj to i64
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %bb.k
  %.0247.i33 = phi i64 [ %i.ia, %bb.k ], [ %i.hk, %.lr.ph34.preheader ] ; 3 uses
  %.0249.i32 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph34.preheader ] ; 4 uses
  %.0262.i31 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ae, %.lr.ph34.preheader ] ; 2 uses
  %i.hl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i33, i1 true)
  %i.hm = trunc nuw nsw i64 %i.hl to i32
  %i.hn = add nuw nsw i32 %i.hm, %i.he
  %i.ho = and i32 %i.hn, 31                       ; 2 uses
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !23 ; 3 uses
  %i.hs = icmp eq i32 %i.ho, 0
  br i1 %i.hs, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph34
  %i.ht = icmp ult i32 %i.hr, %i.z
  br i1 %i.ht, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hu = zext i32 %i.hr to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.hu
  tail call void @llvm.prefetch.p0(ptr %i.hv, i32 0, i32 3, i32 1)
  %i.hw = add nuw nsw i64 %.0249.i32, 1
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i32
  store i32 %i.hr, ptr %i.hx, align 4, !tbaa !23
  %i.hy = add nsw i32 %.0262.i31, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph34
  %.1263.i.ph = phi i32 [ %.0262.i31, %.lr.ph34 ], [ %i.hy, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i32, %.lr.ph34 ], [ %i.hw, %bb.j ] ; 2 uses
  %i.hz = add nuw nsw i64 %.0247.i33, 4294967295
  %i.ia = and i64 %i.hz, %.0247.i33               ; 2 uses
  %i.ib = icmp ne i64 %i.ia, 0
  %i.ic = icmp ne i32 %.1263.i.ph, 0
  %i.id = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %i.id, label %.lr.ph34, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i32, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.ie = add nuw nsw i32 %i.he, 31
  %i.if = and i32 %i.ie, 31                       ; 2 uses
  %i.ig = icmp eq i32 %i.if, 0
  %i.ih = select i1 %i.ig, i32 31, i32 0
  %i.ii = add nuw nsw i32 %i.ih, %i.if            ; 2 uses
  %i.ij = trunc nuw nsw i32 %i.ii to i8
  store i8 %i.ij, ptr %i.gw, align 1, !tbaa !51
  %i.ik = zext nneg i32 %i.ii to i64              ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ik
  store i8 %i.gy, ptr %i.il, align 1, !tbaa !51
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !40 ; 2 uses
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr %i.im, align 4, !tbaa !40
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ik
  store i32 %i.in, ptr %i.ip, align 4, !tbaa !23
  %.not44 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not44, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph40

.lr.ph40:                                         ; preds = %._crit_edge
  %i.iq = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.ir = icmp ult ptr %1, %i.iq
  %i.is = getelementptr inbounds i8, ptr %2, i64 -3
  %i.it = getelementptr inbounds i8, ptr %2, i64 -1
  %i.iu = add i32 %i.o, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph40, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i38 = phi i64 [ 0, %.lr.ph40 ], [ %i.kh, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i37 = phi i64 [ 3, %.lr.ph40 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i38
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !23 ; 2 uses
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ix ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.0258.i37
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 -3
  %.val4 = load i32, ptr %i.ja, align 1, !tbaa !23
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i37
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 -3
  %.val = load i32, ptr %i.jc, align 1, !tbaa !23
  %i.jd = icmp eq i32 %.val4, %.val
  br i1 %i.jd, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.ir, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.iy, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i11 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i11, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.je = xor i64 %.val.i, %.val60.i
  %i.jf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.je, i1 true)
  %i.jg = lshr i64 %i.jf, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.iy, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jh = icmp ult ptr %.049.i, %i.iq
  br i1 %i.jh, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.ji = xor i64 %.049.val.i, %.045.val.i
  %i.jj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ji, i1 true)
  %i.jk = lshr i64 %i.jj, 3
  %i.jl = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jk
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = sub i64 %i.jm, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.iy, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jo = icmp ult ptr %.251.i, %i.is
  br i1 %i.jo, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.jp = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.jp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jq = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.jr = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.jq, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.jr, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.js = icmp ult ptr %.352.i, %i.it
  br i1 %i.js, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.jt = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.jt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ju = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.jv = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.ju, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.jv, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.jw = icmp ult ptr %.453.i, %2
  br i1 %i.jw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jx = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.jy = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.jz = icmp eq i8 %i.jx, %i.jy
  %spec.select.idx.i = zext i1 %i.jz to i64
  %spec.select.i10 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i10, %bb.w ]
  %i.ka = ptrtoint ptr %.5.i to i64
  %i.kb = sub i64 %i.ka, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.jg, %bb.o ], [ %i.jn, %.thread63.i ], [ %i.kb, %bb.x ] ; 4 uses
  %i.kc = icmp ugt i64 %.2243.i, %.0258.i37
  br i1 %i.kc, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kd = sub i32 %i.iu, %i.iw
  %i.ke = zext i32 %i.kd to i64
  store i64 %i.ke, ptr %3, align 8, !tbaa !44
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kg = icmp eq ptr %i.kf, %2
  br i1 %i.kg, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i37, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i37, %bb.l ] ; 2 uses
  %i.kh = add nuw i64 %.0248.i38, 1               ; 2 uses
  %exitcond58.not = icmp eq i64 %i.kh, %.0249.i.lcssa
  br i1 %exitcond58.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.l, !llvm.loop !10

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.3261.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL32ZSTD_RowFindBestMatch_noDict_4_6EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 7 uses
  %i.l = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = trunc i64 %i.n to i32                    ; 8 uses
  %i.p = load i32, ptr %i.i, align 8, !tbaa !80
  %i.q = shl nuw i32 1, %i.p                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !78   ; 2 uses
  %i.t = sub i32 %i.o, %i.s
  %i.u = icmp ugt i32 %i.t, %i.q
  %i.v = sub i32 %i.o, %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !54
  %.not.i = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not.i, i1 %i.u, i1 false
  %i.z = select i1 %i.y, i32 %i.v, i32 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !81
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL32ZSTD_RowFindBestMatch_noDict_5_4EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph27
  %indvars.iv48.unr = phi i64 [ %i.cb, %.lr.ph27 ], [ %indvars.iv.next49.prol, %.prol.loopexit.unr-lcssa ]
  %i.db = icmp eq i32 %i.ck, 1
  br i1 %i.db, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph27.new

.lr.ph27.new:                                     ; preds = %.prol.loopexit, %.lr.ph27.new
  %indvars.iv48 = phi i64 [ %indvars.iv.next49.1, %.lr.ph27.new ], [ %indvars.iv48.unr, %.prol.loopexit ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv48
  %.val6 = load i64, ptr %i.dc, align 1, !tbaa !44
  %i.dd = mul i64 %.val6, -3523014627271114752
  %i.de = xor i64 %i.dd, %i.cn
  %i.df = lshr i64 %i.de, %i.cp                   ; 2 uses
  %i.dg = trunc i64 %i.df to i32
  %i.dh = lshr i64 %i.df, 4
  %i.di = and i64 %i.dh, 268435440                ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.di
  tail call void @llvm.prefetch.p0(ptr %i.dj, i32 0, i32 3, i32 1)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.di
  tail call void @llvm.prefetch.p0(ptr %i.dk, i32 0, i32 3, i32 1)
  %i.dl = and i64 %indvars.iv48, 7
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dl
  store i32 %i.dg, ptr %i.dm, align 4, !tbaa !23
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next49
  %.val6.1 = load i64, ptr %i.dn, align 1, !tbaa !44
  %i.do = mul i64 %.val6.1, -3523014627271114752
  %i.dp = xor i64 %i.do, %i.cn
  %i.dq = lshr i64 %i.dp, %i.cp                   ; 2 uses
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = lshr i64 %i.dq, 4
  %i.dt = and i64 %i.ds, 268435440                ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.dt
  tail call void @llvm.prefetch.p0(ptr %i.du, i32 0, i32 3, i32 1)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.dt
  tail call void @llvm.prefetch.p0(ptr %i.dv, i32 0, i32 3, i32 1)
  %i.dw = and i64 %indvars.iv.next49, 7
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dw
  store i32 %i.dr, ptr %i.dx, align 4, !tbaa !23
  %indvars.iv.next49.1 = add nuw nsw i64 %indvars.iv48, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next49.1 to i32
  %exitcond51.not.1 = icmp eq i32 %i.cl, %lftr.wideiv.1
  br i1 %exitcond51.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph27.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph27.new, %bb.f, %bb.b
  %i.dy = phi i32 [ %i.h, %bb.b ], [ %i.bw, %bb.f ], [ %i.bw, %.lr.ph27.new ], [ %i.bw, %.prol.loopexit ]
  %i.dz = phi ptr [ %i.e, %bb.b ], [ %i.bx, %bb.f ], [ %i.bx, %.lr.ph27.new ], [ %i.bx, %.prol.loopexit ] ; 2 uses
  %i.ea = phi ptr [ %i.c, %bb.b ], [ %i.by, %bb.f ], [ %i.by, %.lr.ph27.new ], [ %i.by, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.ai, %bb.b ], [ %i.bz, %bb.f ], [ %i.bz, %.lr.ph27.new ], [ %i.bz, %.prol.loopexit ] ; 2 uses
  %i.eb = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.ec = icmp ult i32 %.0.i284.i, %i.o
  br i1 %i.ec, label %.lr.ph29, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph29:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.ed = sub i32 56, %i.dy
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = zext i32 %.0.i284.i to i64
  %i.eg = and i64 %i.n, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph29, %bb.g
  %indvars.iv52 = phi i64 [ %i.ef, %.lr.ph29 ], [ %indvars.iv.next53, %bb.g ] ; 4 uses
  %i.eh = load i64, ptr %i.ac, align 8, !tbaa !50
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv52
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.val7 = load i64, ptr %i.ej, align 1, !tbaa !44
  %i.ek = mul i64 %.val7, -3523014627271114752
  %i.el = xor i64 %i.ek, %i.eh
  %i.em = lshr i64 %i.el, %i.ee                   ; 2 uses
  %i.en = trunc i64 %i.em to i32
  %i.eo = lshr i64 %i.em, 4
  %i.ep = and i64 %i.eo, 268435440                ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ep
  tail call void @llvm.prefetch.p0(ptr %i.eq, i32 0, i32 3, i32 1)
  %i.er = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ep
  tail call void @llvm.prefetch.p0(ptr %i.er, i32 0, i32 3, i32 1)
  %i.es = trunc nuw i64 %indvars.iv52 to i32
  %i.et = and i64 %indvars.iv52, 7
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !23 ; 2 uses
  store i32 %i.en, ptr %i.eu, align 4, !tbaa !23
  %i.ew = lshr i32 %i.ev, 4
  %i.ex = and i32 %i.ew, 268435440
  %i.ey = zext nneg i32 %i.ex to i64              ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ey ; 3 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !51
  %i.fc = add i8 %i.fb, 15
  %i.fd = and i8 %i.fc, 15                        ; 2 uses
  %i.fe = zext nneg i8 %i.fd to i32
  %i.ff = icmp eq i8 %i.fd, 0
  %i.fg = select i1 %i.ff, i32 15, i32 0
  %i.fh = add nuw nsw i32 %i.fg, %i.fe            ; 2 uses
  %i.fi = trunc nuw nsw i32 %i.fh to i8
  store i8 %i.fi, ptr %i.fa, align 1, !tbaa !51
  %i.fj = trunc i32 %i.ev to i8
  %i.fk = zext nneg i32 %i.fh to i64              ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fk
  store i8 %i.fj, ptr %i.fl, align 1, !tbaa !51
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.fk
  store i32 %i.es, ptr %i.fm, align 4, !tbaa !23
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.fn = icmp samesign ult i64 %indvars.iv.next53, %i.eg
  br i1 %i.fn, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.o, ptr %i.ah, align 4, !tbaa !40
  %i.fo = and i64 %i.n, 4294967295
  %i.fp = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %.val8 = load i64, ptr %i.fq, align 1, !tbaa !44
  %i.fr = mul i64 %.val8, -3523014627271114752
  %i.fs = xor i64 %i.fr, %i.ad
  %i.ft = sub i32 56, %i.h
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = lshr i64 %i.fs, %i.fu                   ; 2 uses
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = lshr i64 %i.fv, 4
  %i.fy = and i64 %i.fx, 268435440                ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fy
  tail call void @llvm.prefetch.p0(ptr %i.fz, i32 0, i32 3, i32 1)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.fy
  tail call void @llvm.prefetch.p0(ptr %i.ga, i32 0, i32 3, i32 1)
  %i.gb = and i64 %i.n, 7
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gb ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !23
  store i32 %i.fw, ptr %i.gc, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %.val9 = load i64, ptr %1, align 1, !tbaa !44
  %i.ge = mul i64 %.val9, -3523014627271114752
  %i.gf = xor i64 %i.ge, %i.ad
  %i.gg = sub i32 56, %i.h
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = lshr i64 %i.gf, %i.gh
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.o, ptr %i.gk, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.gj, %bb.h ], [ %i.gd, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !83
  %i.gn = add i32 %i.gm, %.0257.i
  store i32 %i.gn, ptr %i.gl, align 8, !tbaa !83
  %i.go = lshr i32 %.0257.i, 4
  %i.gp = and i32 %i.go, 268435440
  %i.gq = zext nneg i32 %i.gp to i64              ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gq ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gq ; 4 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !51  ; 2 uses
  %i.gu = zext i8 %i.gt to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.gv = trunc i32 %.0257.i to i8                ; 2 uses
  %i.gw = insertelement <16 x i8> poison, i8 %i.gv, i64 0
  %i.gx = shufflevector <16 x i8> %i.gw, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.gy = load <16 x i8>, ptr %i.gs, align 1, !tbaa !51
  %i.gz = icmp eq <16 x i8> %i.gy, %i.gx
  %i.ha = bitcast <16 x i1> %i.gz to i16          ; 3 uses
  %.not = icmp eq i16 %i.ha, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hb = zext i8 %i.gt to i16
  %i.hc = tail call noundef i16 @llvm.fshr.i16(i16 %i.ha, i16 %i.ha, i16 %i.hb)
  %i.hd = zext i16 %i.hc to i64
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %bb.k
  %.0247.i33 = phi i64 [ %i.ht, %bb.k ], [ %i.hd, %.lr.ph34.preheader ] ; 3 uses
  %.0249.i32 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph34.preheader ] ; 4 uses
  %.0262.i31 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ae, %.lr.ph34.preheader ] ; 2 uses
  %i.he = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i33, i1 true)
  %i.hf = trunc nuw nsw i64 %i.he to i32
  %i.hg = add nuw nsw i32 %i.hf, %i.gu
  %i.hh = and i32 %i.hg, 15                       ; 2 uses
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !23 ; 3 uses
  %i.hl = icmp eq i32 %i.hh, 0
  br i1 %i.hl, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph34
  %i.hm = icmp ult i32 %i.hk, %i.z
  br i1 %i.hm, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hn = zext i32 %i.hk to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.hn
  tail call void @llvm.prefetch.p0(ptr %i.ho, i32 0, i32 3, i32 1)
  %i.hp = add nuw nsw i64 %.0249.i32, 1
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i32
  store i32 %i.hk, ptr %i.hq, align 4, !tbaa !23
  %i.hr = add nsw i32 %.0262.i31, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph34
  %.1263.i.ph = phi i32 [ %.0262.i31, %.lr.ph34 ], [ %i.hr, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i32, %.lr.ph34 ], [ %i.hp, %bb.j ] ; 2 uses
  %i.hs = add nuw nsw i64 %.0247.i33, 65535
  %i.ht = and i64 %i.hs, %.0247.i33               ; 2 uses
  %i.hu = icmp ne i64 %i.ht, 0
  %i.hv = icmp ne i32 %.1263.i.ph, 0
  %i.hw = select i1 %i.hu, i1 %i.hv, i1 false
  br i1 %i.hw, label %.lr.ph34, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i32, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.hx = add nuw nsw i32 %i.gu, 15
  %i.hy = and i32 %i.hx, 15                       ; 2 uses
  %i.hz = icmp eq i32 %i.hy, 0
  %i.ia = select i1 %i.hz, i32 15, i32 0
  %i.ib = add nuw nsw i32 %i.ia, %i.hy            ; 2 uses
  %i.ic = trunc nuw nsw i32 %i.ib to i8
  store i8 %i.ic, ptr %i.gs, align 1, !tbaa !51
  %i.id = zext nneg i32 %i.ib to i64              ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.id
  store i8 %i.gv, ptr %i.ie, align 1, !tbaa !51
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !40 ; 2 uses
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr %i.if, align 4, !tbaa !40
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.id
  store i32 %i.ig, ptr %i.ii, align 4, !tbaa !23
  %.not44 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not44, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph40

.lr.ph40:                                         ; preds = %._crit_edge
  %i.ij = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.ik = icmp ult ptr %1, %i.ij
  %i.il = getelementptr inbounds i8, ptr %2, i64 -3
  %i.im = getelementptr inbounds i8, ptr %2, i64 -1
  %i.in = add i32 %i.o, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph40, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i38 = phi i64 [ 0, %.lr.ph40 ], [ %i.ka, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i37 = phi i64 [ 3, %.lr.ph40 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i38
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !23 ; 2 uses
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.iq ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %.0258.i37
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 -3
  %.val4 = load i32, ptr %i.it, align 1, !tbaa !23
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i37
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -3
  %.val = load i32, ptr %i.iv, align 1, !tbaa !23
  %i.iw = icmp eq i32 %.val4, %.val
  br i1 %i.iw, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.ik, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.ir, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i11 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i11, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ix = xor i64 %.val.i, %.val60.i
  %i.iy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ix, i1 true)
  %i.iz = lshr i64 %i.iy, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.ir, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.ja = icmp ult ptr %.049.i, %i.ij
  br i1 %i.ja, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.jb = xor i64 %.049.val.i, %.045.val.i
  %i.jc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jb, i1 true)
  %i.jd = lshr i64 %i.jc, 3
  %i.je = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jd
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = sub i64 %i.jf, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.ir, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jh = icmp ult ptr %.251.i, %i.il
  br i1 %i.jh, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.ji = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.ji, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jj = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.jk = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.jj, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.jk, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.jl = icmp ult ptr %.352.i, %i.im
  br i1 %i.jl, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.jm = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.jm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jn = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.jo = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.jn, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.jo, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.jp = icmp ult ptr %.453.i, %2
  br i1 %i.jp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jq = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.jr = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.js = icmp eq i8 %i.jq, %i.jr
  %spec.select.idx.i = zext i1 %i.js to i64
  %spec.select.i10 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i10, %bb.w ]
  %i.jt = ptrtoint ptr %.5.i to i64
  %i.ju = sub i64 %i.jt, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.iz, %bb.o ], [ %i.jg, %.thread63.i ], [ %i.ju, %bb.x ] ; 4 uses
  %i.jv = icmp ugt i64 %.2243.i, %.0258.i37
  br i1 %i.jv, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.jw = sub i32 %i.in, %i.ip
  %i.jx = zext i32 %i.jw to i64
  store i64 %i.jx, ptr %3, align 8, !tbaa !44
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.jz = icmp eq ptr %i.jy, %2
  br i1 %i.jz, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i37, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i37, %bb.l ] ; 2 uses
  %i.ka = add nuw i64 %.0248.i38, 1               ; 2 uses
  %exitcond55.not = icmp eq i64 %i.ka, %.0249.i.lcssa
  br i1 %exitcond55.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.l, !llvm.loop !10

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.3261.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL32ZSTD_RowFindBestMatch_noDict_5_5EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 9 uses
  %i.l = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = trunc i64 %i.n to i32                    ; 8 uses
  %i.p = load i32, ptr %i.i, align 8, !tbaa !80
  %i.q = shl nuw i32 1, %i.p                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !78   ; 2 uses
  %i.t = sub i32 %i.o, %i.s
  %i.u = icmp ugt i32 %i.t, %i.q
  %i.v = sub i32 %i.o, %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !54
  %.not.i = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not.i, i1 %i.u, i1 false
  %i.z = select i1 %i.y, i32 %i.v, i32 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !81
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL32ZSTD_RowFindBestMatch_noDict_5_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %i.dg = xor i64 %i.df, %i.co
  %i.dh = lshr i64 %i.dg, %i.cq                   ; 2 uses
  %i.di = trunc i64 %i.dh to i32
  %i.dj = lshr i64 %i.dh, 3
  %i.dk = and i64 %i.dj, 536870880                ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dk ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dl, i32 0, i32 3, i32 1)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dm, i32 0, i32 3, i32 1)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dk
  tail call void @llvm.prefetch.p0(ptr %i.dn, i32 0, i32 3, i32 1)
  %i.do = and i64 %indvars.iv48, 7
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.do
  store i32 %i.di, ptr %i.dp, align 4, !tbaa !23
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next49
  %.val6.1 = load i64, ptr %i.dq, align 1, !tbaa !44
  %i.dr = mul i64 %.val6.1, -3523014627271114752
  %i.ds = xor i64 %i.dr, %i.co
  %i.dt = lshr i64 %i.ds, %i.cq                   ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %i.dv = lshr i64 %i.dt, 3
  %i.dw = and i64 %i.dv, 536870880                ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dw ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dx, i32 0, i32 3, i32 1)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dy, i32 0, i32 3, i32 1)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dw
  tail call void @llvm.prefetch.p0(ptr %i.dz, i32 0, i32 3, i32 1)
  %i.ea = and i64 %indvars.iv.next49, 7
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ea
  store i32 %i.du, ptr %i.eb, align 4, !tbaa !23
  %indvars.iv.next49.1 = add nuw nsw i64 %indvars.iv48, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next49.1 to i32
  %exitcond51.not.1 = icmp eq i32 %i.cm, %lftr.wideiv.1
  br i1 %exitcond51.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph27.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph27.new, %bb.f, %bb.b
  %i.ec = phi i32 [ %i.h, %bb.b ], [ %i.bx, %bb.f ], [ %i.bx, %.lr.ph27.new ], [ %i.bx, %.prol.loopexit ]
  %i.ed = phi ptr [ %i.e, %bb.b ], [ %i.by, %bb.f ], [ %i.by, %.lr.ph27.new ], [ %i.by, %.prol.loopexit ] ; 2 uses
  %i.ee = phi ptr [ %i.c, %bb.b ], [ %i.bz, %bb.f ], [ %i.bz, %.lr.ph27.new ], [ %i.bz, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.ai, %bb.b ], [ %i.ca, %bb.f ], [ %i.ca, %.lr.ph27.new ], [ %i.ca, %.prol.loopexit ] ; 2 uses
  %i.ef = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.eg = icmp ult i32 %.0.i284.i, %i.o
  br i1 %i.eg, label %.lr.ph29, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph29:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.eh = sub i32 56, %i.ec
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = zext i32 %.0.i284.i to i64
  %i.ek = and i64 %i.n, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph29, %bb.g
  %indvars.iv52 = phi i64 [ %i.ej, %.lr.ph29 ], [ %indvars.iv.next53, %bb.g ] ; 4 uses
  %i.el = load i64, ptr %i.ac, align 8, !tbaa !50
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 %indvars.iv52
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.val7 = load i64, ptr %i.en, align 1, !tbaa !44
  %i.eo = mul i64 %.val7, -3523014627271114752
  %i.ep = xor i64 %i.eo, %i.el
  %i.eq = lshr i64 %i.ep, %i.ei                   ; 2 uses
  %i.er = trunc i64 %i.eq to i32
  %i.es = lshr i64 %i.eq, 3
  %i.et = and i64 %i.es, 536870880                ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.et ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.eu, i32 0, i32 3, i32 1)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ev, i32 0, i32 3, i32 1)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.et
  tail call void @llvm.prefetch.p0(ptr %i.ew, i32 0, i32 3, i32 1)
  %i.ex = trunc nuw i64 %indvars.iv52 to i32
  %i.ey = and i64 %indvars.iv52, 7
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !23 ; 2 uses
  store i32 %i.er, ptr %i.ez, align 4, !tbaa !23
  %i.fb = lshr i32 %i.fa, 3
  %i.fc = and i32 %i.fb, 536870880
  %i.fd = zext nneg i32 %i.fc to i64              ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.fd ; 3 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !51
  %i.fh = add i8 %i.fg, 31
  %i.fi = and i8 %i.fh, 31                        ; 2 uses
  %i.fj = zext nneg i8 %i.fi to i32
  %i.fk = icmp eq i8 %i.fi, 0
  %i.fl = select i1 %i.fk, i32 31, i32 0
  %i.fm = add nuw nsw i32 %i.fl, %i.fj            ; 2 uses
  %i.fn = trunc nuw nsw i32 %i.fm to i8
  store i8 %i.fn, ptr %i.ff, align 1, !tbaa !51
  %i.fo = trunc i32 %i.fa to i8
  %i.fp = zext nneg i32 %i.fm to i64              ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fp
  store i8 %i.fo, ptr %i.fq, align 1, !tbaa !51
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fp
  store i32 %i.ex, ptr %i.fr, align 4, !tbaa !23
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.fs = icmp samesign ult i64 %indvars.iv.next53, %i.ek
  br i1 %i.fs, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.o, ptr %i.ah, align 4, !tbaa !40
  %i.ft = and i64 %i.n, 4294967295
  %i.fu = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %.val8 = load i64, ptr %i.fv, align 1, !tbaa !44
  %i.fw = mul i64 %.val8, -3523014627271114752
  %i.fx = xor i64 %i.fw, %i.ad
  %i.fy = sub i32 56, %i.h
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = lshr i64 %i.fx, %i.fz                   ; 2 uses
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = lshr i64 %i.ga, 3
  %i.gd = and i64 %i.gc, 536870880                ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gd ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ge, i32 0, i32 3, i32 1)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.gf, i32 0, i32 3, i32 1)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gd
  tail call void @llvm.prefetch.p0(ptr %i.gg, i32 0, i32 3, i32 1)
  %i.gh = and i64 %i.n, 7
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !23
  store i32 %i.gb, ptr %i.gi, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %.val9 = load i64, ptr %1, align 1, !tbaa !44
  %i.gk = mul i64 %.val9, -3523014627271114752
  %i.gl = xor i64 %i.gk, %i.ad
  %i.gm = sub i32 56, %i.h
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = lshr i64 %i.gl, %i.gn
  %i.gp = trunc i64 %i.go to i32
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.o, ptr %i.gq, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.gp, %bb.h ], [ %i.gj, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !83
  %i.gt = add i32 %i.gs, %.0257.i
  store i32 %i.gt, ptr %i.gr, align 8, !tbaa !83
  %i.gu = lshr i32 %.0257.i, 3
  %i.gv = and i32 %i.gu, 536870880
  %i.gw = zext nneg i32 %i.gv to i64              ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gw ; 5 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.gz = trunc i32 %.0257.i to i8                ; 2 uses
  %i.ha = insertelement <16 x i8> poison, i8 %i.gz, i64 0
  %i.hb = load <16 x i8>, ptr %i.gx, align 1, !tbaa !51
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.hd = load <16 x i8>, ptr %i.hc, align 1, !tbaa !51
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gw ; 2 uses
  %i.hf = zext i8 %i.gy to i32                    ; 3 uses
  %i.hg = shufflevector <16 x i8> %i.hb, <16 x i8> %i.hd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hh = shufflevector <16 x i8> %i.ha, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.hi = icmp eq <32 x i8> %i.hg, %i.hh
  %i.hj = bitcast <32 x i1> %i.hi to i32          ; 3 uses
  %.not = icmp eq i32 %i.hj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hk = tail call noundef i32 @llvm.fshr.i32(i32 %i.hj, i32 %i.hj, i32 range(i32 0, 64) %i.hf)
  %i.hl = zext i32 %i.hk to i64
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %bb.k
  %.0247.i33 = phi i64 [ %i.ib, %bb.k ], [ %i.hl, %.lr.ph34.preheader ] ; 3 uses
  %.0249.i32 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph34.preheader ] ; 4 uses
  %.0262.i31 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ae, %.lr.ph34.preheader ] ; 2 uses
  %i.hm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i33, i1 true)
  %i.hn = trunc nuw nsw i64 %i.hm to i32
  %i.ho = add nuw nsw i32 %i.hn, %i.hf
  %i.hp = and i32 %i.ho, 31                       ; 2 uses
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !23 ; 3 uses
  %i.ht = icmp eq i32 %i.hp, 0
  br i1 %i.ht, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph34
  %i.hu = icmp ult i32 %i.hs, %i.z
  br i1 %i.hu, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hv = zext i32 %i.hs to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.hv
  tail call void @llvm.prefetch.p0(ptr %i.hw, i32 0, i32 3, i32 1)
  %i.hx = add nuw nsw i64 %.0249.i32, 1
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i32
  store i32 %i.hs, ptr %i.hy, align 4, !tbaa !23
  %i.hz = add nsw i32 %.0262.i31, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph34
  %.1263.i.ph = phi i32 [ %.0262.i31, %.lr.ph34 ], [ %i.hz, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i32, %.lr.ph34 ], [ %i.hx, %bb.j ] ; 2 uses
  %i.ia = add nuw nsw i64 %.0247.i33, 4294967295
  %i.ib = and i64 %i.ia, %.0247.i33               ; 2 uses
  %i.ic = icmp ne i64 %i.ib, 0
  %i.id = icmp ne i32 %.1263.i.ph, 0
  %i.ie = select i1 %i.ic, i1 %i.id, i1 false
  br i1 %i.ie, label %.lr.ph34, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i32, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.if = add nuw nsw i32 %i.hf, 31
  %i.ig = and i32 %i.if, 31                       ; 2 uses
  %i.ih = icmp eq i32 %i.ig, 0
  %i.ii = select i1 %i.ih, i32 31, i32 0
  %i.ij = add nuw nsw i32 %i.ii, %i.ig            ; 2 uses
  %i.ik = trunc nuw nsw i32 %i.ij to i8
  store i8 %i.ik, ptr %i.gx, align 1, !tbaa !51
  %i.il = zext nneg i32 %i.ij to i64              ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.il
  store i8 %i.gz, ptr %i.im, align 1, !tbaa !51
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !40 ; 2 uses
  %i.ip = add i32 %i.io, 1
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !40
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.il
  store i32 %i.io, ptr %i.iq, align 4, !tbaa !23
  %.not44 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not44, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph40

.lr.ph40:                                         ; preds = %._crit_edge
  %i.ir = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.is = icmp ult ptr %1, %i.ir
  %i.it = getelementptr inbounds i8, ptr %2, i64 -3
  %i.iu = getelementptr inbounds i8, ptr %2, i64 -1
  %i.iv = add i32 %i.o, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph40, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i38 = phi i64 [ 0, %.lr.ph40 ], [ %i.ki, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i37 = phi i64 [ 3, %.lr.ph40 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i38
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !23 ; 2 uses
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.iy ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.0258.i37
  %i.jb = getelementptr inbounds i8, ptr %i.ja, i64 -3
  %.val4 = load i32, ptr %i.jb, align 1, !tbaa !23
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i37
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 -3
  %.val = load i32, ptr %i.jd, align 1, !tbaa !23
  %i.je = icmp eq i32 %.val4, %.val
  br i1 %i.je, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.is, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.iz, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i11 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i11, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jf = xor i64 %.val.i, %.val60.i
  %i.jg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jf, i1 true)
  %i.jh = lshr i64 %i.jg, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.iz, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.ji = icmp ult ptr %.049.i, %i.ir
  br i1 %i.ji, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.jj = xor i64 %.049.val.i, %.045.val.i
  %i.jk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jj, i1 true)
  %i.jl = lshr i64 %i.jk, 3
  %i.jm = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jl
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = sub i64 %i.jn, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.iz, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jp = icmp ult ptr %.251.i, %i.it
  br i1 %i.jp, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.jq = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.jq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jr = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.js = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.jr, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.js, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.jt = icmp ult ptr %.352.i, %i.iu
  br i1 %i.jt, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.ju = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.ju, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jv = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.jw = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.jv, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.jw, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.jx = icmp ult ptr %.453.i, %2
  br i1 %i.jx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jy = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.jz = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.ka = icmp eq i8 %i.jy, %i.jz
  %spec.select.idx.i = zext i1 %i.ka to i64
  %spec.select.i10 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i10, %bb.w ]
  %i.kb = ptrtoint ptr %.5.i to i64
  %i.kc = sub i64 %i.kb, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.jh, %bb.o ], [ %i.jo, %.thread63.i ], [ %i.kc, %bb.x ] ; 4 uses
  %i.kd = icmp ugt i64 %.2243.i, %.0258.i37
  br i1 %i.kd, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.ke = sub i32 %i.iv, %i.ix
  %i.kf = zext i32 %i.ke to i64
  store i64 %i.kf, ptr %3, align 8, !tbaa !44
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kh = icmp eq ptr %i.kg, %2
  br i1 %i.kh, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i37, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i37, %bb.l ] ; 2 uses
  %i.ki = add nuw i64 %.0248.i38, 1               ; 2 uses
  %exitcond58.not = icmp eq i64 %i.ki, %.0249.i.lcssa
  br i1 %exitcond58.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.l, !llvm.loop !10

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.3261.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL32ZSTD_RowFindBestMatch_noDict_5_6EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 7 uses
  %i.l = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = trunc i64 %i.n to i32                    ; 8 uses
  %i.p = load i32, ptr %i.i, align 8, !tbaa !80
  %i.q = shl nuw i32 1, %i.p                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !78   ; 2 uses
  %i.t = sub i32 %i.o, %i.s
  %i.u = icmp ugt i32 %i.t, %i.q
  %i.v = sub i32 %i.o, %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !54
  %.not.i = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not.i, i1 %i.u, i1 false
  %i.z = select i1 %i.y, i32 %i.v, i32 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !81
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL32ZSTD_RowFindBestMatch_noDict_6_4EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph27
  %indvars.iv48.unr = phi i64 [ %i.cb, %.lr.ph27 ], [ %indvars.iv.next49.prol, %.prol.loopexit.unr-lcssa ]
  %i.db = icmp eq i32 %i.ck, 1
  br i1 %i.db, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph27.new

.lr.ph27.new:                                     ; preds = %.prol.loopexit, %.lr.ph27.new
  %indvars.iv48 = phi i64 [ %indvars.iv.next49.1, %.lr.ph27.new ], [ %indvars.iv48.unr, %.prol.loopexit ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv48
  %.val6 = load i64, ptr %i.dc, align 1, !tbaa !44
  %i.dd = mul i64 %.val6, -3523014627193847808
  %i.de = xor i64 %i.dd, %i.cn
  %i.df = lshr i64 %i.de, %i.cp                   ; 2 uses
  %i.dg = trunc i64 %i.df to i32
  %i.dh = lshr i64 %i.df, 4
  %i.di = and i64 %i.dh, 268435440                ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.di
  tail call void @llvm.prefetch.p0(ptr %i.dj, i32 0, i32 3, i32 1)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.di
  tail call void @llvm.prefetch.p0(ptr %i.dk, i32 0, i32 3, i32 1)
  %i.dl = and i64 %indvars.iv48, 7
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dl
  store i32 %i.dg, ptr %i.dm, align 4, !tbaa !23
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next49
  %.val6.1 = load i64, ptr %i.dn, align 1, !tbaa !44
  %i.do = mul i64 %.val6.1, -3523014627193847808
  %i.dp = xor i64 %i.do, %i.cn
  %i.dq = lshr i64 %i.dp, %i.cp                   ; 2 uses
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = lshr i64 %i.dq, 4
  %i.dt = and i64 %i.ds, 268435440                ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.dt
  tail call void @llvm.prefetch.p0(ptr %i.du, i32 0, i32 3, i32 1)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.dt
  tail call void @llvm.prefetch.p0(ptr %i.dv, i32 0, i32 3, i32 1)
  %i.dw = and i64 %indvars.iv.next49, 7
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dw
  store i32 %i.dr, ptr %i.dx, align 4, !tbaa !23
  %indvars.iv.next49.1 = add nuw nsw i64 %indvars.iv48, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next49.1 to i32
  %exitcond51.not.1 = icmp eq i32 %i.cl, %lftr.wideiv.1
  br i1 %exitcond51.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph27.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph27.new, %bb.f, %bb.b
  %i.dy = phi i32 [ %i.h, %bb.b ], [ %i.bw, %bb.f ], [ %i.bw, %.lr.ph27.new ], [ %i.bw, %.prol.loopexit ]
  %i.dz = phi ptr [ %i.e, %bb.b ], [ %i.bx, %bb.f ], [ %i.bx, %.lr.ph27.new ], [ %i.bx, %.prol.loopexit ] ; 2 uses
  %i.ea = phi ptr [ %i.c, %bb.b ], [ %i.by, %bb.f ], [ %i.by, %.lr.ph27.new ], [ %i.by, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.ai, %bb.b ], [ %i.bz, %bb.f ], [ %i.bz, %.lr.ph27.new ], [ %i.bz, %.prol.loopexit ] ; 2 uses
  %i.eb = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.ec = icmp ult i32 %.0.i284.i, %i.o
  br i1 %i.ec, label %.lr.ph29, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph29:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.ed = sub i32 56, %i.dy
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = zext i32 %.0.i284.i to i64
  %i.eg = and i64 %i.n, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph29, %bb.g
  %indvars.iv52 = phi i64 [ %i.ef, %.lr.ph29 ], [ %indvars.iv.next53, %bb.g ] ; 4 uses
  %i.eh = load i64, ptr %i.ac, align 8, !tbaa !50
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv52
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.val7 = load i64, ptr %i.ej, align 1, !tbaa !44
  %i.ek = mul i64 %.val7, -3523014627193847808
  %i.el = xor i64 %i.ek, %i.eh
  %i.em = lshr i64 %i.el, %i.ee                   ; 2 uses
  %i.en = trunc i64 %i.em to i32
  %i.eo = lshr i64 %i.em, 4
  %i.ep = and i64 %i.eo, 268435440                ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ep
  tail call void @llvm.prefetch.p0(ptr %i.eq, i32 0, i32 3, i32 1)
  %i.er = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ep
  tail call void @llvm.prefetch.p0(ptr %i.er, i32 0, i32 3, i32 1)
  %i.es = trunc nuw i64 %indvars.iv52 to i32
  %i.et = and i64 %indvars.iv52, 7
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !23 ; 2 uses
  store i32 %i.en, ptr %i.eu, align 4, !tbaa !23
  %i.ew = lshr i32 %i.ev, 4
  %i.ex = and i32 %i.ew, 268435440
  %i.ey = zext nneg i32 %i.ex to i64              ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ey ; 3 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !51
  %i.fc = add i8 %i.fb, 15
  %i.fd = and i8 %i.fc, 15                        ; 2 uses
  %i.fe = zext nneg i8 %i.fd to i32
  %i.ff = icmp eq i8 %i.fd, 0
  %i.fg = select i1 %i.ff, i32 15, i32 0
  %i.fh = add nuw nsw i32 %i.fg, %i.fe            ; 2 uses
  %i.fi = trunc nuw nsw i32 %i.fh to i8
  store i8 %i.fi, ptr %i.fa, align 1, !tbaa !51
  %i.fj = trunc i32 %i.ev to i8
  %i.fk = zext nneg i32 %i.fh to i64              ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fk
  store i8 %i.fj, ptr %i.fl, align 1, !tbaa !51
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.fk
  store i32 %i.es, ptr %i.fm, align 4, !tbaa !23
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.fn = icmp samesign ult i64 %indvars.iv.next53, %i.eg
  br i1 %i.fn, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.o, ptr %i.ah, align 4, !tbaa !40
  %i.fo = and i64 %i.n, 4294967295
  %i.fp = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %.val8 = load i64, ptr %i.fq, align 1, !tbaa !44
  %i.fr = mul i64 %.val8, -3523014627193847808
  %i.fs = xor i64 %i.fr, %i.ad
  %i.ft = sub i32 56, %i.h
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = lshr i64 %i.fs, %i.fu                   ; 2 uses
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = lshr i64 %i.fv, 4
  %i.fy = and i64 %i.fx, 268435440                ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fy
  tail call void @llvm.prefetch.p0(ptr %i.fz, i32 0, i32 3, i32 1)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.fy
  tail call void @llvm.prefetch.p0(ptr %i.ga, i32 0, i32 3, i32 1)
  %i.gb = and i64 %i.n, 7
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gb ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !23
  store i32 %i.fw, ptr %i.gc, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %.val9 = load i64, ptr %1, align 1, !tbaa !44
  %i.ge = mul i64 %.val9, -3523014627193847808
  %i.gf = xor i64 %i.ge, %i.ad
  %i.gg = sub i32 56, %i.h
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = lshr i64 %i.gf, %i.gh
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.o, ptr %i.gk, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.gj, %bb.h ], [ %i.gd, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !83
  %i.gn = add i32 %i.gm, %.0257.i
  store i32 %i.gn, ptr %i.gl, align 8, !tbaa !83
  %i.go = lshr i32 %.0257.i, 4
  %i.gp = and i32 %i.go, 268435440
  %i.gq = zext nneg i32 %i.gp to i64              ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gq ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gq ; 4 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !51  ; 2 uses
  %i.gu = zext i8 %i.gt to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.gv = trunc i32 %.0257.i to i8                ; 2 uses
  %i.gw = insertelement <16 x i8> poison, i8 %i.gv, i64 0
  %i.gx = shufflevector <16 x i8> %i.gw, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.gy = load <16 x i8>, ptr %i.gs, align 1, !tbaa !51
  %i.gz = icmp eq <16 x i8> %i.gy, %i.gx
  %i.ha = bitcast <16 x i1> %i.gz to i16          ; 3 uses
  %.not = icmp eq i16 %i.ha, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hb = zext i8 %i.gt to i16
  %i.hc = tail call noundef i16 @llvm.fshr.i16(i16 %i.ha, i16 %i.ha, i16 %i.hb)
  %i.hd = zext i16 %i.hc to i64
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %bb.k
  %.0247.i33 = phi i64 [ %i.ht, %bb.k ], [ %i.hd, %.lr.ph34.preheader ] ; 3 uses
  %.0249.i32 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph34.preheader ] ; 4 uses
  %.0262.i31 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ae, %.lr.ph34.preheader ] ; 2 uses
  %i.he = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i33, i1 true)
  %i.hf = trunc nuw nsw i64 %i.he to i32
  %i.hg = add nuw nsw i32 %i.hf, %i.gu
  %i.hh = and i32 %i.hg, 15                       ; 2 uses
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !23 ; 3 uses
  %i.hl = icmp eq i32 %i.hh, 0
  br i1 %i.hl, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph34
  %i.hm = icmp ult i32 %i.hk, %i.z
  br i1 %i.hm, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hn = zext i32 %i.hk to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.hn
  tail call void @llvm.prefetch.p0(ptr %i.ho, i32 0, i32 3, i32 1)
  %i.hp = add nuw nsw i64 %.0249.i32, 1
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i32
  store i32 %i.hk, ptr %i.hq, align 4, !tbaa !23
  %i.hr = add nsw i32 %.0262.i31, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph34
  %.1263.i.ph = phi i32 [ %.0262.i31, %.lr.ph34 ], [ %i.hr, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i32, %.lr.ph34 ], [ %i.hp, %bb.j ] ; 2 uses
  %i.hs = add nuw nsw i64 %.0247.i33, 65535
  %i.ht = and i64 %i.hs, %.0247.i33               ; 2 uses
  %i.hu = icmp ne i64 %i.ht, 0
  %i.hv = icmp ne i32 %.1263.i.ph, 0
  %i.hw = select i1 %i.hu, i1 %i.hv, i1 false
  br i1 %i.hw, label %.lr.ph34, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i32, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.hx = add nuw nsw i32 %i.gu, 15
  %i.hy = and i32 %i.hx, 15                       ; 2 uses
  %i.hz = icmp eq i32 %i.hy, 0
  %i.ia = select i1 %i.hz, i32 15, i32 0
  %i.ib = add nuw nsw i32 %i.ia, %i.hy            ; 2 uses
  %i.ic = trunc nuw nsw i32 %i.ib to i8
  store i8 %i.ic, ptr %i.gs, align 1, !tbaa !51
  %i.id = zext nneg i32 %i.ib to i64              ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.id
  store i8 %i.gv, ptr %i.ie, align 1, !tbaa !51
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !40 ; 2 uses
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr %i.if, align 4, !tbaa !40
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.id
  store i32 %i.ig, ptr %i.ii, align 4, !tbaa !23
  %.not44 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not44, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph40

.lr.ph40:                                         ; preds = %._crit_edge
  %i.ij = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.ik = icmp ult ptr %1, %i.ij
  %i.il = getelementptr inbounds i8, ptr %2, i64 -3
  %i.im = getelementptr inbounds i8, ptr %2, i64 -1
  %i.in = add i32 %i.o, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph40, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i38 = phi i64 [ 0, %.lr.ph40 ], [ %i.ka, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i37 = phi i64 [ 3, %.lr.ph40 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i38
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !23 ; 2 uses
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.iq ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %.0258.i37
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 -3
  %.val4 = load i32, ptr %i.it, align 1, !tbaa !23
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i37
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -3
  %.val = load i32, ptr %i.iv, align 1, !tbaa !23
  %i.iw = icmp eq i32 %.val4, %.val
  br i1 %i.iw, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.ik, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.ir, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i11 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i11, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ix = xor i64 %.val.i, %.val60.i
  %i.iy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ix, i1 true)
  %i.iz = lshr i64 %i.iy, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.ir, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.ja = icmp ult ptr %.049.i, %i.ij
  br i1 %i.ja, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.jb = xor i64 %.049.val.i, %.045.val.i
  %i.jc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jb, i1 true)
  %i.jd = lshr i64 %i.jc, 3
  %i.je = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jd
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = sub i64 %i.jf, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.ir, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jh = icmp ult ptr %.251.i, %i.il
  br i1 %i.jh, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.ji = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.ji, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jj = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.jk = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.jj, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.jk, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.jl = icmp ult ptr %.352.i, %i.im
  br i1 %i.jl, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.jm = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.jm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jn = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.jo = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.jn, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.jo, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.jp = icmp ult ptr %.453.i, %2
  br i1 %i.jp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jq = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.jr = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.js = icmp eq i8 %i.jq, %i.jr
  %spec.select.idx.i = zext i1 %i.js to i64
  %spec.select.i10 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i10, %bb.w ]
  %i.jt = ptrtoint ptr %.5.i to i64
  %i.ju = sub i64 %i.jt, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.iz, %bb.o ], [ %i.jg, %.thread63.i ], [ %i.ju, %bb.x ] ; 4 uses
  %i.jv = icmp ugt i64 %.2243.i, %.0258.i37
  br i1 %i.jv, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.jw = sub i32 %i.in, %i.ip
  %i.jx = zext i32 %i.jw to i64
  store i64 %i.jx, ptr %3, align 8, !tbaa !44
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.jz = icmp eq ptr %i.jy, %2
  br i1 %i.jz, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i37, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i37, %bb.l ] ; 2 uses
  %i.ka = add nuw i64 %.0248.i38, 1               ; 2 uses
  %exitcond55.not = icmp eq i64 %i.ka, %.0249.i.lcssa
  br i1 %exitcond55.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.l, !llvm.loop !10

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.3261.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL32ZSTD_RowFindBestMatch_noDict_6_5EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 9 uses
  %i.l = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = trunc i64 %i.n to i32                    ; 8 uses
  %i.p = load i32, ptr %i.i, align 8, !tbaa !80
  %i.q = shl nuw i32 1, %i.p                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !78   ; 2 uses
  %i.t = sub i32 %i.o, %i.s
  %i.u = icmp ugt i32 %i.t, %i.q
  %i.v = sub i32 %i.o, %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !54
  %.not.i = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not.i, i1 %i.u, i1 false
  %i.z = select i1 %i.y, i32 %i.v, i32 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !81
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstdL32ZSTD_RowFindBestMatch_noDict_6_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %i.dg = xor i64 %i.df, %i.co
  %i.dh = lshr i64 %i.dg, %i.cq                   ; 2 uses
  %i.di = trunc i64 %i.dh to i32
  %i.dj = lshr i64 %i.dh, 3
  %i.dk = and i64 %i.dj, 536870880                ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dk ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dl, i32 0, i32 3, i32 1)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dm, i32 0, i32 3, i32 1)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dk
  tail call void @llvm.prefetch.p0(ptr %i.dn, i32 0, i32 3, i32 1)
  %i.do = and i64 %indvars.iv48, 7
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.do
  store i32 %i.di, ptr %i.dp, align 4, !tbaa !23
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next49
  %.val6.1 = load i64, ptr %i.dq, align 1, !tbaa !44
  %i.dr = mul i64 %.val6.1, -3523014627193847808
  %i.ds = xor i64 %i.dr, %i.co
  %i.dt = lshr i64 %i.ds, %i.cq                   ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %i.dv = lshr i64 %i.dt, 3
  %i.dw = and i64 %i.dv, 536870880                ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dw ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dx, i32 0, i32 3, i32 1)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dy, i32 0, i32 3, i32 1)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dw
  tail call void @llvm.prefetch.p0(ptr %i.dz, i32 0, i32 3, i32 1)
  %i.ea = and i64 %indvars.iv.next49, 7
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ea
  store i32 %i.du, ptr %i.eb, align 4, !tbaa !23
  %indvars.iv.next49.1 = add nuw nsw i64 %indvars.iv48, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next49.1 to i32
  %exitcond51.not.1 = icmp eq i32 %i.cm, %lftr.wideiv.1
  br i1 %exitcond51.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph27.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph27.new, %bb.f, %bb.b
  %i.ec = phi i32 [ %i.h, %bb.b ], [ %i.bx, %bb.f ], [ %i.bx, %.lr.ph27.new ], [ %i.bx, %.prol.loopexit ]
  %i.ed = phi ptr [ %i.e, %bb.b ], [ %i.by, %bb.f ], [ %i.by, %.lr.ph27.new ], [ %i.by, %.prol.loopexit ] ; 2 uses
  %i.ee = phi ptr [ %i.c, %bb.b ], [ %i.bz, %bb.f ], [ %i.bz, %.lr.ph27.new ], [ %i.bz, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.ai, %bb.b ], [ %i.ca, %bb.f ], [ %i.ca, %.lr.ph27.new ], [ %i.ca, %.prol.loopexit ] ; 2 uses
  %i.ef = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.eg = icmp ult i32 %.0.i284.i, %i.o
  br i1 %i.eg, label %.lr.ph29, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph29:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.eh = sub i32 56, %i.ec
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = zext i32 %.0.i284.i to i64
  %i.ek = and i64 %i.n, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph29, %bb.g
  %indvars.iv52 = phi i64 [ %i.ej, %.lr.ph29 ], [ %indvars.iv.next53, %bb.g ] ; 4 uses
  %i.el = load i64, ptr %i.ac, align 8, !tbaa !50
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 %indvars.iv52
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.val7 = load i64, ptr %i.en, align 1, !tbaa !44
  %i.eo = mul i64 %.val7, -3523014627193847808
  %i.ep = xor i64 %i.eo, %i.el
  %i.eq = lshr i64 %i.ep, %i.ei                   ; 2 uses
  %i.er = trunc i64 %i.eq to i32
  %i.es = lshr i64 %i.eq, 3
  %i.et = and i64 %i.es, 536870880                ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.et ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.eu, i32 0, i32 3, i32 1)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ev, i32 0, i32 3, i32 1)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.et
  tail call void @llvm.prefetch.p0(ptr %i.ew, i32 0, i32 3, i32 1)
  %i.ex = trunc nuw i64 %indvars.iv52 to i32
  %i.ey = and i64 %indvars.iv52, 7
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !23 ; 2 uses
  store i32 %i.er, ptr %i.ez, align 4, !tbaa !23
  %i.fb = lshr i32 %i.fa, 3
  %i.fc = and i32 %i.fb, 536870880
  %i.fd = zext nneg i32 %i.fc to i64              ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.fd ; 3 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !51
  %i.fh = add i8 %i.fg, 31
  %i.fi = and i8 %i.fh, 31                        ; 2 uses
  %i.fj = zext nneg i8 %i.fi to i32
  %i.fk = icmp eq i8 %i.fi, 0
  %i.fl = select i1 %i.fk, i32 31, i32 0
  %i.fm = add nuw nsw i32 %i.fl, %i.fj            ; 2 uses
  %i.fn = trunc nuw nsw i32 %i.fm to i8
  store i8 %i.fn, ptr %i.ff, align 1, !tbaa !51
  %i.fo = trunc i32 %i.fa to i8
  %i.fp = zext nneg i32 %i.fm to i64              ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fp
  store i8 %i.fo, ptr %i.fq, align 1, !tbaa !51
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fp
  store i32 %i.ex, ptr %i.fr, align 4, !tbaa !23
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.fs = icmp samesign ult i64 %indvars.iv.next53, %i.ek
  br i1 %i.fs, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.o, ptr %i.ah, align 4, !tbaa !40
  %i.ft = and i64 %i.n, 4294967295
  %i.fu = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %.val8 = load i64, ptr %i.fv, align 1, !tbaa !44
  %i.fw = mul i64 %.val8, -3523014627193847808
  %i.fx = xor i64 %i.fw, %i.ad
  %i.fy = sub i32 56, %i.h
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = lshr i64 %i.fx, %i.fz                   ; 2 uses
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = lshr i64 %i.ga, 3
  %i.gd = and i64 %i.gc, 536870880                ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gd ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ge, i32 0, i32 3, i32 1)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.gf, i32 0, i32 3, i32 1)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gd
  tail call void @llvm.prefetch.p0(ptr %i.gg, i32 0, i32 3, i32 1)
  %i.gh = and i64 %i.n, 7
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !23
  store i32 %i.gb, ptr %i.gi, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %.val9 = load i64, ptr %1, align 1, !tbaa !44
  %i.gk = mul i64 %.val9, -3523014627193847808
  %i.gl = xor i64 %i.gk, %i.ad
  %i.gm = sub i32 56, %i.h
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = lshr i64 %i.gl, %i.gn
  %i.gp = trunc i64 %i.go to i32
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.o, ptr %i.gq, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.gp, %bb.h ], [ %i.gj, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !83
  %i.gt = add i32 %i.gs, %.0257.i
  store i32 %i.gt, ptr %i.gr, align 8, !tbaa !83
  %i.gu = lshr i32 %.0257.i, 3
  %i.gv = and i32 %i.gu, 536870880
  %i.gw = zext nneg i32 %i.gv to i64              ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gw ; 5 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.gz = trunc i32 %.0257.i to i8                ; 2 uses
  %i.ha = insertelement <16 x i8> poison, i8 %i.gz, i64 0
  %i.hb = load <16 x i8>, ptr %i.gx, align 1, !tbaa !51
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.hd = load <16 x i8>, ptr %i.hc, align 1, !tbaa !51
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gw ; 2 uses
  %i.hf = zext i8 %i.gy to i32                    ; 3 uses
  %i.hg = shufflevector <16 x i8> %i.hb, <16 x i8> %i.hd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hh = shufflevector <16 x i8> %i.ha, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.hi = icmp eq <32 x i8> %i.hg, %i.hh
  %i.hj = bitcast <32 x i1> %i.hi to i32          ; 3 uses
  %.not = icmp eq i32 %i.hj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hk = tail call noundef i32 @llvm.fshr.i32(i32 %i.hj, i32 %i.hj, i32 range(i32 0, 64) %i.hf)
  %i.hl = zext i32 %i.hk to i64
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %bb.k
  %.0247.i33 = phi i64 [ %i.ib, %bb.k ], [ %i.hl, %.lr.ph34.preheader ] ; 3 uses
  %.0249.i32 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph34.preheader ] ; 4 uses
  %.0262.i31 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ae, %.lr.ph34.preheader ] ; 2 uses
  %i.hm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i33, i1 true)
  %i.hn = trunc nuw nsw i64 %i.hm to i32
  %i.ho = add nuw nsw i32 %i.hn, %i.hf
  %i.hp = and i32 %i.ho, 31                       ; 2 uses
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !23 ; 3 uses
  %i.ht = icmp eq i32 %i.hp, 0
  br i1 %i.ht, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph34
  %i.hu = icmp ult i32 %i.hs, %i.z
  br i1 %i.hu, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hv = zext i32 %i.hs to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.hv
  tail call void @llvm.prefetch.p0(ptr %i.hw, i32 0, i32 3, i32 1)
  %i.hx = add nuw nsw i64 %.0249.i32, 1
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i32
  store i32 %i.hs, ptr %i.hy, align 4, !tbaa !23
  %i.hz = add nsw i32 %.0262.i31, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph34
  %.1263.i.ph = phi i32 [ %.0262.i31, %.lr.ph34 ], [ %i.hz, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i32, %.lr.ph34 ], [ %i.hx, %bb.j ] ; 2 uses
  %i.ia = add nuw nsw i64 %.0247.i33, 4294967295
  %i.ib = and i64 %i.ia, %.0247.i33               ; 2 uses
  %i.ic = icmp ne i64 %i.ib, 0
  %i.id = icmp ne i32 %.1263.i.ph, 0
  %i.ie = select i1 %i.ic, i1 %i.id, i1 false
  br i1 %i.ie, label %.lr.ph34, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i32, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.if = add nuw nsw i32 %i.hf, 31
  %i.ig = and i32 %i.if, 31                       ; 2 uses
  %i.ih = icmp eq i32 %i.ig, 0
  %i.ii = select i1 %i.ih, i32 31, i32 0
  %i.ij = add nuw nsw i32 %i.ii, %i.ig            ; 2 uses
  %i.ik = trunc nuw nsw i32 %i.ij to i8
  store i8 %i.ik, ptr %i.gx, align 1, !tbaa !51
  %i.il = zext nneg i32 %i.ij to i64              ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.il
  store i8 %i.gz, ptr %i.im, align 1, !tbaa !51
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !40 ; 2 uses
  %i.ip = add i32 %i.io, 1
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !40
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.il
  store i32 %i.io, ptr %i.iq, align 4, !tbaa !23
  %.not44 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not44, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph40

.lr.ph40:                                         ; preds = %._crit_edge
  %i.ir = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.is = icmp ult ptr %1, %i.ir
  %i.it = getelementptr inbounds i8, ptr %2, i64 -3
  %i.iu = getelementptr inbounds i8, ptr %2, i64 -1
  %i.iv = add i32 %i.o, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph40, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i38 = phi i64 [ 0, %.lr.ph40 ], [ %i.ki, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i37 = phi i64 [ 3, %.lr.ph40 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i38
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !23 ; 2 uses
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.iy ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.0258.i37
  %i.jb = getelementptr inbounds i8, ptr %i.ja, i64 -3
  %.val4 = load i32, ptr %i.jb, align 1, !tbaa !23
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i37
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 -3
  %.val = load i32, ptr %i.jd, align 1, !tbaa !23
  %i.je = icmp eq i32 %.val4, %.val
  br i1 %i.je, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.is, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.iz, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i11 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i11, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jf = xor i64 %.val.i, %.val60.i
  %i.jg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jf, i1 true)
  %i.jh = lshr i64 %i.jg, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.iz, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.ji = icmp ult ptr %.049.i, %i.ir
  br i1 %i.ji, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.jj = xor i64 %.049.val.i, %.045.val.i
  %i.jk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jj, i1 true)
  %i.jl = lshr i64 %i.jk, 3
  %i.jm = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jl
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = sub i64 %i.jn, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.iz, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jp = icmp ult ptr %.251.i, %i.it
  br i1 %i.jp, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.jq = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.jq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jr = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.js = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.jr, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.js, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.jt = icmp ult ptr %.352.i, %i.iu
  br i1 %i.jt, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.ju = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.ju, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jv = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.jw = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.jv, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.jw, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.jx = icmp ult ptr %.453.i, %2
  br i1 %i.jx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jy = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.jz = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.ka = icmp eq i8 %i.jy, %i.jz
  %spec.select.idx.i = zext i1 %i.ka to i64
  %spec.select.i10 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i10, %bb.w ]
  %i.kb = ptrtoint ptr %.5.i to i64
  %i.kc = sub i64 %i.kb, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.jh, %bb.o ], [ %i.jo, %.thread63.i ], [ %i.kc, %bb.x ] ; 4 uses
  %i.kd = icmp ugt i64 %.2243.i, %.0258.i37
  br i1 %i.kd, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.ke = sub i32 %i.iv, %i.ix
  %i.kf = zext i32 %i.ke to i64
  store i64 %i.kf, ptr %3, align 8, !tbaa !44
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kh = icmp eq ptr %i.kg, %2
  br i1 %i.kh, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i37, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i37, %bb.l ] ; 2 uses
  %i.ki = add nuw i64 %.0248.i38, 1               ; 2 uses
  %exitcond58.not = icmp eq i64 %i.ki, %.0249.i.lcssa
  br i1 %exitcond58.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.l, !llvm.loop !10

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.3261.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL32ZSTD_RowFindBestMatch_noDict_6_6EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 7 uses
  %i.l = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = trunc i64 %i.n to i32                    ; 8 uses
  %i.p = load i32, ptr %i.i, align 8, !tbaa !80
  %i.q = shl nuw i32 1, %i.p                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !78   ; 2 uses
  %i.t = sub i32 %i.o, %i.s
  %i.u = icmp ugt i32 %i.t, %i.q
  %i.v = sub i32 %i.o, %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !54
  %.not.i = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not.i, i1 %i.u, i1 false
  %i.z = select i1 %i.y, i32 %i.v, i32 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !81
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL33ZSTD_RowFindBestMatch_extDict_4_4EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %indvars.iv50.unr = phi i64 [ %i.ci, %.lr.ph29 ], [ %indvars.iv.next51.prol, %.prol.loopexit.unr-lcssa ]
  %i.di = icmp eq i32 %i.cr, 1
  br i1 %i.di, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph29.new

.lr.ph29.new:                                     ; preds = %.prol.loopexit, %.lr.ph29.new
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.lr.ph29.new ], [ %indvars.iv50.unr, %.prol.loopexit ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv50
  %.val8 = load i32, ptr %i.dj, align 1, !tbaa !23
  %i.dk = mul i32 %.val8, -1640531535
  %i.dl = xor i32 %i.dk, %i.cv
  %i.dm = lshr i32 %i.dl, %i.cw                   ; 2 uses
  %i.dn = lshr i32 %i.dm, 4
  %i.do = and i32 %i.dn, 268435440
  %i.dp = zext nneg i32 %i.do to i64              ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.dp
  tail call void @llvm.prefetch.p0(ptr %i.dq, i32 0, i32 3, i32 1)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.dp
  tail call void @llvm.prefetch.p0(ptr %i.dr, i32 0, i32 3, i32 1)
  %i.ds = and i64 %indvars.iv50, 7
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ds
  store i32 %i.dm, ptr %i.dt, align 4, !tbaa !23
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next51
  %.val8.1 = load i32, ptr %i.du, align 1, !tbaa !23
  %i.dv = mul i32 %.val8.1, -1640531535
  %i.dw = xor i32 %i.dv, %i.cv
  %i.dx = lshr i32 %i.dw, %i.cw                   ; 2 uses
  %i.dy = lshr i32 %i.dx, 4
  %i.dz = and i32 %i.dy, 268435440
  %i.ea = zext nneg i32 %i.dz to i64              ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ea
  tail call void @llvm.prefetch.p0(ptr %i.eb, i32 0, i32 3, i32 1)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ea
  tail call void @llvm.prefetch.p0(ptr %i.ec, i32 0, i32 3, i32 1)
  %i.ed = and i64 %indvars.iv.next51, 7
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ed
  store i32 %i.dx, ptr %i.ee, align 4, !tbaa !23
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next51.1 to i32
  %exitcond53.not.1 = icmp eq i32 %i.cs, %lftr.wideiv.1
  br i1 %exitcond53.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph29.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph29.new, %bb.f, %bb.b
  %i.ef = phi i32 [ %i.h, %bb.b ], [ %i.cd, %bb.f ], [ %i.cd, %.lr.ph29.new ], [ %i.cd, %.prol.loopexit ]
  %i.eg = phi ptr [ %i.e, %bb.b ], [ %i.ce, %bb.f ], [ %i.ce, %.lr.ph29.new ], [ %i.ce, %.prol.loopexit ] ; 2 uses
  %i.eh = phi ptr [ %i.c, %bb.b ], [ %i.cf, %bb.f ], [ %i.cf, %.lr.ph29.new ], [ %i.cf, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.ap, %bb.b ], [ %i.cg, %bb.f ], [ %i.cg, %.lr.ph29.new ], [ %i.cg, %.prol.loopexit ] ; 2 uses
  %i.ei = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.ej = icmp ult i32 %.0.i284.i, %i.v
  br i1 %i.ej, label %.lr.ph31, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph31:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.ek = sub i32 24, %i.ef
  %i.el = zext i32 %.0.i284.i to i64
  %i.em = and i64 %i.u, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph31, %bb.g
  %indvars.iv54 = phi i64 [ %i.el, %.lr.ph31 ], [ %indvars.iv.next55, %bb.g ] ; 4 uses
  %i.en = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv54
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = trunc i64 %i.en to i32
  %.val9 = load i32, ptr %i.ep, align 1, !tbaa !23
  %i.er = mul i32 %.val9, -1640531535
  %i.es = xor i32 %i.er, %i.eq
  %i.et = lshr i32 %i.es, %i.ek                   ; 2 uses
  %i.eu = lshr i32 %i.et, 4
  %i.ev = and i32 %i.eu, 268435440
  %i.ew = zext nneg i32 %i.ev to i64              ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ew
  tail call void @llvm.prefetch.p0(ptr %i.ex, i32 0, i32 3, i32 1)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ew
  tail call void @llvm.prefetch.p0(ptr %i.ey, i32 0, i32 3, i32 1)
  %i.ez = trunc nuw i64 %indvars.iv54 to i32
  %i.fa = and i64 %indvars.iv54, 7
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fa ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !23 ; 2 uses
  store i32 %i.et, ptr %i.fb, align 4, !tbaa !23
  %i.fd = lshr i32 %i.fc, 4
  %i.fe = and i32 %i.fd, 268435440
  %i.ff = zext nneg i32 %i.fe to i64              ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ff ; 3 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !51
  %i.fj = add i8 %i.fi, 15
  %i.fk = and i8 %i.fj, 15                        ; 2 uses
  %i.fl = zext nneg i8 %i.fk to i32
  %i.fm = icmp eq i8 %i.fk, 0
  %i.fn = select i1 %i.fm, i32 15, i32 0
  %i.fo = add nuw nsw i32 %i.fn, %i.fl            ; 2 uses
  %i.fp = trunc nuw nsw i32 %i.fo to i8
  store i8 %i.fp, ptr %i.fh, align 1, !tbaa !51
  %i.fq = trunc i32 %i.fc to i8
  %i.fr = zext nneg i32 %i.fo to i64              ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fr
  store i8 %i.fq, ptr %i.fs, align 1, !tbaa !51
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fr
  store i32 %i.ez, ptr %i.ft, align 4, !tbaa !23
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.fu = icmp samesign ult i64 %indvars.iv.next55, %i.em
  br i1 %i.fu, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.v, ptr %i.ao, align 4, !tbaa !40
  %i.fv = and i64 %i.u, 4294967295
  %i.fw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = trunc i64 %i.ak to i32
  %.val10 = load i32, ptr %i.fx, align 1, !tbaa !23
  %i.fz = mul i32 %.val10, -1640531535
  %i.ga = xor i32 %i.fz, %i.fy
  %i.gb = sub i32 24, %i.h
  %i.gc = lshr i32 %i.ga, %i.gb                   ; 2 uses
  %i.gd = lshr i32 %i.gc, 4
  %i.ge = and i32 %i.gd, 268435440
  %i.gf = zext nneg i32 %i.ge to i64              ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gf
  tail call void @llvm.prefetch.p0(ptr %i.gg, i32 0, i32 3, i32 1)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gf
  tail call void @llvm.prefetch.p0(ptr %i.gh, i32 0, i32 3, i32 1)
  %i.gi = and i64 %i.u, 7
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !23
  store i32 %i.gc, ptr %i.gj, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %i.gl = trunc i64 %i.ak to i32
  %.val11 = load i32, ptr %1, align 1, !tbaa !23
  %i.gm = mul i32 %.val11, -1640531535
  %i.gn = xor i32 %i.gm, %i.gl
  %i.go = sub i32 24, %i.h
  %i.gp = lshr i32 %i.gn, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.v, ptr %i.gq, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.gp, %bb.h ], [ %i.gk, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !83
  %i.gt = add i32 %i.gs, %.0257.i
  store i32 %i.gt, ptr %i.gr, align 8, !tbaa !83
  %i.gu = lshr i32 %.0257.i, 4
  %i.gv = and i32 %i.gu, 268435440
  %i.gw = zext nneg i32 %i.gv to i64              ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gw ; 4 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !51  ; 2 uses
  %i.ha = zext i8 %i.gz to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hb = trunc i32 %.0257.i to i8                ; 2 uses
  %i.hc = insertelement <16 x i8> poison, i8 %i.hb, i64 0
  %i.hd = shufflevector <16 x i8> %i.hc, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.he = load <16 x i8>, ptr %i.gy, align 1, !tbaa !51
  %i.hf = icmp eq <16 x i8> %i.he, %i.hd
  %i.hg = bitcast <16 x i1> %i.hf to i16          ; 3 uses
  %.not = icmp eq i16 %i.hg, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hh = zext i8 %i.gz to i16
  %i.hi = tail call noundef i16 @llvm.fshr.i16(i16 %i.hg, i16 %i.hg, i16 %i.hh)
  %i.hj = zext i16 %i.hi to i64
  br label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %bb.k
  %.0247.i35 = phi i64 [ %i.hz, %bb.k ], [ %i.hj, %.lr.ph36.preheader ] ; 3 uses
  %.0249.i34 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph36.preheader ] ; 4 uses
  %.0262.i33 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.al, %.lr.ph36.preheader ] ; 2 uses
  %i.hk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i35, i1 true)
  %i.hl = trunc nuw nsw i64 %i.hk to i32
  %i.hm = add nuw nsw i32 %i.hl, %i.ha
  %i.hn = and i32 %i.hm, 15                       ; 2 uses
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !23 ; 4 uses
  %i.hr = icmp eq i32 %i.hn, 0
  br i1 %i.hr, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph36
  %i.hs = icmp ult i32 %i.hq, %i.ag
  br i1 %i.hs, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not276.i = icmp ult i32 %i.hq, %i.o
  %i.ht = zext i32 %i.hq to i64
  %. = select i1 %.not276.i, ptr %i.m, ptr %i.k
  %i.hu = getelementptr inbounds nuw i8, ptr %., i64 %i.ht
  tail call void @llvm.prefetch.p0(ptr %i.hu, i32 0, i32 3, i32 1)
  %i.hv = add nuw nsw i64 %.0249.i34, 1
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i34
  store i32 %i.hq, ptr %i.hw, align 4, !tbaa !23
  %i.hx = add nsw i32 %.0262.i33, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph36
  %.1263.i.ph = phi i32 [ %.0262.i33, %.lr.ph36 ], [ %i.hx, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i34, %.lr.ph36 ], [ %i.hv, %bb.j ] ; 2 uses
  %i.hy = add nuw nsw i64 %.0247.i35, 65535
  %i.hz = and i64 %i.hy, %.0247.i35               ; 2 uses
  %i.ia = icmp ne i64 %i.hz, 0
  %i.ib = icmp ne i32 %.1263.i.ph, 0
  %i.ic = select i1 %i.ia, i1 %i.ib, i1 false
  br i1 %i.ic, label %.lr.ph36, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i34, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.id = add nuw nsw i32 %i.ha, 15
  %i.ie = and i32 %i.id, 15                       ; 2 uses
  %i.if = icmp eq i32 %i.ie, 0
  %i.ig = select i1 %i.if, i32 15, i32 0
  %i.ih = add nuw nsw i32 %i.ig, %i.ie            ; 2 uses
  %i.ii = trunc nuw nsw i32 %i.ih to i8
  store i8 %i.ii, ptr %i.gy, align 1, !tbaa !51
  %i.ij = zext nneg i32 %i.ih to i64              ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ij
  store i8 %i.hb, ptr %i.ik, align 1, !tbaa !51
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !40 ; 2 uses
  %i.in = add i32 %i.im, 1
  store i32 %i.in, ptr %i.il, align 4, !tbaa !40
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.ij
  store i32 %i.im, ptr %i.io, align 4, !tbaa !23
  %.not46 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not46, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge
  %i.ip = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.iq = icmp ult ptr %1, %i.ip
  %i.ir = getelementptr inbounds i8, ptr %2, i64 -3
  %i.is = getelementptr inbounds i8, ptr %2, i64 -1
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.iu = add i32 %i.v, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph42, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i40 = phi i64 [ 0, %.lr.ph42 ], [ %i.km, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i39 = phi i64 [ 3, %.lr.ph42 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 6 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i40
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !23 ; 3 uses
  %.not278.i = icmp ult i32 %i.iw, %i.o
  %i.ix = zext i32 %i.iw to i64                   ; 2 uses
  br i1 %.not278.i, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.iy = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ix ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.0258.i39
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 -3
  %.val6 = load i32, ptr %i.ja, align 1, !tbaa !23
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i39
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 -3
  %.val5 = load i32, ptr %i.jc, align 1, !tbaa !23
  %i.jd = icmp eq i32 %.val6, %.val5
  br i1 %i.jd, label %bb.n, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %i.iq, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %.val60.i = load i64, ptr %i.iy, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i13 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i13, label %.preheader.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.je = xor i64 %.val.i, %.val60.i
  %i.jf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.je, i1 true)
  %i.jg = lshr i64 %i.jf, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.o, %bb.q
  %.pn.i = phi ptr [ %.049.i, %bb.q ], [ %1, %bb.o ]
  %.pn67.i = phi ptr [ %.045.i, %bb.q ], [ %i.iy, %bb.o ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jh = icmp ult ptr %.049.i, %i.ip
  br i1 %i.jh, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.q
  %i.ji = xor i64 %.049.val.i, %.045.val.i
  %i.jj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ji, i1 true)
  %i.jk = lshr i64 %i.jj, 3
  %i.jl = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jk
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = sub i64 %i.jm, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.n
  %.251.i = phi ptr [ %1, %bb.n ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.iy, %bb.n ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jo = icmp ult ptr %.251.i, %i.ir
  br i1 %i.jo, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.jp = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.jp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jq = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.jr = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.loopexit.i
  %.352.i = phi ptr [ %i.jq, %bb.s ], [ %.251.i, %bb.r ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.jr, %bb.s ], [ %.247.i, %bb.r ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.js = icmp ult ptr %.352.i, %i.is
  br i1 %i.js, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.jt = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.jt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ju = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.jv = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.453.i = phi ptr [ %i.ju, %bb.v ], [ %.352.i, %bb.u ], [ %.352.i, %bb.t ] ; 4 uses
  %.4.i = phi ptr [ %i.jv, %bb.v ], [ %.348.i, %bb.u ], [ %.348.i, %bb.t ]
  %i.jw = icmp ult ptr %.453.i, %2
  br i1 %i.jw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.jx = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.jy = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.jz = icmp eq i8 %i.jx, %i.jy
  %spec.select.idx.i = zext i1 %i.jz to i64
  %spec.select.i12 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.5.i = phi ptr [ %.453.i, %bb.w ], [ %spec.select.i12, %bb.x ]
  %i.ka = ptrtoint ptr %.5.i to i64
  %i.kb = sub i64 %i.ka, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

bb.z:                                             ; preds = %bb.l
  %i.kc = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ix ; 2 uses
  %.val4 = load i32, ptr %i.kc, align 1, !tbaa !23
  %.val = load i32, ptr %1, align 1, !tbaa !23
  %i.kd = icmp eq i32 %.val4, %.val
  br i1 %i.kd, label %bb.aa, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.kf = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.it, ptr noundef nonnull %i.ke, ptr noundef %2, ptr noundef nonnull %i.r, ptr noundef nonnull %i.q)
  %i.kg = add i64 %i.kf, 4
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.y, %.thread63.i, %bb.p, %bb.aa
  %.2243.i = phi i64 [ %i.kb, %bb.y ], [ %i.jg, %bb.p ], [ %i.kg, %bb.aa ], [ %i.jn, %.thread63.i ] ; 4 uses
  %i.kh = icmp ugt i64 %.2243.i, %.0258.i39
  br i1 %i.kh, label %bb.ab, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.ab:                                            ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.ki = sub i32 %i.iu, %i.iw
  %i.kj = zext i32 %i.ki to i64
  store i64 %i.kj, ptr %3, align 8, !tbaa !44
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kl = icmp eq ptr %i.kk, %2
  br i1 %i.kl, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.z, %bb.m, %bb.ab, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.ab ], [ %.0258.i39, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i39, %bb.m ], [ %.0258.i39, %bb.z ] ; 2 uses
  %i.km = add nuw i64 %.0248.i40, 1               ; 2 uses
  %exitcond57.not = icmp eq i64 %i.km, %.0249.i.lcssa
  br i1 %exitcond57.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.l, !llvm.loop !10

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.ab, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.ab ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.3261.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL33ZSTD_RowFindBestMatch_extDict_4_5EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 10 uses
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL33ZSTD_RowFindBestMatch_extDict_4_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %i.do = lshr i32 %i.dn, %i.cx                   ; 2 uses
  %i.dp = lshr i32 %i.do, 3
  %i.dq = and i32 %i.dp, 536870880
  %i.dr = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dr ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ds, i32 0, i32 3, i32 1)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dt, i32 0, i32 3, i32 1)
  %i.du = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dr
  tail call void @llvm.prefetch.p0(ptr %i.du, i32 0, i32 3, i32 1)
  %i.dv = and i64 %indvars.iv50, 7
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dv
  store i32 %i.do, ptr %i.dw, align 4, !tbaa !23
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next51
  %.val8.1 = load i32, ptr %i.dx, align 1, !tbaa !23
  %i.dy = mul i32 %.val8.1, -1640531535
  %i.dz = xor i32 %i.dy, %i.cw
  %i.ea = lshr i32 %i.dz, %i.cx                   ; 2 uses
  %i.eb = lshr i32 %i.ea, 3
  %i.ec = and i32 %i.eb, 536870880
  %i.ed = zext nneg i32 %i.ec to i64              ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ed ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ee, i32 0, i32 3, i32 1)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ef, i32 0, i32 3, i32 1)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ed
  tail call void @llvm.prefetch.p0(ptr %i.eg, i32 0, i32 3, i32 1)
  %i.eh = and i64 %indvars.iv.next51, 7
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eh
  store i32 %i.ea, ptr %i.ei, align 4, !tbaa !23
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next51.1 to i32
  %exitcond53.not.1 = icmp eq i32 %i.ct, %lftr.wideiv.1
  br i1 %exitcond53.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph29.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph29.new, %bb.f, %bb.b
  %i.ej = phi i32 [ %i.h, %bb.b ], [ %i.ce, %bb.f ], [ %i.ce, %.lr.ph29.new ], [ %i.ce, %.prol.loopexit ]
  %i.ek = phi ptr [ %i.e, %bb.b ], [ %i.cf, %bb.f ], [ %i.cf, %.lr.ph29.new ], [ %i.cf, %.prol.loopexit ] ; 2 uses
  %i.el = phi ptr [ %i.c, %bb.b ], [ %i.cg, %bb.f ], [ %i.cg, %.lr.ph29.new ], [ %i.cg, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.ap, %bb.b ], [ %i.ch, %bb.f ], [ %i.ch, %.lr.ph29.new ], [ %i.ch, %.prol.loopexit ] ; 2 uses
  %i.em = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.en = icmp ult i32 %.0.i284.i, %i.v
  br i1 %i.en, label %.lr.ph31, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph31:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.eo = sub i32 24, %i.ej
  %i.ep = zext i32 %.0.i284.i to i64
  %i.eq = and i64 %i.u, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph31, %bb.g
  %indvars.iv54 = phi i64 [ %i.ep, %.lr.ph31 ], [ %indvars.iv.next55, %bb.g ] ; 4 uses
  %i.er = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv54
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = trunc i64 %i.er to i32
  %.val9 = load i32, ptr %i.et, align 1, !tbaa !23
  %i.ev = mul i32 %.val9, -1640531535
  %i.ew = xor i32 %i.ev, %i.eu
  %i.ex = lshr i32 %i.ew, %i.eo                   ; 2 uses
  %i.ey = lshr i32 %i.ex, 3
  %i.ez = and i32 %i.ey, 536870880
  %i.fa = zext nneg i32 %i.ez to i64              ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fa ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.fb, i32 0, i32 3, i32 1)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fc, i32 0, i32 3, i32 1)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.fa
  tail call void @llvm.prefetch.p0(ptr %i.fd, i32 0, i32 3, i32 1)
  %i.fe = trunc nuw i64 %indvars.iv54 to i32
  %i.ff = and i64 %indvars.iv54, 7
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !23 ; 2 uses
  store i32 %i.ex, ptr %i.fg, align 4, !tbaa !23
  %i.fi = lshr i32 %i.fh, 3
  %i.fj = and i32 %i.fi, 536870880
  %i.fk = zext nneg i32 %i.fj to i64              ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.fk ; 3 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !51
  %i.fo = add i8 %i.fn, 31
  %i.fp = and i8 %i.fo, 31                        ; 2 uses
  %i.fq = zext nneg i8 %i.fp to i32
  %i.fr = icmp eq i8 %i.fp, 0
  %i.fs = select i1 %i.fr, i32 31, i32 0
  %i.ft = add nuw nsw i32 %i.fs, %i.fq            ; 2 uses
  %i.fu = trunc nuw nsw i32 %i.ft to i8
  store i8 %i.fu, ptr %i.fm, align 1, !tbaa !51
  %i.fv = trunc i32 %i.fh to i8
  %i.fw = zext nneg i32 %i.ft to i64              ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fw
  store i8 %i.fv, ptr %i.fx, align 1, !tbaa !51
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fw
  store i32 %i.fe, ptr %i.fy, align 4, !tbaa !23
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.fz = icmp samesign ult i64 %indvars.iv.next55, %i.eq
  br i1 %i.fz, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.v, ptr %i.ao, align 4, !tbaa !40
  %i.ga = and i64 %i.u, 4294967295
  %i.gb = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = trunc i64 %i.ak to i32
  %.val10 = load i32, ptr %i.gc, align 1, !tbaa !23
  %i.ge = mul i32 %.val10, -1640531535
  %i.gf = xor i32 %i.ge, %i.gd
  %i.gg = sub i32 24, %i.h
  %i.gh = lshr i32 %i.gf, %i.gg                   ; 2 uses
  %i.gi = lshr i32 %i.gh, 3
  %i.gj = and i32 %i.gi, 536870880
  %i.gk = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gk ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.gl, i32 0, i32 3, i32 1)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.gm, i32 0, i32 3, i32 1)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gk
  tail call void @llvm.prefetch.p0(ptr %i.gn, i32 0, i32 3, i32 1)
  %i.go = and i64 %i.u, 7
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !23
  store i32 %i.gh, ptr %i.gp, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %i.gr = trunc i64 %i.ak to i32
  %.val11 = load i32, ptr %1, align 1, !tbaa !23
  %i.gs = mul i32 %.val11, -1640531535
  %i.gt = xor i32 %i.gs, %i.gr
  %i.gu = sub i32 24, %i.h
  %i.gv = lshr i32 %i.gt, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.v, ptr %i.gw, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.gv, %bb.h ], [ %i.gq, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !83
  %i.gz = add i32 %i.gy, %.0257.i
  store i32 %i.gz, ptr %i.gx, align 8, !tbaa !83
  %i.ha = lshr i32 %.0257.i, 3
  %i.hb = and i32 %i.ha, 536870880
  %i.hc = zext nneg i32 %i.hb to i64              ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hc ; 5 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hf = trunc i32 %.0257.i to i8                ; 2 uses
  %i.hg = insertelement <16 x i8> poison, i8 %i.hf, i64 0
  %i.hh = load <16 x i8>, ptr %i.hd, align 1, !tbaa !51
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hj = load <16 x i8>, ptr %i.hi, align 1, !tbaa !51
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hc ; 2 uses
  %i.hl = zext i8 %i.he to i32                    ; 3 uses
  %i.hm = shufflevector <16 x i8> %i.hh, <16 x i8> %i.hj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hn = shufflevector <16 x i8> %i.hg, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.ho = icmp eq <32 x i8> %i.hm, %i.hn
  %i.hp = bitcast <32 x i1> %i.ho to i32          ; 3 uses
  %.not = icmp eq i32 %i.hp, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hq = tail call noundef i32 @llvm.fshr.i32(i32 %i.hp, i32 %i.hp, i32 range(i32 0, 64) %i.hl)
  %i.hr = zext i32 %i.hq to i64
  br label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %bb.k
  %.0247.i35 = phi i64 [ %i.ih, %bb.k ], [ %i.hr, %.lr.ph36.preheader ] ; 3 uses
  %.0249.i34 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph36.preheader ] ; 4 uses
  %.0262.i33 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.al, %.lr.ph36.preheader ] ; 2 uses
  %i.hs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i35, i1 true)
  %i.ht = trunc nuw nsw i64 %i.hs to i32
  %i.hu = add nuw nsw i32 %i.ht, %i.hl
  %i.hv = and i32 %i.hu, 31                       ; 2 uses
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !23 ; 4 uses
  %i.hz = icmp eq i32 %i.hv, 0
  br i1 %i.hz, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph36
  %i.ia = icmp ult i32 %i.hy, %i.ag
  br i1 %i.ia, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not276.i = icmp ult i32 %i.hy, %i.o
  %i.ib = zext i32 %i.hy to i64
  %. = select i1 %.not276.i, ptr %i.m, ptr %i.k
  %i.ic = getelementptr inbounds nuw i8, ptr %., i64 %i.ib
  tail call void @llvm.prefetch.p0(ptr %i.ic, i32 0, i32 3, i32 1)
  %i.id = add nuw nsw i64 %.0249.i34, 1
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i34
  store i32 %i.hy, ptr %i.ie, align 4, !tbaa !23
  %i.if = add nsw i32 %.0262.i33, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph36
  %.1263.i.ph = phi i32 [ %.0262.i33, %.lr.ph36 ], [ %i.if, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i34, %.lr.ph36 ], [ %i.id, %bb.j ] ; 2 uses
  %i.ig = add nuw nsw i64 %.0247.i35, 4294967295
  %i.ih = and i64 %i.ig, %.0247.i35               ; 2 uses
  %i.ii = icmp ne i64 %i.ih, 0
  %i.ij = icmp ne i32 %.1263.i.ph, 0
  %i.ik = select i1 %i.ii, i1 %i.ij, i1 false
  br i1 %i.ik, label %.lr.ph36, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i34, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.il = add nuw nsw i32 %i.hl, 31
  %i.im = and i32 %i.il, 31                       ; 2 uses
  %i.in = icmp eq i32 %i.im, 0
  %i.io = select i1 %i.in, i32 31, i32 0
  %i.ip = add nuw nsw i32 %i.io, %i.im            ; 2 uses
  %i.iq = trunc nuw nsw i32 %i.ip to i8
  store i8 %i.iq, ptr %i.hd, align 1, !tbaa !51
  %i.ir = zext nneg i32 %i.ip to i64              ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.ir
  store i8 %i.hf, ptr %i.is, align 1, !tbaa !51
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !40 ; 2 uses
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !40
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ir
  store i32 %i.iu, ptr %i.iw, align 4, !tbaa !23
  %.not46 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not46, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge
  %i.ix = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.iy = icmp ult ptr %1, %i.ix
  %i.iz = getelementptr inbounds i8, ptr %2, i64 -3
  %i.ja = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jc = add i32 %i.v, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph42, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i40 = phi i64 [ 0, %.lr.ph42 ], [ %i.ku, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i39 = phi i64 [ 3, %.lr.ph42 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 6 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i40
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !23 ; 3 uses
  %.not278.i = icmp ult i32 %i.je, %i.o
  %i.jf = zext i32 %i.je to i64                   ; 2 uses
  br i1 %.not278.i, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jg = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.jf ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.0258.i39
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -3
  %.val6 = load i32, ptr %i.ji, align 1, !tbaa !23
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i39
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -3
  %.val5 = load i32, ptr %i.jk, align 1, !tbaa !23
  %i.jl = icmp eq i32 %.val6, %.val5
  br i1 %i.jl, label %bb.n, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %i.iy, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %.val60.i = load i64, ptr %i.jg, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i13 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i13, label %.preheader.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jm = xor i64 %.val.i, %.val60.i
  %i.jn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jm, i1 true)
  %i.jo = lshr i64 %i.jn, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.o, %bb.q
  %.pn.i = phi ptr [ %.049.i, %bb.q ], [ %1, %bb.o ]
  %.pn67.i = phi ptr [ %.045.i, %bb.q ], [ %i.jg, %bb.o ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jp = icmp ult ptr %.049.i, %i.ix
  br i1 %i.jp, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.q
  %i.jq = xor i64 %.049.val.i, %.045.val.i
  %i.jr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jq, i1 true)
  %i.js = lshr i64 %i.jr, 3
  %i.jt = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.js
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = sub i64 %i.ju, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.n
  %.251.i = phi ptr [ %1, %bb.n ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jg, %bb.n ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jw = icmp ult ptr %.251.i, %i.iz
  br i1 %i.jw, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.jx = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.jx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jy = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.jz = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.loopexit.i
  %.352.i = phi ptr [ %i.jy, %bb.s ], [ %.251.i, %bb.r ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.jz, %bb.s ], [ %.247.i, %bb.r ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.ka = icmp ult ptr %.352.i, %i.ja
  br i1 %i.ka, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.kb = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.kb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.kc = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.kd = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.453.i = phi ptr [ %i.kc, %bb.v ], [ %.352.i, %bb.u ], [ %.352.i, %bb.t ] ; 4 uses
  %.4.i = phi ptr [ %i.kd, %bb.v ], [ %.348.i, %bb.u ], [ %.348.i, %bb.t ]
  %i.ke = icmp ult ptr %.453.i, %2
  br i1 %i.ke, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.kf = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.kg = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.kh = icmp eq i8 %i.kf, %i.kg
  %spec.select.idx.i = zext i1 %i.kh to i64
  %spec.select.i12 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.5.i = phi ptr [ %.453.i, %bb.w ], [ %spec.select.i12, %bb.x ]
  %i.ki = ptrtoint ptr %.5.i to i64
  %i.kj = sub i64 %i.ki, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

bb.z:                                             ; preds = %bb.l
  %i.kk = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.jf ; 2 uses
  %.val4 = load i32, ptr %i.kk, align 1, !tbaa !23
  %.val = load i32, ptr %1, align 1, !tbaa !23
  %i.kl = icmp eq i32 %.val4, %.val
  br i1 %i.kl, label %bb.aa, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.kn = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.jb, ptr noundef nonnull %i.km, ptr noundef %2, ptr noundef nonnull %i.r, ptr noundef nonnull %i.q)
  %i.ko = add i64 %i.kn, 4
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.y, %.thread63.i, %bb.p, %bb.aa
  %.2243.i = phi i64 [ %i.kj, %bb.y ], [ %i.jo, %bb.p ], [ %i.ko, %bb.aa ], [ %i.jv, %.thread63.i ] ; 4 uses
  %i.kp = icmp ugt i64 %.2243.i, %.0258.i39
  br i1 %i.kp, label %bb.ab, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.ab:                                            ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kq = sub i32 %i.jc, %i.je
  %i.kr = zext i32 %i.kq to i64
  store i64 %i.kr, ptr %3, align 8, !tbaa !44
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kt = icmp eq ptr %i.ks, %2
  br i1 %i.kt, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.z, %bb.m, %bb.ab, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.ab ], [ %.0258.i39, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i39, %bb.m ], [ %.0258.i39, %bb.z ] ; 2 uses
  %i.ku = add nuw i64 %.0248.i40, 1               ; 2 uses
  %exitcond60.not = icmp eq i64 %i.ku, %.0249.i.lcssa
  br i1 %exitcond60.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.l, !llvm.loop !10

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.ab, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.ab ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.3261.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL33ZSTD_RowFindBestMatch_extDict_4_6EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 8 uses
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstdL33ZSTD_RowFindBestMatch_extDict_5_4EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %i.di = icmp eq i32 %i.cr, 1
  br i1 %i.di, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph29.new

.lr.ph29.new:                                     ; preds = %.prol.loopexit, %.lr.ph29.new
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.lr.ph29.new ], [ %indvars.iv50.unr, %.prol.loopexit ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv50
  %.val8 = load i64, ptr %i.dj, align 1, !tbaa !44
  %i.dk = mul i64 %.val8, -3523014627271114752
  %i.dl = xor i64 %i.dk, %i.cu
  %i.dm = lshr i64 %i.dl, %i.cw                   ; 2 uses
  %i.dn = trunc i64 %i.dm to i32
  %i.do = lshr i64 %i.dm, 4
  %i.dp = and i64 %i.do, 268435440                ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.dp
  tail call void @llvm.prefetch.p0(ptr %i.dq, i32 0, i32 3, i32 1)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.dp
  tail call void @llvm.prefetch.p0(ptr %i.dr, i32 0, i32 3, i32 1)
  %i.ds = and i64 %indvars.iv50, 7
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ds
  store i32 %i.dn, ptr %i.dt, align 4, !tbaa !23
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next51
  %.val8.1 = load i64, ptr %i.du, align 1, !tbaa !44
  %i.dv = mul i64 %.val8.1, -3523014627271114752
  %i.dw = xor i64 %i.dv, %i.cu
  %i.dx = lshr i64 %i.dw, %i.cw                   ; 2 uses
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = lshr i64 %i.dx, 4
  %i.ea = and i64 %i.dz, 268435440                ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ea
  tail call void @llvm.prefetch.p0(ptr %i.eb, i32 0, i32 3, i32 1)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ea
  tail call void @llvm.prefetch.p0(ptr %i.ec, i32 0, i32 3, i32 1)
  %i.ed = and i64 %indvars.iv.next51, 7
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ed
  store i32 %i.dy, ptr %i.ee, align 4, !tbaa !23
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next51.1 to i32
  %exitcond53.not.1 = icmp eq i32 %i.cs, %lftr.wideiv.1
  br i1 %exitcond53.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph29.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph29.new, %bb.f, %bb.b
  %i.ef = phi i32 [ %i.h, %bb.b ], [ %i.cd, %bb.f ], [ %i.cd, %.lr.ph29.new ], [ %i.cd, %.prol.loopexit ]
  %i.eg = phi ptr [ %i.e, %bb.b ], [ %i.ce, %bb.f ], [ %i.ce, %.lr.ph29.new ], [ %i.ce, %.prol.loopexit ] ; 2 uses
  %i.eh = phi ptr [ %i.c, %bb.b ], [ %i.cf, %bb.f ], [ %i.cf, %.lr.ph29.new ], [ %i.cf, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.ap, %bb.b ], [ %i.cg, %bb.f ], [ %i.cg, %.lr.ph29.new ], [ %i.cg, %.prol.loopexit ] ; 2 uses
  %i.ei = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.ej = icmp ult i32 %.0.i284.i, %i.v
  br i1 %i.ej, label %.lr.ph31, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph31:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.ek = sub i32 56, %i.ef
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = zext i32 %.0.i284.i to i64
  %i.en = and i64 %i.u, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph31, %bb.g
  %indvars.iv54 = phi i64 [ %i.em, %.lr.ph31 ], [ %indvars.iv.next55, %bb.g ] ; 4 uses
  %i.eo = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv54
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.val9 = load i64, ptr %i.eq, align 1, !tbaa !44
  %i.er = mul i64 %.val9, -3523014627271114752
  %i.es = xor i64 %i.er, %i.eo
  %i.et = lshr i64 %i.es, %i.el                   ; 2 uses
  %i.eu = trunc i64 %i.et to i32
  %i.ev = lshr i64 %i.et, 4
  %i.ew = and i64 %i.ev, 268435440                ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ew
  tail call void @llvm.prefetch.p0(ptr %i.ex, i32 0, i32 3, i32 1)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ew
  tail call void @llvm.prefetch.p0(ptr %i.ey, i32 0, i32 3, i32 1)
  %i.ez = trunc nuw i64 %indvars.iv54 to i32
  %i.fa = and i64 %indvars.iv54, 7
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fa ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !23 ; 2 uses
  store i32 %i.eu, ptr %i.fb, align 4, !tbaa !23
  %i.fd = lshr i32 %i.fc, 4
  %i.fe = and i32 %i.fd, 268435440
  %i.ff = zext nneg i32 %i.fe to i64              ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ff ; 3 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !51
  %i.fj = add i8 %i.fi, 15
  %i.fk = and i8 %i.fj, 15                        ; 2 uses
  %i.fl = zext nneg i8 %i.fk to i32
  %i.fm = icmp eq i8 %i.fk, 0
  %i.fn = select i1 %i.fm, i32 15, i32 0
  %i.fo = add nuw nsw i32 %i.fn, %i.fl            ; 2 uses
  %i.fp = trunc nuw nsw i32 %i.fo to i8
  store i8 %i.fp, ptr %i.fh, align 1, !tbaa !51
  %i.fq = trunc i32 %i.fc to i8
  %i.fr = zext nneg i32 %i.fo to i64              ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fr
  store i8 %i.fq, ptr %i.fs, align 1, !tbaa !51
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fr
  store i32 %i.ez, ptr %i.ft, align 4, !tbaa !23
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.fu = icmp samesign ult i64 %indvars.iv.next55, %i.en
  br i1 %i.fu, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.v, ptr %i.ao, align 4, !tbaa !40
  %i.fv = and i64 %i.u, 4294967295
  %i.fw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.val10 = load i64, ptr %i.fx, align 1, !tbaa !44
  %i.fy = mul i64 %.val10, -3523014627271114752
  %i.fz = xor i64 %i.fy, %i.ak
  %i.ga = sub i32 56, %i.h
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = lshr i64 %i.fz, %i.gb                   ; 2 uses
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = lshr i64 %i.gc, 4
  %i.gf = and i64 %i.ge, 268435440                ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gf
  tail call void @llvm.prefetch.p0(ptr %i.gg, i32 0, i32 3, i32 1)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gf
  tail call void @llvm.prefetch.p0(ptr %i.gh, i32 0, i32 3, i32 1)
  %i.gi = and i64 %i.u, 7
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !23
  store i32 %i.gd, ptr %i.gj, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %.val11 = load i64, ptr %1, align 1, !tbaa !44
  %i.gl = mul i64 %.val11, -3523014627271114752
  %i.gm = xor i64 %i.gl, %i.ak
  %i.gn = sub i32 56, %i.h
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = lshr i64 %i.gm, %i.go
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.v, ptr %i.gr, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.gq, %bb.h ], [ %i.gk, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !83
  %i.gu = add i32 %i.gt, %.0257.i
  store i32 %i.gu, ptr %i.gs, align 8, !tbaa !83
  %i.gv = lshr i32 %.0257.i, 4
  %i.gw = and i32 %i.gv, 268435440
  %i.gx = zext nneg i32 %i.gw to i64              ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gx ; 4 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !51  ; 2 uses
  %i.hb = zext i8 %i.ha to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hc = trunc i32 %.0257.i to i8                ; 2 uses
  %i.hd = insertelement <16 x i8> poison, i8 %i.hc, i64 0
  %i.he = shufflevector <16 x i8> %i.hd, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.hf = load <16 x i8>, ptr %i.gz, align 1, !tbaa !51
  %i.hg = icmp eq <16 x i8> %i.hf, %i.he
  %i.hh = bitcast <16 x i1> %i.hg to i16          ; 3 uses
  %.not = icmp eq i16 %i.hh, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hi = zext i8 %i.ha to i16
  %i.hj = tail call noundef i16 @llvm.fshr.i16(i16 %i.hh, i16 %i.hh, i16 %i.hi)
  %i.hk = zext i16 %i.hj to i64
  br label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %bb.k
  %.0247.i35 = phi i64 [ %i.ia, %bb.k ], [ %i.hk, %.lr.ph36.preheader ] ; 3 uses
  %.0249.i34 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph36.preheader ] ; 4 uses
  %.0262.i33 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.al, %.lr.ph36.preheader ] ; 2 uses
  %i.hl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i35, i1 true)
  %i.hm = trunc nuw nsw i64 %i.hl to i32
  %i.hn = add nuw nsw i32 %i.hm, %i.hb
  %i.ho = and i32 %i.hn, 15                       ; 2 uses
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !23 ; 4 uses
  %i.hs = icmp eq i32 %i.ho, 0
  br i1 %i.hs, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph36
  %i.ht = icmp ult i32 %i.hr, %i.ag
  br i1 %i.ht, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not276.i = icmp ult i32 %i.hr, %i.o
  %i.hu = zext i32 %i.hr to i64
  %. = select i1 %.not276.i, ptr %i.m, ptr %i.k
  %i.hv = getelementptr inbounds nuw i8, ptr %., i64 %i.hu
  tail call void @llvm.prefetch.p0(ptr %i.hv, i32 0, i32 3, i32 1)
  %i.hw = add nuw nsw i64 %.0249.i34, 1
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i34
  store i32 %i.hr, ptr %i.hx, align 4, !tbaa !23
  %i.hy = add nsw i32 %.0262.i33, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph36
  %.1263.i.ph = phi i32 [ %.0262.i33, %.lr.ph36 ], [ %i.hy, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i34, %.lr.ph36 ], [ %i.hw, %bb.j ] ; 2 uses
  %i.hz = add nuw nsw i64 %.0247.i35, 65535
  %i.ia = and i64 %i.hz, %.0247.i35               ; 2 uses
  %i.ib = icmp ne i64 %i.ia, 0
  %i.ic = icmp ne i32 %.1263.i.ph, 0
  %i.id = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %i.id, label %.lr.ph36, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i34, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.ie = add nuw nsw i32 %i.hb, 15
  %i.if = and i32 %i.ie, 15                       ; 2 uses
  %i.ig = icmp eq i32 %i.if, 0
  %i.ih = select i1 %i.ig, i32 15, i32 0
  %i.ii = add nuw nsw i32 %i.ih, %i.if            ; 2 uses
  %i.ij = trunc nuw nsw i32 %i.ii to i8
  store i8 %i.ij, ptr %i.gz, align 1, !tbaa !51
  %i.ik = zext nneg i32 %i.ii to i64              ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.ik
  store i8 %i.hc, ptr %i.il, align 1, !tbaa !51
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !40 ; 2 uses
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr %i.im, align 4, !tbaa !40
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.ik
  store i32 %i.in, ptr %i.ip, align 4, !tbaa !23
  %.not46 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not46, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge
  %i.iq = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.ir = icmp ult ptr %1, %i.iq
  %i.is = getelementptr inbounds i8, ptr %2, i64 -3
  %i.it = getelementptr inbounds i8, ptr %2, i64 -1
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.iv = add i32 %i.v, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph42, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i40 = phi i64 [ 0, %.lr.ph42 ], [ %i.kn, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i39 = phi i64 [ 3, %.lr.ph42 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 6 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i40
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !23 ; 3 uses
  %.not278.i = icmp ult i32 %i.ix, %i.o
  %i.iy = zext i32 %i.ix to i64                   ; 2 uses
  br i1 %.not278.i, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.iz = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.iy ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.0258.i39
  %i.jb = getelementptr inbounds i8, ptr %i.ja, i64 -3
  %.val6 = load i32, ptr %i.jb, align 1, !tbaa !23
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i39
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 -3
  %.val5 = load i32, ptr %i.jd, align 1, !tbaa !23
  %i.je = icmp eq i32 %.val6, %.val5
  br i1 %i.je, label %bb.n, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %i.ir, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %.val60.i = load i64, ptr %i.iz, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i13 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i13, label %.preheader.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jf = xor i64 %.val.i, %.val60.i
  %i.jg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jf, i1 true)
  %i.jh = lshr i64 %i.jg, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.o, %bb.q
  %.pn.i = phi ptr [ %.049.i, %bb.q ], [ %1, %bb.o ]
  %.pn67.i = phi ptr [ %.045.i, %bb.q ], [ %i.iz, %bb.o ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.ji = icmp ult ptr %.049.i, %i.iq
  br i1 %i.ji, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.q
  %i.jj = xor i64 %.049.val.i, %.045.val.i
  %i.jk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jj, i1 true)
  %i.jl = lshr i64 %i.jk, 3
  %i.jm = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jl
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = sub i64 %i.jn, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.n
  %.251.i = phi ptr [ %1, %bb.n ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.iz, %bb.n ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jp = icmp ult ptr %.251.i, %i.is
  br i1 %i.jp, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.jq = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.jq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jr = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.js = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.loopexit.i
  %.352.i = phi ptr [ %i.jr, %bb.s ], [ %.251.i, %bb.r ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.js, %bb.s ], [ %.247.i, %bb.r ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.jt = icmp ult ptr %.352.i, %i.it
  br i1 %i.jt, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.ju = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.ju, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.jv = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.jw = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.453.i = phi ptr [ %i.jv, %bb.v ], [ %.352.i, %bb.u ], [ %.352.i, %bb.t ] ; 4 uses
  %.4.i = phi ptr [ %i.jw, %bb.v ], [ %.348.i, %bb.u ], [ %.348.i, %bb.t ]
  %i.jx = icmp ult ptr %.453.i, %2
  br i1 %i.jx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.jy = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.jz = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.ka = icmp eq i8 %i.jy, %i.jz
  %spec.select.idx.i = zext i1 %i.ka to i64
  %spec.select.i12 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.5.i = phi ptr [ %.453.i, %bb.w ], [ %spec.select.i12, %bb.x ]
  %i.kb = ptrtoint ptr %.5.i to i64
  %i.kc = sub i64 %i.kb, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

bb.z:                                             ; preds = %bb.l
  %i.kd = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.iy ; 2 uses
  %.val4 = load i32, ptr %i.kd, align 1, !tbaa !23
  %.val = load i32, ptr %1, align 1, !tbaa !23
  %i.ke = icmp eq i32 %.val4, %.val
  br i1 %i.ke, label %bb.aa, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kg = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.iu, ptr noundef nonnull %i.kf, ptr noundef %2, ptr noundef nonnull %i.r, ptr noundef nonnull %i.q)
  %i.kh = add i64 %i.kg, 4
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.y, %.thread63.i, %bb.p, %bb.aa
  %.2243.i = phi i64 [ %i.kc, %bb.y ], [ %i.jh, %bb.p ], [ %i.kh, %bb.aa ], [ %i.jo, %.thread63.i ] ; 4 uses
  %i.ki = icmp ugt i64 %.2243.i, %.0258.i39
  br i1 %i.ki, label %bb.ab, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.ab:                                            ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kj = sub i32 %i.iv, %i.ix
  %i.kk = zext i32 %i.kj to i64
  store i64 %i.kk, ptr %3, align 8, !tbaa !44
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.km = icmp eq ptr %i.kl, %2
  br i1 %i.km, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.z, %bb.m, %bb.ab, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.ab ], [ %.0258.i39, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i39, %bb.m ], [ %.0258.i39, %bb.z ] ; 2 uses
  %i.kn = add nuw i64 %.0248.i40, 1               ; 2 uses
  %exitcond57.not = icmp eq i64 %i.kn, %.0249.i.lcssa
  br i1 %exitcond57.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.l, !llvm.loop !10

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.ab, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.ab ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.3261.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL33ZSTD_RowFindBestMatch_extDict_5_5EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 10 uses
end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstdL33ZSTD_RowFindBestMatch_extDict_5_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %i.dp = trunc i64 %i.do to i32
  %i.dq = lshr i64 %i.do, 3
  %i.dr = and i64 %i.dq, 536870880                ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dr ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ds, i32 0, i32 3, i32 1)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dt, i32 0, i32 3, i32 1)
  %i.du = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dr
  tail call void @llvm.prefetch.p0(ptr %i.du, i32 0, i32 3, i32 1)
  %i.dv = and i64 %indvars.iv50, 7
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dv
  store i32 %i.dp, ptr %i.dw, align 4, !tbaa !23
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next51
  %.val8.1 = load i64, ptr %i.dx, align 1, !tbaa !44
  %i.dy = mul i64 %.val8.1, -3523014627271114752
  %i.dz = xor i64 %i.dy, %i.cv
  %i.ea = lshr i64 %i.dz, %i.cx                   ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = lshr i64 %i.ea, 3
  %i.ed = and i64 %i.ec, 536870880                ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ed ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ee, i32 0, i32 3, i32 1)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ef, i32 0, i32 3, i32 1)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ed
  tail call void @llvm.prefetch.p0(ptr %i.eg, i32 0, i32 3, i32 1)
  %i.eh = and i64 %indvars.iv.next51, 7
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eh
  store i32 %i.eb, ptr %i.ei, align 4, !tbaa !23
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next51.1 to i32
  %exitcond53.not.1 = icmp eq i32 %i.ct, %lftr.wideiv.1
  br i1 %exitcond53.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph29.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph29.new, %bb.f, %bb.b
  %i.ej = phi i32 [ %i.h, %bb.b ], [ %i.ce, %bb.f ], [ %i.ce, %.lr.ph29.new ], [ %i.ce, %.prol.loopexit ]
  %i.ek = phi ptr [ %i.e, %bb.b ], [ %i.cf, %bb.f ], [ %i.cf, %.lr.ph29.new ], [ %i.cf, %.prol.loopexit ] ; 2 uses
  %i.el = phi ptr [ %i.c, %bb.b ], [ %i.cg, %bb.f ], [ %i.cg, %.lr.ph29.new ], [ %i.cg, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.ap, %bb.b ], [ %i.ch, %bb.f ], [ %i.ch, %.lr.ph29.new ], [ %i.ch, %.prol.loopexit ] ; 2 uses
  %i.em = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.en = icmp ult i32 %.0.i284.i, %i.v
  br i1 %i.en, label %.lr.ph31, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph31:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.eo = sub i32 56, %i.ej
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = zext i32 %.0.i284.i to i64
  %i.er = and i64 %i.u, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph31, %bb.g
  %indvars.iv54 = phi i64 [ %i.eq, %.lr.ph31 ], [ %indvars.iv.next55, %bb.g ] ; 4 uses
  %i.es = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv54
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.val9 = load i64, ptr %i.eu, align 1, !tbaa !44
  %i.ev = mul i64 %.val9, -3523014627271114752
  %i.ew = xor i64 %i.ev, %i.es
  %i.ex = lshr i64 %i.ew, %i.ep                   ; 2 uses
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = lshr i64 %i.ex, 3
  %i.fa = and i64 %i.ez, 536870880                ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fa ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.fb, i32 0, i32 3, i32 1)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fc, i32 0, i32 3, i32 1)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.fa
  tail call void @llvm.prefetch.p0(ptr %i.fd, i32 0, i32 3, i32 1)
  %i.fe = trunc nuw i64 %indvars.iv54 to i32
  %i.ff = and i64 %indvars.iv54, 7
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !23 ; 2 uses
  store i32 %i.ey, ptr %i.fg, align 4, !tbaa !23
  %i.fi = lshr i32 %i.fh, 3
  %i.fj = and i32 %i.fi, 536870880
  %i.fk = zext nneg i32 %i.fj to i64              ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.fk ; 3 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !51
  %i.fo = add i8 %i.fn, 31
  %i.fp = and i8 %i.fo, 31                        ; 2 uses
  %i.fq = zext nneg i8 %i.fp to i32
  %i.fr = icmp eq i8 %i.fp, 0
  %i.fs = select i1 %i.fr, i32 31, i32 0
  %i.ft = add nuw nsw i32 %i.fs, %i.fq            ; 2 uses
  %i.fu = trunc nuw nsw i32 %i.ft to i8
  store i8 %i.fu, ptr %i.fm, align 1, !tbaa !51
  %i.fv = trunc i32 %i.fh to i8
  %i.fw = zext nneg i32 %i.ft to i64              ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fw
  store i8 %i.fv, ptr %i.fx, align 1, !tbaa !51
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fw
  store i32 %i.fe, ptr %i.fy, align 4, !tbaa !23
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.fz = icmp samesign ult i64 %indvars.iv.next55, %i.er
  br i1 %i.fz, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.v, ptr %i.ao, align 4, !tbaa !40
  %i.ga = and i64 %i.u, 4294967295
  %i.gb = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.val10 = load i64, ptr %i.gc, align 1, !tbaa !44
  %i.gd = mul i64 %.val10, -3523014627271114752
  %i.ge = xor i64 %i.gd, %i.ak
  %i.gf = sub i32 56, %i.h
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = lshr i64 %i.ge, %i.gg                   ; 2 uses
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = lshr i64 %i.gh, 3
  %i.gk = and i64 %i.gj, 536870880                ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gk ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.gl, i32 0, i32 3, i32 1)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.gm, i32 0, i32 3, i32 1)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gk
  tail call void @llvm.prefetch.p0(ptr %i.gn, i32 0, i32 3, i32 1)
  %i.go = and i64 %i.u, 7
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !23
  store i32 %i.gi, ptr %i.gp, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %.val11 = load i64, ptr %1, align 1, !tbaa !44
  %i.gr = mul i64 %.val11, -3523014627271114752
  %i.gs = xor i64 %i.gr, %i.ak
  %i.gt = sub i32 56, %i.h
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = lshr i64 %i.gs, %i.gu
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.v, ptr %i.gx, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.gw, %bb.h ], [ %i.gq, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !83
  %i.ha = add i32 %i.gz, %.0257.i
  store i32 %i.ha, ptr %i.gy, align 8, !tbaa !83
  %i.hb = lshr i32 %.0257.i, 3
  %i.hc = and i32 %i.hb, 536870880
  %i.hd = zext nneg i32 %i.hc to i64              ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hd ; 5 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hg = trunc i32 %.0257.i to i8                ; 2 uses
  %i.hh = insertelement <16 x i8> poison, i8 %i.hg, i64 0
  %i.hi = load <16 x i8>, ptr %i.he, align 1, !tbaa !51
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hk = load <16 x i8>, ptr %i.hj, align 1, !tbaa !51
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hd ; 2 uses
  %i.hm = zext i8 %i.hf to i32                    ; 3 uses
  %i.hn = shufflevector <16 x i8> %i.hi, <16 x i8> %i.hk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ho = shufflevector <16 x i8> %i.hh, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.hp = icmp eq <32 x i8> %i.hn, %i.ho
  %i.hq = bitcast <32 x i1> %i.hp to i32          ; 3 uses
  %.not = icmp eq i32 %i.hq, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hr = tail call noundef i32 @llvm.fshr.i32(i32 %i.hq, i32 %i.hq, i32 range(i32 0, 64) %i.hm)
  %i.hs = zext i32 %i.hr to i64
  br label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %bb.k
  %.0247.i35 = phi i64 [ %i.ii, %bb.k ], [ %i.hs, %.lr.ph36.preheader ] ; 3 uses
  %.0249.i34 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph36.preheader ] ; 4 uses
  %.0262.i33 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.al, %.lr.ph36.preheader ] ; 2 uses
  %i.ht = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i35, i1 true)
  %i.hu = trunc nuw nsw i64 %i.ht to i32
  %i.hv = add nuw nsw i32 %i.hu, %i.hm
  %i.hw = and i32 %i.hv, 31                       ; 2 uses
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !23 ; 4 uses
  %i.ia = icmp eq i32 %i.hw, 0
  br i1 %i.ia, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph36
  %i.ib = icmp ult i32 %i.hz, %i.ag
  br i1 %i.ib, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not276.i = icmp ult i32 %i.hz, %i.o
  %i.ic = zext i32 %i.hz to i64
  %. = select i1 %.not276.i, ptr %i.m, ptr %i.k
  %i.id = getelementptr inbounds nuw i8, ptr %., i64 %i.ic
  tail call void @llvm.prefetch.p0(ptr %i.id, i32 0, i32 3, i32 1)
  %i.ie = add nuw nsw i64 %.0249.i34, 1
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i34
  store i32 %i.hz, ptr %i.if, align 4, !tbaa !23
  %i.ig = add nsw i32 %.0262.i33, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph36
  %.1263.i.ph = phi i32 [ %.0262.i33, %.lr.ph36 ], [ %i.ig, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i34, %.lr.ph36 ], [ %i.ie, %bb.j ] ; 2 uses
  %i.ih = add nuw nsw i64 %.0247.i35, 4294967295
  %i.ii = and i64 %i.ih, %.0247.i35               ; 2 uses
  %i.ij = icmp ne i64 %i.ii, 0
  %i.ik = icmp ne i32 %.1263.i.ph, 0
  %i.il = select i1 %i.ij, i1 %i.ik, i1 false
  br i1 %i.il, label %.lr.ph36, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i34, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.im = add nuw nsw i32 %i.hm, 31
  %i.in = and i32 %i.im, 31                       ; 2 uses
  %i.io = icmp eq i32 %i.in, 0
  %i.ip = select i1 %i.io, i32 31, i32 0
  %i.iq = add nuw nsw i32 %i.ip, %i.in            ; 2 uses
  %i.ir = trunc nuw nsw i32 %i.iq to i8
  store i8 %i.ir, ptr %i.he, align 1, !tbaa !51
  %i.is = zext nneg i32 %i.iq to i64              ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.is
  store i8 %i.hg, ptr %i.it, align 1, !tbaa !51
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !40 ; 2 uses
  %i.iw = add i32 %i.iv, 1
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !40
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.is
  store i32 %i.iv, ptr %i.ix, align 4, !tbaa !23
  %.not46 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not46, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge
  %i.iy = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.iz = icmp ult ptr %1, %i.iy
  %i.ja = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jb = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jd = add i32 %i.v, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph42, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i40 = phi i64 [ 0, %.lr.ph42 ], [ %i.kv, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i39 = phi i64 [ 3, %.lr.ph42 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 6 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i40
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !23 ; 3 uses
  %.not278.i = icmp ult i32 %i.jf, %i.o
  %i.jg = zext i32 %i.jf to i64                   ; 2 uses
  br i1 %.not278.i, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jh = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.jg ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %.0258.i39
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 -3
  %.val6 = load i32, ptr %i.jj, align 1, !tbaa !23
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i39
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 -3
  %.val5 = load i32, ptr %i.jl, align 1, !tbaa !23
  %i.jm = icmp eq i32 %.val6, %.val5
  br i1 %i.jm, label %bb.n, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %i.iz, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %.val60.i = load i64, ptr %i.jh, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i13 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i13, label %.preheader.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jn = xor i64 %.val.i, %.val60.i
  %i.jo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jn, i1 true)
  %i.jp = lshr i64 %i.jo, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.o, %bb.q
  %.pn.i = phi ptr [ %.049.i, %bb.q ], [ %1, %bb.o ]
  %.pn67.i = phi ptr [ %.045.i, %bb.q ], [ %i.jh, %bb.o ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jq = icmp ult ptr %.049.i, %i.iy
  br i1 %i.jq, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.q
  %i.jr = xor i64 %.049.val.i, %.045.val.i
  %i.js = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jr, i1 true)
  %i.jt = lshr i64 %i.js, 3
  %i.ju = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jt
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = sub i64 %i.jv, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.n
  %.251.i = phi ptr [ %1, %bb.n ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jh, %bb.n ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jx = icmp ult ptr %.251.i, %i.ja
  br i1 %i.jx, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.jy = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.jy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jz = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.ka = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.loopexit.i
  %.352.i = phi ptr [ %i.jz, %bb.s ], [ %.251.i, %bb.r ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.ka, %bb.s ], [ %.247.i, %bb.r ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.kb = icmp ult ptr %.352.i, %i.jb
  br i1 %i.kb, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.kc = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.kc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.kd = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.ke = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.453.i = phi ptr [ %i.kd, %bb.v ], [ %.352.i, %bb.u ], [ %.352.i, %bb.t ] ; 4 uses
  %.4.i = phi ptr [ %i.ke, %bb.v ], [ %.348.i, %bb.u ], [ %.348.i, %bb.t ]
  %i.kf = icmp ult ptr %.453.i, %2
  br i1 %i.kf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.kg = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.kh = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.ki = icmp eq i8 %i.kg, %i.kh
  %spec.select.idx.i = zext i1 %i.ki to i64
  %spec.select.i12 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.5.i = phi ptr [ %.453.i, %bb.w ], [ %spec.select.i12, %bb.x ]
  %i.kj = ptrtoint ptr %.5.i to i64
  %i.kk = sub i64 %i.kj, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

bb.z:                                             ; preds = %bb.l
  %i.kl = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.jg ; 2 uses
  %.val4 = load i32, ptr %i.kl, align 1, !tbaa !23
  %.val = load i32, ptr %1, align 1, !tbaa !23
  %i.km = icmp eq i32 %.val4, %.val
  br i1 %i.km, label %bb.aa, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.ko = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.jc, ptr noundef nonnull %i.kn, ptr noundef %2, ptr noundef nonnull %i.r, ptr noundef nonnull %i.q)
  %i.kp = add i64 %i.ko, 4
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.y, %.thread63.i, %bb.p, %bb.aa
  %.2243.i = phi i64 [ %i.kk, %bb.y ], [ %i.jp, %bb.p ], [ %i.kp, %bb.aa ], [ %i.jw, %.thread63.i ] ; 4 uses
  %i.kq = icmp ugt i64 %.2243.i, %.0258.i39
  br i1 %i.kq, label %bb.ab, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.ab:                                            ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kr = sub i32 %i.jd, %i.jf
  %i.ks = zext i32 %i.kr to i64
  store i64 %i.ks, ptr %3, align 8, !tbaa !44
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.ku = icmp eq ptr %i.kt, %2
  br i1 %i.ku, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.z, %bb.m, %bb.ab, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.ab ], [ %.0258.i39, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i39, %bb.m ], [ %.0258.i39, %bb.z ] ; 2 uses
  %i.kv = add nuw i64 %.0248.i40, 1               ; 2 uses
  %exitcond60.not = icmp eq i64 %i.kv, %.0249.i.lcssa
  br i1 %exitcond60.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.l, !llvm.loop !10

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.ab, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.ab ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.3261.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL33ZSTD_RowFindBestMatch_extDict_5_6EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 8 uses
end_hunk_9
begin_hunk_10_@_ZN11duckdb_zstdL33ZSTD_RowFindBestMatch_extDict_6_4EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %i.di = icmp eq i32 %i.cr, 1
  br i1 %i.di, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph29.new

.lr.ph29.new:                                     ; preds = %.prol.loopexit, %.lr.ph29.new
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.lr.ph29.new ], [ %indvars.iv50.unr, %.prol.loopexit ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv50
  %.val8 = load i64, ptr %i.dj, align 1, !tbaa !44
  %i.dk = mul i64 %.val8, -3523014627193847808
  %i.dl = xor i64 %i.dk, %i.cu
  %i.dm = lshr i64 %i.dl, %i.cw                   ; 2 uses
  %i.dn = trunc i64 %i.dm to i32
  %i.do = lshr i64 %i.dm, 4
  %i.dp = and i64 %i.do, 268435440                ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.dp
  tail call void @llvm.prefetch.p0(ptr %i.dq, i32 0, i32 3, i32 1)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.dp
  tail call void @llvm.prefetch.p0(ptr %i.dr, i32 0, i32 3, i32 1)
  %i.ds = and i64 %indvars.iv50, 7
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ds
  store i32 %i.dn, ptr %i.dt, align 4, !tbaa !23
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next51
  %.val8.1 = load i64, ptr %i.du, align 1, !tbaa !44
  %i.dv = mul i64 %.val8.1, -3523014627193847808
  %i.dw = xor i64 %i.dv, %i.cu
  %i.dx = lshr i64 %i.dw, %i.cw                   ; 2 uses
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = lshr i64 %i.dx, 4
  %i.ea = and i64 %i.dz, 268435440                ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ea
  tail call void @llvm.prefetch.p0(ptr %i.eb, i32 0, i32 3, i32 1)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ea
  tail call void @llvm.prefetch.p0(ptr %i.ec, i32 0, i32 3, i32 1)
  %i.ed = and i64 %indvars.iv.next51, 7
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ed
  store i32 %i.dy, ptr %i.ee, align 4, !tbaa !23
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next51.1 to i32
  %exitcond53.not.1 = icmp eq i32 %i.cs, %lftr.wideiv.1
  br i1 %exitcond53.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph29.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph29.new, %bb.f, %bb.b
  %i.ef = phi i32 [ %i.h, %bb.b ], [ %i.cd, %bb.f ], [ %i.cd, %.lr.ph29.new ], [ %i.cd, %.prol.loopexit ]
  %i.eg = phi ptr [ %i.e, %bb.b ], [ %i.ce, %bb.f ], [ %i.ce, %.lr.ph29.new ], [ %i.ce, %.prol.loopexit ] ; 2 uses
  %i.eh = phi ptr [ %i.c, %bb.b ], [ %i.cf, %bb.f ], [ %i.cf, %.lr.ph29.new ], [ %i.cf, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.ap, %bb.b ], [ %i.cg, %bb.f ], [ %i.cg, %.lr.ph29.new ], [ %i.cg, %.prol.loopexit ] ; 2 uses
  %i.ei = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.ej = icmp ult i32 %.0.i284.i, %i.v
  br i1 %i.ej, label %.lr.ph31, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph31:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.ek = sub i32 56, %i.ef
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = zext i32 %.0.i284.i to i64
  %i.en = and i64 %i.u, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph31, %bb.g
  %indvars.iv54 = phi i64 [ %i.em, %.lr.ph31 ], [ %indvars.iv.next55, %bb.g ] ; 4 uses
  %i.eo = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv54
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.val9 = load i64, ptr %i.eq, align 1, !tbaa !44
  %i.er = mul i64 %.val9, -3523014627193847808
  %i.es = xor i64 %i.er, %i.eo
  %i.et = lshr i64 %i.es, %i.el                   ; 2 uses
  %i.eu = trunc i64 %i.et to i32
  %i.ev = lshr i64 %i.et, 4
  %i.ew = and i64 %i.ev, 268435440                ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ew
  tail call void @llvm.prefetch.p0(ptr %i.ex, i32 0, i32 3, i32 1)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ew
  tail call void @llvm.prefetch.p0(ptr %i.ey, i32 0, i32 3, i32 1)
  %i.ez = trunc nuw i64 %indvars.iv54 to i32
  %i.fa = and i64 %indvars.iv54, 7
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fa ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !23 ; 2 uses
  store i32 %i.eu, ptr %i.fb, align 4, !tbaa !23
  %i.fd = lshr i32 %i.fc, 4
  %i.fe = and i32 %i.fd, 268435440
  %i.ff = zext nneg i32 %i.fe to i64              ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ff ; 3 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !51
  %i.fj = add i8 %i.fi, 15
  %i.fk = and i8 %i.fj, 15                        ; 2 uses
  %i.fl = zext nneg i8 %i.fk to i32
  %i.fm = icmp eq i8 %i.fk, 0
  %i.fn = select i1 %i.fm, i32 15, i32 0
  %i.fo = add nuw nsw i32 %i.fn, %i.fl            ; 2 uses
  %i.fp = trunc nuw nsw i32 %i.fo to i8
  store i8 %i.fp, ptr %i.fh, align 1, !tbaa !51
  %i.fq = trunc i32 %i.fc to i8
  %i.fr = zext nneg i32 %i.fo to i64              ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fr
  store i8 %i.fq, ptr %i.fs, align 1, !tbaa !51
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fr
  store i32 %i.ez, ptr %i.ft, align 4, !tbaa !23
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.fu = icmp samesign ult i64 %indvars.iv.next55, %i.en
  br i1 %i.fu, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.v, ptr %i.ao, align 4, !tbaa !40
  %i.fv = and i64 %i.u, 4294967295
  %i.fw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.val10 = load i64, ptr %i.fx, align 1, !tbaa !44
  %i.fy = mul i64 %.val10, -3523014627193847808
  %i.fz = xor i64 %i.fy, %i.ak
  %i.ga = sub i32 56, %i.h
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = lshr i64 %i.fz, %i.gb                   ; 2 uses
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = lshr i64 %i.gc, 4
  %i.gf = and i64 %i.ge, 268435440                ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gf
  tail call void @llvm.prefetch.p0(ptr %i.gg, i32 0, i32 3, i32 1)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gf
  tail call void @llvm.prefetch.p0(ptr %i.gh, i32 0, i32 3, i32 1)
  %i.gi = and i64 %i.u, 7
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !23
  store i32 %i.gd, ptr %i.gj, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %.val11 = load i64, ptr %1, align 1, !tbaa !44
  %i.gl = mul i64 %.val11, -3523014627193847808
  %i.gm = xor i64 %i.gl, %i.ak
  %i.gn = sub i32 56, %i.h
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = lshr i64 %i.gm, %i.go
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.v, ptr %i.gr, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.gq, %bb.h ], [ %i.gk, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !83
  %i.gu = add i32 %i.gt, %.0257.i
  store i32 %i.gu, ptr %i.gs, align 8, !tbaa !83
  %i.gv = lshr i32 %.0257.i, 4
  %i.gw = and i32 %i.gv, 268435440
  %i.gx = zext nneg i32 %i.gw to i64              ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gx ; 4 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !51  ; 2 uses
  %i.hb = zext i8 %i.ha to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hc = trunc i32 %.0257.i to i8                ; 2 uses
  %i.hd = insertelement <16 x i8> poison, i8 %i.hc, i64 0
  %i.he = shufflevector <16 x i8> %i.hd, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.hf = load <16 x i8>, ptr %i.gz, align 1, !tbaa !51
  %i.hg = icmp eq <16 x i8> %i.hf, %i.he
  %i.hh = bitcast <16 x i1> %i.hg to i16          ; 3 uses
  %.not = icmp eq i16 %i.hh, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hi = zext i8 %i.ha to i16
  %i.hj = tail call noundef i16 @llvm.fshr.i16(i16 %i.hh, i16 %i.hh, i16 %i.hi)
  %i.hk = zext i16 %i.hj to i64
  br label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %bb.k
  %.0247.i35 = phi i64 [ %i.ia, %bb.k ], [ %i.hk, %.lr.ph36.preheader ] ; 3 uses
  %.0249.i34 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph36.preheader ] ; 4 uses
  %.0262.i33 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.al, %.lr.ph36.preheader ] ; 2 uses
  %i.hl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i35, i1 true)
  %i.hm = trunc nuw nsw i64 %i.hl to i32
  %i.hn = add nuw nsw i32 %i.hm, %i.hb
  %i.ho = and i32 %i.hn, 15                       ; 2 uses
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !23 ; 4 uses
  %i.hs = icmp eq i32 %i.ho, 0
  br i1 %i.hs, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph36
  %i.ht = icmp ult i32 %i.hr, %i.ag
  br i1 %i.ht, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not276.i = icmp ult i32 %i.hr, %i.o
  %i.hu = zext i32 %i.hr to i64
  %. = select i1 %.not276.i, ptr %i.m, ptr %i.k
  %i.hv = getelementptr inbounds nuw i8, ptr %., i64 %i.hu
  tail call void @llvm.prefetch.p0(ptr %i.hv, i32 0, i32 3, i32 1)
  %i.hw = add nuw nsw i64 %.0249.i34, 1
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i34
  store i32 %i.hr, ptr %i.hx, align 4, !tbaa !23
  %i.hy = add nsw i32 %.0262.i33, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph36
  %.1263.i.ph = phi i32 [ %.0262.i33, %.lr.ph36 ], [ %i.hy, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i34, %.lr.ph36 ], [ %i.hw, %bb.j ] ; 2 uses
  %i.hz = add nuw nsw i64 %.0247.i35, 65535
  %i.ia = and i64 %i.hz, %.0247.i35               ; 2 uses
  %i.ib = icmp ne i64 %i.ia, 0
  %i.ic = icmp ne i32 %.1263.i.ph, 0
  %i.id = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %i.id, label %.lr.ph36, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i34, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.ie = add nuw nsw i32 %i.hb, 15
  %i.if = and i32 %i.ie, 15                       ; 2 uses
  %i.ig = icmp eq i32 %i.if, 0
  %i.ih = select i1 %i.ig, i32 15, i32 0
  %i.ii = add nuw nsw i32 %i.ih, %i.if            ; 2 uses
  %i.ij = trunc nuw nsw i32 %i.ii to i8
  store i8 %i.ij, ptr %i.gz, align 1, !tbaa !51
  %i.ik = zext nneg i32 %i.ii to i64              ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.ik
  store i8 %i.hc, ptr %i.il, align 1, !tbaa !51
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !40 ; 2 uses
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr %i.im, align 4, !tbaa !40
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.ik
  store i32 %i.in, ptr %i.ip, align 4, !tbaa !23
  %.not46 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not46, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge
  %i.iq = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.ir = icmp ult ptr %1, %i.iq
  %i.is = getelementptr inbounds i8, ptr %2, i64 -3
  %i.it = getelementptr inbounds i8, ptr %2, i64 -1
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.iv = add i32 %i.v, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph42, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i40 = phi i64 [ 0, %.lr.ph42 ], [ %i.kn, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i39 = phi i64 [ 3, %.lr.ph42 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 6 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i40
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !23 ; 3 uses
  %.not278.i = icmp ult i32 %i.ix, %i.o
  %i.iy = zext i32 %i.ix to i64                   ; 2 uses
  br i1 %.not278.i, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.iz = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.iy ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.0258.i39
  %i.jb = getelementptr inbounds i8, ptr %i.ja, i64 -3
  %.val6 = load i32, ptr %i.jb, align 1, !tbaa !23
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i39
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 -3
  %.val5 = load i32, ptr %i.jd, align 1, !tbaa !23
  %i.je = icmp eq i32 %.val6, %.val5
  br i1 %i.je, label %bb.n, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %i.ir, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %.val60.i = load i64, ptr %i.iz, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i13 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i13, label %.preheader.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jf = xor i64 %.val.i, %.val60.i
  %i.jg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jf, i1 true)
  %i.jh = lshr i64 %i.jg, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.o, %bb.q
  %.pn.i = phi ptr [ %.049.i, %bb.q ], [ %1, %bb.o ]
  %.pn67.i = phi ptr [ %.045.i, %bb.q ], [ %i.iz, %bb.o ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.ji = icmp ult ptr %.049.i, %i.iq
  br i1 %i.ji, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.q
  %i.jj = xor i64 %.049.val.i, %.045.val.i
  %i.jk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jj, i1 true)
  %i.jl = lshr i64 %i.jk, 3
  %i.jm = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jl
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = sub i64 %i.jn, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.n
  %.251.i = phi ptr [ %1, %bb.n ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.iz, %bb.n ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jp = icmp ult ptr %.251.i, %i.is
  br i1 %i.jp, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.jq = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.jq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jr = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.js = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.loopexit.i
  %.352.i = phi ptr [ %i.jr, %bb.s ], [ %.251.i, %bb.r ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.js, %bb.s ], [ %.247.i, %bb.r ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.jt = icmp ult ptr %.352.i, %i.it
  br i1 %i.jt, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.ju = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.ju, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.jv = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.jw = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.453.i = phi ptr [ %i.jv, %bb.v ], [ %.352.i, %bb.u ], [ %.352.i, %bb.t ] ; 4 uses
  %.4.i = phi ptr [ %i.jw, %bb.v ], [ %.348.i, %bb.u ], [ %.348.i, %bb.t ]
  %i.jx = icmp ult ptr %.453.i, %2
  br i1 %i.jx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.jy = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.jz = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.ka = icmp eq i8 %i.jy, %i.jz
  %spec.select.idx.i = zext i1 %i.ka to i64
  %spec.select.i12 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.5.i = phi ptr [ %.453.i, %bb.w ], [ %spec.select.i12, %bb.x ]
  %i.kb = ptrtoint ptr %.5.i to i64
  %i.kc = sub i64 %i.kb, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

bb.z:                                             ; preds = %bb.l
  %i.kd = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.iy ; 2 uses
  %.val4 = load i32, ptr %i.kd, align 1, !tbaa !23
  %.val = load i32, ptr %1, align 1, !tbaa !23
  %i.ke = icmp eq i32 %.val4, %.val
  br i1 %i.ke, label %bb.aa, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kg = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.iu, ptr noundef nonnull %i.kf, ptr noundef %2, ptr noundef nonnull %i.r, ptr noundef nonnull %i.q)
  %i.kh = add i64 %i.kg, 4
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.y, %.thread63.i, %bb.p, %bb.aa
  %.2243.i = phi i64 [ %i.kc, %bb.y ], [ %i.jh, %bb.p ], [ %i.kh, %bb.aa ], [ %i.jo, %.thread63.i ] ; 4 uses
  %i.ki = icmp ugt i64 %.2243.i, %.0258.i39
  br i1 %i.ki, label %bb.ab, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.ab:                                            ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kj = sub i32 %i.iv, %i.ix
  %i.kk = zext i32 %i.kj to i64
  store i64 %i.kk, ptr %3, align 8, !tbaa !44
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.km = icmp eq ptr %i.kl, %2
  br i1 %i.km, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.z, %bb.m, %bb.ab, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.ab ], [ %.0258.i39, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i39, %bb.m ], [ %.0258.i39, %bb.z ] ; 2 uses
  %i.kn = add nuw i64 %.0248.i40, 1               ; 2 uses
  %exitcond57.not = icmp eq i64 %i.kn, %.0249.i.lcssa
  br i1 %exitcond57.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.l, !llvm.loop !10

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.ab, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.ab ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.3261.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL33ZSTD_RowFindBestMatch_extDict_6_5EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 10 uses
end_hunk_10
begin_hunk_11_@_ZN11duckdb_zstdL33ZSTD_RowFindBestMatch_extDict_6_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %i.dp = trunc i64 %i.do to i32
  %i.dq = lshr i64 %i.do, 3
  %i.dr = and i64 %i.dq, 536870880                ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dr ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ds, i32 0, i32 3, i32 1)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dt, i32 0, i32 3, i32 1)
  %i.du = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dr
  tail call void @llvm.prefetch.p0(ptr %i.du, i32 0, i32 3, i32 1)
  %i.dv = and i64 %indvars.iv50, 7
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dv
  store i32 %i.dp, ptr %i.dw, align 4, !tbaa !23
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next51
  %.val8.1 = load i64, ptr %i.dx, align 1, !tbaa !44
  %i.dy = mul i64 %.val8.1, -3523014627193847808
  %i.dz = xor i64 %i.dy, %i.cv
  %i.ea = lshr i64 %i.dz, %i.cx                   ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = lshr i64 %i.ea, 3
  %i.ed = and i64 %i.ec, 536870880                ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ed ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ee, i32 0, i32 3, i32 1)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ef, i32 0, i32 3, i32 1)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ed
  tail call void @llvm.prefetch.p0(ptr %i.eg, i32 0, i32 3, i32 1)
  %i.eh = and i64 %indvars.iv.next51, 7
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eh
  store i32 %i.eb, ptr %i.ei, align 4, !tbaa !23
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next51.1 to i32
  %exitcond53.not.1 = icmp eq i32 %i.ct, %lftr.wideiv.1
  br i1 %exitcond53.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph29.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph29.new, %bb.f, %bb.b
  %i.ej = phi i32 [ %i.h, %bb.b ], [ %i.ce, %bb.f ], [ %i.ce, %.lr.ph29.new ], [ %i.ce, %.prol.loopexit ]
  %i.ek = phi ptr [ %i.e, %bb.b ], [ %i.cf, %bb.f ], [ %i.cf, %.lr.ph29.new ], [ %i.cf, %.prol.loopexit ] ; 2 uses
  %i.el = phi ptr [ %i.c, %bb.b ], [ %i.cg, %bb.f ], [ %i.cg, %.lr.ph29.new ], [ %i.cg, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.ap, %bb.b ], [ %i.ch, %bb.f ], [ %i.ch, %.lr.ph29.new ], [ %i.ch, %.prol.loopexit ] ; 2 uses
  %i.em = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.en = icmp ult i32 %.0.i284.i, %i.v
  br i1 %i.en, label %.lr.ph31, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph31:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.eo = sub i32 56, %i.ej
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = zext i32 %.0.i284.i to i64
  %i.er = and i64 %i.u, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph31, %bb.g
  %indvars.iv54 = phi i64 [ %i.eq, %.lr.ph31 ], [ %indvars.iv.next55, %bb.g ] ; 4 uses
  %i.es = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv54
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.val9 = load i64, ptr %i.eu, align 1, !tbaa !44
  %i.ev = mul i64 %.val9, -3523014627193847808
  %i.ew = xor i64 %i.ev, %i.es
  %i.ex = lshr i64 %i.ew, %i.ep                   ; 2 uses
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = lshr i64 %i.ex, 3
  %i.fa = and i64 %i.ez, 536870880                ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fa ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.fb, i32 0, i32 3, i32 1)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fc, i32 0, i32 3, i32 1)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.fa
  tail call void @llvm.prefetch.p0(ptr %i.fd, i32 0, i32 3, i32 1)
  %i.fe = trunc nuw i64 %indvars.iv54 to i32
  %i.ff = and i64 %indvars.iv54, 7
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !23 ; 2 uses
  store i32 %i.ey, ptr %i.fg, align 4, !tbaa !23
  %i.fi = lshr i32 %i.fh, 3
  %i.fj = and i32 %i.fi, 536870880
  %i.fk = zext nneg i32 %i.fj to i64              ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.fk ; 3 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !51
  %i.fo = add i8 %i.fn, 31
  %i.fp = and i8 %i.fo, 31                        ; 2 uses
  %i.fq = zext nneg i8 %i.fp to i32
  %i.fr = icmp eq i8 %i.fp, 0
  %i.fs = select i1 %i.fr, i32 31, i32 0
  %i.ft = add nuw nsw i32 %i.fs, %i.fq            ; 2 uses
  %i.fu = trunc nuw nsw i32 %i.ft to i8
  store i8 %i.fu, ptr %i.fm, align 1, !tbaa !51
  %i.fv = trunc i32 %i.fh to i8
  %i.fw = zext nneg i32 %i.ft to i64              ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fw
  store i8 %i.fv, ptr %i.fx, align 1, !tbaa !51
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fw
  store i32 %i.fe, ptr %i.fy, align 4, !tbaa !23
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.fz = icmp samesign ult i64 %indvars.iv.next55, %i.er
  br i1 %i.fz, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.v, ptr %i.ao, align 4, !tbaa !40
  %i.ga = and i64 %i.u, 4294967295
  %i.gb = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.val10 = load i64, ptr %i.gc, align 1, !tbaa !44
  %i.gd = mul i64 %.val10, -3523014627193847808
  %i.ge = xor i64 %i.gd, %i.ak
  %i.gf = sub i32 56, %i.h
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = lshr i64 %i.ge, %i.gg                   ; 2 uses
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = lshr i64 %i.gh, 3
  %i.gk = and i64 %i.gj, 536870880                ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gk ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.gl, i32 0, i32 3, i32 1)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.gm, i32 0, i32 3, i32 1)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gk
  tail call void @llvm.prefetch.p0(ptr %i.gn, i32 0, i32 3, i32 1)
  %i.go = and i64 %i.u, 7
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !23
  store i32 %i.gi, ptr %i.gp, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %.val11 = load i64, ptr %1, align 1, !tbaa !44
  %i.gr = mul i64 %.val11, -3523014627193847808
  %i.gs = xor i64 %i.gr, %i.ak
  %i.gt = sub i32 56, %i.h
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = lshr i64 %i.gs, %i.gu
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.v, ptr %i.gx, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.gw, %bb.h ], [ %i.gq, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !83
  %i.ha = add i32 %i.gz, %.0257.i
  store i32 %i.ha, ptr %i.gy, align 8, !tbaa !83
  %i.hb = lshr i32 %.0257.i, 3
  %i.hc = and i32 %i.hb, 536870880
  %i.hd = zext nneg i32 %i.hc to i64              ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hd ; 5 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hg = trunc i32 %.0257.i to i8                ; 2 uses
  %i.hh = insertelement <16 x i8> poison, i8 %i.hg, i64 0
  %i.hi = load <16 x i8>, ptr %i.he, align 1, !tbaa !51
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hk = load <16 x i8>, ptr %i.hj, align 1, !tbaa !51
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hd ; 2 uses
  %i.hm = zext i8 %i.hf to i32                    ; 3 uses
  %i.hn = shufflevector <16 x i8> %i.hi, <16 x i8> %i.hk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ho = shufflevector <16 x i8> %i.hh, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.hp = icmp eq <32 x i8> %i.hn, %i.ho
  %i.hq = bitcast <32 x i1> %i.hp to i32          ; 3 uses
  %.not = icmp eq i32 %i.hq, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hr = tail call noundef i32 @llvm.fshr.i32(i32 %i.hq, i32 %i.hq, i32 range(i32 0, 64) %i.hm)
  %i.hs = zext i32 %i.hr to i64
  br label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %bb.k
  %.0247.i35 = phi i64 [ %i.ii, %bb.k ], [ %i.hs, %.lr.ph36.preheader ] ; 3 uses
  %.0249.i34 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph36.preheader ] ; 4 uses
  %.0262.i33 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.al, %.lr.ph36.preheader ] ; 2 uses
  %i.ht = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i35, i1 true)
  %i.hu = trunc nuw nsw i64 %i.ht to i32
  %i.hv = add nuw nsw i32 %i.hu, %i.hm
  %i.hw = and i32 %i.hv, 31                       ; 2 uses
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !23 ; 4 uses
  %i.ia = icmp eq i32 %i.hw, 0
  br i1 %i.ia, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph36
  %i.ib = icmp ult i32 %i.hz, %i.ag
  br i1 %i.ib, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not276.i = icmp ult i32 %i.hz, %i.o
  %i.ic = zext i32 %i.hz to i64
  %. = select i1 %.not276.i, ptr %i.m, ptr %i.k
  %i.id = getelementptr inbounds nuw i8, ptr %., i64 %i.ic
  tail call void @llvm.prefetch.p0(ptr %i.id, i32 0, i32 3, i32 1)
  %i.ie = add nuw nsw i64 %.0249.i34, 1
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i34
  store i32 %i.hz, ptr %i.if, align 4, !tbaa !23
  %i.ig = add nsw i32 %.0262.i33, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph36
  %.1263.i.ph = phi i32 [ %.0262.i33, %.lr.ph36 ], [ %i.ig, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i34, %.lr.ph36 ], [ %i.ie, %bb.j ] ; 2 uses
  %i.ih = add nuw nsw i64 %.0247.i35, 4294967295
  %i.ii = and i64 %i.ih, %.0247.i35               ; 2 uses
  %i.ij = icmp ne i64 %i.ii, 0
  %i.ik = icmp ne i32 %.1263.i.ph, 0
  %i.il = select i1 %i.ij, i1 %i.ik, i1 false
  br i1 %i.il, label %.lr.ph36, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i34, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.im = add nuw nsw i32 %i.hm, 31
  %i.in = and i32 %i.im, 31                       ; 2 uses
  %i.io = icmp eq i32 %i.in, 0
  %i.ip = select i1 %i.io, i32 31, i32 0
  %i.iq = add nuw nsw i32 %i.ip, %i.in            ; 2 uses
  %i.ir = trunc nuw nsw i32 %i.iq to i8
  store i8 %i.ir, ptr %i.he, align 1, !tbaa !51
  %i.is = zext nneg i32 %i.iq to i64              ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.is
  store i8 %i.hg, ptr %i.it, align 1, !tbaa !51
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !40 ; 2 uses
  %i.iw = add i32 %i.iv, 1
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !40
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.is
  store i32 %i.iv, ptr %i.ix, align 4, !tbaa !23
  %.not46 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not46, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge
  %i.iy = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.iz = icmp ult ptr %1, %i.iy
  %i.ja = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jb = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jd = add i32 %i.v, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph42, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i40 = phi i64 [ 0, %.lr.ph42 ], [ %i.kv, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i39 = phi i64 [ 3, %.lr.ph42 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 6 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i40
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !23 ; 3 uses
  %.not278.i = icmp ult i32 %i.jf, %i.o
  %i.jg = zext i32 %i.jf to i64                   ; 2 uses
  br i1 %.not278.i, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jh = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.jg ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %.0258.i39
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 -3
  %.val6 = load i32, ptr %i.jj, align 1, !tbaa !23
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i39
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 -3
  %.val5 = load i32, ptr %i.jl, align 1, !tbaa !23
  %i.jm = icmp eq i32 %.val6, %.val5
  br i1 %i.jm, label %bb.n, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %i.iz, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %.val60.i = load i64, ptr %i.jh, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i13 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i13, label %.preheader.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jn = xor i64 %.val.i, %.val60.i
  %i.jo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jn, i1 true)
  %i.jp = lshr i64 %i.jo, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.o, %bb.q
  %.pn.i = phi ptr [ %.049.i, %bb.q ], [ %1, %bb.o ]
  %.pn67.i = phi ptr [ %.045.i, %bb.q ], [ %i.jh, %bb.o ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jq = icmp ult ptr %.049.i, %i.iy
  br i1 %i.jq, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.q
  %i.jr = xor i64 %.049.val.i, %.045.val.i
  %i.js = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jr, i1 true)
  %i.jt = lshr i64 %i.js, 3
  %i.ju = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jt
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = sub i64 %i.jv, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.n
  %.251.i = phi ptr [ %1, %bb.n ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jh, %bb.n ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jx = icmp ult ptr %.251.i, %i.ja
  br i1 %i.jx, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.jy = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.jy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jz = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.ka = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.loopexit.i
  %.352.i = phi ptr [ %i.jz, %bb.s ], [ %.251.i, %bb.r ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.ka, %bb.s ], [ %.247.i, %bb.r ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.kb = icmp ult ptr %.352.i, %i.jb
  br i1 %i.kb, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.kc = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.kc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.kd = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.ke = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.453.i = phi ptr [ %i.kd, %bb.v ], [ %.352.i, %bb.u ], [ %.352.i, %bb.t ] ; 4 uses
  %.4.i = phi ptr [ %i.ke, %bb.v ], [ %.348.i, %bb.u ], [ %.348.i, %bb.t ]
  %i.kf = icmp ult ptr %.453.i, %2
  br i1 %i.kf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.kg = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.kh = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.ki = icmp eq i8 %i.kg, %i.kh
  %spec.select.idx.i = zext i1 %i.ki to i64
  %spec.select.i12 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.5.i = phi ptr [ %.453.i, %bb.w ], [ %spec.select.i12, %bb.x ]
  %i.kj = ptrtoint ptr %.5.i to i64
  %i.kk = sub i64 %i.kj, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

bb.z:                                             ; preds = %bb.l
  %i.kl = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.jg ; 2 uses
  %.val4 = load i32, ptr %i.kl, align 1, !tbaa !23
  %.val = load i32, ptr %1, align 1, !tbaa !23
  %i.km = icmp eq i32 %.val4, %.val
  br i1 %i.km, label %bb.aa, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.ko = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.jc, ptr noundef nonnull %i.kn, ptr noundef %2, ptr noundef nonnull %i.r, ptr noundef nonnull %i.q)
  %i.kp = add i64 %i.ko, 4
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.y, %.thread63.i, %bb.p, %bb.aa
  %.2243.i = phi i64 [ %i.kk, %bb.y ], [ %i.jp, %bb.p ], [ %i.kp, %bb.aa ], [ %i.jw, %.thread63.i ] ; 4 uses
  %i.kq = icmp ugt i64 %.2243.i, %.0258.i39
  br i1 %i.kq, label %bb.ab, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.ab:                                            ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kr = sub i32 %i.jd, %i.jf
  %i.ks = zext i32 %i.kr to i64
  store i64 %i.ks, ptr %3, align 8, !tbaa !44
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.ku = icmp eq ptr %i.kt, %2
  br i1 %i.ku, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.z, %bb.m, %bb.ab, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.ab ], [ %.0258.i39, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i39, %bb.m ], [ %.0258.i39, %bb.z ] ; 2 uses
  %i.kv = add nuw i64 %.0248.i40, 1               ; 2 uses
  %exitcond60.not = icmp eq i64 %i.kv, %.0249.i.lcssa
  br i1 %exitcond60.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.l, !llvm.loop !10

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.ab, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.ab ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.3261.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL33ZSTD_RowFindBestMatch_extDict_6_6EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 8 uses
end_hunk_11
begin_hunk_12_@_ZN11duckdb_zstdL40ZSTD_RowFindBestMatch_dictMatchState_4_4EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %indvars.iv.next98.prol = add nuw nsw i64 %i.cx, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph55
  %indvars.iv97.unr = phi i64 [ %i.cx, %.lr.ph55 ], [ %indvars.iv.next98.prol, %.prol.loopexit.unr-lcssa ]
  %i.dx = icmp eq i32 %i.dg, 1
  br i1 %i.dx, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph55.new

.lr.ph55.new:                                     ; preds = %.prol.loopexit, %.lr.ph55.new
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.1, %.lr.ph55.new ], [ %indvars.iv97.unr, %.prol.loopexit ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv97
  %.val13 = load i32, ptr %i.dy, align 1, !tbaa !23
  %i.dz = mul i32 %.val13, -1640531535
  %i.ea = xor i32 %i.dz, %i.dk
  %i.eb = lshr i32 %i.ea, %i.dl                   ; 2 uses
  %i.ec = lshr i32 %i.eb, 4
  %i.ed = and i32 %i.ec, 268435440
  %i.ee = zext nneg i32 %i.ed to i64              ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ee
  tail call void @llvm.prefetch.p0(ptr %i.ef, i32 0, i32 3, i32 1)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ee
  tail call void @llvm.prefetch.p0(ptr %i.eg, i32 0, i32 3, i32 1)
  %i.eh = and i64 %indvars.iv97, 7
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.eh
  store i32 %i.eb, ptr %i.ei, align 4, !tbaa !23
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.next98
  %.val13.1 = load i32, ptr %i.ej, align 1, !tbaa !23
  %i.ek = mul i32 %.val13.1, -1640531535
  %i.el = xor i32 %i.ek, %i.dk
  %i.em = lshr i32 %i.el, %i.dl                   ; 2 uses
  %i.en = lshr i32 %i.em, 4
  %i.eo = and i32 %i.en, 268435440
  %i.ep = zext nneg i32 %i.eo to i64              ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ep
  tail call void @llvm.prefetch.p0(ptr %i.eq, i32 0, i32 3, i32 1)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ep
  tail call void @llvm.prefetch.p0(ptr %i.er, i32 0, i32 3, i32 1)
  %i.es = and i64 %indvars.iv.next98, 7
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.es
  store i32 %i.em, ptr %i.et, align 4, !tbaa !23
  %indvars.iv.next98.1 = add nuw nsw i64 %indvars.iv97, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next98.1 to i32
  %exitcond100.not.1 = icmp eq i32 %i.dh, %lftr.wideiv.1
  br i1 %exitcond100.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph55.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph55.new, %bb.f, %bb.b
  %i.eu = phi i32 [ %i.i, %bb.b ], [ %i.cs, %bb.f ], [ %i.cs, %.lr.ph55.new ], [ %i.cs, %.prol.loopexit ]
  %i.ev = phi ptr [ %i.f, %bb.b ], [ %i.ct, %bb.f ], [ %i.ct, %.lr.ph55.new ], [ %i.ct, %.prol.loopexit ] ; 2 uses
  %i.ew = phi ptr [ %i.d, %bb.b ], [ %i.cu, %bb.f ], [ %i.cu, %.lr.ph55.new ], [ %i.cu, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.be, %bb.b ], [ %i.cv, %bb.f ], [ %i.cv, %.lr.ph55.new ], [ %i.cv, %.prol.loopexit ] ; 2 uses
  %i.ex = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.ey = icmp ult i32 %.0.i284.i, %i.t
  br i1 %i.ey, label %.lr.ph57, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph57:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.ez = sub i32 24, %i.eu
  %i.fa = zext i32 %.0.i284.i to i64
  %i.fb = and i64 %i.s, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph57, %bb.g
  %indvars.iv101 = phi i64 [ %i.fa, %.lr.ph57 ], [ %indvars.iv.next102, %bb.g ] ; 4 uses
  %i.fc = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv101
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = trunc i64 %i.fc to i32
  %.val14 = load i32, ptr %i.fe, align 1, !tbaa !23
  %i.fg = mul i32 %.val14, -1640531535
  %i.fh = xor i32 %i.fg, %i.ff
  %i.fi = lshr i32 %i.fh, %i.ez                   ; 2 uses
  %i.fj = lshr i32 %i.fi, 4
  %i.fk = and i32 %i.fj, 268435440
  %i.fl = zext nneg i32 %i.fk to i64              ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fl
  tail call void @llvm.prefetch.p0(ptr %i.fm, i32 0, i32 3, i32 1)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fl
  tail call void @llvm.prefetch.p0(ptr %i.fn, i32 0, i32 3, i32 1)
  %i.fo = trunc nuw i64 %indvars.iv101 to i32
  %i.fp = and i64 %indvars.iv101, 7
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.fp ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !23 ; 2 uses
  store i32 %i.fi, ptr %i.fq, align 4, !tbaa !23
  %i.fs = lshr i32 %i.fr, 4
  %i.ft = and i32 %i.fs, 268435440
  %i.fu = zext nneg i32 %i.ft to i64              ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fu ; 3 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !51
  %i.fy = add i8 %i.fx, 15
  %i.fz = and i8 %i.fy, 15                        ; 2 uses
  %i.ga = zext nneg i8 %i.fz to i32
  %i.gb = icmp eq i8 %i.fz, 0
  %i.gc = select i1 %i.gb, i32 15, i32 0
  %i.gd = add nuw nsw i32 %i.gc, %i.ga            ; 2 uses
  %i.ge = trunc nuw nsw i32 %i.gd to i8
  store i8 %i.ge, ptr %i.fw, align 1, !tbaa !51
  %i.gf = trunc i32 %i.fr to i8
  %i.gg = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gg
  store i8 %i.gf, ptr %i.gh, align 1, !tbaa !51
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.gg
  store i32 %i.fo, ptr %i.gi, align 4, !tbaa !23
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.gj = icmp samesign ult i64 %indvars.iv.next102, %i.fb
  br i1 %i.gj, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.t, ptr %i.bd, align 4, !tbaa !40
  %i.gk = and i64 %i.s, 4294967295
  %i.gl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = trunc i64 %i.ai to i32
  %.val15 = load i32, ptr %i.gm, align 1, !tbaa !23
  %i.go = mul i32 %.val15, -1640531535
  %i.gp = xor i32 %i.go, %i.gn
  %i.gq = sub i32 24, %i.i
  %i.gr = lshr i32 %i.gp, %i.gq                   ; 2 uses
  %i.gs = lshr i32 %i.gr, 4
  %i.gt = and i32 %i.gs, 268435440
  %i.gu = zext nneg i32 %i.gt to i64              ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.gu
  tail call void @llvm.prefetch.p0(ptr %i.gv, i32 0, i32 3, i32 1)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gu
  tail call void @llvm.prefetch.p0(ptr %i.gw, i32 0, i32 3, i32 1)
  %i.gx = and i64 %i.s, 7
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.gx ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !23
  store i32 %i.gr, ptr %i.gy, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %i.ha = trunc i64 %i.ai to i32
  %i.hb = xor i32 %i.as, %i.ha
  %i.hc = sub i32 24, %i.i
  %i.hd = lshr i32 %i.hb, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.t, ptr %i.he, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.hd, %bb.h ], [ %i.gz, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !83
  %i.hh = add i32 %i.hg, %.0257.i
  store i32 %i.hh, ptr %i.hf, align 8, !tbaa !83
  %i.hi = lshr i32 %.0257.i, 4
  %i.hj = and i32 %i.hi, 268435440
  %i.hk = zext nneg i32 %i.hj to i64              ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hk ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.hk ; 4 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !51  ; 2 uses
  %i.ho = zext i8 %i.hn to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hp = trunc i32 %.0257.i to i8                ; 2 uses
  %i.hq = insertelement <16 x i8> poison, i8 %i.hp, i64 0
  %i.hr = shufflevector <16 x i8> %i.hq, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.hs = load <16 x i8>, ptr %i.hm, align 1, !tbaa !51
  %i.ht = icmp eq <16 x i8> %i.hs, %i.hr
  %i.hu = bitcast <16 x i1> %i.ht to i16          ; 3 uses
  %.not = icmp eq i16 %i.hu, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hv = zext i8 %i.hn to i16
  %i.hw = tail call noundef i16 @llvm.fshr.i16(i16 %i.hu, i16 %i.hu, i16 %i.hv)
  %i.hx = zext i16 %i.hw to i64
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %bb.k
  %.0247.i61 = phi i64 [ %i.in, %bb.k ], [ %i.hx, %.lr.ph62.preheader ] ; 3 uses
  %.0249.i60 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph62.preheader ] ; 4 uses
  %.0262.i59 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.aj, %.lr.ph62.preheader ] ; 3 uses
  %i.hy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i61, i1 true)
  %i.hz = trunc nuw nsw i64 %i.hy to i32
  %i.ia = add nuw nsw i32 %i.hz, %i.ho
  %i.ib = and i32 %i.ia, 15                       ; 2 uses
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !23 ; 3 uses
  %i.if = icmp eq i32 %i.ib, 0
  br i1 %i.if, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph62
  %i.ig = icmp ult i32 %i.ie, %i.ae
  br i1 %i.ig, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ih = zext i32 %i.ie to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ih
  tail call void @llvm.prefetch.p0(ptr %i.ii, i32 0, i32 3, i32 1)
  %i.ij = add nuw nsw i64 %.0249.i60, 1
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i60
  store i32 %i.ie, ptr %i.ik, align 4, !tbaa !23
  %i.il = add nsw i32 %.0262.i59, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph62
  %.1263.i.ph = phi i32 [ %.0262.i59, %.lr.ph62 ], [ %i.il, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i60, %.lr.ph62 ], [ %i.ij, %bb.j ] ; 2 uses
  %i.im = add nuw nsw i64 %.0247.i61, 65535
  %i.in = and i64 %i.im, %.0247.i61               ; 2 uses
  %i.io = icmp ne i64 %i.in, 0
  %i.ip = icmp ne i32 %.1263.i.ph, 0
  %i.iq = select i1 %i.io, i1 %i.ip, i1 false
  br i1 %i.iq, label %.lr.ph62, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.aj, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i59, %bb.i ], [ %.1263.i.ph, %bb.k ] ; 2 uses
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i60, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.ir = add nuw nsw i32 %i.ho, 15
  %i.is = and i32 %i.ir, 15                       ; 2 uses
  %i.it = icmp eq i32 %i.is, 0
  %i.iu = select i1 %i.it, i32 15, i32 0
  %i.iv = add nuw nsw i32 %i.iu, %i.is            ; 2 uses
  %i.iw = trunc nuw nsw i32 %i.iv to i8
  store i8 %i.iw, ptr %i.hm, align 1, !tbaa !51
  %i.ix = zext nneg i32 %i.iv to i64              ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.ix
  store i8 %i.hp, ptr %i.iy, align 1, !tbaa !51
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !40 ; 2 uses
  %i.jb = add i32 %i.ja, 1
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !40
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ix
  store i32 %i.ja, ptr %i.jc, align 4, !tbaa !23
  %.not91 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not91, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %._crit_edge
  %i.jd = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.je = icmp ult ptr %1, %i.jd
  %i.jf = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jg = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jh = add i32 %i.t, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph70, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i68 = phi i64 [ 0, %.lr.ph70 ], [ %i.ku, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i67 = phi i64 [ 3, %.lr.ph70 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i68
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !23 ; 2 uses
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.jk ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %.0258.i67
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 -3
  %.val8 = load i32, ptr %i.jn, align 1, !tbaa !23
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i67
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 -3
  %.val = load i32, ptr %i.jp, align 1, !tbaa !23
  %i.jq = icmp eq i32 %.val8, %.val
  br i1 %i.jq, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.je, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.jl, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i20 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i20, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jr = xor i64 %.val.i, %.val60.i
  %i.js = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jr, i1 true)
  %i.jt = lshr i64 %i.js, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.jl, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.ju = icmp ult ptr %.049.i, %i.jd
  br i1 %i.ju, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.jv = xor i64 %.049.val.i, %.045.val.i
  %i.jw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jv, i1 true)
  %i.jx = lshr i64 %i.jw, 3
  %i.jy = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jx
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = sub i64 %i.jz, %i.q
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jl, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.kb = icmp ult ptr %.251.i, %i.jf
  br i1 %i.kb, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.kc = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.kc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kd = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.ke = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.kd, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.ke, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.kf = icmp ult ptr %.352.i, %i.jg
  br i1 %i.kf, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.kg = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.kg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kh = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.ki = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.kh, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i17 = phi ptr [ %i.ki, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.kj = icmp ult ptr %.453.i, %2
  br i1 %i.kj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kk = load i8, ptr %.4.i17, align 1, !tbaa !51
  %i.kl = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.km = icmp eq i8 %i.kk, %i.kl
  %spec.select.idx.i = zext i1 %i.km to i64
  %spec.select.i19 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i19, %bb.w ]
  %i.kn = ptrtoint ptr %.5.i to i64
  %i.ko = sub i64 %i.kn, %i.q
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.jt, %bb.o ], [ %i.ka, %.thread63.i ], [ %i.ko, %bb.x ] ; 4 uses
  %i.kp = icmp ugt i64 %.2243.i, %.0258.i67
  br i1 %i.kp, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kq = sub i32 %i.jh, %i.jj
  %i.kr = zext i32 %i.kq to i64
  store i64 %i.kr, ptr %3, align 8, !tbaa !44
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kt = icmp eq ptr %i.ks, %2
  br i1 %i.kt, label %._crit_edge71, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i67, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i67, %bb.l ] ; 2 uses
  %i.ku = add nuw i64 %.0248.i68, 1               ; 2 uses
  %exitcond104.not = icmp eq i64 %i.ku, %.0249.i.lcssa
  br i1 %exitcond104.not, label %._crit_edge71, label %bb.l, !llvm.loop !10

._crit_edge71:                                    ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.kv = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !52
  %i.kx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !36 ; 3 uses
  %i.kz = load ptr, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = ptrtoint ptr %i.ky to i64
  %.neg.i.neg = sub i64 %i.la, %i.lb
  %.neg279.i.neg92 = trunc i64 %.neg.i.neg to i32
  %i.lc = load i8, ptr %i.ay, align 1, !tbaa !51  ; 2 uses
  %i.ld = zext i8 %i.lc to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.le = insertelement <16 x i8> poison, i8 %i.ba, i64 0
  %i.lf = shufflevector <16 x i8> %i.le, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.lg = load <16 x i8>, ptr %i.ay, align 1, !tbaa !51
  %i.lh = icmp eq <16 x i8> %i.lg, %i.lf
  %i.li = bitcast <16 x i1> %i.lh to i16          ; 3 uses
  %i.lj = icmp ne i16 %i.li, 0
  %i.lk = icmp ne i32 %.0262.i.lcssa, 0
  %i.ll = select i1 %i.lj, i1 %i.lk, i1 false
  br i1 %i.ll, label %.lr.ph79.preheader, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit

.lr.ph79.preheader:                               ; preds = %._crit_edge71
  %i.lm = zext i8 %i.lc to i16
  %i.ln = tail call noundef i16 @llvm.fshr.i16(i16 %i.li, i16 %i.li, i16 %i.lm)
  %i.lo = zext i16 %i.ln to i64
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %bb.ab
  %.0238.i78 = phi i64 [ %i.me, %bb.ab ], [ %i.lo, %.lr.ph79.preheader ] ; 3 uses
  %.0240.i77 = phi i64 [ %.1.i.ph, %bb.ab ], [ 0, %.lr.ph79.preheader ] ; 4 uses
  %.3265.i76 = phi i32 [ %.4266.i.ph, %bb.ab ], [ %.0262.i.lcssa, %.lr.ph79.preheader ] ; 2 uses
  %i.lp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0238.i78, i1 true)
  %i.lq = trunc nuw nsw i64 %i.lp to i32
  %i.lr = add nuw nsw i32 %i.lq, %i.ld
  %i.ls = and i32 %i.lr, 15                       ; 2 uses
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !23 ; 3 uses
  %i.lw = icmp eq i32 %i.ls, 0
  br i1 %i.lw, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph79
  %i.lx = icmp ult i32 %i.lv, %i.kw
  br i1 %i.lx, label %._crit_edge80, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ly = zext i32 %i.lv to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.ly
  tail call void @llvm.prefetch.p0(ptr %i.lz, i32 0, i32 3, i32 1)
  %i.ma = add nuw nsw i64 %.0240.i77, 1
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0240.i77
  store i32 %i.lv, ptr %i.mb, align 4, !tbaa !23
  %i.mc = add nsw i32 %.3265.i76, -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph79
  %.4266.i.ph = phi i32 [ %.3265.i76, %.lr.ph79 ], [ %i.mc, %bb.aa ] ; 2 uses
  %.1.i.ph = phi i64 [ %.0240.i77, %.lr.ph79 ], [ %i.ma, %bb.aa ] ; 2 uses
  %i.md = add nuw nsw i64 %.0238.i78, 65535
  %i.me = and i64 %i.md, %.0238.i78               ; 2 uses
  %i.mf = icmp ne i64 %i.me, 0
  %i.mg = icmp ne i32 %.4266.i.ph, 0
  %i.mh = select i1 %i.mf, i1 %i.mg, i1 false
  br i1 %i.mh, label %.lr.ph79, label %._crit_edge80, !llvm.loop !12

._crit_edge80:                                    ; preds = %bb.ab, %bb.z
  %.0240.i.lcssa = phi i64 [ %.0240.i77, %bb.z ], [ %.1.i.ph, %bb.ab ] ; 2 uses
  %.not93 = icmp eq i64 %.0240.i.lcssa, 0
  br i1 %.not93, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge80
  %invariant.op = add i32 %i.t, %.neg279.i.neg92
  %.val9 = load i32, ptr %1, align 1, !tbaa !23
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.mj = add i32 %invariant.op, 3
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph87, %.thread39
  %.0239.i85 = phi i64 [ 0, %.lr.ph87 ], [ %i.my, %.thread39 ] ; 2 uses
  %.4.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.6.i.ph, %.thread39 ] ; 3 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0239.i85
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !23 ; 2 uses
  %i.mm = zext i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.mm ; 2 uses
  %.val10 = load i32, ptr %i.mn, align 1, !tbaa !23
  %i.mo = icmp eq i32 %.val10, %.val9
  br i1 %i.mo, label %bb.ad, label %.thread39

bb.ad:                                            ; preds = %bb.ac
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  %i.mq = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.mi, ptr noundef nonnull %i.mp, ptr noundef %2, ptr noundef %i.kz, ptr noundef %i.p)
  %i.mr = add i64 %i.mq, 4                        ; 4 uses
  %i.ms = icmp ugt i64 %i.mr, %.4.i84
  br i1 %i.ms, label %bb.ae, label %.thread39

bb.ae:                                            ; preds = %bb.ad
  %i.mt = add i32 %i.n, %i.ml
  %i.mu = sub i32 %i.mj, %i.mt
  %i.mv = zext i32 %i.mu to i64
  store i64 %i.mv, ptr %3, align 8, !tbaa !44
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 %i.mr
  %i.mx = icmp eq ptr %i.mw, %2
  br i1 %i.mx, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.thread39

.thread39:                                        ; preds = %bb.ac, %bb.ae, %bb.ad
  %.6.i.ph = phi i64 [ %i.mr, %bb.ae ], [ %.4.i84, %bb.ad ], [ %.4.i84, %bb.ac ] ; 2 uses
  %i.my = add nuw i64 %.0239.i85, 1               ; 2 uses
  %exitcond105.not = icmp eq i64 %i.my, %.0240.i.lcssa
  br i1 %exitcond105.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.ac, !llvm.loop !13

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %.thread39, %bb.ae, %._crit_edge71, %._crit_edge80
  %.7.i = phi i64 [ %.3261.i, %._crit_edge80 ], [ %.3261.i, %._crit_edge71 ], [ %.6.i.ph, %.thread39 ], [ %i.mr, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i64 %.7.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL40ZSTD_RowFindBestMatch_dictMatchState_4_5EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = alloca [64 x i32], align 16              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = trunc i64 %i.s to i32                    ; 9 uses
  %i.u = load i32, ptr %i.j, align 8, !tbaa !80
  %i.v = shl nuw i32 1, %i.u                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !78   ; 2 uses
  %i.y = sub i32 %i.t, %i.x
  %i.z = icmp ugt i32 %i.y, %i.v
  %i.aa = sub i32 %i.t, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !54
  %.not.i = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not.i, i1 %i.z, i1 false
  %i.ae = select i1 %i.ad, i32 %i.aa, i32 %i.x
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !81
  %..i = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 5)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !50 ; 2 uses
  %i.aj = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !49
  %.val11 = load i32, ptr %1, align 1, !tbaa !23
  %i.as = mul i32 %.val11, -1640531535            ; 2 uses
  %i.at = sub i32 24, %i.ar
  %i.au = lshr i32 %i.as, %i.at                   ; 2 uses
  %i.av = lshr i32 %i.au, 3
  %i.aw = and i32 %i.av, 536870880
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ax ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.az, i32 0, i32 3, i32 1)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ba, i32 0, i32 3, i32 1)
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.bb = trunc i32 %i.au to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !55
  %.not274.i = icmp eq i32 %i.bd, 0
  br i1 %.not274.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !40 ; 5 uses
  %i.bg = sub i32 %i.t, %i.bf
  %i.bh = icmp ugt i32 %i.bg, 384
  br i1 %i.bh, label %bb.c, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, !prof !82

bb.c:                                             ; preds = %bb.b
  %i.bi = icmp ult i32 %i.bf, -96
  br i1 %i.bi, label %.lr.ph, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bj = add nuw i32 %i.bf, 96
  %i.bk = sub i32 24, %i.i
  %i.bl = zext i32 %i.bf to i64
  %wide.trip.count = zext i32 %i.bj to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bl, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bm = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = trunc i64 %i.bm to i32
  %.val12 = load i32, ptr %i.bo, align 1, !tbaa !23
  %i.bq = mul i32 %.val12, -1640531535
  %i.br = xor i32 %i.bq, %i.bp
  %i.bs = lshr i32 %i.br, %i.bk                   ; 2 uses
  %i.bt = lshr i32 %i.bs, 3
  %i.bu = and i32 %i.bt, 536870880
  %i.bv = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bv ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bw, i32 0, i32 3, i32 1)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bx, i32 0, i32 3, i32 1)
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bv
  tail call void @llvm.prefetch.p0(ptr %i.by, i32 0, i32 3, i32 1)
  %i.bz = trunc nuw i64 %indvars.iv to i32
  %i.ca = and i64 %indvars.iv, 7
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !23 ; 2 uses
  store i32 %i.bs, ptr %i.cb, align 4, !tbaa !23
  %i.cd = lshr i32 %i.cc, 3
  %i.ce = and i32 %i.cd, 536870880
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cf ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !51
  %i.cj = add i8 %i.ci, 31
  %i.ck = and i8 %i.cj, 31                        ; 2 uses
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = icmp eq i8 %i.ck, 0
  %i.cn = select i1 %i.cm, i32 31, i32 0
  %i.co = add nuw nsw i32 %i.cn, %i.cl            ; 2 uses
  %i.cp = trunc nuw nsw i32 %i.co to i8
  store i8 %i.cp, ptr %i.ch, align 1, !tbaa !51
  %i.cq = trunc i32 %i.cc to i8
  %i.cr = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cr
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !51
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cr
  store i32 %i.bz, ptr %i.ct, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit, label %bb.d, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit: ; preds = %bb.d
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !37
  %.pre115 = load ptr, ptr %i.e, align 8, !tbaa !48
  %.pre116 = load i32, ptr %i.h, align 4, !tbaa !49
  br label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i: ; preds = %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit, %bb.c
  %i.cu = phi i32 [ %.pre116, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit ], [ %i.i, %bb.c ] ; 4 uses
  %i.cv = phi ptr [ %.pre115, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit ], [ %i.f, %bb.c ] ; 6 uses
end_hunk_12
begin_hunk_13_@_ZN11duckdb_zstdL40ZSTD_RowFindBestMatch_dictMatchState_4_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv97
  %.val13 = load i32, ptr %i.eb, align 1, !tbaa !23
  %i.ec = mul i32 %.val13, -1640531535
  %i.ed = xor i32 %i.ec, %i.dm
  %i.ee = lshr i32 %i.ed, %i.dn                   ; 2 uses
  %i.ef = lshr i32 %i.ee, 3
  %i.eg = and i32 %i.ef, 536870880
  %i.eh = zext nneg i32 %i.eg to i64              ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.eh ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ei, i32 0, i32 3, i32 1)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ej, i32 0, i32 3, i32 1)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.eh
  tail call void @llvm.prefetch.p0(ptr %i.ek, i32 0, i32 3, i32 1)
  %i.el = and i64 %indvars.iv97, 7
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.el
  store i32 %i.ee, ptr %i.em, align 4, !tbaa !23
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.next98
  %.val13.1 = load i32, ptr %i.en, align 1, !tbaa !23
  %i.eo = mul i32 %.val13.1, -1640531535
  %i.ep = xor i32 %i.eo, %i.dm
  %i.eq = lshr i32 %i.ep, %i.dn                   ; 2 uses
  %i.er = lshr i32 %i.eq, 3
  %i.es = and i32 %i.er, 536870880
  %i.et = zext nneg i32 %i.es to i64              ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.et ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.eu, i32 0, i32 3, i32 1)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ev, i32 0, i32 3, i32 1)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.et
  tail call void @llvm.prefetch.p0(ptr %i.ew, i32 0, i32 3, i32 1)
  %i.ex = and i64 %indvars.iv.next98, 7
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ex
  store i32 %i.eq, ptr %i.ey, align 4, !tbaa !23
  %indvars.iv.next98.1 = add nuw nsw i64 %indvars.iv97, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next98.1 to i32
  %exitcond100.not.1 = icmp eq i32 %i.dj, %lftr.wideiv.1
  br i1 %exitcond100.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph55.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph55.new, %bb.f, %bb.b
  %i.ez = phi i32 [ %i.i, %bb.b ], [ %i.cu, %bb.f ], [ %i.cu, %.lr.ph55.new ], [ %i.cu, %.prol.loopexit ]
  %i.fa = phi ptr [ %i.f, %bb.b ], [ %i.cv, %bb.f ], [ %i.cv, %.lr.ph55.new ], [ %i.cv, %.prol.loopexit ] ; 2 uses
  %i.fb = phi ptr [ %i.d, %bb.b ], [ %i.cw, %bb.f ], [ %i.cw, %.lr.ph55.new ], [ %i.cw, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.bf, %bb.b ], [ %i.cx, %bb.f ], [ %i.cx, %.lr.ph55.new ], [ %i.cx, %.prol.loopexit ] ; 2 uses
  %i.fc = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.fd = icmp ult i32 %.0.i284.i, %i.t
  br i1 %i.fd, label %.lr.ph57, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph57:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.fe = sub i32 24, %i.ez
  %i.ff = zext i32 %.0.i284.i to i64
  %i.fg = and i64 %i.s, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph57, %bb.g
  %indvars.iv101 = phi i64 [ %i.ff, %.lr.ph57 ], [ %indvars.iv.next102, %bb.g ] ; 4 uses
  %i.fh = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 %indvars.iv101
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = trunc i64 %i.fh to i32
  %.val14 = load i32, ptr %i.fj, align 1, !tbaa !23
  %i.fl = mul i32 %.val14, -1640531535
  %i.fm = xor i32 %i.fl, %i.fk
  %i.fn = lshr i32 %i.fm, %i.fe                   ; 2 uses
  %i.fo = lshr i32 %i.fn, 3
  %i.fp = and i32 %i.fo, 536870880
  %i.fq = zext nneg i32 %i.fp to i64              ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fq ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.fr, i32 0, i32 3, i32 1)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fs, i32 0, i32 3, i32 1)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fq
  tail call void @llvm.prefetch.p0(ptr %i.ft, i32 0, i32 3, i32 1)
  %i.fu = trunc nuw i64 %indvars.iv101 to i32
  %i.fv = and i64 %indvars.iv101, 7
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !23 ; 2 uses
  store i32 %i.fn, ptr %i.fw, align 4, !tbaa !23
  %i.fy = lshr i32 %i.fx, 3
  %i.fz = and i32 %i.fy, 536870880
  %i.ga = zext nneg i32 %i.fz to i64              ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ga ; 3 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !51
  %i.ge = add i8 %i.gd, 31
  %i.gf = and i8 %i.ge, 31                        ; 2 uses
  %i.gg = zext nneg i8 %i.gf to i32
  %i.gh = icmp eq i8 %i.gf, 0
  %i.gi = select i1 %i.gh, i32 31, i32 0
  %i.gj = add nuw nsw i32 %i.gi, %i.gg            ; 2 uses
  %i.gk = trunc nuw nsw i32 %i.gj to i8
  store i8 %i.gk, ptr %i.gc, align 1, !tbaa !51
  %i.gl = trunc i32 %i.fx to i8
  %i.gm = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gm
  store i8 %i.gl, ptr %i.gn, align 1, !tbaa !51
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gm
  store i32 %i.fu, ptr %i.go, align 4, !tbaa !23
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.gp = icmp samesign ult i64 %indvars.iv.next102, %i.fg
  br i1 %i.gp, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.t, ptr %i.be, align 4, !tbaa !40
  %i.gq = and i64 %i.s, 4294967295
  %i.gr = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = trunc i64 %i.ai to i32
  %.val15 = load i32, ptr %i.gs, align 1, !tbaa !23
  %i.gu = mul i32 %.val15, -1640531535
  %i.gv = xor i32 %i.gu, %i.gt
  %i.gw = sub i32 24, %i.i
  %i.gx = lshr i32 %i.gv, %i.gw                   ; 2 uses
  %i.gy = lshr i32 %i.gx, 3
  %i.gz = and i32 %i.gy, 536870880
  %i.ha = zext nneg i32 %i.gz to i64              ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ha ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.hb, i32 0, i32 3, i32 1)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hc, i32 0, i32 3, i32 1)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ha
  tail call void @llvm.prefetch.p0(ptr %i.hd, i32 0, i32 3, i32 1)
  %i.he = and i64 %i.s, 7
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.he ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !23
  store i32 %i.gx, ptr %i.hf, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %i.hh = trunc i64 %i.ai to i32
  %i.hi = xor i32 %i.as, %i.hh
  %i.hj = sub i32 24, %i.i
  %i.hk = lshr i32 %i.hi, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.t, ptr %i.hl, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.hk, %bb.h ], [ %i.hg, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !83
  %i.ho = add i32 %i.hn, %.0257.i
  store i32 %i.ho, ptr %i.hm, align 8, !tbaa !83
  %i.hp = lshr i32 %.0257.i, 3
  %i.hq = and i32 %i.hp, 536870880
  %i.hr = zext nneg i32 %i.hq to i64              ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.hr ; 5 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hu = trunc i32 %.0257.i to i8                ; 2 uses
  %i.hv = insertelement <16 x i8> poison, i8 %i.hu, i64 0
  %i.hw = load <16 x i8>, ptr %i.hs, align 1, !tbaa !51
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hy = load <16 x i8>, ptr %i.hx, align 1, !tbaa !51
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hr ; 2 uses
  %i.ia = zext i8 %i.ht to i32                    ; 3 uses
  %i.ib = shufflevector <16 x i8> %i.hw, <16 x i8> %i.hy, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ic = shufflevector <16 x i8> %i.hv, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.id = icmp eq <32 x i8> %i.ib, %i.ic
  %i.ie = bitcast <32 x i1> %i.id to i32          ; 3 uses
  %.not = icmp eq i32 %i.ie, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.if = tail call noundef i32 @llvm.fshr.i32(i32 %i.ie, i32 %i.ie, i32 range(i32 0, 64) %i.ia)
  %i.ig = zext i32 %i.if to i64
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %bb.k
  %.0247.i61 = phi i64 [ %i.iw, %bb.k ], [ %i.ig, %.lr.ph62.preheader ] ; 3 uses
  %.0249.i60 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph62.preheader ] ; 4 uses
  %.0262.i59 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.aj, %.lr.ph62.preheader ] ; 3 uses
  %i.ih = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i61, i1 true)
  %i.ii = trunc nuw nsw i64 %i.ih to i32
  %i.ij = add nuw nsw i32 %i.ii, %i.ia
  %i.ik = and i32 %i.ij, 31                       ; 2 uses
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !23 ; 3 uses
  %i.io = icmp eq i32 %i.ik, 0
  br i1 %i.io, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph62
  %i.ip = icmp ult i32 %i.in, %i.ae
  br i1 %i.ip, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.iq = zext i32 %i.in to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.iq
  tail call void @llvm.prefetch.p0(ptr %i.ir, i32 0, i32 3, i32 1)
  %i.is = add nuw nsw i64 %.0249.i60, 1
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i60
  store i32 %i.in, ptr %i.it, align 4, !tbaa !23
  %i.iu = add nsw i32 %.0262.i59, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph62
  %.1263.i.ph = phi i32 [ %.0262.i59, %.lr.ph62 ], [ %i.iu, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i60, %.lr.ph62 ], [ %i.is, %bb.j ] ; 2 uses
  %i.iv = add nuw nsw i64 %.0247.i61, 4294967295
  %i.iw = and i64 %i.iv, %.0247.i61               ; 2 uses
  %i.ix = icmp ne i64 %i.iw, 0
  %i.iy = icmp ne i32 %.1263.i.ph, 0
  %i.iz = select i1 %i.ix, i1 %i.iy, i1 false
  br i1 %i.iz, label %.lr.ph62, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.aj, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i59, %bb.i ], [ %.1263.i.ph, %bb.k ] ; 2 uses
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i60, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.ja = add nuw nsw i32 %i.ia, 31
  %i.jb = and i32 %i.ja, 31                       ; 2 uses
  %i.jc = icmp eq i32 %i.jb, 0
  %i.jd = select i1 %i.jc, i32 31, i32 0
  %i.je = add nuw nsw i32 %i.jd, %i.jb            ; 2 uses
  %i.jf = trunc nuw nsw i32 %i.je to i8
  store i8 %i.jf, ptr %i.hs, align 1, !tbaa !51
  %i.jg = zext nneg i32 %i.je to i64              ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.jg
  store i8 %i.hu, ptr %i.jh, align 1, !tbaa !51
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !40 ; 2 uses
  %i.jk = add i32 %i.jj, 1
  store i32 %i.jk, ptr %i.ji, align 4, !tbaa !40
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.jg
  store i32 %i.jj, ptr %i.jl, align 4, !tbaa !23
  %.not91 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not91, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %._crit_edge
  %i.jm = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jn = icmp ult ptr %1, %i.jm
  %i.jo = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jp = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jq = add i32 %i.t, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph70, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i68 = phi i64 [ 0, %.lr.ph70 ], [ %i.ld, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i67 = phi i64 [ 3, %.lr.ph70 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i68
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !23 ; 2 uses
  %i.jt = zext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.jt ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %.0258.i67
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -3
  %.val8 = load i32, ptr %i.jw, align 1, !tbaa !23
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i67
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 -3
  %.val = load i32, ptr %i.jy, align 1, !tbaa !23
  %i.jz = icmp eq i32 %.val8, %.val
  br i1 %i.jz, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jn, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.ju, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i20 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i20, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ka = xor i64 %.val.i, %.val60.i
  %i.kb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ka, i1 true)
  %i.kc = lshr i64 %i.kb, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.ju, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.kd = icmp ult ptr %.049.i, %i.jm
  br i1 %i.kd, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.ke = xor i64 %.049.val.i, %.045.val.i
  %i.kf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ke, i1 true)
  %i.kg = lshr i64 %i.kf, 3
  %i.kh = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.kg
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = sub i64 %i.ki, %i.q
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.ju, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.kk = icmp ult ptr %.251.i, %i.jo
  br i1 %i.kk, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.kl = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.kl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.km = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.kn = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.km, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.kn, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.ko = icmp ult ptr %.352.i, %i.jp
  br i1 %i.ko, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.kp = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.kp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kq = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.kr = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.kq, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i17 = phi ptr [ %i.kr, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.ks = icmp ult ptr %.453.i, %2
  br i1 %i.ks, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kt = load i8, ptr %.4.i17, align 1, !tbaa !51
  %i.ku = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.kv = icmp eq i8 %i.kt, %i.ku
  %spec.select.idx.i = zext i1 %i.kv to i64
  %spec.select.i19 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i19, %bb.w ]
  %i.kw = ptrtoint ptr %.5.i to i64
  %i.kx = sub i64 %i.kw, %i.q
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.kc, %bb.o ], [ %i.kj, %.thread63.i ], [ %i.kx, %bb.x ] ; 4 uses
  %i.ky = icmp ugt i64 %.2243.i, %.0258.i67
  br i1 %i.ky, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kz = sub i32 %i.jq, %i.js
  %i.la = zext i32 %i.kz to i64
  store i64 %i.la, ptr %3, align 8, !tbaa !44
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.lc = icmp eq ptr %i.lb, %2
  br i1 %i.lc, label %._crit_edge71, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i67, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i67, %bb.l ] ; 2 uses
  %i.ld = add nuw i64 %.0248.i68, 1               ; 2 uses
  %exitcond107.not = icmp eq i64 %i.ld, %.0249.i.lcssa
  br i1 %exitcond107.not, label %._crit_edge71, label %bb.l, !llvm.loop !10

._crit_edge71:                                    ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.le = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !52
  %i.lg = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !36 ; 3 uses
  %i.li = load ptr, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  %i.lj = load i8, ptr %i.ay, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.lk = insertelement <16 x i8> poison, i8 %i.bb, i64 0
  %i.ll = load <16 x i8>, ptr %i.ay, align 1, !tbaa !51
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ln = load <16 x i8>, ptr %i.lm, align 1, !tbaa !51
  %i.lo = ptrtoint ptr %i.li to i64
  %i.lp = ptrtoint ptr %i.lh to i64
  %.neg.i.neg = sub i64 %i.lo, %i.lp
  %.neg279.i.neg92 = trunc i64 %.neg.i.neg to i32
  %i.lq = zext i8 %i.lj to i32                    ; 2 uses
  %i.lr = shufflevector <16 x i8> %i.ll, <16 x i8> %i.ln, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ls = shufflevector <16 x i8> %i.lk, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.lt = icmp eq <32 x i8> %i.lr, %i.ls
  %i.lu = bitcast <32 x i1> %i.lt to i32          ; 3 uses
  %i.lv = icmp ne i32 %i.lu, 0
  %i.lw = icmp ne i32 %.0262.i.lcssa, 0
  %i.lx = select i1 %i.lv, i1 %i.lw, i1 false
  br i1 %i.lx, label %.lr.ph79.preheader, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit

.lr.ph79.preheader:                               ; preds = %._crit_edge71
  %i.ly = tail call noundef i32 @llvm.fshr.i32(i32 %i.lu, i32 %i.lu, i32 %i.lq)
  %i.lz = zext i32 %i.ly to i64
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %bb.ab
  %.0238.i78 = phi i64 [ %i.mp, %bb.ab ], [ %i.lz, %.lr.ph79.preheader ] ; 3 uses
  %.0240.i77 = phi i64 [ %.1.i.ph, %bb.ab ], [ 0, %.lr.ph79.preheader ] ; 4 uses
  %.3265.i76 = phi i32 [ %.4266.i.ph, %bb.ab ], [ %.0262.i.lcssa, %.lr.ph79.preheader ] ; 2 uses
  %i.ma = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0238.i78, i1 true)
  %i.mb = trunc nuw nsw i64 %i.ma to i32
  %i.mc = add nuw nsw i32 %i.mb, %i.lq
  %i.md = and i32 %i.mc, 31                       ; 2 uses
  %i.me = zext nneg i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.me
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !23 ; 3 uses
  %i.mh = icmp eq i32 %i.md, 0
  br i1 %i.mh, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph79
  %i.mi = icmp ult i32 %i.mg, %i.lf
  br i1 %i.mi, label %._crit_edge80, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mj = zext i32 %i.mg to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.mj
  tail call void @llvm.prefetch.p0(ptr %i.mk, i32 0, i32 3, i32 1)
  %i.ml = add nuw nsw i64 %.0240.i77, 1
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0240.i77
  store i32 %i.mg, ptr %i.mm, align 4, !tbaa !23
  %i.mn = add nsw i32 %.3265.i76, -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph79
  %.4266.i.ph = phi i32 [ %.3265.i76, %.lr.ph79 ], [ %i.mn, %bb.aa ] ; 2 uses
  %.1.i.ph = phi i64 [ %.0240.i77, %.lr.ph79 ], [ %i.ml, %bb.aa ] ; 2 uses
  %i.mo = add nuw nsw i64 %.0238.i78, 4294967295
  %i.mp = and i64 %i.mo, %.0238.i78               ; 2 uses
  %i.mq = icmp ne i64 %i.mp, 0
  %i.mr = icmp ne i32 %.4266.i.ph, 0
  %i.ms = select i1 %i.mq, i1 %i.mr, i1 false
  br i1 %i.ms, label %.lr.ph79, label %._crit_edge80, !llvm.loop !12

._crit_edge80:                                    ; preds = %bb.ab, %bb.z
  %.0240.i.lcssa = phi i64 [ %.0240.i77, %bb.z ], [ %.1.i.ph, %bb.ab ] ; 2 uses
  %.not93 = icmp eq i64 %.0240.i.lcssa, 0
  br i1 %.not93, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge80
  %invariant.op = add i32 %i.t, %.neg279.i.neg92
  %.val9 = load i32, ptr %1, align 1, !tbaa !23
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.mu = add i32 %invariant.op, 3
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph87, %.thread39
  %.0239.i85 = phi i64 [ 0, %.lr.ph87 ], [ %i.nj, %.thread39 ] ; 2 uses
  %.4.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.6.i.ph, %.thread39 ] ; 3 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0239.i85
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !23 ; 2 uses
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.mx ; 2 uses
  %.val10 = load i32, ptr %i.my, align 1, !tbaa !23
  %i.mz = icmp eq i32 %.val10, %.val9
  br i1 %i.mz, label %bb.ad, label %.thread39

bb.ad:                                            ; preds = %bb.ac
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.nb = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.mt, ptr noundef nonnull %i.na, ptr noundef %2, ptr noundef %i.li, ptr noundef %i.p)
  %i.nc = add i64 %i.nb, 4                        ; 4 uses
  %i.nd = icmp ugt i64 %i.nc, %.4.i84
  br i1 %i.nd, label %bb.ae, label %.thread39

bb.ae:                                            ; preds = %bb.ad
  %i.ne = add i32 %i.n, %i.mw
  %i.nf = sub i32 %i.mu, %i.ne
  %i.ng = zext i32 %i.nf to i64
  store i64 %i.ng, ptr %3, align 8, !tbaa !44
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 %i.nc
  %i.ni = icmp eq ptr %i.nh, %2
  br i1 %i.ni, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.thread39

.thread39:                                        ; preds = %bb.ac, %bb.ae, %bb.ad
  %.6.i.ph = phi i64 [ %i.nc, %bb.ae ], [ %.4.i84, %bb.ad ], [ %.4.i84, %bb.ac ] ; 2 uses
  %i.nj = add nuw i64 %.0239.i85, 1               ; 2 uses
  %exitcond111.not = icmp eq i64 %i.nj, %.0240.i.lcssa
  br i1 %exitcond111.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.ac, !llvm.loop !13

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %.thread39, %bb.ae, %._crit_edge71, %._crit_edge80
  %.7.i = phi i64 [ %.3261.i, %._crit_edge80 ], [ %.3261.i, %._crit_edge71 ], [ %.6.i.ph, %.thread39 ], [ %i.nc, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i64 %.7.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL40ZSTD_RowFindBestMatch_dictMatchState_4_6EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = alloca [64 x i32], align 16              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = trunc i64 %i.s to i32                    ; 9 uses
  %i.u = load i32, ptr %i.j, align 8, !tbaa !80
  %i.v = shl nuw i32 1, %i.u                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !78   ; 2 uses
  %i.y = sub i32 %i.t, %i.x
  %i.z = icmp ugt i32 %i.y, %i.v
  %i.aa = sub i32 %i.t, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !54
  %.not.i = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not.i, i1 %i.z, i1 false
  %i.ae = select i1 %i.ad, i32 %i.aa, i32 %i.x
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !81
  %..i = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 6)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !50 ; 2 uses
  %i.aj = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !49
  %.val11 = load i32, ptr %1, align 1, !tbaa !23
  %i.as = mul i32 %.val11, -1640531535            ; 2 uses
  %i.at = sub i32 24, %i.ar
  %i.au = lshr i32 %i.as, %i.at                   ; 2 uses
  %i.av = lshr i32 %i.au, 2
  %i.aw = and i32 %i.av, 1073741760
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ax ; 6 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ax ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.az, i32 0, i32 3, i32 1)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ba, i32 0, i32 3, i32 1)
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bb, i32 0, i32 3, i32 1)
  %i.bc = trunc i32 %i.au to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !55
  %.not274.i = icmp eq i32 %i.be, 0
  br i1 %.not274.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !40 ; 5 uses
  %i.bh = sub i32 %i.t, %i.bg
  %i.bi = icmp ugt i32 %i.bh, 384
  br i1 %i.bi, label %bb.c, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, !prof !82

bb.c:                                             ; preds = %bb.b
  %i.bj = icmp ult i32 %i.bg, -96
  br i1 %i.bj, label %.lr.ph, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bk = add nuw i32 %i.bg, 96
  %i.bl = sub i32 24, %i.i
  %i.bm = zext i32 %i.bg to i64
  %wide.trip.count = zext i32 %i.bk to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bm, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bn = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = trunc i64 %i.bn to i32
  %.val12 = load i32, ptr %i.bp, align 1, !tbaa !23
  %i.br = mul i32 %.val12, -1640531535
  %i.bs = xor i32 %i.br, %i.bq
  %i.bt = lshr i32 %i.bs, %i.bl                   ; 2 uses
  %i.bu = lshr i32 %i.bt, 2
  %i.bv = and i32 %i.bu, 1073741760
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bw ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bx, i32 0, i32 3, i32 1)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.by, i32 0, i32 3, i32 1)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bw ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bz, i32 0, i32 3, i32 1)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ca, i32 0, i32 3, i32 1)
  %i.cb = trunc nuw i64 %indvars.iv to i32
  %i.cc = and i64 %indvars.iv, 7
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !23 ; 2 uses
  store i32 %i.bt, ptr %i.cd, align 4, !tbaa !23
  %i.cf = lshr i32 %i.ce, 2
  %i.cg = and i32 %i.cf, 1073741760
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ch ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !51
  %i.cl = add i8 %i.ck, 63
  %i.cm = and i8 %i.cl, 63                        ; 2 uses
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = icmp eq i8 %i.cm, 0
  %i.cp = select i1 %i.co, i32 63, i32 0
  %i.cq = add nuw nsw i32 %i.cp, %i.cn            ; 2 uses
  %i.cr = trunc nuw nsw i32 %i.cq to i8
  store i8 %i.cr, ptr %i.cj, align 1, !tbaa !51
  %i.cs = trunc i32 %i.ce to i8
  %i.ct = zext nneg i32 %i.cq to i64              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ct
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !51
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ct
  store i32 %i.cb, ptr %i.cv, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit, label %bb.d, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit: ; preds = %bb.d
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !37
  %.pre118 = load ptr, ptr %i.e, align 8, !tbaa !48
  %.pre119 = load i32, ptr %i.h, align 4, !tbaa !49
  br label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
end_hunk_13
begin_hunk_14_@_ZN11duckdb_zstdL40ZSTD_RowFindBestMatch_dictMatchState_5_4EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph55
  %indvars.iv97.unr = phi i64 [ %i.cx, %.lr.ph55 ], [ %indvars.iv.next98.prol, %.prol.loopexit.unr-lcssa ]
  %i.dx = icmp eq i32 %i.dg, 1
  br i1 %i.dx, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph55.new

.lr.ph55.new:                                     ; preds = %.prol.loopexit, %.lr.ph55.new
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.1, %.lr.ph55.new ], [ %indvars.iv97.unr, %.prol.loopexit ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv97
  %.val13 = load i64, ptr %i.dy, align 1, !tbaa !44
  %i.dz = mul i64 %.val13, -3523014627271114752
  %i.ea = xor i64 %i.dz, %i.dj
  %i.eb = lshr i64 %i.ea, %i.dl                   ; 2 uses
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = lshr i64 %i.eb, 4
  %i.ee = and i64 %i.ed, 268435440                ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ee
  tail call void @llvm.prefetch.p0(ptr %i.ef, i32 0, i32 3, i32 1)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ee
  tail call void @llvm.prefetch.p0(ptr %i.eg, i32 0, i32 3, i32 1)
  %i.eh = and i64 %indvars.iv97, 7
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.eh
  store i32 %i.ec, ptr %i.ei, align 4, !tbaa !23
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.next98
  %.val13.1 = load i64, ptr %i.ej, align 1, !tbaa !44
  %i.ek = mul i64 %.val13.1, -3523014627271114752
  %i.el = xor i64 %i.ek, %i.dj
  %i.em = lshr i64 %i.el, %i.dl                   ; 2 uses
  %i.en = trunc i64 %i.em to i32
  %i.eo = lshr i64 %i.em, 4
  %i.ep = and i64 %i.eo, 268435440                ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ep
  tail call void @llvm.prefetch.p0(ptr %i.eq, i32 0, i32 3, i32 1)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ep
  tail call void @llvm.prefetch.p0(ptr %i.er, i32 0, i32 3, i32 1)
  %i.es = and i64 %indvars.iv.next98, 7
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.es
  store i32 %i.en, ptr %i.et, align 4, !tbaa !23
  %indvars.iv.next98.1 = add nuw nsw i64 %indvars.iv97, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next98.1 to i32
  %exitcond100.not.1 = icmp eq i32 %i.dh, %lftr.wideiv.1
  br i1 %exitcond100.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph55.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph55.new, %bb.f, %bb.b
  %i.eu = phi i32 [ %i.i, %bb.b ], [ %i.cs, %bb.f ], [ %i.cs, %.lr.ph55.new ], [ %i.cs, %.prol.loopexit ]
  %i.ev = phi ptr [ %i.f, %bb.b ], [ %i.ct, %bb.f ], [ %i.ct, %.lr.ph55.new ], [ %i.ct, %.prol.loopexit ] ; 2 uses
  %i.ew = phi ptr [ %i.d, %bb.b ], [ %i.cu, %bb.f ], [ %i.cu, %.lr.ph55.new ], [ %i.cu, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.be, %bb.b ], [ %i.cv, %bb.f ], [ %i.cv, %.lr.ph55.new ], [ %i.cv, %.prol.loopexit ] ; 2 uses
  %i.ex = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.ey = icmp ult i32 %.0.i284.i, %i.t
  br i1 %i.ey, label %.lr.ph57, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph57:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.ez = sub i32 56, %i.eu
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = zext i32 %.0.i284.i to i64
  %i.fc = and i64 %i.s, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph57, %bb.g
  %indvars.iv101 = phi i64 [ %i.fb, %.lr.ph57 ], [ %indvars.iv.next102, %bb.g ] ; 4 uses
  %i.fd = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv101
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.val14 = load i64, ptr %i.ff, align 1, !tbaa !44
  %i.fg = mul i64 %.val14, -3523014627271114752
  %i.fh = xor i64 %i.fg, %i.fd
  %i.fi = lshr i64 %i.fh, %i.fa                   ; 2 uses
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = lshr i64 %i.fi, 4
  %i.fl = and i64 %i.fk, 268435440                ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fl
  tail call void @llvm.prefetch.p0(ptr %i.fm, i32 0, i32 3, i32 1)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fl
  tail call void @llvm.prefetch.p0(ptr %i.fn, i32 0, i32 3, i32 1)
  %i.fo = trunc nuw i64 %indvars.iv101 to i32
  %i.fp = and i64 %indvars.iv101, 7
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.fp ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !23 ; 2 uses
  store i32 %i.fj, ptr %i.fq, align 4, !tbaa !23
  %i.fs = lshr i32 %i.fr, 4
  %i.ft = and i32 %i.fs, 268435440
  %i.fu = zext nneg i32 %i.ft to i64              ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fu ; 3 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !51
  %i.fy = add i8 %i.fx, 15
  %i.fz = and i8 %i.fy, 15                        ; 2 uses
  %i.ga = zext nneg i8 %i.fz to i32
  %i.gb = icmp eq i8 %i.fz, 0
  %i.gc = select i1 %i.gb, i32 15, i32 0
  %i.gd = add nuw nsw i32 %i.gc, %i.ga            ; 2 uses
  %i.ge = trunc nuw nsw i32 %i.gd to i8
  store i8 %i.ge, ptr %i.fw, align 1, !tbaa !51
  %i.gf = trunc i32 %i.fr to i8
  %i.gg = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gg
  store i8 %i.gf, ptr %i.gh, align 1, !tbaa !51
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.gg
  store i32 %i.fo, ptr %i.gi, align 4, !tbaa !23
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.gj = icmp samesign ult i64 %indvars.iv.next102, %i.fc
  br i1 %i.gj, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.t, ptr %i.bd, align 4, !tbaa !40
  %i.gk = and i64 %i.s, 4294967295
  %i.gl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %.val15 = load i64, ptr %i.gm, align 1, !tbaa !44
  %i.gn = mul i64 %.val15, -3523014627271114752
  %i.go = xor i64 %i.gn, %i.ai
  %i.gp = sub i32 56, %i.i
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = lshr i64 %i.go, %i.gq                   ; 2 uses
  %i.gs = trunc i64 %i.gr to i32
  %i.gt = lshr i64 %i.gr, 4
  %i.gu = and i64 %i.gt, 268435440                ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.gu
  tail call void @llvm.prefetch.p0(ptr %i.gv, i32 0, i32 3, i32 1)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gu
  tail call void @llvm.prefetch.p0(ptr %i.gw, i32 0, i32 3, i32 1)
  %i.gx = and i64 %i.s, 7
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.gx ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !23
  store i32 %i.gs, ptr %i.gy, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %i.ha = xor i64 %i.as, %i.ai
  %i.hb = sub i32 56, %i.i
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = lshr i64 %i.ha, %i.hc
  %i.he = trunc i64 %i.hd to i32
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.t, ptr %i.hf, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.he, %bb.h ], [ %i.gz, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !83
  %i.hi = add i32 %i.hh, %.0257.i
  store i32 %i.hi, ptr %i.hg, align 8, !tbaa !83
  %i.hj = lshr i32 %.0257.i, 4
  %i.hk = and i32 %i.hj, 268435440
  %i.hl = zext nneg i32 %i.hk to i64              ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hl ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.hl ; 4 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !51  ; 2 uses
  %i.hp = zext i8 %i.ho to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hq = trunc i32 %.0257.i to i8                ; 2 uses
  %i.hr = insertelement <16 x i8> poison, i8 %i.hq, i64 0
  %i.hs = shufflevector <16 x i8> %i.hr, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ht = load <16 x i8>, ptr %i.hn, align 1, !tbaa !51
  %i.hu = icmp eq <16 x i8> %i.ht, %i.hs
  %i.hv = bitcast <16 x i1> %i.hu to i16          ; 3 uses
  %.not = icmp eq i16 %i.hv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hw = zext i8 %i.ho to i16
  %i.hx = tail call noundef i16 @llvm.fshr.i16(i16 %i.hv, i16 %i.hv, i16 %i.hw)
  %i.hy = zext i16 %i.hx to i64
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %bb.k
  %.0247.i61 = phi i64 [ %i.io, %bb.k ], [ %i.hy, %.lr.ph62.preheader ] ; 3 uses
  %.0249.i60 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph62.preheader ] ; 4 uses
  %.0262.i59 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.aj, %.lr.ph62.preheader ] ; 3 uses
  %i.hz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i61, i1 true)
  %i.ia = trunc nuw nsw i64 %i.hz to i32
  %i.ib = add nuw nsw i32 %i.ia, %i.hp
  %i.ic = and i32 %i.ib, 15                       ; 2 uses
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !23 ; 3 uses
  %i.ig = icmp eq i32 %i.ic, 0
  br i1 %i.ig, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph62
  %i.ih = icmp ult i32 %i.if, %i.ae
  br i1 %i.ih, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ii = zext i32 %i.if to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ii
  tail call void @llvm.prefetch.p0(ptr %i.ij, i32 0, i32 3, i32 1)
  %i.ik = add nuw nsw i64 %.0249.i60, 1
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i60
  store i32 %i.if, ptr %i.il, align 4, !tbaa !23
  %i.im = add nsw i32 %.0262.i59, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph62
  %.1263.i.ph = phi i32 [ %.0262.i59, %.lr.ph62 ], [ %i.im, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i60, %.lr.ph62 ], [ %i.ik, %bb.j ] ; 2 uses
  %i.in = add nuw nsw i64 %.0247.i61, 65535
  %i.io = and i64 %i.in, %.0247.i61               ; 2 uses
  %i.ip = icmp ne i64 %i.io, 0
  %i.iq = icmp ne i32 %.1263.i.ph, 0
  %i.ir = select i1 %i.ip, i1 %i.iq, i1 false
  br i1 %i.ir, label %.lr.ph62, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.aj, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i59, %bb.i ], [ %.1263.i.ph, %bb.k ] ; 2 uses
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i60, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.is = add nuw nsw i32 %i.hp, 15
  %i.it = and i32 %i.is, 15                       ; 2 uses
  %i.iu = icmp eq i32 %i.it, 0
  %i.iv = select i1 %i.iu, i32 15, i32 0
  %i.iw = add nuw nsw i32 %i.iv, %i.it            ; 2 uses
  %i.ix = trunc nuw nsw i32 %i.iw to i8
  store i8 %i.ix, ptr %i.hn, align 1, !tbaa !51
  %i.iy = zext nneg i32 %i.iw to i64              ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.iy
  store i8 %i.hq, ptr %i.iz, align 1, !tbaa !51
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !40 ; 2 uses
  %i.jc = add i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !40
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.iy
  store i32 %i.jb, ptr %i.jd, align 4, !tbaa !23
  %.not91 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not91, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %._crit_edge
  %i.je = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jf = icmp ult ptr %1, %i.je
  %i.jg = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jh = getelementptr inbounds i8, ptr %2, i64 -1
  %i.ji = add i32 %i.t, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph70, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i68 = phi i64 [ 0, %.lr.ph70 ], [ %i.kv, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i67 = phi i64 [ 3, %.lr.ph70 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i68
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !23 ; 2 uses
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.jl ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.0258.i67
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 -3
  %.val8 = load i32, ptr %i.jo, align 1, !tbaa !23
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i67
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -3
  %.val = load i32, ptr %i.jq, align 1, !tbaa !23
  %i.jr = icmp eq i32 %.val8, %.val
  br i1 %i.jr, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jf, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.jm, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i20 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i20, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.js = xor i64 %.val.i, %.val60.i
  %i.jt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.js, i1 true)
  %i.ju = lshr i64 %i.jt, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.jm, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jv = icmp ult ptr %.049.i, %i.je
  br i1 %i.jv, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.jw = xor i64 %.049.val.i, %.045.val.i
  %i.jx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jw, i1 true)
  %i.jy = lshr i64 %i.jx, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jy
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = sub i64 %i.ka, %i.q
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jm, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.kc = icmp ult ptr %.251.i, %i.jg
  br i1 %i.kc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.kd = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.kd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ke = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.kf = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.ke, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.kf, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.kg = icmp ult ptr %.352.i, %i.jh
  br i1 %i.kg, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.kh = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.kh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ki = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.kj = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.ki, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i17 = phi ptr [ %i.kj, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.kk = icmp ult ptr %.453.i, %2
  br i1 %i.kk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kl = load i8, ptr %.4.i17, align 1, !tbaa !51
  %i.km = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.kn = icmp eq i8 %i.kl, %i.km
  %spec.select.idx.i = zext i1 %i.kn to i64
  %spec.select.i19 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i19, %bb.w ]
  %i.ko = ptrtoint ptr %.5.i to i64
  %i.kp = sub i64 %i.ko, %i.q
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.ju, %bb.o ], [ %i.kb, %.thread63.i ], [ %i.kp, %bb.x ] ; 4 uses
  %i.kq = icmp ugt i64 %.2243.i, %.0258.i67
  br i1 %i.kq, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kr = sub i32 %i.ji, %i.jk
  %i.ks = zext i32 %i.kr to i64
  store i64 %i.ks, ptr %3, align 8, !tbaa !44
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.ku = icmp eq ptr %i.kt, %2
  br i1 %i.ku, label %._crit_edge71, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i67, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i67, %bb.l ] ; 2 uses
  %i.kv = add nuw i64 %.0248.i68, 1               ; 2 uses
  %exitcond104.not = icmp eq i64 %i.kv, %.0249.i.lcssa
  br i1 %exitcond104.not, label %._crit_edge71, label %bb.l, !llvm.loop !10

._crit_edge71:                                    ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.kw = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !52
  %i.ky = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !36 ; 3 uses
  %i.la = load ptr, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = ptrtoint ptr %i.kz to i64
  %.neg.i.neg = sub i64 %i.lb, %i.lc
  %.neg279.i.neg92 = trunc i64 %.neg.i.neg to i32
  %i.ld = load i8, ptr %i.ay, align 1, !tbaa !51  ; 2 uses
  %i.le = zext i8 %i.ld to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.lf = insertelement <16 x i8> poison, i8 %i.ba, i64 0
  %i.lg = shufflevector <16 x i8> %i.lf, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.lh = load <16 x i8>, ptr %i.ay, align 1, !tbaa !51
  %i.li = icmp eq <16 x i8> %i.lh, %i.lg
  %i.lj = bitcast <16 x i1> %i.li to i16          ; 3 uses
  %i.lk = icmp ne i16 %i.lj, 0
  %i.ll = icmp ne i32 %.0262.i.lcssa, 0
  %i.lm = select i1 %i.lk, i1 %i.ll, i1 false
  br i1 %i.lm, label %.lr.ph79.preheader, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit

.lr.ph79.preheader:                               ; preds = %._crit_edge71
  %i.ln = zext i8 %i.ld to i16
  %i.lo = tail call noundef i16 @llvm.fshr.i16(i16 %i.lj, i16 %i.lj, i16 %i.ln)
  %i.lp = zext i16 %i.lo to i64
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %bb.ab
  %.0238.i78 = phi i64 [ %i.mf, %bb.ab ], [ %i.lp, %.lr.ph79.preheader ] ; 3 uses
  %.0240.i77 = phi i64 [ %.1.i.ph, %bb.ab ], [ 0, %.lr.ph79.preheader ] ; 4 uses
  %.3265.i76 = phi i32 [ %.4266.i.ph, %bb.ab ], [ %.0262.i.lcssa, %.lr.ph79.preheader ] ; 2 uses
  %i.lq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0238.i78, i1 true)
  %i.lr = trunc nuw nsw i64 %i.lq to i32
  %i.ls = add nuw nsw i32 %i.lr, %i.le
  %i.lt = and i32 %i.ls, 15                       ; 2 uses
  %i.lu = zext nneg i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !23 ; 3 uses
  %i.lx = icmp eq i32 %i.lt, 0
  br i1 %i.lx, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph79
  %i.ly = icmp ult i32 %i.lw, %i.kx
  br i1 %i.ly, label %._crit_edge80, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lz = zext i32 %i.lw to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.lz
  tail call void @llvm.prefetch.p0(ptr %i.ma, i32 0, i32 3, i32 1)
  %i.mb = add nuw nsw i64 %.0240.i77, 1
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0240.i77
  store i32 %i.lw, ptr %i.mc, align 4, !tbaa !23
  %i.md = add nsw i32 %.3265.i76, -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph79
  %.4266.i.ph = phi i32 [ %.3265.i76, %.lr.ph79 ], [ %i.md, %bb.aa ] ; 2 uses
  %.1.i.ph = phi i64 [ %.0240.i77, %.lr.ph79 ], [ %i.mb, %bb.aa ] ; 2 uses
  %i.me = add nuw nsw i64 %.0238.i78, 65535
  %i.mf = and i64 %i.me, %.0238.i78               ; 2 uses
  %i.mg = icmp ne i64 %i.mf, 0
  %i.mh = icmp ne i32 %.4266.i.ph, 0
  %i.mi = select i1 %i.mg, i1 %i.mh, i1 false
  br i1 %i.mi, label %.lr.ph79, label %._crit_edge80, !llvm.loop !12

._crit_edge80:                                    ; preds = %bb.ab, %bb.z
  %.0240.i.lcssa = phi i64 [ %.0240.i77, %bb.z ], [ %.1.i.ph, %bb.ab ] ; 2 uses
  %.not93 = icmp eq i64 %.0240.i.lcssa, 0
  br i1 %.not93, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge80
  %invariant.op = add i32 %i.t, %.neg279.i.neg92
  %.val9 = load i32, ptr %1, align 1, !tbaa !23
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.mk = add i32 %invariant.op, 3
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph87, %.thread39
  %.0239.i85 = phi i64 [ 0, %.lr.ph87 ], [ %i.mz, %.thread39 ] ; 2 uses
  %.4.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.6.i.ph, %.thread39 ] ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0239.i85
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !23 ; 2 uses
  %i.mn = zext i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.mn ; 2 uses
  %.val10 = load i32, ptr %i.mo, align 1, !tbaa !23
  %i.mp = icmp eq i32 %.val10, %.val9
  br i1 %i.mp, label %bb.ad, label %.thread39

bb.ad:                                            ; preds = %bb.ac
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.mr = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.mj, ptr noundef nonnull %i.mq, ptr noundef %2, ptr noundef %i.la, ptr noundef %i.p)
  %i.ms = add i64 %i.mr, 4                        ; 4 uses
  %i.mt = icmp ugt i64 %i.ms, %.4.i84
  br i1 %i.mt, label %bb.ae, label %.thread39

bb.ae:                                            ; preds = %bb.ad
  %i.mu = add i32 %i.n, %i.mm
  %i.mv = sub i32 %i.mk, %i.mu
  %i.mw = zext i32 %i.mv to i64
  store i64 %i.mw, ptr %3, align 8, !tbaa !44
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 %i.ms
  %i.my = icmp eq ptr %i.mx, %2
  br i1 %i.my, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.thread39

.thread39:                                        ; preds = %bb.ac, %bb.ae, %bb.ad
  %.6.i.ph = phi i64 [ %i.ms, %bb.ae ], [ %.4.i84, %bb.ad ], [ %.4.i84, %bb.ac ] ; 2 uses
  %i.mz = add nuw i64 %.0239.i85, 1               ; 2 uses
  %exitcond105.not = icmp eq i64 %i.mz, %.0240.i.lcssa
  br i1 %exitcond105.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.ac, !llvm.loop !13

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %.thread39, %bb.ae, %._crit_edge71, %._crit_edge80
  %.7.i = phi i64 [ %.3261.i, %._crit_edge80 ], [ %.3261.i, %._crit_edge71 ], [ %.6.i.ph, %.thread39 ], [ %i.ms, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i64 %.7.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL40ZSTD_RowFindBestMatch_dictMatchState_5_5EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = alloca [64 x i32], align 16              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = trunc i64 %i.s to i32                    ; 9 uses
  %i.u = load i32, ptr %i.j, align 8, !tbaa !80
  %i.v = shl nuw i32 1, %i.u                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !78   ; 2 uses
  %i.y = sub i32 %i.t, %i.x
  %i.z = icmp ugt i32 %i.y, %i.v
  %i.aa = sub i32 %i.t, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !54
  %.not.i = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not.i, i1 %i.z, i1 false
  %i.ae = select i1 %i.ad, i32 %i.aa, i32 %i.x
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !81
  %..i = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 5)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !50 ; 2 uses
  %i.aj = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !49
  %.val11 = load i64, ptr %1, align 1, !tbaa !44
  %i.as = mul i64 %.val11, -3523014627271114752   ; 2 uses
  %i.at = sub i32 56, %i.ar
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 %i.as, %i.au                   ; 2 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 536870880                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ax ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.az, i32 0, i32 3, i32 1)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ba, i32 0, i32 3, i32 1)
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.bb = trunc i64 %i.av to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !55
  %.not274.i = icmp eq i32 %i.bd, 0
  br i1 %.not274.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !40 ; 5 uses
  %i.bg = sub i32 %i.t, %i.bf
  %i.bh = icmp ugt i32 %i.bg, 384
  br i1 %i.bh, label %bb.c, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, !prof !82

bb.c:                                             ; preds = %bb.b
  %i.bi = icmp ult i32 %i.bf, -96
  br i1 %i.bi, label %.lr.ph, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bj = add nuw i32 %i.bf, 96
  %i.bk = sub i32 56, %i.i
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = zext i32 %i.bf to i64
  %wide.trip.count = zext i32 %i.bj to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bm, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bn = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.val12 = load i64, ptr %i.bp, align 1, !tbaa !44
  %i.bq = mul i64 %.val12, -3523014627271114752
  %i.br = xor i64 %i.bq, %i.bn
  %i.bs = lshr i64 %i.br, %i.bl                   ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = lshr i64 %i.bs, 3
  %i.bv = and i64 %i.bu, 536870880                ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bv ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bw, i32 0, i32 3, i32 1)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bx, i32 0, i32 3, i32 1)
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bv
  tail call void @llvm.prefetch.p0(ptr %i.by, i32 0, i32 3, i32 1)
  %i.bz = trunc nuw i64 %indvars.iv to i32
  %i.ca = and i64 %indvars.iv, 7
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !23 ; 2 uses
  store i32 %i.bt, ptr %i.cb, align 4, !tbaa !23
  %i.cd = lshr i32 %i.cc, 3
  %i.ce = and i32 %i.cd, 536870880
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cf ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !51
  %i.cj = add i8 %i.ci, 31
  %i.ck = and i8 %i.cj, 31                        ; 2 uses
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = icmp eq i8 %i.ck, 0
  %i.cn = select i1 %i.cm, i32 31, i32 0
  %i.co = add nuw nsw i32 %i.cn, %i.cl            ; 2 uses
  %i.cp = trunc nuw nsw i32 %i.co to i8
  store i8 %i.cp, ptr %i.ch, align 1, !tbaa !51
  %i.cq = trunc i32 %i.cc to i8
  %i.cr = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cr
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !51
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cr
  store i32 %i.bz, ptr %i.ct, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit, label %bb.d, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit: ; preds = %bb.d
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !37
  %.pre115 = load ptr, ptr %i.e, align 8, !tbaa !48
  %.pre116 = load i32, ptr %i.h, align 4, !tbaa !49
  br label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i: ; preds = %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit, %bb.c
  %i.cu = phi i32 [ %.pre116, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit ], [ %i.i, %bb.c ] ; 4 uses
  %i.cv = phi ptr [ %.pre115, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit ], [ %i.f, %bb.c ] ; 6 uses
end_hunk_14
begin_hunk_15_@_ZN11duckdb_zstdL40ZSTD_RowFindBestMatch_dictMatchState_5_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %.val13 = load i64, ptr %i.eb, align 1, !tbaa !44
  %i.ec = mul i64 %.val13, -3523014627271114752
  %i.ed = xor i64 %i.ec, %i.dl
  %i.ee = lshr i64 %i.ed, %i.dn                   ; 2 uses
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = lshr i64 %i.ee, 3
  %i.eh = and i64 %i.eg, 536870880                ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.eh ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ei, i32 0, i32 3, i32 1)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ej, i32 0, i32 3, i32 1)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.eh
  tail call void @llvm.prefetch.p0(ptr %i.ek, i32 0, i32 3, i32 1)
  %i.el = and i64 %indvars.iv97, 7
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.el
  store i32 %i.ef, ptr %i.em, align 4, !tbaa !23
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.next98
  %.val13.1 = load i64, ptr %i.en, align 1, !tbaa !44
  %i.eo = mul i64 %.val13.1, -3523014627271114752
  %i.ep = xor i64 %i.eo, %i.dl
  %i.eq = lshr i64 %i.ep, %i.dn                   ; 2 uses
  %i.er = trunc i64 %i.eq to i32
  %i.es = lshr i64 %i.eq, 3
  %i.et = and i64 %i.es, 536870880                ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.et ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.eu, i32 0, i32 3, i32 1)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ev, i32 0, i32 3, i32 1)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.et
  tail call void @llvm.prefetch.p0(ptr %i.ew, i32 0, i32 3, i32 1)
  %i.ex = and i64 %indvars.iv.next98, 7
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ex
  store i32 %i.er, ptr %i.ey, align 4, !tbaa !23
  %indvars.iv.next98.1 = add nuw nsw i64 %indvars.iv97, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next98.1 to i32
  %exitcond100.not.1 = icmp eq i32 %i.dj, %lftr.wideiv.1
  br i1 %exitcond100.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph55.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph55.new, %bb.f, %bb.b
  %i.ez = phi i32 [ %i.i, %bb.b ], [ %i.cu, %bb.f ], [ %i.cu, %.lr.ph55.new ], [ %i.cu, %.prol.loopexit ]
  %i.fa = phi ptr [ %i.f, %bb.b ], [ %i.cv, %bb.f ], [ %i.cv, %.lr.ph55.new ], [ %i.cv, %.prol.loopexit ] ; 2 uses
  %i.fb = phi ptr [ %i.d, %bb.b ], [ %i.cw, %bb.f ], [ %i.cw, %.lr.ph55.new ], [ %i.cw, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.bf, %bb.b ], [ %i.cx, %bb.f ], [ %i.cx, %.lr.ph55.new ], [ %i.cx, %.prol.loopexit ] ; 2 uses
  %i.fc = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.fd = icmp ult i32 %.0.i284.i, %i.t
  br i1 %i.fd, label %.lr.ph57, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph57:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.fe = sub i32 56, %i.ez
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = zext i32 %.0.i284.i to i64
  %i.fh = and i64 %i.s, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph57, %bb.g
  %indvars.iv101 = phi i64 [ %i.fg, %.lr.ph57 ], [ %indvars.iv.next102, %bb.g ] ; 4 uses
  %i.fi = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 %indvars.iv101
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.val14 = load i64, ptr %i.fk, align 1, !tbaa !44
  %i.fl = mul i64 %.val14, -3523014627271114752
  %i.fm = xor i64 %i.fl, %i.fi
  %i.fn = lshr i64 %i.fm, %i.ff                   ; 2 uses
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = lshr i64 %i.fn, 3
  %i.fq = and i64 %i.fp, 536870880                ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fq ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.fr, i32 0, i32 3, i32 1)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fs, i32 0, i32 3, i32 1)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fq
  tail call void @llvm.prefetch.p0(ptr %i.ft, i32 0, i32 3, i32 1)
  %i.fu = trunc nuw i64 %indvars.iv101 to i32
  %i.fv = and i64 %indvars.iv101, 7
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !23 ; 2 uses
  store i32 %i.fo, ptr %i.fw, align 4, !tbaa !23
  %i.fy = lshr i32 %i.fx, 3
  %i.fz = and i32 %i.fy, 536870880
  %i.ga = zext nneg i32 %i.fz to i64              ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ga ; 3 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !51
  %i.ge = add i8 %i.gd, 31
  %i.gf = and i8 %i.ge, 31                        ; 2 uses
  %i.gg = zext nneg i8 %i.gf to i32
  %i.gh = icmp eq i8 %i.gf, 0
  %i.gi = select i1 %i.gh, i32 31, i32 0
  %i.gj = add nuw nsw i32 %i.gi, %i.gg            ; 2 uses
  %i.gk = trunc nuw nsw i32 %i.gj to i8
  store i8 %i.gk, ptr %i.gc, align 1, !tbaa !51
  %i.gl = trunc i32 %i.fx to i8
  %i.gm = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gm
  store i8 %i.gl, ptr %i.gn, align 1, !tbaa !51
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gm
  store i32 %i.fu, ptr %i.go, align 4, !tbaa !23
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.gp = icmp samesign ult i64 %indvars.iv.next102, %i.fh
  br i1 %i.gp, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.t, ptr %i.be, align 4, !tbaa !40
  %i.gq = and i64 %i.s, 4294967295
  %i.gr = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %.val15 = load i64, ptr %i.gs, align 1, !tbaa !44
  %i.gt = mul i64 %.val15, -3523014627271114752
  %i.gu = xor i64 %i.gt, %i.ai
  %i.gv = sub i32 56, %i.i
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = lshr i64 %i.gu, %i.gw                   ; 2 uses
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = lshr i64 %i.gx, 3
  %i.ha = and i64 %i.gz, 536870880                ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ha ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.hb, i32 0, i32 3, i32 1)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hc, i32 0, i32 3, i32 1)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ha
  tail call void @llvm.prefetch.p0(ptr %i.hd, i32 0, i32 3, i32 1)
  %i.he = and i64 %i.s, 7
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.he ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !23
  store i32 %i.gy, ptr %i.hf, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %i.hh = xor i64 %i.as, %i.ai
  %i.hi = sub i32 56, %i.i
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = lshr i64 %i.hh, %i.hj
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.t, ptr %i.hm, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.hl, %bb.h ], [ %i.hg, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !83
  %i.hp = add i32 %i.ho, %.0257.i
  store i32 %i.hp, ptr %i.hn, align 8, !tbaa !83
  %i.hq = lshr i32 %.0257.i, 3
  %i.hr = and i32 %i.hq, 536870880
  %i.hs = zext nneg i32 %i.hr to i64              ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.hs ; 5 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hv = trunc i32 %.0257.i to i8                ; 2 uses
  %i.hw = insertelement <16 x i8> poison, i8 %i.hv, i64 0
  %i.hx = load <16 x i8>, ptr %i.ht, align 1, !tbaa !51
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hz = load <16 x i8>, ptr %i.hy, align 1, !tbaa !51
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hs ; 2 uses
  %i.ib = zext i8 %i.hu to i32                    ; 3 uses
  %i.ic = shufflevector <16 x i8> %i.hx, <16 x i8> %i.hz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.id = shufflevector <16 x i8> %i.hw, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.ie = icmp eq <32 x i8> %i.ic, %i.id
  %i.if = bitcast <32 x i1> %i.ie to i32          ; 3 uses
  %.not = icmp eq i32 %i.if, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.ig = tail call noundef i32 @llvm.fshr.i32(i32 %i.if, i32 %i.if, i32 range(i32 0, 64) %i.ib)
  %i.ih = zext i32 %i.ig to i64
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %bb.k
  %.0247.i61 = phi i64 [ %i.ix, %bb.k ], [ %i.ih, %.lr.ph62.preheader ] ; 3 uses
  %.0249.i60 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph62.preheader ] ; 4 uses
  %.0262.i59 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.aj, %.lr.ph62.preheader ] ; 3 uses
  %i.ii = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i61, i1 true)
  %i.ij = trunc nuw nsw i64 %i.ii to i32
  %i.ik = add nuw nsw i32 %i.ij, %i.ib
  %i.il = and i32 %i.ik, 31                       ; 2 uses
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !23 ; 3 uses
  %i.ip = icmp eq i32 %i.il, 0
  br i1 %i.ip, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph62
  %i.iq = icmp ult i32 %i.io, %i.ae
  br i1 %i.iq, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ir = zext i32 %i.io to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ir
  tail call void @llvm.prefetch.p0(ptr %i.is, i32 0, i32 3, i32 1)
  %i.it = add nuw nsw i64 %.0249.i60, 1
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i60
  store i32 %i.io, ptr %i.iu, align 4, !tbaa !23
  %i.iv = add nsw i32 %.0262.i59, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph62
  %.1263.i.ph = phi i32 [ %.0262.i59, %.lr.ph62 ], [ %i.iv, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i60, %.lr.ph62 ], [ %i.it, %bb.j ] ; 2 uses
  %i.iw = add nuw nsw i64 %.0247.i61, 4294967295
  %i.ix = and i64 %i.iw, %.0247.i61               ; 2 uses
  %i.iy = icmp ne i64 %i.ix, 0
  %i.iz = icmp ne i32 %.1263.i.ph, 0
  %i.ja = select i1 %i.iy, i1 %i.iz, i1 false
  br i1 %i.ja, label %.lr.ph62, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.aj, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i59, %bb.i ], [ %.1263.i.ph, %bb.k ] ; 2 uses
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i60, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.jb = add nuw nsw i32 %i.ib, 31
  %i.jc = and i32 %i.jb, 31                       ; 2 uses
  %i.jd = icmp eq i32 %i.jc, 0
  %i.je = select i1 %i.jd, i32 31, i32 0
  %i.jf = add nuw nsw i32 %i.je, %i.jc            ; 2 uses
  %i.jg = trunc nuw nsw i32 %i.jf to i8
  store i8 %i.jg, ptr %i.ht, align 1, !tbaa !51
  %i.jh = zext nneg i32 %i.jf to i64              ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jh
  store i8 %i.hv, ptr %i.ji, align 1, !tbaa !51
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !40 ; 2 uses
  %i.jl = add i32 %i.jk, 1
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !40
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.jh
  store i32 %i.jk, ptr %i.jm, align 4, !tbaa !23
  %.not91 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not91, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %._crit_edge
  %i.jn = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jo = icmp ult ptr %1, %i.jn
  %i.jp = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jq = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jr = add i32 %i.t, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph70, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i68 = phi i64 [ 0, %.lr.ph70 ], [ %i.le, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i67 = phi i64 [ 3, %.lr.ph70 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i68
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !23 ; 2 uses
  %i.ju = zext i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ju ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.0258.i67
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 -3
  %.val8 = load i32, ptr %i.jx, align 1, !tbaa !23
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i67
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -3
  %.val = load i32, ptr %i.jz, align 1, !tbaa !23
  %i.ka = icmp eq i32 %.val8, %.val
  br i1 %i.ka, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jo, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.jv, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i20 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i20, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kb = xor i64 %.val.i, %.val60.i
  %i.kc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.kb, i1 true)
  %i.kd = lshr i64 %i.kc, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.jv, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.ke = icmp ult ptr %.049.i, %i.jn
  br i1 %i.ke, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.kf = xor i64 %.049.val.i, %.045.val.i
  %i.kg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.kf, i1 true)
  %i.kh = lshr i64 %i.kg, 3
  %i.ki = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.kh
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = sub i64 %i.kj, %i.q
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jv, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.kl = icmp ult ptr %.251.i, %i.jp
  br i1 %i.kl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.km = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.km, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kn = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.ko = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.kn, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.ko, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.kp = icmp ult ptr %.352.i, %i.jq
  br i1 %i.kp, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.kq = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.kq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kr = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.ks = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.kr, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i17 = phi ptr [ %i.ks, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.kt = icmp ult ptr %.453.i, %2
  br i1 %i.kt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ku = load i8, ptr %.4.i17, align 1, !tbaa !51
  %i.kv = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.kw = icmp eq i8 %i.ku, %i.kv
  %spec.select.idx.i = zext i1 %i.kw to i64
  %spec.select.i19 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i19, %bb.w ]
  %i.kx = ptrtoint ptr %.5.i to i64
  %i.ky = sub i64 %i.kx, %i.q
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.kd, %bb.o ], [ %i.kk, %.thread63.i ], [ %i.ky, %bb.x ] ; 4 uses
  %i.kz = icmp ugt i64 %.2243.i, %.0258.i67
  br i1 %i.kz, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.la = sub i32 %i.jr, %i.jt
  %i.lb = zext i32 %i.la to i64
  store i64 %i.lb, ptr %3, align 8, !tbaa !44
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.ld = icmp eq ptr %i.lc, %2
  br i1 %i.ld, label %._crit_edge71, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i67, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i67, %bb.l ] ; 2 uses
  %i.le = add nuw i64 %.0248.i68, 1               ; 2 uses
  %exitcond107.not = icmp eq i64 %i.le, %.0249.i.lcssa
  br i1 %exitcond107.not, label %._crit_edge71, label %bb.l, !llvm.loop !10

._crit_edge71:                                    ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.lf = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !52
  %i.lh = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !36 ; 3 uses
  %i.lj = load ptr, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  %i.lk = load i8, ptr %i.ay, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ll = insertelement <16 x i8> poison, i8 %i.bb, i64 0
  %i.lm = load <16 x i8>, ptr %i.ay, align 1, !tbaa !51
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.lo = load <16 x i8>, ptr %i.ln, align 1, !tbaa !51
  %i.lp = ptrtoint ptr %i.lj to i64
  %i.lq = ptrtoint ptr %i.li to i64
  %.neg.i.neg = sub i64 %i.lp, %i.lq
  %.neg279.i.neg92 = trunc i64 %.neg.i.neg to i32
  %i.lr = zext i8 %i.lk to i32                    ; 2 uses
  %i.ls = shufflevector <16 x i8> %i.lm, <16 x i8> %i.lo, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lt = shufflevector <16 x i8> %i.ll, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.lu = icmp eq <32 x i8> %i.ls, %i.lt
  %i.lv = bitcast <32 x i1> %i.lu to i32          ; 3 uses
  %i.lw = icmp ne i32 %i.lv, 0
  %i.lx = icmp ne i32 %.0262.i.lcssa, 0
  %i.ly = select i1 %i.lw, i1 %i.lx, i1 false
  br i1 %i.ly, label %.lr.ph79.preheader, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit

.lr.ph79.preheader:                               ; preds = %._crit_edge71
  %i.lz = tail call noundef i32 @llvm.fshr.i32(i32 %i.lv, i32 %i.lv, i32 %i.lr)
  %i.ma = zext i32 %i.lz to i64
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %bb.ab
  %.0238.i78 = phi i64 [ %i.mq, %bb.ab ], [ %i.ma, %.lr.ph79.preheader ] ; 3 uses
  %.0240.i77 = phi i64 [ %.1.i.ph, %bb.ab ], [ 0, %.lr.ph79.preheader ] ; 4 uses
  %.3265.i76 = phi i32 [ %.4266.i.ph, %bb.ab ], [ %.0262.i.lcssa, %.lr.ph79.preheader ] ; 2 uses
  %i.mb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0238.i78, i1 true)
  %i.mc = trunc nuw nsw i64 %i.mb to i32
  %i.md = add nuw nsw i32 %i.mc, %i.lr
  %i.me = and i32 %i.md, 31                       ; 2 uses
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.mf
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !23 ; 3 uses
  %i.mi = icmp eq i32 %i.me, 0
  br i1 %i.mi, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph79
  %i.mj = icmp ult i32 %i.mh, %i.lg
  br i1 %i.mj, label %._crit_edge80, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mk = zext i32 %i.mh to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.mk
  tail call void @llvm.prefetch.p0(ptr %i.ml, i32 0, i32 3, i32 1)
  %i.mm = add nuw nsw i64 %.0240.i77, 1
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0240.i77
  store i32 %i.mh, ptr %i.mn, align 4, !tbaa !23
  %i.mo = add nsw i32 %.3265.i76, -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph79
  %.4266.i.ph = phi i32 [ %.3265.i76, %.lr.ph79 ], [ %i.mo, %bb.aa ] ; 2 uses
  %.1.i.ph = phi i64 [ %.0240.i77, %.lr.ph79 ], [ %i.mm, %bb.aa ] ; 2 uses
  %i.mp = add nuw nsw i64 %.0238.i78, 4294967295
  %i.mq = and i64 %i.mp, %.0238.i78               ; 2 uses
  %i.mr = icmp ne i64 %i.mq, 0
  %i.ms = icmp ne i32 %.4266.i.ph, 0
  %i.mt = select i1 %i.mr, i1 %i.ms, i1 false
  br i1 %i.mt, label %.lr.ph79, label %._crit_edge80, !llvm.loop !12

._crit_edge80:                                    ; preds = %bb.ab, %bb.z
  %.0240.i.lcssa = phi i64 [ %.0240.i77, %bb.z ], [ %.1.i.ph, %bb.ab ] ; 2 uses
  %.not93 = icmp eq i64 %.0240.i.lcssa, 0
  br i1 %.not93, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge80
  %invariant.op = add i32 %i.t, %.neg279.i.neg92
  %.val9 = load i32, ptr %1, align 1, !tbaa !23
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.mv = add i32 %invariant.op, 3
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph87, %.thread39
  %.0239.i85 = phi i64 [ 0, %.lr.ph87 ], [ %i.nk, %.thread39 ] ; 2 uses
  %.4.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.6.i.ph, %.thread39 ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0239.i85
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !23 ; 2 uses
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.my ; 2 uses
  %.val10 = load i32, ptr %i.mz, align 1, !tbaa !23
  %i.na = icmp eq i32 %.val10, %.val9
  br i1 %i.na, label %bb.ad, label %.thread39

bb.ad:                                            ; preds = %bb.ac
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.nc = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.mu, ptr noundef nonnull %i.nb, ptr noundef %2, ptr noundef %i.lj, ptr noundef %i.p)
  %i.nd = add i64 %i.nc, 4                        ; 4 uses
  %i.ne = icmp ugt i64 %i.nd, %.4.i84
  br i1 %i.ne, label %bb.ae, label %.thread39

bb.ae:                                            ; preds = %bb.ad
  %i.nf = add i32 %i.n, %i.mx
  %i.ng = sub i32 %i.mv, %i.nf
  %i.nh = zext i32 %i.ng to i64
  store i64 %i.nh, ptr %3, align 8, !tbaa !44
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 %i.nd
  %i.nj = icmp eq ptr %i.ni, %2
  br i1 %i.nj, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.thread39

.thread39:                                        ; preds = %bb.ac, %bb.ae, %bb.ad
  %.6.i.ph = phi i64 [ %i.nd, %bb.ae ], [ %.4.i84, %bb.ad ], [ %.4.i84, %bb.ac ] ; 2 uses
  %i.nk = add nuw i64 %.0239.i85, 1               ; 2 uses
  %exitcond111.not = icmp eq i64 %i.nk, %.0240.i.lcssa
  br i1 %exitcond111.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.ac, !llvm.loop !13

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %.thread39, %bb.ae, %._crit_edge71, %._crit_edge80
  %.7.i = phi i64 [ %.3261.i, %._crit_edge80 ], [ %.3261.i, %._crit_edge71 ], [ %.6.i.ph, %.thread39 ], [ %i.nd, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i64 %.7.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL40ZSTD_RowFindBestMatch_dictMatchState_5_6EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = alloca [64 x i32], align 16              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = trunc i64 %i.s to i32                    ; 9 uses
  %i.u = load i32, ptr %i.j, align 8, !tbaa !80
  %i.v = shl nuw i32 1, %i.u                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !78   ; 2 uses
  %i.y = sub i32 %i.t, %i.x
  %i.z = icmp ugt i32 %i.y, %i.v
  %i.aa = sub i32 %i.t, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !54
  %.not.i = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not.i, i1 %i.z, i1 false
  %i.ae = select i1 %i.ad, i32 %i.aa, i32 %i.x
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !81
  %..i = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 6)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !50 ; 2 uses
  %i.aj = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !49
  %.val11 = load i64, ptr %1, align 1, !tbaa !44
  %i.as = mul i64 %.val11, -3523014627271114752   ; 2 uses
  %i.at = sub i32 56, %i.ar
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 %i.as, %i.au                   ; 2 uses
  %i.aw = lshr i64 %i.av, 2
  %i.ax = and i64 %i.aw, 1073741760               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ax ; 6 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ax ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.az, i32 0, i32 3, i32 1)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ba, i32 0, i32 3, i32 1)
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bb, i32 0, i32 3, i32 1)
  %i.bc = trunc i64 %i.av to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !55
  %.not274.i = icmp eq i32 %i.be, 0
  br i1 %.not274.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !40 ; 5 uses
  %i.bh = sub i32 %i.t, %i.bg
  %i.bi = icmp ugt i32 %i.bh, 384
  br i1 %i.bi, label %bb.c, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, !prof !82

bb.c:                                             ; preds = %bb.b
  %i.bj = icmp ult i32 %i.bg, -96
  br i1 %i.bj, label %.lr.ph, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bk = add nuw i32 %i.bg, 96
  %i.bl = sub i32 56, %i.i
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = zext i32 %i.bg to i64
  %wide.trip.count = zext i32 %i.bk to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bn, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bo = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.val12 = load i64, ptr %i.bq, align 1, !tbaa !44
  %i.br = mul i64 %.val12, -3523014627271114752
  %i.bs = xor i64 %i.br, %i.bo
  %i.bt = lshr i64 %i.bs, %i.bm                   ; 2 uses
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = lshr i64 %i.bt, 2
  %i.bw = and i64 %i.bv, 1073741760               ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bw ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bx, i32 0, i32 3, i32 1)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.by, i32 0, i32 3, i32 1)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bw ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bz, i32 0, i32 3, i32 1)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ca, i32 0, i32 3, i32 1)
  %i.cb = trunc nuw i64 %indvars.iv to i32
  %i.cc = and i64 %indvars.iv, 7
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !23 ; 2 uses
  store i32 %i.bu, ptr %i.cd, align 4, !tbaa !23
  %i.cf = lshr i32 %i.ce, 2
  %i.cg = and i32 %i.cf, 1073741760
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ch ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !51
  %i.cl = add i8 %i.ck, 63
  %i.cm = and i8 %i.cl, 63                        ; 2 uses
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = icmp eq i8 %i.cm, 0
  %i.cp = select i1 %i.co, i32 63, i32 0
  %i.cq = add nuw nsw i32 %i.cp, %i.cn            ; 2 uses
  %i.cr = trunc nuw nsw i32 %i.cq to i8
  store i8 %i.cr, ptr %i.cj, align 1, !tbaa !51
  %i.cs = trunc i32 %i.ce to i8
  %i.ct = zext nneg i32 %i.cq to i64              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ct
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !51
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ct
  store i32 %i.cb, ptr %i.cv, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit, label %bb.d, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit: ; preds = %bb.d
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !37
  %.pre118 = load ptr, ptr %i.e, align 8, !tbaa !48
  %.pre119 = load i32, ptr %i.h, align 4, !tbaa !49
  br label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
end_hunk_15
begin_hunk_16_@_ZN11duckdb_zstdL40ZSTD_RowFindBestMatch_dictMatchState_6_4EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph55
  %indvars.iv97.unr = phi i64 [ %i.cx, %.lr.ph55 ], [ %indvars.iv.next98.prol, %.prol.loopexit.unr-lcssa ]
  %i.dx = icmp eq i32 %i.dg, 1
  br i1 %i.dx, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph55.new

.lr.ph55.new:                                     ; preds = %.prol.loopexit, %.lr.ph55.new
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.1, %.lr.ph55.new ], [ %indvars.iv97.unr, %.prol.loopexit ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv97
  %.val13 = load i64, ptr %i.dy, align 1, !tbaa !44
  %i.dz = mul i64 %.val13, -3523014627193847808
  %i.ea = xor i64 %i.dz, %i.dj
  %i.eb = lshr i64 %i.ea, %i.dl                   ; 2 uses
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = lshr i64 %i.eb, 4
  %i.ee = and i64 %i.ed, 268435440                ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ee
  tail call void @llvm.prefetch.p0(ptr %i.ef, i32 0, i32 3, i32 1)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ee
  tail call void @llvm.prefetch.p0(ptr %i.eg, i32 0, i32 3, i32 1)
  %i.eh = and i64 %indvars.iv97, 7
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.eh
  store i32 %i.ec, ptr %i.ei, align 4, !tbaa !23
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.next98
  %.val13.1 = load i64, ptr %i.ej, align 1, !tbaa !44
  %i.ek = mul i64 %.val13.1, -3523014627193847808
  %i.el = xor i64 %i.ek, %i.dj
  %i.em = lshr i64 %i.el, %i.dl                   ; 2 uses
  %i.en = trunc i64 %i.em to i32
  %i.eo = lshr i64 %i.em, 4
  %i.ep = and i64 %i.eo, 268435440                ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ep
  tail call void @llvm.prefetch.p0(ptr %i.eq, i32 0, i32 3, i32 1)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ep
  tail call void @llvm.prefetch.p0(ptr %i.er, i32 0, i32 3, i32 1)
  %i.es = and i64 %indvars.iv.next98, 7
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.es
  store i32 %i.en, ptr %i.et, align 4, !tbaa !23
  %indvars.iv.next98.1 = add nuw nsw i64 %indvars.iv97, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next98.1 to i32
  %exitcond100.not.1 = icmp eq i32 %i.dh, %lftr.wideiv.1
  br i1 %exitcond100.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph55.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph55.new, %bb.f, %bb.b
  %i.eu = phi i32 [ %i.i, %bb.b ], [ %i.cs, %bb.f ], [ %i.cs, %.lr.ph55.new ], [ %i.cs, %.prol.loopexit ]
  %i.ev = phi ptr [ %i.f, %bb.b ], [ %i.ct, %bb.f ], [ %i.ct, %.lr.ph55.new ], [ %i.ct, %.prol.loopexit ] ; 2 uses
  %i.ew = phi ptr [ %i.d, %bb.b ], [ %i.cu, %bb.f ], [ %i.cu, %.lr.ph55.new ], [ %i.cu, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.be, %bb.b ], [ %i.cv, %bb.f ], [ %i.cv, %.lr.ph55.new ], [ %i.cv, %.prol.loopexit ] ; 2 uses
  %i.ex = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.ey = icmp ult i32 %.0.i284.i, %i.t
  br i1 %i.ey, label %.lr.ph57, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph57:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.ez = sub i32 56, %i.eu
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = zext i32 %.0.i284.i to i64
  %i.fc = and i64 %i.s, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph57, %bb.g
  %indvars.iv101 = phi i64 [ %i.fb, %.lr.ph57 ], [ %indvars.iv.next102, %bb.g ] ; 4 uses
  %i.fd = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv101
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.val14 = load i64, ptr %i.ff, align 1, !tbaa !44
  %i.fg = mul i64 %.val14, -3523014627193847808
  %i.fh = xor i64 %i.fg, %i.fd
  %i.fi = lshr i64 %i.fh, %i.fa                   ; 2 uses
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = lshr i64 %i.fi, 4
  %i.fl = and i64 %i.fk, 268435440                ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fl
  tail call void @llvm.prefetch.p0(ptr %i.fm, i32 0, i32 3, i32 1)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fl
  tail call void @llvm.prefetch.p0(ptr %i.fn, i32 0, i32 3, i32 1)
  %i.fo = trunc nuw i64 %indvars.iv101 to i32
  %i.fp = and i64 %indvars.iv101, 7
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.fp ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !23 ; 2 uses
  store i32 %i.fj, ptr %i.fq, align 4, !tbaa !23
  %i.fs = lshr i32 %i.fr, 4
  %i.ft = and i32 %i.fs, 268435440
  %i.fu = zext nneg i32 %i.ft to i64              ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fu ; 3 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !51
  %i.fy = add i8 %i.fx, 15
  %i.fz = and i8 %i.fy, 15                        ; 2 uses
  %i.ga = zext nneg i8 %i.fz to i32
  %i.gb = icmp eq i8 %i.fz, 0
  %i.gc = select i1 %i.gb, i32 15, i32 0
  %i.gd = add nuw nsw i32 %i.gc, %i.ga            ; 2 uses
  %i.ge = trunc nuw nsw i32 %i.gd to i8
  store i8 %i.ge, ptr %i.fw, align 1, !tbaa !51
  %i.gf = trunc i32 %i.fr to i8
  %i.gg = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gg
  store i8 %i.gf, ptr %i.gh, align 1, !tbaa !51
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.gg
  store i32 %i.fo, ptr %i.gi, align 4, !tbaa !23
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.gj = icmp samesign ult i64 %indvars.iv.next102, %i.fc
  br i1 %i.gj, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.t, ptr %i.bd, align 4, !tbaa !40
  %i.gk = and i64 %i.s, 4294967295
  %i.gl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %.val15 = load i64, ptr %i.gm, align 1, !tbaa !44
  %i.gn = mul i64 %.val15, -3523014627193847808
  %i.go = xor i64 %i.gn, %i.ai
  %i.gp = sub i32 56, %i.i
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = lshr i64 %i.go, %i.gq                   ; 2 uses
  %i.gs = trunc i64 %i.gr to i32
  %i.gt = lshr i64 %i.gr, 4
  %i.gu = and i64 %i.gt, 268435440                ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.gu
  tail call void @llvm.prefetch.p0(ptr %i.gv, i32 0, i32 3, i32 1)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gu
  tail call void @llvm.prefetch.p0(ptr %i.gw, i32 0, i32 3, i32 1)
  %i.gx = and i64 %i.s, 7
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.gx ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !23
  store i32 %i.gs, ptr %i.gy, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %i.ha = xor i64 %i.as, %i.ai
  %i.hb = sub i32 56, %i.i
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = lshr i64 %i.ha, %i.hc
  %i.he = trunc i64 %i.hd to i32
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.t, ptr %i.hf, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.he, %bb.h ], [ %i.gz, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !83
  %i.hi = add i32 %i.hh, %.0257.i
  store i32 %i.hi, ptr %i.hg, align 8, !tbaa !83
  %i.hj = lshr i32 %.0257.i, 4
  %i.hk = and i32 %i.hj, 268435440
  %i.hl = zext nneg i32 %i.hk to i64              ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hl ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.hl ; 4 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !51  ; 2 uses
  %i.hp = zext i8 %i.ho to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hq = trunc i32 %.0257.i to i8                ; 2 uses
  %i.hr = insertelement <16 x i8> poison, i8 %i.hq, i64 0
  %i.hs = shufflevector <16 x i8> %i.hr, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ht = load <16 x i8>, ptr %i.hn, align 1, !tbaa !51
  %i.hu = icmp eq <16 x i8> %i.ht, %i.hs
  %i.hv = bitcast <16 x i1> %i.hu to i16          ; 3 uses
  %.not = icmp eq i16 %i.hv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hw = zext i8 %i.ho to i16
  %i.hx = tail call noundef i16 @llvm.fshr.i16(i16 %i.hv, i16 %i.hv, i16 %i.hw)
  %i.hy = zext i16 %i.hx to i64
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %bb.k
  %.0247.i61 = phi i64 [ %i.io, %bb.k ], [ %i.hy, %.lr.ph62.preheader ] ; 3 uses
  %.0249.i60 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph62.preheader ] ; 4 uses
  %.0262.i59 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.aj, %.lr.ph62.preheader ] ; 3 uses
  %i.hz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i61, i1 true)
  %i.ia = trunc nuw nsw i64 %i.hz to i32
  %i.ib = add nuw nsw i32 %i.ia, %i.hp
  %i.ic = and i32 %i.ib, 15                       ; 2 uses
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !23 ; 3 uses
  %i.ig = icmp eq i32 %i.ic, 0
  br i1 %i.ig, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph62
  %i.ih = icmp ult i32 %i.if, %i.ae
  br i1 %i.ih, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ii = zext i32 %i.if to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ii
  tail call void @llvm.prefetch.p0(ptr %i.ij, i32 0, i32 3, i32 1)
  %i.ik = add nuw nsw i64 %.0249.i60, 1
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i60
  store i32 %i.if, ptr %i.il, align 4, !tbaa !23
  %i.im = add nsw i32 %.0262.i59, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph62
  %.1263.i.ph = phi i32 [ %.0262.i59, %.lr.ph62 ], [ %i.im, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i60, %.lr.ph62 ], [ %i.ik, %bb.j ] ; 2 uses
  %i.in = add nuw nsw i64 %.0247.i61, 65535
  %i.io = and i64 %i.in, %.0247.i61               ; 2 uses
  %i.ip = icmp ne i64 %i.io, 0
  %i.iq = icmp ne i32 %.1263.i.ph, 0
  %i.ir = select i1 %i.ip, i1 %i.iq, i1 false
  br i1 %i.ir, label %.lr.ph62, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.aj, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i59, %bb.i ], [ %.1263.i.ph, %bb.k ] ; 2 uses
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i60, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.is = add nuw nsw i32 %i.hp, 15
  %i.it = and i32 %i.is, 15                       ; 2 uses
  %i.iu = icmp eq i32 %i.it, 0
  %i.iv = select i1 %i.iu, i32 15, i32 0
  %i.iw = add nuw nsw i32 %i.iv, %i.it            ; 2 uses
  %i.ix = trunc nuw nsw i32 %i.iw to i8
  store i8 %i.ix, ptr %i.hn, align 1, !tbaa !51
  %i.iy = zext nneg i32 %i.iw to i64              ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.iy
  store i8 %i.hq, ptr %i.iz, align 1, !tbaa !51
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !40 ; 2 uses
  %i.jc = add i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !40
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.iy
  store i32 %i.jb, ptr %i.jd, align 4, !tbaa !23
  %.not91 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not91, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %._crit_edge
  %i.je = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jf = icmp ult ptr %1, %i.je
  %i.jg = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jh = getelementptr inbounds i8, ptr %2, i64 -1
  %i.ji = add i32 %i.t, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph70, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i68 = phi i64 [ 0, %.lr.ph70 ], [ %i.kv, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i67 = phi i64 [ 3, %.lr.ph70 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i68
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !23 ; 2 uses
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.jl ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.0258.i67
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 -3
  %.val8 = load i32, ptr %i.jo, align 1, !tbaa !23
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i67
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -3
  %.val = load i32, ptr %i.jq, align 1, !tbaa !23
  %i.jr = icmp eq i32 %.val8, %.val
  br i1 %i.jr, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jf, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.jm, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i20 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i20, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.js = xor i64 %.val.i, %.val60.i
  %i.jt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.js, i1 true)
  %i.ju = lshr i64 %i.jt, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.jm, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jv = icmp ult ptr %.049.i, %i.je
  br i1 %i.jv, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.jw = xor i64 %.049.val.i, %.045.val.i
  %i.jx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jw, i1 true)
  %i.jy = lshr i64 %i.jx, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jy
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = sub i64 %i.ka, %i.q
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jm, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.kc = icmp ult ptr %.251.i, %i.jg
  br i1 %i.kc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.kd = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.kd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ke = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.kf = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.ke, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.kf, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.kg = icmp ult ptr %.352.i, %i.jh
  br i1 %i.kg, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.kh = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.kh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ki = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.kj = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.ki, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i17 = phi ptr [ %i.kj, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.kk = icmp ult ptr %.453.i, %2
  br i1 %i.kk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kl = load i8, ptr %.4.i17, align 1, !tbaa !51
  %i.km = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.kn = icmp eq i8 %i.kl, %i.km
  %spec.select.idx.i = zext i1 %i.kn to i64
  %spec.select.i19 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i19, %bb.w ]
  %i.ko = ptrtoint ptr %.5.i to i64
  %i.kp = sub i64 %i.ko, %i.q
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.ju, %bb.o ], [ %i.kb, %.thread63.i ], [ %i.kp, %bb.x ] ; 4 uses
  %i.kq = icmp ugt i64 %.2243.i, %.0258.i67
  br i1 %i.kq, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kr = sub i32 %i.ji, %i.jk
  %i.ks = zext i32 %i.kr to i64
  store i64 %i.ks, ptr %3, align 8, !tbaa !44
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.ku = icmp eq ptr %i.kt, %2
  br i1 %i.ku, label %._crit_edge71, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i67, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i67, %bb.l ] ; 2 uses
  %i.kv = add nuw i64 %.0248.i68, 1               ; 2 uses
  %exitcond104.not = icmp eq i64 %i.kv, %.0249.i.lcssa
  br i1 %exitcond104.not, label %._crit_edge71, label %bb.l, !llvm.loop !10

._crit_edge71:                                    ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.kw = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !52
  %i.ky = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !36 ; 3 uses
  %i.la = load ptr, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = ptrtoint ptr %i.kz to i64
  %.neg.i.neg = sub i64 %i.lb, %i.lc
  %.neg279.i.neg92 = trunc i64 %.neg.i.neg to i32
  %i.ld = load i8, ptr %i.ay, align 1, !tbaa !51  ; 2 uses
  %i.le = zext i8 %i.ld to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.lf = insertelement <16 x i8> poison, i8 %i.ba, i64 0
  %i.lg = shufflevector <16 x i8> %i.lf, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.lh = load <16 x i8>, ptr %i.ay, align 1, !tbaa !51
  %i.li = icmp eq <16 x i8> %i.lh, %i.lg
  %i.lj = bitcast <16 x i1> %i.li to i16          ; 3 uses
  %i.lk = icmp ne i16 %i.lj, 0
  %i.ll = icmp ne i32 %.0262.i.lcssa, 0
  %i.lm = select i1 %i.lk, i1 %i.ll, i1 false
  br i1 %i.lm, label %.lr.ph79.preheader, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit

.lr.ph79.preheader:                               ; preds = %._crit_edge71
  %i.ln = zext i8 %i.ld to i16
  %i.lo = tail call noundef i16 @llvm.fshr.i16(i16 %i.lj, i16 %i.lj, i16 %i.ln)
  %i.lp = zext i16 %i.lo to i64
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %bb.ab
  %.0238.i78 = phi i64 [ %i.mf, %bb.ab ], [ %i.lp, %.lr.ph79.preheader ] ; 3 uses
  %.0240.i77 = phi i64 [ %.1.i.ph, %bb.ab ], [ 0, %.lr.ph79.preheader ] ; 4 uses
  %.3265.i76 = phi i32 [ %.4266.i.ph, %bb.ab ], [ %.0262.i.lcssa, %.lr.ph79.preheader ] ; 2 uses
  %i.lq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0238.i78, i1 true)
  %i.lr = trunc nuw nsw i64 %i.lq to i32
  %i.ls = add nuw nsw i32 %i.lr, %i.le
  %i.lt = and i32 %i.ls, 15                       ; 2 uses
  %i.lu = zext nneg i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !23 ; 3 uses
  %i.lx = icmp eq i32 %i.lt, 0
  br i1 %i.lx, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph79
  %i.ly = icmp ult i32 %i.lw, %i.kx
  br i1 %i.ly, label %._crit_edge80, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lz = zext i32 %i.lw to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.lz
  tail call void @llvm.prefetch.p0(ptr %i.ma, i32 0, i32 3, i32 1)
  %i.mb = add nuw nsw i64 %.0240.i77, 1
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0240.i77
  store i32 %i.lw, ptr %i.mc, align 4, !tbaa !23
  %i.md = add nsw i32 %.3265.i76, -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph79
  %.4266.i.ph = phi i32 [ %.3265.i76, %.lr.ph79 ], [ %i.md, %bb.aa ] ; 2 uses
  %.1.i.ph = phi i64 [ %.0240.i77, %.lr.ph79 ], [ %i.mb, %bb.aa ] ; 2 uses
  %i.me = add nuw nsw i64 %.0238.i78, 65535
  %i.mf = and i64 %i.me, %.0238.i78               ; 2 uses
  %i.mg = icmp ne i64 %i.mf, 0
  %i.mh = icmp ne i32 %.4266.i.ph, 0
  %i.mi = select i1 %i.mg, i1 %i.mh, i1 false
  br i1 %i.mi, label %.lr.ph79, label %._crit_edge80, !llvm.loop !12

._crit_edge80:                                    ; preds = %bb.ab, %bb.z
  %.0240.i.lcssa = phi i64 [ %.0240.i77, %bb.z ], [ %.1.i.ph, %bb.ab ] ; 2 uses
  %.not93 = icmp eq i64 %.0240.i.lcssa, 0
  br i1 %.not93, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge80
  %invariant.op = add i32 %i.t, %.neg279.i.neg92
  %.val9 = load i32, ptr %1, align 1, !tbaa !23
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.mk = add i32 %invariant.op, 3
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph87, %.thread39
  %.0239.i85 = phi i64 [ 0, %.lr.ph87 ], [ %i.mz, %.thread39 ] ; 2 uses
  %.4.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.6.i.ph, %.thread39 ] ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0239.i85
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !23 ; 2 uses
  %i.mn = zext i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.mn ; 2 uses
  %.val10 = load i32, ptr %i.mo, align 1, !tbaa !23
  %i.mp = icmp eq i32 %.val10, %.val9
  br i1 %i.mp, label %bb.ad, label %.thread39

bb.ad:                                            ; preds = %bb.ac
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.mr = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.mj, ptr noundef nonnull %i.mq, ptr noundef %2, ptr noundef %i.la, ptr noundef %i.p)
  %i.ms = add i64 %i.mr, 4                        ; 4 uses
  %i.mt = icmp ugt i64 %i.ms, %.4.i84
  br i1 %i.mt, label %bb.ae, label %.thread39

bb.ae:                                            ; preds = %bb.ad
  %i.mu = add i32 %i.n, %i.mm
  %i.mv = sub i32 %i.mk, %i.mu
  %i.mw = zext i32 %i.mv to i64
  store i64 %i.mw, ptr %3, align 8, !tbaa !44
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 %i.ms
  %i.my = icmp eq ptr %i.mx, %2
  br i1 %i.my, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.thread39

.thread39:                                        ; preds = %bb.ac, %bb.ae, %bb.ad
  %.6.i.ph = phi i64 [ %i.ms, %bb.ae ], [ %.4.i84, %bb.ad ], [ %.4.i84, %bb.ac ] ; 2 uses
  %i.mz = add nuw i64 %.0239.i85, 1               ; 2 uses
  %exitcond105.not = icmp eq i64 %i.mz, %.0240.i.lcssa
  br i1 %exitcond105.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.ac, !llvm.loop !13

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %.thread39, %bb.ae, %._crit_edge71, %._crit_edge80
  %.7.i = phi i64 [ %.3261.i, %._crit_edge80 ], [ %.3261.i, %._crit_edge71 ], [ %.6.i.ph, %.thread39 ], [ %i.ms, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i64 %.7.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL40ZSTD_RowFindBestMatch_dictMatchState_6_5EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = alloca [64 x i32], align 16              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = trunc i64 %i.s to i32                    ; 9 uses
  %i.u = load i32, ptr %i.j, align 8, !tbaa !80
  %i.v = shl nuw i32 1, %i.u                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !78   ; 2 uses
  %i.y = sub i32 %i.t, %i.x
  %i.z = icmp ugt i32 %i.y, %i.v
  %i.aa = sub i32 %i.t, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !54
  %.not.i = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not.i, i1 %i.z, i1 false
  %i.ae = select i1 %i.ad, i32 %i.aa, i32 %i.x
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !81
  %..i = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 5)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !50 ; 2 uses
  %i.aj = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !49
  %.val11 = load i64, ptr %1, align 1, !tbaa !44
  %i.as = mul i64 %.val11, -3523014627193847808   ; 2 uses
  %i.at = sub i32 56, %i.ar
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 %i.as, %i.au                   ; 2 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 536870880                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ax ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.az, i32 0, i32 3, i32 1)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ba, i32 0, i32 3, i32 1)
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.bb = trunc i64 %i.av to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !55
  %.not274.i = icmp eq i32 %i.bd, 0
  br i1 %.not274.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !40 ; 5 uses
  %i.bg = sub i32 %i.t, %i.bf
  %i.bh = icmp ugt i32 %i.bg, 384
  br i1 %i.bh, label %bb.c, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, !prof !82

bb.c:                                             ; preds = %bb.b
  %i.bi = icmp ult i32 %i.bf, -96
  br i1 %i.bi, label %.lr.ph, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bj = add nuw i32 %i.bf, 96
  %i.bk = sub i32 56, %i.i
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = zext i32 %i.bf to i64
  %wide.trip.count = zext i32 %i.bj to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bm, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bn = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.val12 = load i64, ptr %i.bp, align 1, !tbaa !44
  %i.bq = mul i64 %.val12, -3523014627193847808
  %i.br = xor i64 %i.bq, %i.bn
  %i.bs = lshr i64 %i.br, %i.bl                   ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = lshr i64 %i.bs, 3
  %i.bv = and i64 %i.bu, 536870880                ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bv ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bw, i32 0, i32 3, i32 1)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bx, i32 0, i32 3, i32 1)
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bv
  tail call void @llvm.prefetch.p0(ptr %i.by, i32 0, i32 3, i32 1)
  %i.bz = trunc nuw i64 %indvars.iv to i32
  %i.ca = and i64 %indvars.iv, 7
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !23 ; 2 uses
  store i32 %i.bt, ptr %i.cb, align 4, !tbaa !23
  %i.cd = lshr i32 %i.cc, 3
  %i.ce = and i32 %i.cd, 536870880
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cf ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !51
  %i.cj = add i8 %i.ci, 31
  %i.ck = and i8 %i.cj, 31                        ; 2 uses
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = icmp eq i8 %i.ck, 0
  %i.cn = select i1 %i.cm, i32 31, i32 0
  %i.co = add nuw nsw i32 %i.cn, %i.cl            ; 2 uses
  %i.cp = trunc nuw nsw i32 %i.co to i8
  store i8 %i.cp, ptr %i.ch, align 1, !tbaa !51
  %i.cq = trunc i32 %i.cc to i8
  %i.cr = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cr
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !51
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cr
  store i32 %i.bz, ptr %i.ct, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit, label %bb.d, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit: ; preds = %bb.d
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !37
  %.pre115 = load ptr, ptr %i.e, align 8, !tbaa !48
  %.pre116 = load i32, ptr %i.h, align 4, !tbaa !49
  br label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i: ; preds = %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit, %bb.c
  %i.cu = phi i32 [ %.pre116, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit ], [ %i.i, %bb.c ] ; 4 uses
  %i.cv = phi ptr [ %.pre115, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit ], [ %i.f, %bb.c ] ; 6 uses
end_hunk_16
begin_hunk_17_@_ZN11duckdb_zstdL40ZSTD_RowFindBestMatch_dictMatchState_6_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %.val13 = load i64, ptr %i.eb, align 1, !tbaa !44
  %i.ec = mul i64 %.val13, -3523014627193847808
  %i.ed = xor i64 %i.ec, %i.dl
  %i.ee = lshr i64 %i.ed, %i.dn                   ; 2 uses
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = lshr i64 %i.ee, 3
  %i.eh = and i64 %i.eg, 536870880                ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.eh ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ei, i32 0, i32 3, i32 1)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ej, i32 0, i32 3, i32 1)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.eh
  tail call void @llvm.prefetch.p0(ptr %i.ek, i32 0, i32 3, i32 1)
  %i.el = and i64 %indvars.iv97, 7
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.el
  store i32 %i.ef, ptr %i.em, align 4, !tbaa !23
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.next98
  %.val13.1 = load i64, ptr %i.en, align 1, !tbaa !44
  %i.eo = mul i64 %.val13.1, -3523014627193847808
  %i.ep = xor i64 %i.eo, %i.dl
  %i.eq = lshr i64 %i.ep, %i.dn                   ; 2 uses
  %i.er = trunc i64 %i.eq to i32
  %i.es = lshr i64 %i.eq, 3
  %i.et = and i64 %i.es, 536870880                ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.et ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.eu, i32 0, i32 3, i32 1)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ev, i32 0, i32 3, i32 1)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.et
  tail call void @llvm.prefetch.p0(ptr %i.ew, i32 0, i32 3, i32 1)
  %i.ex = and i64 %indvars.iv.next98, 7
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ex
  store i32 %i.er, ptr %i.ey, align 4, !tbaa !23
  %indvars.iv.next98.1 = add nuw nsw i64 %indvars.iv97, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next98.1 to i32
  %exitcond100.not.1 = icmp eq i32 %i.dj, %lftr.wideiv.1
  br i1 %exitcond100.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph55.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph55.new, %bb.f, %bb.b
  %i.ez = phi i32 [ %i.i, %bb.b ], [ %i.cu, %bb.f ], [ %i.cu, %.lr.ph55.new ], [ %i.cu, %.prol.loopexit ]
  %i.fa = phi ptr [ %i.f, %bb.b ], [ %i.cv, %bb.f ], [ %i.cv, %.lr.ph55.new ], [ %i.cv, %.prol.loopexit ] ; 2 uses
  %i.fb = phi ptr [ %i.d, %bb.b ], [ %i.cw, %bb.f ], [ %i.cw, %.lr.ph55.new ], [ %i.cw, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.bf, %bb.b ], [ %i.cx, %bb.f ], [ %i.cx, %.lr.ph55.new ], [ %i.cx, %.prol.loopexit ] ; 2 uses
  %i.fc = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.fd = icmp ult i32 %.0.i284.i, %i.t
  br i1 %i.fd, label %.lr.ph57, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph57:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.fe = sub i32 56, %i.ez
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = zext i32 %.0.i284.i to i64
  %i.fh = and i64 %i.s, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph57, %bb.g
  %indvars.iv101 = phi i64 [ %i.fg, %.lr.ph57 ], [ %indvars.iv.next102, %bb.g ] ; 4 uses
  %i.fi = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 %indvars.iv101
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.val14 = load i64, ptr %i.fk, align 1, !tbaa !44
  %i.fl = mul i64 %.val14, -3523014627193847808
  %i.fm = xor i64 %i.fl, %i.fi
  %i.fn = lshr i64 %i.fm, %i.ff                   ; 2 uses
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = lshr i64 %i.fn, 3
  %i.fq = and i64 %i.fp, 536870880                ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fq ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.fr, i32 0, i32 3, i32 1)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fs, i32 0, i32 3, i32 1)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fq
  tail call void @llvm.prefetch.p0(ptr %i.ft, i32 0, i32 3, i32 1)
  %i.fu = trunc nuw i64 %indvars.iv101 to i32
  %i.fv = and i64 %indvars.iv101, 7
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !23 ; 2 uses
  store i32 %i.fo, ptr %i.fw, align 4, !tbaa !23
  %i.fy = lshr i32 %i.fx, 3
  %i.fz = and i32 %i.fy, 536870880
  %i.ga = zext nneg i32 %i.fz to i64              ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ga ; 3 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !51
  %i.ge = add i8 %i.gd, 31
  %i.gf = and i8 %i.ge, 31                        ; 2 uses
  %i.gg = zext nneg i8 %i.gf to i32
  %i.gh = icmp eq i8 %i.gf, 0
  %i.gi = select i1 %i.gh, i32 31, i32 0
  %i.gj = add nuw nsw i32 %i.gi, %i.gg            ; 2 uses
  %i.gk = trunc nuw nsw i32 %i.gj to i8
  store i8 %i.gk, ptr %i.gc, align 1, !tbaa !51
  %i.gl = trunc i32 %i.fx to i8
  %i.gm = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gm
  store i8 %i.gl, ptr %i.gn, align 1, !tbaa !51
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gm
  store i32 %i.fu, ptr %i.go, align 4, !tbaa !23
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.gp = icmp samesign ult i64 %indvars.iv.next102, %i.fh
  br i1 %i.gp, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.t, ptr %i.be, align 4, !tbaa !40
  %i.gq = and i64 %i.s, 4294967295
  %i.gr = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %.val15 = load i64, ptr %i.gs, align 1, !tbaa !44
  %i.gt = mul i64 %.val15, -3523014627193847808
  %i.gu = xor i64 %i.gt, %i.ai
  %i.gv = sub i32 56, %i.i
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = lshr i64 %i.gu, %i.gw                   ; 2 uses
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = lshr i64 %i.gx, 3
  %i.ha = and i64 %i.gz, 536870880                ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ha ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.hb, i32 0, i32 3, i32 1)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hc, i32 0, i32 3, i32 1)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ha
  tail call void @llvm.prefetch.p0(ptr %i.hd, i32 0, i32 3, i32 1)
  %i.he = and i64 %i.s, 7
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.he ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !23
  store i32 %i.gy, ptr %i.hf, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %i.hh = xor i64 %i.as, %i.ai
  %i.hi = sub i32 56, %i.i
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = lshr i64 %i.hh, %i.hj
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.t, ptr %i.hm, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.hl, %bb.h ], [ %i.hg, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !83
  %i.hp = add i32 %i.ho, %.0257.i
  store i32 %i.hp, ptr %i.hn, align 8, !tbaa !83
  %i.hq = lshr i32 %.0257.i, 3
  %i.hr = and i32 %i.hq, 536870880
  %i.hs = zext nneg i32 %i.hr to i64              ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.hs ; 5 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hv = trunc i32 %.0257.i to i8                ; 2 uses
  %i.hw = insertelement <16 x i8> poison, i8 %i.hv, i64 0
  %i.hx = load <16 x i8>, ptr %i.ht, align 1, !tbaa !51
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hz = load <16 x i8>, ptr %i.hy, align 1, !tbaa !51
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hs ; 2 uses
  %i.ib = zext i8 %i.hu to i32                    ; 3 uses
  %i.ic = shufflevector <16 x i8> %i.hx, <16 x i8> %i.hz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.id = shufflevector <16 x i8> %i.hw, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.ie = icmp eq <32 x i8> %i.ic, %i.id
  %i.if = bitcast <32 x i1> %i.ie to i32          ; 3 uses
  %.not = icmp eq i32 %i.if, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.ig = tail call noundef i32 @llvm.fshr.i32(i32 %i.if, i32 %i.if, i32 range(i32 0, 64) %i.ib)
  %i.ih = zext i32 %i.ig to i64
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %bb.k
  %.0247.i61 = phi i64 [ %i.ix, %bb.k ], [ %i.ih, %.lr.ph62.preheader ] ; 3 uses
  %.0249.i60 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph62.preheader ] ; 4 uses
  %.0262.i59 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.aj, %.lr.ph62.preheader ] ; 3 uses
  %i.ii = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i61, i1 true)
  %i.ij = trunc nuw nsw i64 %i.ii to i32
  %i.ik = add nuw nsw i32 %i.ij, %i.ib
  %i.il = and i32 %i.ik, 31                       ; 2 uses
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !23 ; 3 uses
  %i.ip = icmp eq i32 %i.il, 0
  br i1 %i.ip, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph62
  %i.iq = icmp ult i32 %i.io, %i.ae
  br i1 %i.iq, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ir = zext i32 %i.io to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ir
  tail call void @llvm.prefetch.p0(ptr %i.is, i32 0, i32 3, i32 1)
  %i.it = add nuw nsw i64 %.0249.i60, 1
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i60
  store i32 %i.io, ptr %i.iu, align 4, !tbaa !23
  %i.iv = add nsw i32 %.0262.i59, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph62
  %.1263.i.ph = phi i32 [ %.0262.i59, %.lr.ph62 ], [ %i.iv, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i60, %.lr.ph62 ], [ %i.it, %bb.j ] ; 2 uses
  %i.iw = add nuw nsw i64 %.0247.i61, 4294967295
  %i.ix = and i64 %i.iw, %.0247.i61               ; 2 uses
  %i.iy = icmp ne i64 %i.ix, 0
  %i.iz = icmp ne i32 %.1263.i.ph, 0
  %i.ja = select i1 %i.iy, i1 %i.iz, i1 false
  br i1 %i.ja, label %.lr.ph62, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.aj, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i59, %bb.i ], [ %.1263.i.ph, %bb.k ] ; 2 uses
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i60, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.jb = add nuw nsw i32 %i.ib, 31
  %i.jc = and i32 %i.jb, 31                       ; 2 uses
  %i.jd = icmp eq i32 %i.jc, 0
  %i.je = select i1 %i.jd, i32 31, i32 0
  %i.jf = add nuw nsw i32 %i.je, %i.jc            ; 2 uses
  %i.jg = trunc nuw nsw i32 %i.jf to i8
  store i8 %i.jg, ptr %i.ht, align 1, !tbaa !51
  %i.jh = zext nneg i32 %i.jf to i64              ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jh
  store i8 %i.hv, ptr %i.ji, align 1, !tbaa !51
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !40 ; 2 uses
  %i.jl = add i32 %i.jk, 1
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !40
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.jh
  store i32 %i.jk, ptr %i.jm, align 4, !tbaa !23
  %.not91 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not91, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %._crit_edge
  %i.jn = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jo = icmp ult ptr %1, %i.jn
  %i.jp = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jq = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jr = add i32 %i.t, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph70, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i68 = phi i64 [ 0, %.lr.ph70 ], [ %i.le, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i67 = phi i64 [ 3, %.lr.ph70 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i68
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !23 ; 2 uses
  %i.ju = zext i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ju ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.0258.i67
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 -3
  %.val8 = load i32, ptr %i.jx, align 1, !tbaa !23
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i67
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -3
  %.val = load i32, ptr %i.jz, align 1, !tbaa !23
  %i.ka = icmp eq i32 %.val8, %.val
  br i1 %i.ka, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jo, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.jv, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i20 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i20, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kb = xor i64 %.val.i, %.val60.i
  %i.kc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.kb, i1 true)
  %i.kd = lshr i64 %i.kc, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.jv, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.ke = icmp ult ptr %.049.i, %i.jn
  br i1 %i.ke, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.kf = xor i64 %.049.val.i, %.045.val.i
  %i.kg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.kf, i1 true)
  %i.kh = lshr i64 %i.kg, 3
  %i.ki = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.kh
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = sub i64 %i.kj, %i.q
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jv, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.kl = icmp ult ptr %.251.i, %i.jp
  br i1 %i.kl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.km = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.km, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kn = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.ko = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.kn, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.ko, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.kp = icmp ult ptr %.352.i, %i.jq
  br i1 %i.kp, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.kq = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.kq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kr = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.ks = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.kr, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i17 = phi ptr [ %i.ks, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.kt = icmp ult ptr %.453.i, %2
  br i1 %i.kt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ku = load i8, ptr %.4.i17, align 1, !tbaa !51
  %i.kv = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.kw = icmp eq i8 %i.ku, %i.kv
  %spec.select.idx.i = zext i1 %i.kw to i64
  %spec.select.i19 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i19, %bb.w ]
  %i.kx = ptrtoint ptr %.5.i to i64
  %i.ky = sub i64 %i.kx, %i.q
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.kd, %bb.o ], [ %i.kk, %.thread63.i ], [ %i.ky, %bb.x ] ; 4 uses
  %i.kz = icmp ugt i64 %.2243.i, %.0258.i67
  br i1 %i.kz, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.la = sub i32 %i.jr, %i.jt
  %i.lb = zext i32 %i.la to i64
  store i64 %i.lb, ptr %3, align 8, !tbaa !44
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.ld = icmp eq ptr %i.lc, %2
  br i1 %i.ld, label %._crit_edge71, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i67, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i67, %bb.l ] ; 2 uses
  %i.le = add nuw i64 %.0248.i68, 1               ; 2 uses
  %exitcond107.not = icmp eq i64 %i.le, %.0249.i.lcssa
  br i1 %exitcond107.not, label %._crit_edge71, label %bb.l, !llvm.loop !10

._crit_edge71:                                    ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.lf = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !52
  %i.lh = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !36 ; 3 uses
  %i.lj = load ptr, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  %i.lk = load i8, ptr %i.ay, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ll = insertelement <16 x i8> poison, i8 %i.bb, i64 0
  %i.lm = load <16 x i8>, ptr %i.ay, align 1, !tbaa !51
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.lo = load <16 x i8>, ptr %i.ln, align 1, !tbaa !51
  %i.lp = ptrtoint ptr %i.lj to i64
  %i.lq = ptrtoint ptr %i.li to i64
  %.neg.i.neg = sub i64 %i.lp, %i.lq
  %.neg279.i.neg92 = trunc i64 %.neg.i.neg to i32
  %i.lr = zext i8 %i.lk to i32                    ; 2 uses
  %i.ls = shufflevector <16 x i8> %i.lm, <16 x i8> %i.lo, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lt = shufflevector <16 x i8> %i.ll, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.lu = icmp eq <32 x i8> %i.ls, %i.lt
  %i.lv = bitcast <32 x i1> %i.lu to i32          ; 3 uses
  %i.lw = icmp ne i32 %i.lv, 0
  %i.lx = icmp ne i32 %.0262.i.lcssa, 0
  %i.ly = select i1 %i.lw, i1 %i.lx, i1 false
  br i1 %i.ly, label %.lr.ph79.preheader, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit

.lr.ph79.preheader:                               ; preds = %._crit_edge71
  %i.lz = tail call noundef i32 @llvm.fshr.i32(i32 %i.lv, i32 %i.lv, i32 %i.lr)
  %i.ma = zext i32 %i.lz to i64
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %bb.ab
  %.0238.i78 = phi i64 [ %i.mq, %bb.ab ], [ %i.ma, %.lr.ph79.preheader ] ; 3 uses
  %.0240.i77 = phi i64 [ %.1.i.ph, %bb.ab ], [ 0, %.lr.ph79.preheader ] ; 4 uses
  %.3265.i76 = phi i32 [ %.4266.i.ph, %bb.ab ], [ %.0262.i.lcssa, %.lr.ph79.preheader ] ; 2 uses
  %i.mb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0238.i78, i1 true)
  %i.mc = trunc nuw nsw i64 %i.mb to i32
  %i.md = add nuw nsw i32 %i.mc, %i.lr
  %i.me = and i32 %i.md, 31                       ; 2 uses
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.mf
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !23 ; 3 uses
  %i.mi = icmp eq i32 %i.me, 0
  br i1 %i.mi, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph79
  %i.mj = icmp ult i32 %i.mh, %i.lg
  br i1 %i.mj, label %._crit_edge80, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mk = zext i32 %i.mh to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.mk
  tail call void @llvm.prefetch.p0(ptr %i.ml, i32 0, i32 3, i32 1)
  %i.mm = add nuw nsw i64 %.0240.i77, 1
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0240.i77
  store i32 %i.mh, ptr %i.mn, align 4, !tbaa !23
  %i.mo = add nsw i32 %.3265.i76, -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph79
  %.4266.i.ph = phi i32 [ %.3265.i76, %.lr.ph79 ], [ %i.mo, %bb.aa ] ; 2 uses
  %.1.i.ph = phi i64 [ %.0240.i77, %.lr.ph79 ], [ %i.mm, %bb.aa ] ; 2 uses
  %i.mp = add nuw nsw i64 %.0238.i78, 4294967295
  %i.mq = and i64 %i.mp, %.0238.i78               ; 2 uses
  %i.mr = icmp ne i64 %i.mq, 0
  %i.ms = icmp ne i32 %.4266.i.ph, 0
  %i.mt = select i1 %i.mr, i1 %i.ms, i1 false
  br i1 %i.mt, label %.lr.ph79, label %._crit_edge80, !llvm.loop !12

._crit_edge80:                                    ; preds = %bb.ab, %bb.z
  %.0240.i.lcssa = phi i64 [ %.0240.i77, %bb.z ], [ %.1.i.ph, %bb.ab ] ; 2 uses
  %.not93 = icmp eq i64 %.0240.i.lcssa, 0
  br i1 %.not93, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge80
  %invariant.op = add i32 %i.t, %.neg279.i.neg92
  %.val9 = load i32, ptr %1, align 1, !tbaa !23
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.mv = add i32 %invariant.op, 3
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph87, %.thread39
  %.0239.i85 = phi i64 [ 0, %.lr.ph87 ], [ %i.nk, %.thread39 ] ; 2 uses
  %.4.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.6.i.ph, %.thread39 ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0239.i85
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !23 ; 2 uses
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.my ; 2 uses
  %.val10 = load i32, ptr %i.mz, align 1, !tbaa !23
  %i.na = icmp eq i32 %.val10, %.val9
  br i1 %i.na, label %bb.ad, label %.thread39

bb.ad:                                            ; preds = %bb.ac
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.nc = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.mu, ptr noundef nonnull %i.nb, ptr noundef %2, ptr noundef %i.lj, ptr noundef %i.p)
  %i.nd = add i64 %i.nc, 4                        ; 4 uses
  %i.ne = icmp ugt i64 %i.nd, %.4.i84
  br i1 %i.ne, label %bb.ae, label %.thread39

bb.ae:                                            ; preds = %bb.ad
  %i.nf = add i32 %i.n, %i.mx
  %i.ng = sub i32 %i.mv, %i.nf
  %i.nh = zext i32 %i.ng to i64
  store i64 %i.nh, ptr %3, align 8, !tbaa !44
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 %i.nd
  %i.nj = icmp eq ptr %i.ni, %2
  br i1 %i.nj, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.thread39

.thread39:                                        ; preds = %bb.ac, %bb.ae, %bb.ad
  %.6.i.ph = phi i64 [ %i.nd, %bb.ae ], [ %.4.i84, %bb.ad ], [ %.4.i84, %bb.ac ] ; 2 uses
  %i.nk = add nuw i64 %.0239.i85, 1               ; 2 uses
  %exitcond111.not = icmp eq i64 %i.nk, %.0240.i.lcssa
  br i1 %exitcond111.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.ac, !llvm.loop !13

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %.thread39, %bb.ae, %._crit_edge71, %._crit_edge80
  %.7.i = phi i64 [ %.3261.i, %._crit_edge80 ], [ %.3261.i, %._crit_edge71 ], [ %.6.i.ph, %.thread39 ], [ %i.nd, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i64 %.7.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i64 3, 0) i64 @_ZN11duckdb_zstdL40ZSTD_RowFindBestMatch_dictMatchState_6_6EPNS_17ZSTD_matchState_tEPKhS3_Pm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = alloca [64 x i32], align 16              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = trunc i64 %i.s to i32                    ; 9 uses
  %i.u = load i32, ptr %i.j, align 8, !tbaa !80
  %i.v = shl nuw i32 1, %i.u                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !78   ; 2 uses
  %i.y = sub i32 %i.t, %i.x
  %i.z = icmp ugt i32 %i.y, %i.v
  %i.aa = sub i32 %i.t, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !54
  %.not.i = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not.i, i1 %i.z, i1 false
  %i.ae = select i1 %i.ad, i32 %i.aa, i32 %i.x
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !81
  %..i = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 6)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !50 ; 2 uses
  %i.aj = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !49
  %.val11 = load i64, ptr %1, align 1, !tbaa !44
  %i.as = mul i64 %.val11, -3523014627193847808   ; 2 uses
  %i.at = sub i32 56, %i.ar
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 %i.as, %i.au                   ; 2 uses
  %i.aw = lshr i64 %i.av, 2
  %i.ax = and i64 %i.aw, 1073741760               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ax ; 6 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ax ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.az, i32 0, i32 3, i32 1)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ba, i32 0, i32 3, i32 1)
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bb, i32 0, i32 3, i32 1)
  %i.bc = trunc i64 %i.av to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !55
  %.not274.i = icmp eq i32 %i.be, 0
  br i1 %.not274.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !40 ; 5 uses
  %i.bh = sub i32 %i.t, %i.bg
  %i.bi = icmp ugt i32 %i.bh, 384
  br i1 %i.bi, label %bb.c, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, !prof !82

bb.c:                                             ; preds = %bb.b
  %i.bj = icmp ult i32 %i.bg, -96
  br i1 %i.bj, label %.lr.ph, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bk = add nuw i32 %i.bg, 96
  %i.bl = sub i32 56, %i.i
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = zext i32 %i.bg to i64
  %wide.trip.count = zext i32 %i.bk to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bn, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bo = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.val12 = load i64, ptr %i.bq, align 1, !tbaa !44
  %i.br = mul i64 %.val12, -3523014627193847808
  %i.bs = xor i64 %i.br, %i.bo
  %i.bt = lshr i64 %i.bs, %i.bm                   ; 2 uses
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = lshr i64 %i.bt, 2
  %i.bw = and i64 %i.bv, 1073741760               ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bw ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bx, i32 0, i32 3, i32 1)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.by, i32 0, i32 3, i32 1)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bw ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bz, i32 0, i32 3, i32 1)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ca, i32 0, i32 3, i32 1)
  %i.cb = trunc nuw i64 %indvars.iv to i32
  %i.cc = and i64 %indvars.iv, 7
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !23 ; 2 uses
  store i32 %i.bu, ptr %i.cd, align 4, !tbaa !23
  %i.cf = lshr i32 %i.ce, 2
  %i.cg = and i32 %i.cf, 1073741760
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ch ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !51
  %i.cl = add i8 %i.ck, 63
  %i.cm = and i8 %i.cl, 63                        ; 2 uses
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = icmp eq i8 %i.cm, 0
  %i.cp = select i1 %i.co, i32 63, i32 0
  %i.cq = add nuw nsw i32 %i.cp, %i.cn            ; 2 uses
  %i.cr = trunc nuw nsw i32 %i.cq to i8
  store i8 %i.cr, ptr %i.cj, align 1, !tbaa !51
  %i.cs = trunc i32 %i.ce to i8
  %i.ct = zext nneg i32 %i.cq to i64              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ct
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !51
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ct
  store i32 %i.cb, ptr %i.cv, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit, label %bb.d, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit: ; preds = %bb.d
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !37
  %.pre118 = load ptr, ptr %i.e, align 8, !tbaa !48
  %.pre119 = load i32, ptr %i.h, align 4, !tbaa !49
  br label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
end_hunk_17
begin_hunk_18_@_ZN11duckdb_zstdL45ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %indvars.iv.next112.prol = add nuw nsw i64 %i.cv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph62
  %indvars.iv111.unr = phi i64 [ %i.cv, %.lr.ph62 ], [ %indvars.iv.next112.prol, %.prol.loopexit.unr-lcssa ]
  %i.dv = icmp eq i32 %i.de, 1
  br i1 %i.dv, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.prol.loopexit, %.lr.ph62.new
  %indvars.iv111 = phi i64 [ %indvars.iv.next112.1, %.lr.ph62.new ], [ %indvars.iv111.unr, %.prol.loopexit ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv111
  %.val11 = load i32, ptr %i.dw, align 1, !tbaa !23
  %i.dx = mul i32 %.val11, -1640531535
  %i.dy = xor i32 %i.dx, %i.di
  %i.dz = lshr i32 %i.dy, %i.dj                   ; 2 uses
  %i.ea = lshr i32 %i.dz, 4
  %i.eb = and i32 %i.ea, 268435440
  %i.ec = zext nneg i32 %i.eb to i64              ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ec
  tail call void @llvm.prefetch.p0(ptr %i.ed, i32 0, i32 3, i32 1)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ec
  tail call void @llvm.prefetch.p0(ptr %i.ee, i32 0, i32 3, i32 1)
  %i.ef = and i64 %indvars.iv111, 7
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ef
  store i32 %i.dz, ptr %i.eg, align 4, !tbaa !23
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next112
  %.val11.1 = load i32, ptr %i.eh, align 1, !tbaa !23
  %i.ei = mul i32 %.val11.1, -1640531535
  %i.ej = xor i32 %i.ei, %i.di
  %i.ek = lshr i32 %i.ej, %i.dj                   ; 2 uses
  %i.el = lshr i32 %i.ek, 4
  %i.em = and i32 %i.el, 268435440
  %i.en = zext nneg i32 %i.em to i64              ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.en
  tail call void @llvm.prefetch.p0(ptr %i.eo, i32 0, i32 3, i32 1)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.en
  tail call void @llvm.prefetch.p0(ptr %i.ep, i32 0, i32 3, i32 1)
  %i.eq = and i64 %indvars.iv.next112, 7
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eq
  store i32 %i.ek, ptr %i.er, align 4, !tbaa !23
  %indvars.iv.next112.1 = add nuw nsw i64 %indvars.iv111, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next112.1 to i32
  %exitcond114.not.1 = icmp eq i32 %i.df, %lftr.wideiv.1
  br i1 %exitcond114.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph62.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph62.new, %bb.f, %bb.b
  %i.es = phi i32 [ %i.h, %bb.b ], [ %i.cq, %bb.f ], [ %i.cq, %.lr.ph62.new ], [ %i.cq, %.prol.loopexit ]
  %i.et = phi ptr [ %i.e, %bb.b ], [ %i.cr, %bb.f ], [ %i.cr, %.lr.ph62.new ], [ %i.cr, %.prol.loopexit ] ; 2 uses
  %i.eu = phi ptr [ %i.c, %bb.b ], [ %i.cs, %bb.f ], [ %i.cs, %.lr.ph62.new ], [ %i.cs, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.bc, %bb.b ], [ %i.ct, %bb.f ], [ %i.ct, %.lr.ph62.new ], [ %i.ct, %.prol.loopexit ] ; 2 uses
  %i.ev = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.ew = icmp ult i32 %.0.i284.i, %i.s
  br i1 %i.ew, label %.lr.ph64, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph64:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.ex = sub i32 24, %i.es
  %i.ey = zext i32 %.0.i284.i to i64
  %i.ez = and i64 %i.r, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph64, %bb.g
  %indvars.iv115 = phi i64 [ %i.ey, %.lr.ph64 ], [ %indvars.iv.next116, %bb.g ] ; 4 uses
  %i.fa = load i64, ptr %i.ag, align 8, !tbaa !50
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 %indvars.iv115
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = trunc i64 %i.fa to i32
  %.val12 = load i32, ptr %i.fc, align 1, !tbaa !23
  %i.fe = mul i32 %.val12, -1640531535
  %i.ff = xor i32 %i.fe, %i.fd
  %i.fg = lshr i32 %i.ff, %i.ex                   ; 2 uses
  %i.fh = lshr i32 %i.fg, 4
  %i.fi = and i32 %i.fh, 268435440
  %i.fj = zext nneg i32 %i.fi to i64              ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.fj
  tail call void @llvm.prefetch.p0(ptr %i.fk, i32 0, i32 3, i32 1)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fj
  tail call void @llvm.prefetch.p0(ptr %i.fl, i32 0, i32 3, i32 1)
  %i.fm = trunc nuw i64 %indvars.iv115 to i32
  %i.fn = and i64 %indvars.iv115, 7
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fn ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !23 ; 2 uses
  store i32 %i.fg, ptr %i.fo, align 4, !tbaa !23
  %i.fq = lshr i32 %i.fp, 4
  %i.fr = and i32 %i.fq, 268435440
  %i.fs = zext nneg i32 %i.fr to i64              ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fs ; 3 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !51
  %i.fw = add i8 %i.fv, 15
  %i.fx = and i8 %i.fw, 15                        ; 2 uses
  %i.fy = zext nneg i8 %i.fx to i32
  %i.fz = icmp eq i8 %i.fx, 0
  %i.ga = select i1 %i.fz, i32 15, i32 0
  %i.gb = add nuw nsw i32 %i.ga, %i.fy            ; 2 uses
  %i.gc = trunc nuw nsw i32 %i.gb to i8
  store i8 %i.gc, ptr %i.fu, align 1, !tbaa !51
  %i.gd = trunc i32 %i.fp to i8
  %i.ge = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ge
  store i8 %i.gd, ptr %i.gf, align 1, !tbaa !51
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.ge
  store i32 %i.fm, ptr %i.gg, align 4, !tbaa !23
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.gh = icmp samesign ult i64 %indvars.iv.next116, %i.ez
  br i1 %i.gh, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.s, ptr %i.bb, align 4, !tbaa !40
  %i.gi = and i64 %i.r, 4294967295
  %i.gj = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = trunc i64 %i.ah to i32
  %.val13 = load i32, ptr %i.gk, align 1, !tbaa !23
  %i.gm = mul i32 %.val13, -1640531535
  %i.gn = xor i32 %i.gm, %i.gl
  %i.go = sub i32 24, %i.h
  %i.gp = lshr i32 %i.gn, %i.go                   ; 2 uses
  %i.gq = lshr i32 %i.gp, 4
  %i.gr = and i32 %i.gq, 268435440
  %i.gs = zext nneg i32 %i.gr to i64              ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gs
  tail call void @llvm.prefetch.p0(ptr %i.gt, i32 0, i32 3, i32 1)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gs
  tail call void @llvm.prefetch.p0(ptr %i.gu, i32 0, i32 3, i32 1)
  %i.gv = and i64 %i.r, 7
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gv ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !23
  store i32 %i.gp, ptr %i.gw, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %i.gy = trunc i64 %i.ah to i32
  %i.gz = xor i32 %i.an, %i.gy
  %i.ha = sub i32 24, %i.h
  %i.hb = lshr i32 %i.gz, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.s, ptr %i.hc, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.hb, %bb.h ], [ %i.gx, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !83
  %i.hf = add i32 %i.he, %.0257.i
  store i32 %i.hf, ptr %i.hd, align 8, !tbaa !83
  %i.hg = lshr i32 %.0257.i, 4
  %i.hh = and i32 %i.hg, 268435440
  %i.hi = zext nneg i32 %i.hh to i64              ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hi ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hi ; 4 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !51  ; 2 uses
  %i.hm = zext i8 %i.hl to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hn = trunc i32 %.0257.i to i8                ; 2 uses
  %i.ho = insertelement <16 x i8> poison, i8 %i.hn, i64 0
  %i.hp = shufflevector <16 x i8> %i.ho, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.hq = load <16 x i8>, ptr %i.hk, align 1, !tbaa !51
  %i.hr = icmp eq <16 x i8> %i.hq, %i.hp
  %i.hs = bitcast <16 x i1> %i.hr to i16          ; 3 uses
  %.not101 = icmp eq i16 %i.hs, 0
  br i1 %.not101, label %._crit_edge, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.ht = zext i8 %i.hl to i16
  %i.hu = tail call noundef i16 @llvm.fshr.i16(i16 %i.hs, i16 %i.hs, i16 %i.ht)
  %i.hv = zext i16 %i.hu to i64
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %bb.k
  %.0247.i68 = phi i64 [ %i.il, %bb.k ], [ %i.hv, %.lr.ph69.preheader ] ; 3 uses
  %.0249.i67 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph69.preheader ] ; 4 uses
  %.0262.i66 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ai, %.lr.ph69.preheader ] ; 3 uses
  %i.hw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i68, i1 true)
  %i.hx = trunc nuw nsw i64 %i.hw to i32
  %i.hy = add nuw nsw i32 %i.hx, %i.hm
  %i.hz = and i32 %i.hy, 15                       ; 2 uses
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !23 ; 3 uses
  %i.id = icmp eq i32 %i.hz, 0
  br i1 %i.id, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph69
  %i.ie = icmp ult i32 %i.ic, %i.ad
  br i1 %i.ie, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.if = zext i32 %i.ic to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.if
  tail call void @llvm.prefetch.p0(ptr %i.ig, i32 0, i32 3, i32 1)
  %i.ih = add nuw nsw i64 %.0249.i67, 1
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i67
  store i32 %i.ic, ptr %i.ii, align 4, !tbaa !23
  %i.ij = add nsw i32 %.0262.i66, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph69
  %.1263.i.ph = phi i32 [ %.0262.i66, %.lr.ph69 ], [ %i.ij, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i67, %.lr.ph69 ], [ %i.ih, %bb.j ] ; 2 uses
  %i.ik = add nuw nsw i64 %.0247.i68, 65535
  %i.il = and i64 %i.ik, %.0247.i68               ; 2 uses
  %i.im = icmp ne i64 %i.il, 0
  %i.in = icmp ne i32 %.1263.i.ph, 0
  %i.io = select i1 %i.im, i1 %i.in, i1 false
  br i1 %i.io, label %.lr.ph69, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.ai, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i66, %bb.i ], [ %.1263.i.ph, %bb.k ]
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i67, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.ip = add nuw nsw i32 %i.hm, 15
  %i.iq = and i32 %i.ip, 15                       ; 2 uses
  %i.ir = icmp eq i32 %i.iq, 0
  %i.is = select i1 %i.ir, i32 15, i32 0
  %i.it = add nuw nsw i32 %i.is, %i.iq            ; 2 uses
  %i.iu = trunc nuw nsw i32 %i.it to i8
  store i8 %i.iu, ptr %i.hk, align 1, !tbaa !51
  %i.iv = zext nneg i32 %i.it to i64              ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.iv
  store i8 %i.hn, ptr %i.iw, align 1, !tbaa !51
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !40 ; 2 uses
  %i.iz = add i32 %i.iy, 1
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !40
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.iv
  store i32 %i.iy, ptr %i.ja, align 4, !tbaa !23
  %.not102 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not102, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %._crit_edge
  %i.jb = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jc = icmp ult ptr %1, %i.jb
  %i.jd = getelementptr inbounds i8, ptr %2, i64 -3
  %i.je = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jf = add i32 %i.s, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph77, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i75 = phi i64 [ 0, %.lr.ph77 ], [ %i.ks, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i74 = phi i64 [ 3, %.lr.ph77 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i75
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !23 ; 2 uses
  %i.ji = zext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ji ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.0258.i74
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 -3
  %.val4 = load i32, ptr %i.jl, align 1, !tbaa !23
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i74
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 -3
  %.val = load i32, ptr %i.jn, align 1, !tbaa !23
  %i.jo = icmp eq i32 %.val4, %.val
  br i1 %i.jo, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jc, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.jj, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i16 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i16, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jp = xor i64 %.val.i, %.val60.i
  %i.jq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jp, i1 true)
  %i.jr = lshr i64 %i.jq, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.jj, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.js = icmp ult ptr %.049.i, %i.jb
  br i1 %i.js, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.jt = xor i64 %.049.val.i, %.045.val.i
  %i.ju = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jt, i1 true)
  %i.jv = lshr i64 %i.ju, 3
  %i.jw = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jv
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = sub i64 %i.jx, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jj, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jz = icmp ult ptr %.251.i, %i.jd
  br i1 %i.jz, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.ka = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.ka, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kb = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.kc = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.kb, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.kc, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.kd = icmp ult ptr %.352.i, %i.je
  br i1 %i.kd, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.ke = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.ke, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kf = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.kg = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.kf, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.kg, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.kh = icmp ult ptr %.453.i, %2
  br i1 %i.kh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ki = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.kj = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.kk = icmp eq i8 %i.ki, %i.kj
  %spec.select.idx.i = zext i1 %i.kk to i64
  %spec.select.i15 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i15, %bb.w ]
  %i.kl = ptrtoint ptr %.5.i to i64
  %i.km = sub i64 %i.kl, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.jr, %bb.o ], [ %i.jy, %.thread63.i ], [ %i.km, %bb.x ] ; 4 uses
  %i.kn = icmp ugt i64 %.2243.i, %.0258.i74
  br i1 %i.kn, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.ko = sub i32 %i.jf, %i.jh
  %i.kp = zext i32 %i.ko to i64
  store i64 %i.kp, ptr %3, align 8, !tbaa !44
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kr = icmp eq ptr %i.kq, %2
  br i1 %i.kr, label %._crit_edge78, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i74, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i74, %bb.l ] ; 2 uses
  %i.ks = add nuw i64 %.0248.i75, 1               ; 2 uses
  %exitcond118.not = icmp eq i64 %i.ks, %.0249.i.lcssa
  br i1 %exitcond118.not, label %._crit_edge78, label %bb.l, !llvm.loop !10

._crit_edge78:                                    ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !36 ; 15 uses
  %i.kv = load ptr, ptr %i.ak, align 8, !tbaa !76 ; 3 uses
  %i.kw = load ptr, ptr %i.as, align 8, !tbaa !37
  %i.kx = getelementptr [4 x i8], ptr %i.kw, i64 %i.ar ; 5 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !23
  %i.kz = zext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kz
  tail call void @llvm.prefetch.p0(ptr %i.la, i32 0, i32 3, i32 1)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !23
  %i.ld = zext i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.ld
  tail call void @llvm.prefetch.p0(ptr %i.le, i32 0, i32 3, i32 1)
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !23
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.lh
  tail call void @llvm.prefetch.p0(ptr %i.li, i32 0, i32 3, i32 1)
  %i.lj = add nuw i32 %.0262.i.lcssa, %i.ay       ; 3 uses
  %i.lk = ptrtoint ptr %i.kv to i64
  %i.ll = ptrtoint ptr %i.ku to i64
  %.neg.i.i.neg = sub i64 %i.lk, %i.ll
  %.neg107.i.i.neg = trunc i64 %.neg.i.i.neg to i32
  %.neg = sub i32 %.neg107.i.i.neg, %i.m          ; 2 uses
  %i.lm = tail call i32 @llvm.umin.i32(i32 %i.lj, i32 3) ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kx, i64 12
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !23 ; 3 uses
  %i.lp = lshr i32 %i.lo, 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !38 ; 3 uses
  %i.ls = zext nneg i32 %i.lp to i64              ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.ls
  tail call void @llvm.prefetch.p0(ptr %i.lt, i32 0, i32 3, i32 1)
end_hunk_18
begin_hunk_19_@_ZN11duckdb_zstdL45ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv111
  %.val11 = load i32, ptr %i.dy, align 1, !tbaa !23
  %i.dz = mul i32 %.val11, -1640531535
  %i.ea = xor i32 %i.dz, %i.dj
  %i.eb = lshr i32 %i.ea, %i.dk                   ; 2 uses
  %i.ec = lshr i32 %i.eb, 3
  %i.ed = and i32 %i.ec, 536870880
  %i.ee = zext nneg i32 %i.ed to i64              ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ee ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ef, i32 0, i32 3, i32 1)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.eg, i32 0, i32 3, i32 1)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ee
  tail call void @llvm.prefetch.p0(ptr %i.eh, i32 0, i32 3, i32 1)
  %i.ei = and i64 %indvars.iv111, 7
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ei
  store i32 %i.eb, ptr %i.ej, align 4, !tbaa !23
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next112
  %.val11.1 = load i32, ptr %i.ek, align 1, !tbaa !23
  %i.el = mul i32 %.val11.1, -1640531535
  %i.em = xor i32 %i.el, %i.dj
  %i.en = lshr i32 %i.em, %i.dk                   ; 2 uses
  %i.eo = lshr i32 %i.en, 3
  %i.ep = and i32 %i.eo, 536870880
  %i.eq = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.eq ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.er, i32 0, i32 3, i32 1)
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.es, i32 0, i32 3, i32 1)
  %i.et = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.eq
  tail call void @llvm.prefetch.p0(ptr %i.et, i32 0, i32 3, i32 1)
  %i.eu = and i64 %indvars.iv.next112, 7
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eu
  store i32 %i.en, ptr %i.ev, align 4, !tbaa !23
  %indvars.iv.next112.1 = add nuw nsw i64 %indvars.iv111, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next112.1 to i32
  %exitcond114.not.1 = icmp eq i32 %i.dg, %lftr.wideiv.1
  br i1 %exitcond114.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph62.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph62.new, %bb.f, %bb.b
  %i.ew = phi i32 [ %i.h, %bb.b ], [ %i.cr, %bb.f ], [ %i.cr, %.lr.ph62.new ], [ %i.cr, %.prol.loopexit ]
  %i.ex = phi ptr [ %i.e, %bb.b ], [ %i.cs, %bb.f ], [ %i.cs, %.lr.ph62.new ], [ %i.cs, %.prol.loopexit ] ; 2 uses
  %i.ey = phi ptr [ %i.c, %bb.b ], [ %i.ct, %bb.f ], [ %i.ct, %.lr.ph62.new ], [ %i.ct, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.bc, %bb.b ], [ %i.cu, %bb.f ], [ %i.cu, %.lr.ph62.new ], [ %i.cu, %.prol.loopexit ] ; 2 uses
  %i.ez = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.fa = icmp ult i32 %.0.i284.i, %i.s
  br i1 %i.fa, label %.lr.ph64, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph64:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.fb = sub i32 24, %i.ew
  %i.fc = zext i32 %.0.i284.i to i64
  %i.fd = and i64 %i.r, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph64, %bb.g
  %indvars.iv115 = phi i64 [ %i.fc, %.lr.ph64 ], [ %indvars.iv.next116, %bb.g ] ; 4 uses
  %i.fe = load i64, ptr %i.ag, align 8, !tbaa !50
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv115
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = trunc i64 %i.fe to i32
  %.val12 = load i32, ptr %i.fg, align 1, !tbaa !23
  %i.fi = mul i32 %.val12, -1640531535
  %i.fj = xor i32 %i.fi, %i.fh
  %i.fk = lshr i32 %i.fj, %i.fb                   ; 2 uses
  %i.fl = lshr i32 %i.fk, 3
  %i.fm = and i32 %i.fl, 536870880
  %i.fn = zext nneg i32 %i.fm to i64              ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fn ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.fo, i32 0, i32 3, i32 1)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fp, i32 0, i32 3, i32 1)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fn
  tail call void @llvm.prefetch.p0(ptr %i.fq, i32 0, i32 3, i32 1)
  %i.fr = trunc nuw i64 %indvars.iv115 to i32
  %i.fs = and i64 %indvars.iv115, 7
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !23 ; 2 uses
  store i32 %i.fk, ptr %i.ft, align 4, !tbaa !23
  %i.fv = lshr i32 %i.fu, 3
  %i.fw = and i32 %i.fv, 536870880
  %i.fx = zext nneg i32 %i.fw to i64              ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fx ; 3 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !51
  %i.gb = add i8 %i.ga, 31
  %i.gc = and i8 %i.gb, 31                        ; 2 uses
  %i.gd = zext nneg i8 %i.gc to i32
  %i.ge = icmp eq i8 %i.gc, 0
  %i.gf = select i1 %i.ge, i32 31, i32 0
  %i.gg = add nuw nsw i32 %i.gf, %i.gd            ; 2 uses
  %i.gh = trunc nuw nsw i32 %i.gg to i8
  store i8 %i.gh, ptr %i.fz, align 1, !tbaa !51
  %i.gi = trunc i32 %i.fu to i8
  %i.gj = zext nneg i32 %i.gg to i64              ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gj
  store i8 %i.gi, ptr %i.gk, align 1, !tbaa !51
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.gj
  store i32 %i.fr, ptr %i.gl, align 4, !tbaa !23
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.gm = icmp samesign ult i64 %indvars.iv.next116, %i.fd
  br i1 %i.gm, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.s, ptr %i.bb, align 4, !tbaa !40
  %i.gn = and i64 %i.r, 4294967295
  %i.go = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = trunc i64 %i.ah to i32
  %.val13 = load i32, ptr %i.gp, align 1, !tbaa !23
  %i.gr = mul i32 %.val13, -1640531535
  %i.gs = xor i32 %i.gr, %i.gq
  %i.gt = sub i32 24, %i.h
  %i.gu = lshr i32 %i.gs, %i.gt                   ; 2 uses
  %i.gv = lshr i32 %i.gu, 3
  %i.gw = and i32 %i.gv, 536870880
  %i.gx = zext nneg i32 %i.gw to i64              ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gx ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.gy, i32 0, i32 3, i32 1)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.gz, i32 0, i32 3, i32 1)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gx
  tail call void @llvm.prefetch.p0(ptr %i.ha, i32 0, i32 3, i32 1)
  %i.hb = and i64 %i.r, 7
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hb ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !23
  store i32 %i.gu, ptr %i.hc, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %i.he = trunc i64 %i.ah to i32
  %i.hf = xor i32 %i.an, %i.he
  %i.hg = sub i32 24, %i.h
  %i.hh = lshr i32 %i.hf, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.s, ptr %i.hi, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.hh, %bb.h ], [ %i.hd, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !83
  %i.hl = add i32 %i.hk, %.0257.i
  store i32 %i.hl, ptr %i.hj, align 8, !tbaa !83
  %i.hm = lshr i32 %.0257.i, 3
  %i.hn = and i32 %i.hm, 536870880
  %i.ho = zext nneg i32 %i.hn to i64              ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ho ; 5 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hr = trunc i32 %.0257.i to i8                ; 2 uses
  %i.hs = insertelement <16 x i8> poison, i8 %i.hr, i64 0
  %i.ht = load <16 x i8>, ptr %i.hp, align 1, !tbaa !51
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hv = load <16 x i8>, ptr %i.hu, align 1, !tbaa !51
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ho ; 2 uses
  %i.hx = zext i8 %i.hq to i32                    ; 3 uses
  %i.hy = shufflevector <16 x i8> %i.ht, <16 x i8> %i.hv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hz = shufflevector <16 x i8> %i.hs, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.ia = icmp eq <32 x i8> %i.hy, %i.hz
  %i.ib = bitcast <32 x i1> %i.ia to i32          ; 3 uses
  %.not101 = icmp eq i32 %i.ib, 0
  br i1 %.not101, label %._crit_edge, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.ic = tail call noundef i32 @llvm.fshr.i32(i32 %i.ib, i32 %i.ib, i32 range(i32 0, 64) %i.hx)
  %i.id = zext i32 %i.ic to i64
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %bb.k
  %.0247.i68 = phi i64 [ %i.it, %bb.k ], [ %i.id, %.lr.ph69.preheader ] ; 3 uses
  %.0249.i67 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph69.preheader ] ; 4 uses
  %.0262.i66 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ai, %.lr.ph69.preheader ] ; 3 uses
  %i.ie = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i68, i1 true)
  %i.if = trunc nuw nsw i64 %i.ie to i32
  %i.ig = add nuw nsw i32 %i.if, %i.hx
  %i.ih = and i32 %i.ig, 31                       ; 2 uses
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !23 ; 3 uses
  %i.il = icmp eq i32 %i.ih, 0
  br i1 %i.il, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph69
  %i.im = icmp ult i32 %i.ik, %i.ad
  br i1 %i.im, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.in = zext i32 %i.ik to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.in
  tail call void @llvm.prefetch.p0(ptr %i.io, i32 0, i32 3, i32 1)
  %i.ip = add nuw nsw i64 %.0249.i67, 1
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i67
  store i32 %i.ik, ptr %i.iq, align 4, !tbaa !23
  %i.ir = add nsw i32 %.0262.i66, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph69
  %.1263.i.ph = phi i32 [ %.0262.i66, %.lr.ph69 ], [ %i.ir, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i67, %.lr.ph69 ], [ %i.ip, %bb.j ] ; 2 uses
  %i.is = add nuw nsw i64 %.0247.i68, 4294967295
  %i.it = and i64 %i.is, %.0247.i68               ; 2 uses
  %i.iu = icmp ne i64 %i.it, 0
  %i.iv = icmp ne i32 %.1263.i.ph, 0
  %i.iw = select i1 %i.iu, i1 %i.iv, i1 false
  br i1 %i.iw, label %.lr.ph69, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.ai, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i66, %bb.i ], [ %.1263.i.ph, %bb.k ]
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i67, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.ix = add nuw nsw i32 %i.hx, 31
  %i.iy = and i32 %i.ix, 31                       ; 2 uses
  %i.iz = icmp eq i32 %i.iy, 0
  %i.ja = select i1 %i.iz, i32 31, i32 0
  %i.jb = add nuw nsw i32 %i.ja, %i.iy            ; 2 uses
  %i.jc = trunc nuw nsw i32 %i.jb to i8
  store i8 %i.jc, ptr %i.hp, align 1, !tbaa !51
  %i.jd = zext nneg i32 %i.jb to i64              ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.jd
  store i8 %i.hr, ptr %i.je, align 1, !tbaa !51
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !40 ; 2 uses
  %i.jh = add i32 %i.jg, 1
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !40
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.jd
  store i32 %i.jg, ptr %i.ji, align 4, !tbaa !23
  %.not102 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not102, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %._crit_edge
  %i.jj = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jk = icmp ult ptr %1, %i.jj
  %i.jl = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jm = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jn = add i32 %i.s, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph77, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i75 = phi i64 [ 0, %.lr.ph77 ], [ %i.la, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i74 = phi i64 [ 3, %.lr.ph77 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i75
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !23 ; 2 uses
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.jq ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %.0258.i74
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 -3
  %.val4 = load i32, ptr %i.jt, align 1, !tbaa !23
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i74
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 -3
  %.val = load i32, ptr %i.jv, align 1, !tbaa !23
  %i.jw = icmp eq i32 %.val4, %.val
  br i1 %i.jw, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jk, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.jr, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i16 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i16, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jx = xor i64 %.val.i, %.val60.i
  %i.jy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jx, i1 true)
  %i.jz = lshr i64 %i.jy, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.jr, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.ka = icmp ult ptr %.049.i, %i.jj
  br i1 %i.ka, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.kb = xor i64 %.049.val.i, %.045.val.i
  %i.kc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.kb, i1 true)
  %i.kd = lshr i64 %i.kc, 3
  %i.ke = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.kd
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = sub i64 %i.kf, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jr, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.kh = icmp ult ptr %.251.i, %i.jl
  br i1 %i.kh, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.ki = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.ki, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kj = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.kk = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.kj, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.kk, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.kl = icmp ult ptr %.352.i, %i.jm
  br i1 %i.kl, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.km = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.km, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kn = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.ko = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.kn, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.ko, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.kp = icmp ult ptr %.453.i, %2
  br i1 %i.kp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kq = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.kr = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.ks = icmp eq i8 %i.kq, %i.kr
  %spec.select.idx.i = zext i1 %i.ks to i64
  %spec.select.i15 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i15, %bb.w ]
  %i.kt = ptrtoint ptr %.5.i to i64
  %i.ku = sub i64 %i.kt, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.jz, %bb.o ], [ %i.kg, %.thread63.i ], [ %i.ku, %bb.x ] ; 4 uses
  %i.kv = icmp ugt i64 %.2243.i, %.0258.i74
  br i1 %i.kv, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kw = sub i32 %i.jn, %i.jp
  %i.kx = zext i32 %i.kw to i64
  store i64 %i.kx, ptr %3, align 8, !tbaa !44
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kz = icmp eq ptr %i.ky, %2
  br i1 %i.kz, label %._crit_edge78, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i74, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i74, %bb.l ] ; 2 uses
  %i.la = add nuw i64 %.0248.i75, 1               ; 2 uses
  %exitcond121.not = icmp eq i64 %i.la, %.0249.i.lcssa
  br i1 %exitcond121.not, label %._crit_edge78, label %bb.l, !llvm.loop !10

._crit_edge78:                                    ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !36 ; 15 uses
  %i.ld = load ptr, ptr %i.ak, align 8, !tbaa !76 ; 3 uses
  %i.le = load ptr, ptr %i.as, align 8, !tbaa !37
  %i.lf = getelementptr [4 x i8], ptr %i.le, i64 %i.ar ; 5 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !23
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lh
  tail call void @llvm.prefetch.p0(ptr %i.li, i32 0, i32 3, i32 1)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !23
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.ll
  tail call void @llvm.prefetch.p0(ptr %i.lm, i32 0, i32 3, i32 1)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !23
  %i.lp = zext i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lp
  tail call void @llvm.prefetch.p0(ptr %i.lq, i32 0, i32 3, i32 1)
  %i.lr = add nuw i32 %.0262.i.lcssa, %i.ay       ; 3 uses
  %i.ls = ptrtoint ptr %i.ld to i64
  %i.lt = ptrtoint ptr %i.lc to i64
  %.neg.i.i.neg = sub i64 %i.ls, %i.lt
  %.neg107.i.i.neg = trunc i64 %.neg.i.i.neg to i32
  %.neg = sub i32 %.neg107.i.i.neg, %i.m          ; 2 uses
  %i.lu = tail call i32 @llvm.umin.i32(i32 %i.lr, i32 3) ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !23 ; 3 uses
  %i.lx = lshr i32 %i.lw, 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !38 ; 3 uses
  %i.ma = zext nneg i32 %i.lx to i64              ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.ma
  tail call void @llvm.prefetch.p0(ptr %i.mb, i32 0, i32 3, i32 1)
end_hunk_19
begin_hunk_20_@_ZN11duckdb_zstdL45ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph62
  %indvars.iv111.unr = phi i64 [ %i.cv, %.lr.ph62 ], [ %indvars.iv.next112.prol, %.prol.loopexit.unr-lcssa ]
  %i.dv = icmp eq i32 %i.de, 1
  br i1 %i.dv, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.prol.loopexit, %.lr.ph62.new
  %indvars.iv111 = phi i64 [ %indvars.iv.next112.1, %.lr.ph62.new ], [ %indvars.iv111.unr, %.prol.loopexit ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv111
  %.val11 = load i64, ptr %i.dw, align 1, !tbaa !44
  %i.dx = mul i64 %.val11, -3523014627271114752
  %i.dy = xor i64 %i.dx, %i.dh
  %i.dz = lshr i64 %i.dy, %i.dj                   ; 2 uses
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = lshr i64 %i.dz, 4
  %i.ec = and i64 %i.eb, 268435440                ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ec
  tail call void @llvm.prefetch.p0(ptr %i.ed, i32 0, i32 3, i32 1)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ec
  tail call void @llvm.prefetch.p0(ptr %i.ee, i32 0, i32 3, i32 1)
  %i.ef = and i64 %indvars.iv111, 7
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ef
  store i32 %i.ea, ptr %i.eg, align 4, !tbaa !23
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next112
  %.val11.1 = load i64, ptr %i.eh, align 1, !tbaa !44
  %i.ei = mul i64 %.val11.1, -3523014627271114752
  %i.ej = xor i64 %i.ei, %i.dh
  %i.ek = lshr i64 %i.ej, %i.dj                   ; 2 uses
  %i.el = trunc i64 %i.ek to i32
  %i.em = lshr i64 %i.ek, 4
  %i.en = and i64 %i.em, 268435440                ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.en
  tail call void @llvm.prefetch.p0(ptr %i.eo, i32 0, i32 3, i32 1)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.en
  tail call void @llvm.prefetch.p0(ptr %i.ep, i32 0, i32 3, i32 1)
  %i.eq = and i64 %indvars.iv.next112, 7
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eq
  store i32 %i.el, ptr %i.er, align 4, !tbaa !23
  %indvars.iv.next112.1 = add nuw nsw i64 %indvars.iv111, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next112.1 to i32
  %exitcond114.not.1 = icmp eq i32 %i.df, %lftr.wideiv.1
  br i1 %exitcond114.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph62.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph62.new, %bb.f, %bb.b
  %i.es = phi i32 [ %i.h, %bb.b ], [ %i.cq, %bb.f ], [ %i.cq, %.lr.ph62.new ], [ %i.cq, %.prol.loopexit ]
  %i.et = phi ptr [ %i.e, %bb.b ], [ %i.cr, %bb.f ], [ %i.cr, %.lr.ph62.new ], [ %i.cr, %.prol.loopexit ] ; 2 uses
  %i.eu = phi ptr [ %i.c, %bb.b ], [ %i.cs, %bb.f ], [ %i.cs, %.lr.ph62.new ], [ %i.cs, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.bc, %bb.b ], [ %i.ct, %bb.f ], [ %i.ct, %.lr.ph62.new ], [ %i.ct, %.prol.loopexit ] ; 2 uses
  %i.ev = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.ew = icmp ult i32 %.0.i284.i, %i.s
  br i1 %i.ew, label %.lr.ph64, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph64:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.ex = sub i32 56, %i.es
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = zext i32 %.0.i284.i to i64
  %i.fa = and i64 %i.r, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph64, %bb.g
  %indvars.iv115 = phi i64 [ %i.ez, %.lr.ph64 ], [ %indvars.iv.next116, %bb.g ] ; 4 uses
  %i.fb = load i64, ptr %i.ag, align 8, !tbaa !50
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 %indvars.iv115
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.val12 = load i64, ptr %i.fd, align 1, !tbaa !44
  %i.fe = mul i64 %.val12, -3523014627271114752
  %i.ff = xor i64 %i.fe, %i.fb
  %i.fg = lshr i64 %i.ff, %i.ey                   ; 2 uses
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = lshr i64 %i.fg, 4
  %i.fj = and i64 %i.fi, 268435440                ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.fj
  tail call void @llvm.prefetch.p0(ptr %i.fk, i32 0, i32 3, i32 1)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fj
  tail call void @llvm.prefetch.p0(ptr %i.fl, i32 0, i32 3, i32 1)
  %i.fm = trunc nuw i64 %indvars.iv115 to i32
  %i.fn = and i64 %indvars.iv115, 7
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fn ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !23 ; 2 uses
  store i32 %i.fh, ptr %i.fo, align 4, !tbaa !23
  %i.fq = lshr i32 %i.fp, 4
  %i.fr = and i32 %i.fq, 268435440
  %i.fs = zext nneg i32 %i.fr to i64              ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fs ; 3 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !51
  %i.fw = add i8 %i.fv, 15
  %i.fx = and i8 %i.fw, 15                        ; 2 uses
  %i.fy = zext nneg i8 %i.fx to i32
  %i.fz = icmp eq i8 %i.fx, 0
  %i.ga = select i1 %i.fz, i32 15, i32 0
  %i.gb = add nuw nsw i32 %i.ga, %i.fy            ; 2 uses
  %i.gc = trunc nuw nsw i32 %i.gb to i8
  store i8 %i.gc, ptr %i.fu, align 1, !tbaa !51
  %i.gd = trunc i32 %i.fp to i8
  %i.ge = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ge
  store i8 %i.gd, ptr %i.gf, align 1, !tbaa !51
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.ge
  store i32 %i.fm, ptr %i.gg, align 4, !tbaa !23
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.gh = icmp samesign ult i64 %indvars.iv.next116, %i.fa
  br i1 %i.gh, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.s, ptr %i.bb, align 4, !tbaa !40
  %i.gi = and i64 %i.r, 4294967295
  %i.gj = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %.val13 = load i64, ptr %i.gk, align 1, !tbaa !44
  %i.gl = mul i64 %.val13, -3523014627271114752
  %i.gm = xor i64 %i.gl, %i.ah
  %i.gn = sub i32 56, %i.h
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = lshr i64 %i.gm, %i.go                   ; 2 uses
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = lshr i64 %i.gp, 4
  %i.gs = and i64 %i.gr, 268435440                ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gs
  tail call void @llvm.prefetch.p0(ptr %i.gt, i32 0, i32 3, i32 1)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gs
  tail call void @llvm.prefetch.p0(ptr %i.gu, i32 0, i32 3, i32 1)
  %i.gv = and i64 %i.r, 7
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gv ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !23
  store i32 %i.gq, ptr %i.gw, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %i.gy = xor i64 %i.an, %i.ah
  %i.gz = sub i32 56, %i.h
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = lshr i64 %i.gy, %i.ha
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.s, ptr %i.hd, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.hc, %bb.h ], [ %i.gx, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !83
  %i.hg = add i32 %i.hf, %.0257.i
  store i32 %i.hg, ptr %i.he, align 8, !tbaa !83
  %i.hh = lshr i32 %.0257.i, 4
  %i.hi = and i32 %i.hh, 268435440
  %i.hj = zext nneg i32 %i.hi to i64              ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hj ; 4 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !51  ; 2 uses
  %i.hn = zext i8 %i.hm to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ho = trunc i32 %.0257.i to i8                ; 2 uses
  %i.hp = insertelement <16 x i8> poison, i8 %i.ho, i64 0
  %i.hq = shufflevector <16 x i8> %i.hp, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.hr = load <16 x i8>, ptr %i.hl, align 1, !tbaa !51
  %i.hs = icmp eq <16 x i8> %i.hr, %i.hq
  %i.ht = bitcast <16 x i1> %i.hs to i16          ; 3 uses
  %.not101 = icmp eq i16 %i.ht, 0
  br i1 %.not101, label %._crit_edge, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hu = zext i8 %i.hm to i16
  %i.hv = tail call noundef i16 @llvm.fshr.i16(i16 %i.ht, i16 %i.ht, i16 %i.hu)
  %i.hw = zext i16 %i.hv to i64
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %bb.k
  %.0247.i68 = phi i64 [ %i.im, %bb.k ], [ %i.hw, %.lr.ph69.preheader ] ; 3 uses
  %.0249.i67 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph69.preheader ] ; 4 uses
  %.0262.i66 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ai, %.lr.ph69.preheader ] ; 3 uses
  %i.hx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i68, i1 true)
  %i.hy = trunc nuw nsw i64 %i.hx to i32
  %i.hz = add nuw nsw i32 %i.hy, %i.hn
  %i.ia = and i32 %i.hz, 15                       ; 2 uses
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !23 ; 3 uses
  %i.ie = icmp eq i32 %i.ia, 0
  br i1 %i.ie, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph69
  %i.if = icmp ult i32 %i.id, %i.ad
  br i1 %i.if, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ig = zext i32 %i.id to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ig
  tail call void @llvm.prefetch.p0(ptr %i.ih, i32 0, i32 3, i32 1)
  %i.ii = add nuw nsw i64 %.0249.i67, 1
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i67
  store i32 %i.id, ptr %i.ij, align 4, !tbaa !23
  %i.ik = add nsw i32 %.0262.i66, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph69
  %.1263.i.ph = phi i32 [ %.0262.i66, %.lr.ph69 ], [ %i.ik, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i67, %.lr.ph69 ], [ %i.ii, %bb.j ] ; 2 uses
  %i.il = add nuw nsw i64 %.0247.i68, 65535
  %i.im = and i64 %i.il, %.0247.i68               ; 2 uses
  %i.in = icmp ne i64 %i.im, 0
  %i.io = icmp ne i32 %.1263.i.ph, 0
  %i.ip = select i1 %i.in, i1 %i.io, i1 false
  br i1 %i.ip, label %.lr.ph69, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.ai, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i66, %bb.i ], [ %.1263.i.ph, %bb.k ]
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i67, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.iq = add nuw nsw i32 %i.hn, 15
  %i.ir = and i32 %i.iq, 15                       ; 2 uses
  %i.is = icmp eq i32 %i.ir, 0
  %i.it = select i1 %i.is, i32 15, i32 0
  %i.iu = add nuw nsw i32 %i.it, %i.ir            ; 2 uses
  %i.iv = trunc nuw nsw i32 %i.iu to i8
  store i8 %i.iv, ptr %i.hl, align 1, !tbaa !51
  %i.iw = zext nneg i32 %i.iu to i64              ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.iw
  store i8 %i.ho, ptr %i.ix, align 1, !tbaa !51
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !40 ; 2 uses
  %i.ja = add i32 %i.iz, 1
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !40
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.iw
  store i32 %i.iz, ptr %i.jb, align 4, !tbaa !23
  %.not102 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not102, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %._crit_edge
  %i.jc = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jd = icmp ult ptr %1, %i.jc
  %i.je = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jf = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jg = add i32 %i.s, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph77, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i75 = phi i64 [ 0, %.lr.ph77 ], [ %i.kt, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i74 = phi i64 [ 3, %.lr.ph77 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i75
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !23 ; 2 uses
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.jj ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.0258.i74
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -3
  %.val4 = load i32, ptr %i.jm, align 1, !tbaa !23
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i74
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 -3
  %.val = load i32, ptr %i.jo, align 1, !tbaa !23
  %i.jp = icmp eq i32 %.val4, %.val
  br i1 %i.jp, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jd, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.jk, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i16 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i16, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jq = xor i64 %.val.i, %.val60.i
  %i.jr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jq, i1 true)
  %i.js = lshr i64 %i.jr, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.jk, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jt = icmp ult ptr %.049.i, %i.jc
  br i1 %i.jt, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.ju = xor i64 %.049.val.i, %.045.val.i
  %i.jv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ju, i1 true)
  %i.jw = lshr i64 %i.jv, 3
  %i.jx = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jw
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = sub i64 %i.jy, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jk, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.ka = icmp ult ptr %.251.i, %i.je
  br i1 %i.ka, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.kb = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.kb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kc = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.kd = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.kc, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.kd, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.ke = icmp ult ptr %.352.i, %i.jf
  br i1 %i.ke, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.kf = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.kf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kg = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.kh = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.kg, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.kh, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.ki = icmp ult ptr %.453.i, %2
  br i1 %i.ki, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kj = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.kk = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.kl = icmp eq i8 %i.kj, %i.kk
  %spec.select.idx.i = zext i1 %i.kl to i64
  %spec.select.i15 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i15, %bb.w ]
  %i.km = ptrtoint ptr %.5.i to i64
  %i.kn = sub i64 %i.km, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.js, %bb.o ], [ %i.jz, %.thread63.i ], [ %i.kn, %bb.x ] ; 4 uses
  %i.ko = icmp ugt i64 %.2243.i, %.0258.i74
  br i1 %i.ko, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kp = sub i32 %i.jg, %i.ji
  %i.kq = zext i32 %i.kp to i64
  store i64 %i.kq, ptr %3, align 8, !tbaa !44
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.ks = icmp eq ptr %i.kr, %2
  br i1 %i.ks, label %._crit_edge78, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i74, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i74, %bb.l ] ; 2 uses
  %i.kt = add nuw i64 %.0248.i75, 1               ; 2 uses
  %exitcond118.not = icmp eq i64 %i.kt, %.0249.i.lcssa
  br i1 %exitcond118.not, label %._crit_edge78, label %bb.l, !llvm.loop !10

._crit_edge78:                                    ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !36 ; 15 uses
  %i.kw = load ptr, ptr %i.ak, align 8, !tbaa !76 ; 3 uses
  %i.kx = load ptr, ptr %i.as, align 8, !tbaa !37
  %i.ky = getelementptr [4 x i8], ptr %i.kx, i64 %i.ar ; 5 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !23
  %i.la = zext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.la
  tail call void @llvm.prefetch.p0(ptr %i.lb, i32 0, i32 3, i32 1)
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !23
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.le
  tail call void @llvm.prefetch.p0(ptr %i.lf, i32 0, i32 3, i32 1)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !23
  %i.li = zext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.li
  tail call void @llvm.prefetch.p0(ptr %i.lj, i32 0, i32 3, i32 1)
  %i.lk = add nuw i32 %.0262.i.lcssa, %i.ay       ; 3 uses
  %i.ll = ptrtoint ptr %i.kw to i64
  %i.lm = ptrtoint ptr %i.kv to i64
  %.neg.i.i.neg = sub i64 %i.ll, %i.lm
  %.neg107.i.i.neg = trunc i64 %.neg.i.i.neg to i32
  %.neg = sub i32 %.neg107.i.i.neg, %i.m          ; 2 uses
  %i.ln = tail call i32 @llvm.umin.i32(i32 %i.lk, i32 3) ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !23 ; 3 uses
  %i.lq = lshr i32 %i.lp, 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !38 ; 3 uses
  %i.lt = zext nneg i32 %i.lq to i64              ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt
  tail call void @llvm.prefetch.p0(ptr %i.lu, i32 0, i32 3, i32 1)
end_hunk_20
begin_hunk_21_@_ZN11duckdb_zstdL45ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %.val11 = load i64, ptr %i.dy, align 1, !tbaa !44
  %i.dz = mul i64 %.val11, -3523014627271114752
  %i.ea = xor i64 %i.dz, %i.di
  %i.eb = lshr i64 %i.ea, %i.dk                   ; 2 uses
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = lshr i64 %i.eb, 3
  %i.ee = and i64 %i.ed, 536870880                ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ee ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ef, i32 0, i32 3, i32 1)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.eg, i32 0, i32 3, i32 1)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ee
  tail call void @llvm.prefetch.p0(ptr %i.eh, i32 0, i32 3, i32 1)
  %i.ei = and i64 %indvars.iv111, 7
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ei
  store i32 %i.ec, ptr %i.ej, align 4, !tbaa !23
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next112
  %.val11.1 = load i64, ptr %i.ek, align 1, !tbaa !44
  %i.el = mul i64 %.val11.1, -3523014627271114752
  %i.em = xor i64 %i.el, %i.di
  %i.en = lshr i64 %i.em, %i.dk                   ; 2 uses
  %i.eo = trunc i64 %i.en to i32
  %i.ep = lshr i64 %i.en, 3
  %i.eq = and i64 %i.ep, 536870880                ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.eq ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.er, i32 0, i32 3, i32 1)
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.es, i32 0, i32 3, i32 1)
  %i.et = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.eq
  tail call void @llvm.prefetch.p0(ptr %i.et, i32 0, i32 3, i32 1)
  %i.eu = and i64 %indvars.iv.next112, 7
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eu
  store i32 %i.eo, ptr %i.ev, align 4, !tbaa !23
  %indvars.iv.next112.1 = add nuw nsw i64 %indvars.iv111, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next112.1 to i32
  %exitcond114.not.1 = icmp eq i32 %i.dg, %lftr.wideiv.1
  br i1 %exitcond114.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph62.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph62.new, %bb.f, %bb.b
  %i.ew = phi i32 [ %i.h, %bb.b ], [ %i.cr, %bb.f ], [ %i.cr, %.lr.ph62.new ], [ %i.cr, %.prol.loopexit ]
  %i.ex = phi ptr [ %i.e, %bb.b ], [ %i.cs, %bb.f ], [ %i.cs, %.lr.ph62.new ], [ %i.cs, %.prol.loopexit ] ; 2 uses
  %i.ey = phi ptr [ %i.c, %bb.b ], [ %i.ct, %bb.f ], [ %i.ct, %.lr.ph62.new ], [ %i.ct, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.bc, %bb.b ], [ %i.cu, %bb.f ], [ %i.cu, %.lr.ph62.new ], [ %i.cu, %.prol.loopexit ] ; 2 uses
  %i.ez = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.fa = icmp ult i32 %.0.i284.i, %i.s
  br i1 %i.fa, label %.lr.ph64, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph64:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.fb = sub i32 56, %i.ew
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = zext i32 %.0.i284.i to i64
  %i.fe = and i64 %i.r, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph64, %bb.g
  %indvars.iv115 = phi i64 [ %i.fd, %.lr.ph64 ], [ %indvars.iv.next116, %bb.g ] ; 4 uses
  %i.ff = load i64, ptr %i.ag, align 8, !tbaa !50
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv115
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %.val12 = load i64, ptr %i.fh, align 1, !tbaa !44
  %i.fi = mul i64 %.val12, -3523014627271114752
  %i.fj = xor i64 %i.fi, %i.ff
  %i.fk = lshr i64 %i.fj, %i.fc                   ; 2 uses
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = lshr i64 %i.fk, 3
  %i.fn = and i64 %i.fm, 536870880                ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fn ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.fo, i32 0, i32 3, i32 1)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fp, i32 0, i32 3, i32 1)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fn
  tail call void @llvm.prefetch.p0(ptr %i.fq, i32 0, i32 3, i32 1)
  %i.fr = trunc nuw i64 %indvars.iv115 to i32
  %i.fs = and i64 %indvars.iv115, 7
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !23 ; 2 uses
  store i32 %i.fl, ptr %i.ft, align 4, !tbaa !23
  %i.fv = lshr i32 %i.fu, 3
  %i.fw = and i32 %i.fv, 536870880
  %i.fx = zext nneg i32 %i.fw to i64              ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fx ; 3 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !51
  %i.gb = add i8 %i.ga, 31
  %i.gc = and i8 %i.gb, 31                        ; 2 uses
  %i.gd = zext nneg i8 %i.gc to i32
  %i.ge = icmp eq i8 %i.gc, 0
  %i.gf = select i1 %i.ge, i32 31, i32 0
  %i.gg = add nuw nsw i32 %i.gf, %i.gd            ; 2 uses
  %i.gh = trunc nuw nsw i32 %i.gg to i8
  store i8 %i.gh, ptr %i.fz, align 1, !tbaa !51
  %i.gi = trunc i32 %i.fu to i8
  %i.gj = zext nneg i32 %i.gg to i64              ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gj
  store i8 %i.gi, ptr %i.gk, align 1, !tbaa !51
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.gj
  store i32 %i.fr, ptr %i.gl, align 4, !tbaa !23
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.gm = icmp samesign ult i64 %indvars.iv.next116, %i.fe
  br i1 %i.gm, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.s, ptr %i.bb, align 4, !tbaa !40
  %i.gn = and i64 %i.r, 4294967295
  %i.go = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.val13 = load i64, ptr %i.gp, align 1, !tbaa !44
  %i.gq = mul i64 %.val13, -3523014627271114752
  %i.gr = xor i64 %i.gq, %i.ah
  %i.gs = sub i32 56, %i.h
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = lshr i64 %i.gr, %i.gt                   ; 2 uses
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = lshr i64 %i.gu, 3
  %i.gx = and i64 %i.gw, 536870880                ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gx ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.gy, i32 0, i32 3, i32 1)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.gz, i32 0, i32 3, i32 1)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gx
  tail call void @llvm.prefetch.p0(ptr %i.ha, i32 0, i32 3, i32 1)
  %i.hb = and i64 %i.r, 7
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hb ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !23
  store i32 %i.gv, ptr %i.hc, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %i.he = xor i64 %i.an, %i.ah
  %i.hf = sub i32 56, %i.h
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = lshr i64 %i.he, %i.hg
  %i.hi = trunc i64 %i.hh to i32
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.s, ptr %i.hj, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.hi, %bb.h ], [ %i.hd, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !83
  %i.hm = add i32 %i.hl, %.0257.i
  store i32 %i.hm, ptr %i.hk, align 8, !tbaa !83
  %i.hn = lshr i32 %.0257.i, 3
  %i.ho = and i32 %i.hn, 536870880
  %i.hp = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hp ; 5 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hs = trunc i32 %.0257.i to i8                ; 2 uses
  %i.ht = insertelement <16 x i8> poison, i8 %i.hs, i64 0
  %i.hu = load <16 x i8>, ptr %i.hq, align 1, !tbaa !51
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hw = load <16 x i8>, ptr %i.hv, align 1, !tbaa !51
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hp ; 2 uses
  %i.hy = zext i8 %i.hr to i32                    ; 3 uses
  %i.hz = shufflevector <16 x i8> %i.hu, <16 x i8> %i.hw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ia = shufflevector <16 x i8> %i.ht, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.ib = icmp eq <32 x i8> %i.hz, %i.ia
  %i.ic = bitcast <32 x i1> %i.ib to i32          ; 3 uses
  %.not101 = icmp eq i32 %i.ic, 0
  br i1 %.not101, label %._crit_edge, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.id = tail call noundef i32 @llvm.fshr.i32(i32 %i.ic, i32 %i.ic, i32 range(i32 0, 64) %i.hy)
  %i.ie = zext i32 %i.id to i64
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %bb.k
  %.0247.i68 = phi i64 [ %i.iu, %bb.k ], [ %i.ie, %.lr.ph69.preheader ] ; 3 uses
  %.0249.i67 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph69.preheader ] ; 4 uses
  %.0262.i66 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ai, %.lr.ph69.preheader ] ; 3 uses
  %i.if = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i68, i1 true)
  %i.ig = trunc nuw nsw i64 %i.if to i32
  %i.ih = add nuw nsw i32 %i.ig, %i.hy
  %i.ii = and i32 %i.ih, 31                       ; 2 uses
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !23 ; 3 uses
  %i.im = icmp eq i32 %i.ii, 0
  br i1 %i.im, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph69
  %i.in = icmp ult i32 %i.il, %i.ad
  br i1 %i.in, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.io = zext i32 %i.il to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.io
  tail call void @llvm.prefetch.p0(ptr %i.ip, i32 0, i32 3, i32 1)
  %i.iq = add nuw nsw i64 %.0249.i67, 1
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i67
  store i32 %i.il, ptr %i.ir, align 4, !tbaa !23
  %i.is = add nsw i32 %.0262.i66, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph69
  %.1263.i.ph = phi i32 [ %.0262.i66, %.lr.ph69 ], [ %i.is, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i67, %.lr.ph69 ], [ %i.iq, %bb.j ] ; 2 uses
  %i.it = add nuw nsw i64 %.0247.i68, 4294967295
  %i.iu = and i64 %i.it, %.0247.i68               ; 2 uses
  %i.iv = icmp ne i64 %i.iu, 0
  %i.iw = icmp ne i32 %.1263.i.ph, 0
  %i.ix = select i1 %i.iv, i1 %i.iw, i1 false
  br i1 %i.ix, label %.lr.ph69, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.ai, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i66, %bb.i ], [ %.1263.i.ph, %bb.k ]
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i67, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.iy = add nuw nsw i32 %i.hy, 31
  %i.iz = and i32 %i.iy, 31                       ; 2 uses
  %i.ja = icmp eq i32 %i.iz, 0
  %i.jb = select i1 %i.ja, i32 31, i32 0
  %i.jc = add nuw nsw i32 %i.jb, %i.iz            ; 2 uses
  %i.jd = trunc nuw nsw i32 %i.jc to i8
  store i8 %i.jd, ptr %i.hq, align 1, !tbaa !51
  %i.je = zext nneg i32 %i.jc to i64              ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.je
  store i8 %i.hs, ptr %i.jf, align 1, !tbaa !51
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !40 ; 2 uses
  %i.ji = add i32 %i.jh, 1
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !40
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.je
  store i32 %i.jh, ptr %i.jj, align 4, !tbaa !23
  %.not102 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not102, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %._crit_edge
  %i.jk = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jl = icmp ult ptr %1, %i.jk
  %i.jm = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jn = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jo = add i32 %i.s, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph77, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i75 = phi i64 [ 0, %.lr.ph77 ], [ %i.lb, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i74 = phi i64 [ 3, %.lr.ph77 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i75
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !23 ; 2 uses
  %i.jr = zext i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.jr ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %.0258.i74
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 -3
  %.val4 = load i32, ptr %i.ju, align 1, !tbaa !23
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i74
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -3
  %.val = load i32, ptr %i.jw, align 1, !tbaa !23
  %i.jx = icmp eq i32 %.val4, %.val
  br i1 %i.jx, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jl, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.js, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i16 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i16, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jy = xor i64 %.val.i, %.val60.i
  %i.jz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jy, i1 true)
  %i.ka = lshr i64 %i.jz, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.js, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.kb = icmp ult ptr %.049.i, %i.jk
  br i1 %i.kb, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.kc = xor i64 %.049.val.i, %.045.val.i
  %i.kd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.kc, i1 true)
  %i.ke = lshr i64 %i.kd, 3
  %i.kf = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.ke
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = sub i64 %i.kg, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.js, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.ki = icmp ult ptr %.251.i, %i.jm
  br i1 %i.ki, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.kj = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.kj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kk = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.kl = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.kk, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.kl, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.km = icmp ult ptr %.352.i, %i.jn
  br i1 %i.km, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.kn = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.kn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ko = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.kp = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.ko, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.kp, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.kq = icmp ult ptr %.453.i, %2
  br i1 %i.kq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kr = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.ks = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.kt = icmp eq i8 %i.kr, %i.ks
  %spec.select.idx.i = zext i1 %i.kt to i64
  %spec.select.i15 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i15, %bb.w ]
  %i.ku = ptrtoint ptr %.5.i to i64
  %i.kv = sub i64 %i.ku, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.ka, %bb.o ], [ %i.kh, %.thread63.i ], [ %i.kv, %bb.x ] ; 4 uses
  %i.kw = icmp ugt i64 %.2243.i, %.0258.i74
  br i1 %i.kw, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kx = sub i32 %i.jo, %i.jq
  %i.ky = zext i32 %i.kx to i64
  store i64 %i.ky, ptr %3, align 8, !tbaa !44
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.la = icmp eq ptr %i.kz, %2
  br i1 %i.la, label %._crit_edge78, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i74, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i74, %bb.l ] ; 2 uses
  %i.lb = add nuw i64 %.0248.i75, 1               ; 2 uses
  %exitcond121.not = icmp eq i64 %i.lb, %.0249.i.lcssa
  br i1 %exitcond121.not, label %._crit_edge78, label %bb.l, !llvm.loop !10

._crit_edge78:                                    ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !36 ; 15 uses
  %i.le = load ptr, ptr %i.ak, align 8, !tbaa !76 ; 3 uses
  %i.lf = load ptr, ptr %i.as, align 8, !tbaa !37
  %i.lg = getelementptr [4 x i8], ptr %i.lf, i64 %i.ar ; 5 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !23
  %i.li = zext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.li
  tail call void @llvm.prefetch.p0(ptr %i.lj, i32 0, i32 3, i32 1)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !23
  %i.lm = zext i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lm
  tail call void @llvm.prefetch.p0(ptr %i.ln, i32 0, i32 3, i32 1)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !23
  %i.lq = zext i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lq
  tail call void @llvm.prefetch.p0(ptr %i.lr, i32 0, i32 3, i32 1)
  %i.ls = add nuw i32 %.0262.i.lcssa, %i.ay       ; 3 uses
  %i.lt = ptrtoint ptr %i.le to i64
  %i.lu = ptrtoint ptr %i.ld to i64
  %.neg.i.i.neg = sub i64 %i.lt, %i.lu
  %.neg107.i.i.neg = trunc i64 %.neg.i.i.neg to i32
  %.neg = sub i32 %.neg107.i.i.neg, %i.m          ; 2 uses
  %i.lv = tail call i32 @llvm.umin.i32(i32 %i.ls, i32 3) ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !23 ; 3 uses
  %i.ly = lshr i32 %i.lx, 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !38 ; 3 uses
  %i.mb = zext nneg i32 %i.ly to i64              ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.mb
  tail call void @llvm.prefetch.p0(ptr %i.mc, i32 0, i32 3, i32 1)
end_hunk_21
begin_hunk_22_@_ZN11duckdb_zstdL45ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph62
  %indvars.iv111.unr = phi i64 [ %i.cv, %.lr.ph62 ], [ %indvars.iv.next112.prol, %.prol.loopexit.unr-lcssa ]
  %i.dv = icmp eq i32 %i.de, 1
  br i1 %i.dv, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.prol.loopexit, %.lr.ph62.new
  %indvars.iv111 = phi i64 [ %indvars.iv.next112.1, %.lr.ph62.new ], [ %indvars.iv111.unr, %.prol.loopexit ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv111
  %.val11 = load i64, ptr %i.dw, align 1, !tbaa !44
  %i.dx = mul i64 %.val11, -3523014627193847808
  %i.dy = xor i64 %i.dx, %i.dh
  %i.dz = lshr i64 %i.dy, %i.dj                   ; 2 uses
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = lshr i64 %i.dz, 4
  %i.ec = and i64 %i.eb, 268435440                ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ec
  tail call void @llvm.prefetch.p0(ptr %i.ed, i32 0, i32 3, i32 1)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ec
  tail call void @llvm.prefetch.p0(ptr %i.ee, i32 0, i32 3, i32 1)
  %i.ef = and i64 %indvars.iv111, 7
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ef
  store i32 %i.ea, ptr %i.eg, align 4, !tbaa !23
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next112
  %.val11.1 = load i64, ptr %i.eh, align 1, !tbaa !44
  %i.ei = mul i64 %.val11.1, -3523014627193847808
  %i.ej = xor i64 %i.ei, %i.dh
  %i.ek = lshr i64 %i.ej, %i.dj                   ; 2 uses
  %i.el = trunc i64 %i.ek to i32
  %i.em = lshr i64 %i.ek, 4
  %i.en = and i64 %i.em, 268435440                ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.en
  tail call void @llvm.prefetch.p0(ptr %i.eo, i32 0, i32 3, i32 1)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.en
  tail call void @llvm.prefetch.p0(ptr %i.ep, i32 0, i32 3, i32 1)
  %i.eq = and i64 %indvars.iv.next112, 7
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eq
  store i32 %i.el, ptr %i.er, align 4, !tbaa !23
  %indvars.iv.next112.1 = add nuw nsw i64 %indvars.iv111, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next112.1 to i32
  %exitcond114.not.1 = icmp eq i32 %i.df, %lftr.wideiv.1
  br i1 %exitcond114.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph62.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph62.new, %bb.f, %bb.b
  %i.es = phi i32 [ %i.h, %bb.b ], [ %i.cq, %bb.f ], [ %i.cq, %.lr.ph62.new ], [ %i.cq, %.prol.loopexit ]
  %i.et = phi ptr [ %i.e, %bb.b ], [ %i.cr, %bb.f ], [ %i.cr, %.lr.ph62.new ], [ %i.cr, %.prol.loopexit ] ; 2 uses
  %i.eu = phi ptr [ %i.c, %bb.b ], [ %i.cs, %bb.f ], [ %i.cs, %.lr.ph62.new ], [ %i.cs, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.bc, %bb.b ], [ %i.ct, %bb.f ], [ %i.ct, %.lr.ph62.new ], [ %i.ct, %.prol.loopexit ] ; 2 uses
  %i.ev = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.ew = icmp ult i32 %.0.i284.i, %i.s
  br i1 %i.ew, label %.lr.ph64, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph64:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.ex = sub i32 56, %i.es
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = zext i32 %.0.i284.i to i64
  %i.fa = and i64 %i.r, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph64, %bb.g
  %indvars.iv115 = phi i64 [ %i.ez, %.lr.ph64 ], [ %indvars.iv.next116, %bb.g ] ; 4 uses
  %i.fb = load i64, ptr %i.ag, align 8, !tbaa !50
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 %indvars.iv115
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.val12 = load i64, ptr %i.fd, align 1, !tbaa !44
  %i.fe = mul i64 %.val12, -3523014627193847808
  %i.ff = xor i64 %i.fe, %i.fb
  %i.fg = lshr i64 %i.ff, %i.ey                   ; 2 uses
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = lshr i64 %i.fg, 4
  %i.fj = and i64 %i.fi, 268435440                ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.fj
  tail call void @llvm.prefetch.p0(ptr %i.fk, i32 0, i32 3, i32 1)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fj
  tail call void @llvm.prefetch.p0(ptr %i.fl, i32 0, i32 3, i32 1)
  %i.fm = trunc nuw i64 %indvars.iv115 to i32
  %i.fn = and i64 %indvars.iv115, 7
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fn ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !23 ; 2 uses
  store i32 %i.fh, ptr %i.fo, align 4, !tbaa !23
  %i.fq = lshr i32 %i.fp, 4
  %i.fr = and i32 %i.fq, 268435440
  %i.fs = zext nneg i32 %i.fr to i64              ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fs ; 3 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !51
  %i.fw = add i8 %i.fv, 15
  %i.fx = and i8 %i.fw, 15                        ; 2 uses
  %i.fy = zext nneg i8 %i.fx to i32
  %i.fz = icmp eq i8 %i.fx, 0
  %i.ga = select i1 %i.fz, i32 15, i32 0
  %i.gb = add nuw nsw i32 %i.ga, %i.fy            ; 2 uses
  %i.gc = trunc nuw nsw i32 %i.gb to i8
  store i8 %i.gc, ptr %i.fu, align 1, !tbaa !51
  %i.gd = trunc i32 %i.fp to i8
  %i.ge = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ge
  store i8 %i.gd, ptr %i.gf, align 1, !tbaa !51
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.ge
  store i32 %i.fm, ptr %i.gg, align 4, !tbaa !23
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.gh = icmp samesign ult i64 %indvars.iv.next116, %i.fa
  br i1 %i.gh, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.s, ptr %i.bb, align 4, !tbaa !40
  %i.gi = and i64 %i.r, 4294967295
  %i.gj = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %.val13 = load i64, ptr %i.gk, align 1, !tbaa !44
  %i.gl = mul i64 %.val13, -3523014627193847808
  %i.gm = xor i64 %i.gl, %i.ah
  %i.gn = sub i32 56, %i.h
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = lshr i64 %i.gm, %i.go                   ; 2 uses
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = lshr i64 %i.gp, 4
  %i.gs = and i64 %i.gr, 268435440                ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gs
  tail call void @llvm.prefetch.p0(ptr %i.gt, i32 0, i32 3, i32 1)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gs
  tail call void @llvm.prefetch.p0(ptr %i.gu, i32 0, i32 3, i32 1)
  %i.gv = and i64 %i.r, 7
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gv ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !23
  store i32 %i.gq, ptr %i.gw, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %i.gy = xor i64 %i.an, %i.ah
  %i.gz = sub i32 56, %i.h
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = lshr i64 %i.gy, %i.ha
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.s, ptr %i.hd, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.hc, %bb.h ], [ %i.gx, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !83
  %i.hg = add i32 %i.hf, %.0257.i
  store i32 %i.hg, ptr %i.he, align 8, !tbaa !83
  %i.hh = lshr i32 %.0257.i, 4
  %i.hi = and i32 %i.hh, 268435440
  %i.hj = zext nneg i32 %i.hi to i64              ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hj ; 4 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !51  ; 2 uses
  %i.hn = zext i8 %i.hm to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ho = trunc i32 %.0257.i to i8                ; 2 uses
  %i.hp = insertelement <16 x i8> poison, i8 %i.ho, i64 0
  %i.hq = shufflevector <16 x i8> %i.hp, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.hr = load <16 x i8>, ptr %i.hl, align 1, !tbaa !51
  %i.hs = icmp eq <16 x i8> %i.hr, %i.hq
  %i.ht = bitcast <16 x i1> %i.hs to i16          ; 3 uses
  %.not101 = icmp eq i16 %i.ht, 0
  br i1 %.not101, label %._crit_edge, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hu = zext i8 %i.hm to i16
  %i.hv = tail call noundef i16 @llvm.fshr.i16(i16 %i.ht, i16 %i.ht, i16 %i.hu)
  %i.hw = zext i16 %i.hv to i64
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %bb.k
  %.0247.i68 = phi i64 [ %i.im, %bb.k ], [ %i.hw, %.lr.ph69.preheader ] ; 3 uses
  %.0249.i67 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph69.preheader ] ; 4 uses
  %.0262.i66 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ai, %.lr.ph69.preheader ] ; 3 uses
  %i.hx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i68, i1 true)
  %i.hy = trunc nuw nsw i64 %i.hx to i32
  %i.hz = add nuw nsw i32 %i.hy, %i.hn
  %i.ia = and i32 %i.hz, 15                       ; 2 uses
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !23 ; 3 uses
  %i.ie = icmp eq i32 %i.ia, 0
  br i1 %i.ie, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph69
  %i.if = icmp ult i32 %i.id, %i.ad
  br i1 %i.if, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ig = zext i32 %i.id to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ig
  tail call void @llvm.prefetch.p0(ptr %i.ih, i32 0, i32 3, i32 1)
  %i.ii = add nuw nsw i64 %.0249.i67, 1
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i67
  store i32 %i.id, ptr %i.ij, align 4, !tbaa !23
  %i.ik = add nsw i32 %.0262.i66, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph69
  %.1263.i.ph = phi i32 [ %.0262.i66, %.lr.ph69 ], [ %i.ik, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i67, %.lr.ph69 ], [ %i.ii, %bb.j ] ; 2 uses
  %i.il = add nuw nsw i64 %.0247.i68, 65535
  %i.im = and i64 %i.il, %.0247.i68               ; 2 uses
  %i.in = icmp ne i64 %i.im, 0
  %i.io = icmp ne i32 %.1263.i.ph, 0
  %i.ip = select i1 %i.in, i1 %i.io, i1 false
  br i1 %i.ip, label %.lr.ph69, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.ai, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i66, %bb.i ], [ %.1263.i.ph, %bb.k ]
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i67, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.iq = add nuw nsw i32 %i.hn, 15
  %i.ir = and i32 %i.iq, 15                       ; 2 uses
  %i.is = icmp eq i32 %i.ir, 0
  %i.it = select i1 %i.is, i32 15, i32 0
  %i.iu = add nuw nsw i32 %i.it, %i.ir            ; 2 uses
  %i.iv = trunc nuw nsw i32 %i.iu to i8
  store i8 %i.iv, ptr %i.hl, align 1, !tbaa !51
  %i.iw = zext nneg i32 %i.iu to i64              ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.iw
  store i8 %i.ho, ptr %i.ix, align 1, !tbaa !51
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !40 ; 2 uses
  %i.ja = add i32 %i.iz, 1
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !40
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.iw
  store i32 %i.iz, ptr %i.jb, align 4, !tbaa !23
  %.not102 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not102, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %._crit_edge
  %i.jc = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jd = icmp ult ptr %1, %i.jc
  %i.je = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jf = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jg = add i32 %i.s, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph77, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i75 = phi i64 [ 0, %.lr.ph77 ], [ %i.kt, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i74 = phi i64 [ 3, %.lr.ph77 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i75
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !23 ; 2 uses
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.jj ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.0258.i74
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -3
  %.val4 = load i32, ptr %i.jm, align 1, !tbaa !23
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i74
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 -3
  %.val = load i32, ptr %i.jo, align 1, !tbaa !23
  %i.jp = icmp eq i32 %.val4, %.val
  br i1 %i.jp, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jd, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.jk, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i16 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i16, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jq = xor i64 %.val.i, %.val60.i
  %i.jr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jq, i1 true)
  %i.js = lshr i64 %i.jr, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.jk, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jt = icmp ult ptr %.049.i, %i.jc
  br i1 %i.jt, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.ju = xor i64 %.049.val.i, %.045.val.i
  %i.jv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ju, i1 true)
  %i.jw = lshr i64 %i.jv, 3
  %i.jx = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jw
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = sub i64 %i.jy, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jk, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.ka = icmp ult ptr %.251.i, %i.je
  br i1 %i.ka, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.kb = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.kb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kc = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.kd = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.kc, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.kd, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.ke = icmp ult ptr %.352.i, %i.jf
  br i1 %i.ke, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.kf = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.kf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kg = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.kh = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.kg, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.kh, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.ki = icmp ult ptr %.453.i, %2
  br i1 %i.ki, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kj = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.kk = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.kl = icmp eq i8 %i.kj, %i.kk
  %spec.select.idx.i = zext i1 %i.kl to i64
  %spec.select.i15 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i15, %bb.w ]
  %i.km = ptrtoint ptr %.5.i to i64
  %i.kn = sub i64 %i.km, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.js, %bb.o ], [ %i.jz, %.thread63.i ], [ %i.kn, %bb.x ] ; 4 uses
  %i.ko = icmp ugt i64 %.2243.i, %.0258.i74
  br i1 %i.ko, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kp = sub i32 %i.jg, %i.ji
  %i.kq = zext i32 %i.kp to i64
  store i64 %i.kq, ptr %3, align 8, !tbaa !44
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.ks = icmp eq ptr %i.kr, %2
  br i1 %i.ks, label %._crit_edge78, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i74, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i74, %bb.l ] ; 2 uses
  %i.kt = add nuw i64 %.0248.i75, 1               ; 2 uses
  %exitcond118.not = icmp eq i64 %i.kt, %.0249.i.lcssa
  br i1 %exitcond118.not, label %._crit_edge78, label %bb.l, !llvm.loop !10

._crit_edge78:                                    ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !36 ; 15 uses
  %i.kw = load ptr, ptr %i.ak, align 8, !tbaa !76 ; 3 uses
  %i.kx = load ptr, ptr %i.as, align 8, !tbaa !37
  %i.ky = getelementptr [4 x i8], ptr %i.kx, i64 %i.ar ; 5 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !23
  %i.la = zext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.la
  tail call void @llvm.prefetch.p0(ptr %i.lb, i32 0, i32 3, i32 1)
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !23
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.le
  tail call void @llvm.prefetch.p0(ptr %i.lf, i32 0, i32 3, i32 1)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !23
  %i.li = zext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.li
  tail call void @llvm.prefetch.p0(ptr %i.lj, i32 0, i32 3, i32 1)
  %i.lk = add nuw i32 %.0262.i.lcssa, %i.ay       ; 3 uses
  %i.ll = ptrtoint ptr %i.kw to i64
  %i.lm = ptrtoint ptr %i.kv to i64
  %.neg.i.i.neg = sub i64 %i.ll, %i.lm
  %.neg107.i.i.neg = trunc i64 %.neg.i.i.neg to i32
  %.neg = sub i32 %.neg107.i.i.neg, %i.m          ; 2 uses
  %i.ln = tail call i32 @llvm.umin.i32(i32 %i.lk, i32 3) ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !23 ; 3 uses
  %i.lq = lshr i32 %i.lp, 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !38 ; 3 uses
  %i.lt = zext nneg i32 %i.lq to i64              ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt
  tail call void @llvm.prefetch.p0(ptr %i.lu, i32 0, i32 3, i32 1)
end_hunk_22
begin_hunk_23_@_ZN11duckdb_zstdL45ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %.val11 = load i64, ptr %i.dy, align 1, !tbaa !44
  %i.dz = mul i64 %.val11, -3523014627193847808
  %i.ea = xor i64 %i.dz, %i.di
  %i.eb = lshr i64 %i.ea, %i.dk                   ; 2 uses
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = lshr i64 %i.eb, 3
  %i.ee = and i64 %i.ed, 536870880                ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ee ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ef, i32 0, i32 3, i32 1)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.eg, i32 0, i32 3, i32 1)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ee
  tail call void @llvm.prefetch.p0(ptr %i.eh, i32 0, i32 3, i32 1)
  %i.ei = and i64 %indvars.iv111, 7
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ei
  store i32 %i.ec, ptr %i.ej, align 4, !tbaa !23
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next112
  %.val11.1 = load i64, ptr %i.ek, align 1, !tbaa !44
  %i.el = mul i64 %.val11.1, -3523014627193847808
  %i.em = xor i64 %i.el, %i.di
  %i.en = lshr i64 %i.em, %i.dk                   ; 2 uses
  %i.eo = trunc i64 %i.en to i32
  %i.ep = lshr i64 %i.en, 3
  %i.eq = and i64 %i.ep, 536870880                ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.eq ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.er, i32 0, i32 3, i32 1)
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.es, i32 0, i32 3, i32 1)
  %i.et = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.eq
  tail call void @llvm.prefetch.p0(ptr %i.et, i32 0, i32 3, i32 1)
  %i.eu = and i64 %indvars.iv.next112, 7
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eu
  store i32 %i.eo, ptr %i.ev, align 4, !tbaa !23
  %indvars.iv.next112.1 = add nuw nsw i64 %indvars.iv111, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next112.1 to i32
  %exitcond114.not.1 = icmp eq i32 %i.dg, %lftr.wideiv.1
  br i1 %exitcond114.not.1, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph62.new, !llvm.loop !5

_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i: ; preds = %.prol.loopexit, %.lr.ph62.new, %bb.f, %bb.b
  %i.ew = phi i32 [ %i.h, %bb.b ], [ %i.cr, %bb.f ], [ %i.cr, %.lr.ph62.new ], [ %i.cr, %.prol.loopexit ]
  %i.ex = phi ptr [ %i.e, %bb.b ], [ %i.cs, %bb.f ], [ %i.cs, %.lr.ph62.new ], [ %i.cs, %.prol.loopexit ] ; 2 uses
  %i.ey = phi ptr [ %i.c, %bb.b ], [ %i.ct, %bb.f ], [ %i.ct, %.lr.ph62.new ], [ %i.ct, %.prol.loopexit ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.bc, %bb.b ], [ %i.cu, %bb.f ], [ %i.cu, %.lr.ph62.new ], [ %i.cu, %.prol.loopexit ] ; 2 uses
  %i.ez = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.fa = icmp ult i32 %.0.i284.i, %i.s
  br i1 %i.fa, label %.lr.ph64, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i

.lr.ph64:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  %i.fb = sub i32 56, %i.ew
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = zext i32 %.0.i284.i to i64
  %i.fe = and i64 %i.r, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph64, %bb.g
  %indvars.iv115 = phi i64 [ %i.fd, %.lr.ph64 ], [ %indvars.iv.next116, %bb.g ] ; 4 uses
  %i.ff = load i64, ptr %i.ag, align 8, !tbaa !50
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv115
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %.val12 = load i64, ptr %i.fh, align 1, !tbaa !44
  %i.fi = mul i64 %.val12, -3523014627193847808
  %i.fj = xor i64 %i.fi, %i.ff
  %i.fk = lshr i64 %i.fj, %i.fc                   ; 2 uses
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = lshr i64 %i.fk, 3
  %i.fn = and i64 %i.fm, 536870880                ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fn ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.fo, i32 0, i32 3, i32 1)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fp, i32 0, i32 3, i32 1)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fn
  tail call void @llvm.prefetch.p0(ptr %i.fq, i32 0, i32 3, i32 1)
  %i.fr = trunc nuw i64 %indvars.iv115 to i32
  %i.fs = and i64 %indvars.iv115, 7
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !23 ; 2 uses
  store i32 %i.fl, ptr %i.ft, align 4, !tbaa !23
  %i.fv = lshr i32 %i.fu, 3
  %i.fw = and i32 %i.fv, 536870880
  %i.fx = zext nneg i32 %i.fw to i64              ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fx ; 3 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !51
  %i.gb = add i8 %i.ga, 31
  %i.gc = and i8 %i.gb, 31                        ; 2 uses
  %i.gd = zext nneg i8 %i.gc to i32
  %i.ge = icmp eq i8 %i.gc, 0
  %i.gf = select i1 %i.ge, i32 31, i32 0
  %i.gg = add nuw nsw i32 %i.gf, %i.gd            ; 2 uses
  %i.gh = trunc nuw nsw i32 %i.gg to i8
  store i8 %i.gh, ptr %i.fz, align 1, !tbaa !51
  %i.gi = trunc i32 %i.fu to i8
  %i.gj = zext nneg i32 %i.gg to i64              ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gj
  store i8 %i.gi, ptr %i.gk, align 1, !tbaa !51
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.gj
  store i32 %i.fr, ptr %i.gl, align 4, !tbaa !23
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.gm = icmp samesign ult i64 %indvars.iv.next116, %i.fe
  br i1 %i.gm, label %bb.g, label %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i, !llvm.loop !0

_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i: ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i
  store i32 %i.s, ptr %i.bb, align 4, !tbaa !40
  %i.gn = and i64 %i.r, 4294967295
  %i.go = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.val13 = load i64, ptr %i.gp, align 1, !tbaa !44
  %i.gq = mul i64 %.val13, -3523014627193847808
  %i.gr = xor i64 %i.gq, %i.ah
  %i.gs = sub i32 56, %i.h
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = lshr i64 %i.gr, %i.gt                   ; 2 uses
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = lshr i64 %i.gu, 3
  %i.gx = and i64 %i.gw, 536870880                ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gx ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.gy, i32 0, i32 3, i32 1)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.gz, i32 0, i32 3, i32 1)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gx
  tail call void @llvm.prefetch.p0(ptr %i.ha, i32 0, i32 3, i32 1)
  %i.hb = and i64 %i.r, 7
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hb ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !23
  store i32 %i.gv, ptr %i.hc, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

bb.h:                                             ; preds = %bb.a
  %i.he = xor i64 %i.an, %i.ah
  %i.hf = sub i32 56, %i.h
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = lshr i64 %i.he, %i.hg
  %i.hi = trunc i64 %i.hh to i32
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.s, ptr %i.hj, align 4, !tbaa !40
  br label %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit

_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i
  %.0257.i = phi i32 [ %i.hi, %bb.h ], [ %i.hd, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit287.i ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !83
  %i.hm = add i32 %i.hl, %.0257.i
  store i32 %i.hm, ptr %i.hk, align 8, !tbaa !83
  %i.hn = lshr i32 %.0257.i, 3
  %i.ho = and i32 %i.hn, 536870880
  %i.hp = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hp ; 5 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hs = trunc i32 %.0257.i to i8                ; 2 uses
  %i.ht = insertelement <16 x i8> poison, i8 %i.hs, i64 0
  %i.hu = load <16 x i8>, ptr %i.hq, align 1, !tbaa !51
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hw = load <16 x i8>, ptr %i.hv, align 1, !tbaa !51
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hp ; 2 uses
  %i.hy = zext i8 %i.hr to i32                    ; 3 uses
  %i.hz = shufflevector <16 x i8> %i.hu, <16 x i8> %i.hw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ia = shufflevector <16 x i8> %i.ht, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.ib = icmp eq <32 x i8> %i.hz, %i.ia
  %i.ic = bitcast <32 x i1> %i.ib to i32          ; 3 uses
  %.not101 = icmp eq i32 %i.ic, 0
  br i1 %.not101, label %._crit_edge, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.id = tail call noundef i32 @llvm.fshr.i32(i32 %i.ic, i32 %i.ic, i32 range(i32 0, 64) %i.hy)
  %i.ie = zext i32 %i.id to i64
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %bb.k
  %.0247.i68 = phi i64 [ %i.iu, %bb.k ], [ %i.ie, %.lr.ph69.preheader ] ; 3 uses
  %.0249.i67 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph69.preheader ] ; 4 uses
  %.0262.i66 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ai, %.lr.ph69.preheader ] ; 3 uses
  %i.if = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i68, i1 true)
  %i.ig = trunc nuw nsw i64 %i.if to i32
  %i.ih = add nuw nsw i32 %i.ig, %i.hy
  %i.ii = and i32 %i.ih, 31                       ; 2 uses
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !23 ; 3 uses
  %i.im = icmp eq i32 %i.ii, 0
  br i1 %i.im, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph69
  %i.in = icmp ult i32 %i.il, %i.ad
  br i1 %i.in, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.io = zext i32 %i.il to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.io
  tail call void @llvm.prefetch.p0(ptr %i.ip, i32 0, i32 3, i32 1)
  %i.iq = add nuw nsw i64 %.0249.i67, 1
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i67
  store i32 %i.il, ptr %i.ir, align 4, !tbaa !23
  %i.is = add nsw i32 %.0262.i66, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph69
  %.1263.i.ph = phi i32 [ %.0262.i66, %.lr.ph69 ], [ %i.is, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i67, %.lr.ph69 ], [ %i.iq, %bb.j ] ; 2 uses
  %i.it = add nuw nsw i64 %.0247.i68, 4294967295
  %i.iu = and i64 %i.it, %.0247.i68               ; 2 uses
  %i.iv = icmp ne i64 %i.iu, 0
  %i.iw = icmp ne i32 %.1263.i.ph, 0
  %i.ix = select i1 %i.iv, i1 %i.iw, i1 false
  br i1 %i.ix, label %.lr.ph69, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.ai, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i66, %bb.i ], [ %.1263.i.ph, %bb.k ]
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i67, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.iy = add nuw nsw i32 %i.hy, 31
  %i.iz = and i32 %i.iy, 31                       ; 2 uses
  %i.ja = icmp eq i32 %i.iz, 0
  %i.jb = select i1 %i.ja, i32 31, i32 0
  %i.jc = add nuw nsw i32 %i.jb, %i.iz            ; 2 uses
  %i.jd = trunc nuw nsw i32 %i.jc to i8
  store i8 %i.jd, ptr %i.hq, align 1, !tbaa !51
  %i.je = zext nneg i32 %i.jc to i64              ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.je
  store i8 %i.hs, ptr %i.jf, align 1, !tbaa !51
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !40 ; 2 uses
  %i.ji = add i32 %i.jh, 1
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !40
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.je
  store i32 %i.jh, ptr %i.jj, align 4, !tbaa !23
  %.not102 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not102, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %._crit_edge
  %i.jk = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jl = icmp ult ptr %1, %i.jk
  %i.jm = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jn = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jo = add i32 %i.s, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph77, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i75 = phi i64 [ 0, %.lr.ph77 ], [ %i.lb, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i74 = phi i64 [ 3, %.lr.ph77 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i75
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !23 ; 2 uses
  %i.jr = zext i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.jr ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %.0258.i74
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 -3
  %.val4 = load i32, ptr %i.ju, align 1, !tbaa !23
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i74
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -3
  %.val = load i32, ptr %i.jw, align 1, !tbaa !23
  %i.jx = icmp eq i32 %.val4, %.val
  br i1 %i.jx, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jl, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.js, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i16 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i16, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jy = xor i64 %.val.i, %.val60.i
  %i.jz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jy, i1 true)
  %i.ka = lshr i64 %i.jz, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.js, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.kb = icmp ult ptr %.049.i, %i.jk
  br i1 %i.kb, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.kc = xor i64 %.049.val.i, %.045.val.i
  %i.kd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.kc, i1 true)
  %i.ke = lshr i64 %i.kd, 3
  %i.kf = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.ke
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = sub i64 %i.kg, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.js, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.ki = icmp ult ptr %.251.i, %i.jm
  br i1 %i.ki, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.kj = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.kj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kk = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.kl = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.kk, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.kl, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.km = icmp ult ptr %.352.i, %i.jn
  br i1 %i.km, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.kn = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.kn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ko = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.kp = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.ko, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.kp, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.kq = icmp ult ptr %.453.i, %2
  br i1 %i.kq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kr = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.ks = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.kt = icmp eq i8 %i.kr, %i.ks
  %spec.select.idx.i = zext i1 %i.kt to i64
  %spec.select.i15 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i15, %bb.w ]
  %i.ku = ptrtoint ptr %.5.i to i64
  %i.kv = sub i64 %i.ku, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.ka, %bb.o ], [ %i.kh, %.thread63.i ], [ %i.kv, %bb.x ] ; 4 uses
  %i.kw = icmp ugt i64 %.2243.i, %.0258.i74
  br i1 %i.kw, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kx = sub i32 %i.jo, %i.jq
  %i.ky = zext i32 %i.kx to i64
  store i64 %i.ky, ptr %3, align 8, !tbaa !44
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.la = icmp eq ptr %i.kz, %2
  br i1 %i.la, label %._crit_edge78, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i74, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i74, %bb.l ] ; 2 uses
  %i.lb = add nuw i64 %.0248.i75, 1               ; 2 uses
  %exitcond121.not = icmp eq i64 %i.lb, %.0249.i.lcssa
  br i1 %exitcond121.not, label %._crit_edge78, label %bb.l, !llvm.loop !10

._crit_edge78:                                    ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !36 ; 15 uses
  %i.le = load ptr, ptr %i.ak, align 8, !tbaa !76 ; 3 uses
  %i.lf = load ptr, ptr %i.as, align 8, !tbaa !37
  %i.lg = getelementptr [4 x i8], ptr %i.lf, i64 %i.ar ; 5 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !23
  %i.li = zext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.li
  tail call void @llvm.prefetch.p0(ptr %i.lj, i32 0, i32 3, i32 1)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !23
  %i.lm = zext i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lm
  tail call void @llvm.prefetch.p0(ptr %i.ln, i32 0, i32 3, i32 1)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !23
  %i.lq = zext i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lq
  tail call void @llvm.prefetch.p0(ptr %i.lr, i32 0, i32 3, i32 1)
  %i.ls = add nuw i32 %.0262.i.lcssa, %i.ay       ; 3 uses
  %i.lt = ptrtoint ptr %i.le to i64
  %i.lu = ptrtoint ptr %i.ld to i64
  %.neg.i.i.neg = sub i64 %i.lt, %i.lu
  %.neg107.i.i.neg = trunc i64 %.neg.i.i.neg to i32
  %.neg = sub i32 %.neg107.i.i.neg, %i.m          ; 2 uses
  %i.lv = tail call i32 @llvm.umin.i32(i32 %i.ls, i32 3) ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !23 ; 3 uses
  %i.ly = lshr i32 %i.lx, 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !38 ; 3 uses
  %i.mb = zext nneg i32 %i.ly to i64              ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.mb
  tail call void @llvm.prefetch.p0(ptr %i.mc, i32 0, i32 3, i32 1)
end_hunk_23
