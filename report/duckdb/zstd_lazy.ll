Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zstd_lazy?download=true
inline.NumInlined: 1254
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 169
begin_hunk_0_@_ZN11duckdb_zstdL32ZSTD_RowFindBestMatch_noDict_4_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
bb.e:                                             ; preds = %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = add i32 %i.ci, 1
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.cj, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.cl = phi i32 [ %i.ck, %bb.e ], [ 0, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i ] ; 3 uses
  %i.cm = add i32 %i.cl, %i.ca                    ; 2 uses
  %i.cn = icmp ult i32 %i.ca, %i.cm
  br i1 %i.cn, label %.lr.ph27, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i

.lr.ph27:                                         ; preds = %bb.f
  %i.co = load i64, ptr %i.ac, align 8, !tbaa !50
  %i.cp = trunc i64 %i.co to i32                  ; 3 uses
  %i.cq = sub i32 24, %i.bx                       ; 3 uses
  %xtraiter = and i32 %i.cl, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph27
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cc
  %.val6.prol = load i32, ptr %i.cr, align 1, !tbaa !23
  %i.cs = mul i32 %.val6.prol, -1640531535
  %i.ct = xor i32 %i.cs, %i.cp
  %i.cu = lshr i32 %i.ct, %i.cq                   ; 2 uses
  %i.cv = lshr i32 %i.cu, 3
  %i.cw = and i32 %i.cv, 536870880
  %i.cx = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cx ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.cy, i32 0, i32 3, i32 1)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cz, i32 0, i32 3, i32 1)
  %i.da = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cx
  tail call void @llvm.prefetch.p0(ptr %i.da, i32 0, i32 3, i32 1)
  %i.db = and i64 %i.cc, 7
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.db
  store i32 %i.cu, ptr %i.dc, align 4, !tbaa !23
  %indvars.iv.next49.prol = add nuw nsw i64 %i.cc, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph27
  %indvars.iv48.unr = phi i64 [ %i.cc, %.lr.ph27 ], [ %indvars.iv.next49.prol, %.prol.loopexit.unr-lcssa ]
  %i.dd = icmp eq i32 %i.cl, 1
  br i1 %i.dd, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph27.new

.lr.ph27.new:                                     ; preds = %.prol.loopexit, %.lr.ph27.new
  %indvars.iv48 = phi i64 [ %indvars.iv.next49.1, %.lr.ph27.new ], [ %indvars.iv48.unr, %.prol.loopexit ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv48
  %.val6 = load i32, ptr %i.de, align 1, !tbaa !23
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
  %4 = load <16 x i8>, ptr %i.gw, align 1, !tbaa !51
  %5 = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %6 = load <16 x i8>, ptr %5, align 1, !tbaa !51
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gv ; 2 uses
  %i.hb = zext i8 %i.gx to i32                    ; 3 uses
  %7 = shufflevector <16 x i8> %4, <16 x i8> %6, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hc = shufflevector <16 x i8> %i.gz, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.hd = icmp eq <32 x i8> %7, %i.hc
  %i.he = bitcast <32 x i1> %i.hd to i32          ; 3 uses
  %.not = icmp eq i32 %i.he, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hf = tail call noundef i32 @llvm.fshr.i32(i32 %i.he, i32 %i.he, i32 range(i32 0, 64) %i.hb)
  %i.hg = zext i32 %i.hf to i64
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %bb.k
  %.0247.i33 = phi i64 [ %i.hw, %bb.k ], [ %i.hg, %.lr.ph34.preheader ] ; 3 uses
  %.0249.i32 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph34.preheader ] ; 4 uses
  %.0262.i31 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ae, %.lr.ph34.preheader ] ; 2 uses
  %i.hh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i33, i1 true)
  %i.hi = trunc nuw nsw i64 %i.hh to i32
  %i.hj = add nuw nsw i32 %i.hi, %i.hb
  %i.hk = and i32 %i.hj, 31                       ; 2 uses
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !23 ; 3 uses
  %i.ho = icmp eq i32 %i.hk, 0
  br i1 %i.ho, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph34
  %i.hp = icmp ult i32 %i.hn, %i.z
  br i1 %i.hp, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hq = zext i32 %i.hn to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.hq
  tail call void @llvm.prefetch.p0(ptr %i.hr, i32 0, i32 3, i32 1)
  %i.hs = add nuw nsw i64 %.0249.i32, 1
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i32
  store i32 %i.hn, ptr %i.ht, align 4, !tbaa !23
  %i.hu = add nsw i32 %.0262.i31, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph34
  %.1263.i.ph = phi i32 [ %.0262.i31, %.lr.ph34 ], [ %i.hu, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i32, %.lr.ph34 ], [ %i.hs, %bb.j ] ; 2 uses
  %i.hv = add nuw nsw i64 %.0247.i33, 4294967295
  %i.hw = and i64 %i.hv, %.0247.i33               ; 2 uses
  %i.hx = icmp ne i64 %i.hw, 0
  %i.hy = icmp ne i32 %.1263.i.ph, 0
  %i.hz = select i1 %i.hx, i1 %i.hy, i1 false
  br i1 %i.hz, label %.lr.ph34, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i32, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.ia = add nuw nsw i32 %i.hb, 31
  %i.ib = and i32 %i.ia, 31                       ; 2 uses
  %i.ic = icmp eq i32 %i.ib, 0
  %i.id = select i1 %i.ic, i32 31, i32 0
  %i.ie = add nuw nsw i32 %i.id, %i.ib            ; 2 uses
  %i.if = trunc nuw nsw i32 %i.ie to i8
  store i8 %i.if, ptr %i.gw, align 1, !tbaa !51
  %i.ig = zext nneg i32 %i.ie to i64              ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ig
  store i8 %i.gy, ptr %i.ih, align 1, !tbaa !51
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !40 ; 2 uses
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !40
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.ig
  store i32 %i.ij, ptr %i.il, align 4, !tbaa !23
  %.not44 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not44, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph40

.lr.ph40:                                         ; preds = %._crit_edge
  %i.im = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.in = icmp ult ptr %1, %i.im
  %i.io = getelementptr inbounds i8, ptr %2, i64 -3
  %i.ip = getelementptr inbounds i8, ptr %2, i64 -1
  %i.iq = add i32 %i.o, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph40, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i38 = phi i64 [ 0, %.lr.ph40 ], [ %i.kd, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i37 = phi i64 [ 3, %.lr.ph40 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i38
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !23 ; 2 uses
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.it ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %.0258.i37
  %i.iw = getelementptr inbounds i8, ptr %i.iv, i64 -3
  %.val4 = load i32, ptr %i.iw, align 1, !tbaa !23
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i37
  %i.iy = getelementptr inbounds i8, ptr %i.ix, i64 -3
  %.val = load i32, ptr %i.iy, align 1, !tbaa !23
  %i.iz = icmp eq i32 %.val4, %.val
  br i1 %i.iz, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.in, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.iu, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i11 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i11, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ja = xor i64 %.val.i, %.val60.i
  %i.jb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ja, i1 true)
  %i.jc = lshr i64 %i.jb, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.iu, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jd = icmp ult ptr %.049.i, %i.im
  br i1 %i.jd, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.je = xor i64 %.049.val.i, %.045.val.i
  %i.jf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.je, i1 true)
  %i.jg = lshr i64 %i.jf, 3
  %i.jh = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jg
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = sub i64 %i.ji, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.iu, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jk = icmp ult ptr %.251.i, %i.io
  br i1 %i.jk, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.jl = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.jl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jm = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.jn = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.jm, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.jn, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.jo = icmp ult ptr %.352.i, %i.ip
  br i1 %i.jo, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.jp = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.jp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jq = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.jr = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.jq, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.jr, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.js = icmp ult ptr %.453.i, %2
  br i1 %i.js, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jt = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.ju = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.jv = icmp eq i8 %i.jt, %i.ju
  %spec.select.idx.i = zext i1 %i.jv to i64
  %spec.select.i10 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i10, %bb.w ]
  %i.jw = ptrtoint ptr %.5.i to i64
  %i.jx = sub i64 %i.jw, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.jc, %bb.o ], [ %i.jj, %.thread63.i ], [ %i.jx, %bb.x ] ; 4 uses
  %i.jy = icmp ugt i64 %.2243.i, %.0258.i37
  br i1 %i.jy, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.jz = sub i32 %i.iq, %i.is
  %i.ka = zext i32 %i.jz to i64
  store i64 %i.ka, ptr %3, align 8, !tbaa !44
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kc = icmp eq ptr %i.kb, %2
  br i1 %i.kc, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i37, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i37, %bb.l ] ; 2 uses
  %i.kd = add nuw i64 %.0248.i38, 1               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL32ZSTD_RowFindBestMatch_noDict_5_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = add i32 %i.ci, 1
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.cj, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.cl = phi i32 [ %i.ck, %bb.e ], [ 0, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i ] ; 3 uses
  %i.cm = add i32 %i.cl, %i.ca                    ; 2 uses
  %i.cn = icmp ult i32 %i.ca, %i.cm
  br i1 %i.cn, label %.lr.ph27, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i

.lr.ph27:                                         ; preds = %bb.f
  %i.co = load i64, ptr %i.ac, align 8, !tbaa !50 ; 3 uses
  %i.cp = sub i32 56, %i.bx
  %i.cq = zext nneg i32 %i.cp to i64              ; 3 uses
  %xtraiter = and i32 %i.cl, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph27
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cc
  %.val6.prol = load i64, ptr %i.cr, align 1, !tbaa !44
  %i.cs = mul i64 %.val6.prol, -3523014627271114752
  %i.ct = xor i64 %i.cs, %i.co
  %i.cu = lshr i64 %i.ct, %i.cq                   ; 2 uses
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = lshr i64 %i.cu, 3
  %i.cx = and i64 %i.cw, 536870880                ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cx ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.cy, i32 0, i32 3, i32 1)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cz, i32 0, i32 3, i32 1)
  %i.da = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cx
  tail call void @llvm.prefetch.p0(ptr %i.da, i32 0, i32 3, i32 1)
  %i.db = and i64 %i.cc, 7
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.db
  store i32 %i.cv, ptr %i.dc, align 4, !tbaa !23
  %indvars.iv.next49.prol = add nuw nsw i64 %i.cc, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph27
  %indvars.iv48.unr = phi i64 [ %i.cc, %.lr.ph27 ], [ %indvars.iv.next49.prol, %.prol.loopexit.unr-lcssa ]
  %i.dd = icmp eq i32 %i.cl, 1
  br i1 %i.dd, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph27.new

.lr.ph27.new:                                     ; preds = %.prol.loopexit, %.lr.ph27.new
  %indvars.iv48 = phi i64 [ %indvars.iv.next49.1, %.lr.ph27.new ], [ %indvars.iv48.unr, %.prol.loopexit ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv48
  %.val6 = load i64, ptr %i.de, align 1, !tbaa !44
  %i.df = mul i64 %.val6, -3523014627271114752
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
  %4 = load <16 x i8>, ptr %i.gx, align 1, !tbaa !51
  %5 = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %6 = load <16 x i8>, ptr %5, align 1, !tbaa !51
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gw ; 2 uses
  %i.hc = zext i8 %i.gy to i32                    ; 3 uses
  %7 = shufflevector <16 x i8> %4, <16 x i8> %6, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hd = shufflevector <16 x i8> %i.ha, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.he = icmp eq <32 x i8> %7, %i.hd
  %i.hf = bitcast <32 x i1> %i.he to i32          ; 3 uses
  %.not = icmp eq i32 %i.hf, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hg = tail call noundef i32 @llvm.fshr.i32(i32 %i.hf, i32 %i.hf, i32 range(i32 0, 64) %i.hc)
  %i.hh = zext i32 %i.hg to i64
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %bb.k
  %.0247.i33 = phi i64 [ %i.hx, %bb.k ], [ %i.hh, %.lr.ph34.preheader ] ; 3 uses
  %.0249.i32 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph34.preheader ] ; 4 uses
  %.0262.i31 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ae, %.lr.ph34.preheader ] ; 2 uses
  %i.hi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i33, i1 true)
  %i.hj = trunc nuw nsw i64 %i.hi to i32
  %i.hk = add nuw nsw i32 %i.hj, %i.hc
  %i.hl = and i32 %i.hk, 31                       ; 2 uses
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !23 ; 3 uses
  %i.hp = icmp eq i32 %i.hl, 0
  br i1 %i.hp, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph34
  %i.hq = icmp ult i32 %i.ho, %i.z
  br i1 %i.hq, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hr = zext i32 %i.ho to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.hr
  tail call void @llvm.prefetch.p0(ptr %i.hs, i32 0, i32 3, i32 1)
  %i.ht = add nuw nsw i64 %.0249.i32, 1
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i32
  store i32 %i.ho, ptr %i.hu, align 4, !tbaa !23
  %i.hv = add nsw i32 %.0262.i31, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph34
  %.1263.i.ph = phi i32 [ %.0262.i31, %.lr.ph34 ], [ %i.hv, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i32, %.lr.ph34 ], [ %i.ht, %bb.j ] ; 2 uses
  %i.hw = add nuw nsw i64 %.0247.i33, 4294967295
  %i.hx = and i64 %i.hw, %.0247.i33               ; 2 uses
  %i.hy = icmp ne i64 %i.hx, 0
  %i.hz = icmp ne i32 %.1263.i.ph, 0
  %i.ia = select i1 %i.hy, i1 %i.hz, i1 false
  br i1 %i.ia, label %.lr.ph34, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i32, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.ib = add nuw nsw i32 %i.hc, 31
  %i.ic = and i32 %i.ib, 31                       ; 2 uses
  %i.id = icmp eq i32 %i.ic, 0
  %i.ie = select i1 %i.id, i32 31, i32 0
  %i.if = add nuw nsw i32 %i.ie, %i.ic            ; 2 uses
  %i.ig = trunc nuw nsw i32 %i.if to i8
  store i8 %i.ig, ptr %i.gx, align 1, !tbaa !51
  %i.ih = zext nneg i32 %i.if to i64              ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.ih
  store i8 %i.gz, ptr %i.ii, align 1, !tbaa !51
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !40 ; 2 uses
  %i.il = add i32 %i.ik, 1
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !40
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.ih
  store i32 %i.ik, ptr %i.im, align 4, !tbaa !23
  %.not44 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not44, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph40

