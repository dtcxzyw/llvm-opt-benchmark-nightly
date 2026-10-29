Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/eval_y?download=true
inline.NumInlined: 169
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 95
begin_hunk_0_@Do_Func:bb.a
  %i.daz = load double, ptr %i.day, align 8, !tbaa !32
  store double %i.daz, ptr %i.rn, align 16, !tbaa !10
  br label %.sink.split3260

bb.rm:                                            ; preds = %bb.rj
  %i.dba = load ptr, ptr %i.ro, align 8, !tbaa !50 ; 2 uses
  %i.dbb = getelementptr inbounds nuw i8, ptr %i.dba, i64 128
  %i.dbc = load ptr, ptr %i.dbb, align 8, !tbaa !10
  %i.dbd = getelementptr inbounds [8 x i8], ptr %i.dbc, i64 %i.dag
  %i.dbe = load double, ptr %i.dbd, align 8, !tbaa !32
  store double %i.dbe, ptr %i.rp, align 16, !tbaa !10
  br label %.sink.split3260

.sink.split3260:                                  ; preds = %bb.rl, %bb.rm
  %.sink3266 = phi ptr [ %i.dba, %bb.rm ], [ %i.dav, %bb.rl ]
  %.sink3264 = phi i64 [ %i.dag, %bb.rm ], [ %i.dae, %bb.rl ]
  %i.dbf = getelementptr inbounds nuw i8, ptr %.sink3266, i64 120
  %i.dbg = load ptr, ptr %i.dbf, align 8, !tbaa !37
  %i.dbh = getelementptr inbounds i8, ptr %i.dbg, i64 %.sink3264
  %i.dbi = load i8, ptr %i.dbh, align 1, !tbaa !10
  store i8 %i.dbi, ptr %i.qt, align 1, !tbaa !10
  br label %bb.rn

bb.rn:                                            ; preds = %.sink.split3260, %bb.rk
  br i1 %i.rs, label %bb.rq, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  br i1 %.not1702.2, label %bb.rr, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.dbj = load ptr, ptr %i.rt, align 16, !tbaa !50 ; 2 uses
  %i.dbk = getelementptr inbounds nuw i8, ptr %i.dbj, i64 128
  %i.dbl = load ptr, ptr %i.dbk, align 8, !tbaa !10
  %i.dbm = getelementptr inbounds [8 x i8], ptr %i.dbl, i64 %i.dae
  %i.dbn = load double, ptr %i.dbm, align 8, !tbaa !32
  store double %i.dbn, ptr %i.ru, align 16, !tbaa !10
  br label %.sink.split3267

bb.rq:                                            ; preds = %bb.rn
  %i.dbo = load ptr, ptr %i.rv, align 16, !tbaa !50 ; 2 uses
  %i.dbp = getelementptr inbounds nuw i8, ptr %i.dbo, i64 128
  %i.dbq = load ptr, ptr %i.dbp, align 8, !tbaa !10
  %i.dbr = getelementptr inbounds [8 x i8], ptr %i.dbq, i64 %i.dag
  %i.dbs = load double, ptr %i.dbr, align 8, !tbaa !32
  store double %i.dbs, ptr %i.rw, align 16, !tbaa !10
  br label %.sink.split3267

.sink.split3267:                                  ; preds = %bb.rp, %bb.rq
  %.sink3273 = phi ptr [ %i.dbo, %bb.rq ], [ %i.dbj, %bb.rp ]
  %.sink3271 = phi i64 [ %i.dag, %bb.rq ], [ %i.dae, %bb.rp ]
  %i.dbt = getelementptr inbounds nuw i8, ptr %.sink3273, i64 120
  %i.dbu = load ptr, ptr %i.dbt, align 8, !tbaa !37
  %i.dbv = getelementptr inbounds i8, ptr %i.dbu, i64 %.sink3271
  %i.dbw = load i8, ptr %i.dbv, align 1, !tbaa !10
  store i8 %i.dbw, ptr %i.qs, align 1, !tbaa !10
  br label %bb.rr

bb.rr:                                            ; preds = %.sink.split3267, %bb.ro
  br i1 %i.rz, label %bb.ru, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  br i1 %.not1702.3, label %bb.rv, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.dbx = load ptr, ptr %i.sa, align 8, !tbaa !50 ; 2 uses
  %i.dby = getelementptr inbounds nuw i8, ptr %i.dbx, i64 128
  %i.dbz = load ptr, ptr %i.dby, align 8, !tbaa !10
  %i.dca = getelementptr inbounds [8 x i8], ptr %i.dbz, i64 %i.dae
  %i.dcb = load double, ptr %i.dca, align 8, !tbaa !32
  store double %i.dcb, ptr %i.sb, align 16, !tbaa !10
  br label %.sink.split3274

bb.ru:                                            ; preds = %bb.rr
  %i.dcc = load ptr, ptr %i.sc, align 8, !tbaa !50 ; 2 uses
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.dcc, i64 128
  %i.dce = load ptr, ptr %i.dcd, align 8, !tbaa !10
  %i.dcf = getelementptr inbounds [8 x i8], ptr %i.dce, i64 %i.dag
  %i.dcg = load double, ptr %i.dcf, align 8, !tbaa !32
  store double %i.dcg, ptr %i.sd, align 16, !tbaa !10
  br label %.sink.split3274

.sink.split3274:                                  ; preds = %bb.rt, %bb.ru
  %.sink3280 = phi ptr [ %i.dcc, %bb.ru ], [ %i.dbx, %bb.rt ]
  %.sink3278 = phi i64 [ %i.dag, %bb.ru ], [ %i.dae, %bb.rt ]
  %i.dch = getelementptr inbounds nuw i8, ptr %.sink3280, i64 120
  %i.dci = load ptr, ptr %i.dch, align 8, !tbaa !37
  %i.dcj = getelementptr inbounds i8, ptr %i.dci, i64 %.sink3278
  %i.dck = load i8, ptr %i.dcj, align 1, !tbaa !10
  store i8 %i.dck, ptr %i.qr, align 1, !tbaa !10
  br label %bb.rv

