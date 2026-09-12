Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 423
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_str_vappendf:bb.a
  %i.xz = sext i8 %i.xy to i64
  %i.ya = add i64 %i.xv, %i.xz
  %i.yb = mul i64 %i.ya, 10
  %i.yc = add i64 %i.yb, -480
  %i.yd = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv207.i
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 3
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !741
  %i.yg = sext i8 %i.yf to i64
  %i.yh = add i64 %i.yc, %i.yg                    ; 3 uses
  %indvars.iv.next208.i.3 = add nuw nsw i64 %indvars.iv207.i, 4 ; 2 uses
  %niter2128.next.3 = add nuw i64 %niter2128, 4   ; 2 uses
  %niter2128.ncmp.3 = icmp eq i64 %niter2128.next.3, %unroll_iter2127
  br i1 %niter2128.ncmp.3, label %._crit_edge191.i.loopexit.unr-lcssa, label %.lr.ph190.i, !llvm.loop !3741

._crit_edge191.i.loopexit.unr-lcssa:              ; preds = %.lr.ph190.i
  %lcmp.mod2124.not = icmp eq i64 %xtraiter2122, 0
  br i1 %lcmp.mod2124.not, label %._crit_edge191.i, label %.lr.ph190.i.epil.preheader

.lr.ph190.i.epil.preheader:                       ; preds = %._crit_edge191.i.loopexit.unr-lcssa, %.lr.ph190.preheader.i
  %indvars.iv207.i.epil.init = phi i64 [ 1, %.lr.ph190.preheader.i ], [ %indvars.iv.next208.i.3, %._crit_edge191.i.loopexit.unr-lcssa ]
  %.0121.in189.i.epil.init = phi i64 [ %i.xd, %.lr.ph190.preheader.i ], [ %i.yh, %._crit_edge191.i.loopexit.unr-lcssa ]
  %lcmp.mod2126 = icmp ne i64 %xtraiter2122, 0
  call void @llvm.assume(i1 %lcmp.mod2126)
  br label %.lr.ph190.i.epil

.lr.ph190.i.epil:                                 ; preds = %.lr.ph190.i.epil, %.lr.ph190.i.epil.preheader
  %indvars.iv207.i.epil = phi i64 [ %indvars.iv207.i.epil.init, %.lr.ph190.i.epil.preheader ], [ %indvars.iv.next208.i.epil, %.lr.ph190.i.epil ] ; 2 uses
  %.0121.in189.i.epil = phi i64 [ %.0121.in189.i.epil.init, %.lr.ph190.i.epil.preheader ], [ %i.yn, %.lr.ph190.i.epil ]
  %epil.iter2123 = phi i64 [ 0, %.lr.ph190.i.epil.preheader ], [ %epil.iter2123.next, %.lr.ph190.i.epil ]
  %i.yi = mul i64 %.0121.in189.i.epil, 10
  %i.yj = add i64 %i.yi, -480
  %i.yk = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv207.i.epil
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !741
  %i.ym = sext i8 %i.yl to i64
  %i.yn = add i64 %i.yj, %i.ym                    ; 2 uses
  %indvars.iv.next208.i.epil = add nuw nsw i64 %indvars.iv207.i.epil, 1
  %epil.iter2123.next = add i64 %epil.iter2123, 1 ; 2 uses
  %epil.iter2123.cmp.not = icmp eq i64 %epil.iter2123.next, %xtraiter2122
  br i1 %epil.iter2123.cmp.not, label %._crit_edge191.i, label %.lr.ph190.i.epil, !llvm.loop !3742

._crit_edge191.i:                                 ; preds = %._crit_edge191.i.loopexit.unr-lcssa, %.lr.ph190.i.epil, %.critedge.thread.i
  %.0123187.lcssa231.i = phi i32 [ 1, %.critedge.thread.i ], [ %.0123187.lcssa.ph.i, %.lr.ph190.i.epil ], [ %.0123187.lcssa.ph.i, %._crit_edge191.i.loopexit.unr-lcssa ]
  %.0121.in.lcssa.i = phi i64 [ %i.xc, %.critedge.thread.i ], [ %i.yh, %._crit_edge191.i.loopexit.unr-lcssa ], [ %i.yn, %.lr.ph190.i.epil ]
  %i.yo = add i64 %.0121.in.lcssa.i, -47
  br label %.thread171.sink.split.i

bb.fx:                                            ; preds = %bb.fv
  %.not147.i = icmp slt i32 %i.va, %.0130163.i
  br i1 %.not147.i, label %bb.fy, label %.preheader2060

.thread169.i:                                     ; preds = %bb.fw
  %.not147170.i = icmp slt i32 %i.va, %.0130163.i
  br i1 %.not147170.i, label %.thread171.i, label %.preheader2060

bb.fy:                                            ; preds = %bb.fx
  %i.yp = icmp eq i8 %i.vi, 48
  br i1 %i.yp, label %bb.fz, label %.thread171.i

bb.fz:                                            ; preds = %bb.fy
  %i.yq = getelementptr i8, ptr %i.vc, i64 15
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !741
  %i.ys = icmp eq i8 %i.yr, 48
  br i1 %i.ys, label %bb.ga, label %.thread171.i

bb.ga:                                            ; preds = %bb.fz
  %i.yt = getelementptr i8, ptr %i.vc, i64 14
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !741
  %i.yv = icmp eq i8 %i.yu, 48
  br i1 %i.yv, label %.preheader2060, label %.thread171.i

.preheader2060:                                   ; preds = %bb.ga, %.thread169.i, %bb.fx
  br label %bb.gb

bb.gb:                                            ; preds = %.preheader2060, %bb.gb
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i, %bb.gb ], [ 14, %.preheader2060 ] ; 5 uses
  %i.yw = getelementptr i8, ptr %i.vb, i64 %indvars.iv199.i
  %i.yx = getelementptr i8, ptr %i.yw, i64 -1
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !741
  %i.yz = icmp eq i8 %i.yy, 48
  %indvars.iv.next200.i = add i64 %indvars.iv199.i, -1
  br i1 %i.yz, label %bb.gb, label %bb.gc, !llvm.loop !3743

bb.gc:                                            ; preds = %bb.gb
  %indvars1502.le = trunc i64 %indvars.iv199.i to i32 ; 3 uses
  %i.za = load i8, ptr %i.vb, align 1, !tbaa !741
  %i.zb = sext i8 %i.za to i64
  %.0118180.i = add nsw i64 %i.zb, -48            ; 3 uses
  %i.zc = icmp sgt i64 %indvars.iv199.i, 1
  br i1 %i.zc, label %.lr.ph184.preheader.i, label %.thread171.sink.split.i

.lr.ph184.preheader.i:                            ; preds = %bb.gc
  %wide.trip.count.i = and i64 %indvars.iv199.i, 4294967295 ; 2 uses
  %i.zd = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.ze = add nsw i64 %wide.trip.count.i, -2
  %xtraiter2116 = and i64 %i.zd, 3                ; 3 uses
  %i.zf = icmp ult i64 %i.ze, 3
  br i1 %i.zf, label %.lr.ph184.i.epil.preheader, label %.lr.ph184.preheader.i.new

.lr.ph184.preheader.i.new:                        ; preds = %.lr.ph184.preheader.i
  %unroll_iter2120 = and i64 %i.zd, -4
  br label %.lr.ph184.i

.lr.ph184.i:                                      ; preds = %.lr.ph184.i, %.lr.ph184.preheader.i.new
  %indvars.iv202.i = phi i64 [ 1, %.lr.ph184.preheader.i.new ], [ %indvars.iv.next203.i.3, %.lr.ph184.i ] ; 5 uses
  %.0118182.i = phi i64 [ %.0118180.i, %.lr.ph184.preheader.i.new ], [ %.0118.i.3, %.lr.ph184.i ]
  %niter2121 = phi i64 [ 0, %.lr.ph184.preheader.i.new ], [ %niter2121.next.3, %.lr.ph184.i ]
  %i.zg = mul i64 %.0118182.i, 10
  %i.zh = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv202.i
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !741
  %i.zj = sext i8 %i.zi to i64
  %i.zk = add i64 %i.zg, -48
  %.0118.i = add i64 %i.zk, %i.zj
  %i.zl = mul i64 %.0118.i, 10
  %i.zm = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv202.i
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 1
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !741
  %i.zp = sext i8 %i.zo to i64
  %i.zq = add i64 %i.zl, -48
  %.0118.i.1 = add i64 %i.zq, %i.zp
  %i.zr = mul i64 %.0118.i.1, 10
  %i.zs = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv202.i
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 2
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !741
  %i.zv = sext i8 %i.zu to i64
  %i.zw = add i64 %i.zr, -48
  %.0118.i.2 = add i64 %i.zw, %i.zv
  %i.zx = mul i64 %.0118.i.2, 10
  %i.zy = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv202.i
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 3
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !741
  %i.aab = sext i8 %i.aaa to i64
  %indvars.iv.next203.i.3 = add nuw nsw i64 %indvars.iv202.i, 4 ; 2 uses
  %i.aac = add i64 %i.zx, -48
  %.0118.i.3 = add i64 %i.aac, %i.aab             ; 3 uses
  %niter2121.next.3 = add nuw i64 %niter2121, 4   ; 2 uses
  %niter2121.ncmp.3 = icmp eq i64 %niter2121.next.3, %unroll_iter2120
  br i1 %niter2121.ncmp.3, label %.thread171.sink.split.i.loopexit.unr-lcssa, label %.lr.ph184.i, !llvm.loop !3744

.thread171.sink.split.i.loopexit.unr-lcssa:       ; preds = %.lr.ph184.i
  %lcmp.mod2117.not = icmp eq i64 %xtraiter2116, 0
  br i1 %lcmp.mod2117.not, label %.thread171.sink.split.i, label %.lr.ph184.i.epil.preheader

.lr.ph184.i.epil.preheader:                       ; preds = %.thread171.sink.split.i.loopexit.unr-lcssa, %.lr.ph184.preheader.i
  %indvars.iv202.i.epil.init = phi i64 [ 1, %.lr.ph184.preheader.i ], [ %indvars.iv.next203.i.3, %.thread171.sink.split.i.loopexit.unr-lcssa ]
  %.0118182.i.epil.init = phi i64 [ %.0118180.i, %.lr.ph184.preheader.i ], [ %.0118.i.3, %.thread171.sink.split.i.loopexit.unr-lcssa ]
  %lcmp.mod2119 = icmp ne i64 %xtraiter2116, 0
  call void @llvm.assume(i1 %lcmp.mod2119)
  br label %.lr.ph184.i.epil

.lr.ph184.i.epil:                                 ; preds = %.lr.ph184.i.epil, %.lr.ph184.i.epil.preheader
  %indvars.iv202.i.epil = phi i64 [ %indvars.iv202.i.epil.init, %.lr.ph184.i.epil.preheader ], [ %indvars.iv.next203.i.epil, %.lr.ph184.i.epil ] ; 2 uses
  %.0118182.i.epil = phi i64 [ %.0118182.i.epil.init, %.lr.ph184.i.epil.preheader ], [ %.0118.i.epil, %.lr.ph184.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph184.i.epil.preheader ], [ %epil.iter.next, %.lr.ph184.i.epil ]
  %i.aad = mul i64 %.0118182.i.epil, 10
  %i.aae = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv202.i.epil
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !741
  %i.aag = sext i8 %i.aaf to i64
  %indvars.iv.next203.i.epil = add nuw nsw i64 %indvars.iv202.i.epil, 1
  %i.aah = add i64 %i.aad, -48
  %.0118.i.epil = add i64 %i.aah, %i.aag          ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2116
  br i1 %epil.iter.cmp.not, label %.thread171.sink.split.i, label %.lr.ph184.i.epil, !llvm.loop !3745

.thread171.sink.split.i:                          ; preds = %.thread171.sink.split.i.loopexit.unr-lcssa, %.lr.ph184.i.epil, %bb.gc, %._crit_edge191.i, %.preheader173.13.i
  %.0123176.sink238.i = phi i32 [ 0, %.preheader173.13.i ], [ %.0123187.lcssa231.i, %._crit_edge191.i ], [ %indvars1502.le, %bb.gc ], [ %indvars1502.le, %.lr.ph184.i.epil ], [ %indvars1502.le, %.thread171.sink.split.i.loopexit.unr-lcssa ] ; 2 uses
  %.1.sink.i = phi i64 [ 1, %.preheader173.13.i ], [ %i.yo, %._crit_edge191.i ], [ %.0118180.i, %bb.gc ], [ %.0118.i.3, %.thread171.sink.split.i.loopexit.unr-lcssa ], [ %.0118.i.epil, %.lr.ph184.i.epil ]
  %i.aai = add i32 %i.rq, %.0123176.sink238.i
  %i.aaj = sub i32 %.0130163.i, %i.aai
  %i.aak = call fastcc double @sqlite3Fp10Convert2(i64 noundef %.1.sink.i, i32 noundef %i.aaj)
  %i.aal = fcmp oeq double %.0124.i, %i.aak
  %i.aam = add nsw i32 %.0123176.sink238.i, 1
  %spec.select150.i = select i1 %i.aal, i32 %i.aam, i32 17
  br label %.thread171.i

.thread171.i:                                     ; preds = %.thread171.sink.split.i, %bb.ga, %bb.fz, %bb.fy, %.thread169.i, %bb.fu
  %.4.i = phi i32 [ %i.vf, %bb.fu ], [ 17, %.thread169.i ], [ 17, %bb.ga ], [ 17, %bb.fz ], [ 17, %bb.fy ], [ %spec.select150.i, %.thread171.sink.split.i ] ; 4 uses
  %i.aan = sext i32 %.4.i to i64                  ; 2 uses
  %i.aao = getelementptr inbounds i8, ptr %i.vb, i64 %i.aan
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !741
  %i.aaq = icmp sgt i8 %i.aap, 52
  br i1 %i.aaq, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %.thread171.i, %bb.gd
  %indvars.iv212.i = phi i64 [ %indvars.iv.next213.i, %bb.gd ], [ %i.aan, %.thread171.i ]
  %indvars.iv.next213.i = add nsw i64 %indvars.iv212.i, -1 ; 3 uses
  %i.aar = getelementptr inbounds i8, ptr %i.vb, i64 %indvars.iv.next213.i ; 3 uses
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !741
  %i.aat = add i8 %i.aas, 1                       ; 2 uses
  store i8 %i.aat, ptr %i.aar, align 1, !tbaa !741
  %i.aau = icmp slt i8 %i.aat, 58
  br i1 %i.aau, label %.loopexit.i, label %bb.gd

bb.gd:                                            ; preds = %.preheader.i
  store i8 48, ptr %i.aar, align 1, !tbaa !741
  %i.aav = icmp eq i64 %indvars.iv.next213.i, 0
  br i1 %i.aav, label %bb.ge, label %.preheader.i

bb.ge:                                            ; preds = %bb.gd
  store i8 49, ptr %i.vc, align 1, !tbaa !741
  %i.aaw = add nsw i32 %.4.i, 1
  %i.aax = load i32, ptr %i.af, align 4, !tbaa !3779
  %i.aay = add nsw i32 %i.aax, 1
  store i32 %i.aay, ptr %i.af, align 4, !tbaa !3779
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.ge, %.thread171.i, %bb.ft, %bb.fs, %bb.fq
  %.2132.i = phi i32 [ %i.uk, %bb.fs ], [ %.4.i, %.thread171.i ], [ %.0130163.i, %bb.ft ], [ %i.uk, %bb.fq ], [ %i.aaw, %bb.ge ], [ %.4.i, %.preheader.i ]
  %.1128.i = phi ptr [ %i.up, %bb.fs ], [ %i.vb, %.thread171.i ], [ %i.vb, %bb.ft ], [ %i.up, %bb.fq ], [ %i.vc, %bb.ge ], [ %i.vb, %.preheader.i ] ; 2 uses
  %i.aaz = sext i32 %.2132.i to i64
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gf, %.loopexit.i
  %indvars.iv215.i = phi i64 [ %indvars.iv.next216.i, %bb.gf ], [ %i.aaz, %.loopexit.i ] ; 3 uses
  %i.aba = getelementptr i8, ptr %.1128.i, i64 %indvars.iv215.i
  %i.abb = getelementptr i8, ptr %i.aba, i64 -1
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !741
  %i.abd = icmp eq i8 %i.abc, 48
  %indvars.iv.next216.i = add nsw i64 %indvars.iv215.i, -1
  br i1 %i.abd, label %bb.gf, label %bb.gg, !llvm.loop !3746

bb.gg:                                            ; preds = %bb.gf
  %i.abe = trunc nsw i64 %indvars.iv215.i to i32
  store i32 %i.abe, ptr %3, align 8, !tbaa !3778
  %.pr.pre = load i8, ptr %i.ad, align 1, !tbaa !3776
  br label %sqlite3FpDecode.exit

sqlite3FpDecode.exit:                             ; preds = %bb.gg, %bb.fb
  %i.abf = phi i8 [ %i.ra, %bb.fb ], [ %.pr.pre, %bb.gg ]
  %.1128.sink.i = phi ptr [ %i.ag, %bb.fb ], [ %.1128.i, %bb.gg ] ; 2 uses
  store ptr %.1128.sink.i, ptr %i.ah, align 8, !tbaa !3780
  switch i8 %i.abf, label %bb.gi [
    i8 0, label %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge
    i8 2, label %bb.gh
  ]

sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge: ; preds = %sqlite3FpDecode.exit
  %.pre.pre.pre = load i32, ptr %i.af, align 4
  br label %sqlite3FpDecode.exit._crit_edge

bb.gh:                                            ; preds = %sqlite3FpDecode.exit
  %.not884 = icmp eq i8 %.16881111, 0             ; 2 uses
  %i.abg = select i1 %.not884, ptr @.str.2, ptr @.str.1
  %i.abh = select i1 %.not884, i32 3, i32 4
  br label %printfTempBuf.exit959

bb.gi:                                            ; preds = %sqlite3FpDecode.exit
  %.not872 = icmp eq i8 %.16881111, 0
  br i1 %.not872, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  store i8 57, ptr %.1128.sink.i, align 1, !tbaa !741
  store i32 1000, ptr %i.af, align 4, !tbaa !3779
  store i32 1, ptr %3, align 8, !tbaa !3778
  br label %sqlite3FpDecode.exit._crit_edge

bb.gk:                                            ; preds = %bb.gi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  %i.abi = load i8, ptr %i.ae, align 4, !tbaa !3777
  %i.abj = icmp eq i8 %i.abi, 45
  br i1 %i.abj, label %bb.gn, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %.not873 = icmp eq i8 %.16991105, 0
  br i1 %.not873, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  store i8 %.16991105, ptr %i.a, align 16, !tbaa !741
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gl, %bb.gm, %bb.gk
  %.9748 = phi ptr [ %i.a, %bb.gk ], [ %i.a, %bb.gm ], [ %i.z, %bb.gl ] ; 2 uses
  %i.abk = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.9748) #60
  %i.abl = trunc i64 %i.abk to i32
  %i.abm = and i32 %i.abl, 1073741823
  br label %printfTempBuf.exit959

sqlite3FpDecode.exit._crit_edge:                  ; preds = %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge, %bb.gj
  %.pre.ph = phi i32 [ %.pre.pre.pre, %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge ], [ 1000, %bb.gj ] ; 3 uses
  %.pr = load i8, ptr %i.ae, align 4, !tbaa !3777
  %i.abn = icmp eq i8 %.pr, 45
  br i1 %i.abn, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %sqlite3FpDecode.exit._crit_edge
  %i.abo = icmp eq i8 %.16931107, 0
  %i.abp = icmp ne i8 %.16991105, 0
  %or.cond10.not876.not1218 = select i1 %i.abo, i1 true, i1 %i.abp
  %or.cond13.not1215 = or i1 %or.cond10.not876.not1218, %i.qn
  %.not877 = icmp sgt i32 %.pre.ph, %.0626
  %or.cond = select i1 %or.cond13.not1215, i1 true, i1 %.not877
  %spec.select916 = select i1 %or.cond, i8 45, i8 0
  br label %bb.gp

bb.gp:                                            ; preds = %sqlite3FpDecode.exit._crit_edge.thread, %bb.go, %sqlite3FpDecode.exit._crit_edge
  %.pre1927 = phi i32 [ %.pre.ph, %bb.go ], [ %.pre.ph, %sqlite3FpDecode.exit._crit_edge ], [ 1, %sqlite3FpDecode.exit._crit_edge.thread ] ; 4 uses
  %.2671 = phi i8 [ %spec.select916, %bb.go ], [ %.16991105, %sqlite3FpDecode.exit._crit_edge ], [ %.16991105, %sqlite3FpDecode.exit._crit_edge.thread ] ; 3 uses
  %i.abq = and i32 %.0714, -9                     ; 2 uses
  %i.abr = icmp eq i32 %i.abq, 3
  br i1 %i.abr, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.abs = xor i8 %.16931107, 1
  %i.abt = icmp slt i32 %.pre1927, -3
  %i.abu = icmp sgt i32 %.pre1927, %.6734
  %or.cond903 = select i1 %i.abt, i1 true, i1 %i.abu ; 2 uses
  %i.abv = sub i32 0, %.pre1927
  %spec.select917.p = select i1 %or.cond903, i32 -1, i32 %i.abv
  %spec.select917 = add i32 %spec.select917.p, %.6734
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gp
  %i.abw = icmp eq i32 %i.abq, 1
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gq, %bb.gr
  %.7735 = phi i32 [ %.6734, %bb.gr ], [ %spec.select917, %bb.gq ]
  %.1674 = phi i1 [ %i.abw, %bb.gr ], [ %or.cond903, %bb.gq ] ; 2 uses
  %.0644 = phi i8 [ %.16901109, %bb.gr ], [ %i.abs, %bb.gq ]
  %.7735.fr = freeze i32 %.7735                   ; 4 uses
  %i.abx = add nsw i32 %.pre1927, -1
  %.0645 = select i1 %.1674, i32 0, i32 %i.abx    ; 6 uses
  %i.aby = icmp sgt i32 %.0645, 0
  %i.abz = call i32 @llvm.smax.i32(i32 %.0645, i32 0)
  %i.aca = zext nneg i32 %i.abz to i64
  %i.acb = sext i32 %.7735.fr to i64
  %i.acc = zext nneg i32 %.37061101 to i64
  %i.acd = add nuw nsw i64 %i.acc, 15
  %i.ace = add nsw i64 %i.acd, %i.acb
  %i.acf = add nsw i64 %i.ace, %i.aca             ; 2 uses
  %i.acg = icmp ne i8 %.16771115, 0               ; 2 uses
  %or.cond15 = select i1 %i.acg, i1 %i.aby, i1 false
  br i1 %or.cond15, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.ach = add nuw nsw i32 %.0645, 2
  %i.aci = udiv i32 %i.ach, 3
  %i.acj = zext nneg i32 %i.aci to i64
  %i.ack = add nsw i64 %i.acf, %i.acj
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.0620 = phi i64 [ %i.ack, %bb.gt ], [ %i.acf, %bb.gs ] ; 5 uses
  %i.acl = icmp sgt i64 %.0620, 70
  br i1 %i.acl, label %bb.gv, label %bb.hm

bb.gv:                                            ; preds = %bb.gu
  %i.acm = load i8, ptr %i.x, align 4, !tbaa !771
  %.not.i957 = icmp eq i8 %i.acm, 0
  br i1 %.not.i957, label %bb.gw, label %printfTempBuf.exit959.thread1161

bb.gw:                                            ; preds = %bb.gv
  %i.acn = load i32, ptr %i.r, align 8, !tbaa !760
  %i.aco = zext i32 %i.acn to i64
  %i.acp = icmp samesign ugt i64 %.0620, %i.aco
  br i1 %i.acp, label %bb.gx, label %bb.hf

bb.gx:                                            ; preds = %bb.gw
  %i.acq = load i32, ptr %i.y, align 4, !tbaa !772 ; 2 uses
  %i.acr = zext i32 %i.acq to i64
  %i.acs = icmp samesign ugt i64 %.0620, %i.acr
  br i1 %i.acs, label %bb.gy, label %bb.hf

bb.gy:                                            ; preds = %bb.gx
  store i8 18, ptr %i.x, align 4, !tbaa !771
  %.not.i1031 = icmp eq i32 %i.acq, 0
  br i1 %.not.i1031, label %bb.hc, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.act = load i8, ptr %i.b, align 1, !tbaa !758 ; 2 uses
  %i.acu = and i8 %i.act, 4
  %.not.i.i1032 = icmp eq i8 %i.acu, 0
  br i1 %.not.i.i1032, label %sqlite3_str_reset.exit.i1036, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.acv = load ptr, ptr %i.s, align 8, !tbaa !762 ; 2 uses
  %.not.i.i.i1033 = icmp eq ptr %i.acv, null
  br i1 %.not.i.i.i1033, label %sqlite3DbFree.exit.i.i1035, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.acw = load ptr, ptr %0, align 8, !tbaa !773
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.acw, ptr noundef nonnull %i.acv)
  %.pre.i.i1034 = load i8, ptr %i.b, align 1, !tbaa !758
  br label %sqlite3DbFree.exit.i.i1035