.lr.ph40:                                         ; preds = %._crit_edge
  %i.in = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.io = icmp ult ptr %1, %i.in
  %i.ip = getelementptr inbounds i8, ptr %2, i64 -3
  %i.iq = getelementptr inbounds i8, ptr %2, i64 -1
  %i.ir = add i32 %i.o, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph40, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i38 = phi i64 [ 0, %.lr.ph40 ], [ %i.ke, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i37 = phi i64 [ 3, %.lr.ph40 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i38
  %i.it = load i32, ptr %i.is, align 4, !tbaa !23 ; 2 uses
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.iu ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.0258.i37
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 -3
  %.val4 = load i32, ptr %i.ix, align 1, !tbaa !23
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i37
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 -3
  %.val = load i32, ptr %i.iz, align 1, !tbaa !23
  %i.ja = icmp eq i32 %.val4, %.val
  br i1 %i.ja, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.io, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.iv, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i11 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i11, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jb = xor i64 %.val.i, %.val60.i
  %i.jc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jb, i1 true)
  %i.jd = lshr i64 %i.jc, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.iv, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.je = icmp ult ptr %.049.i, %i.in
  br i1 %i.je, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.jf = xor i64 %.049.val.i, %.045.val.i
  %i.jg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jf, i1 true)
  %i.jh = lshr i64 %i.jg, 3
  %i.ji = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jh
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = sub i64 %i.jj, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.iv, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jl = icmp ult ptr %.251.i, %i.ip
  br i1 %i.jl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.jm = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.jm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jn = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.jo = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.jn, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.jo, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.jp = icmp ult ptr %.352.i, %i.iq
  br i1 %i.jp, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.jq = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.jq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jr = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.js = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.jr, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.js, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.jt = icmp ult ptr %.453.i, %2
  br i1 %i.jt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ju = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.jv = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.jw = icmp eq i8 %i.ju, %i.jv
  %spec.select.idx.i = zext i1 %i.jw to i64
  %spec.select.i10 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i10, %bb.w ]
  %i.jx = ptrtoint ptr %.5.i to i64
  %i.jy = sub i64 %i.jx, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.jd, %bb.o ], [ %i.jk, %.thread63.i ], [ %i.jy, %bb.x ] ; 4 uses
  %i.jz = icmp ugt i64 %.2243.i, %.0258.i37
  br i1 %i.jz, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.ka = sub i32 %i.ir, %i.it
  %i.kb = zext i32 %i.ka to i64
  store i64 %i.kb, ptr %3, align 8, !tbaa !44
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kd = icmp eq ptr %i.kc, %2
  br i1 %i.kd, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i37, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i37, %bb.l ] ; 2 uses
  %i.ke = add nuw i64 %.0248.i38, 1               ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL32ZSTD_RowFindBestMatch_noDict_6_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = add i32 %i.ci, 1
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.cj, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.cl = phi i32 [ %i.ck, %bb.e ], [ 0, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i ] ; 3 uses
  %i.cm = add i32 %i.cl, %i.ca                    ; 2 uses
  %i.cn = icmp ult i32 %i.ca, %i.cm
  br i1 %i.cn, label %.lr.ph27, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i

.lr.ph27:                                         ; preds = %bb.f
  %i.co = load i64, ptr %i.ac, align 8, !tbaa !50 ; 3 uses
  %i.cp = sub i32 56, %i.bx
  %i.cq = zext nneg i32 %i.cp to i64              ; 3 uses
  %xtraiter = and i32 %i.cl, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph27
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cc
  %.val6.prol = load i64, ptr %i.cr, align 1, !tbaa !44
  %i.cs = mul i64 %.val6.prol, -3523014627193847808
  %i.ct = xor i64 %i.cs, %i.co
  %i.cu = lshr i64 %i.ct, %i.cq                   ; 2 uses
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = lshr i64 %i.cu, 3
  %i.cx = and i64 %i.cw, 536870880                ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cx ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.cy, i32 0, i32 3, i32 1)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cz, i32 0, i32 3, i32 1)
  %i.da = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cx
  tail call void @llvm.prefetch.p0(ptr %i.da, i32 0, i32 3, i32 1)
  %i.db = and i64 %i.cc, 7
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.db
  store i32 %i.cv, ptr %i.dc, align 4, !tbaa !23
  %indvars.iv.next49.prol = add nuw nsw i64 %i.cc, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph27
  %indvars.iv48.unr = phi i64 [ %i.cc, %.lr.ph27 ], [ %indvars.iv.next49.prol, %.prol.loopexit.unr-lcssa ]
  %i.dd = icmp eq i32 %i.cl, 1
  br i1 %i.dd, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph27.new

.lr.ph27.new:                                     ; preds = %.prol.loopexit, %.lr.ph27.new
  %indvars.iv48 = phi i64 [ %indvars.iv.next49.1, %.lr.ph27.new ], [ %indvars.iv48.unr, %.prol.loopexit ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv48
  %.val6 = load i64, ptr %i.de, align 1, !tbaa !44
  %i.df = mul i64 %.val6, -3523014627193847808
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
  %4 = load <16 x i8>, ptr %i.gx, align 1, !tbaa !51
  %5 = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %6 = load <16 x i8>, ptr %5, align 1, !tbaa !51
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gw ; 2 uses
  %i.hc = zext i8 %i.gy to i32                    ; 3 uses
  %7 = shufflevector <16 x i8> %4, <16 x i8> %6, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hd = shufflevector <16 x i8> %i.ha, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.he = icmp eq <32 x i8> %7, %i.hd
  %i.hf = bitcast <32 x i1> %i.he to i32          ; 3 uses
  %.not = icmp eq i32 %i.hf, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hg = tail call noundef i32 @llvm.fshr.i32(i32 %i.hf, i32 %i.hf, i32 range(i32 0, 64) %i.hc)
  %i.hh = zext i32 %i.hg to i64
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %bb.k
  %.0247.i33 = phi i64 [ %i.hx, %bb.k ], [ %i.hh, %.lr.ph34.preheader ] ; 3 uses
  %.0249.i32 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph34.preheader ] ; 4 uses
  %.0262.i31 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ae, %.lr.ph34.preheader ] ; 2 uses
  %i.hi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i33, i1 true)
  %i.hj = trunc nuw nsw i64 %i.hi to i32
  %i.hk = add nuw nsw i32 %i.hj, %i.hc
  %i.hl = and i32 %i.hk, 31                       ; 2 uses
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !23 ; 3 uses
  %i.hp = icmp eq i32 %i.hl, 0
  br i1 %i.hp, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph34
  %i.hq = icmp ult i32 %i.ho, %i.z
  br i1 %i.hq, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hr = zext i32 %i.ho to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.hr
  tail call void @llvm.prefetch.p0(ptr %i.hs, i32 0, i32 3, i32 1)
  %i.ht = add nuw nsw i64 %.0249.i32, 1
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i32
  store i32 %i.ho, ptr %i.hu, align 4, !tbaa !23
  %i.hv = add nsw i32 %.0262.i31, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph34
  %.1263.i.ph = phi i32 [ %.0262.i31, %.lr.ph34 ], [ %i.hv, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i32, %.lr.ph34 ], [ %i.ht, %bb.j ] ; 2 uses
  %i.hw = add nuw nsw i64 %.0247.i33, 4294967295
  %i.hx = and i64 %i.hw, %.0247.i33               ; 2 uses
  %i.hy = icmp ne i64 %i.hx, 0
  %i.hz = icmp ne i32 %.1263.i.ph, 0
  %i.ia = select i1 %i.hy, i1 %i.hz, i1 false
  br i1 %i.ia, label %.lr.ph34, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i32, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.ib = add nuw nsw i32 %i.hc, 31
  %i.ic = and i32 %i.ib, 31                       ; 2 uses
  %i.id = icmp eq i32 %i.ic, 0
  %i.ie = select i1 %i.id, i32 31, i32 0
  %i.if = add nuw nsw i32 %i.ie, %i.ic            ; 2 uses
  %i.ig = trunc nuw nsw i32 %i.if to i8
  store i8 %i.ig, ptr %i.gx, align 1, !tbaa !51
  %i.ih = zext nneg i32 %i.if to i64              ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.ih
  store i8 %i.gz, ptr %i.ii, align 1, !tbaa !51
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !40 ; 2 uses
  %i.il = add i32 %i.ik, 1
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !40
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.ih
  store i32 %i.ik, ptr %i.im, align 4, !tbaa !23
  %.not44 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not44, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph40

.lr.ph40:                                         ; preds = %._crit_edge
  %i.in = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.io = icmp ult ptr %1, %i.in
  %i.ip = getelementptr inbounds i8, ptr %2, i64 -3
  %i.iq = getelementptr inbounds i8, ptr %2, i64 -1
  %i.ir = add i32 %i.o, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph40, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i38 = phi i64 [ 0, %.lr.ph40 ], [ %i.ke, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i37 = phi i64 [ 3, %.lr.ph40 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i38
  %i.it = load i32, ptr %i.is, align 4, !tbaa !23 ; 2 uses
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.iu ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.0258.i37
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 -3
  %.val4 = load i32, ptr %i.ix, align 1, !tbaa !23
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i37
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 -3
  %.val = load i32, ptr %i.iz, align 1, !tbaa !23
  %i.ja = icmp eq i32 %.val4, %.val
  br i1 %i.ja, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.io, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.iv, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i11 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i11, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jb = xor i64 %.val.i, %.val60.i
  %i.jc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jb, i1 true)
  %i.jd = lshr i64 %i.jc, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.iv, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.je = icmp ult ptr %.049.i, %i.in
  br i1 %i.je, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.jf = xor i64 %.049.val.i, %.045.val.i
  %i.jg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jf, i1 true)
  %i.jh = lshr i64 %i.jg, 3
  %i.ji = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jh
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = sub i64 %i.jj, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.iv, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jl = icmp ult ptr %.251.i, %i.ip
  br i1 %i.jl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.jm = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.jm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jn = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.jo = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.jn, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.jo, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.jp = icmp ult ptr %.352.i, %i.iq
  br i1 %i.jp, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.jq = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.jq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jr = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.js = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.jr, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.js, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.jt = icmp ult ptr %.453.i, %2
  br i1 %i.jt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ju = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.jv = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.jw = icmp eq i8 %i.ju, %i.jv
  %spec.select.idx.i = zext i1 %i.jw to i64
  %spec.select.i10 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i10, %bb.w ]
  %i.jx = ptrtoint ptr %.5.i to i64
  %i.jy = sub i64 %i.jx, %i.l
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.jd, %bb.o ], [ %i.jk, %.thread63.i ], [ %i.jy, %bb.x ] ; 4 uses
  %i.jz = icmp ugt i64 %.2243.i, %.0258.i37
  br i1 %i.jz, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.ka = sub i32 %i.ir, %i.it
  %i.kb = zext i32 %i.ka to i64
  store i64 %i.kb, ptr %3, align 8, !tbaa !44
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kd = icmp eq ptr %i.kc, %2
  br i1 %i.kd, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i37, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i37, %bb.l ] ; 2 uses
  %i.ke = add nuw i64 %.0248.i38, 1               ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL33ZSTD_RowFindBestMatch_extDict_4_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
bb.e:                                             ; preds = %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = trunc i64 %i.co to i32
  %i.cq = add i32 %i.cp, 1
  %i.cr = tail call i32 @llvm.umin.i32(i32 %i.cq, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.cs = phi i32 [ %i.cr, %bb.e ], [ 0, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i ] ; 3 uses
  %i.ct = add i32 %i.cs, %i.ch                    ; 2 uses
  %i.cu = icmp ult i32 %i.ch, %i.ct
  br i1 %i.cu, label %.lr.ph29, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i

.lr.ph29:                                         ; preds = %bb.f
  %i.cv = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.cw = trunc i64 %i.cv to i32                  ; 3 uses
  %i.cx = sub i32 24, %i.ce                       ; 3 uses
  %xtraiter = and i32 %i.cs, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cj
  %.val8.prol = load i32, ptr %i.cy, align 1, !tbaa !23
  %i.cz = mul i32 %.val8.prol, -1640531535
  %i.da = xor i32 %i.cz, %i.cw
  %i.db = lshr i32 %i.da, %i.cx                   ; 2 uses
  %i.dc = lshr i32 %i.db, 3
  %i.dd = and i32 %i.dc, 536870880
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.de ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.df, i32 0, i32 3, i32 1)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dg, i32 0, i32 3, i32 1)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.de
  tail call void @llvm.prefetch.p0(ptr %i.dh, i32 0, i32 3, i32 1)
  %i.di = and i64 %i.cj, 7
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.di
  store i32 %i.db, ptr %i.dj, align 4, !tbaa !23
  %indvars.iv.next51.prol = add nuw nsw i64 %i.cj, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph29
  %indvars.iv50.unr = phi i64 [ %i.cj, %.lr.ph29 ], [ %indvars.iv.next51.prol, %.prol.loopexit.unr-lcssa ]
  %i.dk = icmp eq i32 %i.cs, 1
  br i1 %i.dk, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph29.new