bb.rv:                                            ; preds = %.sink.split3274, %bb.rs
  br i1 %i.sg, label %bb.ry, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  br i1 %.not1702.4, label %bb.rz, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.dcl = load ptr, ptr %i.sh, align 16, !tbaa !50 ; 2 uses
  %i.dcm = getelementptr inbounds nuw i8, ptr %i.dcl, i64 128
  %i.dcn = load ptr, ptr %i.dcm, align 8, !tbaa !10
  %i.dco = getelementptr inbounds [8 x i8], ptr %i.dcn, i64 %i.dae
  %i.dcp = load double, ptr %i.dco, align 8, !tbaa !32
  store double %i.dcp, ptr %i.si, align 16, !tbaa !10
  br label %.sink.split3281

bb.ry:                                            ; preds = %bb.rv
  %i.dcq = load ptr, ptr %i.sj, align 16, !tbaa !50 ; 2 uses
  %i.dcr = getelementptr inbounds nuw i8, ptr %i.dcq, i64 128
  %i.dcs = load ptr, ptr %i.dcr, align 8, !tbaa !10
  %i.dct = getelementptr inbounds [8 x i8], ptr %i.dcs, i64 %i.dag
  %i.dcu = load double, ptr %i.dct, align 8, !tbaa !32
  store double %i.dcu, ptr %i.sk, align 16, !tbaa !10
  br label %.sink.split3281

.sink.split3281:                                  ; preds = %bb.rx, %bb.ry
  %.sink3287 = phi ptr [ %i.dcq, %bb.ry ], [ %i.dcl, %bb.rx ]
  %.sink3285 = phi i64 [ %i.dag, %bb.ry ], [ %i.dae, %bb.rx ]
  %i.dcv = getelementptr inbounds nuw i8, ptr %.sink3287, i64 120
  %i.dcw = load ptr, ptr %i.dcv, align 8, !tbaa !37
  %i.dcx = getelementptr inbounds i8, ptr %i.dcw, i64 %.sink3285
  %i.dcy = load i8, ptr %i.dcx, align 1, !tbaa !10
  store i8 %i.dcy, ptr %i.qq, align 1, !tbaa !10
  br label %bb.rz

bb.rz:                                            ; preds = %.sink.split3281, %bb.rw
  br i1 %i.sn, label %bb.sc, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  br i1 %.not1702.5, label %bb.sd, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.dcz = load ptr, ptr %i.so, align 8, !tbaa !50 ; 2 uses
  %i.dda = getelementptr inbounds nuw i8, ptr %i.dcz, i64 128
  %i.ddb = load ptr, ptr %i.dda, align 8, !tbaa !10
  %i.ddc = getelementptr inbounds [8 x i8], ptr %i.ddb, i64 %i.dae
  %i.ddd = load double, ptr %i.ddc, align 8, !tbaa !32
  store double %i.ddd, ptr %i.sp, align 16, !tbaa !10
  br label %.sink.split3288

bb.sc:                                            ; preds = %bb.rz
  %i.dde = load ptr, ptr %i.sq, align 8, !tbaa !50 ; 2 uses
  %i.ddf = getelementptr inbounds nuw i8, ptr %i.dde, i64 128
  %i.ddg = load ptr, ptr %i.ddf, align 8, !tbaa !10
  %i.ddh = getelementptr inbounds [8 x i8], ptr %i.ddg, i64 %i.dag
  %i.ddi = load double, ptr %i.ddh, align 8, !tbaa !32
  store double %i.ddi, ptr %i.sr, align 16, !tbaa !10
  br label %.sink.split3288

.sink.split3288:                                  ; preds = %bb.sb, %bb.sc
  %.sink3294 = phi ptr [ %i.dde, %bb.sc ], [ %i.dcz, %bb.sb ]
  %.sink3292 = phi i64 [ %i.dag, %bb.sc ], [ %i.dae, %bb.sb ]
  %i.ddj = getelementptr inbounds nuw i8, ptr %.sink3294, i64 120
  %i.ddk = load ptr, ptr %i.ddj, align 8, !tbaa !37
  %i.ddl = getelementptr inbounds i8, ptr %i.ddk, i64 %.sink3292
  %i.ddm = load i8, ptr %i.ddl, align 1, !tbaa !10
  store i8 %i.ddm, ptr %i.qp, align 1, !tbaa !10
  br label %bb.sd

bb.sd:                                            ; preds = %.sink.split3288, %bb.sa
  br i1 %i.st, label %bb.sg, label %bb.se

bb.se:                                            ; preds = %bb.sd
  br i1 %.not1702.6, label %._crit_edge2726, label %bb.sf

._crit_edge2726:                                  ; preds = %bb.se
  %.pre2727 = load i8, ptr %i.c, align 1, !tbaa !10
  br label %bb.sh

bb.sf:                                            ; preds = %bb.se
  %i.ddn = load ptr, ptr %i.a, align 16, !tbaa !50 ; 2 uses
  %i.ddo = getelementptr inbounds nuw i8, ptr %i.ddn, i64 128
  %i.ddp = load ptr, ptr %i.ddo, align 8, !tbaa !10
  %i.ddq = getelementptr inbounds [8 x i8], ptr %i.ddp, i64 %i.dae
  %i.ddr = load double, ptr %i.ddq, align 8, !tbaa !32
  store double %i.ddr, ptr %i.qw, align 16, !tbaa !10
  %i.dds = getelementptr inbounds nuw i8, ptr %i.ddn, i64 120
  %i.ddt = load ptr, ptr %i.dds, align 8, !tbaa !37
  %i.ddu = getelementptr inbounds i8, ptr %i.ddt, i64 %i.dae
  %i.ddv = load i8, ptr %i.ddu, align 1, !tbaa !10 ; 2 uses
  store i8 %i.ddv, ptr %i.c, align 1, !tbaa !10
  br label %bb.sh