sqlite3DbFree.exit.i.i1035:                       ; preds = %bb.hb, %bb.ha
  %i.acx = phi i8 [ %i.act, %bb.ha ], [ %.pre.i.i1034, %bb.hb ]
  %i.acy = and i8 %i.acx, -5
  store i8 %i.acy, ptr %i.b, align 1, !tbaa !758
  br label %sqlite3_str_reset.exit.i1036

sqlite3_str_reset.exit.i1036:                     ; preds = %sqlite3DbFree.exit.i.i1035, %bb.gz
  store i32 0, ptr %i.r, align 8, !tbaa !760
  store i32 0, ptr %i.q, align 8, !tbaa !759
  store ptr null, ptr %i.s, align 8, !tbaa !762
  br label %bb.hc

bb.hc:                                            ; preds = %sqlite3_str_reset.exit.i1036, %bb.gy
  %i.acz = load ptr, ptr %0, align 8, !tbaa !773  ; 2 uses
  %i.ada = icmp eq ptr %i.acz, null
  br i1 %i.ada, label %printfTempBuf.exit959.thread1161, label %bb.hd

end_hunk_0
begin_hunk_1_@sessionChangesetNext:bb.a
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %index ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %wide.load = load <4 x i8>, ptr %i.fh, align 1, !tbaa !741
  %wide.load112 = load <4 x i8>, ptr %i.fi, align 1, !tbaa !741
  %i.fj = icmp ne <4 x i8> %wide.load, zeroinitializer
  %i.fk = icmp ne <4 x i8> %wide.load112, zeroinitializer
  %i.fl = zext <4 x i1> %i.fj to <4 x i32>
  %i.fm = zext <4 x i1> %i.fk to <4 x i32>
  %i.fn = add <4 x i32> %vec.phi, %i.fl           ; 2 uses
  %i.fo = add <4 x i32> %vec.phi111, %i.fm        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %middle.block, label %vector.body, !llvm.loop !4178

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fo, %i.fn
  %i.fq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit220.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph231.i, %middle.block
  %indvars.iv241.i.ph = phi i64 [ 0, %.lr.ph231.i ], [ %n.vec, %middle.block ]
  %.0230.i.ph = phi i32 [ 0, %.lr.ph231.i ], [ %i.fq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv241.i = phi i64 [ %indvars.iv.next242.i, %scalar.ph ], [ %indvars.iv241.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0230.i = phi i32 [ %spec.select.i, %scalar.ph ], [ %.0230.i.ph, %scalar.ph.preheader ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv241.i
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !741
  %.not201.i = icmp ne i8 %i.fs, 0
  %i.ft = zext i1 %.not201.i to i32
  %spec.select.i = add nuw nsw i32 %.0230.i, %i.ft ; 2 uses
  %indvars.iv.next242.i = add nuw nsw i64 %indvars.iv241.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next242.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit220.i, label %scalar.ph, !llvm.loop !4179

.loopexit220.i:                                   ; preds = %scalar.ph, %middle.block, %.preheader219.i, %bb.an, %bb.am
  %.2.i = phi i32 [ %i.fb, %bb.am ], [ %i.fe, %bb.an ], [ 0, %.preheader219.i ], [ %i.fq, %middle.block ], [ %spec.select.i, %scalar.ph ]
  %i.fu = call fastcc i32 @sessionChangesetBufferRecord(ptr noundef nonnull %0, i32 noundef %.2.i, ptr noundef %2) ; 3 uses
  store i32 %i.fu, ptr %i.d, align 4, !tbaa !1589
  %.not202.i = icmp eq i32 %i.fu, 0
  br i1 %.not202.i, label %bb.ao, label %sessionChangesetNextOne.exit

bb.ao:                                            ; preds = %.loopexit220.i
  %i.fv = load ptr, ptr %i.m, align 8, !tbaa !1582
  %i.fw = load i32, ptr %i.g, align 8, !tbaa !1592 ; 2 uses
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds i8, ptr %i.fv, i64 %i.fx
  store ptr %i.fy, ptr %1, align 8, !tbaa !747
  %i.fz = load i32, ptr %2, align 4, !tbaa !576
  %i.ga = add nsw i32 %i.fz, %i.fw
  store i32 %i.ga, ptr %i.g, align 8, !tbaa !1592
  br label %sessionChangesetNextOne.exit.thread

bb.ap:                                            ; preds = %bb.ak
  %i.gb = load i32, ptr %i.t, align 4, !tbaa !1586
  %.not190.i = icmp eq i32 %i.gb, 0               ; 2 uses
  %i.gc = load ptr, ptr %i.e, align 8, !tbaa !1590 ; 3 uses
  %i.gd = load i32, ptr %i.f, align 8, !tbaa !1591 ; 2 uses
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.ge ; 2 uses
  %..i = select i1 %.not190.i, ptr %i.gc, ptr %i.gf
  %.303.i = select i1 %.not190.i, ptr %i.gf, ptr %i.gc
  %.not192.i = icmp ne i8 %.0162.i, 18
  %i.gg = icmp eq i8 %.0162.i, 9
  %or.cond.i = or i1 %i.gg, %.not186.i
  %or.cond217.i = and i1 %.not192.i, %or.cond.i
  br i1 %or.cond217.i, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not186.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gh = load ptr, ptr %i.r, align 8, !tbaa !1602
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gi = phi ptr [ %i.gh, %bb.ar ], [ null, %bb.aq ]
  %i.gj = call fastcc i32 @sessionReadRecord(ptr noundef nonnull %0, i32 noundef %i.gd, ptr noundef %i.gi, ptr noundef %..i, ptr noundef null) ; 3 uses
  store i32 %i.gj, ptr %i.d, align 4, !tbaa !1589
  %.not194.i = icmp eq i32 %i.gj, 0
  br i1 %.not194.i, label %._crit_edge255.i, label %sessionChangesetNextOne.exit

._crit_edge255.i:                                 ; preds = %bb.as
  %.pre256.i = load i32, ptr %i.u, align 4, !tbaa !1604
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge255.i, %bb.ap
  %i.gk = phi i32 [ %.pre256.i, %._crit_edge255.i ], [ %i.ep, %bb.ap ]
  %.not195.i = icmp eq i32 %i.gk, 9
  br i1 %.not195.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gl = load i32, ptr %i.f, align 8, !tbaa !1591
  %i.gm = call fastcc i32 @sessionReadRecord(ptr noundef nonnull %0, i32 noundef %i.gl, ptr noundef null, ptr noundef %.303.i, ptr noundef nonnull %i.c) ; 3 uses
  store i32 %i.gm, ptr %i.d, align 4, !tbaa !1589
  %.not196.i = icmp eq i32 %i.gm, 0
  br i1 %.not196.i, label %bb.av, label %sessionChangesetNextOne.exit

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.gn = load i32, ptr %i.n, align 8, !tbaa !1600
  %.not197.i = icmp eq i32 %i.gn, 0               ; 2 uses
  br i1 %.not197.i, label %bb.aw, label %._crit_edge259.i

._crit_edge259.i:                                 ; preds = %bb.av
  %.pre260.i = load i32, ptr %i.u, align 4, !tbaa !1604
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.go = load i32, ptr %i.t, align 4, !tbaa !1586
  %.not198.i = icmp eq i32 %i.go, 0
  %.pre261.i = load i32, ptr %i.u, align 4, !tbaa !1604 ; 2 uses
  br i1 %.not198.i, label %.thread212.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge259.i
  %i.gp = phi i32 [ %.pre260.i, %._crit_edge259.i ], [ %.pre261.i, %bb.aw ] ; 4 uses
  %i.gq = icmp eq i32 %i.gp, 23
  br i1 %i.gq, label %.preheader218.i, label %bb.bc

.preheader218.i:                                  ; preds = %bb.ax
  %i.gr = load i32, ptr %i.f, align 8, !tbaa !1591 ; 2 uses
  %i.gs = icmp sgt i32 %i.gr, 0
  br i1 %i.gs, label %.lr.ph234.i, label %.loopexit.i

.lr.ph234.i:                                      ; preds = %.preheader218.i
  %i.gt = load ptr, ptr %i.r, align 8, !tbaa !1602
  %i.gu = zext nneg i32 %i.gr to i64              ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bb, %.lr.ph234.i
  %indvars.iv244.i = phi i64 [ 0, %.lr.ph234.i ], [ %indvars.iv.next245.i, %bb.bb ] ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv244.i
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !741
  %.not200.i = icmp eq i8 %i.gw, 0
  br i1 %.not200.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gx = load ptr, ptr %i.e, align 8, !tbaa !1590
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv244.i ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.gu ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !767 ; 2 uses
  store ptr %i.ha, ptr %i.gy, align 8, !tbaa !767
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %.critedge.sink.split, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr null, ptr %i.gz, align 8, !tbaa !767
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ay
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next245.i, %i.gu
  br i1 %exitcond248.not.i, label %.loopexit.i, label %bb.ay, !llvm.loop !4180

bb.bc:                                            ; preds = %bb.ax
  %.pr.i = load i32, ptr %i.t, align 4, !tbaa !1586
  %.not199.i = icmp eq i32 %.pr.i, 0
  br i1 %.not199.i, label %.loopexit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  switch i32 %i.gp, label %.loopexit.i [
    i32 18, label %.loopexit.sink.split.i
    i32 9, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.be, %bb.bd
  %.sink.i = phi i32 [ 18, %bb.be ], [ 9, %bb.bd ] ; 2 uses
  store i32 %.sink.i, ptr %i.u, align 4, !tbaa !1604
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bb, %.loopexit.sink.split.i, %bb.bd, %bb.bc, %.preheader218.i
  %i.hc = phi i32 [ %.sink.i, %.loopexit.sink.split.i ], [ 23, %.preheader218.i ], [ %i.gp, %bb.bd ], [ %i.gp, %bb.bc ], [ 23, %bb.bb ]
  br i1 %.not197.i, label %.thread212.i, label %sessionChangesetNextOne.exit.thread

.thread212.i:                                     ; preds = %.loopexit.i, %bb.aw
  %i.hd = phi i32 [ %i.hc, %.loopexit.i ], [ %.pre261.i, %bb.aw ]
  %i.he = icmp eq i32 %i.hd, 23
  br i1 %i.he, label %.preheader.i, label %sessionChangesetNextOne.exit.thread

.preheader.i:                                     ; preds = %.thread212.i
  %i.hf = load i32, ptr %i.f, align 8, !tbaa !1591 ; 2 uses
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph236.i, label %sessionChangesetNextOne.exit.thread

.lr.ph236.i:                                      ; preds = %.preheader.i, %bb.bh
  %i.hh = phi i32 [ %i.hx, %bb.bh ], [ %i.hf, %.preheader.i ] ; 3 uses
  %indvars.iv249.i = phi i64 [ %indvars.iv.next250.i, %bb.bh ], [ 0, %.preheader.i ] ; 5 uses
  %i.hi = load ptr, ptr %i.r, align 8, !tbaa !1602
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %indvars.iv249.i
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !741
  %i.hl = icmp eq i8 %i.hk, 0
  br i1 %i.hl, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %.lr.ph236.i
  %i.hm = load ptr, ptr %i.e, align 8, !tbaa !1590 ; 2 uses
  %i.hn = trunc nuw nsw i64 %indvars.iv249.i to i32
  %i.ho = add nsw i32 %i.hh, %i.hn
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.hp
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !767
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv249.i
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !767
  call fastcc void @sqlite3ValueFree(ptr noundef %i.hu)
  %i.hv = load ptr, ptr %i.e, align 8, !tbaa !1590
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv249.i
  store ptr null, ptr %i.hw, align 8, !tbaa !767
  %.pre258.i = load i32, ptr %i.f, align 8, !tbaa !1591
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %.lr.ph236.i
  %i.hx = phi i32 [ %i.hh, %.lr.ph236.i ], [ %i.hh, %bb.bf ], [ %.pre258.i, %bb.bg ] ; 2 uses
  %indvars.iv.next250.i = add nuw nsw i64 %indvars.iv249.i, 1 ; 2 uses
  %i.hy = sext i32 %i.hx to i64
  %i.hz = icmp slt i64 %indvars.iv.next250.i, %i.hy
  br i1 %i.hz, label %.lr.ph236.i, label %sessionChangesetNextOne.exit.thread, !llvm.loop !4181

sessionChangesetNextOne.exit:                     ; preds = %sessionChangesetReadTblhdr.exit.i, %bb.ad, %.split, %bb.f, %.loopexit220.i, %bb.as, %bb.au
  %.4.i = phi i32 [ %i.gj, %bb.as ], [ %i.y, %.split ], [ %i.au, %bb.f ], [ %i.fu, %.loopexit220.i ], [ %i.gm, %bb.au ], [ %i.em, %bb.ad ], [ %.037.i.i, %sessionChangesetReadTblhdr.exit.i ] ; 2 uses
  %i.ia = icmp eq i32 %.4.i, 100
  br i1 %i.ia, label %sessionChangesetNextOne.exit.thread, label %.critedge

sessionChangesetNextOne.exit.thread:              ; preds = %bb.bh, %bb.ao, %.preheader.i, %.thread212.i, %.loopexit.i, %sessionChangesetNextOne.exit
  %i.ib = load i32, ptr %i.w, align 8, !tbaa !1585
  %i.ic = icmp ne i32 %i.ib, 0
  %i.id = load i32, ptr %i.c, align 4
  %i.ie = icmp ne i32 %i.id, 0
  %or.cond = select i1 %i.ic, i1 %i.ie, i1 false
  br i1 %or.cond, label %.splitthread-pre-split, label %.critedge, !llvm.loop !4182

.critedge.sink.split:                             ; preds = %bb.ai, %bb.aj, %bb.af, %bb.ah, %bb.az
  %.sink = phi i32 [ 236266, %bb.az ], [ 236220, %bb.aj ], [ 236214, %bb.ah ], [ 236214, %bb.af ], [ 236220, %bb.ai ]
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef %.sink, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  store i32 11, ptr %i.d, align 4, !tbaa !1589
  br label %.critedge

.critedge:                                        ; preds = %sessionChangesetNextOne.exit, %sessionChangesetNextOne.exit.thread, %sessionDiscardData.exit.i, %bb.ae, %bb.a, %.critedge.sink.split
  %.4.i8 = phi i32 [ 101, %bb.ae ], [ %i.x, %bb.a ], [ 11, %.critedge.sink.split ], [ 100, %sessionChangesetNextOne.exit.thread ], [ 101, %sessionDiscardData.exit.i ], [ %.4.i, %sessionChangesetNextOne.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  ret i32 %.4.i8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @sqlite3changeset_op(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1604
  store i32 %i.b, ptr %3, align 4, !tbaa !576
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1591
  store i32 %i.d, ptr %2, align 4, !tbaa !576
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1603
  store ptr %i.f, ptr %1, align 8, !tbaa !747
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1605
  store i32 %i.h, ptr %4, align 4, !tbaa !576
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @sqlite3changeset_pk(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1602
  store ptr %i.b, ptr %1, align 8, !tbaa !747
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1591
  store i32 %i.d, ptr %2, align 4, !tbaa !576
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 26) i32 @sqlite3changeset_old(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1604
  switch i32 %i.b, label %bb.e [
    i32 23, label %bb.b
    i32 9, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1591
  %.not11 = icmp slt i32 %1, %i.e
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1590
  %i.h = zext nneg i32 %1 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !767
  store ptr %i.j, ptr %2, align 8, !tbaa !767
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 21, %bb.a ], [ 25, %bb.c ], [ 25, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 26) i32 @sqlite3changeset_new(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1604
  switch i32 %i.b, label %bb.e [
    i32 23, label %bb.b
    i32 18, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1591 ; 2 uses
  %.not13 = icmp slt i32 %1, %i.e
  br i1 %.not13, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1590
  %i.h = add nuw nsw i32 %i.e, %1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !767
  store ptr %i.k, ptr %2, align 8, !tbaa !767
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 21, %bb.a ], [ 25, %bb.c ], [ 25, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 26) i32 @sqlite3changeset_conflict(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1607 ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1591
  %.not9 = icmp slt i32 %1, %i.e
  br i1 %.not9, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !687
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !601  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.i(ptr noundef nonnull %i.h) #59, !inline_history !112
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !958  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.m = load i16, ptr %i.l, align 8, !tbaa !977
end_hunk_1
begin_hunk_2_@sqlite3changeset_apply_strm:bb.a

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 8) i32 @sqlite3changegroup_new(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @sqlite3_initialize(), !inline_history !1111
  %.not.i.not = icmp eq i32 %i.a, 0
  br i1 %.not.i.not, label %sqlite3_malloc.exit, label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit:                              ; preds = %bb.a
  %i.b = tail call fastcc ptr @sqlite3Malloc(i64 noundef 48), !inline_history !1111 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3_malloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %sqlite3_malloc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  br label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit.thread:                       ; preds = %bb.a, %sqlite3_malloc.exit, %bb.b
  %.0.i6 = phi ptr [ %i.b, %bb.b ], [ null, %sqlite3_malloc.exit ], [ null, %bb.a ]
  %.0 = phi i32 [ 0, %bb.b ], [ 7, %sqlite3_malloc.exit ], [ 7, %bb.a ]
  store ptr %.0.i6, ptr %0, align 8, !tbaa !4219
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 22) i32 @sqlite3changegroup_schema(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1627
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1628
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.30, ptr noundef %2) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %i.f, align 8, !tbaa !1629
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.c, align 8, !tbaa !1628
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 21, %bb.a ], [ 21, %bb.b ], [ 7, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3changegroup_add(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = tail call i32 @sqlite3_initialize(), !inline_history !1111
  %.not.i.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i, label %sqlite3_malloc.exit.i.i, label %sqlite3changeset_start.exit.thread

sqlite3_malloc.exit.i.i:                          ; preds = %bb.a
  %i.d = tail call fastcc ptr @sqlite3Malloc(i64 noundef 152), !inline_history !1111 ; 11 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %sqlite3changeset_start.exit.thread, label %bb.b

bb.b:                                             ; preds = %sqlite3_malloc.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.d, i8 0, i64 152, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !1582
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %1, ptr %i.f, align 8, !tbaa !1583
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.h, align 8, !tbaa !1584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i32 1, ptr %i.d, align 8, !tbaa !1610
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.i = call fastcc i32 @sessionChangesetNext(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null)
  %i.j = icmp eq i32 %i.i, 100
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = call fastcc i32 @sessionOneChangeToHash(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 0) ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %sessionChangesetToHash.exit, !llvm.loop !134

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.m = load i32, ptr %i.l, align 4, !tbaa !1589
  br label %sessionChangesetToHash.exit

sessionChangesetToHash.exit:                      ; preds = %bb.d, %bb.e
  %.2.i = phi i32 [ %i.m, %bb.e ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %sqlite3changeset_start.exit.thread

sqlite3changeset_start.exit.thread:               ; preds = %bb.a, %sqlite3_malloc.exit.i.i, %sessionChangesetToHash.exit
  %.069 = phi ptr [ %i.d, %sessionChangesetToHash.exit ], [ null, %sqlite3_malloc.exit.i.i ], [ null, %bb.a ]
  %.0 = phi i32 [ %.2.i, %sessionChangesetToHash.exit ], [ 7, %sqlite3_malloc.exit.i.i ], [ 7, %bb.a ]
  %i.n = call i32 @sqlite3changeset_finalize(ptr noundef %.069) ; 0 uses
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3changegroup_add_change(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1593
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1592
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1589
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1586
  %.not7 = icmp eq i32 %i.i, 0
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %1, align 8, !tbaa !1610
  %i.j = tail call fastcc i32 @sessionOneChangeToHash(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.j, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sessionOneChangeToHash(ptr nofree noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 12 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1582
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !1593 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 2        ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1592
  %i.s = sub nsw i32 %i.r, %i.m                   ; 6 uses
  %i.t = add nsw i32 %i.s, -2                     ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1627 ; 3 uses
  %i.w = icmp eq ptr %i.v, null                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1600 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br i1 %i.w, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.a
  store i32 %i.y, ptr %i.z, align 4, !tbaa !1630
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !1630
  %.not = icmp eq i32 %i.y, %i.aa
  br i1 %.not, label %bb.c, label %sessionChangeMerge.exit.thread.thread

bb.c:                                             ; preds = %.critedge, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !1604 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1591 ; 13 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1603 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1605 ; 4 uses
  %i.aj = getelementptr i8, ptr %1, i64 136
  %.val69 = load ptr, ptr %i.aj, align 8, !tbaa !1602 ; 3 uses
  %i.ak = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ag) #60
  %.fr.i = freeze i64 %i.ak                       ; 2 uses
  br i1 %i.w, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.al = trunc i64 %.fr.i to i32                 ; 2 uses
  %i.am = add nsw i32 %i.al, 1
  %i.an = icmp sgt i32 %i.al, -1
  br i1 %i.an, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.critedge22.backedge.us.i
  %.04132.us.i = phi ptr [ %.041.us.i, %.critedge22.backedge.us.i ], [ %i.v, %.lr.ph.i ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.04132.us.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1539 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.critedge22.backedge.us.i, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.split.us.i, %bb.e
  %.in.i.us.i = phi i32 [ %i.ar, %bb.e ], [ %i.am, %.lr.ph.split.us.i ] ; 2 uses
  %.023.i.us.i = phi ptr [ %i.bc, %bb.e ], [ %i.ag, %.lr.ph.split.us.i ] ; 3 uses
  %.01422.i.us.i = phi ptr [ %i.bb, %bb.e ], [ %i.ap, %.lr.ph.split.us.i ] ; 2 uses
  %i.ar = add nsw i32 %.in.i.us.i, -1
  %i.as = load i8, ptr %.01422.i.us.i, align 1, !tbaa !741 ; 2 uses
  %.not.i.us.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.us.i, label %.lr.ph._crit_edge.i.us.loopexit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.us.i
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !741 ; 2 uses
  %i.aw = load i8, ptr %.023.i.us.i, align 1, !tbaa !741
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !741 ; 2 uses
  %i.ba = icmp eq i8 %i.av, %i.az
  br i1 %i.ba, label %bb.e, label %split.i.us.i

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.01422.i.us.i, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.023.i.us.i, i64 1
  %i.bd = icmp samesign ugt i32 %.in.i.us.i, 1
  br i1 %i.bd, label %.lr.ph.i.us.i, label %sqlite3_strnicmp.exit.thread.i, !llvm.loop !21

split.i.us.i:                                     ; preds = %bb.d
  %i.be = zext i8 %i.av to i32
  br label %.lr.ph._crit_edge.i.us.i

.lr.ph._crit_edge.i.us.loopexit.i:                ; preds = %.lr.ph.i.us.i
  %.pre.i = load i8, ptr %.023.i.us.i, align 1, !tbaa !741
  %.phi.trans.insert.i = zext i8 %.pre.i to i64
  %.phi.trans.insert46.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert.i
  %.pre47.i = load i8, ptr %.phi.trans.insert46.i, align 1, !tbaa !741
  br label %.lr.ph._crit_edge.i.us.i

.lr.ph._crit_edge.i.us.i:                         ; preds = %.lr.ph._crit_edge.i.us.loopexit.i, %split.i.us.i
  %i.bf = phi i8 [ %i.az, %split.i.us.i ], [ %.pre47.i, %.lr.ph._crit_edge.i.us.loopexit.i ]
  %i.bg = phi i32 [ %i.be, %split.i.us.i ], [ 0, %.lr.ph._crit_edge.i.us.loopexit.i ]
  %i.bh = zext i8 %i.bf to i32
  %i.bi = icmp eq i32 %i.bg, %i.bh
  br i1 %i.bi, label %sqlite3_strnicmp.exit.thread.i, label %.critedge22.backedge.us.i

.critedge22.backedge.us.i:                        ; preds = %.lr.ph._crit_edge.i.us.i, %.lr.ph.split.us.i
  %.041.us.i = load ptr, ptr %.04132.us.i, align 8, !tbaa !1532 ; 2 uses
  %.not.us.i = icmp eq ptr %.041.us.i, null
  br i1 %.not.us.i, label %.critedge.i, label %.lr.ph.split.us.i, !llvm.loop !4220

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.critedge22.backedge.i
  %.04132.i = phi ptr [ %.041.i, %.critedge22.backedge.i ], [ %i.v, %.lr.ph.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.04132.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1539
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.critedge22.backedge.i, label %sqlite3_strnicmp.exit.thread.i

.critedge22.backedge.i:                           ; preds = %.lr.ph.split.i
  %.041.i = load ptr, ptr %.04132.i, align 8, !tbaa !1532 ; 2 uses
  %.not.i = icmp eq ptr %.041.i, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.split.i, !llvm.loop !4220

.critedge.i:                                      ; preds = %.critedge22.backedge.i, %.critedge22.backedge.us.i, %bb.c
  %i.bm = sext i32 %i.ae to i64                   ; 3 uses
  %sext.i = shl i64 %.fr.i, 32                    ; 2 uses
  %i.bn = tail call i32 @sqlite3_initialize(), !inline_history !821
  %.not.i56.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i56.i, label %sqlite3_malloc64.exit.i, label %sessionChangeMerge.exit.thread.thread

sqlite3_malloc64.exit.i:                          ; preds = %.critedge.i
  %i.bo = ashr exact i64 %sext.i, 32
  %i.bp = add nsw i64 %i.bm, 89
  %i.bq = add nsw i64 %i.bp, %i.bo
  %i.br = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.bq), !inline_history !821 ; 12 uses
  %.not50.i = icmp eq ptr %i.br, null
  br i1 %.not50.i, label %sessionChangeMerge.exit.thread.thread, label %bb.f

bb.f:                                             ; preds = %sqlite3_malloc64.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.br, i8 0, i64 88, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  store i32 %i.ae, ptr %i.bs, align 8, !tbaa !1536
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 88 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !1537
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr readonly align 1 %.val69, i64 %i.bm, i1 false)
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.bm ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !1539
  %sext51.i = add i64 %sext.i, 4294967296
  %i.bx = ashr exact i64 %sext51.i, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull readonly align 1 %i.ag, i64 %i.bx, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1628 ; 2 uses
  %.not52.i = icmp eq ptr %i.bz, null
  br i1 %.not52.i, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.g, %bb.f
  br label %bb.m

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.bs, align 8, !tbaa !1536
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1629
  %i.cc = tail call fastcc i32 @sessionInitTable(ptr noundef null, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bz, ptr noundef %i.cb) ; 4 uses
  %.not53.i = icmp eq i32 %i.cc, 0
  br i1 %.not53.i, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i57.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i57.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.cf(ptr noundef nonnull %i.ce) #59, !inline_history !4221
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.j, %bb.i
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.ch = tail call i32 %i.cg(ptr noundef nonnull %i.br) #59, !inline_history !4222
  %i.ci = sext i32 %i.ch to i64
  %i.cj = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ck = sub nsw i64 %i.cj, %i.ci
  store i64 %i.ck, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.cl = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.cm = add nsw i64 %i.cl, -1
  store i64 %i.cm, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.cn(ptr noundef nonnull %i.br) #59, !inline_history !4223
  %i.co = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i4.i.i, label %sessionChangeMerge.exit.thread.thread, label %bb.k

bb.k:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.cp(ptr noundef nonnull %i.co) #59, !inline_history !4224
  br label %sessionChangeMerge.exit.thread.thread

bb.l:                                             ; preds = %bb.h
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.cq(ptr noundef nonnull %i.br) #59, !inline_history !4223
  br label %sessionChangeMerge.exit.thread.thread

bb.m:                                             ; preds = %.preheader, %bb.m
  %.040.i = phi ptr [ %i.cr, %bb.m ], [ %i.u, %.preheader ] ; 2 uses
  %i.cr = load ptr, ptr %.040.i, align 8, !tbaa !1532 ; 2 uses
  %.not54.i = icmp eq ptr %i.cr, null
  br i1 %.not54.i, label %sqlite3_free.exit.i, label %bb.m, !llvm.loop !4225

sqlite3_free.exit.i:                              ; preds = %bb.m
  store ptr %i.br, ptr %.040.i, align 8, !tbaa !1532
  br label %sqlite3_strnicmp.exit.thread.i

sqlite3_strnicmp.exit.thread.i:                   ; preds = %.lr.ph.split.i, %.lr.ph._crit_edge.i.us.i, %bb.e, %sqlite3_free.exit.i
  %.1.i = phi ptr [ %i.br, %sqlite3_free.exit.i ], [ %.04132.us.i, %bb.e ], [ %.04132.us.i, %.lr.ph._crit_edge.i.us.i ], [ %.04132.i, %.lr.ph.split.i ] ; 18 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1538
  %.not.i58.i = icmp ne ptr %i.ct, null
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.1.i, i64 16 ; 15 uses
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !1536 ; 4 uses
  %i.cu = icmp slt i32 %i.ae, %.pre.i.i           ; 2 uses
  %or.cond.i.i = select i1 %.not.i58.i, i1 %i.cu, i1 false
  br i1 %or.cond.i.i, label %.preheader.i59.i, label %._crit_edge.i.i

.preheader.i59.i:                                 ; preds = %sqlite3_strnicmp.exit.thread.i
  %i.cv = icmp sgt i32 %.pre.i.i, 0
  br i1 %i.cv, label %.lr.ph.i60.i, label %sessionChangesetFindTable.exit

.lr.ph.i60.i:                                     ; preds = %.preheader.i59.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.1.i, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1537
  %i.cy = sext i32 %i.ae to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre.i.i to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.q
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %sessionChangesetFindTable.exit, label %bb.o, !llvm.loop !4226

bb.o:                                             ; preds = %bb.n, %.lr.ph.i60.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i60.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 4 uses
  %i.cz = icmp slt i64 %indvars.iv.i.i, %i.cy
  br i1 %i.cz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
end_hunk_2
begin_hunk_3_@vdbeFreeUnpacked:bb.a
  %i.aa = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ab = sub nsw i64 %i.aa, %i.z
  store i64 %i.ab, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.ad = add nsw i64 %i.ac, -1
  store i64 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.ae(ptr noundef nonnull %2) #59, !inline_history !716
  %i.af = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i4.i.i, label %sqlite3DbNNFreeNN.exit, label %bb.o

bb.o:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.ag(ptr noundef nonnull %i.af) #59, !inline_history !717
  br label %sqlite3DbNNFreeNN.exit

bb.p:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.ah(ptr noundef nonnull %2) #59, !inline_history !716
  br label %sqlite3DbNNFreeNN.exit

sqlite3DbNNFreeNN.exit:                           ; preds = %bb.p, %bb.o, %sqlite3_mutex_enter.exit.i.i, %bb.k, %bb.i, %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @btreeOverwriteCell(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1953
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1954
  %i.e = add nsw i32 %i.d, %i.b                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1124 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1133 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.k = load i16, ptr %i.j, align 4, !tbaa !1131 ; 2 uses
  %i.l = zext i16 %i.k to i32
  %i.m = zext i16 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1132
  %i.q = icmp ugt ptr %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1008
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %i.u = load i16, ptr %i.t, align 2, !tbaa !1739
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = icmp ult ptr %i.i, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 81946, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.y = icmp eq i32 %i.e, %i.l
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = tail call fastcc i32 @btreeOverwriteContent(ptr noundef nonnull %i.g, ptr noundef %i.i, ptr noundef %1, i32 noundef 0, i32 noundef %i.e)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aa = tail call fastcc i32 @btreeOverwriteOverflowCell(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 11, %bb.c ], [ %i.z, %bb.e ], [ %i.aa, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 12) i32 @btreeComputeFreeSpace(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1081
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1076 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !1082  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1008 ; 2 uses
  %i.i = zext i8 %i.f to i32
  %i.j = zext i8 %i.f to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.m = load i8, ptr %i.l, align 1, !tbaa !741
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.q = load i8, ptr %i.p, align 1, !tbaa !741
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, %i.r
  %i.t = add nuw nsw i32 %i.s, 65535
  %i.u = and i32 %i.t, 65535                      ; 2 uses
  %i.v = add nuw nsw i32 %i.u, 1
  %i.w = add nuw nsw i32 %i.i, 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.y = load i8, ptr %i.x, align 2, !tbaa !1734
  %i.z = zext i8 %i.y to i32
  %i.aa = add nuw nsw i32 %i.w, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !1742
  %i.ad = zext i16 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 1
  %i.af = add nuw nsw i32 %i.aa, %i.ae            ; 2 uses
  %i.ag = add nsw i32 %i.d, -4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !741
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !741
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ak, %i.an            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !741
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nuw nsw i32 %i.v, %i.ar             ; 2 uses
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not57 = icmp samesign ugt i32 %i.ao, %i.u
  br i1 %.not57, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 74727, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread

.preheader:                                       ; preds = %bb.b, %bb.e
  %.050 = phi i32 [ %i.bc, %bb.e ], [ %i.ao, %bb.b ] ; 3 uses
  %.049 = phi i32 [ %i.bl, %bb.e ], [ %i.as, %bb.b ]
  %i.at = icmp sgt i32 %.050, %i.ag
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 74732, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread

bb.e:                                             ; preds = %.preheader
  %i.au = zext nneg i32 %.050 to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.au ; 4 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !741
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !741
  %i.bb = zext i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.ay, %i.bb            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !741
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !741
  %i.bj = zext i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bg, %i.bj            ; 2 uses
  %i.bl = add i32 %i.bk, %.049                    ; 2 uses
  %i.bm = add nuw nsw i32 %i.bk, %.050            ; 2 uses
  %i.bn = add nuw nsw i32 %i.bm, 3
  %.not58 = icmp samesign ugt i32 %i.bc, %i.bn
  br i1 %.not58, label %.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not59 = icmp eq i32 %i.bc, 0
  br i1 %.not59, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 74742, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.bo = icmp ugt i32 %i.bm, %i.d
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 74746, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread

bb.j:                                             ; preds = %bb.h, %bb.a
  %.2 = phi i32 [ %i.as, %bb.a ], [ %i.bl, %bb.h ] ; 3 uses
  %i.bp = icmp sgt i32 %.2, %i.d
  %i.bq = icmp slt i32 %.2, %i.af
  %or.cond = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 74758, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.br = sub nsw i32 %.2, %i.af
  %i.bs = and i32 %i.br, 65535
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !1732
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.g, %bb.d, %bb.c, %bb.l, %bb.k
  %.152 = phi i32 [ 11, %bb.k ], [ 0, %bb.l ], [ 11, %bb.c ], [ 11, %bb.d ], [ 11, %bb.g ], [ 11, %bb.i ]
  ret i32 %.152
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dropCell(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !576
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1008 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1127
  %i.f = shl nsw i32 %1, 1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 4 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !741
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !741
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !1082
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = add i32 %i.o, %2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1081
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1076
  %i.x = icmp ugt i32 %i.s, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 79869, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  store i32 11, ptr %3, align 4, !tbaa !576
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.y = tail call fastcc i32 @freeSpace(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %2) ; 2 uses
  %.not44 = icmp eq i32 %i.y, 0
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.y, ptr %3, align 4, !tbaa !576
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !1742
  %i.ab = add i16 %i.aa, -1                       ; 3 uses
  store i16 %i.ab, ptr %i.z, align 8, !tbaa !1742
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i32 0, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 7
  store i8 0, ptr %i.af, align 1, !tbaa !741
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !1081
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1076
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 5
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !741
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !1081
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !1076
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !741
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !1081
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !1076
  %i.au = load i8, ptr %i.p, align 1, !tbaa !1082
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !1734
  %i.ay = zext i8 %i.ax to i32
  %.neg46 = add i32 %i.at, -8
  %i.az = add nuw nsw i32 %i.av, %i.ay
  %i.ba = sub i32 %.neg46, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !1732
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bc = zext i16 %i.ab to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.be = sub nsw i32 %i.bc, %1
  %i.bf = shl nsw i32 %i.be, 1
  %i.bg = sext i32 %i.bf to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %i.bd, i64 %i.bg, i1 false)
  %i.bh = load i16, ptr %i.z, align 8, !tbaa !1742
  %i.bi = lshr i16 %i.bh, 8
  %i.bj = trunc nuw i16 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !741
  %i.bm = load i16, ptr %i.z, align 8, !tbaa !1742
  %i.bn = trunc i16 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !741
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !1732
  %i.br = add nsw i32 %i.bq, 2
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !1732
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a, %bb.e, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @balance(ptr nofree noundef captures(address) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.CellInfo, align 8           ; 6 uses
  %i.a = alloca i32, align 4                      ; 21 uses
  %i.b = alloca [3 x ptr], align 16               ; 13 uses
  %i.c = alloca [5 x ptr], align 16               ; 24 uses
  %i.d = alloca [2 x ptr], align 16               ; 5 uses
  %i.e = alloca [5 x i32], align 16               ; 14 uses
  %i.f = alloca [5 x i32], align 16               ; 7 uses
  %i.g = alloca [5 x i32], align 16               ; 11 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca [5 x i8], align 1                 ; 4 uses
  %i.j = alloca [5 x i32], align 16               ; 8 uses
  %2 = alloca %struct.CellArray, align 8          ; 24 uses
  %i.k = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.CellInfo, align 8           ; 4 uses
  %4 = alloca %struct.CellInfo, align 8           ; 6 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 8 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca ptr, align 8                      ; 8 uses
  %i.p = alloca i16, align 2                      ; 7 uses
  %5 = alloca %struct.CellArray, align 8          ; 11 uses
  %i.q = alloca i32, align 4                      ; 7 uses
  %i.r = alloca ptr, align 8                      ; 6 uses
  %i.s = alloca i32, align 4                      ; 7 uses
  %i.t = alloca [13 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #59
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 86
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 100
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.al = ptrtoint ptr %i.t to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 22
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !1124
  br label %bb.b

bb.b:                                             ; preds = %bb.ho, %bb.a
  %i.aw = phi ptr [ %.pre, %bb.a ], [ %storemerge, %bb.ho ] ; 38 uses
  %.057 = phi ptr [ null, %bb.a ], [ %.3, %bb.ho ] ; 13 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 20 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !1732
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ba = call fastcc i32 @btreeComputeFreeSpace(ptr noundef nonnull %i.aw)
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.d, label %.thread118

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_3
begin_hunk_4_@substExpr:bb.a

substExprList.exit123:                            ; preds = %bb.ao, %substExprList.exit123.sink.split, %.preheader, %substExprList.exit121, %substExprList.exit, %bb.a
  %.3 = phi ptr [ %1, %substExprList.exit ], [ null, %bb.a ], [ %1, %.preheader ], [ %.3.ph, %substExprList.exit123.sink.split ], [ %1, %substExprList.exit121 ], [ %1, %bb.ao ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @recomputeColumnsUsedExpr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #17 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !2042
  %.not = icmp eq i8 %i.a, -88
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !741  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2254
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !2268
  %.not7 = icmp eq i32 %i.e, %i.g
  br i1 %.not7, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i16, ptr %i.h, align 8, !tbaa !2206 ; 3 uses
  %i.j = icmp slt i16 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 64
  %.val8 = load ptr, ptr %i.k, align 8, !tbaa !741 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val8, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1098
  %i.n = and i32 %i.m, 96
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1162
  %i.q = zext nneg i16 %i.i to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  %i.t = load i16, ptr %i.s, align 2, !tbaa !1164
  %i.u = and i16 %i.t, 96
  %.not10.i = icmp eq i16 %i.u, 0
  br i1 %.not10.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.val8, i64 54
  %i.w = load i16, ptr %i.v, align 2, !tbaa !1161 ; 2 uses
  %i.x = icmp sgt i16 %i.w, 63
  %i.y = sext i16 %i.w to i64
  %i.z = and i64 %i.y, 4294967295
  %notmask.i = shl nsw i64 -1, %i.z
  %i.aa = xor i64 %notmask.i, -1
  %i.ab = select i1 %i.x, i64 -1, i64 %i.aa
  br label %sqlite3ExprColUsed.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ac = tail call i16 @llvm.umin.i16(i16 %i.i, i16 63)
  %spec.store.select.i = zext nneg i16 %i.ac to i64
  %i.ad = shl nuw i64 1, %spec.store.select.i
  br label %sqlite3ExprColUsed.exit

sqlite3ExprColUsed.exit:                          ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ %i.ab, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !2324
  %i.ag = or i64 %i.af, %.0.i
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !2324
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.a, %sqlite3ExprColUsed.exit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @multiSelectByMerge(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.SelectDest, align 8         ; 10 uses
  %4 = alloca %struct.SelectDest, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.a = load ptr, ptr %0, align 8, !tbaa !1001   ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1233 ; 66 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !2096 ; 5 uses
  %i.f = add nsw i32 %i.e, -1                     ; 15 uses
  %i.g = add nsw i32 %i.e, -2                     ; 5 uses
  store i32 %i.g, ptr %i.d, align 8, !tbaa !2096
  %i.h = load i8, ptr %1, align 8, !tbaa !2209    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2061 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !576  ; 3 uses
  %.not = icmp eq i8 %i.h, -120                   ; 4 uses
  br i1 %.not, label %.critedge, label %.preheader458

.preheader458:                                    ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 103 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !928
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %.lr.ph468, label %.critedge

.lr.ph468:                                        ; preds = %.preheader458
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph468, %bb.j
  %.0285467 = phi i32 [ %i.k, %.lr.ph468 ], [ %.4, %bb.j ] ; 8 uses
  %.0287466 = phi ptr [ %i.j, %.lr.ph468 ], [ %.3290, %bb.j ] ; 10 uses
  %.0309465 = phi i32 [ 1, %.lr.ph468 ], [ %i.aw, %bb.j ] ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2056
  %i.q = load i32, ptr %i.p, align 8, !tbaa !576
  %.not326 = icmp sgt i32 %.0309465, %i.q
  br i1 %.not326, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.0287466, i64 8 ; 2 uses
  %i.s = icmp sgt i32 %.0285467, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.0282462 = phi ptr [ %i.y, %bb.d ], [ %i.r, %bb.c ] ; 2 uses
  %.0308461 = phi i32 [ %i.x, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0282462, i64 20
  %i.u = load i16, ptr %i.t, align 4, !tbaa !741
  %i.v = zext i16 %i.u to i32
  %i.w = icmp eq i32 %.0309465, %i.v
  br i1 %i.w, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.x = add nuw nsw i32 %.0308461, 1             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0282462, i64 24
  %exitcond.not = icmp eq i32 %i.x, %.0285467
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !5753

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0308.lcssa = phi i32 [ 0, %bb.c ], [ %.0308461, %.lr.ph ]
  %i.z = icmp eq i32 %.0308.lcssa, %.0285467
  br i1 %i.z, label %._crit_edge.thread, label %bb.j

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %i.aa = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef 72) ; 10 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %.critedge338, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i8 0, i64 72, i1 false)
  store i8 -100, ptr %i.aa, align 8, !tbaa !2042
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 50
  store i16 -1, ptr %i.ab, align 2, !tbaa !2210
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 276826112, ptr %i.ac, align 4, !tbaa !801
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %.0309465, ptr %i.ad, align 8, !tbaa !741
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 1, ptr %i.ae, align 8, !tbaa !2211
  %i.af = icmp eq ptr %.0287466, null
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %0, align 8, !tbaa !1001
  %i.ah = tail call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.ag, ptr noundef nonnull %i.aa)
  br label %sqlite3ExprListAppend.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.0287466, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !576
  %i.ak = load i32, ptr %.0287466, align 8, !tbaa !576 ; 3 uses
  %.not.i345 = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not.i345, label %sqlite3ExprListAppend.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %0, align 8, !tbaa !1001
  %i.am = tail call fastcc ptr @sqlite3ExprListAppendGrow(ptr noundef %i.al, ptr noundef %.0287466, ptr noundef nonnull %i.aa)
  br label %sqlite3ExprListAppend.exit

sqlite3ExprListAppend.exit.thread:                ; preds = %bb.g
  %i.an = add nsw i32 %i.ak, 1
  store i32 %i.an, ptr %.0287466, align 8, !tbaa !576
  %i.ao = sext i32 %i.ak to i64
  %i.ap = getelementptr inbounds [24 x i8], ptr %i.r, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  store ptr %i.aa, ptr %i.ap, align 8, !tbaa !1180
  store ptr %.0287466, ptr %i.i, align 8, !tbaa !2061
  br label %bb.i

sqlite3ExprListAppend.exit:                       ; preds = %bb.f, %bb.h
  %.0.i = phi ptr [ %i.ah, %bb.f ], [ %i.am, %bb.h ] ; 3 uses
  store ptr %.0.i, ptr %i.i, align 8, !tbaa !2061
  %.not335 = icmp eq ptr %.0.i, null
  br i1 %.not335, label %bb.j, label %bb.i

bb.i:                                             ; preds = %sqlite3ExprListAppend.exit.thread, %sqlite3ExprListAppend.exit
  %.0.i429 = phi ptr [ %.0287466, %sqlite3ExprListAppend.exit.thread ], [ %.0.i, %sqlite3ExprListAppend.exit ] ; 2 uses
  %i.ar = trunc i32 %.0309465 to i16
  %i.as = add nsw i32 %.0285467, 1
  %i.at = sext i32 %.0285467 to i64
  %i.au = getelementptr [24 x i8], ptr %.0.i429, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 28
  store i16 %i.ar, ptr %i.av, align 4, !tbaa !741
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %sqlite3ExprListAppend.exit, %._crit_edge
  %.3290 = phi ptr [ %.0287466, %._crit_edge ], [ null, %sqlite3ExprListAppend.exit ], [ %.0.i429, %bb.i ] ; 2 uses
  %.4 = phi i32 [ %.0285467, %._crit_edge ], [ %.0285467, %sqlite3ExprListAppend.exit ], [ %i.as, %bb.i ] ; 2 uses
  %i.aw = add nuw nsw i32 %.0309465, 1
  %i.ax = load i8, ptr %i.l, align 1, !tbaa !928
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.b, label %.critedge, !llvm.loop !5754

.critedge:                                        ; preds = %bb.j, %bb.b, %.preheader458, %bb.a
  %.4291 = phi ptr [ %i.j, %bb.a ], [ %i.j, %.preheader458 ], [ %.0287466, %bb.b ], [ %.3290, %bb.j ] ; 2 uses
  %.5 = phi i32 [ %i.k, %bb.a ], [ %i.k, %.preheader458 ], [ %.0285467, %bb.b ], [ %.4, %bb.j ] ; 5 uses
  %i.az = add i32 %.5, 1                          ; 3 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %i.bc = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef %i.bb) ; 7 uses
  %.not327 = icmp eq ptr %i.bc, null
  br i1 %.not327, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  store i32 %.5, ptr %i.bc, align 4, !tbaa !576
  %.not328474 = icmp slt i32 %.5, 1
  br i1 %.not328474, label %._crit_edge480.thread, label %.lr.ph479.preheader

.lr.ph479.preheader:                              ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.4291, i64 8 ; 2 uses
  %wide.trip.count = zext i32 %i.az to i64
  %i.be = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.be, 1
  %i.bf = icmp eq i32 %i.az, 2
  br i1 %i.bf, label %.lr.ph479.epil.preheader, label %.lr.ph479.preheader.new

.lr.ph479.preheader.new:                          ; preds = %.lr.ph479.preheader
  %unroll_iter = and i64 %i.be, -2
  br label %.lr.ph479

.lr.ph479:                                        ; preds = %.lr.ph479, %.lr.ph479.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph479.preheader.new ], [ %indvars.iv.next.1, %.lr.ph479 ] ; 4 uses
  %.0477 = phi i32 [ 0, %.lr.ph479.preheader.new ], [ %spec.select.1, %.lr.ph479 ]
  %.0279476 = phi ptr [ %i.bd, %.lr.ph479.preheader.new ], [ %i.bt, %.lr.ph479 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph479.preheader.new ], [ %niter.next.1, %.lr.ph479 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0279476, i64 20
  %i.bh = load i16, ptr %i.bg, align 4, !tbaa !741 ; 2 uses
  %i.bi = zext i16 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !576
  %i.bl = zext i16 %i.bh to i64
  %.not334 = icmp eq i64 %indvars.iv, %i.bl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0279476, i64 44
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !741 ; 2 uses
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nsw i32 %i.bo, -1
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !576
  %i.br = zext i16 %i.bn to i64
  %.not334.1 = icmp eq i64 %indvars.iv.next, %i.br
  %i.bs = select i1 %.not334.1, i1 %.not334, i1 false
  %spec.select.1 = select i1 %i.bs, i32 %.0477, i32 1 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0279476, i64 48 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge480.unr-lcssa, label %.lr.ph479, !llvm.loop !5755

._crit_edge480.unr-lcssa:                         ; preds = %.lr.ph479
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge480, label %.lr.ph479.epil.preheader

.lr.ph479.epil.preheader:                         ; preds = %._crit_edge480.unr-lcssa, %.lr.ph479.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph479.preheader ], [ %indvars.iv.next.1, %._crit_edge480.unr-lcssa ] ; 2 uses
  %.0477.epil.init = phi i32 [ 0, %.lr.ph479.preheader ], [ %spec.select.1, %._crit_edge480.unr-lcssa ]
  %.0279476.epil.init = phi ptr [ %i.bd, %.lr.ph479.preheader ], [ %i.bt, %._crit_edge480.unr-lcssa ]
  %lcmp.mod601 = trunc i64 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod601)
  %i.bu = getelementptr inbounds nuw i8, ptr %.0279476.epil.init, i64 20
  %i.bv = load i16, ptr %i.bu, align 4, !tbaa !741 ; 2 uses
  %i.bw = zext i16 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, -1
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.epil.init
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !576
  %i.bz = zext i16 %i.bv to i64
  %.not334.epil = icmp eq i64 %indvars.iv.epil.init, %i.bz
  %spec.select.epil = select i1 %.not334.epil, i32 %.0477.epil.init, i32 1
  br label %._crit_edge480

._crit_edge480:                                   ; preds = %._crit_edge480.unr-lcssa, %.lr.ph479.epil.preheader
  %spec.select.lcssa = phi i32 [ %spec.select.1, %._crit_edge480.unr-lcssa ], [ %spec.select.epil, %.lr.ph479.epil.preheader ]
  %i.ca = icmp eq i32 %spec.select.lcssa, 0
  br i1 %i.ca, label %._crit_edge480.thread, label %bb.l

._crit_edge480.thread:                            ; preds = %bb.k, %._crit_edge480
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.a, ptr noundef nonnull %i.bc)
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge480, %._crit_edge480.thread, %.critedge
  %.1284 = phi ptr [ null, %.critedge ], [ null, %._crit_edge480.thread ], [ %i.bc, %._crit_edge480 ] ; 14 uses
  %i.cb = tail call fastcc ptr @multiSelectByMergeKeyInfo(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2056
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !576 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !1213
  %i.ch = add i32 %i.cg, 1                        ; 5 uses
  %i.ci = add i32 %i.ch, %i.ce
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !1213
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !711 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !1206
  %.not.i.i = icmp sgt i32 %i.cm, %i.ck
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 72, i32 noundef 0, i32 noundef %i.ch, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.o:                                             ; preds = %bb.m
  %i.co = add nsw i32 %i.ck, 1
  store i32 %i.co, ptr %i.cj, align 8, !tbaa !711
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !710
  %i.cr = sext i32 %i.ck to i64
  %i.cs = getelementptr inbounds [24 x i8], ptr %i.cq, i64 %i.cr ; 7 uses
  store i8 72, ptr %i.cs, align 8, !tbaa !938
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i16 0, ptr %i.ct, align 2, !tbaa !957
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 0, ptr %i.cu, align 4, !tbaa !954
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %i.ch, ptr %i.cv, align 8, !tbaa !955
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !956
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store ptr null, ptr %i.cx, align 8, !tbaa !741
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store i8 0, ptr %i.cy, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.n, %bb.o
  %i.cz = tail call fastcc ptr @sqlite3KeyInfoAlloc(ptr noundef %i.a, i32 noundef %i.ce, i32 noundef 1) ; 5 uses
  %.not329 = icmp ne ptr %i.cz, null
  %i.da = icmp sgt i32 %i.ce, 0
  %or.cond = select i1 %.not329, i1 %i.da, i1 false
  br i1 %or.cond, label %.lr.ph483, label %.loopexit

.lr.ph483:                                        ; preds = %sqlite3VdbeAddOp2.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %wide.trip.count498 = zext nneg i32 %i.ce to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph483, %bb.p
  %indvars.iv495 = phi i64 [ 0, %.lr.ph483 ], [ %indvars.iv.next496, %bb.p ] ; 4 uses
  %i.dd = trunc nuw nsw i64 %indvars.iv495 to i32
  %i.de = tail call fastcc ptr @multiSelectCollSeq(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.dd)
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv495
  store ptr %i.de, ptr %i.df, align 8, !tbaa !940
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !747
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv495
  store i8 0, ptr %i.dh, align 1, !tbaa !741
  %indvars.iv.next496 = add nuw nsw i64 %indvars.iv495, 1 ; 2 uses
  %exitcond499.not = icmp eq i64 %indvars.iv.next496, %wide.trip.count498
  br i1 %exitcond499.not, label %.loopexit, label %bb.p, !llvm.loop !5756

.loopexit:                                        ; preds = %bb.p, %sqlite3VdbeAddOp2.exit
  %i.di = icmp eq i8 %i.h, -121
  br i1 %i.di, label %.thread, label %.critedge4.thread

.thread:                                          ; preds = %bb.l, %.loopexit
  %.0292437 = phi ptr [ %i.cz, %.loopexit ], [ null, %bb.l ] ; 5 uses
  %.0293435 = phi i32 [ %i.ch, %.loopexit ], [ 0, %bb.l ] ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !1409
  %i.dl = and i32 %i.dk, 2097152
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %.preheader456, label %.critedge4.thread

.preheader456:                                    ; preds = %.thread
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !2055 ; 2 uses
  %.not330484 = icmp eq ptr %i.do, null
  br i1 %.not330484, label %.critedge4.thread, label %.lr.ph487

.lr.ph487:                                        ; preds = %.preheader456, %bb.q
  %i.dp = phi ptr [ %i.du, %bb.q ], [ %i.do, %.preheader456 ] ; 2 uses
  %.0303486 = phi i32 [ %i.ds, %bb.q ], [ 1, %.preheader456 ] ; 2 uses
  %.0305485 = phi ptr [ %i.dp, %bb.q ], [ %1, %.preheader456 ]
  %i.dq = load i8, ptr %.0305485, align 8, !tbaa !2209
  %i.dr = icmp eq i8 %i.dq, %i.h
  br i1 %i.dr, label %bb.q, label %.critedge4
end_hunk_4
begin_hunk_5_@sqlite3WhereCodeOneLoopStart:bb.a
  %wide.trip.count.i = zext nneg i32 %i.t to i64
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sqlite3WhereGetMask.exit, label %.lr.ph.i, !llvm.loop !337

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !576
  %i.x = icmp eq i32 %i.w, %i.o
  br i1 %i.x, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = shl nuw i64 1, %indvars.iv.i
  %i.z = xor i64 %i.y, -1
  br label %sqlite3WhereGetMask.exit

sqlite3WhereGetMask.exit:                         ; preds = %bb.b, %bb.a, %.preheader.i, %bb.c
  %.09.i = phi i64 [ -2, %bb.a ], [ %i.z, %bb.c ], [ -1, %.preheader.i ], [ -1, %bb.b ]
  %i.aa = and i64 %.09.i, %5
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !2575
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !571
  %i.ae = zext nneg i32 %3 to i64
  %i.af = lshr i64 %i.ad, %i.ae                   ; 3 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ag, 1                        ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !2499 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !2541
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !2096
  %i.an = add nsw i32 %i.am, -1                   ; 7 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !2096
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !2512
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %sqlite3VdbeAddOp2.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3WhereGetMask.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !2212
  %i.ar = and i8 %i.aq, 8
  %.not1031 = icmp eq i8 %i.ar, 0
  br i1 %.not1031, label %sqlite3VdbeAddOp2.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !1213
  %i.au = add nsw i32 %i.at, 1                    ; 4 uses
  store i32 %i.au, ptr %i.as, align 4, !tbaa !1213
  store i32 %i.au, ptr %4, align 8, !tbaa !2546
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !711 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !1206
  %.not.i.i = icmp sgt i32 %i.ay, %i.aw
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = tail call fastcc i32 @growOp3(ptr noundef nonnull %1, i32 noundef 72, i32 noundef 0, i32 noundef %i.au, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.g:                                             ; preds = %bb.e
  %i.ba = add nsw i32 %i.aw, 1
  store i32 %i.ba, ptr %i.av, align 8, !tbaa !711
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !710
  %i.bd = sext i32 %i.aw to i64
  %i.be = getelementptr inbounds [24 x i8], ptr %i.bc, i64 %i.bd ; 7 uses
  store i8 72, ptr %i.be, align 8, !tbaa !938
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i16 0, ptr %i.bf, align 2, !tbaa !957
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 0, ptr %i.bg, align 4, !tbaa !954
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i32 %i.au, ptr %i.bh, align 8, !tbaa !955
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !956
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr null, ptr %i.bj, align 8, !tbaa !741
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 0, ptr %i.bk, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.g, %bb.f, %bb.d, %sqlite3WhereGetMask.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 25
  %i.bn = load i16, ptr %i.bm, align 1            ; 2 uses
  %i.bo = and i16 %i.bn, 64
  %.not1032 = icmp eq i16 %i.bo, 0
  br i1 %.not1032, label %bb.m, label %bb.h

bb.h:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !741 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !2328 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !2325 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !711 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !1206
  %.not.i = icmp sgt i32 %i.by, %i.bw
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = tail call fastcc i32 @growOp3(ptr noundef nonnull %1, i32 noundef 11, i32 noundef %i.bs, i32 noundef 0, i32 noundef %i.bu), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.j:                                             ; preds = %bb.h
  %i.ca = add nsw i32 %i.bw, 1
  store i32 %i.ca, ptr %i.bv, align 8, !tbaa !711
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !710
  %i.cd = sext i32 %i.bw to i64
  %i.ce = getelementptr inbounds [24 x i8], ptr %i.cc, i64 %i.cd ; 7 uses
  store i8 11, ptr %i.ce, align 8, !tbaa !938
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store i16 0, ptr %i.cf, align 2, !tbaa !957
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i32 %i.bs, ptr %i.cg, align 4, !tbaa !954
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 0, ptr %i.ch, align 8, !tbaa !955
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 %i.bu, ptr %i.ci, align 4, !tbaa !956
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr null, ptr %i.cj, align 8, !tbaa !741
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store i8 0, ptr %i.ck, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.i, %bb.j
  %i.cl = load i32, ptr %i.bv, align 8, !tbaa !711 ; 4 uses
  %i.cm = load i32, ptr %i.bx, align 4, !tbaa !1206
  %.not.i.i1157 = icmp sgt i32 %i.cm, %i.cl
  br i1 %.not.i.i1157, label %bb.l, label %bb.k

bb.k:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.cn = tail call fastcc i32 @growOp3(ptr noundef nonnull %1, i32 noundef 12, i32 noundef %i.bs, i32 noundef %i.aj, i32 noundef 0), !inline_history !1234
  br label %sqlite3VdbeAddOp2.exit1159

bb.l:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.co = add nsw i32 %i.cl, 1
  store i32 %i.co, ptr %i.bv, align 8, !tbaa !711
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !710
  %i.cr = sext i32 %i.cl to i64
  %i.cs = getelementptr inbounds [24 x i8], ptr %i.cq, i64 %i.cr ; 7 uses
  store i8 12, ptr %i.cs, align 8, !tbaa !938
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i16 0, ptr %i.ct, align 2, !tbaa !957
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %i.bs, ptr %i.cu, align 4, !tbaa !954
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %i.aj, ptr %i.cv, align 8, !tbaa !955
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !956
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store ptr null, ptr %i.cx, align 8, !tbaa !741
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store i8 0, ptr %i.cy, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit1159

sqlite3VdbeAddOp2.exit1159:                       ; preds = %bb.k, %bb.l
  %.0.i.i1158 = phi i32 [ %i.cn, %bb.k ], [ %i.cl, %bb.l ]
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 %.0.i.i1158, ptr %i.cz, align 8, !tbaa !2535
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 73
  store i8 9, ptr %i.da, align 1, !tbaa !2534
  br label %.critedge1139

bb.m:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 7 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !2470 ; 10 uses
  %i.dd = and i32 %i.dc, 1024
  %.not1033 = icmp eq i32 %i.dd, 0
  br i1 %.not1033, label %bb.bg, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.df = load i16, ptr %i.de, align 4, !tbaa !2468 ; 4 uses
  %i.dg = zext i16 %i.df to i32                   ; 3 uses
  %i.dh = add nuw nsw i32 %i.dg, 2                ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !2331 ; 2 uses
  %.not.i1160 = icmp sgt i32 %i.dh, %i.dj
  br i1 %.not.i1160, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !2365 ; 2 uses
  %i.dm = add nsw i32 %i.dl, %i.dh
  store i32 %i.dm, ptr %i.dk, align 8, !tbaa !2365
  %i.dn = sub nsw i32 %i.dj, %i.dh
  store i32 %i.dn, ptr %i.di, align 4, !tbaa !2331
  br label %sqlite3GetTempRange.exit

bb.p:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !1213 ; 2 uses
  %i.dq = add nsw i32 %i.dp, 1
  %i.dr = add nsw i32 %i.dp, %i.dh
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !1213
  br label %sqlite3GetTempRange.exit

sqlite3GetTempRange.exit:                         ; preds = %bb.o, %bb.p
  %.014.i = phi i32 [ %i.dq, %bb.p ], [ %i.dl, %bb.o ] ; 6 uses
  %i.ds = load i32, ptr %i.ai, align 4, !tbaa !2499 ; 2 uses
  %.not1517 = icmp eq i16 %i.df, 0                ; 2 uses
  br i1 %.not1517, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3GetTempRange.exit
  %i.dt = add i32 %.014.i, 2
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 32
  %wide.trip.count = zext i16 %i.df to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %sqlite3VdbeAddOp3.exit1163
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3VdbeAddOp3.exit1163 ] ; 4 uses
  %.09981433 = phi i32 [ %i.ds, %.lr.ph ], [ %.21000, %sqlite3VdbeAddOp3.exit1163 ] ; 7 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.ef = add i32 %i.dt, %i.ee                    ; 7 uses
  %i.eg = load ptr, ptr %i.du, align 8, !tbaa !2467
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !2488 ; 8 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %sqlite3VdbeAddOp3.exit1163, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 20 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 4, !tbaa !2573
  %i.em = and i16 %i.el, 1
  %.not1103 = icmp eq i16 %i.em, 0
  br i1 %.not1103, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.en = icmp samesign ult i64 %indvars.iv, 32
  %i.eo = shl nuw i32 1, %i.ee
  %i.ep = select i1 %i.en, i32 %i.eo, i32 0
  %i.eq = load i32, ptr %i.dv, align 8, !tbaa !741
  %i.er = and i32 %i.eq, %i.ep
  %.not1105 = icmp eq i32 %i.er, 0
  br i1 %.not1105, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.es = load i32, ptr %i.dw, align 8, !tbaa !1214 ; 4 uses
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.dw, align 8, !tbaa !1214
  %i.eu = load i32, ptr %i.dx, align 4, !tbaa !1213
  %i.ev = add nsw i32 %i.eu, 1                    ; 3 uses
  store i32 %i.ev, ptr %i.dx, align 4, !tbaa !1213
  %i.ew = load ptr, ptr %i.ei, align 8, !tbaa !1327
  tail call fastcc void @sqlite3CodeRhsOfIN(ptr noundef nonnull %0, ptr noundef %i.ew, i32 noundef %i.es, i32 noundef 0)
  %i.ex = load i32, ptr %i.dy, align 8, !tbaa !711 ; 3 uses
  %i.ey = load i32, ptr %i.dz, align 4, !tbaa !1206
  %.not.i1161 = icmp sgt i32 %i.ey, %i.ex
  br i1 %.not.i1161, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ez = tail call fastcc i32 @growOp3(ptr noundef nonnull %1, i32 noundef 176, i32 noundef %i.es, i32 noundef %i.ef, i32 noundef %i.ev), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit1163

bb.v:                                             ; preds = %bb.t
  %i.fa = add nsw i32 %i.ex, 1
  store i32 %i.fa, ptr %i.dy, align 8, !tbaa !711
  %i.fb = load ptr, ptr %i.ea, align 8, !tbaa !710
  %i.fc = sext i32 %i.ex to i64
  %i.fd = getelementptr inbounds [24 x i8], ptr %i.fb, i64 %i.fc ; 7 uses
  store i8 -80, ptr %i.fd, align 8, !tbaa !938
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  store i16 0, ptr %i.fe, align 2, !tbaa !957
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 %i.es, ptr %i.ff, align 4, !tbaa !954
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i32 %i.ef, ptr %i.fg, align 8, !tbaa !955
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i32 %i.ev, ptr %i.fh, align 4, !tbaa !956
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store ptr null, ptr %i.fi, align 8, !tbaa !741
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  store i8 0, ptr %i.fj, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit1163

bb.w:                                             ; preds = %bb.s
  %i.fk = load ptr, ptr %i.ei, align 8, !tbaa !1327 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !2042
  switch i8 %i.fl, label %bb.ab [
    i8 54, label %bb.x
    i8 45, label %bb.x
    i8 51, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1328
  %i.fo = tail call fastcc i32 @sqlite3ExprCodeTarget(ptr noundef nonnull %0, ptr noundef %i.fn, i32 noundef %i.ef), !inline_history !346 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit1376

bb.y:                                             ; preds = %bb.w
  %i.fp = load ptr, ptr %i.eb, align 8, !tbaa !1233 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 144 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !711 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 148
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !1206
  %.not.i.i1373 = icmp sgt i32 %i.ft, %i.fr
  br i1 %.not.i.i1373, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.fp, i32 noundef 76, i32 noundef 0, i32 noundef %i.ef, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit1376

bb.aa:                                            ; preds = %bb.y
  %i.fv = add nsw i32 %i.fr, 1
  store i32 %i.fv, ptr %i.fq, align 8, !tbaa !711
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 136
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !710
  %i.fy = sext i32 %i.fr to i64
  %i.fz = getelementptr inbounds [24 x i8], ptr %i.fx, i64 %i.fy ; 7 uses
  store i8 76, ptr %i.fz, align 8, !tbaa !938
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  store i16 0, ptr %i.ga, align 2, !tbaa !957
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store i32 0, ptr %i.gb, align 4, !tbaa !954
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i32 %i.ef, ptr %i.gc, align 8, !tbaa !955
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !956
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store ptr null, ptr %i.ge, align 8, !tbaa !741
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  store i8 0, ptr %i.gf, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit1376

bb.ab:                                            ; preds = %bb.w
  tail call fastcc void @codeINTerm(ptr noundef nonnull %0, ptr noundef nonnull %i.ei, ptr noundef %4, i32 noundef range(i32 -2147483648, 65535) %i.ee, i32 noundef range(i32 0, 2) %i.ah, i32 noundef %i.ef), !inline_history !346
  br label %sqlite3VdbeAddOp2.exit1376

sqlite3VdbeAddOp2.exit1376:                       ; preds = %bb.aa, %bb.z, %bb.ab, %bb.x
  %i.gg = load ptr, ptr %i.e, align 8, !tbaa !2493
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !2470
  %i.gj = and i32 %i.gi, 2097152
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %sqlite3VdbeAddOp2.exit1376
  %i.gl = load i16, ptr %i.ek, align 4, !tbaa !2573
  %i.gm = and i16 %i.gl, 2048
  %i.gn = icmp eq i16 %i.gm, 0
  br i1 %i.gn, label %bb.ad, label %codeEqualityTerm.exit

bb.ad:                                            ; preds = %bb.ac, %sqlite3VdbeAddOp2.exit1376
  tail call fastcc void @disableTerm(ptr noundef nonnull %4, ptr noundef nonnull %i.ei), !inline_history !346
  br label %codeEqualityTerm.exit

codeEqualityTerm.exit:                            ; preds = %bb.ac, %bb.ad
  %i.go = load i32, ptr %i.ak, align 4, !tbaa !2541
  br label %sqlite3VdbeAddOp3.exit1163

bb.ae:                                            ; preds = %bb.r
  %i.gp = load ptr, ptr %i.ei, align 8, !tbaa !1327
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !1328
  tail call fastcc void @codeExprOrVector(ptr noundef nonnull %0, ptr noundef %i.gr, i32 noundef %i.ef, i32 noundef 1)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ei, i64 23
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !2576
  %i.gu = icmp eq i8 %i.gt, 74
  br i1 %i.gu, label %bb.af, label %sqlite3VdbeAddOp3.exit1163

bb.af:                                            ; preds = %bb.ae
  %i.gv = load i8, ptr %i.ec, align 4
  %i.gw = and i8 %i.gv, 2
  %.not1104 = icmp eq i8 %i.gw, 0
  br i1 %.not1104, label %sqlite3VdbeAddOp3.exit1163, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gx = load ptr, ptr %i.ed, align 8, !tbaa !2399
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !2321 ; 2 uses
  %i.ha = load i32, ptr %i.dy, align 8, !tbaa !711 ; 3 uses
  %i.hb = load i32, ptr %i.dz, align 4, !tbaa !1206
  %.not.i.i1165 = icmp sgt i32 %i.hb, %i.ha
  br i1 %.not.i.i1165, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
end_hunk_5
begin_hunk_6_@sqlite3GenerateConstraintChecks:bb.a
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amb, i64 8
  %i.amf = trunc i64 %i.alt to i32
  store i32 %i.amf, ptr %i.ame, align 8, !tbaa !955
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amb, i64 12
  store i32 0, ptr %i.amg, align 4, !tbaa !956
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amb, i64 16
  store ptr null, ptr %i.amh, align 8, !tbaa !741
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amb, i64 1
  store i8 0, ptr %i.ami, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit818

sqlite3VdbeAddOp2.exit818:                        ; preds = %bb.gp, %bb.go, %bb.gl, %bb.gk, %sqlite3ExprCodeCopy.exit815
  %indvars.iv.next1109 = add nuw nsw i64 %indvars.iv1108, 1 ; 2 uses
  %i.amj = load i16, ptr %i.aef, align 8, !tbaa !1158 ; 2 uses
  %i.amk = zext i16 %i.amj to i64
  %i.aml = icmp samesign ult i64 %indvars.iv.next1109, %i.amk
  br i1 %i.aml, label %bb.fs, label %._crit_edge1051.loopexit, !llvm.loop !6097

._crit_edge1051.loopexit:                         ; preds = %sqlite3VdbeAddOp2.exit818
  %.pre1120 = load i32, ptr %i.acm, align 4, !tbaa !576
  %i.amm = zext i16 %i.amj to i32
  br label %._crit_edge1051

._crit_edge1051:                                  ; preds = %._crit_edge1051.loopexit, %bb.fr
  %i.amn = phi i32 [ %i.aed, %bb.fr ], [ %.pre1120, %._crit_edge1051.loopexit ] ; 2 uses
  %.lcssa1009.in = phi i32 [ 0, %bb.fr ], [ %i.amm, %._crit_edge1051.loopexit ] ; 2 uses
  %i.amo = load i32, ptr %i.abk, align 8, !tbaa !711 ; 3 uses
  %i.amp = load i32, ptr %i.abp, align 4, !tbaa !1206
  %.not.i837 = icmp sgt i32 %i.amp, %i.amo
  br i1 %.not.i837, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %._crit_edge1051
  %i.amq = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 98, i32 noundef %i.aee, i32 noundef %.lcssa1009.in, i32 noundef %i.amn), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit839

bb.gr:                                            ; preds = %._crit_edge1051
  %i.amr = add nsw i32 %i.amo, 1
  store i32 %i.amr, ptr %i.abk, align 8, !tbaa !711
  %i.ams = load ptr, ptr %i.abl, align 8, !tbaa !710
  %i.amt = sext i32 %i.amo to i64
  %i.amu = getelementptr inbounds [24 x i8], ptr %i.ams, i64 %i.amt ; 7 uses
  store i8 98, ptr %i.amu, align 8, !tbaa !938
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 2
  store i16 0, ptr %i.amv, align 2, !tbaa !957
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amu, i64 4
  store i32 %i.aee, ptr %i.amw, align 4, !tbaa !954
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amu, i64 8
  store i32 %.lcssa1009.in, ptr %i.amx, align 8, !tbaa !955
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amu, i64 12
  store i32 %i.amn, ptr %i.amy, align 4, !tbaa !956
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amu, i64 16
  store ptr null, ptr %i.amz, align 8, !tbaa !741
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amu, i64 1
  store i8 0, ptr %i.ana, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit839

sqlite3VdbeAddOp3.exit839:                        ; preds = %bb.gq, %bb.gr
  %i.anb = icmp eq ptr %.0597, %.36011067         ; 5 uses
  %or.cond1083.reass = and i1 %i.anb, %invariant.op
  br i1 %or.cond1083.reass, label %bb.gs, label %bb.gv

bb.gs:                                            ; preds = %sqlite3VdbeAddOp3.exit839
  %i.anc = load ptr, ptr %i.acj, align 8, !tbaa !1232 ; 4 uses
  %i.and = sub i32 0, %i.adc                      ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.anc, i64 76
  %i.anf = load i32, ptr %i.ane, align 4, !tbaa !2385
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anc, i64 72
  %i.anh = load i32, ptr %i.ang, align 8, !tbaa !2096
  %i.ani = add nsw i32 %i.anh, %i.anf
  %i.anj = icmp slt i32 %i.ani, 0
  br i1 %i.anj, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.anc, ptr noundef nonnull readonly %i.d, i32 noundef %i.and)
  br label %sqlite3VdbeResolveLabel.exit840

bb.gu:                                            ; preds = %bb.gs
  %i.ank = load i32, ptr %i.abk, align 8, !tbaa !711
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anc, i64 80
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !1253
  %i.ann = sext i32 %i.and to i64
  %i.ano = getelementptr inbounds [4 x i8], ptr %i.anm, i64 %i.ann
  store i32 %i.ank, ptr %i.ano, align 4, !tbaa !576
  br label %sqlite3VdbeResolveLabel.exit840

bb.gv:                                            ; preds = %sqlite3VdbeAddOp3.exit839
  %i.anp = getelementptr inbounds nuw i8, ptr %.36011067, i64 98
  %i.anq = load i8, ptr %i.anp, align 2, !tbaa !2030 ; 3 uses
  %i.anr = icmp eq i8 %i.anq, 0
  br i1 %i.anr, label %bb.gw, label %bb.gz

bb.gw:                                            ; preds = %bb.gv
  %i.ans = load ptr, ptr %i.acj, align 8, !tbaa !1232 ; 4 uses
  %i.ant = sub i32 0, %i.adc                      ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ans, i64 76
  %i.anv = load i32, ptr %i.anu, align 4, !tbaa !2385
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ans, i64 72
  %i.anx = load i32, ptr %i.anw, align 8, !tbaa !2096
  %i.any = add nsw i32 %i.anx, %i.anv
  %i.anz = icmp slt i32 %i.any, 0
  br i1 %i.anz, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.ans, ptr noundef nonnull readonly %i.d, i32 noundef %i.ant)
  br label %sqlite3VdbeResolveLabel.exit840

bb.gy:                                            ; preds = %bb.gw
  %i.aoa = load i32, ptr %i.abk, align 8, !tbaa !711
  %i.aob = getelementptr inbounds nuw i8, ptr %i.ans, i64 80
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !1253
  %i.aod = sext i32 %i.ant to i64
  %i.aoe = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.aod
  store i32 %i.aoa, ptr %i.aoe, align 4, !tbaa !576
  br label %sqlite3VdbeResolveLabel.exit840

bb.gz:                                            ; preds = %bb.gv
  %i.aof = icmp eq i8 %i.anq, 11
  %narrow658 = select i1 %i.aof, i8 2, i8 %i.anq
  %.9.in = select i1 %.not657, i8 %narrow658, i8 %.0529
  %.9 = zext i8 %.9.in to i32
  %i.aog = icmp ne ptr %.3573, null               ; 2 uses
  br i1 %i.aog, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.aoh = getelementptr inbounds nuw i8, ptr %.3573, i64 40
  %i.aoi = load i8, ptr %i.aoh, align 8, !tbaa !2382
  %i.aoj = icmp eq i8 %i.aoi, 0
  %.680 = select i1 %i.aoj, i32 4, i32 6
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %.10 = phi i32 [ %.680, %bb.ha ], [ %.9, %bb.gz ] ; 3 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %.36011067, i64 94
  %i.aol = load i16, ptr %i.aok, align 2, !tbaa !1202
  %i.aom = zext i16 %i.aol to i32                 ; 2 uses
  %i.aon = load i32, ptr %i.abk, align 8, !tbaa !711 ; 4 uses
  %i.aoo = load i32, ptr %i.abp, align 4, !tbaa !1206
  %.not.i842 = icmp sgt i32 %i.aoo, %i.aon
  br i1 %.not.i842, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.aop = call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %i.d, i32 noundef 27, i32 noundef %i.adf, i32 noundef %i.add, i32 noundef %i.aee, i32 noundef %i.aom)
  br label %sqlite3VdbeAddOp4Int.exit

bb.hd:                                            ; preds = %bb.hb
  %i.aoq = add nsw i32 %i.aon, 1
  store i32 %i.aoq, ptr %i.abk, align 8, !tbaa !711
  %i.aor = load ptr, ptr %i.abl, align 8, !tbaa !710
  %i.aos = sext i32 %i.aon to i64
  %i.aot = getelementptr inbounds [24 x i8], ptr %i.aor, i64 %i.aos ; 7 uses
  store i8 27, ptr %i.aot, align 8, !tbaa !938
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aot, i64 2
  store i16 0, ptr %i.aou, align 2, !tbaa !957
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aot, i64 4
  store i32 %i.adf, ptr %i.aov, align 4, !tbaa !954
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aot, i64 8
  store i32 %i.add, ptr %i.aow, align 8, !tbaa !955
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aot, i64 12
  store i32 %i.aee, ptr %i.aox, align 4, !tbaa !956
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aot, i64 16
  store i32 %i.aom, ptr %i.aoy, align 8, !tbaa !741
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aot, i64 1
  store i8 -3, ptr %i.aoz, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp4Int.exit

sqlite3VdbeAddOp4Int.exit:                        ; preds = %bb.hc, %bb.hd
  %.0.i843 = phi i32 [ %i.aop, %bb.hc ], [ %i.aon, %bb.hd ] ; 2 uses
  br i1 %i.anb, label %sqlite3GetTempRange.exit, label %bb.he

bb.he:                                            ; preds = %sqlite3VdbeAddOp4Int.exit
  br i1 %i.abw, label %bb.hf, label %bb.hi

bb.hf:                                            ; preds = %bb.he
  %i.apa = load i8, ptr %i.aca, align 1, !tbaa !2330 ; 2 uses
  %i.apb = icmp eq i8 %i.apa, 0
  br i1 %i.apb, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.apc = load i32, ptr %i.abz, align 4, !tbaa !1213
  %i.apd = add nsw i32 %i.apc, 1                  ; 2 uses
  store i32 %i.apd, ptr %i.abz, align 4, !tbaa !1213
  br label %sqlite3GetTempRange.exit

bb.hh:                                            ; preds = %bb.hf
  %i.ape = add i8 %i.apa, -1                      ; 2 uses
  store i8 %i.ape, ptr %i.aca, align 1, !tbaa !2330
  %i.apf = zext i8 %i.ape to i64
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %i.acb, i64 %i.apf
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !576
  br label %sqlite3GetTempRange.exit

bb.hi:                                            ; preds = %bb.he
  %i.api = load i32, ptr %i.abx, align 4, !tbaa !2331 ; 2 uses
  %.not.i844 = icmp sgt i32 %.0575, %i.api
  br i1 %.not.i844, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.apj = load i32, ptr %i.aby, align 8, !tbaa !2365 ; 2 uses
  %i.apk = add nsw i32 %i.apj, %.0575
  store i32 %i.apk, ptr %i.aby, align 8, !tbaa !2365
  %i.apl = sub nsw i32 %i.api, %.0575
  store i32 %i.apl, ptr %i.abx, align 4, !tbaa !2331
  br label %sqlite3GetTempRange.exit

bb.hk:                                            ; preds = %bb.hi
  %i.apm = load i32, ptr %i.abz, align 4, !tbaa !1213 ; 2 uses
  %i.apn = add nsw i32 %i.apm, 1
  %i.apo = add nsw i32 %i.apm, %.0575
  store i32 %i.apo, ptr %i.abz, align 4, !tbaa !1213
  br label %sqlite3GetTempRange.exit

sqlite3GetTempRange.exit:                         ; preds = %bb.hk, %bb.hj, %bb.hh, %bb.hg, %sqlite3VdbeAddOp4Int.exit
  %i.app = phi i32 [ %i.aee, %sqlite3VdbeAddOp4Int.exit ], [ %i.apn, %bb.hk ], [ %i.apj, %bb.hj ], [ %i.apd, %bb.hg ], [ %i.aph, %bb.hh ] ; 12 uses
  %i.apq = icmp eq i32 %.10, 5
  %or.cond19 = or i1 %i.a, %i.apq
  br i1 %or.cond19, label %bb.hl, label %sqlite3VdbeChangeP5.exit851

bb.hl:                                            ; preds = %sqlite3GetTempRange.exit
  %i.apr = load i32, ptr %i.g, align 8, !tbaa !1098
  %i.aps = and i32 %i.apr, 128
  %i.apt = icmp eq i32 %i.aps, 0
  br i1 %i.apt, label %bb.hm, label %bb.ht

bb.hm:                                            ; preds = %bb.hl
  %i.apu = load i32, ptr %i.abk, align 8, !tbaa !711 ; 3 uses
  %i.apv = load i32, ptr %i.abp, align 4, !tbaa !1206
  %.not.i.i845 = icmp sgt i32 %i.apv, %i.apu
  br i1 %.not.i.i845, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.apw = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 143, i32 noundef %i.adf, i32 noundef %i.app, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit847

bb.ho:                                            ; preds = %bb.hm
  %i.apx = add nsw i32 %i.apu, 1
  store i32 %i.apx, ptr %i.abk, align 8, !tbaa !711
  %i.apy = load ptr, ptr %i.abl, align 8, !tbaa !710
  %i.apz = sext i32 %i.apu to i64
  %i.aqa = getelementptr inbounds [24 x i8], ptr %i.apy, i64 %i.apz ; 7 uses
  store i8 -113, ptr %i.aqa, align 8, !tbaa !938
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 2
  store i16 0, ptr %i.aqb, align 2, !tbaa !957
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqa, i64 4
  store i32 %i.adf, ptr %i.aqc, align 4, !tbaa !954
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqa, i64 8
  store i32 %i.app, ptr %i.aqd, align 8, !tbaa !955
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqa, i64 12
  store i32 0, ptr %i.aqe, align 4, !tbaa !956
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqa, i64 16
  store ptr null, ptr %i.aqf, align 8, !tbaa !741
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqa, i64 1
  store i8 0, ptr %i.aqg, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit847

sqlite3VdbeAddOp2.exit847:                        ; preds = %bb.hn, %bb.ho
  br i1 %i.a, label %bb.hp, label %sqlite3VdbeChangeP5.exit851

bb.hp:                                            ; preds = %sqlite3VdbeAddOp2.exit847
  %i.aqh = load i32, ptr %i.abk, align 8, !tbaa !711 ; 3 uses
  %i.aqi = load i32, ptr %i.abp, align 4, !tbaa !1206
  %.not.i848 = icmp sgt i32 %i.aqi, %i.aqh
  br i1 %.not.i848, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.aqj = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 54, i32 noundef %i.app, i32 noundef %i.add, i32 noundef %6), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit850

bb.hr:                                            ; preds = %bb.hp
  %i.aqk = add nsw i32 %i.aqh, 1
  store i32 %i.aqk, ptr %i.abk, align 8, !tbaa !711
  %i.aql = load ptr, ptr %i.abl, align 8, !tbaa !710
  %i.aqm = sext i32 %i.aqh to i64
  %i.aqn = getelementptr inbounds [24 x i8], ptr %i.aql, i64 %i.aqm ; 7 uses
  store i8 54, ptr %i.aqn, align 8, !tbaa !938
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 2
  store i16 0, ptr %i.aqo, align 2, !tbaa !957
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqn, i64 4
  store i32 %i.app, ptr %i.aqp, align 4, !tbaa !954
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqn, i64 8
  store i32 %i.add, ptr %i.aqq, align 8, !tbaa !955
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqn, i64 12
  store i32 %6, ptr %i.aqr, align 4, !tbaa !956
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqn, i64 16
  store ptr null, ptr %i.aqs, align 8, !tbaa !741
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqn, i64 1
  store i8 0, ptr %i.aqt, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit850

sqlite3VdbeAddOp3.exit850:                        ; preds = %bb.hq, %bb.hr
  %i.aqu = load i32, ptr %i.abk, align 8, !tbaa !711 ; 2 uses
  %i.aqv = icmp sgt i32 %i.aqu, 0
  br i1 %i.aqv, label %bb.hs, label %sqlite3VdbeChangeP5.exit851

bb.hs:                                            ; preds = %sqlite3VdbeAddOp3.exit850
  %i.aqw = load ptr, ptr %i.abl, align 8, !tbaa !710
  %i.aqx = zext nneg i32 %i.aqu to i64
  %i.aqy = getelementptr [24 x i8], ptr %i.aqw, i64 %i.aqx
  %i.aqz = getelementptr i8, ptr %i.aqy, i64 -22
  store i16 144, ptr %i.aqz, align 2, !tbaa !957
  br label %sqlite3VdbeChangeP5.exit851

bb.ht:                                            ; preds = %bb.hl
  br i1 %i.anb, label %.loopexit, label %.preheader999

.preheader999:                                    ; preds = %bb.ht
  %i.ara = load i16, ptr %i.acc, align 2, !tbaa !1202
  %.not1085 = icmp eq i16 %i.ara, 0
  br i1 %.not1085, label %.loopexit, label %.lr.ph1054

.lr.ph1054:                                       ; preds = %.preheader999
  %i.arb = getelementptr inbounds nuw i8, ptr %.36011067, i64 8
  %i.arc = zext i32 %i.app to i64
  br label %bb.hu

bb.hu:                                            ; preds = %.lr.ph1054, %sqlite3VdbeAddOp3.exit862
  %indvars.iv1111 = phi i64 [ 0, %.lr.ph1054 ], [ %indvars.iv.next1112, %sqlite3VdbeAddOp3.exit862 ] ; 3 uses
  %i.ard = load ptr, ptr %i.acd, align 8, !tbaa !1159
  %i.are = getelementptr inbounds nuw [2 x i8], ptr %i.ard, i64 %indvars.iv1111
  %i.arf = load i16, ptr %i.are, align 2, !tbaa !789
  %i.arg = load i16, ptr %i.aef, align 8, !tbaa !1158 ; 2 uses
  %.not.i852 = icmp eq i16 %i.arg, 0
  br i1 %.not.i852, label %sqlite3TableColumnToIndex.exit, label %.lr.ph.i853

.lr.ph.i853:                                      ; preds = %bb.hu
  %i.arh = load ptr, ptr %i.arb, align 8, !tbaa !1159
  %wide.trip.count.i854 = zext i16 %i.arg to i64
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hw, %.lr.ph.i853
  %indvars.iv.i855 = phi i64 [ 0, %.lr.ph.i853 ], [ %indvars.iv.next.i856, %bb.hw ] ; 3 uses
  %i.ari = getelementptr inbounds nuw [2 x i8], ptr %i.arh, i64 %indvars.iv.i855
  %i.arj = load i16, ptr %i.ari, align 2, !tbaa !789
  %i.ark = icmp eq i16 %i.arf, %i.arj
  br i1 %i.ark, label %._crit_edge.loopexit.split.loop.exit13.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %indvars.iv.next.i856 = add nuw nsw i64 %indvars.iv.i855, 1 ; 2 uses
  %exitcond.not.i857 = icmp eq i64 %indvars.iv.next.i856, %wide.trip.count.i854
  br i1 %exitcond.not.i857, label %sqlite3TableColumnToIndex.exit, label %bb.hv, !llvm.loop !79

._crit_edge.loopexit.split.loop.exit13.i:         ; preds = %bb.hv
  %i.arl = trunc nuw nsw i64 %indvars.iv.i855 to i32
  br label %sqlite3TableColumnToIndex.exit

sqlite3TableColumnToIndex.exit:                   ; preds = %bb.hw, %bb.hu, %._crit_edge.loopexit.split.loop.exit13.i
  %.08.i859 = phi i32 [ -1, %bb.hu ], [ %i.arl, %._crit_edge.loopexit.split.loop.exit13.i ], [ -1, %bb.hw ] ; 2 uses
  %i.arm = add nuw i64 %indvars.iv1111, %i.arc    ; 2 uses
  %i.arn = load i32, ptr %i.abk, align 8, !tbaa !711 ; 3 uses
  %i.aro = load i32, ptr %i.abp, align 4, !tbaa !1206
  %.not.i860 = icmp sgt i32 %i.aro, %i.arn
  br i1 %.not.i860, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %sqlite3TableColumnToIndex.exit
  %i.arp = trunc i64 %i.arm to i32
  %i.arq = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 95, i32 noundef %i.adf, i32 noundef %.08.i859, i32 noundef %i.arp), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit862

bb.hy:                                            ; preds = %sqlite3TableColumnToIndex.exit
  %i.arr = add nsw i32 %i.arn, 1
  store i32 %i.arr, ptr %i.abk, align 8, !tbaa !711
  %i.ars = load ptr, ptr %i.abl, align 8, !tbaa !710
  %i.art = sext i32 %i.arn to i64
  %i.aru = getelementptr inbounds [24 x i8], ptr %i.ars, i64 %i.art ; 7 uses
  store i8 95, ptr %i.aru, align 8, !tbaa !938
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 2
  store i16 0, ptr %i.arv, align 2, !tbaa !957
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aru, i64 4
  store i32 %i.adf, ptr %i.arw, align 4, !tbaa !954
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aru, i64 8
  store i32 %.08.i859, ptr %i.arx, align 8, !tbaa !955
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aru, i64 12
  %i.arz = trunc i64 %i.arm to i32
  store i32 %i.arz, ptr %i.ary, align 4, !tbaa !956
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aru, i64 16
  store ptr null, ptr %i.asa, align 8, !tbaa !741
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aru, i64 1
  store i8 0, ptr %i.asb, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit862

sqlite3VdbeAddOp3.exit862:                        ; preds = %bb.hx, %bb.hy
  %indvars.iv.next1112 = add nuw nsw i64 %indvars.iv1111, 1 ; 2 uses
  %i.asc = load i16, ptr %i.acc, align 2, !tbaa !1202
  %i.asd = zext i16 %i.asc to i64
  %i.ase = icmp samesign ult i64 %indvars.iv.next1112, %i.asd
  br i1 %i.ase, label %bb.hu, label %.loopexit, !llvm.loop !6098

.loopexit:                                        ; preds = %sqlite3VdbeAddOp3.exit862, %.preheader999, %bb.ht
  br i1 %i.a, label %bb.hz, label %sqlite3VdbeChangeP5.exit851

bb.hz:                                            ; preds = %.loopexit
  %i.asf = load i16, ptr %i.acc, align 2, !tbaa !1202 ; 2 uses
  %.not1086 = icmp eq i16 %i.asf, 0
  br i1 %.not1086, label %sqlite3VdbeChangeP5.exit851, label %.lr.ph1059.preheader

.lr.ph1059.preheader:                             ; preds = %bb.hz
  %i.asg = getelementptr inbounds nuw i8, ptr %.36011067, i64 99
  %i.ash = load i16, ptr %i.asg, align 1
  %i.asi = and i16 %i.ash, 3
  %i.asj = icmp eq i16 %i.asi, 2
  %i.ask = select i1 %i.asj, i32 %i.aee, i32 %i.app
  %.val684 = load i32, ptr %i.abk, align 8, !tbaa !711
end_hunk_6
begin_hunk_7_@simpleOpen:bb.a
  store ptr %i.b, ptr %3, align 8, !tbaa !2766
  br label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit.thread:                       ; preds = %bb.a, %sqlite3_malloc.exit, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 7, %sqlite3_malloc.exit ], [ 7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @simpleClose(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2864 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.f(ptr noundef nonnull %i.e) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.h = tail call i32 %i.g(ptr noundef nonnull %i.b) #59, !inline_history !13
  %i.i = sext i32 %i.h to i64
  %i.j = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.k = sub nsw i64 %i.j, %i.i
  store i64 %i.k, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.m = add nsw i64 %i.l, -1
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.n(ptr noundef nonnull %i.b) #59, !inline_history !755
  %i.o = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.o, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.p(ptr noundef nonnull %i.o) #59, !inline_history !756
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.q(ptr noundef nonnull %i.b) #59, !inline_history !755
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.f, %bb.e, %sqlite3_mutex_enter.exit.i, %bb.a
  %i.r = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i3 = icmp eq i32 %i.r, 0
  br i1 %.not.i3, label %bb.j, label %bb.g

bb.g:                                             ; preds = %sqlite3_free.exit
  %i.s = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.s, null
  br i1 %.not.i.i4, label %sqlite3_mutex_enter.exit.i5, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.t(ptr noundef nonnull %i.s) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i5

sqlite3_mutex_enter.exit.i5:                      ; preds = %bb.h, %bb.g
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.v = tail call i32 %i.u(ptr noundef nonnull %0) #59, !inline_history !13
  %i.w = sext i32 %i.v to i64
  %i.x = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.y = sub nsw i64 %i.x, %i.w
  store i64 %i.y, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.aa = add nsw i64 %i.z, -1
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.ab(ptr noundef nonnull %0) #59, !inline_history !755
  %i.ac = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i4.i6, label %sqlite3_free.exit7, label %bb.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit.i5
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.ad(ptr noundef nonnull %i.ac) #59, !inline_history !756
  br label %sqlite3_free.exit7

bb.j:                                             ; preds = %sqlite3_free.exit
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.ae(ptr noundef nonnull %0) #59, !inline_history !755
  br label %sqlite3_free.exit7

sqlite3_free.exit7:                               ; preds = %sqlite3_mutex_enter.exit.i5, %bb.i, %bb.j
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 102) i32 @simpleNext(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2866
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2860 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.e, align 8, !tbaa !2861 ; 6 uses
  %.promoted = load i32, ptr %i.d, align 4, !tbaa !2862 ; 2 uses
  %i.k = icmp slt i32 %.promoted, %i.j
  br i1 %i.k, label %.lr.ph.preheader, label %.thread82

.lr.ph.preheader:                                 ; preds = %bb.a, %.critedge3.thread
  %i.l = phi i32 [ %i.bs, %.critedge3.thread ], [ %.promoted, %bb.a ] ; 3 uses
  %i.m = sext i32 %i.l to i64                     ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !741   ; 2 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %simpleDelim.exit, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next
  %i.r = load i8, ptr %i.q, align 1, !tbaa !741   ; 2 uses
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %simpleDelim.exit, label %.critedge, !llvm.loop !6413

simpleDelim.exit:                                 ; preds = %.lr.ph.preheader, %.lr.ph
  %i.t = phi i8 [ %i.r, %.lr.ph ], [ %i.o, %.lr.ph.preheader ]
  %indvars.iv140 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %i.u = phi i32 [ %i.y, %.lr.ph ], [ %i.l, %.lr.ph.preheader ]
  %i.v = zext nneg i8 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !741
  %.not84 = icmp eq i8 %i.x, 0
  br i1 %.not84, label %.critedge, label %bb.b

bb.b:                                             ; preds = %simpleDelim.exit
  %indvars.iv.next = add nsw i64 %indvars.iv140, 1 ; 4 uses
  %i.y = trunc i64 %indvars.iv.next to i32        ; 5 uses
  store i32 %i.y, ptr %i.d, align 4, !tbaa !2862
  %exitcond.not = icmp eq i32 %i.j, %i.y
  br i1 %exitcond.not, label %.critedge3.thread, label %.lr.ph, !llvm.loop !6413

.critedge:                                        ; preds = %.lr.ph, %simpleDelim.exit, %.lr.ph.preheader
  %.lcssa = phi i32 [ %i.l, %.lr.ph.preheader ], [ %i.y, %.lr.ph ], [ %i.u, %simpleDelim.exit ] ; 5 uses
  %indvars.iv.lcssa = phi i64 [ %i.m, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv140, %simpleDelim.exit ] ; 2 uses
  %i.z = trunc nsw i64 %indvars.iv.lcssa to i32   ; 3 uses
  %i.aa = icmp slt i32 %.lcssa, %i.j
  br i1 %i.aa, label %.lr.ph90.preheader, label %.critedge3

.lr.ph90.preheader:                               ; preds = %.critedge
  %i.ab = sext i32 %.lcssa to i64
  br label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %simpleDelim.exit74.thread
  %i.ac = phi i32 [ %.lcssa, %.lr.ph90.preheader ], [ %i.aj, %simpleDelim.exit74.thread ]
  %indvars.iv96 = phi i64 [ %i.ab, %.lr.ph90.preheader ], [ %indvars.iv.next97, %simpleDelim.exit74.thread ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv96
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !741 ; 2 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %simpleDelim.exit74, label %simpleDelim.exit74.thread

simpleDelim.exit74:                               ; preds = %.lr.ph90
  %i.ag = zext nneg i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !741
  %.not = icmp eq i8 %i.ai, 0
  br i1 %.not, label %simpleDelim.exit74.thread, label %.critedge3.loopexit.split.loop.exit125

simpleDelim.exit74.thread:                        ; preds = %.lr.ph90, %simpleDelim.exit74
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.aj = trunc i64 %indvars.iv.next97 to i32     ; 4 uses
  store i32 %i.aj, ptr %i.d, align 4, !tbaa !2862
  %exitcond100.not = icmp eq i32 %i.j, %i.aj
  br i1 %exitcond100.not, label %.critedge3, label %.lr.ph90, !llvm.loop !6414

.critedge3.loopexit.split.loop.exit125:           ; preds = %simpleDelim.exit74
  %i.ak = trunc nsw i64 %indvars.iv96 to i32
  br label %.critedge3

.critedge3:                                       ; preds = %simpleDelim.exit74.thread, %.critedge3.loopexit.split.loop.exit125, %.critedge
  %i.al = phi i32 [ %.lcssa, %.critedge ], [ %i.ac, %.critedge3.loopexit.split.loop.exit125 ], [ %i.aj, %simpleDelim.exit74.thread ]
  %.lcssa85 = phi i32 [ %.lcssa, %.critedge ], [ %i.ak, %.critedge3.loopexit.split.loop.exit125 ], [ %i.j, %simpleDelim.exit74.thread ] ; 2 uses
  %.not73 = icmp sgt i32 %.lcssa85, %i.z
  br i1 %.not73, label %bb.c, label %.critedge3.thread

bb.c:                                             ; preds = %.critedge3
  %i.am = sub nsw i32 %.lcssa85, %i.z             ; 7 uses
  %i.an = load i32, ptr %i.g, align 8, !tbaa !2865
  %i.ao = icmp sgt i32 %i.am, %i.an
  br i1 %i.ao, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ap = add nsw i32 %i.am, 20                   ; 2 uses
  store i32 %i.ap, ptr %i.g, align 8, !tbaa !2865
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !2864
  %i.ar = tail call i32 @sqlite3_initialize(), !inline_history !1272
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %sqlite3_realloc64.exit, label %.thread82

sqlite3_realloc64.exit:                           ; preds = %bb.d
  %i.as = sext i32 %i.ap to i64
  %i.at = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.aq, i64 noundef %i.as), !inline_history !1272 ; 2 uses
  %.not72.not = icmp eq ptr %i.at, null
  br i1 %.not72.not, label %.thread82, label %bb.e

bb.e:                                             ; preds = %sqlite3_realloc64.exit
  store ptr %i.at, ptr %i.h, align 8, !tbaa !2864
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.au = icmp sgt i32 %i.am, 0
  br i1 %i.au, label %.lr.ph94.preheader, label %.thread

.lr.ph94.preheader:                               ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %i.am to i64   ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.c, i64 %indvars.iv.lcssa ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.av = icmp eq i32 %i.am, 1
  br i1 %i.av, label %.lr.ph94.epil.preheader, label %.lr.ph94.preheader.new

.lr.ph94.preheader.new:                           ; preds = %.lr.ph94.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94, %.lr.ph94.preheader.new
  %indvars.iv101 = phi i64 [ 0, %.lr.ph94.preheader.new ], [ %indvars.iv.next102.1, %.lr.ph94 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph94.preheader.new ], [ %niter.next.1, %.lr.ph94 ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv101
  %i.aw = load i8, ptr %gep, align 1, !tbaa !741  ; 3 uses
  %i.ax = add i8 %i.aw, -65
  %or.cond = icmp ult i8 %i.ax, 26
  %i.ay = add i8 %i.aw, 32
  %i.az = select i1 %or.cond, i8 %i.ay, i8 %i.aw
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !2864
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv101
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !741
  %indvars.iv.next102 = or disjoint i64 %indvars.iv101, 1 ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next102
  %i.bc = load i8, ptr %gep.1, align 1, !tbaa !741 ; 3 uses
  %i.bd = add i8 %i.bc, -65
  %or.cond.1 = icmp ult i8 %i.bd, 26
  %i.be = add i8 %i.bc, 32
  %i.bf = select i1 %or.cond.1, i8 %i.be, i8 %i.bc
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !2864
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next102
  store i8 %i.bf, ptr %i.bh, align 1, !tbaa !741
  %indvars.iv.next102.1 = add nuw nsw i64 %indvars.iv101, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.loopexit.unr-lcssa, label %.lr.ph94, !llvm.loop !6415

.thread.loopexit.unr-lcssa:                       ; preds = %.lr.ph94
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread, label %.lr.ph94.epil.preheader

.lr.ph94.epil.preheader:                          ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph94.preheader
  %indvars.iv101.epil.init = phi i64 [ 0, %.lr.ph94.preheader ], [ %indvars.iv.next102.1, %.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod150 = trunc i32 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv101.epil.init
  %i.bi = load i8, ptr %gep.epil, align 1, !tbaa !741 ; 3 uses
  %i.bj = add i8 %i.bi, -65
  %or.cond.epil = icmp ult i8 %i.bj, 26
  %i.bk = add i8 %i.bi, 32
  %i.bl = select i1 %or.cond.epil, i8 %i.bk, i8 %i.bi
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !2864
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv101.epil.init
  store i8 %i.bl, ptr %i.bn, align 1, !tbaa !741
  br label %.thread

.thread:                                          ; preds = %.lr.ph94.epil.preheader, %.thread.loopexit.unr-lcssa, %bb.f
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !2864
  store ptr %i.bo, ptr %1, align 8, !tbaa !747
  store i32 %i.am, ptr %2, align 4, !tbaa !576
  store i32 %i.z, ptr %3, align 4, !tbaa !576
  %i.bp = load i32, ptr %i.d, align 4, !tbaa !2862
  store i32 %i.bp, ptr %4, align 4, !tbaa !576
  %i.bq = load i32, ptr %i.i, align 8, !tbaa !2863 ; 2 uses
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.i, align 8, !tbaa !2863
  store i32 %i.bq, ptr %5, align 4, !tbaa !576
  br label %.thread82

.critedge3.thread:                                ; preds = %bb.b, %.critedge3
  %i.bs = phi i32 [ %i.al, %.critedge3 ], [ %i.y, %bb.b ] ; 2 uses
  %i.bt = icmp slt i32 %i.bs, %i.j
  br i1 %i.bt, label %.lr.ph.preheader, label %.thread82

.thread82:                                        ; preds = %.critedge3.thread, %bb.a, %.thread, %sqlite3_realloc64.exit, %bb.d
  %.4 = phi i32 [ 0, %.thread ], [ 7, %sqlite3_realloc64.exit ], [ 7, %bb.d ], [ 101, %bb.a ], [ 101, %.critedge3.thread ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @porterCreate(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call i32 @sqlite3_initialize(), !inline_history !1111
  %.not.i.not = icmp eq i32 %i.a, 0
  br i1 %.not.i.not, label %sqlite3_malloc.exit, label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit:                              ; preds = %bb.a
  %i.b = tail call fastcc ptr @sqlite3Malloc(i64 noundef 8), !inline_history !1111 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3_malloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %sqlite3_malloc.exit
  store i64 0, ptr %i.b, align 8
  store ptr %i.b, ptr %2, align 8, !tbaa !2759
  br label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit.thread:                       ; preds = %bb.a, %sqlite3_malloc.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 7, %sqlite3_malloc.exit ], [ 7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @porterDestroy(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.d(ptr noundef nonnull %i.c) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #59, !inline_history !13
  %i.g = sext i32 %i.f to i64
  %i.h = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.i = sub nsw i64 %i.h, %i.g
  store i64 %i.i, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.k = add nsw i64 %i.j, -1
  store i64 %i.k, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.l(ptr noundef nonnull %0) #59, !inline_history !755
  %i.m = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.m, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.n(ptr noundef nonnull %i.m) #59, !inline_history !756
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.o(ptr noundef nonnull %0) #59, !inline_history !755
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.a, %sqlite3_mutex_enter.exit.i, %bb.e, %bb.f
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @porterOpen(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @sqlite3_initialize(), !inline_history !1111
  %.not.i.not = icmp eq i32 %i.a, 0
  br i1 %.not.i.not, label %sqlite3_malloc.exit, label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit:                              ; preds = %bb.a
  %i.b = tail call fastcc ptr @sqlite3Malloc(i64 noundef 48), !inline_history !1111 ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3_malloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %sqlite3_malloc.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !2868
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #60
  %i.h = trunc i64 %i.g to i32
  br label %bb.e

end_hunk_7
begin_hunk_8_@porterClose:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.f(ptr noundef nonnull %i.e) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.h = tail call i32 %i.g(ptr noundef nonnull %i.b) #59, !inline_history !13
  %i.i = sext i32 %i.h to i64
  %i.j = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.k = sub nsw i64 %i.j, %i.i
  store i64 %i.k, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.m = add nsw i64 %i.l, -1
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.n(ptr noundef nonnull %i.b) #59, !inline_history !755
  %i.o = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.o, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.p(ptr noundef nonnull %i.o) #59, !inline_history !756
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.q(ptr noundef nonnull %i.b) #59, !inline_history !755
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.f, %bb.e, %sqlite3_mutex_enter.exit.i, %bb.a
  %i.r = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i3 = icmp eq i32 %i.r, 0
  br i1 %.not.i3, label %bb.j, label %bb.g

bb.g:                                             ; preds = %sqlite3_free.exit
  %i.s = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.s, null
  br i1 %.not.i.i4, label %sqlite3_mutex_enter.exit.i5, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.t(ptr noundef nonnull %i.s) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i5

sqlite3_mutex_enter.exit.i5:                      ; preds = %bb.h, %bb.g
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.v = tail call i32 %i.u(ptr noundef nonnull %0) #59, !inline_history !13
  %i.w = sext i32 %i.v to i64
  %i.x = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.y = sub nsw i64 %i.x, %i.w
  store i64 %i.y, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.aa = add nsw i64 %i.z, -1
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.ab(ptr noundef nonnull %0) #59, !inline_history !755
  %i.ac = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i4.i6, label %sqlite3_free.exit7, label %bb.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit.i5
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.ad(ptr noundef nonnull %i.ac) #59, !inline_history !756
  br label %sqlite3_free.exit7

bb.j:                                             ; preds = %sqlite3_free.exit
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.ae(ptr noundef nonnull %0) #59, !inline_history !755
  br label %sqlite3_free.exit7

sqlite3_free.exit7:                               ; preds = %sqlite3_mutex_enter.exit.i5, %bb.i, %bb.j
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 102) i32 @porterNext(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [28 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 56 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2868 ; 5 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.f, align 4, !tbaa !2870 ; 2 uses
  %i.m = load i32, ptr %i.g, align 8, !tbaa !2869 ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.preheader, label %.thread449

.lr.ph.preheader:                                 ; preds = %bb.a, %.backedge
  %i.o = phi i32 [ %i.asv, %.backedge ], [ %i.m, %bb.a ] ; 4 uses
  %i.p = phi i32 [ %i.asu, %.backedge ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !741   ; 2 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %.lr.ph953, label %.critedge

.lr.ph:                                           ; preds = %.critedge3
  %i.u = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.next
  %i.v = load i8, ptr %i.u, align 1, !tbaa !741   ; 2 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %.lr.ph953, label %.critedge, !llvm.loop !6416

.lr.ph953:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.x = phi i8 [ %i.v, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv952 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.q, %.lr.ph.preheader ] ; 2 uses
  %.promoted558705951 = phi i32 [ %i.ad, %.lr.ph ], [ %i.p, %.lr.ph.preheader ]
  %i.y = icmp samesign ult i8 %i.x, 48
  br i1 %i.y, label %.critedge3, label %bb.b

bb.b:                                             ; preds = %.lr.ph953
  %i.z = zext nneg i8 %i.x to i64
  %i.aa = getelementptr i8, ptr @porterIdChar, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -48
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !741
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %.critedge3, label %.critedge

.critedge3:                                       ; preds = %.lr.ph953, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv952, 1 ; 4 uses
  %i.ad = trunc i64 %indvars.iv.next to i32       ; 4 uses
  store i32 %i.ad, ptr %i.f, align 4, !tbaa !2870
  %exitcond.not = icmp eq i32 %i.o, %i.ad
  br i1 %exitcond.not, label %.backedge, label %.lr.ph, !llvm.loop !6416

.critedge:                                        ; preds = %.lr.ph, %bb.b, %.lr.ph.preheader
  %.promoted558705.lcssa = phi i32 [ %i.p, %.lr.ph.preheader ], [ %i.ad, %.lr.ph ], [ %.promoted558705951, %bb.b ] ; 3 uses
  %indvars.iv.lcssa = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv952, %bb.b ] ; 4 uses
  %i.ae = trunc nsw i64 %indvars.iv.lcssa to i32  ; 3 uses
  %i.af = icmp slt i32 %.promoted558705.lcssa, %i.o
  br i1 %i.af, label %.lr.ph559.preheader, label %.critedge5

.lr.ph559.preheader:                              ; preds = %.critedge
  %i.ag = sext i32 %.promoted558705.lcssa to i64
  br label %.lr.ph559

.lr.ph559:                                        ; preds = %.lr.ph559.preheader, %.critedge67
  %indvars.iv653 = phi i64 [ %i.ag, %.lr.ph559.preheader ], [ %indvars.iv.next654, %.critedge67 ] ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv653
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !741 ; 3 uses
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.c, label %.critedge67

bb.c:                                             ; preds = %.lr.ph559
  %i.ak = icmp samesign ult i8 %i.ai, 48
  br i1 %i.ak, label %.critedge5.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = zext nneg i8 %i.ai to i64
  %i.am = getelementptr i8, ptr @porterIdChar, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -48
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !741
  %.not63.not = icmp eq i8 %i.ao, 0
  br i1 %.not63.not, label %.critedge5.loopexit.split.loop.exit890, label %.critedge67

.critedge67:                                      ; preds = %.lr.ph559, %bb.d
  %indvars.iv.next654 = add nsw i64 %indvars.iv653, 1 ; 2 uses
  %i.ap = trunc i64 %indvars.iv.next654 to i32    ; 2 uses
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !2870
  %exitcond657.not = icmp eq i32 %i.o, %i.ap
  br i1 %exitcond657.not, label %.critedge5, label %.lr.ph559, !llvm.loop !6417

.critedge5.loopexit.split.loop.exit:              ; preds = %bb.c
  %i.aq = trunc nsw i64 %indvars.iv653 to i32
  br label %.critedge5

.critedge5.loopexit.split.loop.exit890:           ; preds = %bb.d
  %i.ar = trunc nsw i64 %indvars.iv653 to i32
  br label %.critedge5

.critedge5:                                       ; preds = %.critedge67, %.critedge5.loopexit.split.loop.exit, %.critedge5.loopexit.split.loop.exit890, %.critedge
  %.lcssa496 = phi i32 [ %.promoted558705.lcssa, %.critedge ], [ %i.aq, %.critedge5.loopexit.split.loop.exit ], [ %i.ar, %.critedge5.loopexit.split.loop.exit890 ], [ %i.o, %.critedge67 ] ; 2 uses
  %.not65 = icmp sgt i32 %.lcssa496, %i.ae
  br i1 %.not65, label %bb.e, label %.backedge

bb.e:                                             ; preds = %.critedge5
  %i.as = sub nsw i32 %.lcssa496, %i.ae           ; 12 uses
  %i.at = load i32, ptr %i.h, align 8, !tbaa !2873
  %i.au = icmp sgt i32 %i.as, %i.at
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !2872 ; 2 uses
  br i1 %i.au, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.av = add nsw i32 %i.as, 20                   ; 2 uses
  store i32 %i.av, ptr %i.h, align 8, !tbaa !2873
  %i.aw = tail call i32 @sqlite3_initialize(), !inline_history !1272
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %sqlite3_realloc64.exit, label %.thread449

sqlite3_realloc64.exit:                           ; preds = %bb.f
  %i.ax = sext i32 %i.av to i64
  %i.ay = tail call fastcc ptr @sqlite3Realloc(ptr noundef %.pre, i64 noundef %i.ax), !inline_history !1272 ; 3 uses
  %.not64.not = icmp eq ptr %i.ay, null
  br i1 %.not64.not, label %.thread449, label %bb.g

bb.g:                                             ; preds = %sqlite3_realloc64.exit
  store ptr %i.ay, ptr %i.i, align 8, !tbaa !2872
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.az = phi ptr [ %i.ay, %bb.g ], [ %.pre, %bb.e ] ; 24 uses
  %i.ba = ptrtoaddr ptr %i.az to i64              ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.lcssa ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.bc = add nsw i32 %i.as, -21
  %or.cond.i = icmp ult i32 %i.bc, -18
  %wide.trip.count.i.i = zext i32 %i.as to i64    ; 15 uses
  br i1 %or.cond.i, label %.lr.ph.i.i.preheader, label %.lr.ph.i

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %min.iters.check985 = icmp ult i32 %i.as, 8
  br i1 %min.iters.check985, label %.lr.ph.i.i.preheader1039, label %vector.memcheck982

vector.memcheck982:                               ; preds = %.lr.ph.i.i.preheader
  %i.bd = add i64 %indvars.iv.lcssa, %i.e
  %i.be = sub i64 %i.bd, %i.ba
  %diff.check983 = icmp ugt i64 %i.be, -8
  br i1 %diff.check983, label %.lr.ph.i.i.preheader1039, label %vector.ph986

vector.ph986:                                     ; preds = %vector.memcheck982
  %n.vec987 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %vector.ph986
  %index989 = phi i64 [ 0, %vector.ph986 ], [ %index.next994, %vector.body988 ] ; 3 uses
  %vec.phi990 = phi <4 x i1> [ zeroinitializer, %vector.ph986 ], [ %i.bt, %vector.body988 ]
  %vec.phi991 = phi <4 x i1> [ zeroinitializer, %vector.ph986 ], [ %i.bu, %vector.body988 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index989 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %wide.load992 = load <4 x i8>, ptr %i.bf, align 1, !tbaa !741 ; 4 uses
  %wide.load993 = load <4 x i8>, ptr %i.bg, align 1, !tbaa !741 ; 4 uses
  %i.bh = add <4 x i8> %wide.load992, splat (i8 -65)
  %i.bi = add <4 x i8> %wide.load993, splat (i8 -65)
  %i.bj = icmp ult <4 x i8> %i.bh, splat (i8 26)
  %i.bk = icmp ult <4 x i8> %i.bi, splat (i8 26)
  %i.bl = or disjoint <4 x i8> %wide.load992, splat (i8 32)
  %i.bm = or disjoint <4 x i8> %wide.load993, splat (i8 32)
  %i.bn = select <4 x i1> %i.bj, <4 x i8> %i.bl, <4 x i8> %wide.load992
  %i.bo = select <4 x i1> %i.bk, <4 x i8> %i.bm, <4 x i8> %wide.load993
  %i.bp = add <4 x i8> %wide.load992, splat (i8 -48)
  %i.bq = icmp ult <4 x i8> %i.bp, splat (i8 10)
  %i.br = add <4 x i8> %wide.load993, splat (i8 -48)
  %i.bs = icmp ult <4 x i8> %i.br, splat (i8 10)
  %i.bt = or <4 x i1> %vec.phi990, %i.bq          ; 2 uses
  %i.bu = or <4 x i1> %vec.phi991, %i.bs          ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 %index989 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store <4 x i8> %i.bn, ptr %i.bv, align 1, !tbaa !741
  store <4 x i8> %i.bo, ptr %i.bw, align 1, !tbaa !741
  %index.next994 = add nuw i64 %index989, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next994, %n.vec987
  br i1 %i.bx, label %middle.block995, label %vector.body988, !llvm.loop !6418

middle.block995:                                  ; preds = %vector.body988
  %bin.rdx996 = or <4 x i1> %i.bu, %i.bt
  %bin.rdx996.fr = freeze <4 x i1> %bin.rdx996
  %i.by = bitcast <4 x i1> %bin.rdx996.fr to i4
  %.not1035 = icmp ne i4 %i.by, 0
  %rdx.select997 = zext i1 %.not1035 to i32       ; 2 uses
  %cmp.n998 = icmp eq i64 %n.vec987, %wide.trip.count.i.i
  br i1 %cmp.n998, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader1039

.lr.ph.i.i.preheader1039:                         ; preds = %vector.memcheck982, %.lr.ph.i.i.preheader, %middle.block995
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck982 ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec987, %middle.block995 ] ; 5 uses
  %.045.i.i.ph = phi i32 [ 0, %vector.memcheck982 ], [ 0, %.lr.ph.i.i.preheader ], [ %rdx.select997, %middle.block995 ] ; 2 uses
  %xtraiter1102 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod1103.not = icmp eq i64 %xtraiter1102, 0
  br i1 %lcmp.mod1103.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader1039
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i.i.ph
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !741 ; 4 uses
  %i.cb = add i8 %i.ca, -65
  %or.cond.i.i.prol = icmp ult i8 %i.cb, 26
  %i.cc = or disjoint i8 %i.ca, 32
  %.sink.i.i.prol = select i1 %or.cond.i.i.prol, i8 %i.cc, i8 %i.ca
  %i.cd = add i8 %i.ca, -58
  %i.ce = icmp ult i8 %i.cd, -10
  %.2.i.i.prol = select i1 %i.ce, i32 %.045.i.i.ph, i32 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i.ph
  store i8 %.sink.i.i.prol, ptr %i.cf, align 1, !tbaa !741
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader1039
  %.2.i.i.lcssa1040.unr = phi i32 [ poison, %.lr.ph.i.i.preheader1039 ], [ %.2.i.i.prol, %.lr.ph.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader1039 ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.045.i.i.unr = phi i32 [ %.045.i.i.ph, %.lr.ph.i.i.preheader1039 ], [ %.2.i.i.prol, %.lr.ph.i.i.prol ]
  %i.cg = add nsw i64 %wide.trip.count.i.i, -1
  %i.ch = icmp eq i64 %indvars.iv.i.i.ph, %i.cg
  br i1 %i.ch, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.045.i.i = phi i32 [ %.2.i.i.1, %.lr.ph.i.i ], [ %.045.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !741 ; 4 uses
  %i.ck = add i8 %i.cj, -65
  %or.cond.i.i = icmp ult i8 %i.ck, 26
  %i.cl = or disjoint i8 %i.cj, 32
  %.sink.i.i = select i1 %or.cond.i.i, i8 %i.cl, i8 %i.cj
  %i.cm = add i8 %i.cj, -58
  %i.cn = icmp ult i8 %i.cm, -10
  %i.co = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i
  store i8 %.sink.i.i, ptr %i.co, align 1, !tbaa !741
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !741 ; 4 uses
  %i.cr = add i8 %i.cq, -65
  %or.cond.i.i.1 = icmp ult i8 %i.cr, 26
  %i.cs = or disjoint i8 %i.cq, 32
  %.sink.i.i.1 = select i1 %or.cond.i.i.1, i8 %i.cs, i8 %i.cq
  %i.ct = add i8 %i.cq, -58
  %i.cu = icmp ult i8 %i.ct, -10
  %i.cv = select i1 %i.cu, i1 %i.cn, i1 false
  %.2.i.i.1 = select i1 %i.cv, i32 %.045.i.i, i32 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next.i.i
  store i8 %.sink.i.i.1, ptr %i.cw, align 1, !tbaa !741
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6419

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block995
  %.2.i.i.lcssa = phi i32 [ %rdx.select997, %middle.block995 ], [ %.2.i.i.lcssa1040.unr, %.lr.ph.i.i.prol.loopexit ], [ %.2.i.i.1, %.lr.ph.i.i ]
  %i.cx = icmp eq i32 %.2.i.i.lcssa, 0
  %i.cy = select i1 %i.cx, i32 10, i32 3          ; 3 uses
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = icmp sgt i32 %i.as, %i.cz
  br i1 %i.da, label %iter.check1020, label %.loopexit.sink.split.i

iter.check1020:                                   ; preds = %._crit_edge.loopexit.i.i
  %i.db = sub i32 %i.as, %i.cy
  %i.dc = zext nneg i32 %i.cy to i64              ; 6 uses
  %i.dd = zext i32 %i.db to i64                   ; 8 uses
  %i.de = add nuw nsw i64 %i.dd, 1
  %umax1003 = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %wide.trip.count.i.i)
  %i.df = sub nsw i64 %umax1003, %i.dd            ; 7 uses
  %min.iters.check1005 = icmp ult i64 %i.df, 8
  %i.dg = sub nsw i64 %i.dd, %i.dc
  %diff.check1002 = icmp ugt i64 %i.dg, -32
  %or.cond1036 = select i1 %min.iters.check1005, i1 true, i1 %diff.check1002
  br i1 %or.cond1036, label %.lr.ph50.i.i.preheader, label %vector.main.loop.iter.check1006

vector.main.loop.iter.check1006:                  ; preds = %iter.check1020
  %min.iters.check1007 = icmp ult i64 %i.df, 32
  br i1 %min.iters.check1007, label %vec.epilog.ph1024, label %vector.ph1008

vector.ph1008:                                    ; preds = %vector.main.loop.iter.check1006
  %i.dh = and i64 %i.df, 24
  %n.vec1009 = and i64 %i.df, -32                 ; 5 uses
  %i.di = add nsw i64 %n.vec1009, %i.dd
  %i.dj = or disjoint i64 %n.vec1009, %i.dc       ; 2 uses
  %invariant.gep1146 = getelementptr i8, ptr %i.az, i64 %i.dd
  %invariant.gep1148 = getelementptr i8, ptr %i.az, i64 %i.dc
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %vector.ph1008
  %index1011 = phi i64 [ 0, %vector.ph1008 ], [ %index.next1014, %vector.body1010 ] ; 3 uses
  %gep1147 = getelementptr i8, ptr %invariant.gep1146, i64 %index1011 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %gep1147, i64 16
  %wide.load1012 = load <16 x i8>, ptr %gep1147, align 1, !tbaa !741
  %wide.load1013 = load <16 x i8>, ptr %i.dk, align 1, !tbaa !741
  %gep1149 = getelementptr i8, ptr %invariant.gep1148, i64 %index1011 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %gep1149, i64 16
  store <16 x i8> %wide.load1012, ptr %gep1149, align 1, !tbaa !741
  store <16 x i8> %wide.load1013, ptr %i.dl, align 1, !tbaa !741
  %index.next1014 = add nuw i64 %index1011, 32    ; 2 uses
  %i.dm = icmp eq i64 %index.next1014, %n.vec1009
  br i1 %i.dm, label %middle.block1015, label %vector.body1010, !llvm.loop !6420

middle.block1015:                                 ; preds = %vector.body1010
  %cmp.n1016 = icmp eq i64 %i.df, %n.vec1009
  br i1 %cmp.n1016, label %.loopexit.loopexit.i.i, label %vec.epilog.iter.check1022

vec.epilog.iter.check1022:                        ; preds = %middle.block1015
  %min.epilog.iters.check1023 = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check1023, label %.lr.ph50.i.i.preheader, label %vec.epilog.ph1024, !prof !793

vec.epilog.ph1024:                                ; preds = %vector.main.loop.iter.check1006, %vec.epilog.iter.check1022
  %vec.epilog.resume.val1017 = phi i64 [ %n.vec1009, %vec.epilog.iter.check1022 ], [ 0, %vector.main.loop.iter.check1006 ]
  %n.vec1025 = and i64 %i.df, -8                  ; 4 uses
  %i.dn = add nsw i64 %n.vec1025, %i.dd
  %i.do = add nsw i64 %n.vec1025, %i.dc           ; 2 uses
end_hunk_8
begin_hunk_9_@fts3EvalNextRow:bb.a
.lr.ph.i.i.i139.i.i:                              ; preds = %.lr.ph.i.i.i139.i.i, %.lr.ph.preheader.i.i.i138.i.i
  %i.mr = phi i32 [ %i.mu, %.lr.ph.i.i.i139.i.i ], [ %i.mq, %.lr.ph.preheader.i.i.i138.i.i ]
  %.022.i.i.i140.i.i = phi ptr [ %i.ms, %.lr.ph.i.i.i139.i.i ], [ %i.mk, %.lr.ph.preheader.i.i.i138.i.i ]
  %i.ms = getelementptr inbounds nuw i8, ptr %.022.i.i.i140.i.i, i64 1 ; 3 uses
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !741
  %i.mu = sext i8 %i.mt to i32                    ; 2 uses
  %i.mv = and i32 %i.mr, -128
  %i.mw = or i32 %i.mv, %i.mu
  %.not.i.i.i141.i.i = icmp eq i32 %i.mw, 0
  br i1 %.not.i.i.i141.i.i, label %fts3PoslistCopy.exit.i.i142.i.i, label %.lr.ph.i.i.i139.i.i, !llvm.loop !407

fts3PoslistCopy.exit.i.i142.i.i:                  ; preds = %.lr.ph.i.i.i139.i.i, %sqlite3Fts3GetVarintU.exit.i.i
  %.0.lcssa.i.i.i143.i.i = phi ptr [ %i.mk, %sqlite3Fts3GetVarintU.exit.i.i ], [ %i.ms, %.lr.ph.i.i.i139.i.i ] ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i143.i.i, i64 1 ; 4 uses
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = ptrtoint ptr %i.mk to i64
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = trunc i64 %i.na to i32
  store i32 %i.nb, ptr %i.fl, align 8, !tbaa !2954
  %i.nc = icmp ult ptr %i.mx, %i.jn
  br i1 %i.nc, label %.lr.ph.preheader.i.i146.i.i, label %.critedge.i.i144.i.i

.lr.ph.preheader.i.i146.i.i:                      ; preds = %fts3PoslistCopy.exit.i.i142.i.i
  %.0.lcssa.i31.i.i147.i.i = ptrtoaddr ptr %.0.lcssa.i.i.i143.i.i to i64
  %i.nd = add i64 %i.jm, %i.jk
  %i.ne = sub i64 %i.nd, %.0.lcssa.i31.i.i147.i.i
  %scevgep.i.i148.i.i = getelementptr i8, ptr %.0.lcssa.i.i.i143.i.i, i64 %i.ne ; 2 uses
  br label %.lr.ph.i.i149.i.i

.lr.ph.i.i149.i.i:                                ; preds = %bb.bz, %.lr.ph.preheader.i.i146.i.i
  %.028.i.i150.i.i = phi ptr [ %i.nh, %bb.bz ], [ %i.mx, %.lr.ph.preheader.i.i146.i.i ] ; 3 uses
  %i.nf = load i8, ptr %.028.i.i150.i.i, align 1, !tbaa !741
  %i.ng = icmp eq i8 %i.nf, 0
  br i1 %i.ng, label %bb.bz, label %.critedge.i.i144.i.i

bb.bz:                                            ; preds = %.lr.ph.i.i149.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %.028.i.i150.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i151.i.i = icmp eq ptr %i.nh, %scevgep.i.i148.i.i
  br i1 %exitcond.not.i.i151.i.i, label %.critedge.i.i144.i.i, label %.lr.ph.i.i149.i.i, !llvm.loop !6656

.critedge.i.i144.i.i:                             ; preds = %bb.bz, %.lr.ph.i.i149.i.i, %fts3PoslistCopy.exit.i.i142.i.i
  %.0.lcssa.i.i145.i.i = phi ptr [ %i.mx, %fts3PoslistCopy.exit.i.i142.i.i ], [ %scevgep.i.i148.i.i, %bb.bz ], [ %.028.i.i150.i.i, %.lr.ph.i.i149.i.i ]
  store ptr %.0.lcssa.i.i145.i.i, ptr %i.ga, align 8, !tbaa !6667
  br label %fts3EvalDlPhraseNext.exit.i136.i.i

fts3EvalDlPhraseNext.exit.i136.i.i:               ; preds = %.critedge.i.i144.i.i, %.thread.i.i133.i.i, %bb.bj
  %.8.i.i = phi i8 [ 0, %.critedge.i.i144.i.i ], [ 1, %.thread.i.i133.i.i ], [ 1, %bb.bj ]
  %i.ni = load ptr, ptr %i.fk, align 8, !tbaa !2949
  %i.nj = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store ptr %i.ni, ptr %i.nj, align 16, !tbaa !6669
  %i.nk = load i32, ptr %i.fl, align 8, !tbaa !2954
  %i.nl = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  store i32 %i.nk, ptr %i.nl, align 8, !tbaa !6670
  %i.nm = load i64, ptr %i.gd, align 8, !tbaa !2985 ; 2 uses
  store i64 %i.nm, ptr %i.jc, align 8, !tbaa !6671
  br label %incrPhraseTokenNext.exit152.i.i

bb.ca:                                            ; preds = %bb.bh
  %i.nn = getelementptr [40 x i8], ptr %i.eq, i64 %i.iy
  %i.no = getelementptr i8, ptr %i.nn, i64 120
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !2952 ; 2 uses
  %.not.i129.i.i = icmp eq ptr %i.np, null
  br i1 %.not.i129.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nq = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.ns = call fastcc i32 @sqlite3Fts3MsrIncrNext(ptr noundef readonly %i.fm, ptr noundef nonnull %i.np, ptr noundef nonnull %i.jc, ptr noundef nonnull %i.nq, ptr noundef nonnull %i.nr), !inline_history !6655
  %i.nt = load ptr, ptr %i.nq, align 16, !tbaa !6669
  %i.nu = icmp eq ptr %i.nt, null
  %spec.select187.i.i = zext i1 %i.nu to i8
  %.pre271.i.i = load i64, ptr %i.jc, align 8, !tbaa !6671
  br label %incrPhraseTokenNext.exit152.i.i

bb.cc:                                            ; preds = %bb.ca
  store i32 1, ptr %i.iz, align 16, !tbaa !6672
  br label %incrPhraseTokenNext.exit152.i.i

incrPhraseTokenNext.exit152.i.i:                  ; preds = %bb.cc, %bb.cb, %fts3EvalDlPhraseNext.exit.i136.i.i
  %i.nv = phi i64 [ %i.nm, %fts3EvalDlPhraseNext.exit.i136.i.i ], [ %i.jd, %bb.cc ], [ %.pre271.i.i, %bb.cb ] ; 3 uses
  %.9.i.i = phi i8 [ %.8.i.i, %fts3EvalDlPhraseNext.exit.i136.i.i ], [ 0, %bb.cc ], [ %spec.select187.i.i, %bb.cb ] ; 2 uses
  %.1.i130.i.i = phi i32 [ 0, %fts3EvalDlPhraseNext.exit.i136.i.i ], [ 0, %bb.cc ], [ %i.ns, %bb.cb ] ; 2 uses
  %i.nw = icmp sgt i64 %i.nv, %.3101220.i.i
  %.not125.i.i = icmp ne i64 %i.nv, %.3101220.i.i
  %i.nx = select i1 %.not125.i.i, i1 %not..not122191.i.i, i1 false
  %i.ny = select i1 %i.nw, i1 %.not122.i.i, i1 %i.nx ; 2 uses
  %spec.select188.i.i = select i1 %i.ny, i64 %i.nv, i64 %.3101220.i.i ; 2 uses
  %spec.select189.i.i = select i1 %i.ny, i32 0, i32 %.296221.i.i ; 2 uses
  %i.nz = icmp eq i32 %.1.i130.i.i, 0
  %i.oa = icmp eq i8 %.9.i.i, 0
  %or.cond.i.i = select i1 %i.nz, i1 %i.oa, i1 false
  br i1 %or.cond.i.i, label %.lr.ph222.i.i, label %.critedge5.loopexit.i.i, !llvm.loop !6658

.critedge5.loopexit.i.i:                          ; preds = %incrPhraseTokenNext.exit152.i.i, %bb.bg, %.lr.ph222.i.i
  %.3164.lcssa.ph.i.i = phi i8 [ 0, %.lr.ph222.i.i ], [ %.9.i.i, %incrPhraseTokenNext.exit152.i.i ], [ 0, %bb.bg ]
  %.3108.lcssa.ph.i.i = phi i32 [ 0, %.lr.ph222.i.i ], [ %.1.i130.i.i, %incrPhraseTokenNext.exit152.i.i ], [ 0, %bb.bg ]
  %.3101.lcssa.ph.i.i = phi i64 [ %.3101220.i.i, %.lr.ph222.i.i ], [ %spec.select188.i.i, %incrPhraseTokenNext.exit152.i.i ], [ %.3101220.i.i, %bb.bg ]
  %.296.lcssa.ph.i.i = phi i32 [ %.296221.i.i, %.lr.ph222.i.i ], [ %spec.select189.i.i, %incrPhraseTokenNext.exit152.i.i ], [ %.296221.i.i, %bb.bg ]
  %.pre272.i.i = load i32, ptr %i.fp, align 8, !tbaa !576
  br label %.critedge5.i.i

.critedge5.i.i:                                   ; preds = %.critedge5.loopexit.i.i, %.preheader.i.i
  %i.ob = phi i32 [ %i.iv, %.preheader.i.i ], [ %.pre272.i.i, %.critedge5.loopexit.i.i ] ; 3 uses
  %.3164.lcssa.i.i = phi i8 [ %.2163237.i.i, %.preheader.i.i ], [ %.3164.lcssa.ph.i.i, %.critedge5.loopexit.i.i ] ; 2 uses
  %.3108.lcssa.i.i = phi i32 [ %.2107238.i.i, %.preheader.i.i ], [ %.3108.lcssa.ph.i.i, %.critedge5.loopexit.i.i ] ; 2 uses
  %.3101.lcssa.i.i = phi i64 [ %.2100239.i.i, %.preheader.i.i ], [ %.3101.lcssa.ph.i.i, %.critedge5.loopexit.i.i ] ; 2 uses
  %.296.lcssa.i.i = phi i32 [ %.195240.i.i, %.preheader.i.i ], [ %.296.lcssa.ph.i.i, %.critedge5.loopexit.i.i ]
  %i.oc = add nsw i32 %.296.lcssa.i.i, 1          ; 2 uses
  %i.od = icmp slt i32 %i.oc, %i.ob
  br i1 %i.od, label %.preheader.i.i, label %._crit_edge.i.i, !llvm.loop !6659

._crit_edge.i.i:                                  ; preds = %.critedge5.i.i, %.critedge.i.i
  %.2163.lcssa.i.i = phi i8 [ %.1162.lcssa.i.i, %.critedge.i.i ], [ %.3164.lcssa.i.i, %.critedge5.i.i ]
  %.2107.lcssa.i.i = phi i32 [ %.1106.lcssa.i.i, %.critedge.i.i ], [ %.3108.lcssa.i.i, %.critedge5.i.i ] ; 2 uses
  %.2100.lcssa.i.i = phi i64 [ %.098.lcssa.i.i, %.critedge.i.i ], [ %.3101.lcssa.i.i, %.critedge5.i.i ]
  %.lcssa196.i.i = phi i32 [ %i.it, %.critedge.i.i ], [ %i.ob, %.critedge5.i.i ]
  %cond.i.i = icmp eq i8 %.2163.lcssa.i.i, 0
  br i1 %cond.i.i, label %bb.cd, label %.thread.i.i

bb.cd:                                            ; preds = %._crit_edge.i.i
  %i.oe = sext i32 %.lcssa196.i.i to i64
  %i.of = getelementptr [32 x i8], ptr %3, i64 %i.oe
  %i.og = getelementptr i8, ptr %i.of, i64 -8
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !6670 ; 2 uses
  %i.oi = sext i32 %i.oh to i64                   ; 2 uses
  %i.oj = tail call i32 @sqlite3_initialize(), !inline_history !6660
  %.not.i153.i.i = icmp eq i32 %i.oj, 0
  br i1 %.not.i153.i.i, label %sqlite3_malloc64.exit.i.i, label %sqlite3_malloc64.exit.thread.i.i

sqlite3_malloc64.exit.i.i:                        ; preds = %bb.cd
  %i.ok = add nsw i64 %i.oi, 8
  %i.ol = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.ok), !inline_history !6660 ; 10 uses
  %.not.i.i189 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i189, label %sqlite3_malloc64.exit.thread.i.i, label %bb.ce

bb.ce:                                            ; preds = %sqlite3_malloc64.exit.i.i
  %i.om = load i32, ptr %i.fp, align 8, !tbaa !576
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr [32 x i8], ptr %3, i64 %i.on
  %i.op = getelementptr i8, ptr %i.oo, i64 -16
  %i.oq = load ptr, ptr %i.op, align 16, !tbaa !6669
  %i.or = add nsw i32 %i.oh, 1
  %i.os = sext i32 %i.or to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ol, ptr align 1 %i.oq, i64 %i.os, i1 false)
  %i.ot = getelementptr inbounds i8, ptr %i.ol, i64 %i.oi
  store i64 0, ptr %i.ot, align 1
  %i.ou = load i32, ptr %i.fp, align 8, !tbaa !576 ; 3 uses
  %i.ov = icmp sgt i32 %i.ou, 1
  br i1 %i.ov, label %.lr.ph248.i.i, label %._crit_edge249.i.i

.lr.ph248.i.i:                                    ; preds = %bb.ce
  %i.ow = ptrtoint ptr %i.ol to i64
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %.lr.ph248.i.i
  %i.ox = phi i32 [ %i.ou, %.lr.ph248.i.i ], [ %i.pm, %bb.ch ] ; 2 uses
  %indvars.iv267.i.i = phi i64 [ 0, %.lr.ph248.i.i ], [ %indvars.iv.next268.i.i, %bb.ch ] ; 3 uses
  %.090246.i.i = phi i32 [ 0, %.lr.ph248.i.i ], [ %.292.i.i, %bb.ch ] ; 2 uses
  %i.oy = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %indvars.iv267.i.i ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 16, !tbaa !6672
  %i.pa = icmp eq i32 %i.oz, 0
  br i1 %i.pa, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pc = load ptr, ptr %i.pb, align 16, !tbaa !6669
  store ptr %i.pc, ptr %i.c, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  store ptr %i.ol, ptr %i.d, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #59
  store ptr %i.ol, ptr %i.e, align 8, !tbaa !747
  %i.pd = trunc nuw nsw i64 %indvars.iv267.i.i to i32 ; 2 uses
  %i.pe = xor i32 %i.pd, -1
  %i.pf = add i32 %i.ox, %i.pe
  %i.pg = call fastcc i32 @fts3PoslistPhraseMerge(ptr noundef %i.e, i32 noundef %i.pf, i32 noundef 0, i32 noundef 1, ptr noundef %i.c, ptr noundef %i.d), !inline_history !6654
  %i.ph = icmp eq i32 %i.pg, 0
  %i.pi = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  %.pre275.pre.i.i = load i32, ptr %i.fp, align 8, !tbaa !576 ; 2 uses
  br i1 %i.ph, label %._crit_edge249.i.i, label %._crit_edge273.i.i

._crit_edge273.i.i:                               ; preds = %bb.cg
  %i.pj = ptrtoint ptr %i.pi to i64
  %i.pk = sub i64 %i.pj, %i.ow
  %i.pl = trunc i64 %i.pk to i32
  br label %bb.ch

bb.ch:                                            ; preds = %._crit_edge273.i.i, %bb.cf
  %i.pm = phi i32 [ %.pre275.pre.i.i, %._crit_edge273.i.i ], [ %i.ox, %bb.cf ] ; 3 uses
  %.292.i.i = phi i32 [ %i.pl, %._crit_edge273.i.i ], [ %.090246.i.i, %bb.cf ] ; 2 uses
  %indvars.iv.next268.i.i = add nuw nsw i64 %indvars.iv267.i.i, 1 ; 3 uses
  %i.pn = add nsw i32 %i.pm, -1
  %i.po = sext i32 %i.pn to i64
  %i.pp = icmp slt i64 %indvars.iv.next268.i.i, %i.po
  br i1 %i.pp, label %bb.cf, label %._crit_edge249.loopexit.split.loop.exit317.i.i, !llvm.loop !6661

._crit_edge249.loopexit.split.loop.exit317.i.i:   ; preds = %bb.ch
  %indvars.le.i.i = trunc nsw i64 %indvars.iv.next268.i.i to i32
  br label %._crit_edge249.i.i

._crit_edge249.i.i:                               ; preds = %bb.cg, %._crit_edge249.loopexit.split.loop.exit317.i.i, %bb.ce
  %i.pq = phi i32 [ %i.ou, %bb.ce ], [ %i.pm, %._crit_edge249.loopexit.split.loop.exit317.i.i ], [ %.pre275.pre.i.i, %bb.cg ]
  %.4.lcssa.i.i = phi i32 [ 0, %bb.ce ], [ %indvars.le.i.i, %._crit_edge249.loopexit.split.loop.exit317.i.i ], [ %i.pd, %bb.cg ]
  %.090.lcssa.i.i = phi i32 [ 0, %bb.ce ], [ %.292.i.i, %._crit_edge249.loopexit.split.loop.exit317.i.i ], [ %.090246.i.i, %bb.cg ]
  %i.pr = add nsw i32 %i.pq, -1
  %i.ps = icmp eq i32 %.4.lcssa.i.i, %i.pr
  br i1 %i.ps, label %bb.cn, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge249.i.i
  %i.pt = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i154.i.i = icmp eq i32 %i.pt, 0
  br i1 %.not.i154.i.i, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.pu = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i155.i.i = icmp eq ptr %i.pu, null
  br i1 %.not.i.i155.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.pv(ptr noundef nonnull %i.pu) #59, !inline_history !6662
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.ck, %bb.cj
  %i.pw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.px = tail call i32 %i.pw(ptr noundef nonnull %i.ol) #59, !inline_history !6663
  %i.py = sext i32 %i.px to i64
  %i.pz = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.qa = sub nsw i64 %i.pz, %i.py
  store i64 %i.qa, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.qb = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.qc = add nsw i64 %i.qb, -1
  store i64 %i.qc, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.qd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.qd(ptr noundef nonnull %i.ol) #59, !inline_history !6664
  %i.qe = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.qe, null
  br i1 %.not.i4.i.i.i, label %.preheader194.i.i.backedge, label %bb.cl

bb.cl:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.qf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.qf(ptr noundef nonnull %i.qe) #59, !inline_history !6665
  br label %.preheader194.i.i.backedge

bb.cm:                                            ; preds = %bb.ci
  %i.qg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.qg(ptr noundef nonnull %i.ol) #59, !inline_history !6664
  br label %.preheader194.i.i.backedge

.preheader194.i.i.backedge:                       ; preds = %bb.cm, %bb.cl, %sqlite3_mutex_enter.exit.i.i.i
  br label %.preheader194.i.i

bb.cn:                                            ; preds = %._crit_edge249.i.i
  store i64 %.2100.lcssa.i.i, ptr %i.gd, align 8, !tbaa !2985
  store ptr %i.ol, ptr %i.fk, align 8, !tbaa !2949
  store i32 %.090.lcssa.i.i, ptr %i.fl, align 8, !tbaa !2954
  store i32 1, ptr %i.er, align 8, !tbaa !2948
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %._crit_edge.i.i, %bb.cn
  %.2163.lcssa266.i.i = phi i8 [ 0, %bb.cn ], [ 1, %._crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  br label %bb.co

sqlite3_malloc64.exit.thread.i.i:                 ; preds = %sqlite3_malloc64.exit.i.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  br label %fts3EvalPhraseNext.exit

bb.co:                                            ; preds = %.thread.i.i, %bb.ar
  %.5166.i.i = phi i8 [ %.2163.lcssa266.i.i, %.thread.i.i ], [ %spec.select.i.i, %bb.ar ]
  %.6.i.i = phi i32 [ %.2107.lcssa.i.i, %.thread.i.i ], [ %i.fv, %bb.ar ]
  store i8 %.5166.i.i, ptr %i.h, align 8, !tbaa !741
  br label %fts3EvalPhraseNext.exit

bb.cp:                                            ; preds = %fts3EvalInvalidatePoslist.exit
  %i.qh = load i8, ptr %i.k, align 4, !tbaa !2889
  %i.qi = getelementptr inbounds nuw i8, ptr %i.fm, i64 463 ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !2846 ; 2 uses
  %i.qk = zext i8 %i.qj to i32
  %.not23.i = icmp eq i8 %i.qh, %i.qj
  br i1 %.not23.i, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ql = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !2977 ; 2 uses
  %.not24.i = icmp eq i32 %i.qm, 0
  br i1 %.not24.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qn = load ptr, ptr %i.eq, align 8, !tbaa !2947
  %i.qo = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  tail call fastcc void @sqlite3Fts3DoclistPrev(i32 noundef %i.qk, ptr noundef %i.qn, i32 noundef %i.qm, ptr noundef nonnull %i.qo, ptr noundef nonnull %i.qp, ptr noundef nonnull %i.fl, ptr noundef nonnull %i.h), !inline_history !6666
  %i.qq = load ptr, ptr %i.qo, align 8, !tbaa !6667
  store ptr %i.qq, ptr %i.fk, align 8, !tbaa !2949
  br label %fts3EvalPhraseNext.exit

bb.cs:                                            ; preds = %bb.cq, %bb.cp
  %i.qr = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 3 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !6667 ; 2 uses
  %.not.i25.i = icmp eq ptr %i.qs, null
  %.pre.i26.i = load ptr, ptr %i.eq, align 8, !tbaa !2947 ; 4 uses
  br i1 %.not.i25.i, label %bb.ct, label %.thread.i27.i

bb.ct:                                            ; preds = %bb.cs
  %i.qt = icmp eq ptr %.pre.i26.i, null
  br i1 %i.qt, label %bb.cu, label %.thread.i27.i

.thread.i27.i:                                    ; preds = %bb.ct, %bb.cs
  %storemerge27.i.i = phi ptr [ %.pre.i26.i, %bb.ct ], [ %i.qs, %bb.cs ] ; 3 uses
  %i.qu = ptrtoaddr ptr %.pre.i26.i to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !2977
  %i.qx = sext i32 %i.qw to i64                   ; 2 uses
  %i.qy = getelementptr inbounds i8, ptr %.pre.i26.i, i64 %i.qx ; 2 uses
  %.not19.i.i = icmp ult ptr %storemerge27.i.i, %i.qy
  br i1 %.not19.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %.thread.i27.i, %bb.ct
  store i8 1, ptr %i.h, align 8, !tbaa !741
  br label %fts3EvalPhraseNext.exit

bb.cv:                                            ; preds = %.thread.i27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.qz = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %storemerge27.i.i, ptr noundef nonnull %i.a), !inline_history !6666
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds i8, ptr %storemerge27.i.i, i64 %i.ra ; 5 uses
  %i.rc = load i8, ptr %i.qi, align 1, !tbaa !2846
  %i.rd = icmp eq i8 %i.rc, 0
  br i1 %i.rd, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.re = load ptr, ptr %i.qr, align 8, !tbaa !6667
  %i.rf = icmp eq ptr %i.re, null
  br i1 %i.rf, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.rg = load i64, ptr %i.a, align 8, !tbaa !571
  %i.rh = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 2 uses
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !2985
  %i.rj = add nsw i64 %i.ri, %i.rg
  store i64 %i.rj, ptr %i.rh, align 8, !tbaa !2985
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  %i.rk = load i64, ptr %i.a, align 8, !tbaa !571
  %i.rl = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 2 uses
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !2985
  %i.rn = sub nsw i64 %i.rm, %i.rk
  store i64 %i.rn, ptr %i.rl, align 8, !tbaa !2985
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  store ptr %i.rb, ptr %i.fk, align 8, !tbaa !2949
  %i.ro = load i8, ptr %i.rb, align 1, !tbaa !741 ; 2 uses
  %.not21.i.i.i = icmp eq i8 %i.ro, 0
  br i1 %.not21.i.i.i, label %fts3PoslistCopy.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.cz
  %i.rp = sext i8 %i.ro to i32
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %i.rq = phi i32 [ %i.rt, %.lr.ph.i.i.i ], [ %i.rp, %.lr.ph.preheader.i.i.i ]
  %.022.i.i.i = phi ptr [ %i.rr, %.lr.ph.i.i.i ], [ %i.rb, %.lr.ph.preheader.i.i.i ]
  %i.rr = getelementptr inbounds nuw i8, ptr %.022.i.i.i, i64 1 ; 3 uses
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !741
  %i.rt = sext i8 %i.rs to i32                    ; 2 uses
  %i.ru = and i32 %i.rq, -128
  %i.rv = or i32 %i.ru, %i.rt
  %.not.i.i28.i = icmp eq i32 %i.rv, 0
  br i1 %.not.i.i28.i, label %fts3PoslistCopy.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !407

fts3PoslistCopy.exit.i.i:                         ; preds = %.lr.ph.i.i.i, %bb.cz
  %.0.lcssa.i.i.i = phi ptr [ %i.rb, %bb.cz ], [ %i.rr, %.lr.ph.i.i.i ] ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 1 ; 4 uses
  %i.rx = ptrtoint ptr %i.rw to i64
  %i.ry = ptrtoint ptr %i.rb to i64
  %i.rz = sub i64 %i.rx, %i.ry
  %i.sa = trunc i64 %i.rz to i32
  store i32 %i.sa, ptr %i.fl, align 8, !tbaa !2954
  %i.sb = icmp ult ptr %i.rw, %i.qy
  br i1 %i.sb, label %.lr.ph.preheader.i.i, label %.critedge.i29.i

.lr.ph.preheader.i.i:                             ; preds = %fts3PoslistCopy.exit.i.i
  %.0.lcssa.i31.i.i = ptrtoaddr ptr %.0.lcssa.i.i.i to i64
  %i.sc = add i64 %i.qx, %i.qu
  %i.sd = sub i64 %i.sc, %.0.lcssa.i31.i.i
  %scevgep.i.i = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.sd ; 2 uses
  br label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %bb.da, %.lr.ph.preheader.i.i
  %.028.i.i = phi ptr [ %i.sg, %bb.da ], [ %i.rw, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.se = load i8, ptr %.028.i.i, align 1, !tbaa !741
  %i.sf = icmp eq i8 %i.se, 0
  br i1 %i.sf, label %bb.da, label %.critedge.i29.i

bb.da:                                            ; preds = %.lr.ph.i30.i
end_hunk_9
begin_hunk_10_@sessionApplyOneOp:bb.a
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.dy(ptr noundef nonnull %i.dj) #59, !inline_history !8329
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.ag, %bb.af, %sqlite3_mutex_enter.exit.i.i, %bb.ab
  store ptr null, ptr %.093.i, align 8, !tbaa !8335
  br label %bb.ah

.thread328.i:                                     ; preds = %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !3671
  store ptr %i.ea, ptr %.093.i, align 8, !tbaa !8335
  %i.eb = load ptr, ptr %i.cw, align 8, !tbaa !3669
  store ptr %i.eb, ptr %i.dz, align 8, !tbaa !3671
  store ptr %i.cz, ptr %i.cw, align 8, !tbaa !3669
  br label %bb.dm

bb.ah:                                            ; preds = %sqlite3_free.exit.i, %bb.aa, %bb.x
  %i.ec = mul i32 %i.bh, 96                       ; 2 uses
  %i.ed = load ptr, ptr %i.h, align 8, !tbaa !1603 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %sqlite3_stricmp.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ah, %bb.ak
  %.013.i.i.i = phi ptr [ %i.ep, %bb.ak ], [ %i.ed, %bb.ah ] ; 2 uses
  %.012.i.i.i = phi ptr [ %i.eq, %bb.ak ], [ @.str.405, %bb.ah ] ; 2 uses
  %i.ef = load i8, ptr %.013.i.i.i, align 1, !tbaa !741 ; 3 uses
  %i.eg = load i8, ptr %.012.i.i.i, align 1, !tbaa !741 ; 2 uses
  %i.eh = icmp eq i8 %i.ef, %i.eg                 ; 3 uses
  br i1 %i.eh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.preheader.i.i
  %i.ei = icmp eq i8 %i.ef, 0
  br i1 %i.ei, label %sqlite3_stricmp.exit.i, label %bb.ak

bb.aj:                                            ; preds = %.preheader.i.i
  %i.ej = zext i8 %i.ef to i64
  %i.ek = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !741
  %i.em = zext i8 %i.eg to i64
  %i.en = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !741
  %.not.i.i111.i = icmp eq i8 %i.el, %i.eo
  br i1 %.not.i.i111.i, label %bb.ak, label %sqlite3_stricmp.exit.i

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ep = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 1
  %i.eq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 1
  br label %.preheader.i.i

sqlite3_stricmp.exit.i:                           ; preds = %bb.aj, %bb.ai, %bb.ah
  %.0.i112.i = phi i1 [ false, %bb.ah ], [ %i.eh, %bb.ai ], [ %i.eh, %bb.aj ]
  %i.er = tail call i32 @sqlite3_initialize(), !inline_history !1111
  %.not.i113.i = icmp ne i32 %i.er, 0
  %i.es = icmp slt i32 %i.ec, 1
  %or.cond.i114.i = or i1 %i.es, %.not.i113.i
  br i1 %or.cond.i114.i, label %sessionUpdateFind.exit.thread, label %sqlite3_malloc.exit116.i

sqlite3_malloc.exit116.i:                         ; preds = %sqlite3_stricmp.exit.i
  %i.et = zext nneg i32 %i.ec to i64
  %i.eu = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.et), !inline_history !1111 ; 10 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %sessionUpdateFind.exit.thread, label %bb.al

bb.al:                                            ; preds = %sqlite3_malloc.exit116.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !8334
  %i.ey = load ptr, ptr %i.bi, align 8, !tbaa !3673
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ew, ptr align 4 %i.ey, i64 %i.bt, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 13 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 19 uses
  %i.fb = tail call i32 @sqlite3_initialize(), !inline_history !1272
  %.not.i.i.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i.i.i, label %sqlite3_realloc64.exit.i.i.i, label %sqlite3_realloc64.exit.thread.i.i.i

sqlite3_realloc64.exit.i.i.i:                     ; preds = %bb.al
  %i.fc = tail call fastcc ptr @sqlite3Malloc(i64 noundef 256) ; 4 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %sqlite3_realloc64.exit.thread.i.i.i, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i.i

sqlite3_realloc64.exit.thread.i.i.i:              ; preds = %sqlite3_realloc64.exit.i.i.i, %bb.al
  store i32 7, ptr %i.c, align 4, !tbaa !576
  br label %sessionAppendStr.exit.i

sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i.i: ; preds = %sqlite3_realloc64.exit.i.i.i
  store ptr %i.fc, ptr %6, align 8, !tbaa !1574
  store i32 256, ptr %i.fa, align 4, !tbaa !1573
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.fc, ptr noundef nonnull align 1 dereferenceable(12) @.str.2146, i64 12, i1 false)
  store i32 12, ptr %i.ez, align 8, !tbaa !1570
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i8 0, ptr %i.fe, align 1, !tbaa !741
  br label %sessionAppendStr.exit.i

sessionAppendStr.exit.i:                          ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i.i, %sqlite3_realloc64.exit.thread.i.i.i
  %i.ff = load ptr, ptr %i.h, align 8, !tbaa !1603
  call fastcc void @sessionAppendIdent(ptr noundef %6, ptr noundef %i.ff, ptr noundef %i.c)
  %i.fg = load i32, ptr %i.ez, align 8, !tbaa !1570 ; 6 uses
  %i.fh = sext i32 %i.fg to i64                   ; 2 uses
  %i.fi = add nsw i64 %i.fh, 6                    ; 2 uses
  %i.fj = load i32, ptr %i.c, align 4, !tbaa !576 ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.am, label %sessionAppendStr.exit137.i

bb.am:                                            ; preds = %sessionAppendStr.exit.i
  %i.fl = load i32, ptr %i.fa, align 4, !tbaa !1573 ; 2 uses
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %i.fn = icmp sgt i64 %i.fi, %i.fm
  br i1 %i.fn, label %bb.an, label %.sessionBufferGrow.exit.thread12_crit_edge.i119.i

.sessionBufferGrow.exit.thread12_crit_edge.i119.i: ; preds = %bb.am
  %.pre.i120.i = load ptr, ptr %6, align 8, !tbaa !1574
  br label %sessionBufferGrow.exit.thread12.i121.i

bb.an:                                            ; preds = %bb.am
  %.not.i.i123.i = icmp eq i32 %i.fl, 0
  %spec.select.i.i124.i = select i1 %.not.i.i123.i, i64 128, i64 %i.fm
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %.024.i.i125.i = phi i64 [ %spec.select.i.i124.i, %bb.an ], [ %i.fo, %bb.ao ] ; 2 uses
  %i.fo = shl nsw i64 %.024.i.i125.i, 1           ; 3 uses
  %i.fp = icmp slt i64 %i.fo, %i.fi
  br i1 %i.fp, label %bb.ao, label %bb.ap, !llvm.loop !125

bb.ap:                                            ; preds = %bb.ao
  %i.fq = icmp sgt i64 %.024.i.i125.i, 1073741695
  br i1 %i.fq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fr = icmp sgt i32 %i.fg, 2147483385
  br i1 %i.fr, label %.critedge.i.i136.i, label %bb.ar

.critedge.i.i136.i:                               ; preds = %bb.aq
  store i32 7, ptr %i.c, align 4, !tbaa !576
  br label %sessionAppendStr.exit137.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1.i.i126.i = phi i64 [ 2147483391, %bb.aq ], [ %i.fo, %bb.ap ] ; 2 uses
  %i.fs = load ptr, ptr %6, align 8, !tbaa !1574
  %i.ft = tail call i32 @sqlite3_initialize(), !inline_history !1272
  %.not.i.i.i127.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i.i127.i, label %sqlite3_realloc64.exit.i.i129.i, label %sqlite3_realloc64.exit.thread.i.i128.i

sqlite3_realloc64.exit.i.i129.i:                  ; preds = %bb.ar
  %i.fu = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.fs, i64 noundef %.1.i.i126.i), !inline_history !1272 ; 3 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %sqlite3_realloc64.exit.thread.i.i128.i, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i133.i

sqlite3_realloc64.exit.thread.i.i128.i:           ; preds = %sqlite3_realloc64.exit.i.i129.i, %bb.ar
  store i32 7, ptr %i.c, align 4, !tbaa !576
  br label %sessionAppendStr.exit137.i

sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i133.i: ; preds = %sqlite3_realloc64.exit.i.i129.i
  store ptr %i.fu, ptr %6, align 8, !tbaa !1574
  %i.fw = trunc nsw i64 %.1.i.i126.i to i32
  store i32 %i.fw, ptr %i.fa, align 4, !tbaa !1573
  br label %sessionBufferGrow.exit.thread12.i121.i

sessionBufferGrow.exit.thread12.i121.i:           ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i133.i, %.sessionBufferGrow.exit.thread12_crit_edge.i119.i
  %i.fx = phi ptr [ %i.fu, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i133.i ], [ %.pre.i120.i, %.sessionBufferGrow.exit.thread12_crit_edge.i119.i ] ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 %i.fh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.fy, ptr noundef nonnull align 1 dereferenceable(5) @.str.2147, i64 5, i1 false)
  %i.fz = add nsw i32 %i.fg, 5                    ; 3 uses
  store i32 %i.fz, ptr %i.ez, align 8, !tbaa !1570
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds i8, ptr %i.fx, i64 %i.ga
  store i8 0, ptr %i.gb, align 1, !tbaa !741
  br label %sessionAppendStr.exit137.i

sessionAppendStr.exit137.i:                       ; preds = %sessionBufferGrow.exit.thread12.i121.i, %sqlite3_realloc64.exit.thread.i.i128.i, %.critedge.i.i136.i, %sessionAppendStr.exit.i
  %i.gc = phi i32 [ %i.fg, %sessionAppendStr.exit.i ], [ %i.fg, %.critedge.i.i136.i ], [ %i.fg, %sqlite3_realloc64.exit.thread.i.i128.i ], [ %i.fz, %sessionBufferGrow.exit.thread12.i121.i ] ; 2 uses
  %i.gd = phi i32 [ %i.fj, %sessionAppendStr.exit.i ], [ 7, %.critedge.i.i136.i ], [ 7, %sqlite3_realloc64.exit.thread.i.i128.i ], [ 0, %sessionBufferGrow.exit.thread12.i121.i ] ; 3 uses
  %i.ge = load i32, ptr %i.f, align 8, !tbaa !1591 ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, 0
  br i1 %i.gf, label %.lr.ph349.i, label %._crit_edge350.i

.lr.ph349.i:                                      ; preds = %sessionAppendStr.exit137.i
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.as

bb.as:                                            ; preds = %bb.bo, %.lr.ph349.i
  %i.gi = phi i32 [ %i.gc, %.lr.ph349.i ], [ %i.kc, %bb.bo ] ; 4 uses
  %i.gj = phi i32 [ %i.gd, %.lr.ph349.i ], [ %i.kd, %bb.bo ] ; 2 uses
  %i.gk = phi i32 [ %i.ge, %.lr.ph349.i ], [ %i.ke, %bb.bo ] ; 3 uses
  %i.gl = phi i32 [ %i.gd, %.lr.ph349.i ], [ %i.kf, %bb.bo ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph349.i ], [ %indvars.iv.next.i, %bb.bo ] ; 4 uses
  %.089348.i = phi ptr [ @.str.4, %.lr.ph349.i ], [ %.190.i, %bb.bo ] ; 5 uses
  %i.gm = load ptr, ptr %i.gg, align 8, !tbaa !1625
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv.i
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !741
  %i.gp = icmp eq i8 %i.go, 0
  br i1 %i.gp, label %bb.at, label %bb.bo

bb.at:                                            ; preds = %bb.as
  %i.gq = load ptr, ptr %i.bw, align 8, !tbaa !1590
  %i.gr = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.gs = add nsw i32 %i.gk, %i.gr
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gt
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !767
  %.not107.i = icmp eq ptr %i.gv, null
  br i1 %.not107.i, label %bb.bo, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gw = icmp eq ptr %.089348.i, null
  br i1 %i.gw, label %sqlite3Strlen30.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gx = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.089348.i) #60
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = and i32 %i.gy, 1073741823
  br label %sqlite3Strlen30.exit.i.i

sqlite3Strlen30.exit.i.i:                         ; preds = %bb.av, %bb.au
  %.0.i.i.i = phi i32 [ %i.gz, %bb.av ], [ 0, %bb.au ] ; 3 uses
  %i.ha = add nuw nsw i32 %.0.i.i.i, 1
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = sext i32 %i.gi to i64                   ; 2 uses
  %i.hd = add nsw i64 %i.hb, %i.hc                ; 3 uses
  %i.he = icmp eq i32 %i.gl, 0
  br i1 %i.he, label %bb.aw, label %sessionAppendStr.exit156.i

bb.aw:                                            ; preds = %sqlite3Strlen30.exit.i.i
  %i.hf = load i32, ptr %i.fa, align 4, !tbaa !1573 ; 2 uses
  %i.hg = sext i32 %i.hf to i64                   ; 2 uses
  %i.hh = icmp sgt i64 %i.hd, %i.hg
  br i1 %i.hh, label %bb.ax, label %.sessionBufferGrow.exit.thread12_crit_edge.i138.i

.sessionBufferGrow.exit.thread12_crit_edge.i138.i: ; preds = %bb.aw
  %.pre.i139.i = load ptr, ptr %6, align 8, !tbaa !1574
  br label %sessionBufferGrow.exit.thread12.i140.i

bb.ax:                                            ; preds = %bb.aw
  %.not.i.i142.i = icmp eq i32 %i.hf, 0
  %spec.select.i.i143.i = select i1 %.not.i.i142.i, i64 128, i64 %i.hg
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.024.i.i144.i = phi i64 [ %spec.select.i.i143.i, %bb.ax ], [ %i.hi, %bb.ay ] ; 2 uses
  %i.hi = shl nsw i64 %.024.i.i144.i, 1           ; 3 uses
  %i.hj = icmp slt i64 %i.hi, %i.hd
  br i1 %i.hj, label %bb.ay, label %bb.az, !llvm.loop !125

bb.az:                                            ; preds = %bb.ay
  %i.hk = icmp sgt i64 %.024.i.i144.i, 1073741695
  br i1 %i.hk, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hl = icmp sgt i64 %i.hd, 2147483391
  br i1 %i.hl, label %.critedge.i.i155.i, label %bb.bb

.critedge.i.i155.i:                               ; preds = %bb.ba
  store i32 7, ptr %i.c, align 4, !tbaa !576
  br label %sessionAppendStr.exit156.i

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.1.i.i145.i = phi i64 [ 2147483391, %bb.ba ], [ %i.hi, %bb.az ] ; 2 uses
  %i.hm = load ptr, ptr %6, align 8, !tbaa !1574
  %i.hn = call i32 @sqlite3_initialize(), !inline_history !1272
  %.not.i.i.i146.i = icmp eq i32 %i.hn, 0
  br i1 %.not.i.i.i146.i, label %sqlite3_realloc64.exit.i.i148.i, label %sqlite3_realloc64.exit.thread.i.i147.i

sqlite3_realloc64.exit.i.i148.i:                  ; preds = %bb.bb
  %i.ho = call fastcc ptr @sqlite3Realloc(ptr noundef %i.hm, i64 noundef %.1.i.i145.i), !inline_history !1272 ; 3 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %sqlite3_realloc64.exit.thread.i.i147.i, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i152.i

sqlite3_realloc64.exit.thread.i.i147.i:           ; preds = %sqlite3_realloc64.exit.i.i148.i, %bb.bb
  store i32 7, ptr %i.c, align 4, !tbaa !576
  br label %sessionAppendStr.exit156.i

sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i152.i: ; preds = %sqlite3_realloc64.exit.i.i148.i
  store ptr %i.ho, ptr %6, align 8, !tbaa !1574
  %i.hq = trunc nsw i64 %.1.i.i145.i to i32
  store i32 %i.hq, ptr %i.fa, align 4, !tbaa !1573
  br label %sessionBufferGrow.exit.thread12.i140.i

sessionBufferGrow.exit.thread12.i140.i:           ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i152.i, %.sessionBufferGrow.exit.thread12_crit_edge.i138.i
  %i.hr = phi ptr [ %i.ho, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i152.i ], [ %.pre.i139.i, %.sessionBufferGrow.exit.thread12_crit_edge.i138.i ] ; 2 uses
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 %i.hc
  %i.ht = zext nneg i32 %.0.i.i.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hs, ptr readonly align 1 %.089348.i, i64 %i.ht, i1 false)
  %i.hu = add nsw i32 %i.gi, %.0.i.i.i            ; 2 uses
  store i32 %i.hu, ptr %i.ez, align 8, !tbaa !1570
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds i8, ptr %i.hr, i64 %i.hv
  store i8 0, ptr %i.hw, align 1, !tbaa !741
  br label %sessionAppendStr.exit156.i

sessionAppendStr.exit156.i:                       ; preds = %sessionBufferGrow.exit.thread12.i140.i, %sqlite3_realloc64.exit.thread.i.i147.i, %.critedge.i.i155.i, %sqlite3Strlen30.exit.i.i
  %i.hx = load ptr, ptr %i.gh, align 8, !tbaa !1616
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv.i
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !747
  call fastcc void @sessionAppendIdent(ptr noundef %6, ptr noundef %i.hz, ptr noundef %i.c)
  %i.ia = load i32, ptr %i.ez, align 8, !tbaa !1570 ; 6 uses
  %i.ib = sext i32 %i.ia to i64                   ; 5 uses
  %i.ic = add nsw i64 %i.ib, 5                    ; 2 uses
  %i.id = load i32, ptr %i.c, align 4, !tbaa !576 ; 2 uses
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.bc, label %sessionAppendStr.exit177.i

bb.bc:                                            ; preds = %sessionAppendStr.exit156.i
  %i.if = load i32, ptr %i.fa, align 4, !tbaa !1573 ; 2 uses
  %i.ig = sext i32 %i.if to i64                   ; 2 uses
  %i.ih = icmp sgt i64 %i.ic, %i.ig
  br i1 %i.ih, label %bb.bd, label %.sessionBufferGrow.exit.thread12_crit_edge.i159.i

.sessionBufferGrow.exit.thread12_crit_edge.i159.i: ; preds = %bb.bc
  %.pre.i160.i = load ptr, ptr %6, align 8, !tbaa !1574
  br label %sessionBufferGrow.exit.thread12.i161.i

bb.bd:                                            ; preds = %bb.bc
  %.not.i.i163.i = icmp eq i32 %i.if, 0
  %spec.select.i.i164.i = select i1 %.not.i.i163.i, i64 128, i64 %i.ig
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %.024.i.i165.i = phi i64 [ %spec.select.i.i164.i, %bb.bd ], [ %i.ii, %bb.be ] ; 2 uses
  %i.ii = shl nsw i64 %.024.i.i165.i, 1           ; 3 uses
  %i.ij = icmp slt i64 %i.ii, %i.ic
  br i1 %i.ij, label %bb.be, label %bb.bf, !llvm.loop !125

bb.bf:                                            ; preds = %bb.be
  %i.ik = icmp sgt i64 %.024.i.i165.i, 1073741695
  br i1 %i.ik, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.il = icmp sgt i32 %i.ia, 2147483386
  br i1 %i.il, label %.critedge.i.i176.i, label %bb.bh

.critedge.i.i176.i:                               ; preds = %bb.bg
  store i32 7, ptr %i.c, align 4, !tbaa !576
  br label %sessionAppendStr.exit177.i

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.1.i.i166.i = phi i64 [ 2147483391, %bb.bg ], [ %i.ii, %bb.bf ] ; 2 uses
  %i.im = load ptr, ptr %6, align 8, !tbaa !1574
  %i.in = call i32 @sqlite3_initialize(), !inline_history !1272
  %.not.i.i.i167.i = icmp eq i32 %i.in, 0
  br i1 %.not.i.i.i167.i, label %sqlite3_realloc64.exit.i.i169.i, label %sqlite3_realloc64.exit.thread.i.i168.i

sqlite3_realloc64.exit.i.i169.i:                  ; preds = %bb.bh
  %i.io = call fastcc ptr @sqlite3Realloc(ptr noundef %i.im, i64 noundef %.1.i.i166.i), !inline_history !1272 ; 3 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %sqlite3_realloc64.exit.thread.i.i168.i, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i173.i

sqlite3_realloc64.exit.thread.i.i168.i:           ; preds = %sqlite3_realloc64.exit.i.i169.i, %bb.bh
  store i32 7, ptr %i.c, align 4, !tbaa !576
  br label %sessionAppendStr.exit177.i

sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i173.i: ; preds = %sqlite3_realloc64.exit.i.i169.i
  store ptr %i.io, ptr %6, align 8, !tbaa !1574
  %i.iq = trunc nsw i64 %.1.i.i166.i to i32
  store i32 %i.iq, ptr %i.fa, align 4, !tbaa !1573
  br label %sessionBufferGrow.exit.thread12.i161.i

sessionBufferGrow.exit.thread12.i161.i:           ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i173.i, %.sessionBufferGrow.exit.thread12_crit_edge.i159.i
  %i.ir = phi ptr [ %i.io, %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i173.i ], [ %.pre.i160.i, %.sessionBufferGrow.exit.thread12_crit_edge.i159.i ] ; 2 uses
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 %i.ib
  store i32 1059077408, ptr %i.is, align 1
  %i.it = add nsw i32 %i.ia, 4                    ; 3 uses
  store i32 %i.it, ptr %i.ez, align 8, !tbaa !1570
  %i.iu = sext i32 %i.it to i64                   ; 2 uses
  %i.iv = getelementptr inbounds i8, ptr %i.ir, i64 %i.iu
  store i8 0, ptr %i.iv, align 1, !tbaa !741
  br label %sessionAppendStr.exit177.i

sessionAppendStr.exit177.i:                       ; preds = %sessionBufferGrow.exit.thread12.i161.i, %sqlite3_realloc64.exit.thread.i.i168.i, %.critedge.i.i176.i, %sessionAppendStr.exit156.i
  %.pre-phi201 = phi i64 [ %i.iu, %sessionBufferGrow.exit.thread12.i161.i ], [ %i.ib, %sqlite3_realloc64.exit.thread.i.i168.i ], [ %i.ib, %.critedge.i.i176.i ], [ %i.ib, %sessionAppendStr.exit156.i ] ; 2 uses
  %i.iw = phi i32 [ %i.it, %sessionBufferGrow.exit.thread12.i161.i ], [ %i.ia, %sqlite3_realloc64.exit.thread.i.i168.i ], [ %i.ia, %.critedge.i.i176.i ], [ %i.ia, %sessionAppendStr.exit156.i ] ; 4 uses
  %i.ix = phi i32 [ 0, %sessionBufferGrow.exit.thread12.i161.i ], [ 7, %sqlite3_realloc64.exit.thread.i.i168.i ], [ 7, %.critedge.i.i176.i ], [ %i.id, %sessionAppendStr.exit156.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.iy = shl nuw i32 %i.gr, 1
  %i.iz = or disjoint i32 %i.iy, 1
  %i.ja = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 23, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.149, i32 noundef range(i32 -2147483647, -2147483648) %i.iz) ; 0 uses
  %i.jb = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.b) #60 ; 2 uses
  %i.jc = trunc i64 %i.jb to i32
  %i.jd = and i32 %i.jc, 1073741823               ; 2 uses
  %i.je = add nuw nsw i32 %i.jd, 1
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = add nsw i64 %.pre-phi201, %i.jf         ; 3 uses
  %i.jh = icmp eq i32 %i.ix, 0
  br i1 %i.jh, label %bb.bi, label %sessionAppendStr.exit292.i

bb.bi:                                            ; preds = %sessionAppendStr.exit177.i
  %i.ji = load i32, ptr %i.fa, align 4, !tbaa !1573 ; 2 uses
  %i.jj = sext i32 %i.ji to i64                   ; 2 uses
  %i.jk = icmp sgt i64 %i.jg, %i.jj
  br i1 %i.jk, label %bb.bj, label %.sessionBufferGrow.exit.thread12_crit_edge.i274.i

.sessionBufferGrow.exit.thread12_crit_edge.i274.i: ; preds = %bb.bi
  %.pre.i275.i = load ptr, ptr %6, align 8, !tbaa !1574
  br label %sessionBufferGrow.exit.thread12.i276.i

bb.bj:                                            ; preds = %bb.bi
  %.not.i.i278.i = icmp eq i32 %i.ji, 0
  %spec.select.i.i279.i = select i1 %.not.i.i278.i, i64 128, i64 %i.jj
end_hunk_10