.lr.ph29.new:                                     ; preds = %.prol.loopexit, %.lr.ph29.new
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.lr.ph29.new ], [ %indvars.iv50.unr, %.prol.loopexit ] ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv50
  %.val8 = load i32, ptr %i.dl, align 1, !tbaa !23
  %i.dm = mul i32 %.val8, -1640531535
  %i.dn = xor i32 %i.dm, %i.cw
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
  %4 = load <16 x i8>, ptr %i.hd, align 1, !tbaa !51
  %5 = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %6 = load <16 x i8>, ptr %5, align 1, !tbaa !51
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hc ; 2 uses
  %i.hi = zext i8 %i.he to i32                    ; 3 uses
  %7 = shufflevector <16 x i8> %4, <16 x i8> %6, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hj = shufflevector <16 x i8> %i.hg, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.hk = icmp eq <32 x i8> %7, %i.hj
  %i.hl = bitcast <32 x i1> %i.hk to i32          ; 3 uses
  %.not = icmp eq i32 %i.hl, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hm = tail call noundef i32 @llvm.fshr.i32(i32 %i.hl, i32 %i.hl, i32 range(i32 0, 64) %i.hi)
  %i.hn = zext i32 %i.hm to i64
  br label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %bb.k
  %.0247.i35 = phi i64 [ %i.id, %bb.k ], [ %i.hn, %.lr.ph36.preheader ] ; 3 uses
  %.0249.i34 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph36.preheader ] ; 4 uses
  %.0262.i33 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.al, %.lr.ph36.preheader ] ; 2 uses
  %i.ho = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i35, i1 true)
  %i.hp = trunc nuw nsw i64 %i.ho to i32
  %i.hq = add nuw nsw i32 %i.hp, %i.hi
  %i.hr = and i32 %i.hq, 31                       ; 2 uses
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !23 ; 4 uses
  %i.hv = icmp eq i32 %i.hr, 0
  br i1 %i.hv, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph36
  %i.hw = icmp ult i32 %i.hu, %i.ag
  br i1 %i.hw, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not276.i = icmp ult i32 %i.hu, %i.o
  %i.hx = zext i32 %i.hu to i64
  %. = select i1 %.not276.i, ptr %i.m, ptr %i.k
  %i.hy = getelementptr inbounds nuw i8, ptr %., i64 %i.hx
  tail call void @llvm.prefetch.p0(ptr %i.hy, i32 0, i32 3, i32 1)
  %i.hz = add nuw nsw i64 %.0249.i34, 1
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i34
  store i32 %i.hu, ptr %i.ia, align 4, !tbaa !23
  %i.ib = add nsw i32 %.0262.i33, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph36
  %.1263.i.ph = phi i32 [ %.0262.i33, %.lr.ph36 ], [ %i.ib, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i34, %.lr.ph36 ], [ %i.hz, %bb.j ] ; 2 uses
  %i.ic = add nuw nsw i64 %.0247.i35, 4294967295
  %i.id = and i64 %i.ic, %.0247.i35               ; 2 uses
  %i.ie = icmp ne i64 %i.id, 0
  %i.if = icmp ne i32 %.1263.i.ph, 0
  %i.ig = select i1 %i.ie, i1 %i.if, i1 false
  br i1 %i.ig, label %.lr.ph36, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i34, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.ih = add nuw nsw i32 %i.hi, 31
  %i.ii = and i32 %i.ih, 31                       ; 2 uses
  %i.ij = icmp eq i32 %i.ii, 0
  %i.ik = select i1 %i.ij, i32 31, i32 0
  %i.il = add nuw nsw i32 %i.ik, %i.ii            ; 2 uses
  %i.im = trunc nuw nsw i32 %i.il to i8
  store i8 %i.im, ptr %i.hd, align 1, !tbaa !51
  %i.in = zext nneg i32 %i.il to i64              ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.in
  store i8 %i.hf, ptr %i.io, align 1, !tbaa !51
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !40 ; 2 uses
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !40
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.in
  store i32 %i.iq, ptr %i.is, align 4, !tbaa !23
  %.not46 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not46, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge
  %i.it = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.iu = icmp ult ptr %1, %i.it
  %i.iv = getelementptr inbounds i8, ptr %2, i64 -3
  %i.iw = getelementptr inbounds i8, ptr %2, i64 -1
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.iy = add i32 %i.v, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph42, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i40 = phi i64 [ 0, %.lr.ph42 ], [ %i.kq, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i39 = phi i64 [ 3, %.lr.ph42 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 6 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i40
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !23 ; 3 uses
  %.not278.i = icmp ult i32 %i.ja, %i.o
  %i.jb = zext i32 %i.ja to i64                   ; 2 uses
  br i1 %.not278.i, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jc = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.jb ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.0258.i39
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -3
  %.val6 = load i32, ptr %i.je, align 1, !tbaa !23
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i39
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -3
  %.val5 = load i32, ptr %i.jg, align 1, !tbaa !23
  %i.jh = icmp eq i32 %.val6, %.val5
  br i1 %i.jh, label %bb.n, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %i.iu, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %.val60.i = load i64, ptr %i.jc, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i13 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i13, label %.preheader.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ji = xor i64 %.val.i, %.val60.i
  %i.jj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ji, i1 true)
  %i.jk = lshr i64 %i.jj, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.o, %bb.q
  %.pn.i = phi ptr [ %.049.i, %bb.q ], [ %1, %bb.o ]
  %.pn67.i = phi ptr [ %.045.i, %bb.q ], [ %i.jc, %bb.o ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jl = icmp ult ptr %.049.i, %i.it
  br i1 %i.jl, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.q
  %i.jm = xor i64 %.049.val.i, %.045.val.i
  %i.jn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jm, i1 true)
  %i.jo = lshr i64 %i.jn, 3
  %i.jp = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jo
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = sub i64 %i.jq, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.n
  %.251.i = phi ptr [ %1, %bb.n ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jc, %bb.n ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.js = icmp ult ptr %.251.i, %i.iv
  br i1 %i.js, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.jt = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.jt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ju = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.loopexit.i
  %.352.i = phi ptr [ %i.ju, %bb.s ], [ %.251.i, %bb.r ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.jv, %bb.s ], [ %.247.i, %bb.r ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.jw = icmp ult ptr %.352.i, %i.iw
  br i1 %i.jw, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.jx = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.jx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.jy = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.jz = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.453.i = phi ptr [ %i.jy, %bb.v ], [ %.352.i, %bb.u ], [ %.352.i, %bb.t ] ; 4 uses
  %.4.i = phi ptr [ %i.jz, %bb.v ], [ %.348.i, %bb.u ], [ %.348.i, %bb.t ]
  %i.ka = icmp ult ptr %.453.i, %2
  br i1 %i.ka, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.kb = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.kc = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.kd = icmp eq i8 %i.kb, %i.kc
  %spec.select.idx.i = zext i1 %i.kd to i64
  %spec.select.i12 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.5.i = phi ptr [ %.453.i, %bb.w ], [ %spec.select.i12, %bb.x ]
  %i.ke = ptrtoint ptr %.5.i to i64
  %i.kf = sub i64 %i.ke, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

bb.z:                                             ; preds = %bb.l
  %i.kg = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.jb ; 2 uses
  %.val4 = load i32, ptr %i.kg, align 1, !tbaa !23
  %.val = load i32, ptr %1, align 1, !tbaa !23
  %i.kh = icmp eq i32 %.val4, %.val
  br i1 %i.kh, label %bb.aa, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL33ZSTD_RowFindBestMatch_extDict_5_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = trunc i64 %i.co to i32
  %i.cq = add i32 %i.cp, 1
  %i.cr = tail call i32 @llvm.umin.i32(i32 %i.cq, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.cs = phi i32 [ %i.cr, %bb.e ], [ 0, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i ] ; 3 uses
  %i.ct = add i32 %i.cs, %i.ch                    ; 2 uses
  %i.cu = icmp ult i32 %i.ch, %i.ct
  br i1 %i.cu, label %.lr.ph29, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i

.lr.ph29:                                         ; preds = %bb.f
  %i.cv = load i64, ptr %i.aj, align 8, !tbaa !50 ; 3 uses
  %i.cw = sub i32 56, %i.ce
  %i.cx = zext nneg i32 %i.cw to i64              ; 3 uses
  %xtraiter = and i32 %i.cs, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cj
  %.val8.prol = load i64, ptr %i.cy, align 1, !tbaa !44
  %i.cz = mul i64 %.val8.prol, -3523014627271114752
  %i.da = xor i64 %i.cz, %i.cv
  %i.db = lshr i64 %i.da, %i.cx                   ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  %i.dd = lshr i64 %i.db, 3
  %i.de = and i64 %i.dd, 536870880                ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.de ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.df, i32 0, i32 3, i32 1)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dg, i32 0, i32 3, i32 1)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.de
  tail call void @llvm.prefetch.p0(ptr %i.dh, i32 0, i32 3, i32 1)
  %i.di = and i64 %i.cj, 7
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.di
  store i32 %i.dc, ptr %i.dj, align 4, !tbaa !23
  %indvars.iv.next51.prol = add nuw nsw i64 %i.cj, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph29
  %indvars.iv50.unr = phi i64 [ %i.cj, %.lr.ph29 ], [ %indvars.iv.next51.prol, %.prol.loopexit.unr-lcssa ]
  %i.dk = icmp eq i32 %i.cs, 1
  br i1 %i.dk, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph29.new

.lr.ph29.new:                                     ; preds = %.prol.loopexit, %.lr.ph29.new
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.lr.ph29.new ], [ %indvars.iv50.unr, %.prol.loopexit ] ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv50
  %.val8 = load i64, ptr %i.dl, align 1, !tbaa !44
  %i.dm = mul i64 %.val8, -3523014627271114752
  %i.dn = xor i64 %i.dm, %i.cv
  %i.do = lshr i64 %i.dn, %i.cx                   ; 2 uses
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
  %4 = load <16 x i8>, ptr %i.he, align 1, !tbaa !51
  %5 = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %6 = load <16 x i8>, ptr %5, align 1, !tbaa !51
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hd ; 2 uses
  %i.hj = zext i8 %i.hf to i32                    ; 3 uses
  %7 = shufflevector <16 x i8> %4, <16 x i8> %6, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hk = shufflevector <16 x i8> %i.hh, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.hl = icmp eq <32 x i8> %7, %i.hk
  %i.hm = bitcast <32 x i1> %i.hl to i32          ; 3 uses
  %.not = icmp eq i32 %i.hm, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hn = tail call noundef i32 @llvm.fshr.i32(i32 %i.hm, i32 %i.hm, i32 range(i32 0, 64) %i.hj)
  %i.ho = zext i32 %i.hn to i64
  br label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %bb.k
  %.0247.i35 = phi i64 [ %i.ie, %bb.k ], [ %i.ho, %.lr.ph36.preheader ] ; 3 uses
  %.0249.i34 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph36.preheader ] ; 4 uses
  %.0262.i33 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.al, %.lr.ph36.preheader ] ; 2 uses
  %i.hp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i35, i1 true)
  %i.hq = trunc nuw nsw i64 %i.hp to i32
  %i.hr = add nuw nsw i32 %i.hq, %i.hj
  %i.hs = and i32 %i.hr, 31                       ; 2 uses
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !23 ; 4 uses
  %i.hw = icmp eq i32 %i.hs, 0
  br i1 %i.hw, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph36
  %i.hx = icmp ult i32 %i.hv, %i.ag
  br i1 %i.hx, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not276.i = icmp ult i32 %i.hv, %i.o
  %i.hy = zext i32 %i.hv to i64
  %. = select i1 %.not276.i, ptr %i.m, ptr %i.k
  %i.hz = getelementptr inbounds nuw i8, ptr %., i64 %i.hy
  tail call void @llvm.prefetch.p0(ptr %i.hz, i32 0, i32 3, i32 1)
  %i.ia = add nuw nsw i64 %.0249.i34, 1
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i34
  store i32 %i.hv, ptr %i.ib, align 4, !tbaa !23
  %i.ic = add nsw i32 %.0262.i33, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph36
  %.1263.i.ph = phi i32 [ %.0262.i33, %.lr.ph36 ], [ %i.ic, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i34, %.lr.ph36 ], [ %i.ia, %bb.j ] ; 2 uses
  %i.id = add nuw nsw i64 %.0247.i35, 4294967295
  %i.ie = and i64 %i.id, %.0247.i35               ; 2 uses
  %i.if = icmp ne i64 %i.ie, 0
  %i.ig = icmp ne i32 %.1263.i.ph, 0
  %i.ih = select i1 %i.if, i1 %i.ig, i1 false
  br i1 %i.ih, label %.lr.ph36, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i34, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.ii = add nuw nsw i32 %i.hj, 31
  %i.ij = and i32 %i.ii, 31                       ; 2 uses
  %i.ik = icmp eq i32 %i.ij, 0
  %i.il = select i1 %i.ik, i32 31, i32 0
  %i.im = add nuw nsw i32 %i.il, %i.ij            ; 2 uses
  %i.in = trunc nuw nsw i32 %i.im to i8
  store i8 %i.in, ptr %i.he, align 1, !tbaa !51
  %i.io = zext nneg i32 %i.im to i64              ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.io
  store i8 %i.hg, ptr %i.ip, align 1, !tbaa !51
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !40 ; 2 uses
  %i.is = add i32 %i.ir, 1
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !40
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.io
  store i32 %i.ir, ptr %i.it, align 4, !tbaa !23
  %.not46 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not46, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge
  %i.iu = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.iv = icmp ult ptr %1, %i.iu
  %i.iw = getelementptr inbounds i8, ptr %2, i64 -3
  %i.ix = getelementptr inbounds i8, ptr %2, i64 -1
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.iz = add i32 %i.v, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph42, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i40 = phi i64 [ 0, %.lr.ph42 ], [ %i.kr, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i39 = phi i64 [ 3, %.lr.ph42 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 6 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i40
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !23 ; 3 uses
  %.not278.i = icmp ult i32 %i.jb, %i.o
  %i.jc = zext i32 %i.jb to i64                   ; 2 uses
  br i1 %.not278.i, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jd = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.jc ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.0258.i39
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 -3
  %.val6 = load i32, ptr %i.jf, align 1, !tbaa !23
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i39
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 -3
  %.val5 = load i32, ptr %i.jh, align 1, !tbaa !23
  %i.ji = icmp eq i32 %.val6, %.val5
  br i1 %i.ji, label %bb.n, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %i.iv, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %.val60.i = load i64, ptr %i.jd, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i13 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i13, label %.preheader.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jj = xor i64 %.val.i, %.val60.i
  %i.jk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jj, i1 true)
  %i.jl = lshr i64 %i.jk, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.o, %bb.q
  %.pn.i = phi ptr [ %.049.i, %bb.q ], [ %1, %bb.o ]
  %.pn67.i = phi ptr [ %.045.i, %bb.q ], [ %i.jd, %bb.o ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jm = icmp ult ptr %.049.i, %i.iu
  br i1 %i.jm, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.q
  %i.jn = xor i64 %.049.val.i, %.045.val.i
  %i.jo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jn, i1 true)
  %i.jp = lshr i64 %i.jo, 3
  %i.jq = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jp
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = sub i64 %i.jr, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.n
  %.251.i = phi ptr [ %1, %bb.n ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jd, %bb.n ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jt = icmp ult ptr %.251.i, %i.iw
  br i1 %i.jt, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.ju = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.ju, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jv = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.jw = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.loopexit.i
  %.352.i = phi ptr [ %i.jv, %bb.s ], [ %.251.i, %bb.r ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.jw, %bb.s ], [ %.247.i, %bb.r ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.jx = icmp ult ptr %.352.i, %i.ix
  br i1 %i.jx, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.jy = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.jy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.jz = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.ka = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.453.i = phi ptr [ %i.jz, %bb.v ], [ %.352.i, %bb.u ], [ %.352.i, %bb.t ] ; 4 uses
  %.4.i = phi ptr [ %i.ka, %bb.v ], [ %.348.i, %bb.u ], [ %.348.i, %bb.t ]
  %i.kb = icmp ult ptr %.453.i, %2
  br i1 %i.kb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.kc = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.kd = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.ke = icmp eq i8 %i.kc, %i.kd
  %spec.select.idx.i = zext i1 %i.ke to i64
  %spec.select.i12 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.5.i = phi ptr [ %.453.i, %bb.w ], [ %spec.select.i12, %bb.x ]
  %i.kf = ptrtoint ptr %.5.i to i64
  %i.kg = sub i64 %i.kf, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

bb.z:                                             ; preds = %bb.l
  %i.kh = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.jc ; 2 uses
  %.val4 = load i32, ptr %i.kh, align 1, !tbaa !23
  %.val = load i32, ptr %1, align 1, !tbaa !23
  %i.ki = icmp eq i32 %.val4, %.val
  br i1 %i.ki, label %bb.aa, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstdL33ZSTD_RowFindBestMatch_extDict_6_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = trunc i64 %i.co to i32
  %i.cq = add i32 %i.cp, 1
  %i.cr = tail call i32 @llvm.umin.i32(i32 %i.cq, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.cs = phi i32 [ %i.cr, %bb.e ], [ 0, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i ] ; 3 uses
  %i.ct = add i32 %i.cs, %i.ch                    ; 2 uses
  %i.cu = icmp ult i32 %i.ch, %i.ct
  br i1 %i.cu, label %.lr.ph29, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i

.lr.ph29:                                         ; preds = %bb.f
  %i.cv = load i64, ptr %i.aj, align 8, !tbaa !50 ; 3 uses
  %i.cw = sub i32 56, %i.ce
  %i.cx = zext nneg i32 %i.cw to i64              ; 3 uses
  %xtraiter = and i32 %i.cs, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cj
  %.val8.prol = load i64, ptr %i.cy, align 1, !tbaa !44
  %i.cz = mul i64 %.val8.prol, -3523014627193847808
  %i.da = xor i64 %i.cz, %i.cv
  %i.db = lshr i64 %i.da, %i.cx                   ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  %i.dd = lshr i64 %i.db, 3
  %i.de = and i64 %i.dd, 536870880                ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.de ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.df, i32 0, i32 3, i32 1)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dg, i32 0, i32 3, i32 1)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.de
  tail call void @llvm.prefetch.p0(ptr %i.dh, i32 0, i32 3, i32 1)
  %i.di = and i64 %i.cj, 7
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.di
  store i32 %i.dc, ptr %i.dj, align 4, !tbaa !23
  %indvars.iv.next51.prol = add nuw nsw i64 %i.cj, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph29
  %indvars.iv50.unr = phi i64 [ %i.cj, %.lr.ph29 ], [ %indvars.iv.next51.prol, %.prol.loopexit.unr-lcssa ]
  %i.dk = icmp eq i32 %i.cs, 1
  br i1 %i.dk, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph29.new

.lr.ph29.new:                                     ; preds = %.prol.loopexit, %.lr.ph29.new
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.lr.ph29.new ], [ %indvars.iv50.unr, %.prol.loopexit ] ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv50
  %.val8 = load i64, ptr %i.dl, align 1, !tbaa !44
  %i.dm = mul i64 %.val8, -3523014627193847808
  %i.dn = xor i64 %i.dm, %i.cv
  %i.do = lshr i64 %i.dn, %i.cx                   ; 2 uses
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
  %4 = load <16 x i8>, ptr %i.he, align 1, !tbaa !51
  %5 = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %6 = load <16 x i8>, ptr %5, align 1, !tbaa !51
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hd ; 2 uses
  %i.hj = zext i8 %i.hf to i32                    ; 3 uses
  %7 = shufflevector <16 x i8> %4, <16 x i8> %6, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hk = shufflevector <16 x i8> %i.hh, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.hl = icmp eq <32 x i8> %7, %i.hk
  %i.hm = bitcast <32 x i1> %i.hl to i32          ; 3 uses
  %.not = icmp eq i32 %i.hm, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hn = tail call noundef i32 @llvm.fshr.i32(i32 %i.hm, i32 %i.hm, i32 range(i32 0, 64) %i.hj)
  %i.ho = zext i32 %i.hn to i64
  br label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %bb.k
  %.0247.i35 = phi i64 [ %i.ie, %bb.k ], [ %i.ho, %.lr.ph36.preheader ] ; 3 uses
  %.0249.i34 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph36.preheader ] ; 4 uses
  %.0262.i33 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.al, %.lr.ph36.preheader ] ; 2 uses
  %i.hp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i35, i1 true)
  %i.hq = trunc nuw nsw i64 %i.hp to i32
  %i.hr = add nuw nsw i32 %i.hq, %i.hj
  %i.hs = and i32 %i.hr, 31                       ; 2 uses
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !23 ; 4 uses
  %i.hw = icmp eq i32 %i.hs, 0
  br i1 %i.hw, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph36
  %i.hx = icmp ult i32 %i.hv, %i.ag
  br i1 %i.hx, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not276.i = icmp ult i32 %i.hv, %i.o
  %i.hy = zext i32 %i.hv to i64
  %. = select i1 %.not276.i, ptr %i.m, ptr %i.k
  %i.hz = getelementptr inbounds nuw i8, ptr %., i64 %i.hy
  tail call void @llvm.prefetch.p0(ptr %i.hz, i32 0, i32 3, i32 1)
  %i.ia = add nuw nsw i64 %.0249.i34, 1
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i34
  store i32 %i.hv, ptr %i.ib, align 4, !tbaa !23
  %i.ic = add nsw i32 %.0262.i33, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph36
  %.1263.i.ph = phi i32 [ %.0262.i33, %.lr.ph36 ], [ %i.ic, %bb.j ] ; 2 uses
  %.1250.i.ph = phi i64 [ %.0249.i34, %.lr.ph36 ], [ %i.ia, %bb.j ] ; 2 uses
  %i.id = add nuw nsw i64 %.0247.i35, 4294967295
  %i.ie = and i64 %i.id, %.0247.i35               ; 2 uses
  %i.if = icmp ne i64 %i.ie, 0
  %i.ig = icmp ne i32 %.1263.i.ph, 0
  %i.ih = select i1 %i.if, i1 %i.ig, i1 false
  br i1 %i.ih, label %.lr.ph36, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i34, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.ii = add nuw nsw i32 %i.hj, 31
  %i.ij = and i32 %i.ii, 31                       ; 2 uses
  %i.ik = icmp eq i32 %i.ij, 0
  %i.il = select i1 %i.ik, i32 31, i32 0
  %i.im = add nuw nsw i32 %i.il, %i.ij            ; 2 uses
  %i.in = trunc nuw nsw i32 %i.im to i8
  store i8 %i.in, ptr %i.he, align 1, !tbaa !51
  %i.io = zext nneg i32 %i.im to i64              ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.io
  store i8 %i.hg, ptr %i.ip, align 1, !tbaa !51
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !40 ; 2 uses
  %i.is = add i32 %i.ir, 1
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !40
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.io
  store i32 %i.ir, ptr %i.it, align 4, !tbaa !23
  %.not46 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not46, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge
  %i.iu = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.iv = icmp ult ptr %1, %i.iu
  %i.iw = getelementptr inbounds i8, ptr %2, i64 -3
  %i.ix = getelementptr inbounds i8, ptr %2, i64 -1
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.iz = add i32 %i.v, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph42, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i40 = phi i64 [ 0, %.lr.ph42 ], [ %i.kr, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i39 = phi i64 [ 3, %.lr.ph42 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 6 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i40
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !23 ; 3 uses
  %.not278.i = icmp ult i32 %i.jb, %i.o
  %i.jc = zext i32 %i.jb to i64                   ; 2 uses
  br i1 %.not278.i, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jd = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.jc ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.0258.i39
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 -3
  %.val6 = load i32, ptr %i.jf, align 1, !tbaa !23
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i39
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 -3
  %.val5 = load i32, ptr %i.jh, align 1, !tbaa !23
  %i.ji = icmp eq i32 %.val6, %.val5
  br i1 %i.ji, label %bb.n, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %i.iv, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %.val60.i = load i64, ptr %i.jd, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i13 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i13, label %.preheader.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jj = xor i64 %.val.i, %.val60.i
  %i.jk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jj, i1 true)
  %i.jl = lshr i64 %i.jk, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.o, %bb.q
  %.pn.i = phi ptr [ %.049.i, %bb.q ], [ %1, %bb.o ]
  %.pn67.i = phi ptr [ %.045.i, %bb.q ], [ %i.jd, %bb.o ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jm = icmp ult ptr %.049.i, %i.iu
  br i1 %i.jm, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.q
  %i.jn = xor i64 %.049.val.i, %.045.val.i
  %i.jo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jn, i1 true)
  %i.jp = lshr i64 %i.jo, 3
  %i.jq = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jp
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = sub i64 %i.jr, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.n
  %.251.i = phi ptr [ %1, %bb.n ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jd, %bb.n ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.jt = icmp ult ptr %.251.i, %i.iw
  br i1 %i.jt, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.ju = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.ju, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jv = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.jw = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.loopexit.i
  %.352.i = phi ptr [ %i.jv, %bb.s ], [ %.251.i, %bb.r ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.jw, %bb.s ], [ %.247.i, %bb.r ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.jx = icmp ult ptr %.352.i, %i.ix
  br i1 %i.jx, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.jy = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.jy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.jz = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.ka = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.453.i = phi ptr [ %i.jz, %bb.v ], [ %.352.i, %bb.u ], [ %.352.i, %bb.t ] ; 4 uses
  %.4.i = phi ptr [ %i.ka, %bb.v ], [ %.348.i, %bb.u ], [ %.348.i, %bb.t ]
  %i.kb = icmp ult ptr %.453.i, %2
  br i1 %i.kb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.kc = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.kd = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.ke = icmp eq i8 %i.kc, %i.kd
  %spec.select.idx.i = zext i1 %i.ke to i64
  %spec.select.i12 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.5.i = phi ptr [ %.453.i, %bb.w ], [ %spec.select.i12, %bb.x ]
  %i.kf = ptrtoint ptr %.5.i to i64
  %i.kg = sub i64 %i.kf, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

bb.z:                                             ; preds = %bb.l
  %i.kh = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.jc ; 2 uses
  %.val4 = load i32, ptr %i.kh, align 1, !tbaa !23
  %.val = load i32, ptr %1, align 1, !tbaa !23
  %i.ki = icmp eq i32 %.val4, %.val
  br i1 %i.ki, label %bb.aa, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL40ZSTD_RowFindBestMatch_dictMatchState_4_4EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
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
  %i.cw = phi ptr [ %.pre, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit ], [ %i.d, %bb.c ] ; 6 uses
  %i.cx = add i32 %i.t, -32                       ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cz = zext i32 %i.cx to i64                   ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cz ; 2 uses
  %i.db = icmp ugt ptr %i.da, %i.cy
  br i1 %i.db, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = trunc i64 %i.de to i32
  %i.dg = add i32 %i.df, 1
  %i.dh = tail call i32 @llvm.umin.i32(i32 %i.dg, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.di = phi i32 [ %i.dh, %bb.e ], [ 0, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i ] ; 3 uses
  %i.dj = add i32 %i.di, %i.cx                    ; 2 uses
  %i.dk = icmp ult i32 %i.cx, %i.dj
  br i1 %i.dk, label %.lr.ph55, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i

.lr.ph55:                                         ; preds = %bb.f
  %i.dl = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.dm = trunc i64 %i.dl to i32                  ; 3 uses
  %i.dn = sub i32 24, %i.cu                       ; 3 uses
  %xtraiter = and i32 %i.di, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph55
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cz
  %.val13.prol = load i32, ptr %i.do, align 1, !tbaa !23
  %i.dp = mul i32 %.val13.prol, -1640531535
  %i.dq = xor i32 %i.dp, %i.dm
  %i.dr = lshr i32 %i.dq, %i.dn                   ; 2 uses
  %i.ds = lshr i32 %i.dr, 3
  %i.dt = and i32 %i.ds, 536870880
  %i.du = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.du ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dv, i32 0, i32 3, i32 1)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dw, i32 0, i32 3, i32 1)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.du
  tail call void @llvm.prefetch.p0(ptr %i.dx, i32 0, i32 3, i32 1)
  %i.dy = and i64 %i.cz, 7
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dy
  store i32 %i.dr, ptr %i.dz, align 4, !tbaa !23
  %indvars.iv.next98.prol = add nuw nsw i64 %i.cz, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph55
  %indvars.iv97.unr = phi i64 [ %i.cz, %.lr.ph55 ], [ %indvars.iv.next98.prol, %.prol.loopexit.unr-lcssa ]
  %i.ea = icmp eq i32 %i.di, 1
  br i1 %i.ea, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph55.new

.lr.ph55.new:                                     ; preds = %.prol.loopexit, %.lr.ph55.new
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.1, %.lr.ph55.new ], [ %indvars.iv97.unr, %.prol.loopexit ] ; 4 uses
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
  %4 = load <16 x i8>, ptr %i.hs, align 1, !tbaa !51
  %5 = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %6 = load <16 x i8>, ptr %5, align 1, !tbaa !51
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hr ; 2 uses
  %i.hx = zext i8 %i.ht to i32                    ; 3 uses
  %7 = shufflevector <16 x i8> %4, <16 x i8> %6, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hy = shufflevector <16 x i8> %i.hv, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.hz = icmp eq <32 x i8> %7, %i.hy
  %i.ia = bitcast <32 x i1> %i.hz to i32          ; 3 uses
  %.not = icmp eq i32 %i.ia, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.ib = tail call noundef i32 @llvm.fshr.i32(i32 %i.ia, i32 %i.ia, i32 range(i32 0, 64) %i.hx)
  %i.ic = zext i32 %i.ib to i64
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %bb.k
  %.0247.i61 = phi i64 [ %i.is, %bb.k ], [ %i.ic, %.lr.ph62.preheader ] ; 3 uses
  %.0249.i60 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph62.preheader ] ; 4 uses
  %.0262.i59 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.aj, %.lr.ph62.preheader ] ; 3 uses
  %i.id = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i61, i1 true)
  %i.ie = trunc nuw nsw i64 %i.id to i32
  %i.if = add nuw nsw i32 %i.ie, %i.hx
  %i.ig = and i32 %i.if, 31                       ; 2 uses
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !23 ; 3 uses
  %i.ik = icmp eq i32 %i.ig, 0
  br i1 %i.ik, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph62
  %i.il = icmp ult i32 %i.ij, %i.ae
  br i1 %i.il, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.im = zext i32 %i.ij to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.im
  tail call void @llvm.prefetch.p0(ptr %i.in, i32 0, i32 3, i32 1)
  %i.io = add nuw nsw i64 %.0249.i60, 1
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i60
  store i32 %i.ij, ptr %i.ip, align 4, !tbaa !23
  %i.iq = add nsw i32 %.0262.i59, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph62
  %.1263.i.ph = phi i32 [ %.0262.i59, %.lr.ph62 ], [ %i.iq, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i60, %.lr.ph62 ], [ %i.io, %bb.j ] ; 2 uses
  %i.ir = add nuw nsw i64 %.0247.i61, 4294967295
  %i.is = and i64 %i.ir, %.0247.i61               ; 2 uses
  %i.it = icmp ne i64 %i.is, 0
  %i.iu = icmp ne i32 %.1263.i.ph, 0
  %i.iv = select i1 %i.it, i1 %i.iu, i1 false
  br i1 %i.iv, label %.lr.ph62, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.aj, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i59, %bb.i ], [ %.1263.i.ph, %bb.k ] ; 2 uses
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i60, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.iw = add nuw nsw i32 %i.hx, 31
  %i.ix = and i32 %i.iw, 31                       ; 2 uses
  %i.iy = icmp eq i32 %i.ix, 0
  %i.iz = select i1 %i.iy, i32 31, i32 0
  %i.ja = add nuw nsw i32 %i.iz, %i.ix            ; 2 uses
  %i.jb = trunc nuw nsw i32 %i.ja to i8
  store i8 %i.jb, ptr %i.hs, align 1, !tbaa !51
  %i.jc = zext nneg i32 %i.ja to i64              ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.jc
  store i8 %i.hu, ptr %i.jd, align 1, !tbaa !51
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !40 ; 2 uses
  %i.jg = add i32 %i.jf, 1
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !40
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.jc
  store i32 %i.jf, ptr %i.jh, align 4, !tbaa !23
  %.not91 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not91, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %._crit_edge
  %i.ji = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jj = icmp ult ptr %1, %i.ji
  %i.jk = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jl = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jm = add i32 %i.t, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph70, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i68 = phi i64 [ 0, %.lr.ph70 ], [ %i.kz, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i67 = phi i64 [ 3, %.lr.ph70 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i68
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !23 ; 2 uses
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.jp ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0258.i67
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 -3
  %.val8 = load i32, ptr %i.js, align 1, !tbaa !23
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i67
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 -3
  %.val = load i32, ptr %i.ju, align 1, !tbaa !23
  %i.jv = icmp eq i32 %.val8, %.val
  br i1 %i.jv, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jj, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.jq, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i20 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i20, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jw = xor i64 %.val.i, %.val60.i
  %i.jx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jw, i1 true)
  %i.jy = lshr i64 %i.jx, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.jq, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jz = icmp ult ptr %.049.i, %i.ji
  br i1 %i.jz, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.ka = xor i64 %.049.val.i, %.045.val.i
  %i.kb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ka, i1 true)
  %i.kc = lshr i64 %i.kb, 3
  %i.kd = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.kc
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = sub i64 %i.ke, %i.q
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jq, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.kg = icmp ult ptr %.251.i, %i.jk
  br i1 %i.kg, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.kh = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.kh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ki = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.kj = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.ki, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.kj, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.kk = icmp ult ptr %.352.i, %i.jl
  br i1 %i.kk, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.kl = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.kl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.km = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.kn = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.km, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i17 = phi ptr [ %i.kn, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.ko = icmp ult ptr %.453.i, %2
  br i1 %i.ko, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kp = load i8, ptr %.4.i17, align 1, !tbaa !51
  %i.kq = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.kr = icmp eq i8 %i.kp, %i.kq
  %spec.select.idx.i = zext i1 %i.kr to i64
  %spec.select.i19 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i19, %bb.w ]
  %i.ks = ptrtoint ptr %.5.i to i64
  %i.kt = sub i64 %i.ks, %i.q
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.jy, %bb.o ], [ %i.kf, %.thread63.i ], [ %i.kt, %bb.x ] ; 4 uses
  %i.ku = icmp ugt i64 %.2243.i, %.0258.i67
  br i1 %i.ku, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kv = sub i32 %i.jm, %i.jo
  %i.kw = zext i32 %i.kv to i64
  store i64 %i.kw, ptr %3, align 8, !tbaa !44
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.ky = icmp eq ptr %i.kx, %2
  br i1 %i.ky, label %._crit_edge71, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i67, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i67, %bb.l ] ; 2 uses
  %i.kz = add nuw i64 %.0248.i68, 1               ; 2 uses
  %exitcond107.not = icmp eq i64 %i.kz, %.0249.i.lcssa
  br i1 %exitcond107.not, label %._crit_edge71, label %bb.l, !llvm.loop !10