bb.sg:                                            ; preds = %bb.sd
  %i.ddw = load ptr, ptr %i.a, align 16, !tbaa !50 ; 2 uses
  %i.ddx = getelementptr inbounds nuw i8, ptr %i.ddw, i64 128
  %i.ddy = load ptr, ptr %i.ddx, align 8, !tbaa !10
  %i.ddz = getelementptr inbounds [8 x i8], ptr %i.ddy, i64 %i.dag
  %i.dea = load double, ptr %i.ddz, align 8, !tbaa !32
  store double %i.dea, ptr %i.qw, align 16, !tbaa !10
  %i.deb = getelementptr inbounds nuw i8, ptr %i.ddw, i64 120
  %i.dec = load ptr, ptr %i.deb, align 8, !tbaa !37
  %i.ded = getelementptr inbounds i8, ptr %i.dec, i64 %i.dag
  %i.dee = load i8, ptr %i.ded, align 1, !tbaa !10 ; 2 uses
  store i8 %i.dee, ptr %i.c, align 1, !tbaa !10
  br label %bb.sh

bb.sh:                                            ; preds = %._crit_edge2726, %bb.sg, %bb.sf
  %i.def = phi i8 [ %.pre2727, %._crit_edge2726 ], [ %i.dee, %bb.sg ], [ %i.ddv, %bb.sf ]
  %i.deg = add nsw i64 %.in2473, -1               ; 2 uses
  %3 = icmp ne i8 %i.def, 0
  %i.deh = load <4 x i8>, ptr %i.qp, align 1
  %.fr3556 = freeze <4 x i8> %i.deh
  %i.dei = load i8, ptr %i.qt, align 1
  %4 = icmp ne i8 %i.dei, 0
  %i.dej = load i8, ptr %i.qu, align 1
  %i.dek = icmp ne i8 %i.dej, 0
  %.fr3556.scalar = bitcast <4 x i8> %.fr3556 to i32
  %i.del = icmp ne i32 %.fr3556.scalar, 0
  %op.rdx3549 = select i1 %i.del, i1 true, i1 %3
  %i.dem = select i1 %op.rdx3549, i1 true, i1 %4
  %op.rdx3551 = select i1 %i.dem, i1 true, i1 %i.dek ; 2 uses
  %i.den = zext i1 %op.rdx3551 to i8
  %i.deo = load ptr, ptr %i.qv, align 8, !tbaa !37
  %i.dep = getelementptr inbounds i8, ptr %i.deo, i64 %i.dag
  store i8 %i.den, ptr %i.dep, align 1, !tbaa !10
  br i1 %op.rdx3551, label %bb.sj, label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.deq = load double, ptr %i.qw, align 16, !tbaa !10
  %i.der = load double, ptr %i.qx, align 16, !tbaa !10
  %i.des = load <1 x double>, ptr %i.qy, align 16
  %i.det = shufflevector <1 x double> %i.des, <1 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.deu = load double, ptr %i.qz, align 16, !tbaa !10
  %i.dev = load double, ptr %i.ra, align 16, !tbaa !10
  %i.dew = load double, ptr %i.rb, align 16, !tbaa !10
  %i.dex = load double, ptr %i.rc, align 16, !tbaa !10
  %i.dey = fdiv double %i.dev, 1.800000e+02
  %i.dez = fmul double %i.dey, f0x400921FB54442D18 ; 3 uses
  %i.dfa = fsub double %i.dew, %i.deq             ; 2 uses
  %i.dfb = fsub double %i.dex, %i.der
  %i.dfc = call double @cos(double noundef %i.dez) #24
  %i.dfd = call double @sin(double noundef %i.dez) #24 ; 2 uses
  %i.dfe = fneg double %i.dfa
  %i.dff = call double @cos(double noundef %i.dez) #24
  %i.dfg = insertelement <2 x double> poison, double %i.dfb, i64 0
  %i.dfh = insertelement <2 x double> poison, double %i.dfd, i64 0
  %i.dfi = insertelement <2 x double> %i.dfh, double %i.dff, i64 1
  %i.dfj = insertelement <2 x double> poison, double %i.dfa, i64 0
  %i.dfk = insertelement <2 x double> %i.dfj, double %i.dfe, i64 1
  %i.dfl = insertelement <2 x double> poison, double %i.dfc, i64 0
  %i.dfm = insertelement <2 x double> %i.dfl, double %i.dfd, i64 1
  %i.dfn = shufflevector <2 x double> %i.dfk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dfo = shufflevector <2 x double> %i.dfm, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dfp = shufflevector <2 x double> %i.dfg, <2 x double> poison, <4 x i32> zeroinitializer
  %i.dfq = shufflevector <2 x double> %i.dfi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dfr = fmul <4 x double> %i.dfp, %i.dfq
  %i.dfs = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dfn, <4 x double> %i.dfo, <4 x double> %i.dfr) ; 2 uses
  %i.dft = insertelement <4 x double> %i.det, double %i.deu, i64 1
  %i.dfu = shufflevector <4 x double> %i.dft, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dfv = fmul <4 x double> %i.dfu, <double 5.000000e-01, double 5.000000e-01, double -5.000000e-01, double -5.000000e-01> ; 2 uses
  %i.dfw = fcmp ole <4 x double> %i.dfs, %i.dfv
  %i.dfx = fcmp oge <4 x double> %i.dfs, %i.dfv
  %i.dfy = shufflevector <4 x i1> %i.dfw, <4 x i1> %i.dfx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dfz = freeze <4 x i1> %i.dfy
  %i.dga = bitcast <4 x i1> %i.dfz to i4
  %i.dgb = icmp eq i4 %i.dga, -1
  %.0.i = zext i1 %i.dgb to i8
  %i.dgc = load ptr, ptr %i.rd, align 8, !tbaa !10
  %i.dgd = getelementptr inbounds i8, ptr %i.dgc, i64 %i.dag
  store i8 %.0.i, ptr %i.dgd, align 1, !tbaa !10
  br label %bb.sj

