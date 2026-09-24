Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.06?download=true
inline.NumInlined: 1225
inline.NumDeleted: 657
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1x_5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB24_18shard_file_managerNtB5a_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client:bb.a
  %.val3.i = load ptr, ptr %i.ap, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val2.i, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val2.i, i64 48
  %i.bj = load i32, ptr %i.bi, align 8, !range !33, !noundef !16
  %i.bk = getelementptr inbounds nuw i8, ptr %.val3.i, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val3.i, i64 48
  %i.bn = load i32, ptr %i.bm, align 8, !range !33, !noundef !16
  %i.bo = icmp eq i64 %i.bl, %i.bh
  %i.bp = icmp samesign ult i32 %i.bn, %i.bj
  %i.bq = icmp slt i64 %i.bl, %i.bh
  %i.br = select i1 %i.bo, i1 %i.bp, i1 %i.bq     ; 3 uses
  %i.bs = select i1 %i.br, ptr %i.ar, ptr %i.ap, !unpredictable !16
  %i.bt = select i1 %i.bf, ptr %i.am, ptr %i.bs, !unpredictable !16
  %i.bu = select i1 %i.bf, ptr %i.ap, ptr %i.ar, !unpredictable !16
  %i.bv = select i1 %i.br, ptr %i.at, ptr %i.bu, !unpredictable !16
  %.val.i = load ptr, ptr %i.bv, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %.val1.i = load ptr, ptr %i.bt, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.bz = load i32, ptr %i.by, align 8, !range !33, !noundef !16
  %i.ca = getelementptr inbounds nuw i8, ptr %.val1.i, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val1.i, i64 48
  %i.cd = load i32, ptr %i.cc, align 8, !range !33, !noundef !16
  %i.ce = icmp eq i64 %i.cb, %i.bx
  %i.cf = icmp samesign ult i32 %i.cd, %i.bz
  %i.cg = icmp slt i64 %i.cb, %i.bx
  %i.ch = select i1 %i.ce, i1 %i.cf, i1 %i.cg     ; 2 uses
  %.v.i = select i1 %i.bf, ptr %.val4.i, ptr %.val5.i, !unpredictable !16
  %i.ci = ptrtoint ptr %.v.i to i64
  store i64 %i.ci, ptr %2, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ck = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.cl = ptrtoint ptr %.val1.i to i64            ; 2 uses
  %i.cm = select i1 %i.ch, i64 %i.ck, i64 %i.cl, !unpredictable !16
  store i64 %i.cm, ptr %i.cj, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.co = select i1 %i.ch, i64 %i.cl, i64 %i.ck, !unpredictable !16
  store i64 %i.co, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.v = select i1 %i.br, ptr %.val3.i, ptr %.val2.i, !unpredictable !16
  %i.cq = ptrtoint ptr %.v to i64
  store i64 %i.cq, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.val8.i30 = load ptr, ptr %i.ct, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %.val9.i31 = load ptr, ptr %i.cr, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val8.i30, i64 40
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.val8.i30, i64 48
  %i.cx = load i32, ptr %i.cw, align 8, !range !33, !noundef !16
  %i.cy = getelementptr inbounds nuw i8, ptr %.val9.i31, i64 40
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val9.i31, i64 48
  %i.db = load i32, ptr %i.da, align 8, !range !33, !noundef !16
  %i.dc = icmp eq i64 %i.cz, %i.cv
  %i.dd = icmp samesign ult i32 %i.db, %i.cx
  %i.de = icmp slt i64 %i.cz, %i.cv
  %i.df = select i1 %i.dc, i1 %i.dd, i1 %i.de     ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %.val6.i32 = load ptr, ptr %i.dg, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %.val7.i33 = load ptr, ptr %i.dh, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val6.i32, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !noundef !16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.val6.i32, i64 48
  %i.dl = load i32, ptr %i.dk, align 8, !range !33, !noundef !16
  %i.dm = getelementptr inbounds nuw i8, ptr %.val7.i33, i64 40
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val7.i33, i64 48
  %i.dp = load i32, ptr %i.do, align 8, !range !33, !noundef !16
  %i.dq = icmp eq i64 %i.dn, %i.dj
  %i.dr = icmp samesign ult i32 %i.dp, %i.dl
  %i.ds = icmp slt i64 %i.dn, %i.dj
  %i.dt = select i1 %i.dq, i1 %i.dr, i1 %i.ds     ; 2 uses
  %i.du = zext i1 %i.df to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.du ; 2 uses
  %i.dw = xor i1 %i.df, true
  %i.dx = zext i1 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dx ; 3 uses
  %i.dz = select i1 %i.dt, i64 3, i64 2
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dz ; 3 uses
  %i.eb = select i1 %i.dt, i64 2, i64 3
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.eb ; 2 uses
  %.val4.i34 = load ptr, ptr %i.ea, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %.val5.i35 = load ptr, ptr %i.dv, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val4.i34, i64 40
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !16 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.val4.i34, i64 48
  %i.eg = load i32, ptr %i.ef, align 8, !range !33, !noundef !16
  %i.eh = getelementptr inbounds nuw i8, ptr %.val5.i35, i64 40
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val5.i35, i64 48
  %i.ek = load i32, ptr %i.ej, align 8, !range !33, !noundef !16
  %i.el = icmp eq i64 %i.ei, %i.ee
  %i.em = icmp samesign ult i32 %i.ek, %i.eg
  %i.en = icmp slt i64 %i.ei, %i.ee
  %i.eo = select i1 %i.el, i1 %i.em, i1 %i.en     ; 3 uses
  %.val2.i36 = load ptr, ptr %i.ec, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %.val3.i37 = load ptr, ptr %i.dy, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val2.i36, i64 40
  %i.eq = load i64, ptr %i.ep, align 8, !noundef !16 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.val2.i36, i64 48
  %i.es = load i32, ptr %i.er, align 8, !range !33, !noundef !16
  %i.et = getelementptr inbounds nuw i8, ptr %.val3.i37, i64 40
  %i.eu = load i64, ptr %i.et, align 8, !noundef !16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val3.i37, i64 48
  %i.ew = load i32, ptr %i.ev, align 8, !range !33, !noundef !16
  %i.ex = icmp eq i64 %i.eu, %i.eq
  %i.ey = icmp samesign ult i32 %i.ew, %i.es
  %i.ez = icmp slt i64 %i.eu, %i.eq
  %i.fa = select i1 %i.ex, i1 %i.ey, i1 %i.ez     ; 3 uses
  %i.fb = select i1 %i.fa, ptr %i.ea, ptr %i.dy, !unpredictable !16
  %i.fc = select i1 %i.eo, ptr %i.dv, ptr %i.fb, !unpredictable !16
  %i.fd = select i1 %i.eo, ptr %i.dy, ptr %i.ea, !unpredictable !16
  %i.fe = select i1 %i.fa, ptr %i.ec, ptr %i.fd, !unpredictable !16
  %.val.i38 = load ptr, ptr %i.fe, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %.val1.i39 = load ptr, ptr %i.fc, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.val.i38, i64 40
  %i.fg = load i64, ptr %i.ff, align 8, !noundef !16 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val.i38, i64 48
  %i.fi = load i32, ptr %i.fh, align 8, !range !33, !noundef !16
  %i.fj = getelementptr inbounds nuw i8, ptr %.val1.i39, i64 40
  %i.fk = load i64, ptr %i.fj, align 8, !noundef !16 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val1.i39, i64 48
  %i.fm = load i32, ptr %i.fl, align 8, !range !33, !noundef !16
  %i.fn = icmp eq i64 %i.fk, %i.fg
  %i.fo = icmp samesign ult i32 %i.fm, %i.fi
  %i.fp = icmp slt i64 %i.fk, %i.fg
  %i.fq = select i1 %i.fn, i1 %i.fo, i1 %i.fp     ; 2 uses
  %.v.i40 = select i1 %i.eo, ptr %.val4.i34, ptr %.val5.i35, !unpredictable !16
  %i.fr = ptrtoint ptr %.v.i40 to i64
  store i64 %i.fr, ptr %i.cs, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.ft = ptrtoint ptr %.val.i38 to i64           ; 2 uses
  %i.fu = ptrtoint ptr %.val1.i39 to i64          ; 2 uses
  %i.fv = select i1 %i.fq, i64 %i.ft, i64 %i.fu, !unpredictable !16
  store i64 %i.fv, ptr %i.fs, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.fx = select i1 %i.fq, i64 %i.fu, i64 %i.ft, !unpredictable !16
  store i64 %i.fx, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %.v69 = select i1 %i.fa, ptr %.val3.i37, ptr %.val2.i36, !unpredictable !16
  %i.fz = ptrtoint ptr %.v69 to i64
  store i64 %i.fz, ptr %i.fy, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ga = load i64, ptr %0, align 8
  store i64 %i.ga, ptr %2, align 8
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  %i.gd = load i64, ptr %i.gb, align 8
  store i64 %i.gd, ptr %i.gc, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.ge = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.gf = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.gf, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1d_5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1K_18shard_file_managerNtB4Q_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client.exit, %bb.i
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.gh = getelementptr [8 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.gi = icmp samesign ult i64 %.sroa.0.0, %i.ge
  br i1 %i.gi, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1d_5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1K_18shard_file_managerNtB4Q_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client.exit.1
  %.sroa.05.058.1 = phi i64 [ %i.hm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1d_5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1K_18shard_file_managerNtB4Q_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.sroa.05.058.1
  %.idx86 = shl nuw nsw i64 %.sroa.05.058.1, 3
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.idx86 ; 3 uses
  %i.gl = load i64, ptr %i.gj, align 8            ; 3 uses
  store i64 %i.gl, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds i8, ptr %i.gk, i64 -8 ; 2 uses
  %.val9.i48.cast.1 = inttoptr i64 %i.gl to ptr   ; 2 uses
  %.val10.i.1 = load ptr, ptr %i.gm, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.val9.i48.cast.1, i64 40 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !noundef !16 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.val9.i48.cast.1, i64 48 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8, !range !33, !noundef !16
  %i.gr = getelementptr inbounds nuw i8, ptr %.val10.i.1, i64 40
  %i.gs = load i64, ptr %i.gr, align 8, !noundef !16 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.val10.i.1, i64 48
  %i.gu = load i32, ptr %i.gt, align 8, !range !33, !noundef !16
  %i.gv = icmp eq i64 %i.gs, %i.go
  %i.gw = icmp samesign ult i32 %i.gu, %i.gq
  %i.gx = icmp slt i64 %i.gs, %i.go
  %i.gy = select i1 %i.gv, i1 %i.gw, i1 %i.gx
  br i1 %i.gy, label %.preheader.1.preheader, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1d_5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1K_18shard_file_managerNtB4Q_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client.exit.1

.preheader.1.preheader:                           ; preds = %.lr.ph.1
  %i.gz = ptrtoint ptr %.val10.i.1 to i64
  store i64 %i.gz, ptr %i.gk, align 8
  %i.ha = icmp eq i64 %.sroa.05.058.1, 1
  br i1 %i.ha, label %._crit_edge83, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.preheader.1.preheader
  %5 = load i64, ptr %i.gn, align 8, !noundef !16 ; 2 uses
  %6 = load i32, ptr %i.gp, align 8, !range !33, !noundef !16
  br label %.lr.ph82

.preheader.1:                                     ; preds = %.lr.ph82
  %i.hb = ptrtoint ptr %.val8.i50.1 to i64
  store i64 %i.hb, ptr %.sroa.0.0.i49.181, align 8
  %i.hc = icmp eq ptr %i.hd, %i.gh
  br i1 %i.hc, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %.preheader.1
  %.sroa.0.0.i49.181 = phi ptr [ %i.hd, %.preheader.1 ], [ %i.gm, %.lr.ph82.preheader ] ; 3 uses
  %i.hd = getelementptr inbounds i8, ptr %.sroa.0.0.i49.181, i64 -8 ; 3 uses
  %.val8.i50.1 = load ptr, ptr %i.hd, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.val8.i50.1, i64 40
  %i.hf = load i64, ptr %i.he, align 8, !noundef !16 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.val8.i50.1, i64 48
  %i.hh = load i32, ptr %i.hg, align 8, !range !33, !noundef !16
  %i.hi = icmp eq i64 %i.hf, %5
  %i.hj = icmp samesign ult i32 %i.hh, %6
  %i.hk = icmp slt i64 %i.hf, %5
  %i.hl = select i1 %i.hi, i1 %i.hj, i1 %i.hk
  br i1 %i.hl, label %.preheader.1, label %._crit_edge83

._crit_edge83:                                    ; preds = %.preheader.1, %.lr.ph82, %.preheader.1.preheader
  %.sroa.0.0.i49.lcssa.1 = phi ptr [ %i.gh, %.preheader.1.preheader ], [ %i.gh, %.preheader.1 ], [ %.sroa.0.0.i49.181, %.lr.ph82 ]
  store i64 %i.gl, ptr %.sroa.0.0.i49.lcssa.1, align 8, !noalias !1435
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1d_5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1K_18shard_file_managerNtB4Q_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client.exit.1

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1d_5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1K_18shard_file_managerNtB4Q_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client.exit.1: ; preds = %._crit_edge83, %.lr.ph.1
  %i.hm = add nuw nsw i64 %.sroa.05.058.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.hm, %i.ge
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1d_5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1K_18shard_file_managerNtB4Q_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client.exit.1, %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  %i.hn = add nsw i64 %1, -1                      ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.hn
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hn
  %i.hq = getelementptr i8, ptr %i.gh, i64 -8
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.hr = getelementptr i8, ptr %i.je, i64 8      ; 2 uses
  %i.hs = getelementptr i8, ptr %i.jd, i64 8
  %i.ht = and i64 %1, 1
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %bb.k, label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.014.i = phi ptr [ %i.io, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.013.i = phi i64 [ %i.hv, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.012.i = phi ptr [ %i.in, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 2 uses
  %.sroa.011.011.i = phi ptr [ %i.il, %.lr.ph.i ], [ %i.gh, %.loopexit.1 ] ; 2 uses
  %.sroa.015.010.i = phi ptr [ %i.je, %.lr.ph.i ], [ %i.hq, %.loopexit.1 ] ; 2 uses
  %.sroa.017.09.i = phi ptr [ %i.jd, %.lr.ph.i ], [ %i.hp, %.loopexit.1 ] ; 2 uses
  %.sroa.019.08.i = phi ptr [ %i.jf, %.lr.ph.i ], [ %i.ho, %.loopexit.1 ] ; 2 uses
  %i.hv = add nuw nsw i64 %.sroa.04.013.i, 1      ; 2 uses
  %.sroa.011.0.val.i = load ptr, ptr %.sroa.011.011.i, align 8, !alias.scope !1436, !nonnull !16, !noundef !16 ; 3 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.012.i, align 8, !alias.scope !1436, !nonnull !16, !noundef !16 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.011.0.val.i, i64 40
  %i.hx = load i64, ptr %i.hw, align 8, !noalias !1436, !noundef !16 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.011.0.val.i, i64 48
  %i.hz = load i32, ptr %i.hy, align 8, !range !33, !noalias !1436, !noundef !16
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val.i, i64 40
  %i.ib = load i64, ptr %i.ia, align 8, !noalias !1436, !noundef !16 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val.i, i64 48
  %i.id = load i32, ptr %i.ic, align 8, !range !33, !noalias !1436, !noundef !16
  %i.ie = icmp eq i64 %i.ib, %i.hx
  %i.if = icmp samesign ult i32 %i.id, %i.hz
  %i.ig = icmp slt i64 %i.ib, %i.hx
  %i.ih = select i1 %i.ie, i1 %i.if, i1 %i.ig     ; 3 uses
  %i.ii = xor i1 %i.ih, true
  %.v.i47 = select i1 %i.ih, ptr %.sroa.011.0.val.i, ptr %.sroa.06.0.val.i
  %i.ij = ptrtoint ptr %.v.i47 to i64
  store i64 %i.ij, ptr %.sroa.0.014.i, align 8, !noalias !1437
  %i.ik = zext i1 %i.ih to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.011.i, i64 %i.ik ; 4 uses
  %i.im = zext i1 %i.ii to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.012.i, i64 %i.im ; 5 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i = load ptr, ptr %.sroa.017.09.i, align 8, !alias.scope !1436, !nonnull !16, !noundef !16 ; 3 uses
  %.sroa.015.0.val.i = load ptr, ptr %.sroa.015.010.i, align 8, !alias.scope !1436, !nonnull !16, !noundef !16 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.017.0.val.i, i64 40
  %i.iq = load i64, ptr %i.ip, align 8, !noalias !1436, !noundef !16 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.017.0.val.i, i64 48
  %i.is = load i32, ptr %i.ir, align 8, !range !33, !noalias !1436, !noundef !16
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.015.0.val.i, i64 40
  %i.iu = load i64, ptr %i.it, align 8, !noalias !1436, !noundef !16 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.015.0.val.i, i64 48
  %i.iw = load i32, ptr %i.iv, align 8, !range !33, !noalias !1436, !noundef !16
  %i.ix = icmp eq i64 %i.iu, %i.iq
  %i.iy = icmp samesign ult i32 %i.iw, %i.is
  %i.iz = icmp slt i64 %i.iu, %i.iq
  %i.ja = select i1 %i.ix, i1 %i.iy, i1 %i.iz     ; 3 uses
  %i.jb = xor i1 %i.ja, true
  %.v23.i = select i1 %i.ja, ptr %.sroa.015.0.val.i, ptr %.sroa.017.0.val.i
  %i.jc = ptrtoint ptr %.v23.i to i64
  store i64 %i.jc, ptr %.sroa.019.08.i, align 8, !noalias !1438
  %.neg.i.i = sext i1 %i.jb to i64
  %i.jd = getelementptr [8 x i8], ptr %.sroa.017.09.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.ja to i64
  %i.je = getelementptr [8 x i8], ptr %.sroa.015.010.i, i64 %.neg13.i.i ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %.sroa.019.08.i, i64 -8
  %exitcond.not.i = icmp eq i64 %i.hv, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.jg = icmp ult ptr %i.in, %i.hr               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.jg, ptr %i.in, ptr %i.il
  %i.jh = load i64, ptr %.sroa.06.0..sroa.011.0.i, align 8, !alias.scope !1436
  store i64 %i.jh, ptr %i.io, align 8, !noalias !1436
  %i.ji = zext i1 %i.jg to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.ji
  %i.jk = xor i1 %i.jg, true
  %i.jl = zext i1 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.jl
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.il, %._crit_edge.i ], [ %i.jm, %bb.j ]
  %.sroa.06.1.i = phi ptr [ %i.in, %._crit_edge.i ], [ %i.jj, %bb.j ]
  %i.jn = icmp ne ptr %.sroa.06.1.i, %i.hr
  %i.jo = icmp ne ptr %.sroa.011.1.i, %i.hs
  %or.cond.i = select i1 %i.jn, i1 true, i1 %i.jo, !prof !28
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1l_5sliceSB1g_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1S_18shard_file_managerNtB4Y_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client.exit, !prof !28

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #34
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.jp = landingpad { ptr, i32 }
          cleanup
  %i.jq = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.jq, i1 false), !noalias !1439
  resume { ptr, i32 } %i.jp

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1l_5sliceSB1g_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1S_18shard_file_managerNtB4Y_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.k, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1d_5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1K_18shard_file_managerNtB4Q_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client.exit
  %.sroa.05.058 = phi i64 [ %i.ku, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1d_5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1K_18shard_file_managerNtB4Q_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client.exit ], [ %.sroa.0.0, %bb.i ] ; 4 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.058
  %.idx = shl nuw nsw i64 %.sroa.05.058, 3
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.jt = load i64, ptr %i.jr, align 8            ; 3 uses
  store i64 %i.jt, ptr %i.js, align 8
  %i.ju = getelementptr inbounds i8, ptr %i.js, i64 -8 ; 2 uses
  %.val9.i48.cast = inttoptr i64 %i.jt to ptr     ; 2 uses
  %.val10.i = load ptr, ptr %i.ju, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.val9.i48.cast, i64 40 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !noundef !16 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.val9.i48.cast, i64 48 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 8, !range !33, !noundef !16
  %i.jz = getelementptr inbounds nuw i8, ptr %.val10.i, i64 40
  %i.ka = load i64, ptr %i.jz, align 8, !noundef !16 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.val10.i, i64 48
  %i.kc = load i32, ptr %i.kb, align 8, !range !33, !noundef !16
  %i.kd = icmp eq i64 %i.ka, %i.jw
  %i.ke = icmp samesign ult i32 %i.kc, %i.jy
  %i.kf = icmp slt i64 %i.ka, %i.jw
  %i.kg = select i1 %i.kd, i1 %i.ke, i1 %i.kf
  br i1 %i.kg, label %.preheader.preheader, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1d_5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1K_18shard_file_managerNtB4Q_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client.exit

.preheader.preheader:                             ; preds = %.lr.ph
  %i.kh = ptrtoint ptr %.val10.i to i64
  store i64 %i.kh, ptr %i.js, align 8
  %i.ki = icmp eq i64 %.sroa.05.058, 1
  br i1 %i.ki, label %._crit_edge, label %.lr.ph79.preheader

.lr.ph79.preheader:                               ; preds = %.preheader.preheader
  %7 = load i64, ptr %i.jv, align 8, !noundef !16 ; 2 uses
  %8 = load i32, ptr %i.jx, align 8, !range !33, !noundef !16
  br label %.lr.ph79

.preheader:                                       ; preds = %.lr.ph79
  %i.kj = ptrtoint ptr %.val8.i50 to i64
  store i64 %i.kj, ptr %.sroa.0.0.i4978, align 8
  %i.kk = icmp eq ptr %i.kl, %2
  br i1 %i.kk, label %._crit_edge, label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.preheader
  %.sroa.0.0.i4978 = phi ptr [ %i.kl, %.preheader ], [ %i.ju, %.lr.ph79.preheader ] ; 3 uses
  %i.kl = getelementptr inbounds i8, ptr %.sroa.0.0.i4978, i64 -8 ; 3 uses
  %.val8.i50 = load ptr, ptr %i.kl, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.val8.i50, i64 40
  %i.kn = load i64, ptr %i.km, align 8, !noundef !16 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.val8.i50, i64 48
  %i.kp = load i32, ptr %i.ko, align 8, !range !33, !noundef !16
  %i.kq = icmp eq i64 %i.kn, %7
  %i.kr = icmp samesign ult i32 %i.kp, %8
  %i.ks = icmp slt i64 %i.kn, %7
  %i.kt = select i1 %i.kq, i1 %i.kr, i1 %i.ks
  br i1 %i.kt, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %.lr.ph79, %.preheader.preheader
  %.sroa.0.0.i49.lcssa = phi ptr [ %2, %.preheader.preheader ], [ %2, %.preheader ], [ %.sroa.0.0.i4978, %.lr.ph79 ]
  store i64 %i.jt, ptr %.sroa.0.0.i49.lcssa, align 8, !noalias !1435
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1d_5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1K_18shard_file_managerNtB4Q_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1d_5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1K_18shard_file_managerNtB4Q_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client.exit: ; preds = %._crit_edge, %.lr.ph
  %i.ku = add nuw nsw i64 %.sroa.05.058, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ku, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keymNCB1u_0E0EB1C_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1g_11sort_by_keymNCB1i_0E0EB1q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 10 uses
  %i.e = icmp samesign ugt i64 %1, 7
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 40
  %.val8.i = load i32, ptr %i.f, align 8, !noundef !16
  %i.g = getelementptr i8, ptr %0, i64 16
  %.val9.i = load i32, ptr %i.g, align 8, !noundef !16
  %i.h = icmp ult i32 %.val8.i, %.val9.i          ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 88
  %.val6.i = load i32, ptr %i.i, align 8, !noundef !16
  %i.j = getelementptr i8, ptr %0, i64 64
  %.val7.i = load i32, ptr %i.j, align 8, !noundef !16
  %i.k = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %i.l = zext i1 %i.h to i64
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l ; 3 uses
  %i.n = xor i1 %i.h, true
  %i.o = zext i1 %i.n to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.o ; 4 uses
  %i.q = select i1 %i.k, i64 3, i64 2
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.q ; 4 uses
  %i.s = select i1 %i.k, i64 2, i64 3
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.s ; 3 uses
  %i.u = getelementptr i8, ptr %i.r, i64 16
  %.val4.i = load i32, ptr %i.u, align 8, !noundef !16
  %i.v = getelementptr i8, ptr %i.m, i64 16
  %.val5.i = load i32, ptr %i.v, align 8, !noundef !16
  %i.w = icmp ult i32 %.val4.i, %.val5.i          ; 3 uses
  %i.x = getelementptr i8, ptr %i.t, i64 16
  %.val2.i = load i32, ptr %i.x, align 8, !noundef !16
  %i.y = getelementptr i8, ptr %i.p, i64 16
  %.val3.i = load i32, ptr %i.y, align 8, !noundef !16
  %i.z = icmp ult i32 %.val2.i, %.val3.i          ; 3 uses
  %i.aa = select i1 %i.w, ptr %i.r, ptr %i.m, !unpredictable !16
  %i.ab = select i1 %i.z, ptr %i.p, ptr %i.t, !unpredictable !16
  %i.ac = select i1 %i.z, ptr %i.r, ptr %i.p, !unpredictable !16
  %i.ad = select i1 %i.w, ptr %i.m, ptr %i.ac, !unpredictable !16 ; 3 uses
  %i.ae = select i1 %i.w, ptr %i.p, ptr %i.r, !unpredictable !16
  %i.af = select i1 %i.z, ptr %i.t, ptr %i.ae, !unpredictable !16 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %.val.i = load i32, ptr %i.ag, align 8, !noundef !16
  %i.ah = getelementptr i8, ptr %i.ad, i64 16
  %.val1.i = load i32, ptr %i.ah, align 8, !noundef !16
  %i.ai = icmp ult i32 %.val.i, %.val1.i          ; 2 uses
  %i.aj = select i1 %i.ai, ptr %i.af, ptr %i.ad, !unpredictable !16
  %i.ak = select i1 %i.ai, ptr %i.ad, ptr %i.af, !unpredictable !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 40
  %.val8.i30 = load i32, ptr %i.aq, align 8, !noundef !16
  %i.ar = getelementptr i8, ptr %i.ao, i64 16
  %.val9.i31 = load i32, ptr %i.ar, align 8, !noundef !16
  %i.as = icmp ult i32 %.val8.i30, %.val9.i31     ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 88
  %.val6.i32 = load i32, ptr %i.at, align 8, !noundef !16
  %i.au = getelementptr i8, ptr %i.ao, i64 64
  %.val7.i33 = load i32, ptr %i.au, align 8, !noundef !16
  %i.av = icmp ult i32 %.val6.i32, %.val7.i33     ; 2 uses
  %i.aw = zext i1 %i.as to i64
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.aw ; 3 uses
  %i.ay = xor i1 %i.as, true
  %i.az = zext i1 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.az ; 4 uses
  %i.bb = select i1 %i.av, i64 3, i64 2
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.bb ; 4 uses
  %i.bd = select i1 %i.av, i64 2, i64 3
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.bd ; 3 uses
  %i.bf = getelementptr i8, ptr %i.bc, i64 16
  %.val4.i34 = load i32, ptr %i.bf, align 8, !noundef !16
  %i.bg = getelementptr i8, ptr %i.ax, i64 16
  %.val5.i35 = load i32, ptr %i.bg, align 8, !noundef !16
  %i.bh = icmp ult i32 %.val4.i34, %.val5.i35     ; 3 uses
  %i.bi = getelementptr i8, ptr %i.be, i64 16
  %.val2.i36 = load i32, ptr %i.bi, align 8, !noundef !16
  %i.bj = getelementptr i8, ptr %i.ba, i64 16
  %.val3.i37 = load i32, ptr %i.bj, align 8, !noundef !16
  %i.bk = icmp ult i32 %.val2.i36, %.val3.i37     ; 3 uses
  %i.bl = select i1 %i.bh, ptr %i.bc, ptr %i.ax, !unpredictable !16
  %i.bm = select i1 %i.bk, ptr %i.ba, ptr %i.be, !unpredictable !16
  %i.bn = select i1 %i.bk, ptr %i.bc, ptr %i.ba, !unpredictable !16
  %i.bo = select i1 %i.bh, ptr %i.ax, ptr %i.bn, !unpredictable !16 ; 3 uses
  %i.bp = select i1 %i.bh, ptr %i.ba, ptr %i.bc, !unpredictable !16
  %i.bq = select i1 %i.bk, ptr %i.be, ptr %i.bp, !unpredictable !16 ; 3 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %.val.i38 = load i32, ptr %i.br, align 8, !noundef !16
  %i.bs = getelementptr i8, ptr %i.bo, i64 16
  %.val1.i39 = load i32, ptr %i.bs, align 8, !noundef !16
  %i.bt = icmp ult i32 %.val.i38, %.val1.i39      ; 2 uses
  %i.bu = select i1 %i.bt, ptr %i.bq, ptr %i.bo, !unpredictable !16
  %i.bv = select i1 %i.bt, ptr %i.bo, ptr %i.bq, !unpredictable !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.cb = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.cc = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.cc, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keymNCB1a_0E0EB1i_.exit, %bb.g
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.ce = getelementptr [24 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.cf = icmp samesign ult i64 %.sroa.0.0, %i.cb
  br i1 %i.cf, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keymNCB1a_0E0EB1i_.exit.1
  %.sroa.05.050.1 = phi i64 [ %i.cp, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keymNCB1a_0E0EB1i_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %.sroa.05.050.1 ; 2 uses
  %.idx90 = mul nuw nsw i64 %.sroa.05.050.1, 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx90 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false)
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %.val9.i40.1 = load i32, ptr %i.ci, align 8, !noundef !16 ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ch, i64 -8
  %.val10.i.1 = load i32, ptr %i.cj, align 8, !noundef !16
  %i.ck = icmp ult i32 %.val9.i40.1, %.val10.i.1
  br i1 %i.ck, label %bb.h, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keymNCB1a_0E0EB1i_.exit.1

bb.h:                                             ; preds = %.lr.ph.1
  %.sroa.512.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %.sroa.512.0.copyload.i.1 = load i32, ptr %.sroa.512.0..sroa_idx.i.1, align 4
  %.sroa.0.0.i41.179 = getelementptr inbounds i8, ptr %i.ch, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.179, i64 24, i1 false)
  %i.cl = icmp eq i64 %.sroa.05.050.1, 1
  br i1 %i.cl, label %._crit_edge84, label %.lr.ph83

bb.i:                                             ; preds = %.lr.ph83
  %.sroa.0.0.i41.1 = getelementptr inbounds i8, ptr %.sroa.0.0.i41.181, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.181, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.1, i64 24, i1 false)
  %i.cm = icmp eq ptr %.sroa.0.0.i41.1, %i.ce
  br i1 %i.cm, label %._crit_edge84, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i41.181 = phi ptr [ %.sroa.0.0.i41.1, %bb.i ], [ %.sroa.0.0.i41.179, %bb.h ] ; 5 uses
  %.sroa.5.0.i.180 = phi ptr [ %.sroa.0.0.i41.181, %bb.i ], [ %i.ch, %bb.h ] ; 2 uses
  %i.cn = getelementptr i8, ptr %.sroa.5.0.i.180, i64 -32
  %.val8.i42.1 = load i32, ptr %i.cn, align 8, !noundef !16
  %i.co = icmp ult i32 %.val9.i40.1, %.val8.i42.1
  br i1 %i.co, label %bb.i, label %._crit_edge84

._crit_edge84:                                    ; preds = %bb.i, %.lr.ph83, %bb.h
  %.sroa.5.0.i.1.lcssa = phi ptr [ %i.ch, %bb.h ], [ %.sroa.0.0.i41.181, %bb.i ], [ %.sroa.5.0.i.180, %.lr.ph83 ] ; 2 uses
  %.sroa.0.0.i41.lcssa.1 = phi ptr [ %i.ce, %bb.h ], [ %i.ce, %bb.i ], [ %.sroa.0.0.i41.181, %.lr.ph83 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.lcssa.1, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false)
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.lcssa, i64 -8
  store i32 %.val9.i40.1, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !1456
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.lcssa, i64 -4
  store i32 %.sroa.512.0.copyload.i.1, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, align 4, !noalias !1456
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keymNCB1a_0E0EB1i_.exit.1

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keymNCB1a_0E0EB1i_.exit.1: ; preds = %._crit_edge84, %.lr.ph.1
  %i.cp = add nuw nsw i64 %.sroa.05.050.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.cp, %i.cb
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keymNCB1a_0E0EB1i_.exit.1, %.loopexit
  %i.cq = add nsw i64 %1, -1                      ; 2 uses
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.cq
  %i.ct = getelementptr i8, ptr %i.ce, i64 -24
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.cu = getelementptr i8, ptr %i.dn, i64 24     ; 2 uses
  %i.cv = getelementptr i8, ptr %i.dm, i64 24
  %i.cw = and i64 %1, 1
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.k, label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.dh, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.cy, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.dg, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.de, %.lr.ph.i ], [ %i.ce, %.loopexit.1 ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.dn, %.lr.ph.i ], [ %i.ct, %.loopexit.1 ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.dm, %.lr.ph.i ], [ %i.cs, %.loopexit.1 ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.do, %.lr.ph.i ], [ %i.cr, %.loopexit.1 ] ; 2 uses
  %i.cy = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %i.cz = getelementptr i8, ptr %.sroa.011.07.i, i64 16
  %.sroa.011.0.val.i = load i32, ptr %i.cz, align 8, !alias.scope !1457, !noundef !16
  %i.da = getelementptr i8, ptr %.sroa.06.08.i, i64 16
  %.sroa.06.0.val.i = load i32, ptr %i.da, align 8, !alias.scope !1457, !noundef !16
  %i.db = icmp ult i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 3 uses
  %..i21.i = select i1 %i.db, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %i.dc = xor i1 %i.db, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(24) %..i21.i, i64 24, i1 false), !noalias !1458
  %i.dd = zext i1 %i.db to i64
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.07.i, i64 %i.dd ; 4 uses
  %i.df = zext i1 %i.dc to i64
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.06.08.i, i64 %i.df ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 24 ; 2 uses
  %i.di = getelementptr i8, ptr %.sroa.017.05.i, i64 16
  %.sroa.017.0.val.i = load i32, ptr %i.di, align 8, !alias.scope !1457, !noundef !16
  %i.dj = getelementptr i8, ptr %.sroa.015.06.i, i64 16
  %.sroa.015.0.val.i = load i32, ptr %i.dj, align 8, !alias.scope !1457, !noundef !16
  %i.dk = icmp ult i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 3 uses
  %..i.i = select i1 %i.dk, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.dl = xor i1 %i.dk, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !noalias !1459
  %.neg.i.i = sext i1 %i.dl to i64
  %i.dm = getelementptr [24 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.dk to i64
  %i.dn = getelementptr [24 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -24
  %exitcond.not.i = icmp eq i64 %i.cy, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.dp = icmp ult ptr %i.dg, %i.cu               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.dp, ptr %i.dg, ptr %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0..sroa.011.0.i, i64 24, i1 false)
  %i.dq = zext i1 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.dq
  %i.ds = xor i1 %i.dp, true
  %i.dt = zext i1 %i.ds to i64
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.dt
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.de, %._crit_edge.i ], [ %i.du, %bb.j ]
  %.sroa.06.1.i = phi ptr [ %i.dg, %._crit_edge.i ], [ %i.dr, %bb.j ]
  %i.dv = icmp ne ptr %.sroa.06.1.i, %i.cu
  %i.dw = icmp ne ptr %.sroa.011.1.i, %i.cv
  %or.cond.i = select i1 %i.dv, i1 true, i1 %i.dw, !prof !28
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1g_11sort_by_keymNCB1i_0E0EB1q_.exit, !prof !28

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #34
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = mul nuw nsw i64 %1, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.dy, i1 false), !noalias !1460
  resume { ptr, i32 } %i.dx

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1g_11sort_by_keymNCB1i_0E0EB1q_.exit: ; preds = %bb.k, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keymNCB1a_0E0EB1i_.exit
  %.sroa.05.050 = phi i64 [ %i.ei, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keymNCB1a_0E0EB1i_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.05.050 ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.050, 24
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 24, i1 false)
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  %.val9.i40 = load i32, ptr %i.eb, align 8, !noundef !16 ; 3 uses
  %i.ec = getelementptr i8, ptr %i.ea, i64 -8
  %.val10.i = load i32, ptr %i.ec, align 8, !noundef !16
  %i.ed = icmp ult i32 %.val9.i40, %.val10.i
  br i1 %i.ed, label %bb.n, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keymNCB1a_0E0EB1i_.exit