._crit_edge71:                                    ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.la = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !52
  %i.lc = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !36 ; 3 uses
  %i.le = load ptr, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  %i.lf = load i8, ptr %i.ay, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.lg = insertelement <16 x i8> poison, i8 %i.bb, i64 0
  %8 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !51
  %9 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %10 = load <16 x i8>, ptr %9, align 1, !tbaa !51
  %i.lh = ptrtoint ptr %i.le to i64
  %i.li = ptrtoint ptr %i.ld to i64
  %.neg.i.neg = sub i64 %i.lh, %i.li
  %.neg279.i.neg92 = trunc i64 %.neg.i.neg to i32
  %i.lj = zext i8 %i.lf to i32                    ; 2 uses
  %11 = shufflevector <16 x i8> %8, <16 x i8> %10, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lk = shufflevector <16 x i8> %i.lg, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.ll = icmp eq <32 x i8> %11, %i.lk
  %i.lm = bitcast <32 x i1> %i.ll to i32          ; 3 uses
  %i.ln = icmp ne i32 %i.lm, 0
  %i.lo = icmp ne i32 %.0262.i.lcssa, 0
  %i.lp = select i1 %i.ln, i1 %i.lo, i1 false
  br i1 %i.lp, label %.lr.ph79.preheader, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit

.lr.ph79.preheader:                               ; preds = %._crit_edge71
  %i.lq = tail call noundef i32 @llvm.fshr.i32(i32 %i.lm, i32 %i.lm, i32 %i.lj)
  %i.lr = zext i32 %i.lq to i64
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %bb.ab
  %.0238.i78 = phi i64 [ %i.mh, %bb.ab ], [ %i.lr, %.lr.ph79.preheader ] ; 3 uses
  %.0240.i77 = phi i64 [ %.1.i.ph, %bb.ab ], [ 0, %.lr.ph79.preheader ] ; 4 uses
  %.3265.i76 = phi i32 [ %.4266.i.ph, %bb.ab ], [ %.0262.i.lcssa, %.lr.ph79.preheader ] ; 2 uses
  %i.ls = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0238.i78, i1 true)
  %i.lt = trunc nuw nsw i64 %i.ls to i32
  %i.lu = add nuw nsw i32 %i.lt, %i.lj
  %i.lv = and i32 %i.lu, 31                       ; 2 uses
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !23 ; 3 uses
  %i.lz = icmp eq i32 %i.lv, 0
  br i1 %i.lz, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph79
  %i.ma = icmp ult i32 %i.ly, %i.lb
  br i1 %i.ma, label %._crit_edge80, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mb = zext i32 %i.ly to i64
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.mb
  tail call void @llvm.prefetch.p0(ptr %i.mc, i32 0, i32 3, i32 1)
  %i.md = add nuw nsw i64 %.0240.i77, 1
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0240.i77
  store i32 %i.ly, ptr %i.me, align 4, !tbaa !23
  %i.mf = add nsw i32 %.3265.i76, -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph79
  %.4266.i.ph = phi i32 [ %.3265.i76, %.lr.ph79 ], [ %i.mf, %bb.aa ] ; 2 uses
  %.1.i.ph = phi i64 [ %.0240.i77, %.lr.ph79 ], [ %i.md, %bb.aa ] ; 2 uses
  %i.mg = add nuw nsw i64 %.0238.i78, 4294967295
  %i.mh = and i64 %i.mg, %.0238.i78               ; 2 uses
  %i.mi = icmp ne i64 %i.mh, 0
  %i.mj = icmp ne i32 %.4266.i.ph, 0
  %i.mk = select i1 %i.mi, i1 %i.mj, i1 false
  br i1 %i.mk, label %.lr.ph79, label %._crit_edge80, !llvm.loop !12