bb.sj:                                            ; preds = %bb.si, %bb.sh
  %.not1699 = icmp eq i64 %i.deg, 0
  br i1 %.not1699, label %.loopexit2026, label %.lr.ph2092, !llvm.loop !360

.loopexit2029:                                    ; preds = %bb.to, %bb.sk
  %.81.lcssa = phi i64 [ %.802087, %bb.sk ], [ %i.dgg, %bb.to ]
  %.not1693 = icmp eq i64 %i.dge, 0
  br i1 %.not1693, label %.thread, label %bb.sk, !llvm.loop !361

bb.sk:                                            ; preds = %.lr.ph2088, %.loopexit2029
  %.in2470 = phi i64 [ %i.od, %.lr.ph2088 ], [ %i.dge, %.loopexit2029 ]
  %.802087 = phi i64 [ %i.og, %.lr.ph2088 ], [ %.81.lcssa, %.loopexit2029 ] ; 2 uses
  %i.dge = add nsw i64 %.in2470, -1               ; 16 uses
  %i.dgf = load i64, ptr %i.oe, align 8, !tbaa !23 ; 2 uses
  %.not16942081 = icmp eq i64 %i.dgf, 0
  br i1 %.not16942081, label %.loopexit2029, label %.lr.ph2084

.lr.ph2084:                                       ; preds = %bb.sk, %bb.to
  %.in2471 = phi i64 [ %i.dkg, %bb.to ], [ %i.dgf, %bb.sk ]
  %.812082 = phi i64 [ %i.dgg, %bb.to ], [ %.802087, %bb.sk ]
  %i.dgg = add nsw i64 %.812082, -1               ; 18 uses
  br i1 %i.oz, label %bb.sl, label %bb.sm

bb.sl:                                            ; preds = %.lr.ph2084
  %i.dgh = load ptr, ptr %i.pc, align 16, !tbaa !50 ; 2 uses
  %i.dgi = getelementptr inbounds nuw i8, ptr %i.dgh, i64 128
  %i.dgj = load ptr, ptr %i.dgi, align 8, !tbaa !10
  %i.dgk = getelementptr inbounds [8 x i8], ptr %i.dgj, i64 %i.dgg
  %i.dgl = load double, ptr %i.dgk, align 8, !tbaa !32
  store double %i.dgl, ptr %i.pd, align 16, !tbaa !10
  br label %.sink.split3295

bb.sm:                                            ; preds = %.lr.ph2084
  br i1 %.not1697, label %bb.so, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.dgm = load ptr, ptr %i.pa, align 16, !tbaa !50 ; 2 uses
  %i.dgn = getelementptr inbounds nuw i8, ptr %i.dgm, i64 128
  %i.dgo = load ptr, ptr %i.dgn, align 8, !tbaa !10
  %i.dgp = getelementptr inbounds [8 x i8], ptr %i.dgo, i64 %i.dge
  %i.dgq = load double, ptr %i.dgp, align 8, !tbaa !32
  store double %i.dgq, ptr %i.pb, align 16, !tbaa !10
  br label %.sink.split3295

.sink.split3295:                                  ; preds = %bb.sl, %bb.sn
  %.sink3301 = phi ptr [ %i.dgm, %bb.sn ], [ %i.dgh, %bb.sl ]
  %.sink3299 = phi i64 [ %i.dge, %bb.sn ], [ %i.dgg, %bb.sl ]
  %i.dgr = getelementptr inbounds nuw i8, ptr %.sink3301, i64 120
  %i.dgs = load ptr, ptr %i.dgr, align 8, !tbaa !37
  %i.dgt = getelementptr inbounds i8, ptr %i.dgs, i64 %.sink3299
  %i.dgu = load i8, ptr %i.dgt, align 1, !tbaa !10
  store i8 %i.dgu, ptr %i.op, align 1, !tbaa !10
  br label %bb.so

bb.so:                                            ; preds = %.sink.split3295, %bb.sm
  br i1 %i.pg, label %bb.sr, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  br i1 %.not1697.1, label %bb.ss, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.dgv = load ptr, ptr %i.ph, align 8, !tbaa !50 ; 2 uses
  %i.dgw = getelementptr inbounds nuw i8, ptr %i.dgv, i64 128
  %i.dgx = load ptr, ptr %i.dgw, align 8, !tbaa !10
  %i.dgy = getelementptr inbounds [8 x i8], ptr %i.dgx, i64 %i.dge
  %i.dgz = load double, ptr %i.dgy, align 8, !tbaa !32
  store double %i.dgz, ptr %i.pi, align 16, !tbaa !10
  br label %.sink.split3302

bb.sr:                                            ; preds = %bb.so
  %i.dha = load ptr, ptr %i.pj, align 8, !tbaa !50 ; 2 uses
  %i.dhb = getelementptr inbounds nuw i8, ptr %i.dha, i64 128
  %i.dhc = load ptr, ptr %i.dhb, align 8, !tbaa !10
  %i.dhd = getelementptr inbounds [8 x i8], ptr %i.dhc, i64 %i.dgg
  %i.dhe = load double, ptr %i.dhd, align 8, !tbaa !32
  store double %i.dhe, ptr %i.pk, align 16, !tbaa !10
  br label %.sink.split3302