bb.n:                                             ; preds = %.lr.ph
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  %.sroa.512.0.copyload.i = load i32, ptr %.sroa.512.0..sroa_idx.i, align 4
  %.sroa.0.0.i4171 = getelementptr inbounds i8, ptr %i.ea, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i4171, i64 24, i1 false)
  %i.ee = icmp eq i64 %.sroa.05.050, 1
  br i1 %i.ee, label %._crit_edge, label %.lr.ph74

bb.o:                                             ; preds = %.lr.ph74
  %.sroa.0.0.i41 = getelementptr inbounds i8, ptr %.sroa.0.0.i4173, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i4173, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41, i64 24, i1 false)
  %i.ef = icmp eq ptr %.sroa.0.0.i41, %2
  br i1 %i.ef, label %._crit_edge, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.n, %bb.o
  %.sroa.0.0.i4173 = phi ptr [ %.sroa.0.0.i41, %bb.o ], [ %.sroa.0.0.i4171, %bb.n ] ; 5 uses
  %.sroa.5.0.i72 = phi ptr [ %.sroa.0.0.i4173, %bb.o ], [ %i.ea, %bb.n ] ; 2 uses
  %i.eg = getelementptr i8, ptr %.sroa.5.0.i72, i64 -32
  %.val8.i42 = load i32, ptr %i.eg, align 8, !noundef !16
  %i.eh = icmp ult i32 %.val9.i40, %.val8.i42
  br i1 %i.eh, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %.lr.ph74, %bb.n
  %.sroa.5.0.i.lcssa = phi ptr [ %i.ea, %bb.n ], [ %.sroa.0.0.i4173, %bb.o ], [ %.sroa.5.0.i72, %.lr.ph74 ] ; 2 uses
  %.sroa.0.0.i41.lcssa = phi ptr [ %2, %bb.n ], [ %2, %bb.o ], [ %.sroa.0.0.i4173, %.lr.ph74 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false)
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store i32 %.val9.i40, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1456
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -4
  store i32 %.sroa.512.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !1456
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keymNCB1a_0E0EB1i_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keymNCB1a_0E0EB1i_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.ei = add nuw nsw i64 %.sroa.05.050, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ei, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keyB1t_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2B_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 288230376151711744) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i = alloca [16 x i8], align 8          ; 8 uses
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1g_11sort_by_keyB1h_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort4_stableTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB19_11sort_by_keyB1a_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2i_(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort4_stableTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB19_11sort_by_keyB1a_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2i_(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keyB19_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2h_.exit, %bb.g
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [32 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keyB19_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2h_.exit.1
  %.sroa.05.040.1 = phi i64 [ %i.ag, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keyB19_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2h_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.05.040.1 ; 2 uses
  %.idx72 = shl nuw nsw i64 %.sroa.05.040.1, 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx72 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -32 ; 3 uses
  %.val11.i.1 = load ptr, ptr %i.n, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val12.i.1 = load i64, ptr %i.p, align 8, !noundef !16 ; 5 uses
  %.val13.i.1 = load ptr, ptr %i.o, align 8, !nonnull !16, !noundef !16
  %i.q = getelementptr i8, ptr %i.n, i64 -24
  %.val14.i.1 = load i64, ptr %i.q, align 8, !noundef !16 ; 2 uses
  %spec.store.select.i.i.i.i.i.i30.1 = tail call i64 @llvm.umin.i64(i64 %.val12.i.1, i64 %.val14.i.1)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.val11.i.1, ptr nonnull readonly %.val13.i.1, i64 %spec.store.select.i.i.i.i.i.i30.1), !alias.scope !1513 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub i64 %.val12.i.1, %.val14.i.1
  %spec.select.i.i.i.i.i.i31.1 = select i1 %i.t, i64 %i.u, i64 %i.s
  %i.v = icmp slt i64 %spec.select.i.i.i.i.i.i31.1, 0
  br i1 %i.v, label %bb.h, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keyB19_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2h_.exit.1

bb.h:                                             ; preds = %.lr.ph.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  %i.x = icmp eq i64 %.sroa.05.040.1, 1
  br i1 %i.x, label %._crit_edge68, label %.lr.ph67

bb.i:                                             ; preds = %.lr.ph67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i32.165, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false)
  %i.y = icmp eq ptr %i.z, %i.k
  br i1 %i.y, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i32.165 = phi ptr [ %i.z, %bb.i ], [ %i.o, %bb.h ] ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.i32.165, i64 -32 ; 4 uses
  %.val9.i.1 = load ptr, ptr %i.z, align 8, !nonnull !16, !noundef !16
  %i.aa = getelementptr i8, ptr %.sroa.0.0.i32.165, i64 -24
  %.val10.i.1 = load i64, ptr %i.aa, align 8, !noundef !16 ; 2 uses
  %spec.store.select.i.i.i.i.i15.i.1 = tail call i64 @llvm.umin.i64(i64 %.val12.i.1, i64 %.val10.i.1)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val11.i.1, ptr nonnull readonly %.val9.i.1, i64 %spec.store.select.i.i.i.i.i15.i.1), !alias.scope !1514 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %.val12.i.1, %.val10.i.1
  %spec.select.i.i.i.i.i16.i.1 = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i.i.i16.i.1, 0
  br i1 %i.af, label %bb.i, label %._crit_edge68

._crit_edge68:                                    ; preds = %bb.i, %.lr.ph67, %bb.h
  %.sroa.0.0.i32.lcssa.1 = phi ptr [ %i.k, %bb.h ], [ %i.k, %bb.i ], [ %.sroa.0.0.i32.165, %.lr.ph67 ] ; 3 uses
  store ptr %.val11.i.1, ptr %.sroa.0.0.i32.lcssa.1, align 8, !noalias !1515
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.lcssa.1, i64 8
  store i64 %.val12.i.1, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !1515
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.lcssa.1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !1515
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keyB19_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2h_.exit.1

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keyB19_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2h_.exit.1: ; preds = %._crit_edge68, %.lr.ph.1
  %i.ag = add nuw nsw i64 %.sroa.05.040.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ag, %i.h
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keyB19_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2h_.exit.1, %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  %i.ah = add nsw i64 %1, -1                      ; 2 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.k, i64 -32
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.al = getelementptr i8, ptr %i.bj, i64 32     ; 2 uses
  %i.am = getelementptr i8, ptr %i.bi, i64 32
  %i.an = and i64 %1, 1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.ap, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.az, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 4 uses
  %.sroa.011.07.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.k, %.loopexit.1 ] ; 4 uses
  %.sroa.015.06.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %i.ak, %.loopexit.1 ] ; 4 uses
  %.sroa.017.05.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %i.aj, %.loopexit.1 ] ; 4 uses
  %.sroa.019.04.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.ai, %.loopexit.1 ] ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %.sroa.011.0.val.i = load ptr, ptr %.sroa.011.07.i, align 8, !alias.scope !1516, !nonnull !16, !noundef !16
  %i.aq = getelementptr i8, ptr %.sroa.011.07.i, i64 8
  %.sroa.011.0.val22.i = load i64, ptr %i.aq, align 8, !alias.scope !1516, !noundef !16 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.08.i, align 8, !alias.scope !1516, !nonnull !16, !noundef !16
  %i.ar = getelementptr i8, ptr %.sroa.06.08.i, i64 8
  %.sroa.06.0.val23.i = load i64, ptr %i.ar, align 8, !alias.scope !1516, !noundef !16 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.011.0.val22.i, i64 %.sroa.06.0.val23.i)
  %i.as = tail call i32 @memcmp(ptr nonnull readonly %.sroa.011.0.val.i, ptr nonnull readonly %.sroa.06.0.val.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !1517, !noalias !1516 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %i.av = sub i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %spec.select.i.i.i.i.i.i = select i1 %i.au, i64 %i.av, i64 %i.at ; 2 uses
  %i.aw = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i21.i = select i1 %i.aw, ptr %.sroa.06.08.i, ptr %.sroa.011.07.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(32) %..i21.i, i64 32, i1 false), !noalias !1518
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.07.i, i64 %spec.select.i.i.i.i.i.lobit.i ; 4 uses
  %i.ay = zext i1 %i.aw to i64
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.08.i, i64 %i.ay ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 32 ; 2 uses
  %.sroa.017.0.val.i = load ptr, ptr %.sroa.017.05.i, align 8, !alias.scope !1516, !nonnull !16, !noundef !16
  %i.bb = getelementptr i8, ptr %.sroa.017.05.i, i64 8
  %.sroa.017.0.val24.i = load i64, ptr %i.bb, align 8, !alias.scope !1516, !noundef !16 ; 2 uses
  %.sroa.015.0.val.i = load ptr, ptr %.sroa.015.06.i, align 8, !alias.scope !1516, !nonnull !16, !noundef !16
  %i.bc = getelementptr i8, ptr %.sroa.015.06.i, i64 8
  %.sroa.015.0.val25.i = load i64, ptr %i.bc, align 8, !alias.scope !1516, !noundef !16 ; 2 uses
  %spec.store.select.i.i.i.i.i26.i = tail call i64 @llvm.umin.i64(i64 %.sroa.017.0.val24.i, i64 %.sroa.015.0.val25.i)
  %i.bd = tail call i32 @memcmp(ptr nonnull readonly %.sroa.017.0.val.i, ptr nonnull readonly %.sroa.015.0.val.i, i64 %spec.store.select.i.i.i.i.i26.i), !alias.scope !1519, !noalias !1516 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp eq i32 %i.bd, 0
  %i.bg = sub i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %spec.select.i.i.i.i.i27.i = select i1 %i.bf, i64 %i.bg, i64 %i.be ; 2 uses
  %i.bh = icmp sgt i64 %spec.select.i.i.i.i.i27.i, -1 ; 2 uses
  %..i.i = select i1 %i.bh, ptr %.sroa.017.05.i, ptr %.sroa.015.06.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !noalias !1520
  %.neg.i.i = sext i1 %i.bh to i64
  %i.bi = getelementptr [32 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %spec.select.i.i.i.i.i27.lobit.i = ashr i64 %spec.select.i.i.i.i.i27.i, 63
  %i.bj = getelementptr [32 x i8], ptr %.sroa.015.06.i, i64 %spec.select.i.i.i.i.i27.lobit.i ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -32
  %exitcond.not.i = icmp eq i64 %i.ap, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.bl = icmp ult ptr %i.az, %i.al               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.bl, ptr %i.az, ptr %i.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.0..sroa.011.0.i, i64 32, i1 false)
  %i.bm = zext i1 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.bm
  %i.bo = xor i1 %i.bl, true
  %i.bp = zext i1 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.bp
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.ax, %._crit_edge.i ], [ %i.bq, %bb.j ]
  %.sroa.06.1.i = phi ptr [ %i.az, %._crit_edge.i ], [ %i.bn, %bb.j ]
  %i.br = icmp ne ptr %.sroa.06.1.i, %i.al
  %i.bs = icmp ne ptr %.sroa.011.1.i, %i.am
  %or.cond.i = select i1 %i.br, i1 true, i1 %i.bs, !prof !28
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1g_11sort_by_keyB1h_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2p_.exit, !prof !28

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #34
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable
end_hunk_0