._crit_edge80:                                    ; preds = %bb.ab, %bb.z
  %.0240.i.lcssa = phi i64 [ %.0240.i77, %bb.z ], [ %.1.i.ph, %bb.ab ] ; 2 uses
  %.not93 = icmp eq i64 %.0240.i.lcssa, 0
  br i1 %.not93, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge80
  %invariant.op = add i32 %i.t, %.neg279.i.neg92
  %.val9 = load i32, ptr %1, align 1, !tbaa !23
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.mm = add i32 %invariant.op, 3
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph87, %.thread39
  %.0239.i85 = phi i64 [ 0, %.lr.ph87 ], [ %i.nb, %.thread39 ] ; 2 uses
  %.4.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.6.i.ph, %.thread39 ] ; 3 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0239.i85
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !23 ; 2 uses
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.mp ; 2 uses
  %.val10 = load i32, ptr %i.mq, align 1, !tbaa !23
  %i.mr = icmp eq i32 %.val10, %.val9
  br i1 %i.mr, label %bb.ad, label %.thread39

bb.ad:                                            ; preds = %bb.ac
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.mt = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.ml, ptr noundef nonnull %i.ms, ptr noundef %2, ptr noundef %i.le, ptr noundef %i.p)
  %i.mu = add i64 %i.mt, 4                        ; 4 uses
  %i.mv = icmp ugt i64 %i.mu, %.4.i84
  br i1 %i.mv, label %bb.ae, label %.thread39

bb.ae:                                            ; preds = %bb.ad
  %i.mw = add i32 %i.n, %i.mo
  %i.mx = sub i32 %i.mm, %i.mw
  %i.my = zext i32 %i.mx to i64
  store i64 %i.my, ptr %3, align 8, !tbaa !44
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 %i.mu
  %i.na = icmp eq ptr %i.mz, %2
  br i1 %i.na, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.thread39

.thread39:                                        ; preds = %bb.ac, %bb.ae, %bb.ad
  %.6.i.ph = phi i64 [ %i.mu, %bb.ae ], [ %.4.i84, %bb.ad ], [ %.4.i84, %bb.ac ] ; 2 uses
  %i.nb = add nuw i64 %.0239.i85, 1               ; 2 uses
  %exitcond111.not = icmp eq i64 %i.nb, %.0240.i.lcssa
  br i1 %exitcond111.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.ac, !llvm.loop !13

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %.thread39, %bb.ae, %._crit_edge71, %._crit_edge80
  %.7.i = phi i64 [ %.3261.i, %._crit_edge80 ], [ %.3261.i, %._crit_edge71 ], [ %.6.i.ph, %.thread39 ], [ %i.mu, %bb.ae ]
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
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL40ZSTD_RowFindBestMatch_dictMatchState_5_4EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
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
  %i.cw = phi ptr [ %.pre, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit ], [ %i.d, %bb.c ] ; 6 uses
  %i.cx = add i32 %i.t, -32                       ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cz = zext i32 %i.cx to i64                   ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cz ; 2 uses
  %i.db = icmp ugt ptr %i.da, %i.cy
  br i1 %i.db, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = trunc i64 %i.de to i32
  %i.dg = add i32 %i.df, 1
  %i.dh = tail call i32 @llvm.umin.i32(i32 %i.dg, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.di = phi i32 [ %i.dh, %bb.e ], [ 0, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i ] ; 3 uses
  %i.dj = add i32 %i.di, %i.cx                    ; 2 uses
  %i.dk = icmp ult i32 %i.cx, %i.dj
  br i1 %i.dk, label %.lr.ph55, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i

.lr.ph55:                                         ; preds = %bb.f
  %i.dl = load i64, ptr %i.ah, align 8, !tbaa !50 ; 3 uses
  %i.dm = sub i32 56, %i.cu
  %i.dn = zext nneg i32 %i.dm to i64              ; 3 uses
  %xtraiter = and i32 %i.di, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph55
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cz
  %.val13.prol = load i64, ptr %i.do, align 1, !tbaa !44
  %i.dp = mul i64 %.val13.prol, -3523014627271114752
  %i.dq = xor i64 %i.dp, %i.dl
  %i.dr = lshr i64 %i.dq, %i.dn                   ; 2 uses
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = lshr i64 %i.dr, 3
  %i.du = and i64 %i.dt, 536870880                ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.du ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dv, i32 0, i32 3, i32 1)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dw, i32 0, i32 3, i32 1)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.du
  tail call void @llvm.prefetch.p0(ptr %i.dx, i32 0, i32 3, i32 1)
  %i.dy = and i64 %i.cz, 7
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dy
  store i32 %i.ds, ptr %i.dz, align 4, !tbaa !23
  %indvars.iv.next98.prol = add nuw nsw i64 %i.cz, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph55
  %indvars.iv97.unr = phi i64 [ %i.cz, %.lr.ph55 ], [ %indvars.iv.next98.prol, %.prol.loopexit.unr-lcssa ]
  %i.ea = icmp eq i32 %i.di, 1
  br i1 %i.ea, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph55.new

.lr.ph55.new:                                     ; preds = %.prol.loopexit, %.lr.ph55.new
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.1, %.lr.ph55.new ], [ %indvars.iv97.unr, %.prol.loopexit ] ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv97
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
  %4 = load <16 x i8>, ptr %i.ht, align 1, !tbaa !51
  %5 = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %6 = load <16 x i8>, ptr %5, align 1, !tbaa !51
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hs ; 2 uses
  %i.hy = zext i8 %i.hu to i32                    ; 3 uses
  %7 = shufflevector <16 x i8> %4, <16 x i8> %6, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hz = shufflevector <16 x i8> %i.hw, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.ia = icmp eq <32 x i8> %7, %i.hz
  %i.ib = bitcast <32 x i1> %i.ia to i32          ; 3 uses
  %.not = icmp eq i32 %i.ib, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.ic = tail call noundef i32 @llvm.fshr.i32(i32 %i.ib, i32 %i.ib, i32 range(i32 0, 64) %i.hy)
  %i.id = zext i32 %i.ic to i64
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %bb.k
  %.0247.i61 = phi i64 [ %i.it, %bb.k ], [ %i.id, %.lr.ph62.preheader ] ; 3 uses
  %.0249.i60 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph62.preheader ] ; 4 uses
  %.0262.i59 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.aj, %.lr.ph62.preheader ] ; 3 uses
  %i.ie = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i61, i1 true)
  %i.if = trunc nuw nsw i64 %i.ie to i32
  %i.ig = add nuw nsw i32 %i.if, %i.hy
  %i.ih = and i32 %i.ig, 31                       ; 2 uses
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !23 ; 3 uses
  %i.il = icmp eq i32 %i.ih, 0
  br i1 %i.il, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph62
  %i.im = icmp ult i32 %i.ik, %i.ae
  br i1 %i.im, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.in = zext i32 %i.ik to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.in
  tail call void @llvm.prefetch.p0(ptr %i.io, i32 0, i32 3, i32 1)
  %i.ip = add nuw nsw i64 %.0249.i60, 1
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i60
  store i32 %i.ik, ptr %i.iq, align 4, !tbaa !23
  %i.ir = add nsw i32 %.0262.i59, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph62
  %.1263.i.ph = phi i32 [ %.0262.i59, %.lr.ph62 ], [ %i.ir, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i60, %.lr.ph62 ], [ %i.ip, %bb.j ] ; 2 uses
  %i.is = add nuw nsw i64 %.0247.i61, 4294967295
  %i.it = and i64 %i.is, %.0247.i61               ; 2 uses
  %i.iu = icmp ne i64 %i.it, 0
  %i.iv = icmp ne i32 %.1263.i.ph, 0
  %i.iw = select i1 %i.iu, i1 %i.iv, i1 false
  br i1 %i.iw, label %.lr.ph62, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.aj, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i59, %bb.i ], [ %.1263.i.ph, %bb.k ] ; 2 uses
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i60, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.ix = add nuw nsw i32 %i.hy, 31
  %i.iy = and i32 %i.ix, 31                       ; 2 uses
  %i.iz = icmp eq i32 %i.iy, 0
  %i.ja = select i1 %i.iz, i32 31, i32 0
  %i.jb = add nuw nsw i32 %i.ja, %i.iy            ; 2 uses
  %i.jc = trunc nuw nsw i32 %i.jb to i8
  store i8 %i.jc, ptr %i.ht, align 1, !tbaa !51
  %i.jd = zext nneg i32 %i.jb to i64              ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jd
  store i8 %i.hv, ptr %i.je, align 1, !tbaa !51
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !40 ; 2 uses
  %i.jh = add i32 %i.jg, 1
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !40
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.jd
  store i32 %i.jg, ptr %i.ji, align 4, !tbaa !23
  %.not91 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not91, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %._crit_edge
  %i.jj = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jk = icmp ult ptr %1, %i.jj
  %i.jl = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jm = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jn = add i32 %i.t, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph70, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i68 = phi i64 [ 0, %.lr.ph70 ], [ %i.la, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i67 = phi i64 [ 3, %.lr.ph70 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i68
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !23 ; 2 uses
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.jq ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %.0258.i67
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 -3
  %.val8 = load i32, ptr %i.jt, align 1, !tbaa !23
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i67
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 -3
  %.val = load i32, ptr %i.jv, align 1, !tbaa !23
  %i.jw = icmp eq i32 %.val8, %.val
  br i1 %i.jw, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jk, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.jr, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i20 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i20, label %.preheader.i, label %bb.o

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
  %i.kg = sub i64 %i.kf, %i.q
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
  %.4.i17 = phi ptr [ %i.ko, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.kp = icmp ult ptr %.453.i, %2
  br i1 %i.kp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kq = load i8, ptr %.4.i17, align 1, !tbaa !51
  %i.kr = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.ks = icmp eq i8 %i.kq, %i.kr
  %spec.select.idx.i = zext i1 %i.ks to i64
  %spec.select.i19 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i19, %bb.w ]
  %i.kt = ptrtoint ptr %.5.i to i64
  %i.ku = sub i64 %i.kt, %i.q
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.jz, %bb.o ], [ %i.kg, %.thread63.i ], [ %i.ku, %bb.x ] ; 4 uses
  %i.kv = icmp ugt i64 %.2243.i, %.0258.i67
  br i1 %i.kv, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kw = sub i32 %i.jn, %i.jp
  %i.kx = zext i32 %i.kw to i64
  store i64 %i.kx, ptr %3, align 8, !tbaa !44
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kz = icmp eq ptr %i.ky, %2
  br i1 %i.kz, label %._crit_edge71, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i67, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i67, %bb.l ] ; 2 uses
  %i.la = add nuw i64 %.0248.i68, 1               ; 2 uses
  %exitcond107.not = icmp eq i64 %i.la, %.0249.i.lcssa
  br i1 %exitcond107.not, label %._crit_edge71, label %bb.l, !llvm.loop !10

._crit_edge71:                                    ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.lb = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !52
  %i.ld = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !36 ; 3 uses
  %i.lf = load ptr, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  %i.lg = load i8, ptr %i.ay, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.lh = insertelement <16 x i8> poison, i8 %i.bb, i64 0
  %8 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !51
  %9 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %10 = load <16 x i8>, ptr %9, align 1, !tbaa !51
  %i.li = ptrtoint ptr %i.lf to i64
  %i.lj = ptrtoint ptr %i.le to i64
  %.neg.i.neg = sub i64 %i.li, %i.lj
  %.neg279.i.neg92 = trunc i64 %.neg.i.neg to i32
  %i.lk = zext i8 %i.lg to i32                    ; 2 uses
  %11 = shufflevector <16 x i8> %8, <16 x i8> %10, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ll = shufflevector <16 x i8> %i.lh, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.lm = icmp eq <32 x i8> %11, %i.ll
  %i.ln = bitcast <32 x i1> %i.lm to i32          ; 3 uses
  %i.lo = icmp ne i32 %i.ln, 0
  %i.lp = icmp ne i32 %.0262.i.lcssa, 0
  %i.lq = select i1 %i.lo, i1 %i.lp, i1 false
  br i1 %i.lq, label %.lr.ph79.preheader, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit

.lr.ph79.preheader:                               ; preds = %._crit_edge71
  %i.lr = tail call noundef i32 @llvm.fshr.i32(i32 %i.ln, i32 %i.ln, i32 %i.lk)
  %i.ls = zext i32 %i.lr to i64
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %bb.ab
  %.0238.i78 = phi i64 [ %i.mi, %bb.ab ], [ %i.ls, %.lr.ph79.preheader ] ; 3 uses
  %.0240.i77 = phi i64 [ %.1.i.ph, %bb.ab ], [ 0, %.lr.ph79.preheader ] ; 4 uses
  %.3265.i76 = phi i32 [ %.4266.i.ph, %bb.ab ], [ %.0262.i.lcssa, %.lr.ph79.preheader ] ; 2 uses
  %i.lt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0238.i78, i1 true)
  %i.lu = trunc nuw nsw i64 %i.lt to i32
  %i.lv = add nuw nsw i32 %i.lu, %i.lk
  %i.lw = and i32 %i.lv, 31                       ; 2 uses
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.lx
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !23 ; 3 uses
  %i.ma = icmp eq i32 %i.lw, 0
  br i1 %i.ma, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph79
  %i.mb = icmp ult i32 %i.lz, %i.lc
  br i1 %i.mb, label %._crit_edge80, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mc = zext i32 %i.lz to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.mc
  tail call void @llvm.prefetch.p0(ptr %i.md, i32 0, i32 3, i32 1)
  %i.me = add nuw nsw i64 %.0240.i77, 1
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0240.i77
  store i32 %i.lz, ptr %i.mf, align 4, !tbaa !23
  %i.mg = add nsw i32 %.3265.i76, -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph79
  %.4266.i.ph = phi i32 [ %.3265.i76, %.lr.ph79 ], [ %i.mg, %bb.aa ] ; 2 uses
  %.1.i.ph = phi i64 [ %.0240.i77, %.lr.ph79 ], [ %i.me, %bb.aa ] ; 2 uses
  %i.mh = add nuw nsw i64 %.0238.i78, 4294967295
  %i.mi = and i64 %i.mh, %.0238.i78               ; 2 uses
  %i.mj = icmp ne i64 %i.mi, 0
  %i.mk = icmp ne i32 %.4266.i.ph, 0
  %i.ml = select i1 %i.mj, i1 %i.mk, i1 false
  br i1 %i.ml, label %.lr.ph79, label %._crit_edge80, !llvm.loop !12

._crit_edge80:                                    ; preds = %bb.ab, %bb.z
  %.0240.i.lcssa = phi i64 [ %.0240.i77, %bb.z ], [ %.1.i.ph, %bb.ab ] ; 2 uses
  %.not93 = icmp eq i64 %.0240.i.lcssa, 0
  br i1 %.not93, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge80
  %invariant.op = add i32 %i.t, %.neg279.i.neg92
  %.val9 = load i32, ptr %1, align 1, !tbaa !23
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.mn = add i32 %invariant.op, 3
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph87, %.thread39
  %.0239.i85 = phi i64 [ 0, %.lr.ph87 ], [ %i.nc, %.thread39 ] ; 2 uses
  %.4.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.6.i.ph, %.thread39 ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0239.i85
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !23 ; 2 uses
  %i.mq = zext i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.mq ; 2 uses
  %.val10 = load i32, ptr %i.mr, align 1, !tbaa !23
  %i.ms = icmp eq i32 %.val10, %.val9
  br i1 %i.ms, label %bb.ad, label %.thread39

bb.ad:                                            ; preds = %bb.ac
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.mu = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.mm, ptr noundef nonnull %i.mt, ptr noundef %2, ptr noundef %i.lf, ptr noundef %i.p)
  %i.mv = add i64 %i.mu, 4                        ; 4 uses
  %i.mw = icmp ugt i64 %i.mv, %.4.i84
  br i1 %i.mw, label %bb.ae, label %.thread39

bb.ae:                                            ; preds = %bb.ad
  %i.mx = add i32 %i.n, %i.mp
  %i.my = sub i32 %i.mn, %i.mx
  %i.mz = zext i32 %i.my to i64
  store i64 %i.mz, ptr %3, align 8, !tbaa !44
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 %i.mv
  %i.nb = icmp eq ptr %i.na, %2
  br i1 %i.nb, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.thread39

.thread39:                                        ; preds = %bb.ac, %bb.ae, %bb.ad
  %.6.i.ph = phi i64 [ %i.mv, %bb.ae ], [ %.4.i84, %bb.ad ], [ %.4.i84, %bb.ac ] ; 2 uses
  %i.nc = add nuw i64 %.0239.i85, 1               ; 2 uses
  %exitcond111.not = icmp eq i64 %i.nc, %.0240.i.lcssa
  br i1 %exitcond111.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.ac, !llvm.loop !13

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %.thread39, %bb.ae, %._crit_edge71, %._crit_edge80
  %.7.i = phi i64 [ %.3261.i, %._crit_edge80 ], [ %.3261.i, %._crit_edge71 ], [ %.6.i.ph, %.thread39 ], [ %i.mv, %bb.ae ]
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
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstdL40ZSTD_RowFindBestMatch_dictMatchState_6_4EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
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
  %i.cw = phi ptr [ %.pre, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i.loopexit ], [ %i.d, %bb.c ] ; 6 uses
  %i.cx = add i32 %i.t, -32                       ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cz = zext i32 %i.cx to i64                   ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cz ; 2 uses
  %i.db = icmp ugt ptr %i.da, %i.cy
  br i1 %i.db, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = trunc i64 %i.de to i32
  %i.dg = add i32 %i.df, 1
  %i.dh = tail call i32 @llvm.umin.i32(i32 %i.dg, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.di = phi i32 [ %i.dh, %bb.e ], [ 0, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i ] ; 3 uses
  %i.dj = add i32 %i.di, %i.cx                    ; 2 uses
  %i.dk = icmp ult i32 %i.cx, %i.dj
  br i1 %i.dk, label %.lr.ph55, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i

.lr.ph55:                                         ; preds = %bb.f
  %i.dl = load i64, ptr %i.ah, align 8, !tbaa !50 ; 3 uses
  %i.dm = sub i32 56, %i.cu
  %i.dn = zext nneg i32 %i.dm to i64              ; 3 uses
  %xtraiter = and i32 %i.di, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph55
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cz
  %.val13.prol = load i64, ptr %i.do, align 1, !tbaa !44
  %i.dp = mul i64 %.val13.prol, -3523014627193847808
  %i.dq = xor i64 %i.dp, %i.dl
  %i.dr = lshr i64 %i.dq, %i.dn                   ; 2 uses
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = lshr i64 %i.dr, 3
  %i.du = and i64 %i.dt, 536870880                ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.du ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dv, i32 0, i32 3, i32 1)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dw, i32 0, i32 3, i32 1)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.du
  tail call void @llvm.prefetch.p0(ptr %i.dx, i32 0, i32 3, i32 1)
  %i.dy = and i64 %i.cz, 7
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dy
  store i32 %i.ds, ptr %i.dz, align 4, !tbaa !23
  %indvars.iv.next98.prol = add nuw nsw i64 %i.cz, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph55
  %indvars.iv97.unr = phi i64 [ %i.cz, %.lr.ph55 ], [ %indvars.iv.next98.prol, %.prol.loopexit.unr-lcssa ]
  %i.ea = icmp eq i32 %i.di, 1
  br i1 %i.ea, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph55.new

.lr.ph55.new:                                     ; preds = %.prol.loopexit, %.lr.ph55.new
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.1, %.lr.ph55.new ], [ %indvars.iv97.unr, %.prol.loopexit ] ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv97
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
  %4 = load <16 x i8>, ptr %i.ht, align 1, !tbaa !51
  %5 = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %6 = load <16 x i8>, ptr %5, align 1, !tbaa !51
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hs ; 2 uses
  %i.hy = zext i8 %i.hu to i32                    ; 3 uses
  %7 = shufflevector <16 x i8> %4, <16 x i8> %6, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hz = shufflevector <16 x i8> %i.hw, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.ia = icmp eq <32 x i8> %7, %i.hz
  %i.ib = bitcast <32 x i1> %i.ia to i32          ; 3 uses
  %.not = icmp eq i32 %i.ib, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.ic = tail call noundef i32 @llvm.fshr.i32(i32 %i.ib, i32 %i.ib, i32 range(i32 0, 64) %i.hy)
  %i.id = zext i32 %i.ic to i64
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %bb.k
  %.0247.i61 = phi i64 [ %i.it, %bb.k ], [ %i.id, %.lr.ph62.preheader ] ; 3 uses
  %.0249.i60 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph62.preheader ] ; 4 uses
  %.0262.i59 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.aj, %.lr.ph62.preheader ] ; 3 uses
  %i.ie = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i61, i1 true)
  %i.if = trunc nuw nsw i64 %i.ie to i32
  %i.ig = add nuw nsw i32 %i.if, %i.hy
  %i.ih = and i32 %i.ig, 31                       ; 2 uses
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !23 ; 3 uses
  %i.il = icmp eq i32 %i.ih, 0
  br i1 %i.il, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph62
  %i.im = icmp ult i32 %i.ik, %i.ae
  br i1 %i.im, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.in = zext i32 %i.ik to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.in
  tail call void @llvm.prefetch.p0(ptr %i.io, i32 0, i32 3, i32 1)
  %i.ip = add nuw nsw i64 %.0249.i60, 1
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i60
  store i32 %i.ik, ptr %i.iq, align 4, !tbaa !23
  %i.ir = add nsw i32 %.0262.i59, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph62
  %.1263.i.ph = phi i32 [ %.0262.i59, %.lr.ph62 ], [ %i.ir, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i60, %.lr.ph62 ], [ %i.ip, %bb.j ] ; 2 uses
  %i.is = add nuw nsw i64 %.0247.i61, 4294967295
  %i.it = and i64 %i.is, %.0247.i61               ; 2 uses
  %i.iu = icmp ne i64 %i.it, 0
  %i.iv = icmp ne i32 %.1263.i.ph, 0
  %i.iw = select i1 %i.iu, i1 %i.iv, i1 false
  br i1 %i.iw, label %.lr.ph62, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.aj, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i59, %bb.i ], [ %.1263.i.ph, %bb.k ] ; 2 uses
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i60, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.ix = add nuw nsw i32 %i.hy, 31
  %i.iy = and i32 %i.ix, 31                       ; 2 uses
  %i.iz = icmp eq i32 %i.iy, 0
  %i.ja = select i1 %i.iz, i32 31, i32 0
  %i.jb = add nuw nsw i32 %i.ja, %i.iy            ; 2 uses
  %i.jc = trunc nuw nsw i32 %i.jb to i8
  store i8 %i.jc, ptr %i.ht, align 1, !tbaa !51
  %i.jd = zext nneg i32 %i.jb to i64              ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jd
  store i8 %i.hv, ptr %i.je, align 1, !tbaa !51
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !40 ; 2 uses
  %i.jh = add i32 %i.jg, 1
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !40
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.jd
  store i32 %i.jg, ptr %i.ji, align 4, !tbaa !23
  %.not91 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not91, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %._crit_edge
  %i.jj = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jk = icmp ult ptr %1, %i.jj
  %i.jl = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jm = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jn = add i32 %i.t, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph70, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i68 = phi i64 [ 0, %.lr.ph70 ], [ %i.la, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i67 = phi i64 [ 3, %.lr.ph70 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i68
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !23 ; 2 uses
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.jq ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %.0258.i67
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 -3
  %.val8 = load i32, ptr %i.jt, align 1, !tbaa !23
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i67
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 -3
  %.val = load i32, ptr %i.jv, align 1, !tbaa !23
  %i.jw = icmp eq i32 %.val8, %.val
  br i1 %i.jw, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jk, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.jr, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i20 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i20, label %.preheader.i, label %bb.o

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
  %i.kg = sub i64 %i.kf, %i.q
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
  %.4.i17 = phi ptr [ %i.ko, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.kp = icmp ult ptr %.453.i, %2
  br i1 %i.kp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kq = load i8, ptr %.4.i17, align 1, !tbaa !51
  %i.kr = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.ks = icmp eq i8 %i.kq, %i.kr
  %spec.select.idx.i = zext i1 %i.ks to i64
  %spec.select.i19 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i19, %bb.w ]
  %i.kt = ptrtoint ptr %.5.i to i64
  %i.ku = sub i64 %i.kt, %i.q
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.jz, %bb.o ], [ %i.kg, %.thread63.i ], [ %i.ku, %bb.x ] ; 4 uses
  %i.kv = icmp ugt i64 %.2243.i, %.0258.i67
  br i1 %i.kv, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kw = sub i32 %i.jn, %i.jp
  %i.kx = zext i32 %i.kw to i64
  store i64 %i.kx, ptr %3, align 8, !tbaa !44
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kz = icmp eq ptr %i.ky, %2
  br i1 %i.kz, label %._crit_edge71, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i67, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i67, %bb.l ] ; 2 uses
  %i.la = add nuw i64 %.0248.i68, 1               ; 2 uses
  %exitcond107.not = icmp eq i64 %i.la, %.0249.i.lcssa
  br i1 %exitcond107.not, label %._crit_edge71, label %bb.l, !llvm.loop !10

._crit_edge71:                                    ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.lb = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !52
  %i.ld = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !36 ; 3 uses
  %i.lf = load ptr, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  %i.lg = load i8, ptr %i.ay, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.lh = insertelement <16 x i8> poison, i8 %i.bb, i64 0
  %8 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !51
  %9 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %10 = load <16 x i8>, ptr %9, align 1, !tbaa !51
  %i.li = ptrtoint ptr %i.lf to i64
  %i.lj = ptrtoint ptr %i.le to i64
  %.neg.i.neg = sub i64 %i.li, %i.lj
  %.neg279.i.neg92 = trunc i64 %.neg.i.neg to i32
  %i.lk = zext i8 %i.lg to i32                    ; 2 uses
  %11 = shufflevector <16 x i8> %8, <16 x i8> %10, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ll = shufflevector <16 x i8> %i.lh, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.lm = icmp eq <32 x i8> %11, %i.ll
  %i.ln = bitcast <32 x i1> %i.lm to i32          ; 3 uses
  %i.lo = icmp ne i32 %i.ln, 0
  %i.lp = icmp ne i32 %.0262.i.lcssa, 0
  %i.lq = select i1 %i.lo, i1 %i.lp, i1 false
  br i1 %i.lq, label %.lr.ph79.preheader, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit

.lr.ph79.preheader:                               ; preds = %._crit_edge71
  %i.lr = tail call noundef i32 @llvm.fshr.i32(i32 %i.ln, i32 %i.ln, i32 %i.lk)
  %i.ls = zext i32 %i.lr to i64
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %bb.ab
  %.0238.i78 = phi i64 [ %i.mi, %bb.ab ], [ %i.ls, %.lr.ph79.preheader ] ; 3 uses
  %.0240.i77 = phi i64 [ %.1.i.ph, %bb.ab ], [ 0, %.lr.ph79.preheader ] ; 4 uses
  %.3265.i76 = phi i32 [ %.4266.i.ph, %bb.ab ], [ %.0262.i.lcssa, %.lr.ph79.preheader ] ; 2 uses
  %i.lt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0238.i78, i1 true)
  %i.lu = trunc nuw nsw i64 %i.lt to i32
  %i.lv = add nuw nsw i32 %i.lu, %i.lk
  %i.lw = and i32 %i.lv, 31                       ; 2 uses
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.lx
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !23 ; 3 uses
  %i.ma = icmp eq i32 %i.lw, 0
  br i1 %i.ma, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph79
  %i.mb = icmp ult i32 %i.lz, %i.lc
  br i1 %i.mb, label %._crit_edge80, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mc = zext i32 %i.lz to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.mc
  tail call void @llvm.prefetch.p0(ptr %i.md, i32 0, i32 3, i32 1)
  %i.me = add nuw nsw i64 %.0240.i77, 1
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0240.i77
  store i32 %i.lz, ptr %i.mf, align 4, !tbaa !23
  %i.mg = add nsw i32 %.3265.i76, -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph79
  %.4266.i.ph = phi i32 [ %.3265.i76, %.lr.ph79 ], [ %i.mg, %bb.aa ] ; 2 uses
  %.1.i.ph = phi i64 [ %.0240.i77, %.lr.ph79 ], [ %i.me, %bb.aa ] ; 2 uses
  %i.mh = add nuw nsw i64 %.0238.i78, 4294967295
  %i.mi = and i64 %i.mh, %.0238.i78               ; 2 uses
  %i.mj = icmp ne i64 %i.mi, 0
  %i.mk = icmp ne i32 %.4266.i.ph, 0
  %i.ml = select i1 %i.mj, i1 %i.mk, i1 false
  br i1 %i.ml, label %.lr.ph79, label %._crit_edge80, !llvm.loop !12

._crit_edge80:                                    ; preds = %bb.ab, %bb.z
  %.0240.i.lcssa = phi i64 [ %.0240.i77, %bb.z ], [ %.1.i.ph, %bb.ab ] ; 2 uses
  %.not93 = icmp eq i64 %.0240.i.lcssa, 0
  br i1 %.not93, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge80
  %invariant.op = add i32 %i.t, %.neg279.i.neg92
  %.val9 = load i32, ptr %1, align 1, !tbaa !23
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.mn = add i32 %invariant.op, 3
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph87, %.thread39
  %.0239.i85 = phi i64 [ 0, %.lr.ph87 ], [ %i.nc, %.thread39 ] ; 2 uses
  %.4.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.6.i.ph, %.thread39 ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0239.i85
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !23 ; 2 uses
  %i.mq = zext i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.mq ; 2 uses
  %.val10 = load i32, ptr %i.mr, align 1, !tbaa !23
  %i.ms = icmp eq i32 %.val10, %.val9
  br i1 %i.ms, label %bb.ad, label %.thread39

bb.ad:                                            ; preds = %bb.ac
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.mu = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.mm, ptr noundef nonnull %i.mt, ptr noundef %2, ptr noundef %i.lf, ptr noundef %i.p)
  %i.mv = add i64 %i.mu, 4                        ; 4 uses
  %i.mw = icmp ugt i64 %i.mv, %.4.i84
  br i1 %i.mw, label %bb.ae, label %.thread39

bb.ae:                                            ; preds = %bb.ad
  %i.mx = add i32 %i.n, %i.mp
  %i.my = sub i32 %i.mn, %i.mx
  %i.mz = zext i32 %i.my to i64
  store i64 %i.mz, ptr %3, align 8, !tbaa !44
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 %i.mv
  %i.nb = icmp eq ptr %i.na, %2
  br i1 %i.nb, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %.thread39

.thread39:                                        ; preds = %bb.ac, %bb.ae, %bb.ad
  %.6.i.ph = phi i64 [ %i.mv, %bb.ae ], [ %.4.i84, %bb.ad ], [ %.4.i84, %bb.ac ] ; 2 uses
  %i.nc = add nuw i64 %.0239.i85, 1               ; 2 uses
  %exitcond111.not = icmp eq i64 %i.nc, %.0240.i.lcssa
  br i1 %exitcond111.not, label %_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit, label %bb.ac, !llvm.loop !13

_ZN11duckdb_zstdL21ZSTD_RowFindBestMatchEPNS_17ZSTD_matchState_tEPKhS3_PmjNS_15ZSTD_dictMode_eEj.exit: ; preds = %.thread39, %bb.ae, %._crit_edge71, %._crit_edge80
  %.7.i = phi i64 [ %.3261.i, %._crit_edge80 ], [ %.3261.i, %._crit_edge71 ], [ %.6.i.ph, %.thread39 ], [ %i.mv, %bb.ae ]
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
end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstdL45ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a
  br i1 %i.cy, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = trunc i64 %i.db to i32
  %i.dd = add i32 %i.dc, 1
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.df = phi i32 [ %i.de, %bb.e ], [ 0, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i ] ; 3 uses
  %i.dg = add i32 %i.df, %i.cu                    ; 2 uses
  %i.dh = icmp ult i32 %i.cu, %i.dg
  br i1 %i.dh, label %.lr.ph62, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i

.lr.ph62:                                         ; preds = %bb.f
  %i.di = load i64, ptr %i.ag, align 8, !tbaa !50
  %i.dj = trunc i64 %i.di to i32                  ; 3 uses
  %i.dk = sub i32 24, %i.cr                       ; 3 uses
  %xtraiter = and i32 %i.df, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph62
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cw
  %.val11.prol = load i32, ptr %i.dl, align 1, !tbaa !23
  %i.dm = mul i32 %.val11.prol, -1640531535
  %i.dn = xor i32 %i.dm, %i.dj
  %i.do = lshr i32 %i.dn, %i.dk                   ; 2 uses
  %i.dp = lshr i32 %i.do, 3
  %i.dq = and i32 %i.dp, 536870880
  %i.dr = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dr ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ds, i32 0, i32 3, i32 1)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dt, i32 0, i32 3, i32 1)
  %i.du = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dr
  tail call void @llvm.prefetch.p0(ptr %i.du, i32 0, i32 3, i32 1)
  %i.dv = and i64 %i.cw, 7
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dv
  store i32 %i.do, ptr %i.dw, align 4, !tbaa !23
  %indvars.iv.next112.prol = add nuw nsw i64 %i.cw, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph62
  %indvars.iv111.unr = phi i64 [ %i.cw, %.lr.ph62 ], [ %indvars.iv.next112.prol, %.prol.loopexit.unr-lcssa ]
  %i.dx = icmp eq i32 %i.df, 1
  br i1 %i.dx, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.prol.loopexit, %.lr.ph62.new
  %indvars.iv111 = phi i64 [ %indvars.iv.next112.1, %.lr.ph62.new ], [ %indvars.iv111.unr, %.prol.loopexit ] ; 4 uses
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
  %4 = load <16 x i8>, ptr %i.hp, align 1, !tbaa !51
  %5 = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %6 = load <16 x i8>, ptr %5, align 1, !tbaa !51
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ho ; 2 uses
  %i.hu = zext i8 %i.hq to i32                    ; 3 uses
  %7 = shufflevector <16 x i8> %4, <16 x i8> %6, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hv = shufflevector <16 x i8> %i.hs, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.hw = icmp eq <32 x i8> %7, %i.hv
  %i.hx = bitcast <32 x i1> %i.hw to i32          ; 3 uses
  %.not101 = icmp eq i32 %i.hx, 0
  br i1 %.not101, label %._crit_edge, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hy = tail call noundef i32 @llvm.fshr.i32(i32 %i.hx, i32 %i.hx, i32 range(i32 0, 64) %i.hu)
  %i.hz = zext i32 %i.hy to i64
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %bb.k
  %.0247.i68 = phi i64 [ %i.ip, %bb.k ], [ %i.hz, %.lr.ph69.preheader ] ; 3 uses
  %.0249.i67 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph69.preheader ] ; 4 uses
  %.0262.i66 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ai, %.lr.ph69.preheader ] ; 3 uses
  %i.ia = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i68, i1 true)
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = add nuw nsw i32 %i.ib, %i.hu
  %i.id = and i32 %i.ic, 31                       ; 2 uses
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !23 ; 3 uses
  %i.ih = icmp eq i32 %i.id, 0
  br i1 %i.ih, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph69
  %i.ii = icmp ult i32 %i.ig, %i.ad
  br i1 %i.ii, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ij = zext i32 %i.ig to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ij
  tail call void @llvm.prefetch.p0(ptr %i.ik, i32 0, i32 3, i32 1)
  %i.il = add nuw nsw i64 %.0249.i67, 1
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i67
  store i32 %i.ig, ptr %i.im, align 4, !tbaa !23
  %i.in = add nsw i32 %.0262.i66, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph69
  %.1263.i.ph = phi i32 [ %.0262.i66, %.lr.ph69 ], [ %i.in, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i67, %.lr.ph69 ], [ %i.il, %bb.j ] ; 2 uses
  %i.io = add nuw nsw i64 %.0247.i68, 4294967295
  %i.ip = and i64 %i.io, %.0247.i68               ; 2 uses
  %i.iq = icmp ne i64 %i.ip, 0
  %i.ir = icmp ne i32 %.1263.i.ph, 0
  %i.is = select i1 %i.iq, i1 %i.ir, i1 false
  br i1 %i.is, label %.lr.ph69, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.ai, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i66, %bb.i ], [ %.1263.i.ph, %bb.k ]
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i67, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.it = add nuw nsw i32 %i.hu, 31
  %i.iu = and i32 %i.it, 31                       ; 2 uses
  %i.iv = icmp eq i32 %i.iu, 0
  %i.iw = select i1 %i.iv, i32 31, i32 0
  %i.ix = add nuw nsw i32 %i.iw, %i.iu            ; 2 uses
  %i.iy = trunc nuw nsw i32 %i.ix to i8
  store i8 %i.iy, ptr %i.hp, align 1, !tbaa !51
  %i.iz = zext nneg i32 %i.ix to i64              ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.iz
  store i8 %i.hr, ptr %i.ja, align 1, !tbaa !51
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !40 ; 2 uses
  %i.jd = add i32 %i.jc, 1
  store i32 %i.jd, ptr %i.jb, align 4, !tbaa !40
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.iz
  store i32 %i.jc, ptr %i.je, align 4, !tbaa !23
  %.not102 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not102, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %._crit_edge
  %i.jf = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jg = icmp ult ptr %1, %i.jf
  %i.jh = getelementptr inbounds i8, ptr %2, i64 -3
  %i.ji = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jj = add i32 %i.s, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph77, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i75 = phi i64 [ 0, %.lr.ph77 ], [ %i.kw, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i74 = phi i64 [ 3, %.lr.ph77 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i75
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !23 ; 2 uses
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.jm ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %.0258.i74
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 -3
  %.val4 = load i32, ptr %i.jp, align 1, !tbaa !23
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i74
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -3
  %.val = load i32, ptr %i.jr, align 1, !tbaa !23
  %i.js = icmp eq i32 %.val4, %.val
  br i1 %i.js, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jg, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.jn, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i16 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i16, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jt = xor i64 %.val.i, %.val60.i
  %i.ju = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jt, i1 true)
  %i.jv = lshr i64 %i.ju, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.jn, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jw = icmp ult ptr %.049.i, %i.jf
  br i1 %i.jw, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.jx = xor i64 %.049.val.i, %.045.val.i
  %i.jy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jx, i1 true)
  %i.jz = lshr i64 %i.jy, 3
  %i.ka = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.jz
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = sub i64 %i.kb, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jn, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.kd = icmp ult ptr %.251.i, %i.jh
  br i1 %i.kd, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.ke = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.ke, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kf = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.kg = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.kf, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.kg, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.kh = icmp ult ptr %.352.i, %i.ji
  br i1 %i.kh, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.ki = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.ki, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kj = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.kk = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.kj, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.kk, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.kl = icmp ult ptr %.453.i, %2
  br i1 %i.kl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.km = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.kn = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.ko = icmp eq i8 %i.km, %i.kn
  %spec.select.idx.i = zext i1 %i.ko to i64
  %spec.select.i15 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i15, %bb.w ]
  %i.kp = ptrtoint ptr %.5.i to i64
  %i.kq = sub i64 %i.kp, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.jv, %bb.o ], [ %i.kc, %.thread63.i ], [ %i.kq, %bb.x ] ; 4 uses
  %i.kr = icmp ugt i64 %.2243.i, %.0258.i74
  br i1 %i.kr, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.ks = sub i32 %i.jj, %i.jl
  %i.kt = zext i32 %i.ks to i64
  store i64 %i.kt, ptr %3, align 8, !tbaa !44
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kv = icmp eq ptr %i.ku, %2
  br i1 %i.kv, label %._crit_edge78, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i74, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i74, %bb.l ] ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN11duckdb_zstdL45ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a

bb.e:                                             ; preds = %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = trunc i64 %i.db to i32
  %i.dd = add i32 %i.dc, 1
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.df = phi i32 [ %i.de, %bb.e ], [ 0, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i ] ; 3 uses
  %i.dg = add i32 %i.df, %i.cu                    ; 2 uses
  %i.dh = icmp ult i32 %i.cu, %i.dg
  br i1 %i.dh, label %.lr.ph62, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i