.sink.split3302:                                  ; preds = %bb.sq, %bb.sr
  %.sink3308 = phi ptr [ %i.dha, %bb.sr ], [ %i.dgv, %bb.sq ]
  %.sink3306 = phi i64 [ %i.dgg, %bb.sr ], [ %i.dge, %bb.sq ]
  %i.dhf = getelementptr inbounds nuw i8, ptr %.sink3308, i64 120
  %i.dhg = load ptr, ptr %i.dhf, align 8, !tbaa !37
  %i.dhh = getelementptr inbounds i8, ptr %i.dhg, i64 %.sink3306
  %i.dhi = load i8, ptr %i.dhh, align 1, !tbaa !10
  store i8 %i.dhi, ptr %i.oo, align 1, !tbaa !10
  br label %bb.ss

bb.ss:                                            ; preds = %.sink.split3302, %bb.sp
  br i1 %i.pn, label %bb.sv, label %bb.st

bb.st:                                            ; preds = %bb.ss
  br i1 %.not1697.2, label %bb.sw, label %bb.su

bb.su:                                            ; preds = %bb.st
  %i.dhj = load ptr, ptr %i.po, align 16, !tbaa !50 ; 2 uses
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.dhj, i64 128
  %i.dhl = load ptr, ptr %i.dhk, align 8, !tbaa !10
  %i.dhm = getelementptr inbounds [8 x i8], ptr %i.dhl, i64 %i.dge
  %i.dhn = load double, ptr %i.dhm, align 8, !tbaa !32
  store double %i.dhn, ptr %i.pp, align 16, !tbaa !10
  br label %.sink.split3309

bb.sv:                                            ; preds = %bb.ss
  %i.dho = load ptr, ptr %i.pq, align 16, !tbaa !50 ; 2 uses
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dho, i64 128
  %i.dhq = load ptr, ptr %i.dhp, align 8, !tbaa !10
  %i.dhr = getelementptr inbounds [8 x i8], ptr %i.dhq, i64 %i.dgg
  %i.dhs = load double, ptr %i.dhr, align 8, !tbaa !32
  store double %i.dhs, ptr %i.pr, align 16, !tbaa !10
  br label %.sink.split3309

.sink.split3309:                                  ; preds = %bb.su, %bb.sv
  %.sink3315 = phi ptr [ %i.dho, %bb.sv ], [ %i.dhj, %bb.su ]
  %.sink3313 = phi i64 [ %i.dgg, %bb.sv ], [ %i.dge, %bb.su ]
  %i.dht = getelementptr inbounds nuw i8, ptr %.sink3315, i64 120
  %i.dhu = load ptr, ptr %i.dht, align 8, !tbaa !37
  %i.dhv = getelementptr inbounds i8, ptr %i.dhu, i64 %.sink3313
  %i.dhw = load i8, ptr %i.dhv, align 1, !tbaa !10
  store i8 %i.dhw, ptr %i.on, align 1, !tbaa !10
  br label %bb.sw

bb.sw:                                            ; preds = %.sink.split3309, %bb.st
  br i1 %i.pu, label %bb.sz, label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  br i1 %.not1697.3, label %bb.ta, label %bb.sy

bb.sy:                                            ; preds = %bb.sx
  %i.dhx = load ptr, ptr %i.pv, align 8, !tbaa !50 ; 2 uses
  %i.dhy = getelementptr inbounds nuw i8, ptr %i.dhx, i64 128
  %i.dhz = load ptr, ptr %i.dhy, align 8, !tbaa !10
  %i.dia = getelementptr inbounds [8 x i8], ptr %i.dhz, i64 %i.dge
  %i.dib = load double, ptr %i.dia, align 8, !tbaa !32
  store double %i.dib, ptr %i.pw, align 16, !tbaa !10
  br label %.sink.split3316

bb.sz:                                            ; preds = %bb.sw
  %i.dic = load ptr, ptr %i.px, align 8, !tbaa !50 ; 2 uses
  %i.did = getelementptr inbounds nuw i8, ptr %i.dic, i64 128
  %i.die = load ptr, ptr %i.did, align 8, !tbaa !10
  %i.dif = getelementptr inbounds [8 x i8], ptr %i.die, i64 %i.dgg
  %i.dig = load double, ptr %i.dif, align 8, !tbaa !32
  store double %i.dig, ptr %i.py, align 16, !tbaa !10
  br label %.sink.split3316

.sink.split3316:                                  ; preds = %bb.sy, %bb.sz
  %.sink3322 = phi ptr [ %i.dic, %bb.sz ], [ %i.dhx, %bb.sy ]
  %.sink3320 = phi i64 [ %i.dgg, %bb.sz ], [ %i.dge, %bb.sy ]
  %i.dih = getelementptr inbounds nuw i8, ptr %.sink3322, i64 120
  %i.dii = load ptr, ptr %i.dih, align 8, !tbaa !37
  %i.dij = getelementptr inbounds i8, ptr %i.dii, i64 %.sink3320
  %i.dik = load i8, ptr %i.dij, align 1, !tbaa !10
  store i8 %i.dik, ptr %i.om, align 1, !tbaa !10
  br label %bb.ta

bb.ta:                                            ; preds = %.sink.split3316, %bb.sx
  br i1 %i.qb, label %bb.td, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  br i1 %.not1697.4, label %bb.te, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.dil = load ptr, ptr %i.qc, align 16, !tbaa !50 ; 2 uses
  %i.dim = getelementptr inbounds nuw i8, ptr %i.dil, i64 128
  %i.din = load ptr, ptr %i.dim, align 8, !tbaa !10
  %i.dio = getelementptr inbounds [8 x i8], ptr %i.din, i64 %i.dge
  %i.dip = load double, ptr %i.dio, align 8, !tbaa !32
  store double %i.dip, ptr %i.qd, align 16, !tbaa !10
  br label %.sink.split3323

bb.td:                                            ; preds = %bb.ta
  %i.diq = load ptr, ptr %i.qe, align 16, !tbaa !50 ; 2 uses
  %i.dir = getelementptr inbounds nuw i8, ptr %i.diq, i64 128
  %i.dis = load ptr, ptr %i.dir, align 8, !tbaa !10
  %i.dit = getelementptr inbounds [8 x i8], ptr %i.dis, i64 %i.dgg
  %i.diu = load double, ptr %i.dit, align 8, !tbaa !32
  store double %i.diu, ptr %i.qf, align 16, !tbaa !10
  br label %.sink.split3323

.sink.split3323:                                  ; preds = %bb.tc, %bb.td
  %.sink3329 = phi ptr [ %i.diq, %bb.td ], [ %i.dil, %bb.tc ]
  %.sink3327 = phi i64 [ %i.dgg, %bb.td ], [ %i.dge, %bb.tc ]
  %i.div = getelementptr inbounds nuw i8, ptr %.sink3329, i64 120
  %i.diw = load ptr, ptr %i.div, align 8, !tbaa !37
  %i.dix = getelementptr inbounds i8, ptr %i.diw, i64 %.sink3327
  %i.diy = load i8, ptr %i.dix, align 1, !tbaa !10
  store i8 %i.diy, ptr %i.ol, align 1, !tbaa !10
  br label %bb.te

bb.te:                                            ; preds = %.sink.split3323, %bb.tb
  br i1 %i.qi, label %bb.th, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  br i1 %.not1697.5, label %bb.ti, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %i.diz = load ptr, ptr %i.qj, align 8, !tbaa !50 ; 2 uses
  %i.dja = getelementptr inbounds nuw i8, ptr %i.diz, i64 128
  %i.djb = load ptr, ptr %i.dja, align 8, !tbaa !10
  %i.djc = getelementptr inbounds [8 x i8], ptr %i.djb, i64 %i.dge
  %i.djd = load double, ptr %i.djc, align 8, !tbaa !32
  store double %i.djd, ptr %i.qk, align 16, !tbaa !10
  br label %.sink.split3330

bb.th:                                            ; preds = %bb.te
  %i.dje = load ptr, ptr %i.ql, align 8, !tbaa !50 ; 2 uses
  %i.djf = getelementptr inbounds nuw i8, ptr %i.dje, i64 128
  %i.djg = load ptr, ptr %i.djf, align 8, !tbaa !10
  %i.djh = getelementptr inbounds [8 x i8], ptr %i.djg, i64 %i.dgg
  %i.dji = load double, ptr %i.djh, align 8, !tbaa !32
  store double %i.dji, ptr %i.qm, align 16, !tbaa !10
  br label %.sink.split3330

.sink.split3330:                                  ; preds = %bb.tg, %bb.th
  %.sink3336 = phi ptr [ %i.dje, %bb.th ], [ %i.diz, %bb.tg ]
  %.sink3334 = phi i64 [ %i.dgg, %bb.th ], [ %i.dge, %bb.tg ]
  %i.djj = getelementptr inbounds nuw i8, ptr %.sink3336, i64 120
  %i.djk = load ptr, ptr %i.djj, align 8, !tbaa !37
  %i.djl = getelementptr inbounds i8, ptr %i.djk, i64 %.sink3334
  %i.djm = load i8, ptr %i.djl, align 1, !tbaa !10
  store i8 %i.djm, ptr %i.ok, align 1, !tbaa !10
  br label %bb.ti

bb.ti:                                            ; preds = %.sink.split3330, %bb.tf
  br i1 %i.qo, label %bb.tl, label %bb.tj

bb.tj:                                            ; preds = %bb.ti
  br i1 %.not1697.6, label %._crit_edge2722, label %bb.tk

._crit_edge2722:                                  ; preds = %bb.tj
  %.pre2723 = load i8, ptr %i.c, align 1, !tbaa !10
  br label %bb.tm

bb.tk:                                            ; preds = %bb.tj
  %i.djn = load ptr, ptr %i.a, align 16, !tbaa !50 ; 2 uses
  %i.djo = getelementptr inbounds nuw i8, ptr %i.djn, i64 128
  %i.djp = load ptr, ptr %i.djo, align 8, !tbaa !10
  %i.djq = getelementptr inbounds [8 x i8], ptr %i.djp, i64 %i.dge
  %i.djr = load double, ptr %i.djq, align 8, !tbaa !32
  store double %i.djr, ptr %i.or, align 16, !tbaa !10
  %i.djs = getelementptr inbounds nuw i8, ptr %i.djn, i64 120
  %i.djt = load ptr, ptr %i.djs, align 8, !tbaa !37
  %i.dju = getelementptr inbounds i8, ptr %i.djt, i64 %i.dge
  %i.djv = load i8, ptr %i.dju, align 1, !tbaa !10 ; 2 uses
  store i8 %i.djv, ptr %i.c, align 1, !tbaa !10
  br label %bb.tm

bb.tl:                                            ; preds = %bb.ti
  %i.djw = load ptr, ptr %i.a, align 16, !tbaa !50 ; 2 uses
  %i.djx = getelementptr inbounds nuw i8, ptr %i.djw, i64 128
  %i.djy = load ptr, ptr %i.djx, align 8, !tbaa !10
  %i.djz = getelementptr inbounds [8 x i8], ptr %i.djy, i64 %i.dgg
  %i.dka = load double, ptr %i.djz, align 8, !tbaa !32
  store double %i.dka, ptr %i.or, align 16, !tbaa !10
  %i.dkb = getelementptr inbounds nuw i8, ptr %i.djw, i64 120
  %i.dkc = load ptr, ptr %i.dkb, align 8, !tbaa !37
  %i.dkd = getelementptr inbounds i8, ptr %i.dkc, i64 %i.dgg
  %i.dke = load i8, ptr %i.dkd, align 1, !tbaa !10 ; 2 uses
  store i8 %i.dke, ptr %i.c, align 1, !tbaa !10
  br label %bb.tm