.lr.ph62:                                         ; preds = %bb.f
  %i.di = load i64, ptr %i.ag, align 8, !tbaa !50 ; 3 uses
  %i.dj = sub i32 56, %i.cr
  %i.dk = zext nneg i32 %i.dj to i64              ; 3 uses
  %xtraiter = and i32 %i.df, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph62
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cw
  %.val11.prol = load i64, ptr %i.dl, align 1, !tbaa !44
  %i.dm = mul i64 %.val11.prol, -3523014627271114752
  %i.dn = xor i64 %i.dm, %i.di
  %i.do = lshr i64 %i.dn, %i.dk                   ; 2 uses
  %i.dp = trunc i64 %i.do to i32
  %i.dq = lshr i64 %i.do, 3
  %i.dr = and i64 %i.dq, 536870880                ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dr ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ds, i32 0, i32 3, i32 1)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dt, i32 0, i32 3, i32 1)
  %i.du = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dr
  tail call void @llvm.prefetch.p0(ptr %i.du, i32 0, i32 3, i32 1)
  %i.dv = and i64 %i.cw, 7
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dv
  store i32 %i.dp, ptr %i.dw, align 4, !tbaa !23
  %indvars.iv.next112.prol = add nuw nsw i64 %i.cw, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph62
  %indvars.iv111.unr = phi i64 [ %i.cw, %.lr.ph62 ], [ %indvars.iv.next112.prol, %.prol.loopexit.unr-lcssa ]
  %i.dx = icmp eq i32 %i.df, 1
  br i1 %i.dx, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.prol.loopexit, %.lr.ph62.new
  %indvars.iv111 = phi i64 [ %indvars.iv.next112.1, %.lr.ph62.new ], [ %indvars.iv111.unr, %.prol.loopexit ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv111
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
  %4 = load <16 x i8>, ptr %i.hq, align 1, !tbaa !51
  %5 = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %6 = load <16 x i8>, ptr %5, align 1, !tbaa !51
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hp ; 2 uses
  %i.hv = zext i8 %i.hr to i32                    ; 3 uses
  %7 = shufflevector <16 x i8> %4, <16 x i8> %6, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hw = shufflevector <16 x i8> %i.ht, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.hx = icmp eq <32 x i8> %7, %i.hw
  %i.hy = bitcast <32 x i1> %i.hx to i32          ; 3 uses
  %.not101 = icmp eq i32 %i.hy, 0
  br i1 %.not101, label %._crit_edge, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hz = tail call noundef i32 @llvm.fshr.i32(i32 %i.hy, i32 %i.hy, i32 range(i32 0, 64) %i.hv)
  %i.ia = zext i32 %i.hz to i64
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %bb.k
  %.0247.i68 = phi i64 [ %i.iq, %bb.k ], [ %i.ia, %.lr.ph69.preheader ] ; 3 uses
  %.0249.i67 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph69.preheader ] ; 4 uses
  %.0262.i66 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ai, %.lr.ph69.preheader ] ; 3 uses
  %i.ib = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i68, i1 true)
  %i.ic = trunc nuw nsw i64 %i.ib to i32
  %i.id = add nuw nsw i32 %i.ic, %i.hv
  %i.ie = and i32 %i.id, 31                       ; 2 uses
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !23 ; 3 uses
  %i.ii = icmp eq i32 %i.ie, 0
  br i1 %i.ii, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph69
  %i.ij = icmp ult i32 %i.ih, %i.ad
  br i1 %i.ij, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ik = zext i32 %i.ih to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ik
  tail call void @llvm.prefetch.p0(ptr %i.il, i32 0, i32 3, i32 1)
  %i.im = add nuw nsw i64 %.0249.i67, 1
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i67
  store i32 %i.ih, ptr %i.in, align 4, !tbaa !23
  %i.io = add nsw i32 %.0262.i66, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph69
  %.1263.i.ph = phi i32 [ %.0262.i66, %.lr.ph69 ], [ %i.io, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i67, %.lr.ph69 ], [ %i.im, %bb.j ] ; 2 uses
  %i.ip = add nuw nsw i64 %.0247.i68, 4294967295
  %i.iq = and i64 %i.ip, %.0247.i68               ; 2 uses
  %i.ir = icmp ne i64 %i.iq, 0
  %i.is = icmp ne i32 %.1263.i.ph, 0
  %i.it = select i1 %i.ir, i1 %i.is, i1 false
  br i1 %i.it, label %.lr.ph69, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.ai, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i66, %bb.i ], [ %.1263.i.ph, %bb.k ]
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i67, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.iu = add nuw nsw i32 %i.hv, 31
  %i.iv = and i32 %i.iu, 31                       ; 2 uses
  %i.iw = icmp eq i32 %i.iv, 0
  %i.ix = select i1 %i.iw, i32 31, i32 0
  %i.iy = add nuw nsw i32 %i.ix, %i.iv            ; 2 uses
  %i.iz = trunc nuw nsw i32 %i.iy to i8
  store i8 %i.iz, ptr %i.hq, align 1, !tbaa !51
  %i.ja = zext nneg i32 %i.iy to i64              ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.ja
  store i8 %i.hs, ptr %i.jb, align 1, !tbaa !51
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !40 ; 2 uses
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %i.jc, align 4, !tbaa !40
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.ja
  store i32 %i.jd, ptr %i.jf, align 4, !tbaa !23
  %.not102 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not102, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %._crit_edge
  %i.jg = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jh = icmp ult ptr %1, %i.jg
  %i.ji = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jj = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jk = add i32 %i.s, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph77, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i75 = phi i64 [ 0, %.lr.ph77 ], [ %i.kx, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i74 = phi i64 [ 3, %.lr.ph77 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i75
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !23 ; 2 uses
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.jn ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %.0258.i74
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -3
  %.val4 = load i32, ptr %i.jq, align 1, !tbaa !23
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i74
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 -3
  %.val = load i32, ptr %i.js, align 1, !tbaa !23
  %i.jt = icmp eq i32 %.val4, %.val
  br i1 %i.jt, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jh, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.jo, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i16 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i16, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ju = xor i64 %.val.i, %.val60.i
  %i.jv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ju, i1 true)
  %i.jw = lshr i64 %i.jv, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.jo, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jx = icmp ult ptr %.049.i, %i.jg
  br i1 %i.jx, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.jy = xor i64 %.049.val.i, %.045.val.i
  %i.jz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jy, i1 true)
  %i.ka = lshr i64 %i.jz, 3
  %i.kb = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.ka
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = sub i64 %i.kc, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jo, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.ke = icmp ult ptr %.251.i, %i.ji
  br i1 %i.ke, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.kf = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.kf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kg = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.kh = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.kg, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.kh, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.ki = icmp ult ptr %.352.i, %i.jj
  br i1 %i.ki, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.kj = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.kj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kk = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.kl = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.kk, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.kl, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.km = icmp ult ptr %.453.i, %2
  br i1 %i.km, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kn = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.ko = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.kp = icmp eq i8 %i.kn, %i.ko
  %spec.select.idx.i = zext i1 %i.kp to i64
  %spec.select.i15 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i15, %bb.w ]
  %i.kq = ptrtoint ptr %.5.i to i64
  %i.kr = sub i64 %i.kq, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.jw, %bb.o ], [ %i.kd, %.thread63.i ], [ %i.kr, %bb.x ] ; 4 uses
  %i.ks = icmp ugt i64 %.2243.i, %.0258.i74
  br i1 %i.ks, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kt = sub i32 %i.jk, %i.jm
  %i.ku = zext i32 %i.kt to i64
  store i64 %i.ku, ptr %3, align 8, !tbaa !44
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kw = icmp eq ptr %i.kv, %2
  br i1 %i.kw, label %._crit_edge78, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i74, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i74, %bb.l ] ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN11duckdb_zstdL45ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5EPNS_17ZSTD_matchState_tEPKhS3_Pm:bb.a

bb.e:                                             ; preds = %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = trunc i64 %i.db to i32
  %i.dd = add i32 %i.dc, 1
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i
  %i.df = phi i32 [ %i.de, %bb.e ], [ 0, %_ZN11duckdb_zstdL28ZSTD_row_update_internalImplEPNS_17ZSTD_matchState_tEjjjjjj.exit.i ] ; 3 uses
  %i.dg = add i32 %i.df, %i.cu                    ; 2 uses
  %i.dh = icmp ult i32 %i.cu, %i.dg
  br i1 %i.dh, label %.lr.ph62, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i

.lr.ph62:                                         ; preds = %bb.f
  %i.di = load i64, ptr %i.ag, align 8, !tbaa !50 ; 3 uses
  %i.dj = sub i32 56, %i.cr
  %i.dk = zext nneg i32 %i.dj to i64              ; 3 uses
  %xtraiter = and i32 %i.df, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph62
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cw
  %.val11.prol = load i64, ptr %i.dl, align 1, !tbaa !44
  %i.dm = mul i64 %.val11.prol, -3523014627193847808
  %i.dn = xor i64 %i.dm, %i.di
  %i.do = lshr i64 %i.dn, %i.dk                   ; 2 uses
  %i.dp = trunc i64 %i.do to i32
  %i.dq = lshr i64 %i.do, 3
  %i.dr = and i64 %i.dq, 536870880                ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dr ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ds, i32 0, i32 3, i32 1)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dt, i32 0, i32 3, i32 1)
  %i.du = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dr
  tail call void @llvm.prefetch.p0(ptr %i.du, i32 0, i32 3, i32 1)
  %i.dv = and i64 %i.cw, 7
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dv
  store i32 %i.dp, ptr %i.dw, align 4, !tbaa !23
  %indvars.iv.next112.prol = add nuw nsw i64 %i.cw, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph62
  %indvars.iv111.unr = phi i64 [ %i.cw, %.lr.ph62 ], [ %indvars.iv.next112.prol, %.prol.loopexit.unr-lcssa ]
  %i.dx = icmp eq i32 %i.df, 1
  br i1 %i.dx, label %_ZN11duckdb_zstdL24ZSTD_row_update_internalEPNS_17ZSTD_matchState_tEPKhjjjj.exit.i, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.prol.loopexit, %.lr.ph62.new
  %indvars.iv111 = phi i64 [ %indvars.iv.next112.1, %.lr.ph62.new ], [ %indvars.iv111.unr, %.prol.loopexit ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv111
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
  %4 = load <16 x i8>, ptr %i.hq, align 1, !tbaa !51
  %5 = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %6 = load <16 x i8>, ptr %5, align 1, !tbaa !51
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hp ; 2 uses
  %i.hv = zext i8 %i.hr to i32                    ; 3 uses
  %7 = shufflevector <16 x i8> %4, <16 x i8> %6, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hw = shufflevector <16 x i8> %i.ht, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.hx = icmp eq <32 x i8> %7, %i.hw
  %i.hy = bitcast <32 x i1> %i.hx to i32          ; 3 uses
  %.not101 = icmp eq i32 %i.hy, 0
  br i1 %.not101, label %._crit_edge, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %i.hz = tail call noundef i32 @llvm.fshr.i32(i32 %i.hy, i32 %i.hy, i32 range(i32 0, 64) %i.hv)
  %i.ia = zext i32 %i.hz to i64
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %bb.k
  %.0247.i68 = phi i64 [ %i.iq, %bb.k ], [ %i.ia, %.lr.ph69.preheader ] ; 3 uses
  %.0249.i67 = phi i64 [ %.1250.i.ph, %bb.k ], [ 0, %.lr.ph69.preheader ] ; 4 uses
  %.0262.i66 = phi i32 [ %.1263.i.ph, %bb.k ], [ %i.ai, %.lr.ph69.preheader ] ; 3 uses
  %i.ib = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0247.i68, i1 true)
  %i.ic = trunc nuw nsw i64 %i.ib to i32
  %i.id = add nuw nsw i32 %i.ic, %i.hv
  %i.ie = and i32 %i.id, 31                       ; 2 uses
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !23 ; 3 uses
  %i.ii = icmp eq i32 %i.ie, 0
  br i1 %i.ii, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph69
  %i.ij = icmp ult i32 %i.ih, %i.ad
  br i1 %i.ij, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ik = zext i32 %i.ih to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ik
  tail call void @llvm.prefetch.p0(ptr %i.il, i32 0, i32 3, i32 1)
  %i.im = add nuw nsw i64 %.0249.i67, 1
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0249.i67
  store i32 %i.ih, ptr %i.in, align 4, !tbaa !23
  %i.io = add nsw i32 %.0262.i66, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph69
  %.1263.i.ph = phi i32 [ %.0262.i66, %.lr.ph69 ], [ %i.io, %bb.j ] ; 3 uses
  %.1250.i.ph = phi i64 [ %.0249.i67, %.lr.ph69 ], [ %i.im, %bb.j ] ; 2 uses
  %i.ip = add nuw nsw i64 %.0247.i68, 4294967295
  %i.iq = and i64 %i.ip, %.0247.i68               ; 2 uses
  %i.ir = icmp ne i64 %i.iq, 0
  %i.is = icmp ne i32 %.1263.i.ph, 0
  %i.it = select i1 %i.ir, i1 %i.is, i1 false
  br i1 %i.it, label %.lr.ph69, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.i, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit
  %.0262.i.lcssa = phi i32 [ %i.ai, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0262.i66, %bb.i ], [ %.1263.i.ph, %bb.k ]
  %.0249.i.lcssa = phi i64 [ 0, %_ZN11duckdb_zstdL19ZSTD_row_getSSEMaskEiPKhhj.exit ], [ %.0249.i67, %bb.i ], [ %.1250.i.ph, %bb.k ] ; 2 uses
  %i.iu = add nuw nsw i32 %i.hv, 31
  %i.iv = and i32 %i.iu, 31                       ; 2 uses
  %i.iw = icmp eq i32 %i.iv, 0
  %i.ix = select i1 %i.iw, i32 31, i32 0
  %i.iy = add nuw nsw i32 %i.ix, %i.iv            ; 2 uses
  %i.iz = trunc nuw nsw i32 %i.iy to i8
  store i8 %i.iz, ptr %i.hq, align 1, !tbaa !51
  %i.ja = zext nneg i32 %i.iy to i64              ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.ja
  store i8 %i.hs, ptr %i.jb, align 1, !tbaa !51
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !40 ; 2 uses
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %i.jc, align 4, !tbaa !40
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.ja
  store i32 %i.jd, ptr %i.jf, align 4, !tbaa !23
  %.not102 = icmp eq i64 %.0249.i.lcssa, 0
  br i1 %.not102, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %._crit_edge
  %i.jg = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.jh = icmp ult ptr %1, %i.jg
  %i.ji = getelementptr inbounds i8, ptr %2, i64 -3
  %i.jj = getelementptr inbounds i8, ptr %2, i64 -1
  %i.jk = add i32 %i.s, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph77, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread
  %.0248.i75 = phi i64 [ 0, %.lr.ph77 ], [ %i.kx, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 2 uses
  %.0258.i74 = phi i64 [ 3, %.lr.ph77 ], [ %.2260.i.ph, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread ] ; 5 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0248.i75
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !23 ; 2 uses
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.jn ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %.0258.i74
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -3
  %.val4 = load i32, ptr %i.jq, align 1, !tbaa !23
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 %.0258.i74
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 -3
  %.val = load i32, ptr %i.js, align 1, !tbaa !23
  %i.jt = icmp eq i32 %.val4, %.val
  br i1 %i.jt, label %bb.m, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.jh, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.val60.i = load i64, ptr %i.jo, align 1, !tbaa !44 ; 2 uses
  %.val.i = load i64, ptr %1, align 1, !tbaa !44  ; 2 uses
  %.not.i16 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i16, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ju = xor i64 %.val.i, %.val60.i
  %i.jv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ju, i1 true)
  %i.jw = lshr i64 %i.jv, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.n, %bb.p
  %.pn.i = phi ptr [ %.049.i, %bb.p ], [ %1, %bb.n ]
  %.pn67.i = phi ptr [ %.045.i, %bb.p ], [ %i.jo, %bb.n ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.jx = icmp ult ptr %.049.i, %i.jg
  br i1 %i.jx, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !44 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !44 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.p
  %i.jy = xor i64 %.049.val.i, %.045.val.i
  %i.jz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.jy, i1 true)
  %i.ka = lshr i64 %i.jz, 3
  %i.kb = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.ka
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = sub i64 %i.kc, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.m
  %.251.i = phi ptr [ %1, %bb.m ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.jo, %bb.m ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.ke = icmp ult ptr %.251.i, %i.ji
  br i1 %i.ke, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !23
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !23
  %i.kf = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.kf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kg = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.kh = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i
  %.352.i = phi ptr [ %i.kg, %bb.r ], [ %.251.i, %bb.q ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.kh, %bb.r ], [ %.247.i, %bb.q ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.ki = icmp ult ptr %.352.i, %i.jj
  br i1 %i.ki, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !58
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !58
  %i.kj = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.kj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kk = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.kl = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i = phi ptr [ %i.kk, %bb.u ], [ %.352.i, %bb.t ], [ %.352.i, %bb.s ] ; 4 uses
  %.4.i = phi ptr [ %i.kl, %bb.u ], [ %.348.i, %bb.t ], [ %.348.i, %bb.s ]
  %i.km = icmp ult ptr %.453.i, %2
  br i1 %i.km, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kn = load i8, ptr %.4.i, align 1, !tbaa !51
  %i.ko = load i8, ptr %.453.i, align 1, !tbaa !51
  %i.kp = icmp eq i8 %i.kn, %i.ko
  %spec.select.idx.i = zext i1 %i.kp to i64
  %spec.select.i15 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi ptr [ %.453.i, %bb.v ], [ %spec.select.i15, %bb.w ]
  %i.kq = ptrtoint ptr %.5.i to i64
  %i.kr = sub i64 %i.kq, %i.p
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.x, %.thread63.i, %bb.o
  %.2243.i = phi i64 [ %i.jw, %bb.o ], [ %i.kd, %.thread63.i ], [ %i.kr, %bb.x ] ; 4 uses
  %i.ks = icmp ugt i64 %.2243.i, %.0258.i74
  br i1 %i.ks, label %bb.y, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.kt = sub i32 %i.jk, %i.jm
  %i.ku = zext i32 %i.kt to i64
  store i64 %i.ku, ptr %3, align 8, !tbaa !44
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kw = icmp eq ptr %i.kv, %2
  br i1 %i.kw, label %._crit_edge78, label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.thread: ; preds = %bb.l, %bb.y, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i74, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %.0258.i74, %bb.l ] ; 2 uses
end_hunk_11