bb.tm:                                            ; preds = %._crit_edge2722, %bb.tl, %bb.tk
  %i.dkf = phi i8 [ %.pre2723, %._crit_edge2722 ], [ %i.dke, %bb.tl ], [ %i.djv, %bb.tk ]
  %i.dkg = add nsw i64 %.in2471, -1               ; 2 uses
  %5 = icmp ne i8 %i.dkf, 0
  %i.dkh = load <4 x i8>, ptr %i.ok, align 1
  %.fr = freeze <4 x i8> %i.dkh
  %i.dki = load i8, ptr %i.oo, align 1
  %6 = icmp ne i8 %i.dki, 0
  %i.dkj = load i8, ptr %i.op, align 1
  %i.dkk = icmp ne i8 %i.dkj, 0
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.dkl = icmp ne i32 %.fr.scalar, 0
  %op.rdx3552 = select i1 %i.dkl, i1 true, i1 %5
  %i.dkm = select i1 %op.rdx3552, i1 true, i1 %6
  %op.rdx3554 = select i1 %i.dkm, i1 true, i1 %i.dkk ; 2 uses
  %i.dkn = zext i1 %op.rdx3554 to i8
  %i.dko = load ptr, ptr %i.oq, align 8, !tbaa !37
  %i.dkp = getelementptr inbounds i8, ptr %i.dko, i64 %i.dgg
  store i8 %i.dkn, ptr %i.dkp, align 1, !tbaa !10
  br i1 %op.rdx3554, label %bb.to, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  %i.dkq = load double, ptr %i.or, align 16, !tbaa !10
  %i.dkr = load double, ptr %i.os, align 16, !tbaa !10
  %i.dks = load <2 x double>, ptr %i.ot, align 16
  %i.dkt = load double, ptr %i.ou, align 16, !tbaa !10
  %i.dku = load double, ptr %i.ov, align 16, !tbaa !10
  %i.dkv = load double, ptr %i.ow, align 16, !tbaa !10
  %i.dkw = load double, ptr %i.ox, align 16, !tbaa !10
  %i.dkx = fdiv double %i.dku, 1.800000e+02
  %i.dky = fmul double %i.dkx, f0x400921FB54442D18 ; 3 uses
  %i.dkz = fsub double %i.dkv, %i.dkq             ; 2 uses
  %i.dla = fsub double %i.dkw, %i.dkr
  %i.dlb = call double @cos(double noundef %i.dky) #24
  %i.dlc = call double @sin(double noundef %i.dky) #24 ; 2 uses
  %i.dld = fneg double %i.dkz
  %i.dle = call double @cos(double noundef %i.dky) #24
  %i.dlf = insertelement <2 x double> poison, double %i.dla, i64 0
  %i.dlg = shufflevector <2 x double> %i.dlf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dlh = insertelement <2 x double> poison, double %i.dlc, i64 0
  %i.dli = insertelement <2 x double> %i.dlh, double %i.dle, i64 1
  %i.dlj = fmul <2 x double> %i.dlg, %i.dli
  %i.dlk = insertelement <2 x double> poison, double %i.dkz, i64 0
  %i.dll = insertelement <2 x double> %i.dlk, double %i.dld, i64 1
  %i.dlm = insertelement <2 x double> poison, double %i.dlb, i64 0
  %i.dln = insertelement <2 x double> %i.dlm, double %i.dlc, i64 1
  %i.dlo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dll, <2 x double> %i.dln, <2 x double> %i.dlj)
  %i.dlp = insertelement <2 x double> %i.dks, double %i.dkt, i64 1
  %i.dlq = fdiv <2 x double> %i.dlo, %i.dlp       ; 2 uses
  %i.dlr = fmul <2 x double> %i.dlq, %i.dlq
  %i.dls = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.dlr)
  %i.dlt = fcmp ole double %i.dls, 1.000000e+00
  %..i1881 = zext i1 %i.dlt to i8
  %i.dlu = load ptr, ptr %i.oy, align 8, !tbaa !10
  %i.dlv = getelementptr inbounds i8, ptr %i.dlu, i64 %i.dgg
  store i8 %..i1881, ptr %i.dlv, align 1, !tbaa !10
  br label %bb.to

bb.to:                                            ; preds = %bb.tn, %bb.tm
  %.not1694 = icmp eq i64 %i.dkg, 0
  br i1 %.not1694, label %.loopexit2029, label %.lr.ph2084, !llvm.loop !362

bb.tp:                                            ; preds = %bb.cq
  %i.dlw = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.dlx = load i32, ptr %i.dlw, align 4, !tbaa !22
  switch i32 %i.dlx, label %.thread [
    i32 258, label %.preheader2033
    i32 259, label %.preheader2036
    i32 260, label %.preheader2039
    i32 261, label %.preheader2041
  ]

.preheader2041:                                   ; preds = %bb.tp
  %.not16662055 = icmp eq i64 %i.od, 0
  br i1 %.not16662055, label %.thread, label %.lr.ph2056

.lr.ph2056:                                       ; preds = %.preheader2041
  %i.dly = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dlz = load i32, ptr %i.dly, align 8, !tbaa !21
  %.not1667 = icmp eq i32 %i.dlz, 0
  %i.dma = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dmb = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 2 uses
  %i.dmc = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.dmd = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.dme = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.dmf = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dmg = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dmh = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.dmi = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dmj = load i32, ptr %i.dmi, align 4, !tbaa !21
  %.not1671 = icmp eq i32 %i.dmj, 0
  %i.dmk = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dml = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dmm = load i32, ptr %i.b, align 16, !tbaa !21
  %.not1671.1 = icmp eq i32 %i.dmm, 0
  br label %bb.ux

.preheader2039:                                   ; preds = %bb.tp
  %.not16722062 = icmp eq i64 %i.od, 0
  br i1 %.not16722062, label %.thread, label %.lr.ph2064

.lr.ph2064:                                       ; preds = %.preheader2039
  %i.dmn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dmo = load i32, ptr %i.dmn, align 8          ; 2 uses
  %i.dmp = icmp sgt i32 %i.dmo, 1
  %.not1674.not = icmp eq i32 %i.dmo, 0
  %i.dmq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dmr = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 2 uses
  %i.dms = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.dmt = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dmu = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dmv = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dmw = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dmx = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.dmy = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dmz = load i32, ptr %i.dmy, align 4          ; 2 uses
  %i.dna = icmp sgt i32 %i.dmz, 1
  %.not1678 = icmp eq i32 %i.dmz, 0
  %i.dnb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dnc = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dnd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dne = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dnf = load i32, ptr %i.b, align 16           ; 2 uses
  %i.dng = icmp sgt i32 %i.dnf, 1
  %.not1678.1.not = icmp eq i32 %i.dnf, 0
  br label %bb.um

.preheader2036:                                   ; preds = %bb.tp
  %.not16792070 = icmp eq i64 %i.od, 0
  br i1 %.not16792070, label %.thread, label %.lr.ph2072

.lr.ph2072:                                       ; preds = %.preheader2036
  %i.dnh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dni = load i32, ptr %i.dnh, align 8          ; 2 uses
  %i.dnj = icmp sgt i32 %i.dni, 1
  %.not1681.not = icmp eq i32 %i.dni, 0
  %i.dnk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dnl = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 2 uses
  %i.dnm = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.dnn = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dno = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dnp = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dnq = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dnr = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.dns = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dnt = load i32, ptr %i.dns, align 4          ; 2 uses
  %i.dnu = icmp sgt i32 %i.dnt, 1
  %.not1685 = icmp eq i32 %i.dnt, 0
  %i.dnv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dnw = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dny = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dnz = load i32, ptr %i.b, align 16           ; 2 uses
  %i.doa = icmp sgt i32 %i.dnz, 1
  %.not1685.1.not = icmp eq i32 %i.dnz, 0
  br label %bb.ub

.preheader2033:                                   ; preds = %bb.tp
  %.not16862078 = icmp eq i64 %i.od, 0
  br i1 %.not16862078, label %.thread, label %.lr.ph2080

.lr.ph2080:                                       ; preds = %.preheader2033
  %i.dob = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.doc = load i32, ptr %i.dob, align 8          ; 2 uses
  %i.dod = icmp sgt i32 %i.doc, 1
  %.not1688.not = icmp eq i32 %i.doc, 0
  %i.doe = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dof = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 2 uses
  %i.dog = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.doh = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.doi = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.doj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dok = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dol = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.dom = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.don = load i32, ptr %i.dom, align 4          ; 2 uses
  %i.doo = icmp sgt i32 %i.don, 1
  %.not1692 = icmp eq i32 %i.don, 0
  %i.dop = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.doq = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dor = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dos = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dot = load i32, ptr %i.b, align 16           ; 2 uses
  %i.dou = icmp sgt i32 %i.dot, 1
  %.not1692.1.not = icmp eq i32 %i.dot, 0
  br label %bb.tq

.loopexit2032:                                    ; preds = %bb.ua, %bb.tq
  %.83.lcssa = phi i64 [ %.822079, %bb.tq ], [ %i.doy, %bb.ua ]
  %.not1686 = icmp eq i64 %i.dov, 0
  br i1 %.not1686, label %.thread, label %bb.tq, !llvm.loop !363

bb.tq:                                            ; preds = %.lr.ph2080, %.loopexit2032
  %.in2468 = phi i64 [ %i.od, %.lr.ph2080 ], [ %i.dov, %.loopexit2032 ]
  %.822079 = phi i64 [ %i.og, %.lr.ph2080 ], [ %.83.lcssa, %.loopexit2032 ] ; 2 uses
  %i.dov = add nsw i64 %.in2468, -1               ; 6 uses
  %i.dow = load i64, ptr %i.oe, align 8, !tbaa !23 ; 2 uses
  %.not16872073 = icmp eq i64 %i.dow, 0
  br i1 %.not16872073, label %.loopexit2032, label %.lr.ph2076

.lr.ph2076:                                       ; preds = %bb.tq, %bb.ua
  %.in2469 = phi i64 [ %i.dox, %bb.ua ], [ %i.dow, %bb.tq ]
  %.832074 = phi i64 [ %i.doy, %bb.ua ], [ %.822079, %bb.tq ]
  %i.dox = add nsw i64 %.in2469, -1               ; 2 uses
  %i.doy = add nsw i64 %.832074, -1               ; 9 uses
  br i1 %.not1688.not, label %bb.tr, label %.sink.split3337

.sink.split3337:                                  ; preds = %.lr.ph2076
  %.mux = select i1 %i.dod, i64 %i.doy, i64 %i.dov ; 2 uses
  %i.doz = load ptr, ptr %i.doe, align 16, !tbaa !50 ; 2 uses
  %i.dpa = getelementptr inbounds nuw i8, ptr %i.doz, i64 128
  %i.dpb = load ptr, ptr %i.dpa, align 8, !tbaa !10
  %i.dpc = getelementptr inbounds i8, ptr %i.dpb, i64 %.mux
  %i.dpd = load i8, ptr %i.dpc, align 1, !tbaa !10
end_hunk_0
