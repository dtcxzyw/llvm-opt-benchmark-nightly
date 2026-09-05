Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 92
loop-unroll.NumUnrolled: 369
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_str_vappendf:bb.a
  %i.zr = add i64 %i.zm, %i.zq
  %i.zs = mul i64 %i.zr, 10
  %i.zt = add i64 %i.zs, -480
  %i.zu = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv207.i
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 3
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !733
  %i.zx = sext i8 %i.zw to i64
  %i.zy = add i64 %i.zt, %i.zx                    ; 3 uses
  %indvars.iv.next208.i.3 = add nuw nsw i64 %indvars.iv207.i, 4 ; 2 uses
  %niter2239.next.3 = add nuw i64 %niter2239, 4   ; 2 uses
  %niter2239.ncmp.3 = icmp eq i64 %niter2239.next.3, %unroll_iter2238
  br i1 %niter2239.ncmp.3, label %._crit_edge191.i.loopexit.unr-lcssa, label %.lr.ph190.i, !llvm.loop !3098

._crit_edge191.i.loopexit.unr-lcssa:              ; preds = %.lr.ph190.i
  %lcmp.mod2235.not = icmp eq i64 %xtraiter2233, 0
  br i1 %lcmp.mod2235.not, label %._crit_edge191.i, label %.lr.ph190.i.epil.preheader

.lr.ph190.i.epil.preheader:                       ; preds = %._crit_edge191.i.loopexit.unr-lcssa, %.lr.ph190.preheader.i
  %indvars.iv207.i.epil.init = phi i64 [ 1, %.lr.ph190.preheader.i ], [ %indvars.iv.next208.i.3, %._crit_edge191.i.loopexit.unr-lcssa ]
  %.0121.in189.i.epil.init = phi i64 [ %i.yu, %.lr.ph190.preheader.i ], [ %i.zy, %._crit_edge191.i.loopexit.unr-lcssa ]
  %lcmp.mod2237 = icmp ne i64 %xtraiter2233, 0
  call void @llvm.assume(i1 %lcmp.mod2237)
  br label %.lr.ph190.i.epil

.lr.ph190.i.epil:                                 ; preds = %.lr.ph190.i.epil, %.lr.ph190.i.epil.preheader
  %indvars.iv207.i.epil = phi i64 [ %indvars.iv207.i.epil.init, %.lr.ph190.i.epil.preheader ], [ %indvars.iv.next208.i.epil, %.lr.ph190.i.epil ] ; 2 uses
  %.0121.in189.i.epil = phi i64 [ %.0121.in189.i.epil.init, %.lr.ph190.i.epil.preheader ], [ %i.aae, %.lr.ph190.i.epil ]
  %epil.iter2234 = phi i64 [ 0, %.lr.ph190.i.epil.preheader ], [ %epil.iter2234.next, %.lr.ph190.i.epil ]
  %i.zz = mul i64 %.0121.in189.i.epil, 10
  %i.aaa = add i64 %i.zz, -480
  %i.aab = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv207.i.epil
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !733
  %i.aad = sext i8 %i.aac to i64
  %i.aae = add i64 %i.aaa, %i.aad                 ; 2 uses
  %indvars.iv.next208.i.epil = add nuw nsw i64 %indvars.iv207.i.epil, 1
  %epil.iter2234.next = add i64 %epil.iter2234, 1 ; 2 uses
  %epil.iter2234.cmp.not = icmp eq i64 %epil.iter2234.next, %xtraiter2233
  br i1 %epil.iter2234.cmp.not, label %._crit_edge191.i, label %.lr.ph190.i.epil, !llvm.loop !3099

._crit_edge191.i:                                 ; preds = %._crit_edge191.i.loopexit.unr-lcssa, %.lr.ph190.i.epil, %.critedge.thread.i
  %.0123187.lcssa232.i = phi i32 [ 1, %.critedge.thread.i ], [ %.0123187.lcssa.ph.i, %.lr.ph190.i.epil ], [ %.0123187.lcssa.ph.i, %._crit_edge191.i.loopexit.unr-lcssa ]
  %.0121.in.lcssa.i = phi i64 [ %i.yt, %.critedge.thread.i ], [ %i.zy, %._crit_edge191.i.loopexit.unr-lcssa ], [ %i.aae, %.lr.ph190.i.epil ]
  %i.aaf = add i64 %.0121.in.lcssa.i, -47
  br label %.thread171.sink.split.i

bb.ge:                                            ; preds = %bb.gc
  %.not147.i = icmp slt i32 %i.ws, %.0130163.i
  br i1 %.not147.i, label %bb.gf, label %.preheader2173

.thread169.i:                                     ; preds = %bb.gd
  %.not147170.i = icmp slt i32 %i.ws, %.0130163.i
  br i1 %.not147170.i, label %.thread171.i, label %.preheader2173

bb.gf:                                            ; preds = %bb.ge
  %i.aag = icmp eq i8 %i.wz, 48
  br i1 %i.aag, label %bb.gg, label %.thread171.i

bb.gg:                                            ; preds = %bb.gf
  %i.aah = getelementptr inbounds nuw i8, ptr %i.wt, i64 14
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !733
  %i.aaj = icmp eq i8 %i.aai, 48
  br i1 %i.aaj, label %bb.gh, label %.thread171.i

bb.gh:                                            ; preds = %bb.gg
  %i.aak = getelementptr inbounds nuw i8, ptr %i.wt, i64 13
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !733
  %i.aam = icmp eq i8 %i.aal, 48
  br i1 %i.aam, label %.preheader2173, label %.thread171.i

.preheader2173:                                   ; preds = %bb.gh, %.thread169.i, %bb.ge
  br label %bb.gi

bb.gi:                                            ; preds = %.preheader2173, %bb.gi
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i, %bb.gi ], [ 13, %.preheader2173 ] ; 5 uses
  %i.aan = getelementptr i8, ptr %i.wt, i64 %indvars.iv199.i
  %i.aao = getelementptr i8, ptr %i.aan, i64 -1
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !733
  %i.aaq = icmp eq i8 %i.aap, 48
  %indvars.iv.next200.i = add i64 %indvars.iv199.i, -1
  br i1 %i.aaq, label %bb.gi, label %bb.gj, !llvm.loop !3100

bb.gj:                                            ; preds = %bb.gi
  %indvars1530.le = trunc i64 %indvars.iv199.i to i32 ; 3 uses
  %i.aar = load i8, ptr %i.wt, align 1, !tbaa !733
  %i.aas = sext i8 %i.aar to i64
  %.0118180.i = add nsw i64 %i.aas, -48           ; 3 uses
  %i.aat = icmp sgt i64 %indvars.iv199.i, 1
  br i1 %i.aat, label %.lr.ph184.preheader.i, label %.thread171.sink.split.i

.lr.ph184.preheader.i:                            ; preds = %bb.gj
  %wide.trip.count.i = and i64 %indvars.iv199.i, 4294967295 ; 2 uses
  %i.aau = add nsw i64 %wide.trip.count.i, -1     ; 2 uses
  %i.aav = add nsw i64 %wide.trip.count.i, -2
  %xtraiter2227 = and i64 %i.aau, 3               ; 3 uses
  %i.aaw = icmp ult i64 %i.aav, 3
  br i1 %i.aaw, label %.lr.ph184.i.epil.preheader, label %.lr.ph184.preheader.i.new

.lr.ph184.preheader.i.new:                        ; preds = %.lr.ph184.preheader.i
  %unroll_iter2231 = and i64 %i.aau, -4
  br label %.lr.ph184.i

.lr.ph184.i:                                      ; preds = %.lr.ph184.i, %.lr.ph184.preheader.i.new
  %indvars.iv202.i = phi i64 [ 1, %.lr.ph184.preheader.i.new ], [ %indvars.iv.next203.i.3, %.lr.ph184.i ] ; 5 uses
  %.0118182.i = phi i64 [ %.0118180.i, %.lr.ph184.preheader.i.new ], [ %.0118.i.3, %.lr.ph184.i ]
  %niter2232 = phi i64 [ 0, %.lr.ph184.preheader.i.new ], [ %niter2232.next.3, %.lr.ph184.i ]
  %i.aax = mul i64 %.0118182.i, 10
  %i.aay = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv202.i
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !733
  %i.aba = sext i8 %i.aaz to i64
  %i.abb = add i64 %i.aax, -48
  %.0118.i = add i64 %i.abb, %i.aba
  %i.abc = mul i64 %.0118.i, 10
  %i.abd = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv202.i
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 1
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !733
  %i.abg = sext i8 %i.abf to i64
  %i.abh = add i64 %i.abc, -48
  %.0118.i.1 = add i64 %i.abh, %i.abg
  %i.abi = mul i64 %.0118.i.1, 10
  %i.abj = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv202.i
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 2
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !733
  %i.abm = sext i8 %i.abl to i64
  %i.abn = add i64 %i.abi, -48
  %.0118.i.2 = add i64 %i.abn, %i.abm
  %i.abo = mul i64 %.0118.i.2, 10
  %i.abp = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv202.i
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 3
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !733
  %i.abs = sext i8 %i.abr to i64
  %indvars.iv.next203.i.3 = add nuw nsw i64 %indvars.iv202.i, 4 ; 2 uses
  %i.abt = add i64 %i.abo, -48
  %.0118.i.3 = add i64 %i.abt, %i.abs             ; 3 uses
  %niter2232.next.3 = add nuw i64 %niter2232, 4   ; 2 uses
  %niter2232.ncmp.3 = icmp eq i64 %niter2232.next.3, %unroll_iter2231
  br i1 %niter2232.ncmp.3, label %.thread171.sink.split.i.loopexit.unr-lcssa, label %.lr.ph184.i, !llvm.loop !3101

.thread171.sink.split.i.loopexit.unr-lcssa:       ; preds = %.lr.ph184.i
  %lcmp.mod2228.not = icmp eq i64 %xtraiter2227, 0
  br i1 %lcmp.mod2228.not, label %.thread171.sink.split.i, label %.lr.ph184.i.epil.preheader

.lr.ph184.i.epil.preheader:                       ; preds = %.thread171.sink.split.i.loopexit.unr-lcssa, %.lr.ph184.preheader.i
  %indvars.iv202.i.epil.init = phi i64 [ 1, %.lr.ph184.preheader.i ], [ %indvars.iv.next203.i.3, %.thread171.sink.split.i.loopexit.unr-lcssa ]
  %.0118182.i.epil.init = phi i64 [ %.0118180.i, %.lr.ph184.preheader.i ], [ %.0118.i.3, %.thread171.sink.split.i.loopexit.unr-lcssa ]
  %lcmp.mod2230 = icmp ne i64 %xtraiter2227, 0
  call void @llvm.assume(i1 %lcmp.mod2230)
  br label %.lr.ph184.i.epil

.lr.ph184.i.epil:                                 ; preds = %.lr.ph184.i.epil, %.lr.ph184.i.epil.preheader
  %indvars.iv202.i.epil = phi i64 [ %indvars.iv202.i.epil.init, %.lr.ph184.i.epil.preheader ], [ %indvars.iv.next203.i.epil, %.lr.ph184.i.epil ] ; 2 uses
  %.0118182.i.epil = phi i64 [ %.0118182.i.epil.init, %.lr.ph184.i.epil.preheader ], [ %.0118.i.epil, %.lr.ph184.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph184.i.epil.preheader ], [ %epil.iter.next, %.lr.ph184.i.epil ]
  %i.abu = mul i64 %.0118182.i.epil, 10
  %i.abv = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv202.i.epil
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !733
  %i.abx = sext i8 %i.abw to i64
  %indvars.iv.next203.i.epil = add nuw nsw i64 %indvars.iv202.i.epil, 1
  %i.aby = add i64 %i.abu, -48
  %.0118.i.epil = add i64 %i.aby, %i.abx          ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2227
  br i1 %epil.iter.cmp.not, label %.thread171.sink.split.i, label %.lr.ph184.i.epil, !llvm.loop !3102

.thread171.sink.split.i:                          ; preds = %.thread171.sink.split.i.loopexit.unr-lcssa, %.lr.ph184.i.epil, %bb.gj, %._crit_edge191.i, %.preheader173.13.i
  %.0123176.sink239.i = phi i32 [ 0, %.preheader173.13.i ], [ %.0123187.lcssa232.i, %._crit_edge191.i ], [ %indvars1530.le, %bb.gj ], [ %indvars1530.le, %.lr.ph184.i.epil ], [ %indvars1530.le, %.thread171.sink.split.i.loopexit.unr-lcssa ] ; 2 uses
  %.1.sink.i = phi i64 [ 1, %.preheader173.13.i ], [ %i.aaf, %._crit_edge191.i ], [ %.0118180.i, %bb.gj ], [ %.0118.i.3, %.thread171.sink.split.i.loopexit.unr-lcssa ], [ %.0118.i.epil, %.lr.ph184.i.epil ]
  %i.abz = add i32 %i.tc, %.0123176.sink239.i
  %i.aca = sub i32 %.0130163.i, %i.abz
  %i.acb = call fastcc double @sqlite3Fp10Convert2(i64 noundef %.1.sink.i, i32 noundef %i.aca)
  %i.acc = fcmp oeq double %.0124.i, %i.acb
  %i.acd = add nsw i32 %.0123176.sink239.i, 1
  %spec.select150.i = select i1 %i.acc, i32 %i.acd, i32 17
  br label %.thread171.i

.thread171.i:                                     ; preds = %.thread171.sink.split.i, %bb.gh, %bb.gg, %bb.gf, %.thread169.i, %bb.gb
  %.4.i = phi i32 [ %i.ww, %bb.gb ], [ 17, %.thread169.i ], [ 17, %bb.gh ], [ 17, %bb.gg ], [ 17, %bb.gf ], [ %spec.select150.i, %.thread171.sink.split.i ] ; 4 uses
  %i.ace = sext i32 %.4.i to i64                  ; 2 uses
  %i.acf = getelementptr inbounds i8, ptr %i.wt, i64 %i.ace
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !733
  %i.ach = icmp sgt i8 %i.acg, 52
  br i1 %i.ach, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %.thread171.i, %bb.gk
  %indvars.iv212.i = phi i64 [ %indvars.iv.next213.i, %bb.gk ], [ %i.ace, %.thread171.i ]
  %indvars.iv.next213.i = add nsw i64 %indvars.iv212.i, -1 ; 3 uses
  %i.aci = getelementptr inbounds i8, ptr %i.wt, i64 %indvars.iv.next213.i ; 3 uses
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !733
  %i.ack = add i8 %i.acj, 1                       ; 2 uses
  store i8 %i.ack, ptr %i.aci, align 1, !tbaa !733
  %i.acl = icmp slt i8 %i.ack, 58
  br i1 %i.acl, label %.loopexit.i, label %bb.gk

bb.gk:                                            ; preds = %.preheader.i
  store i8 48, ptr %i.aci, align 1, !tbaa !733
  %i.acm = icmp eq i64 %indvars.iv.next213.i, 0
  br i1 %i.acm, label %bb.gl, label %.preheader.i

bb.gl:                                            ; preds = %bb.gk
  %i.acn = getelementptr inbounds i8, ptr %i.wt, i64 -1 ; 2 uses
  store i8 49, ptr %i.acn, align 1, !tbaa !733
  %i.aco = add nsw i32 %.4.i, 1
  %i.acp = load i32, ptr %i.af, align 4, !tbaa !3133
  %i.acq = add nsw i32 %i.acp, 1
  store i32 %i.acq, ptr %i.af, align 4, !tbaa !3133
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.gl, %.thread171.i, %bb.ga, %bb.fz, %bb.fx
  %.2132.i = phi i32 [ %i.wb, %bb.fz ], [ %.4.i, %.thread171.i ], [ %.0130163.i, %bb.ga ], [ %i.wb, %bb.fx ], [ %i.aco, %bb.gl ], [ %.4.i, %.preheader.i ]
  %.1128.i = phi ptr [ %i.wg, %bb.fz ], [ %i.wt, %.thread171.i ], [ %i.wt, %bb.ga ], [ %i.wg, %bb.fx ], [ %i.acn, %bb.gl ], [ %i.wt, %.preheader.i ] ; 2 uses
  %i.acr = sext i32 %.2132.i to i64
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gm, %.loopexit.i
  %indvars.iv215.i = phi i64 [ %indvars.iv.next216.i, %bb.gm ], [ %i.acr, %.loopexit.i ] ; 3 uses
  %i.acs = getelementptr i8, ptr %.1128.i, i64 %indvars.iv215.i
  %i.act = getelementptr i8, ptr %i.acs, i64 -1
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !733
  %i.acv = icmp eq i8 %i.acu, 48
  %indvars.iv.next216.i = add nsw i64 %indvars.iv215.i, -1
  br i1 %i.acv, label %bb.gm, label %bb.gn, !llvm.loop !3103

bb.gn:                                            ; preds = %bb.gm
  %i.acw = trunc nsw i64 %indvars.iv215.i to i32
  store i32 %i.acw, ptr %3, align 8, !tbaa !3132
  %.pr.pre = load i8, ptr %i.ad, align 2, !tbaa !3130
  br label %sqlite3FpDecode.exit

sqlite3FpDecode.exit:                             ; preds = %bb.gn, %bb.fg
  %i.acx = phi i8 [ %i.sm, %bb.fg ], [ %.pr.pre, %bb.gn ]
  %.1128.sink.i = phi ptr [ %i.ag, %bb.fg ], [ %.1128.i, %bb.gn ] ; 2 uses
  store ptr %.1128.sink.i, ptr %i.ah, align 8, !tbaa !3134
  switch i8 %i.acx, label %bb.gp [
    i8 0, label %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge
    i8 2, label %bb.go
  ]

sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge: ; preds = %sqlite3FpDecode.exit
  %.pre.pre.pre = load i32, ptr %i.af, align 4
  br label %sqlite3FpDecode.exit._crit_edge

bb.go:                                            ; preds = %sqlite3FpDecode.exit
  %.not948 = icmp eq i8 %.175811721935, 0         ; 2 uses
  %i.acy = select i1 %.not948, ptr @.str.2, ptr @.str.1
  %i.acz = select i1 %.not948, i32 3, i32 4
  br label %sqlite3StrAccumSetError.exit.thread

bb.gp:                                            ; preds = %sqlite3FpDecode.exit
  %.not932 = icmp eq i8 %.175811721935, 0
  br i1 %.not932, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  store i8 57, ptr %.1128.sink.i, align 1, !tbaa !733
  store i32 1000, ptr %i.af, align 4, !tbaa !3133
  store i32 1, ptr %3, align 8, !tbaa !3132
  br label %sqlite3FpDecode.exit._crit_edge

bb.gr:                                            ; preds = %bb.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  %i.ada = load i8, ptr %i.ae, align 1, !tbaa !3131
  %i.adb = icmp eq i8 %i.ada, 45
  br i1 %i.adb, label %bb.gu, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %.not933 = icmp eq i8 %.176911661965, 0
  br i1 %.not933, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  store i8 %.176911661965, ptr %i.a, align 16, !tbaa !733
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gs, %bb.gt, %bb.gr
  %.9820 = phi ptr [ %i.a, %bb.gr ], [ %i.a, %bb.gt ], [ %i.z, %bb.gs ] ; 2 uses
  %i.adc = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.9820) #59
  %i.add = trunc i64 %i.adc to i32
  %i.ade = and i32 %i.add, 1073741823
  br label %sqlite3StrAccumSetError.exit.thread

sqlite3FpDecode.exit._crit_edge:                  ; preds = %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge, %bb.gq
  %.pre.ph = phi i32 [ %.pre.pre.pre, %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge ], [ 1000, %bb.gq ] ; 3 uses
  %.pr = load i8, ptr %i.ae, align 1, !tbaa !3131
  %i.adf = icmp eq i8 %.pr, 45
  br i1 %i.adf, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %sqlite3FpDecode.exit._crit_edge
  %i.adg = icmp eq i8 %.176311681952, 0
  %i.adh = icmp ne i8 %.176911661965, 0
  %or.cond8.not936.not1287 = select i1 %i.adg, i1 true, i1 %i.adh
  %or.cond11.not1284 = or i1 %or.cond8.not936.not1287, %i.rz
  %.not937 = icmp sgt i32 %.pre.ph, %.0688
  %or.cond = select i1 %or.cond11.not1284, i1 true, i1 %.not937
  %spec.select983 = select i1 %or.cond, i8 45, i8 0
  br label %bb.gw

bb.gw:                                            ; preds = %sqlite3FpDecode.exit._crit_edge.thread, %bb.gv, %sqlite3FpDecode.exit._crit_edge
  %.pre2062 = phi i32 [ %.pre.ph, %bb.gv ], [ %.pre.ph, %sqlite3FpDecode.exit._crit_edge ], [ 1, %sqlite3FpDecode.exit._crit_edge.thread ] ; 4 uses
  %.2741 = phi i8 [ %spec.select983, %bb.gv ], [ %.176911661965, %sqlite3FpDecode.exit._crit_edge ], [ %.176911661965, %sqlite3FpDecode.exit._crit_edge.thread ] ; 3 uses
  %i.adi = and i32 %.07842048, -9                 ; 2 uses
  %i.adj = icmp eq i32 %i.adi, 3
  br i1 %i.adj, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.adk = xor i8 %.176311681952, 1
  %i.adl = icmp slt i32 %.pre2062, -3
  %i.adm = icmp sgt i32 %.pre2062, %.6805
  %or.cond968 = select i1 %i.adl, i1 true, i1 %i.adm ; 2 uses
  %i.adn = sub i32 0, %.pre2062
  %spec.select984.p = select i1 %or.cond968, i32 -1, i32 %i.adn
  %spec.select984 = add i32 %spec.select984.p, %.6805
  br label %bb.gz

bb.gy:                                            ; preds = %bb.gw
  %i.ado = icmp eq i32 %i.adi, 1
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gx, %bb.gy
  %.7806 = phi i32 [ %.6805, %bb.gy ], [ %spec.select984, %bb.gx ] ; 5 uses
  %.1744 = phi i1 [ %i.ado, %bb.gy ], [ %or.cond968, %bb.gx ] ; 2 uses
  %.0711 = phi i8 [ %.176011701945, %bb.gy ], [ %i.adk, %bb.gx ] ; 2 uses
  %i.adp = add nsw i32 %.pre2062, -1              ; 2 uses
  %.0712 = select i1 %.1744, i32 0, i32 %i.adp    ; 8 uses
  %i.adq = icmp sgt i32 %.0712, 0
  %i.adr = call i32 @llvm.smax.i32(i32 %.0712, i32 0)
  %i.ads = zext nneg i32 %i.adr to i64
  %i.adt = sext i32 %.7806 to i64
  %i.adu = zext nneg i32 %.377611611995 to i64
  %i.adv = add nuw nsw i64 %i.adu, 10
  %i.adw = add nsw i64 %i.adv, %i.adt
  %i.adx = add nsw i64 %i.adw, %i.ads             ; 2 uses
  %i.ady = icmp ne i8 %.174711761929, 0
  %or.cond13 = select i1 %i.ady, i1 %i.adq, i1 false
  br i1 %or.cond13, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.adz = add nuw nsw i32 %.0712, 2
  %i.aea = udiv i32 %i.adz, 3
  %i.aeb = zext nneg i32 %i.aea to i64
  %i.aec = add nsw i64 %i.adx, %i.aeb
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %.0683 = phi i64 [ %i.aec, %bb.ha ], [ %i.adx, %bb.gz ] ; 5 uses
  %i.aed = load i32, ptr %i.q, align 8, !tbaa !753
  %i.aee = zext i32 %i.aed to i64                 ; 2 uses
  %i.aef = add nsw i64 %.0683, %i.aee
  %i.aeg = load i32, ptr %i.r, align 8, !tbaa !754
  %i.aeh = zext i32 %i.aeg to i64
  %.not939 = icmp slt i64 %i.aef, %i.aeh
  br i1 %.not939, label %bb.hk, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.aei = load i32, ptr %i.y, align 4, !tbaa !766
  %i.aej = icmp eq i32 %i.aei, 0
  br i1 %i.aej, label %bb.hd, label %bb.hi

bb.hd:                                            ; preds = %bb.hc
  %i.aek = load i8, ptr %i.x, align 4, !tbaa !765
  %i.ael = icmp eq i8 %i.aek, 0
  br i1 %i.ael, label %bb.he, label %bb.hi

bb.he:                                            ; preds = %bb.hd
  %i.aem = trunc i64 %.0683 to i32
  %i.aen = call i32 @sqlite3_initialize(), !inline_history !785
  %.not.i1024 = icmp ne i32 %i.aen, 0
  %i.aeo = icmp slt i32 %i.aem, 1
  %or.cond.i1025 = or i1 %i.aeo, %.not.i1024
  br i1 %or.cond.i1025, label %sqlite3_malloc.exit.thread, label %sqlite3_malloc.exit

sqlite3_malloc.exit:                              ; preds = %bb.he
  %i.aep = and i64 %.0683, 2147483647
  %i.aeq = call fastcc ptr @sqlite3Malloc(i64 noundef %i.aep), !inline_history !785 ; 3 uses
  %i.aer = icmp eq ptr %i.aeq, null
  br i1 %i.aer, label %sqlite3_malloc.exit.thread, label %bb.hl

sqlite3_malloc.exit.thread:                       ; preds = %bb.he, %sqlite3_malloc.exit
  store i8 7, ptr %i.x, align 4, !tbaa !765
  %i.aes = load i32, ptr %i.y, align 4, !tbaa !766
  %.not.i1027 = icmp eq i32 %i.aes, 0
  br i1 %.not.i1027, label %sqlite3StrAccumSetError.exit.thread1226, label %bb.hf

bb.hf:                                            ; preds = %sqlite3_malloc.exit.thread
  %i.aet = load i8, ptr %i.b, align 1, !tbaa !752 ; 2 uses
  %i.aeu = and i8 %i.aet, 4
  %.not.i.i = icmp eq i8 %i.aeu, 0
  br i1 %.not.i.i, label %sqlite3_str_reset.exit.i, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.aev = load ptr, ptr %i.s, align 8, !tbaa !756 ; 2 uses
  %.not.i.i.i1028 = icmp eq ptr %i.aev, null
  br i1 %.not.i.i.i1028, label %sqlite3DbFree.exit.i.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aew = load ptr, ptr %0, align 8, !tbaa !767
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.aew, ptr noundef nonnull %i.aev)
  %.pre.i.i = load i8, ptr %i.b, align 1, !tbaa !752
  br label %sqlite3DbFree.exit.i.i

sqlite3DbFree.exit.i.i:                           ; preds = %bb.hh, %bb.hg
  %i.aex = phi i8 [ %i.aet, %bb.hg ], [ %.pre.i.i, %bb.hh ]
  %i.aey = and i8 %i.aex, -5
  store i8 %i.aey, ptr %i.b, align 1, !tbaa !752
  br label %sqlite3_str_reset.exit.i
end_hunk_0
begin_hunk_1_@sqlite3WalCheckpoint:bb.a

bb.ab:                                            ; preds = %walBusyLock.exit.thread199.3.i
  %i.ff = load volatile i32, ptr %i.bi, align 4, !tbaa !1583
  %i.fg = load i32, ptr %i.at, align 8, !tbaa !1560 ; 4 uses
  %i.fh = add i32 %i.fg, 4096
  %i.fi = zext i32 %i.fh to i64
  %i.fj = add nuw nsw i64 %i.fi, 17592186040353
  %i.fk = lshr i64 %i.fj, 12                      ; 2 uses
  %i.fl = trunc i64 %i.fk to i32                  ; 2 uses
  %i.fm = add nsw i32 %i.fl, 1                    ; 2 uses
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 5
  %i.fp = zext i32 %i.fg to i64
  %i.fq = shl nuw nsw i64 %i.fp, 1
  %i.fr = add nuw nsw i64 %i.fq, 8
  %i.fs = add nuw nsw i64 %i.fr, %i.fo            ; 3 uses
  %i.ft = tail call i32 @sqlite3_initialize(), !inline_history !3874
  %.not.i.i149.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i149.i, label %sqlite3_malloc64.exit.i.i, label %.thread98

sqlite3_malloc64.exit.i.i:                        ; preds = %bb.ab
  %i.fu = tail call i32 @llvm.umin.i32(i32 %i.fg, i32 4096)
  %i.fv = shl nuw nsw i32 %i.fu, 1
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = add nuw nsw i64 %i.fs, %i.fw
  %i.fy = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.fx), !inline_history !3874 ; 16 uses
  %.not.i150.i = icmp eq ptr %i.fy, null
  br i1 %.not.i150.i, label %.thread98, label %bb.ac

bb.ac:                                            ; preds = %sqlite3_malloc64.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fy, i8 0, i64 %i.fs, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4 ; 4 uses
  store i32 %i.fm, ptr %i.fz, align 4, !tbaa !570
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fs ; 4 uses
  %i.gb = add i32 %i.ff, 4097
  %i.gc = zext i32 %i.gb to i64
  %i.gd = add nuw nsw i64 %i.gc, 17592186040353
  %i.ge = lshr i64 %i.gd, 12                      ; 2 uses
  %i.gf = trunc i64 %i.ge to i32
  %.not74.i.i = icmp sgt i32 %i.gf, %i.fl
  br i1 %.not74.i.i, label %walIteratorInit.exit.i, label %.lr.ph71.i.i

.lr.ph71.i.i:                                     ; preds = %bb.ac
  %i.gg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %sext.i.i = shl i64 %i.ge, 32
  %i.gk = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %sext87.i.i = shl i64 %i.fk, 32
  %i.gl = ashr exact i64 %sext87.i.i, 32          ; 2 uses
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.gk, i64 %i.gl)
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i.i, %.lr.ph71.i.i
  %indvars.iv78.i.i = phi i64 [ %i.gk, %.lr.ph71.i.i ], [ %indvars.iv.next79.i.i, %.loopexit.i.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #58
  %i.gm = load i32, ptr %i.gh, align 8, !tbaa !1563
  %i.gn = sext i32 %i.gm to i64
  %.not.i.i.i.i = icmp slt i64 %indvars.iv78.i.i, %i.gn
  br i1 %.not.i.i.i.i, label %bb.ae, label %walIndexPage.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.go = load ptr, ptr %i.bh, align 8, !tbaa !1480
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.go, i64 %indvars.iv78.i.i
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !786 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %walIndexPage.exit.i.i.i, label %walIndexPage.exit.thread.i.i.thread.i

walIndexPage.exit.thread.i.i.thread.i:            ; preds = %bb.ae
  %i.gs = icmp eq i64 %indvars.iv78.i.i, 0        ; 2 uses
  %.idx.i209.i = select i1 %i.gs, i64 136, i64 0  ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.idx.i209.i
  %.pre293.i = trunc nsw i64 %indvars.iv78.i.i to i32
  br label %bb.af

walIndexPage.exit.i.i.i:                          ; preds = %bb.ae, %bb.ad
  %i.gu = trunc nsw i64 %indvars.iv78.i.i to i32  ; 2 uses
  %i.gv = call fastcc i32 @walIndexPageRealloc(ptr noundef nonnull %0, i32 noundef %i.gu, ptr noundef nonnull %i.gg), !inline_history !3875 ; 3 uses
  %.pr.i.i.i = load ptr, ptr %i.gg, align 8, !tbaa !1565 ; 2 uses
  %.not.i55.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i55.i.i, label %walHashGet.exit.thread.i.i, label %walIndexPage.exit.thread.i.i.i

walIndexPage.exit.thread.i.i.i:                   ; preds = %walIndexPage.exit.i.i.i
  %i.gw = icmp eq i64 %indvars.iv78.i.i, 0        ; 2 uses
  %.idx.i.i = select i1 %i.gw, i64 136, i64 0     ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 %.idx.i.i
  %i.gy = icmp eq i32 %i.gv, 0
  br i1 %i.gy, label %bb.af, label %._crit_edge72.thread94.i.i

walHashGet.exit.thread.i.i:                       ; preds = %walIndexPage.exit.i.i.i
  %spec.store.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.gv, i32 1)
  br label %._crit_edge72.thread94.i.i

bb.af:                                            ; preds = %walIndexPage.exit.thread.i.i.i, %walIndexPage.exit.thread.i.i.thread.i
  %.pre-phi.i = phi i32 [ %.pre293.i, %walIndexPage.exit.thread.i.i.thread.i ], [ %i.gu, %walIndexPage.exit.thread.i.i.i ]
  %i.gz = phi ptr [ %i.gt, %walIndexPage.exit.thread.i.i.thread.i ], [ %i.gx, %walIndexPage.exit.thread.i.i.i ] ; 9 uses
  %.idx.i210.i = phi i64 [ %.idx.i209.i, %walIndexPage.exit.thread.i.i.thread.i ], [ %.idx.i.i, %walIndexPage.exit.thread.i.i.i ]
  %i.ha = phi i1 [ %i.gs, %walIndexPage.exit.thread.i.i.thread.i ], [ %i.gw, %walIndexPage.exit.thread.i.i.i ]
  %i.hb = shl i32 %.pre-phi.i, 12
  %i.hc = add i32 %i.hb, -34
  %i.hd = select i1 %i.ha, i32 0, i32 %i.hc       ; 3 uses
  %i.he = icmp eq i64 %indvars.iv78.i.i, %i.gl
  %gepdiff.i.i = sub nuw nsw i64 16384, %.idx.i210.i
  %i.hf = lshr exact i64 %gepdiff.i.i, 2
  %i.hg = trunc nuw nsw i64 %i.hf to i32
  %i.hh = sub i32 %i.fg, %i.hd
  %storemerge.i.i = select i1 %i.he, i32 %i.hh, i32 %i.hg ; 5 uses
  %i.hi = load i32, ptr %i.fz, align 4, !tbaa !570
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [32 x i8], ptr %i.gj, i64 %i.hj
  %i.hl = zext i32 %i.hd to i64
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.hk, i64 %i.hl ; 5 uses
  %i.hn = or disjoint i32 %i.hd, 1                ; 2 uses
  store i32 %i.hn, ptr %i.gi, align 8, !tbaa !1566
  %i.ho = icmp sgt i32 %storemerge.i.i, 0
  br i1 %i.ho, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %bb.af
  %wide.trip.count.i.i = zext nneg i32 %storemerge.i.i to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %storemerge.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check238 = icmp ult i32 %storemerge.i.i, 16
  br i1 %min.iters.check238, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hp = and i64 %wide.trip.count.i.i, 12
  %n.vec = and i64 %wide.trip.count.i.i, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %index ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store <8 x i16> %vec.ind, ptr %i.hq, align 2, !tbaa !783
  store <8 x i16> %step.add, ptr %i.hr, align 2, !tbaa !783
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.hs = icmp eq i64 %index.next, %n.vec
  br i1 %i.hs, label %middle.block, label %vector.body, !llvm.loop !3876

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.lr.ph67.preheader.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec239 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %i.ht = trunc i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.ht, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index240 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next242, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind241 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next243, %vec.epilog.vector.body ] ; 2 uses
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %index240
  store <4 x i16> %vec.ind241, ptr %i.hu, align 2, !tbaa !783
  %index.next242 = add nuw i64 %index240, 4       ; 2 uses
  %vec.ind.next243 = add <4 x i16> %vec.ind241, splat (i16 4)
  %i.hv = icmp eq i64 %index.next242, %n.vec239
  br i1 %i.hv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3877

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n244 = icmp eq i64 %n.vec239, %wide.trip.count.i.i
  br i1 %cmp.n244, label %.lr.ph67.preheader.i.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec239, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.hw = trunc i64 %indvars.iv.i.i to i16
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %indvars.iv.i.i
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !783
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph67.preheader.i.i.i, label %.lr.ph.i.i, !llvm.loop !3878

._crit_edge.i.i:                                  ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %10, i8 0, i64 208, i1 false)
  br label %.lr.ph75.preheader.i.i.i

.lr.ph67.preheader.i.i.i:                         ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %10, i8 0, i64 208, i1 false)
  br label %.lr.ph67.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i
  %i.hy = add i32 %.1.lcssa.i.i.i, 1              ; 2 uses
  %i.hz = icmp ult i32 %i.hy, 13
  br i1 %i.hz, label %.lr.ph75.preheader.i.i.i, label %.loopexit.i.i

.lr.ph75.preheader.i.i.i:                         ; preds = %.preheader.i.i.i, %._crit_edge.i.i
  %.026.lcssa89.i.i.i = phi i32 [ %i.hy, %.preheader.i.i.i ], [ 1, %._crit_edge.i.i ]
  %.052.lcssa88.i.i.i = phi ptr [ %.153.lcssa.i.i.i, %.preheader.i.i.i ], [ null, %._crit_edge.i.i ]
  %.055.lcssa87.i.i.i = phi i32 [ %.156.lcssa.i.i.i, %.preheader.i.i.i ], [ 0, %._crit_edge.i.i ]
  %i.ia = zext nneg i32 %.026.lcssa89.i.i.i to i64
  br label %.lr.ph75.i.i.i

.lr.ph67.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %.lr.ph67.preheader.i.i.i
  %indvars.iv.i.i.i.a = phi i64 [ 0, %.lr.ph67.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.a, %._crit_edge.i.i.i ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %indvars.iv.i.i.i.a ; 2 uses
  %i.ic = trunc nuw nsw i64 %indvars.iv.i.i.i.a to i32 ; 2 uses
  %i.id = and i32 %i.ic, 1
  %.not2859.i.i.i = icmp eq i32 %i.id, 0
  br i1 %.not2859.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph67.i.i.i, %walMerge.exit.i.i.i
  %.162.i.i.i = phi i32 [ %13, %walMerge.exit.i.i.i ], [ 0, %.lr.ph67.i.i.i ] ; 2 uses
  %.15361.i.i.i = phi ptr [ %i.ig, %walMerge.exit.i.i.i ], [ %i.ib, %.lr.ph67.i.i.i ] ; 2 uses
  %.15660.i.i.i = phi i32 [ %.038.lcssa.i.i.i.i, %walMerge.exit.i.i.i ], [ 1, %.lr.ph67.i.i.i ] ; 2 uses
  %12 = zext i32 %.162.i.i.i to i64
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %12 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !3904 ; 6 uses
  %i.ih = load i32, ptr %i.ie, align 16, !tbaa !3905 ; 3 uses
  %i.ii = icmp sgt i32 %.15660.i.i.i, 0           ; 2 uses
  %i.ij = icmp sgt i32 %i.ih, 0                   ; 2 uses
  %i.ik = or i1 %i.ii, %i.ij
  br i1 %i.ik, label %.lr.ph.i.i.i.i, label %walMerge.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i, %bb.al
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.al ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.il = phi i1 [ %i.js, %bb.al ], [ %i.ij, %.lr.ph.i.i.i ]
  %i.im = phi i1 [ %i.jr, %bb.al ], [ %i.ii, %.lr.ph.i.i.i ]
  %.03943.i.i.i.i = phi i32 [ %.1.i.i.i.i, %bb.al ], [ 0, %.lr.ph.i.i.i ] ; 4 uses
  %.04042.i.i.i.i = phi i32 [ %.2.i.i.i.i, %bb.al ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  br i1 %i.il, label %bb.ag, label %.lr.ph._crit_edge.i.i.i.i

.lr.ph._crit_edge.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i
  %.pre46.i.i.i.i = sext i32 %.03943.i.i.i.i to i64
  br label %bb.ai

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i
  %i.in = sext i32 %.04042.i.i.i.i to i64         ; 2 uses
  br i1 %i.im, label %bb.ah, label %._crit_edge45.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.io = getelementptr inbounds [2 x i8], ptr %i.ig, i64 %i.in
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !783
  %i.iq = zext i16 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !570
  %i.it = sext i32 %.03943.i.i.i.i to i64         ; 2 uses
  %i.iu = getelementptr inbounds [2 x i8], ptr %.15361.i.i.i, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !783
  %i.iw = zext i16 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !570
  %i.iz = icmp ult i32 %i.is, %i.iy
  br i1 %i.iz, label %._crit_edge45.i.i.i.i, label %bb.ai

._crit_edge45.i.i.i.i:                            ; preds = %bb.ah, %bb.ag
  %i.ja = add nsw i32 %.04042.i.i.i.i, 1
  %i.jb = getelementptr inbounds [2 x i8], ptr %i.ig, i64 %i.in
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %.lr.ph._crit_edge.i.i.i.i
  %.pre-phi47.i.i.i.i = phi i64 [ %.pre46.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %i.it, %bb.ah ]
  %i.jc = add nsw i32 %.03943.i.i.i.i, 1
  %i.jd = getelementptr inbounds [2 x i8], ptr %.15361.i.i.i, i64 %.pre-phi47.i.i.i.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge45.i.i.i.i
  %.141.i.i.i.i = phi i32 [ %i.ja, %._crit_edge45.i.i.i.i ], [ %.04042.i.i.i.i, %bb.ai ] ; 4 uses
  %.1.i.i.i.i = phi i32 [ %.03943.i.i.i.i, %._crit_edge45.i.i.i.i ], [ %i.jc, %bb.ai ] ; 2 uses
  %.0.in.i.i.i.i = phi ptr [ %i.jb, %._crit_edge45.i.i.i.i ], [ %i.jd, %bb.ai ]
  %.0.i.i.i.i = load i16, ptr %.0.in.i.i.i.i, align 2, !tbaa !783 ; 2 uses
  %i.je = zext i16 %.0.i.i.i.i to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !570
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.i.i.i.i
  store i16 %.0.i.i.i.i, ptr %i.jh, align 2, !tbaa !783
  %i.ji = icmp slt i32 %.141.i.i.i.i, %i.ih
  br i1 %i.ji, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.jj = sext i32 %.141.i.i.i.i to i64
  %i.jk = getelementptr inbounds [2 x i8], ptr %i.ig, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !783
  %i.jm = zext i16 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !570
  %i.jp = icmp eq i32 %i.jo, %i.jg
  %i.jq = zext i1 %i.jp to i32
  %spec.select.i.i.i.i = add nsw i32 %.141.i.i.i.i, %i.jq
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.2.i.i.i.i = phi i32 [ %.141.i.i.i.i, %bb.aj ], [ %spec.select.i.i.i.i, %bb.ak ] ; 2 uses
  %i.jr = icmp slt i32 %.1.i.i.i.i, %.15660.i.i.i ; 2 uses
  %i.js = icmp slt i32 %.2.i.i.i.i, %i.ih         ; 2 uses
  %i.jt = select i1 %i.jr, i1 true, i1 %i.js
  br i1 %i.jt, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !3879

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.al
  %i.ju = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  br label %walMerge.exit.i.i.i

walMerge.exit.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %.lr.ph.i.i.i
  %.038.lcssa.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.ju, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.jv = shl nuw i32 %.038.lcssa.i.i.i.i, 1
  %i.jw = zext i32 %i.jv to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ig, ptr nonnull align 2 %i.ga, i64 %i.jw, i1 false)
  %13 = add i32 %.162.i.i.i, 1                    ; 3 uses
  %i.jx = shl nuw i32 1, %13
  %i.jy = and i32 %i.jx, %i.ic
  %.not28.i.i.i = icmp eq i32 %i.jy, 0
  br i1 %.not28.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3880

._crit_edge.i.i.i:                                ; preds = %walMerge.exit.i.i.i, %.lr.ph67.i.i.i
  %.156.lcssa.i.i.i = phi i32 [ 1, %.lr.ph67.i.i.i ], [ %.038.lcssa.i.i.i.i, %walMerge.exit.i.i.i ] ; 3 uses
  %.153.lcssa.i.i.i = phi ptr [ %i.ib, %.lr.ph67.i.i.i ], [ %i.ig, %walMerge.exit.i.i.i ] ; 2 uses
  %.1.lcssa.i.i.i = phi i32 [ 0, %.lr.ph67.i.i.i ], [ %13, %walMerge.exit.i.i.i ] ; 2 uses
  %i.jz = zext i32 %.1.lcssa.i.i.i to i64
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store ptr %.153.lcssa.i.i.i, ptr %i.kb, align 8, !tbaa !3904
  store i32 %.156.lcssa.i.i.i, ptr %i.ka, align 16, !tbaa !3905
  %indvars.iv.next.i.i.i.a = add nuw nsw i64 %indvars.iv.i.i.i.a, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.a, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph67.i.i.i, !llvm.loop !3881

.lr.ph75.i.i.i:                                   ; preds = %bb.at, %.lr.ph75.preheader.i.i.i
  %indvars.iv80.i.i.i = phi i64 [ %i.ia, %.lr.ph75.preheader.i.i.i ], [ %indvars.iv.next81.i.i.i, %bb.at ] ; 3 uses
  %.25473.i.i.i = phi ptr [ %.052.lcssa88.i.i.i, %.lr.ph75.preheader.i.i.i ], [ %.3.i.i.i, %bb.at ] ; 3 uses
  %.25772.i.i.i = phi i32 [ %.055.lcssa87.i.i.i, %.lr.ph75.preheader.i.i.i ], [ %.358.i.i.i, %bb.at ] ; 3 uses
  %i.kc = trunc nuw nsw i64 %indvars.iv80.i.i.i to i32
  %i.kd = shl nuw nsw i32 1, %i.kc
  %i.ke = and i32 %i.kd, %storemerge.i.i
  %.not.i57.i.i = icmp eq i32 %i.ke, 0
  br i1 %.not.i57.i.i, label %bb.at, label %bb.am

bb.am:                                            ; preds = %.lr.ph75.i.i.i
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %indvars.iv80.i.i.i ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !3904 ; 5 uses
  %i.ki = load i32, ptr %i.kf, align 16, !tbaa !3905 ; 3 uses
  %i.kj = icmp sgt i32 %.25772.i.i.i, 0           ; 2 uses
  %i.kk = icmp sgt i32 %i.ki, 0                   ; 2 uses
  %i.kl = or i1 %i.kj, %i.kk
  br i1 %i.kl, label %.lr.ph.i30.i.i.i, label %walMerge.exit46.i.i.i

.lr.ph.i30.i.i.i:                                 ; preds = %bb.am, %bb.as
  %indvars.iv.i31.i.i.i = phi i64 [ %indvars.iv.next.i41.i.i.i, %bb.as ], [ 0, %bb.am ] ; 2 uses
  %i.km = phi i1 [ %i.lt, %bb.as ], [ %i.kk, %bb.am ]
  %i.kn = phi i1 [ %i.ls, %bb.as ], [ %i.kj, %bb.am ]
  %.03943.i32.i.i.i = phi i32 [ %.1.i38.i.i.i, %bb.as ], [ 0, %bb.am ] ; 4 uses
  %.04042.i33.i.i.i = phi i32 [ %.2.i42.i.i.i, %bb.as ], [ 0, %bb.am ] ; 3 uses
  br i1 %i.km, label %bb.an, label %.lr.ph._crit_edge.i34.i.i.i

.lr.ph._crit_edge.i34.i.i.i:                      ; preds = %.lr.ph.i30.i.i.i
  %.pre46.i35.i.i.i = sext i32 %.03943.i32.i.i.i to i64
  br label %bb.ap

bb.an:                                            ; preds = %.lr.ph.i30.i.i.i
  %i.ko = sext i32 %.04042.i33.i.i.i to i64       ; 2 uses
  br i1 %i.kn, label %bb.ao, label %._crit_edge45.i45.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.kp = getelementptr inbounds [2 x i8], ptr %i.kh, i64 %i.ko
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !783
  %i.kr = zext i16 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !570
  %i.ku = sext i32 %.03943.i32.i.i.i to i64       ; 2 uses
  %i.kv = getelementptr inbounds [2 x i8], ptr %.25473.i.i.i, i64 %i.ku
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !783
  %i.kx = zext i16 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !570
  %i.la = icmp ult i32 %i.kt, %i.kz
  br i1 %i.la, label %._crit_edge45.i45.i.i.i, label %bb.ap

._crit_edge45.i45.i.i.i:                          ; preds = %bb.ao, %bb.an
  %i.lb = add nsw i32 %.04042.i33.i.i.i, 1
  %i.lc = getelementptr inbounds [2 x i8], ptr %i.kh, i64 %i.ko
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %.lr.ph._crit_edge.i34.i.i.i
  %.pre-phi47.i36.i.i.i = phi i64 [ %.pre46.i35.i.i.i, %.lr.ph._crit_edge.i34.i.i.i ], [ %i.ku, %bb.ao ]
  %i.ld = add nsw i32 %.03943.i32.i.i.i, 1
  %i.le = getelementptr inbounds [2 x i8], ptr %.25473.i.i.i, i64 %.pre-phi47.i36.i.i.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge45.i45.i.i.i
  %.141.i37.i.i.i = phi i32 [ %i.lb, %._crit_edge45.i45.i.i.i ], [ %.04042.i33.i.i.i, %bb.ap ] ; 4 uses
  %.1.i38.i.i.i = phi i32 [ %.03943.i32.i.i.i, %._crit_edge45.i45.i.i.i ], [ %i.ld, %bb.ap ] ; 2 uses
  %.0.in.i39.i.i.i = phi ptr [ %i.lc, %._crit_edge45.i45.i.i.i ], [ %i.le, %bb.ap ]
  %.0.i40.i.i.i = load i16, ptr %.0.in.i39.i.i.i, align 2, !tbaa !783 ; 2 uses
  %i.lf = zext i16 %.0.i40.i.i.i to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !570
  %indvars.iv.next.i41.i.i.i = add nuw nsw i64 %indvars.iv.i31.i.i.i, 1 ; 2 uses
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.i31.i.i.i
  store i16 %.0.i40.i.i.i, ptr %i.li, align 2, !tbaa !783
  %i.lj = icmp slt i32 %.141.i37.i.i.i, %i.ki
  br i1 %i.lj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.lk = sext i32 %.141.i37.i.i.i to i64
  %i.ll = getelementptr inbounds [2 x i8], ptr %i.kh, i64 %i.lk
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !783
  %i.ln = zext i16 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !570
  %i.lq = icmp eq i32 %i.lp, %i.lh
  %i.lr = zext i1 %i.lq to i32
  %spec.select.i44.i.i.i = add nsw i32 %.141.i37.i.i.i, %i.lr
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.2.i42.i.i.i = phi i32 [ %.141.i37.i.i.i, %bb.aq ], [ %spec.select.i44.i.i.i, %bb.ar ] ; 2 uses
  %i.ls = icmp slt i32 %.1.i38.i.i.i, %.25772.i.i.i ; 2 uses
  %i.lt = icmp slt i32 %.2.i42.i.i.i, %i.ki       ; 2 uses
  %i.lu = select i1 %i.ls, i1 true, i1 %i.lt
  br i1 %i.lu, label %.lr.ph.i30.i.i.i, label %._crit_edge.loopexit.i43.i.i.i, !llvm.loop !3879

._crit_edge.loopexit.i43.i.i.i:                   ; preds = %bb.as
  %i.lv = trunc nuw i64 %indvars.iv.next.i41.i.i.i to i32
  br label %walMerge.exit46.i.i.i

walMerge.exit46.i.i.i:                            ; preds = %._crit_edge.loopexit.i43.i.i.i, %bb.am
  %.038.lcssa.i29.i.i.i = phi i32 [ 0, %bb.am ], [ %i.lv, %._crit_edge.loopexit.i43.i.i.i ] ; 2 uses
  %i.lw = shl nuw i32 %.038.lcssa.i29.i.i.i, 1
  %i.lx = zext i32 %i.lw to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.kh, ptr nonnull align 2 %i.ga, i64 %i.lx, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %walMerge.exit46.i.i.i, %.lr.ph75.i.i.i
  %.358.i.i.i = phi i32 [ %.25772.i.i.i, %.lr.ph75.i.i.i ], [ %.038.lcssa.i29.i.i.i, %walMerge.exit46.i.i.i ] ; 2 uses
  %.3.i.i.i = phi ptr [ %.25473.i.i.i, %.lr.ph75.i.i.i ], [ %i.kh, %walMerge.exit46.i.i.i ]
  %indvars.iv.next81.i.i.i = add nuw nsw i64 %indvars.iv80.i.i.i, 1 ; 2 uses
  %i.ly = and i64 %indvars.iv.next81.i.i.i, 4294967295
  %exitcond83.not.i.i.i = icmp eq i64 %i.ly, 13
  br i1 %exitcond83.not.i.i.i, label %.loopexit.i.i, label %.lr.ph75.i.i.i, !llvm.loop !3882

._crit_edge72.thread94.i.i:                       ; preds = %walIndexPage.exit.thread.i.i.i, %walHashGet.exit.thread.i.i
  %.0.i5664.ph.i.i = phi i32 [ %spec.store.select.i.i.i, %walHashGet.exit.thread.i.i ], [ %i.gv, %walIndexPage.exit.thread.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #58
  %i.lz = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i58.i.i = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i58.i.i, label %bb.ax, label %bb.au

.loopexit.i.i:                                    ; preds = %bb.at, %.preheader.i.i.i
  %.257.lcssa.i.i.i = phi i32 [ %.156.lcssa.i.i.i, %.preheader.i.i.i ], [ %.358.i.i.i, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  %i.ma = getelementptr inbounds [32 x i8], ptr %i.gj, i64 %indvars.iv78.i.i ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 28
  store i32 %i.hn, ptr %i.mb, align 4, !tbaa !3907
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  store i32 %.257.lcssa.i.i.i, ptr %i.mc, align 8, !tbaa !3908
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store ptr %i.hm, ptr %i.md, align 8, !tbaa !3909
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store ptr %i.gz, ptr %i.me, align 8, !tbaa !3910
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #58
  %indvars.iv.next79.i.i = add nsw i64 %indvars.iv78.i.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv78.i.i, %smax.i
  br i1 %exitcond.not.i, label %walIteratorInit.exit.i, label %bb.ad, !llvm.loop !3883

bb.au:                                            ; preds = %._crit_edge72.thread94.i.i
  %i.mf = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.mg(ptr noundef nonnull %i.mf) #58, !inline_history !3884
  br label %sqlite3_mutex_enter.exit.i.i.i.i

sqlite3_mutex_enter.exit.i.i.i.i:                 ; preds = %bb.av, %bb.au
  %i.mh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.mi = tail call i32 %i.mh(ptr noundef nonnull %i.fy) #58, !inline_history !3885
  %i.mj = sext i32 %i.mi to i64
  %i.mk = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ml = sub nsw i64 %i.mk, %i.mj
  store i64 %i.ml, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.mm = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.mn = add nsw i64 %i.mm, -1
  store i64 %i.mn, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.mo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.mo(ptr noundef nonnull %i.fy) #58, !inline_history !3886
  %i.mp = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i.i.i = icmp eq ptr %i.mp, null
  br i1 %.not.i4.i.i.i.i, label %walUnlockExclusive.exit173.i, label %bb.aw

bb.aw:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i.i
  %i.mq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.mq(ptr noundef nonnull %i.mp) #58, !inline_history !3887
  br label %walUnlockExclusive.exit173.i

bb.ax:                                            ; preds = %._crit_edge72.thread94.i.i
  %i.mr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.mr(ptr noundef nonnull %i.fy) #58, !inline_history !3886
  br label %walUnlockExclusive.exit173.i

walIteratorInit.exit.i:                           ; preds = %.loopexit.i.i, %bb.ac
  %.not11.i151.i = icmp eq ptr %.2.ph.3.i, null
  br i1 %.not11.i151.i, label %.split.us.i157.i, label %.split.i152.i

.split.us.i157.i:                                 ; preds = %walIteratorInit.exit.i
  %i.ms = load i8, ptr %i.bn, align 1, !tbaa !1471
  %.not.i.us.i158.i = icmp eq i8 %i.ms, 0
  br i1 %.not.i.us.i158.i, label %walLockExclusive.exit.us.i159.i, label %walBusyLock.exit160.thread.i

walLockExclusive.exit.us.i159.i:                  ; preds = %.split.us.i157.i
  %i.mt = load ptr, ptr %i.bo, align 8, !tbaa !1476 ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !863
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 112
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !1477
  %i.mx = tail call i32 %i.mw(ptr noundef nonnull %i.mt, i32 noundef range(i32 -2147483645, 257) 3, i32 noundef range(i32 -253, 5) 1, i32 noundef 10) #58, !inline_history !3871
  br label %walBusyLock.exit160.i

end_hunk_1
begin_hunk_2_@btreePrevious:bb.a
bb.n:                                             ; preds = %._crit_edge
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !1115
  %.not48 = icmp eq i8 %i.dc, 0
  br i1 %.not48, label %sqlite3BtreePrevious.exit, label %.critedge

sqlite3BtreePrevious.exit:                        ; preds = %bb.n
  %i.dd = load i8, ptr %i.f, align 1, !tbaa !1059
  %i.de = and i8 %i.dd, -15
  store i8 %i.de, ptr %i.f, align 1, !tbaa !1059
  store i16 0, ptr %i.e, align 2, !tbaa !1618
  br label %tailrecurse

.critedge:                                        ; preds = %bb.n, %._crit_edge, %bb.d, %.thread, %bb.c, %bb.h, %bb.i, %bb.g, %bb.j, %.loopexit
  %.137 = phi i32 [ 11, %.loopexit ], [ %i.ap, %bb.g ], [ %i.be, %bb.h ], [ 101, %bb.j ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %bb.d ], [ 0, %._crit_edge ], [ 101, %.thread ], [ %i.j, %bb.c ]
  ret i32 %.137
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @btreeOverwriteCell(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1729
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1730
  %i.e = add nsw i32 %i.d, %i.b                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1114 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1123 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.k = load i16, ptr %i.j, align 4, !tbaa !1121 ; 2 uses
  %i.l = zext i16 %i.k to i32
  %i.m = zext i16 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1122
  %i.q = icmp ugt ptr %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !988
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %i.u = load i16, ptr %i.t, align 2, !tbaa !1498
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = icmp ult ptr %i.i, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 82591, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1065
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1060 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !1066  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !988  ; 2 uses
  %i.i = zext i8 %i.f to i32
  %i.j = zext i8 %i.f to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.m = load i8, ptr %i.l, align 1, !tbaa !733
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.q = load i8, ptr %i.p, align 1, !tbaa !733
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, %i.r
  %i.t = add nuw nsw i32 %i.s, 65535
  %i.u = and i32 %i.t, 65535                      ; 2 uses
  %i.v = add nuw nsw i32 %i.u, 1
  %i.w = add nuw nsw i32 %i.i, 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.y = load i8, ptr %i.x, align 2, !tbaa !1493
  %i.z = zext i8 %i.y to i32
  %i.aa = add nuw nsw i32 %i.w, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !1501
  %i.ad = zext i16 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 1
  %i.af = add nuw nsw i32 %i.aa, %i.ae            ; 2 uses
  %i.ag = add nsw i32 %i.d, -4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !733
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !733
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ak, %i.an            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !733
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nuw nsw i32 %i.v, %i.ar             ; 2 uses
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not59 = icmp samesign ugt i32 %i.ao, %i.u
  br i1 %.not59, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75357, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

.preheader:                                       ; preds = %bb.b, %bb.g
  %.051 = phi i32 [ %i.bl, %bb.g ], [ %i.ao, %bb.b ] ; 3 uses
  %.050 = phi i32 [ %i.bm, %bb.g ], [ %i.as, %bb.b ]
  %i.at = icmp sgt i32 %.051, %i.ag
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75362, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.e:                                             ; preds = %.preheader
  %i.au = zext nneg i32 %.051 to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.au ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !733
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !733
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.az, %i.bc            ; 3 uses
  %i.be = icmp samesign ult i32 %i.bd, 4
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75368, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.bf = load i8, ptr %i.av, align 1, !tbaa !733
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !733
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bh, %i.bk            ; 3 uses
  %i.bm = add i32 %i.bd, %.050                    ; 2 uses
  %i.bn = add nuw nsw i32 %i.bd, %.051            ; 2 uses
  %i.bo = add nuw nsw i32 %i.bn, 4
  %i.bp = icmp samesign ult i32 %i.bl, %i.bo
  br i1 %i.bp, label %bb.h, label %.preheader

bb.h:                                             ; preds = %bb.g
  %.not60 = icmp eq i32 %i.bl, 0
  br i1 %.not60, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75376, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.bq = icmp ugt i32 %i.bn, %i.d
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75380, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.l:                                             ; preds = %bb.j, %bb.a
  %.2 = phi i32 [ %i.as, %bb.a ], [ %i.bm, %bb.j ] ; 3 uses
  %i.br = icmp sgt i32 %.2, %i.d
  %i.bs = icmp slt i32 %.2, %i.af
  %or.cond = select i1 %i.br, i1 true, i1 %i.bs
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75392, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.bt = sub nsw i32 %.2, %i.af
  %i.bu = and i32 %i.bt, 65535
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !1491
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.i, %bb.f, %bb.d, %bb.c, %bb.n, %bb.m
  %.153 = phi i32 [ 11, %bb.m ], [ 0, %bb.n ], [ 11, %bb.c ], [ 11, %bb.d ], [ 11, %bb.f ], [ 11, %bb.i ], [ 11, %bb.k ]
  ret i32 %.153
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dropCell(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !570
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !988  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1117
  %i.f = shl nsw i32 %1, 1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 4 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !733
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !733
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !1066
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = add i32 %i.o, %2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1065
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1060
  %i.x = icmp ugt i32 %i.s, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 80514, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  store i32 11, ptr %3, align 4, !tbaa !570
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.y = tail call fastcc i32 @freeSpace(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %2) ; 2 uses
  %.not44 = icmp eq i32 %i.y, 0
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.y, ptr %3, align 4, !tbaa !570
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !1501
  %i.ab = add i16 %i.aa, -1                       ; 3 uses
  store i16 %i.ab, ptr %i.z, align 8, !tbaa !1501
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i32 0, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 7
  store i8 0, ptr %i.af, align 1, !tbaa !733
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !1065
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1060
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 5
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !733
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !1065
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !1060
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !733
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !1065
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !1060
  %i.au = load i8, ptr %i.p, align 1, !tbaa !1066
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !1493
  %i.ay = zext i8 %i.ax to i32
  %.neg46 = add i32 %i.at, -8
  %i.az = add nuw nsw i32 %i.av, %i.ay
  %i.ba = sub i32 %.neg46, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !1491
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bc = zext i16 %i.ab to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.be = sub nsw i32 %i.bc, %1
  %i.bf = shl nsw i32 %i.be, 1
  %i.bg = sext i32 %i.bf to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %i.bd, i64 %i.bg, i1 false)
  %i.bh = load i16, ptr %i.z, align 8, !tbaa !1501
  %i.bi = lshr i16 %i.bh, 8
  %i.bj = trunc nuw i16 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !733
  %i.bm = load i16, ptr %i.z, align 8, !tbaa !1501
  %i.bn = trunc i16 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !733
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !1491
  %i.br = add nsw i32 %i.bq, 2
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !1491
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #58
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
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !1114
  br label %bb.b

bb.b:                                             ; preds = %bb.ho, %bb.a
  %i.aw = phi ptr [ %.pre, %bb.a ], [ %storemerge, %bb.ho ] ; 38 uses
  %.057 = phi ptr [ null, %bb.a ], [ %.3, %bb.ho ] ; 13 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 20 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !1491
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ba = call fastcc i32 @btreeComputeFreeSpace(ptr noundef nonnull %i.aw)
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.d, label %.thread118

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_2
begin_hunk_3_@balance:bb.a
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !1514 ; 5 uses
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv1016.i
  %i.azk = load i32, ptr %i.azj, align 4, !tbaa !570 ; 5 uses
  %i.azl = sext i32 %i.azk to i64                 ; 2 uses
  %i.azm = getelementptr inbounds [8 x i8], ptr %i.azf, i64 %i.azl
  %i.azn = load ptr, ptr %i.azm, align 8, !tbaa !741 ; 3 uses
  %i.azo = getelementptr inbounds [2 x i8], ptr %i.azg, i64 %i.azl
  %i.azp = load i16, ptr %i.azo, align 2, !tbaa !783 ; 2 uses
  %i.azq = zext i16 %i.azp to i32
  %i.azr = add nuw nsw i32 %i.azq, %i.ahd         ; 2 uses
  %i.azs = sext i32 %.0529846.i to i64
  %i.azt = getelementptr inbounds i8, ptr %i.ue, i64 %i.azs ; 6 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azi, i64 8
  %i.azv = load i8, ptr %i.azu, align 8, !tbaa !1115
  %.not596.i = icmp eq i8 %i.azv, 0
  br i1 %.not596.i, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azi, i64 80
  %i.azx = load ptr, ptr %i.azw, align 8, !tbaa !988
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 8
  %i.azz = load i32, ptr %i.azn, align 1
  store i32 %i.azz, ptr %i.azy, align 1
  br label %bb.gg

bb.fy:                                            ; preds = %bb.fw
  br i1 %.not619.i, label %bb.ge, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.baa = add nsw i32 %i.azk, -1                 ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azi, i64 128
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !1496
  %i.bad = sext i32 %i.baa to i64
  %i.bae = getelementptr inbounds [8 x i8], ptr %i.azf, i64 %i.bad
  %i.baf = load ptr, ptr %i.bae, align 8, !tbaa !741
  call void %i.bac(ptr noundef nonnull %i.azi, ptr noundef %i.baf, ptr noundef nonnull %3) #58, !inline_history !4288
  %i.bag = getelementptr inbounds nuw i8, ptr %i.azt, i64 4 ; 3 uses
  %i.bah = load i64, ptr %3, align 8, !tbaa !1592 ; 6 uses
  %i.bai = icmp ult i64 %i.bah, 128
  br i1 %i.bai, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.baj = trunc nuw nsw i64 %i.bah to i8
  store i8 %i.baj, ptr %i.bag, align 1, !tbaa !733
  br label %sqlite3PutVarint.exit.i

bb.gb:                                            ; preds = %bb.fz
  %i.bak = icmp ult i64 %i.bah, 16384
  br i1 %i.bak, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.bal = lshr i64 %i.bah, 7
  %i.bam = trunc nuw nsw i64 %i.bal to i8
  %i.ban = or disjoint i8 %i.bam, -128
  store i8 %i.ban, ptr %i.bag, align 1, !tbaa !733
  %i.bao = trunc i64 %i.bah to i8
  %i.bap = and i8 %i.bao, 127
  %i.baq = getelementptr inbounds nuw i8, ptr %i.azt, i64 5
  store i8 %i.bap, ptr %i.baq, align 1, !tbaa !733
  br label %sqlite3PutVarint.exit.i

bb.gd:                                            ; preds = %bb.gb
  %i.bar = call fastcc i32 @putVarint64(ptr noundef nonnull %i.bag, i64 noundef %i.bah), !inline_history !4288
  %i.bas = add nsw i32 %i.bar, 4
  br label %sqlite3PutVarint.exit.i

sqlite3PutVarint.exit.i:                          ; preds = %bb.gd, %bb.gc, %bb.ga
  %.0.i657.i = phi i32 [ 5, %bb.ga ], [ 6, %bb.gc ], [ %i.bas, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.gg

bb.ge:                                            ; preds = %bb.fy
  %i.bat = getelementptr inbounds i8, ptr %i.azn, i64 -4 ; 3 uses
  %i.bau = icmp eq i16 %i.azp, 4
  br i1 %i.bau, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.bav = load ptr, ptr %i.wh, align 8, !tbaa !1495
  %i.baw = call zeroext i16 %i.bav(ptr noundef %i.jm, ptr noundef nonnull %i.bat) #58, !inline_history !4288
  %i.bax = zext i16 %i.baw to i32
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge, %sqlite3PutVarint.exit.i, %bb.fx
  %.3550.i = phi i32 [ %i.baa, %sqlite3PutVarint.exit.i ], [ %i.azk, %bb.gf ], [ %i.azk, %bb.ge ], [ %i.azk, %bb.fx ]
  %.0483.i = phi ptr [ %i.azt, %sqlite3PutVarint.exit.i ], [ %i.bat, %bb.gf ], [ %i.bat, %bb.ge ], [ %i.azn, %bb.fx ] ; 3 uses
  %.0482.i = phi ptr [ null, %sqlite3PutVarint.exit.i ], [ %i.azt, %bb.gf ], [ %i.azt, %bb.ge ], [ %i.azt, %bb.fx ]
  %.0481.i = phi i32 [ %.0.i657.i, %sqlite3PutVarint.exit.i ], [ %i.bax, %bb.gf ], [ %i.azr, %bb.ge ], [ %i.azr, %bb.fx ] ; 3 uses
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gh, %bb.gg
  %indvars.iv1012.i = phi i64 [ %indvars.iv.next1013.i, %bb.gh ], [ 0, %bb.gg ] ; 3 uses
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv1012.i
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !570
  %.not598.i = icmp sgt i32 %i.baz, %.3550.i
  %indvars.iv.next1013.i = add nuw nsw i64 %indvars.iv1012.i, 1
  br i1 %.not598.i, label %bb.gi, label %bb.gh, !llvm.loop !4317

bb.gi:                                            ; preds = %bb.gh
  %i.bba = add nsw i32 %.0481.i, %.0529846.i
  %i.bbb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv1012.i
  %i.bbc = load ptr, ptr %i.bbb, align 8, !tbaa !741 ; 2 uses
  %i.bbd = icmp ult ptr %.0483.i, %i.bbc
  %i.bbe = sext i32 %.0481.i to i64
  %i.bbf = getelementptr inbounds i8, ptr %.0483.i, i64 %i.bbe
  %i.bbg = icmp ugt ptr %i.bbf, %i.bbc
  %or.cond632.i = select i1 %i.bbd, i1 %i.bbg, i1 false
  br i1 %or.cond632.i, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 82107, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !4290
  br label %.thread705.i

bb.gk:                                            ; preds = %bb.gi
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.azi, i64 4
  %i.bbi = load i32, ptr %i.bbh, align 4, !tbaa !1064
  %i.bbj = trunc i64 %indvars.iv1016.i to i32
  %i.bbk = add i32 %.1536.i, %i.bbj
  %i.bbl = call fastcc i32 @insertCell(ptr noundef %i.jm, i32 noundef %i.bbk, ptr noundef nonnull %.0483.i, i32 noundef %.0481.i, ptr noundef %.0482.i, i32 noundef %i.bbi), !inline_history !4288 ; 2 uses
  %.not599.i = icmp eq i32 %i.bbl, 0
  br i1 %.not599.i, label %bb.fv, label %.thread705.i

._crit_edge849.i:                                 ; preds = %bb.fv, %.thread702.i
  %i.bbm = sub nsw i32 1, %.0496.lcssa11251127.i  ; 2 uses
  %i.bbn = icmp slt i32 %i.bbm, %.0496.lcssa11251127.i
  br i1 %i.bbn, label %.lr.ph858.i, label %._crit_edge859.i

.lr.ph858.i:                                      ; preds = %._crit_edge849.i
  %i.bbo = zext i1 %.not619.i to i32              ; 2 uses
  %i.bbp = load i32, ptr %i.e, align 16
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gs, %.lr.ph858.i
  %.11854.i = phi i32 [ %i.bbm, %.lr.ph858.i ], [ %i.bcu, %bb.gs ] ; 4 uses
  %i.bbq = call i32 @llvm.abs.i32(i32 %.11854.i, i1 true) ; 3 uses
  %i.bbr = zext nneg i32 %i.bbq to i64            ; 5 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bbr ; 2 uses
  %i.bbt = load i8, ptr %i.bbs, align 1, !tbaa !733
  %.not590.i = icmp eq i8 %i.bbt, 0
  br i1 %.not590.i, label %bb.gm, label %bb.gs

bb.gm:                                            ; preds = %bb.gl
  %i.bbu = icmp sgt i32 %.11854.i, -1
  br i1 %i.bbu, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.bbv = add nsw i32 %i.bbq, -1
  %i.bbw = sext i32 %i.bbv to i64                 ; 2 uses
  %i.bbx = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bbw
  %i.bby = load i32, ptr %i.bbx, align 4, !tbaa !570
  %i.bbz = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.bbw
  %i.bca = load i32, ptr %i.bbz, align 4, !tbaa !570
  %.not591.i = icmp slt i32 %i.bby, %i.bca
  br i1 %.not591.i, label %bb.gs, label %.thread707.i

bb.go:                                            ; preds = %bb.gm
  %i.bcb = icmp eq i32 %.11854.i, 0
  br i1 %i.bcb, label %bb.gr, label %.thread707.i

.thread707.i:                                     ; preds = %bb.go, %bb.gn
  %.not592.i = icmp samesign ugt i32 %i.bbq, %.0499.i
  br i1 %.not592.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %.thread707.i
  %i.bcc = getelementptr [4 x i8], ptr %i.f, i64 %i.bbr
  %i.bcd = getelementptr i8, ptr %i.bcc, i64 -4
  %i.bce = load i32, ptr %i.bcd, align 4, !tbaa !570
  %i.bcf = add nsw i32 %i.bce, %i.bbo
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %.thread707.i
  %i.bcg = phi i32 [ %i.bcf, %bb.gp ], [ %i.aze, %.thread707.i ]
  %i.bch = getelementptr [4 x i8], ptr %i.e, i64 %i.bbr ; 2 uses
  %i.bci = getelementptr i8, ptr %i.bch, i64 -4
  %i.bcj = load i32, ptr %i.bci, align 4, !tbaa !570
  %i.bck = add nsw i32 %i.bcj, %i.bbo             ; 2 uses
  %i.bcl = load i32, ptr %i.bch, align 4, !tbaa !570
  %i.bcm = sub nsw i32 %i.bcl, %i.bck
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.go
  %.0480.i = phi i32 [ %i.bck, %bb.gq ], [ 0, %bb.go ]
  %.0479.i = phi i32 [ %i.bcg, %bb.gq ], [ 0, %bb.go ]
  %.0478.i = phi i32 [ %i.bcm, %bb.gq ], [ %i.bbp, %bb.go ]
  %i.bcn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bbr
  %i.bco = load ptr, ptr %i.bcn, align 8, !tbaa !1514 ; 2 uses
  %i.bcp = call fastcc i32 @editPage(ptr noundef %i.bco, i32 noundef %.0479.i, i32 noundef %.0480.i, i32 noundef %.0478.i, ptr noundef %2), !inline_history !4288 ; 2 uses
  %.not595.i = icmp eq i32 %i.bcp, 0
  br i1 %.not595.i, label %.thread708.i, label %.thread705.i

.thread708.i:                                     ; preds = %bb.gr
  store i8 1, ptr %i.bbs, align 1, !tbaa !733
  %i.bcq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bbr
  %i.bcr = load i32, ptr %i.bcq, align 4, !tbaa !570
  %i.bcs = sub nsw i32 %i.ahf, %i.bcr
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bco, i64 20
  store i32 %i.bcs, ptr %i.bct, align 4, !tbaa !1491
  br label %bb.gs

bb.gs:                                            ; preds = %.thread708.i, %bb.gn, %bb.gl
  %i.bcu = add i32 %.11854.i, 1                   ; 2 uses
  %exitcond1022.not.i = icmp eq i32 %i.bcu, %.0496.lcssa11251127.i
  br i1 %exitcond1022.not.i, label %._crit_edge859.i, label %bb.gl, !llvm.loop !4318

._crit_edge859.i:                                 ; preds = %bb.gs, %._crit_edge849.i
  store i32 0, ptr %i.a, align 4
  br i1 %.not125, label %bb.gt, label %bb.gx

bb.gt:                                            ; preds = %._crit_edge859.i
  %i.bcv = load i16, ptr %i.un, align 8, !tbaa !1501
  %i.bcw = icmp eq i16 %i.bcv, 0
  br i1 %i.bcw, label %bb.gu, label %bb.gx

bb.gu:                                            ; preds = %bb.gt
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.jm, i64 9
  %i.bcy = load i8, ptr %i.bcx, align 1, !tbaa !1066
  %i.bcz = zext i8 %i.bcy to i32
  %i.bda = load ptr, ptr %i.c, align 16, !tbaa !1514 ; 6 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bda, i64 20
  %i.bdc = load i32, ptr %i.bdb, align 4, !tbaa !1491
  %.not588.i = icmp slt i32 %i.bdc, %i.bcz
  br i1 %.not588.i, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.bdd = call fastcc i32 @defragmentPage(ptr noundef nonnull %i.bda, i32 noundef -1), !inline_history !4288
  store i32 %i.bdd, ptr %i.a, align 4, !tbaa !570
  call fastcc void @copyNodeContent(ptr noundef nonnull %i.bda, ptr noundef nonnull %i.jm, ptr noundef %i.a), !inline_history !4288
  %i.bde = load i32, ptr %i.a, align 4, !tbaa !570 ; 2 uses
  %i.bdf = icmp eq i32 %i.bde, 0
  br i1 %i.bdf, label %bb.gw, label %freePage.exit.i

bb.gw:                                            ; preds = %bb.gv
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bda, i64 72
  %i.bdh = load ptr, ptr %i.bdg, align 8, !tbaa !1065
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bda, i64 4
  %i.bdj = load i32, ptr %i.bdi, align 4, !tbaa !1064
  %i.bdk = call fastcc i32 @freePage2(ptr noundef %i.bdh, ptr noundef nonnull %i.bda, i32 noundef %i.bdj), !inline_history !4319
  br label %freePage.exit.i

bb.gx:                                            ; preds = %bb.gu, %bb.gt, %._crit_edge859.i
  %i.bdl = load i8, ptr %i.avr, align 1, !tbaa !1054
  %i.bdm = icmp ne i8 %i.bdl, 0
  %i.bdn = icmp eq i8 %i.aau, 0
  %or.cond5.not878.i = select i1 %i.bdm, i1 %i.bdn, i1 false
  %or.cond873.i = and i1 %i.ans, %or.cond5.not878.i
  br i1 %or.cond873.i, label %.lr.ph862.preheader.i, label %freePage.exit.i

.lr.ph862.preheader.i:                            ; preds = %bb.gx
  %wide.trip.count1027.i = zext nneg i32 %.0496.lcssa11251127.i to i64
  br label %.lr.ph862.i

.lr.ph862.i:                                      ; preds = %.lr.ph862.i, %.lr.ph862.preheader.i
  %indvars.iv1023.i = phi i64 [ 0, %.lr.ph862.preheader.i ], [ %indvars.iv.next1024.i, %.lr.ph862.i ] ; 2 uses
  %i.bdo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv1023.i
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !1514 ; 2 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 80
  %i.bdr = load ptr, ptr %i.bdq, align 8, !tbaa !988
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 8
  %i.bdt = load i32, ptr %i.bds, align 1
  %i.bdu = call i32 @llvm.bswap.i32(i32 %i.bdt)
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdp, i64 4
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !1064
  call fastcc void @ptrmapPut(ptr noundef nonnull %i.uj, i32 noundef %i.bdu, i8 noundef zeroext 5, i32 noundef %i.bdw, ptr noundef %i.a), !inline_history !4288
  %indvars.iv.next1024.i = add nuw nsw i64 %indvars.iv1023.i, 1 ; 2 uses
  %exitcond1028.not.i = icmp eq i64 %indvars.iv.next1024.i, %wide.trip.count1027.i
  br i1 %exitcond1028.not.i, label %freePage.exit.loopexit.i, label %.lr.ph862.i, !llvm.loop !4320

freePage.exit.loopexit.i:                         ; preds = %.lr.ph862.i
  %.promoted863.pre.i = load i32, ptr %i.a, align 4
  br label %freePage.exit.i

freePage.exit.i:                                  ; preds = %freePage.exit.loopexit.i, %bb.gx, %bb.gw, %bb.gv
  %.promoted863.i = phi i32 [ %.promoted863.pre.i, %freePage.exit.loopexit.i ], [ %i.bdk, %bb.gw ], [ %i.bde, %bb.gv ], [ 0, %bb.gx ] ; 2 uses
  %.not589865.i = icmp sgt i32 %.0496.lcssa11251127.i, %.0499.i
  br i1 %.not589865.i, label %.thread705.i, label %.lr.ph867.preheader.i

.lr.ph867.preheader.i:                            ; preds = %freePage.exit.i
  %i.bdx = zext nneg i32 %.0496.lcssa11251127.i to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %.8545.ph.i, i32 %.0499.i)
  %i.bdy = add nuw i32 %smax.i, 1
  %wide.trip.count1034.i = zext i32 %i.bdy to i64
  br label %.lr.ph867.i

.lr.ph867.i:                                      ; preds = %freePage.exit658.i, %.lr.ph867.preheader.i
  %indvars.iv1029.i = phi i64 [ %i.bdx, %.lr.ph867.preheader.i ], [ %indvars.iv.next1030.i, %freePage.exit658.i ] ; 2 uses
  %i.bdz = phi i32 [ %.promoted863.i, %.lr.ph867.preheader.i ], [ %i.bei, %freePage.exit658.i ] ; 2 uses
  %i.bea = icmp eq i32 %i.bdz, 0
  br i1 %i.bea, label %bb.gy, label %freePage.exit658.i

bb.gy:                                            ; preds = %.lr.ph867.i
  %i.beb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv1029.i
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !1514 ; 3 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 72
  %i.bee = load ptr, ptr %i.bed, align 8, !tbaa !1065
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bec, i64 4
  %i.beg = load i32, ptr %i.bef, align 4, !tbaa !1064
  %i.beh = call fastcc i32 @freePage2(ptr noundef %i.bee, ptr noundef %i.bec, i32 noundef %i.beg), !inline_history !4319
  br label %freePage.exit658.i

freePage.exit658.i:                               ; preds = %bb.gy, %.lr.ph867.i
  %i.bei = phi i32 [ %i.bdz, %.lr.ph867.i ], [ %i.beh, %bb.gy ] ; 2 uses
  %indvars.iv.next1030.i = add nuw nsw i64 %indvars.iv1029.i, 1 ; 2 uses
  %exitcond1035.not.i = icmp eq i64 %indvars.iv.next1030.i, %wide.trip.count1034.i
  br i1 %exitcond1035.not.i, label %.thread705.i, label %.lr.ph867.i, !llvm.loop !4321

.thread705.i:                                     ; preds = %bb.ft, %bb.gk, %bb.gr, %freePage.exit658.i, %freePage.exit.i, %bb.gj, %.thread692.i, %bb.el, %bb.dz, %bb.dn, %bb.cs, %bb.cp, %bb.cc, %.thread.i87
  %.ph = phi i32 [ %i.bei, %freePage.exit658.i ], [ %.promoted863.i, %freePage.exit.i ], [ 11, %bb.gj ], [ 11, %bb.dz ], [ 11, %bb.cs ], [ %i.bbl, %bb.gk ], [ %i.wq, %.thread.i87 ], [ %i.arw, %.thread692.i ], [ 11, %bb.el ], [ 11, %bb.cp ], [ 11, %bb.dn ], [ %i.bcp, %bb.gr ], [ %i.wx, %bb.cc ], [ %i.aza, %bb.ft ] ; 4 uses
  %.3.i.ph = phi i32 [ %.0496.lcssa11251127.i, %freePage.exit658.i ], [ %.0496.lcssa11251127.i, %freePage.exit.i ], [ %.0496.lcssa11251127.i, %bb.gj ], [ 0, %bb.dz ], [ 0, %bb.cs ], [ %.0496.lcssa11251127.i, %bb.gk ], [ 0, %.thread.i87 ], [ %.2498.ph.i, %.thread692.i ], [ 0, %bb.el ], [ 0, %bb.cp ], [ 0, %bb.dn ], [ %.0496.lcssa11251127.i, %bb.gr ], [ 0, %bb.cc ], [ %.0496.lcssa11251127.i, %bb.ft ] ; 4 uses
  %.pr = load ptr, ptr %i.ap, align 8, !tbaa !1859 ; 4 uses
  %.not.i659.i = icmp eq ptr %.pr, null
  br i1 %.not.i659.i, label %sqlite3DbFree.exit.i, label %bb.gz

bb.gz:                                            ; preds = %.thread705.i
  %i.bej = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i.i = icmp eq i32 %i.bej, 0
  br i1 %.not.i.i.i, label %bb.hd, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.bek = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i665.i = icmp eq ptr %i.bek, null
  br i1 %.not.i.i.i665.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bel = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.bel(ptr noundef nonnull %i.bek) #58, !inline_history !4322
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.hb, %bb.ha
  %i.bem = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.ben = call i32 %i.bem(ptr noundef nonnull %.pr) #58, !inline_history !4323
  %i.beo = sext i32 %i.ben to i64
  %i.bep = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.beq = sub nsw i64 %i.bep, %i.beo
  store i64 %i.beq, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ber = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.bes = add nsw i64 %i.ber, -1
  store i64 %i.bes, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.bet = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.bet(ptr noundef nonnull %.pr) #58, !inline_history !4324
  %i.beu = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.beu, null
  br i1 %.not.i4.i.i.i, label %sqlite3DbFree.exit.i, label %bb.hc

bb.hc:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.bev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.bev(ptr noundef nonnull %i.beu) #58, !inline_history !4325
  br label %sqlite3DbFree.exit.i

bb.hd:                                            ; preds = %bb.gz
  %i.bew = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.bew(ptr noundef nonnull %.pr) #58, !inline_history !4324
  br label %sqlite3DbFree.exit.i

sqlite3DbFree.exit.i:                             ; preds = %bb.cm, %bb.hd, %bb.hc, %sqlite3_mutex_enter.exit.i.i.i, %.thread705.i
  %.3.i305 = phi i32 [ %.3.i.ph, %.thread705.i ], [ %.3.i.ph, %bb.hd ], [ %.3.i.ph, %bb.hc ], [ %.3.i.ph, %sqlite3_mutex_enter.exit.i.i.i ], [ 0, %bb.cm ] ; 2 uses
  %i.bex = phi i32 [ %.ph, %.thread705.i ], [ %.ph, %bb.hd ], [ %.ph, %bb.hc ], [ %.ph, %sqlite3_mutex_enter.exit.i.i.i ], [ 7, %bb.cm ] ; 2 uses
  %wide.trip.count1040.i = zext nneg i32 %i.uy to i64
  br label %bb.he

.preheader.i:                                     ; preds = %releasePage.exit.i90
  %i.bey = icmp sgt i32 %.3.i305, 0
  br i1 %i.bey, label %.lr.ph871.preheader.i, label %balance_nonroot.exit

.lr.ph871.preheader.i:                            ; preds = %.preheader.i
  %wide.trip.count1046.i = zext nneg i32 %.3.i305 to i64
  br label %.lr.ph871.i

bb.he:                                            ; preds = %releasePage.exit.i90, %sqlite3DbFree.exit.i
  %indvars.iv1036.i = phi i64 [ 0, %sqlite3DbFree.exit.i ], [ %indvars.iv.next1037.i, %releasePage.exit.i90 ] ; 2 uses
  %i.bez = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv1036.i
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !1514 ; 2 uses
  %.not.i660.i = icmp eq ptr %i.bfa, null
  br i1 %.not.i660.i, label %releasePage.exit.i90, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bfb = getelementptr i8, ptr %i.bfa, i64 112
  %.val.i.i88 = load ptr, ptr %i.bfb, align 8, !tbaa !1009 ; 7 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 52
  %i.bfd = load i16, ptr %i.bfc, align 4, !tbaa !895
  %i.bfe = and i16 %i.bfd, 32
  %.not.i.i.i.i89 = icmp eq i16 %i.bfe, 0
  br i1 %.not.i.i.i.i89, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.bff = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 40
  %i.bfg = load ptr, ptr %i.bff, align 8, !tbaa !896 ; 4 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfg, i64 152 ; 2 uses
  %i.bfi = load i32, ptr %i.bfh, align 8, !tbaa !897
  %i.bfj = add nsw i32 %i.bfi, -1
  store i32 %i.bfj, ptr %i.bfh, align 8, !tbaa !897
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfg, i64 168 ; 2 uses
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !898
  %i.bfm = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 32
  store ptr %i.bfl, ptr %i.bfm, align 8, !tbaa !899
  store ptr %.val.i.i88, ptr %i.bfk, align 8, !tbaa !898
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfg, i64 72
  %i.bfo = load ptr, ptr %i.bfn, align 8, !tbaa !900 ; 2 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 48
  %i.bfq = load i32, ptr %i.bfp, align 8, !tbaa !901
  %i.bfr = add i32 %i.bfq, -1
  %i.bfs = zext i32 %i.bfr to i64
end_hunk_3
begin_hunk_4_@checkTreePage:bb.a
  %i.lw = or disjoint i32 %i.ls, %i.lv            ; 2 uses
  %.not = icmp eq i32 %i.lw, 0
  br i1 %.not, label %.preheader, label %.lr.ph297, !llvm.loop !4428

bb.bf:                                            ; preds = %.lr.ph300, %bb.bg
  %i.lx = phi i32 [ %i.kj, %.lr.ph300 ], [ %i.nc, %bb.bg ] ; 3 uses
  %.0167299 = phi i32 [ %i.cm, %.lr.ph300 ], [ %i.ly, %bb.bg ] ; 2 uses
  %.0177298 = phi i32 [ 0, %.lr.ph300 ], [ %i.nh, %bb.bg ] ; 2 uses
  %i.ly = load i32, ptr %i.kl, align 4, !tbaa !570 ; 3 uses
  %i.lz = zext i32 %i.lx to i64
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.lz ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !570
  store i32 %i.mb, ptr %i.kl, align 4, !tbaa !570
  store i32 -1, ptr %i.ma, align 4, !tbaa !570
  %i.mc = add i32 %i.lx, -1                       ; 3 uses
  store i32 %i.mc, ptr %.1169, align 4, !tbaa !570
  %.not36.i = icmp ult i32 %i.lx, 3
  br i1 %.not36.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bf
  %.pre.i = load i32, ptr %i.kl, align 4, !tbaa !570 ; 3 uses
  %i.md = load i32, ptr %i.km, align 4, !tbaa !570
  %i.me = load i32, ptr %i.kn, align 4, !tbaa !570
  %i.mf = icmp ugt i32 %i.md, %i.me
  %spec.select.i366 = select i1 %i.mf, i32 3, i32 2 ; 2 uses
  %i.mg = zext nneg i32 %spec.select.i366 to i64
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.mg ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !570 ; 2 uses
  %i.mj = icmp ult i32 %.pre.i, %i.mi
  br i1 %i.mj, label %.loopexit, label %.lr.ph369

.lr.ph.i232:                                      ; preds = %.lr.ph369
  %i.mk = zext i32 %i.na to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !570
  %i.mn = or disjoint i32 %i.na, 1                ; 2 uses
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.mo
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !570
  %i.mr = icmp ugt i32 %i.mm, %i.mq
  %spec.select.i = select i1 %i.mr, i32 %i.mn, i32 %i.na ; 2 uses
  %i.ms = zext i32 %spec.select.i to i64
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.ms ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !570 ; 2 uses
  %i.mv = icmp ult i32 %.pre.i, %i.mu
  br i1 %i.mv, label %.loopexit, label %.lr.ph369, !llvm.loop !4429

.lr.ph369:                                        ; preds = %.lr.ph.preheader.i, %.lr.ph.i232
  %i.mw = phi i32 [ %i.mu, %.lr.ph.i232 ], [ %i.mi, %.lr.ph.preheader.i ]
  %i.mx = phi ptr [ %i.mt, %.lr.ph.i232 ], [ %i.mh, %.lr.ph.preheader.i ]
  %spec.select.i368 = phi i32 [ %spec.select.i, %.lr.ph.i232 ], [ %spec.select.i366, %.lr.ph.preheader.i ] ; 2 uses
  %.037.i367 = phi i32 [ %spec.select.i368, %.lr.ph.i232 ], [ 1, %.lr.ph.preheader.i ]
  %i.my = zext i32 %.037.i367 to i64
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.my
  store i32 %i.mw, ptr %i.mz, align 4, !tbaa !570
  store i32 %.pre.i, ptr %i.mx, align 4, !tbaa !570
  %i.na = shl i32 %spec.select.i368, 1            ; 4 uses
  %i.nb = load i32, ptr %.1169, align 4, !tbaa !570 ; 3 uses
  %.not.i233 = icmp ugt i32 %i.na, %i.nb
  br i1 %.not.i233, label %..loopexit.loopexit_crit_edge, label %.lr.ph.i232, !llvm.loop !4429

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph369
  br label %.loopexit, !llvm.loop !4429

.loopexit:                                        ; preds = %.lr.ph.i232, %.lr.ph.preheader.i, %..loopexit.loopexit_crit_edge, %bb.bf
  %i.nc = phi i32 [ %i.mc, %bb.bf ], [ %i.mc, %.lr.ph.preheader.i ], [ %i.nb, %..loopexit.loopexit_crit_edge ], [ %i.nb, %.lr.ph.i232 ] ; 2 uses
  %i.nd = and i32 %.0167299, 65535                ; 2 uses
  %i.ne = lshr i32 %i.ly, 16                      ; 3 uses
  %.not208 = icmp samesign ult i32 %i.nd, %i.ne
  br i1 %.not208, label %bb.bg, label %btreeHeapPull.exit

bb.bg:                                            ; preds = %.loopexit
  %i.nf = xor i32 %i.nd, -1
  %i.ng = add i32 %.0177298, %i.nf
  %i.nh = add i32 %i.ng, %i.ne                    ; 2 uses
  %i.ni = icmp eq i32 %i.nc, 0
  br i1 %i.ni, label %btreeHeapPull.exit.thread259, label %bb.bf, !llvm.loop !4430

btreeHeapPull.exit:                               ; preds = %.loopexit
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %0, ptr noundef nonnull @.str.436, i32 noundef %i.ne, i32 noundef %1)
  %.pr = load i32, ptr %.1169, align 4, !tbaa !570
  %i.nj = icmp eq i32 %.pr, 0
  br i1 %i.nj, label %btreeHeapPull.exit.thread259, label %.thread.thread271

btreeHeapPull.exit.thread259:                     ; preds = %bb.bg, %.preheader, %btreeHeapPull.exit
  %.0177283 = phi i32 [ %.0177298, %btreeHeapPull.exit ], [ 0, %.preheader ], [ %i.nh, %bb.bg ]
  %.0167281 = phi i32 [ %.0167299, %btreeHeapPull.exit ], [ %i.cm, %.preheader ], [ %i.ly, %bb.bg ]
  %.pn277.in = and i32 %.0167281, 65535
  %.pn277 = xor i32 %.pn277.in, -1
  %.pn = add i32 %.0177283, %i.am
  %i.nk = add i32 %.pn, %.pn277                   ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.cc, i64 7
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !733
  %i.nn = zext i8 %i.nm to i32                    ; 2 uses
  %.not209 = icmp eq i32 %i.nk, %i.nn
  br i1 %.not209, label %.thread.thread271, label %bb.bh

bb.bh:                                            ; preds = %btreeHeapPull.exit.thread259
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %0, ptr noundef nonnull @.str.437, i32 noundef %i.nk, i32 noundef %i.nn, i32 noundef %1)
  br label %.thread.thread271

bb.bi:                                            ; preds = %.critedge
  store i8 %i.bt, ptr %.val13.i.i, align 8, !tbaa !1502
  br label %.thread.thread271

.thread.thread271:                                ; preds = %bb.bi, %bb.bh, %btreeHeapPull.exit.thread259, %btreeHeapPull.exit, %bb.az, %bb.t, %bb.r
  %.4182265275 = phi i32 [ -1, %bb.t ], [ -1, %bb.r ], [ %.1179.lcssa353, %bb.az ], [ %.1179.lcssa353, %btreeHeapPull.exit ], [ %.1179.lcssa353, %btreeHeapPull.exit.thread259 ], [ %.1179.lcssa353, %bb.bh ], [ %.1179.lcssa.ph, %bb.bi ] ; 2 uses
  %i.no = getelementptr i8, ptr %.val13.i.i, i64 112
  %.val.i = load ptr, ptr %i.no, align 8, !tbaa !1009 ; 7 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.val.i, i64 52
  %i.nq = load i16, ptr %i.np, align 4, !tbaa !895
  %i.nr = and i16 %i.nq, 32
  %.not.i.i.i = icmp eq i16 %i.nr, 0
  br i1 %.not.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.thread.thread271
  %i.ns = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !896 ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 152 ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !897
  %i.nw = add nsw i32 %i.nv, -1
  store i32 %i.nw, ptr %i.nu, align 8, !tbaa !897
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 168 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !898
  %i.nz = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  store ptr %i.ny, ptr %i.nz, align 8, !tbaa !899
  store ptr %.val.i, ptr %i.nx, align 8, !tbaa !898
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nt, i64 72
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !900 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !901
  %i.oe = add i32 %i.od, -1
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.nt, i64 200
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !630
  %i.oi = mul nsw i64 %i.oh, %i.of
  %i.oj = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !894
  %i.ol = load ptr, ptr %i.ob, align 8, !tbaa !863
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 144
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !903
  %i.oo = call i32 %i.on(ptr noundef nonnull %i.ob, i64 noundef %i.oi, ptr noundef %i.ok) #58, !inline_history !193 ; 0 uses
  br label %releasePage.exit

bb.bk:                                            ; preds = %.thread.thread271
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i)
  br label %releasePage.exit

releasePage.exit:                                 ; preds = %checkProgress.exit, %bb.p, %bb.o, %bb.bj, %bb.bk
  %.4182265269 = phi i32 [ %.4182265275, %bb.bk ], [ -1, %checkProgress.exit ], [ %.4182265275, %bb.bj ], [ -1, %bb.o ], [ -1, %bb.p ]
  store ptr %i.d, ptr %i.c, align 8, !tbaa !1775
  store <2 x i32> %i.g, ptr %i.e, align 4, !tbaa !570
  %i.op = add nsw i32 %.4182265269, 1
  br label %checkRef.exit.thread

checkRef.exit.thread:                             ; preds = %bb.k, %bb.i, %bb.g, %releasePage.exit
  %.0 = phi i32 [ %i.op, %releasePage.exit ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3RowSetDelete(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1452   ; 2 uses
  %.not13.i = icmp eq ptr %i.a, null
  br i1 %.not13.i, label %sqlite3DbFree.exit, label %sqlite3DbFree.exit.lr.ph.i

sqlite3DbFree.exit.lr.ph.i:                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %sqlite3DbFree.exit.i

sqlite3DbFree.exit.i:                             ; preds = %sqlite3DbFree.exit.i, %sqlite3DbFree.exit.lr.ph.i
  %.014.i = phi ptr [ %i.a, %sqlite3DbFree.exit.lr.ph.i ], [ %i.c, %sqlite3DbFree.exit.i ] ; 2 uses
  %i.c = load ptr, ptr %.014.i, align 8, !tbaa !1454 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1455
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.d, ptr noundef nonnull %.014.i)
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %sqlite3DbFree.exit, label %sqlite3DbFree.exit.i, !llvm.loop !139

sqlite3DbFree.exit:                               ; preds = %sqlite3DbFree.exit.i, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1452
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 0, ptr %i.e, align 8, !tbaa !1456
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.g, align 8, !tbaa !1457
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i16 1, ptr %i.h, align 2, !tbaa !1458
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1455
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.j, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @rowSetEntrySort(ptr noundef %0) unnamed_addr #16 {
bb.a:
  %1 = alloca %struct.RowSetEntry, align 8        ; 4 uses
  %2 = alloca %struct.RowSetEntry, align 8        ; 4 uses
  %i.a = alloca [40 x ptr], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.a, i8 0, i64 320, i1 false)
  %.not40 = icmp eq ptr %0, null
  br i1 %.not40, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %._crit_edge, %.lr.ph43
  %i.c = phi ptr [ null, %.lr.ph43 ], [ %.pre, %._crit_edge ] ; 2 uses
  %.01841 = phi ptr [ %0, %.lr.ph43 ], [ %i.e, %._crit_edge ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01841, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1820 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !1820
  %.not2436 = icmp eq ptr %i.c, null
  br i1 %.not2436, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %thread-pre-split, %rowSetEntryMerge.exit
  %3 = phi ptr [ %i.u, %rowSetEntryMerge.exit ], [ %i.c, %thread-pre-split ]
  %i.f = phi ptr [ %i.t, %rowSetEntryMerge.exit ], [ %i.a, %thread-pre-split ]
  %.038 = phi i32 [ %4, %rowSetEntryMerge.exit ], [ 0, %thread-pre-split ]
  %.11937 = phi ptr [ %i.s, %rowSetEntryMerge.exit ], [ %.01841, %thread-pre-split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  br label %.outer74

.outer74:                                         ; preds = %bb.e, %.lr.ph
  %.018.i.ph = phi ptr [ %i.l, %bb.e ], [ %3, %.lr.ph ] ; 5 uses
  %.016.i.ph = phi ptr [ %.016.i, %bb.e ], [ %.11937, %.lr.ph ]
  %.0.i.ph = phi ptr [ %.1.i, %bb.e ], [ %2, %.lr.ph ]
  %i.g = load i64, ptr %.018.i.ph, align 8, !tbaa !1819 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer74, %bb.f
  %.016.i = phi ptr [ %i.p, %bb.f ], [ %.016.i.ph, %.outer74 ] ; 7 uses
  %.0.i = phi ptr [ %.016.i, %bb.f ], [ %.0.i.ph, %.outer74 ] ; 3 uses
  %i.h = load i64, ptr %.016.i, align 8, !tbaa !1819 ; 2 uses
  %.not.i = icmp sgt i64 %i.g, %i.h
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %.018.i.ph, ptr %i.j, align 8, !tbaa !1820
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i = phi ptr [ %.018.i.ph, %bb.d ], [ %.0.i, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.018.i.ph, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1820 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %rowSetEntryMerge.exit, label %.outer74

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %.016.i, ptr %i.n, align 8, !tbaa !1820
  %i.o = getelementptr inbounds nuw i8, ptr %.016.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1820 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %rowSetEntryMerge.exit, label %bb.b

rowSetEntryMerge.exit:                            ; preds = %bb.e, %bb.f
  %.016.lcssa35.sink.i = phi ptr [ %.016.i, %bb.f ], [ %.1.i, %bb.e ]
  %.018.lcssa34.sink.i = phi ptr [ %.018.i.ph, %bb.f ], [ %.016.i, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %.016.lcssa35.sink.i, i64 8
  store ptr %.018.lcssa34.sink.i, ptr %i.r, align 8, !tbaa !1820
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !1820 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  store ptr null, ptr %i.f, align 8, !tbaa !1822
  %4 = add i32 %.038, 1                           ; 2 uses
  %5 = zext i32 %4 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %5 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1822 ; 2 uses
  %.not24 = icmp eq ptr %i.u, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph, !llvm.loop !4431

._crit_edge:                                      ; preds = %rowSetEntryMerge.exit, %thread-pre-split
  %.119.lcssa = phi ptr [ %.01841, %thread-pre-split ], [ %i.s, %rowSetEntryMerge.exit ]
  %.lcssa = phi ptr [ %i.a, %thread-pre-split ], [ %i.t, %rowSetEntryMerge.exit ]
  store ptr %.119.lcssa, ptr %.lcssa, align 8, !tbaa !1822
  %.not = icmp eq ptr %i.e, null
  %.pre = load ptr, ptr %i.a, align 16, !tbaa !1822 ; 2 uses
  br i1 %.not, label %._crit_edge44, label %thread-pre-split, !llvm.loop !4432

._crit_edge44:                                    ; preds = %._crit_edge, %bb.a
  %i.v = phi ptr [ null, %bb.a ], [ %.pre, %._crit_edge ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge44, %bb.o
  %indvars.iv.a = phi i64 [ 1, %._crit_edge44 ], [ %indvars.iv.next.a, %bb.o ] ; 2 uses
  %.245 = phi ptr [ %i.v, %._crit_edge44 ], [ %.3, %bb.o ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1822 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not23 = icmp eq ptr %.245, null
  br i1 %.not23, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  br label %.outer

.outer:                                           ; preds = %bb.m, %bb.i
  %.018.i25.ph = phi ptr [ %i.af, %bb.m ], [ %.245, %bb.i ] ; 5 uses
  %.016.i26.ph = phi ptr [ %.016.i26, %bb.m ], [ %i.y, %bb.i ]
  %.0.i27.ph = phi ptr [ %.1.i29, %bb.m ], [ %1, %bb.i ]
  %i.aa = load i64, ptr %.018.i25.ph, align 8, !tbaa !1819 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.outer, %bb.n
  %.016.i26 = phi ptr [ %i.aj, %bb.n ], [ %.016.i26.ph, %.outer ] ; 7 uses
  %.0.i27 = phi ptr [ %.016.i26, %bb.n ], [ %.0.i27.ph, %.outer ] ; 3 uses
  %i.ab = load i64, ptr %.016.i26, align 8, !tbaa !1819 ; 2 uses
  %.not.i28 = icmp sgt i64 %i.aa, %i.ab
  br i1 %.not.i28, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = icmp slt i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  store ptr %.018.i25.ph, ptr %i.ad, align 8, !tbaa !1820
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i29 = phi ptr [ %.018.i25.ph, %bb.l ], [ %.0.i27, %bb.k ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.018.i25.ph, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1820 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %rowSetEntryMerge.exit35, label %.outer

bb.n:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  store ptr %.016.i26, ptr %i.ah, align 8, !tbaa !1820
  %i.ai = getelementptr inbounds nuw i8, ptr %.016.i26, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1820 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %rowSetEntryMerge.exit35, label %bb.j

rowSetEntryMerge.exit35:                          ; preds = %bb.m, %bb.n
  %.016.lcssa35.sink.i33 = phi ptr [ %.016.i26, %bb.n ], [ %.1.i29, %bb.m ]
  %.018.lcssa34.sink.i34 = phi ptr [ %.018.i25.ph, %bb.n ], [ %.016.i26, %bb.m ]
  %i.al = getelementptr inbounds nuw i8, ptr %.016.lcssa35.sink.i33, i64 8
  store ptr %.018.lcssa34.sink.i34, ptr %i.al, align 8, !tbaa !1820
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !1820
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br label %bb.o

bb.o:                                             ; preds = %rowSetEntryMerge.exit35, %bb.h, %bb.g
  %.3 = phi ptr [ %.245, %bb.g ], [ %i.am, %rowSetEntryMerge.exit35 ], [ %i.y, %bb.h ] ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, 40
  br i1 %exitcond.not, label %bb.p, label %bb.g, !llvm.loop !4433

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret ptr %.3
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @rowSetTreeToList(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #39 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.d, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.g, %bb.d ]   ; 5 uses
  %.tr13 = phi ptr [ %1, %bb.a ], [ %i.f, %bb.d ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1823 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call fastcc void @rowSetTreeToList(ptr noundef nonnull %i.c, ptr noundef %.tr13, ptr noundef %i.a)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1822
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.tr, ptr %i.e, align 8, !tbaa !1820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.d

bb.c:                                             ; preds = %tailrecurse
  store ptr %.tr, ptr %.tr13, align 8, !tbaa !1822
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1820 ; 2 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %bb.e, label %tailrecurse

bb.e:                                             ; preds = %bb.d
  store ptr %.tr, ptr %2, align 8, !tbaa !1822
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @rowSetNDeepTree(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #39 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1822   ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %common.ret26, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 1
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %1, -1                       ; 2 uses
  %i.e = tail call fastcc ptr @rowSetNDeepTree(ptr noundef %0, i32 noundef %i.d) ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !1822   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %common.ret26, label %bb.d

common.ret26:                                     ; preds = %bb.e, %bb.c, %bb.a, %bb.d
  %common.ret26.op = phi ptr [ %i.f, %bb.d ], [ %i.a, %bb.e ], [ %i.e, %bb.c ], [ null, %bb.a ]
  ret ptr %common.ret26.op

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !1823
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1820
  store ptr %i.j, ptr %0, align 8, !tbaa !1822
  %i.k = tail call fastcc ptr @rowSetNDeepTree(ptr noundef %0, i32 noundef %i.d)
  store ptr %i.k, ptr %i.i, align 8, !tbaa !1820
  br label %common.ret26

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1820
  store ptr %i.m, ptr %0, align 8, !tbaa !1822
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br label %common.ret26
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @memdbOpen(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %sqlite3Strlen30.exit.thread, label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #59
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 1073741823                 ; 3 uses
  %i.e = icmp samesign ugt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %sqlite3Strlen30.exit.thread

bb.b:                                             ; preds = %sqlite3Strlen30.exit
  %i.f = load i8, ptr %1, align 1, !tbaa !733
  switch i8 %i.f, label %sqlite3Strlen30.exit.thread [
    i8 47, label %bb.c
    i8 92, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !710
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %sqlite3MutexAlloc.exit

sqlite3MutexAlloc.exit:                           ; preds = %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !711
  %i.i = tail call ptr %i.h(i32 noundef 11) #58, !inline_history !7 ; 3 uses
  %.not.i68 = icmp eq ptr %i.i, null
  br i1 %.not.i68, label %sqlite3_mutex_enter.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3MutexAlloc.exit
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.j(ptr noundef nonnull %i.i) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.c, %sqlite3MutexAlloc.exit, %bb.d
end_hunk_4
begin_hunk_5_@substExpr:bb.a

substExprList.exit123:                            ; preds = %bb.ao, %substExprList.exit123.sink.split, %.preheader, %substExprList.exit121, %substExprList.exit, %bb.a
  %.3 = phi ptr [ %1, %substExprList.exit ], [ null, %bb.a ], [ %1, %.preheader ], [ %.3.ph, %substExprList.exit123.sink.split ], [ %1, %substExprList.exit121 ], [ %1, %bb.ao ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @recomputeColumnsUsedExpr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #33 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !1828
  %.not = icmp eq i8 %i.a, -88
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !733  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2056
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !2072
  %.not7 = icmp eq i32 %i.e, %i.g
  br i1 %.not7, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i16, ptr %i.h, align 8, !tbaa !2001 ; 3 uses
  %i.j = icmp slt i16 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 64
  %.val8 = load ptr, ptr %i.k, align 8, !tbaa !733 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val8, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1083
  %i.n = and i32 %i.m, 96
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1149
  %i.q = zext nneg i16 %i.i to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  %i.t = load i16, ptr %i.s, align 2, !tbaa !1364
  %i.u = and i16 %i.t, 96
  %.not10.i = icmp eq i16 %i.u, 0
  br i1 %.not10.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.val8, i64 54
  %i.w = load i16, ptr %i.v, align 2, !tbaa !1150 ; 2 uses
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
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !2131
  %i.ag = or i64 %i.af, %.0.i
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !2131
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.a, %sqlite3ExprColUsed.exit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @multiSelectByMerge(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.SelectDest, align 8         ; 10 uses
  %4 = alloca %struct.SelectDest, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.a = load ptr, ptr %0, align 8, !tbaa !980    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1195 ; 82 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1881 ; 5 uses
  %i.f = add nsw i32 %i.e, -1                     ; 15 uses
  %i.g = add nsw i32 %i.e, -2                     ; 5 uses
  store i32 %i.g, ptr %i.d, align 4, !tbaa !1881
  %i.h = load i8, ptr %1, align 8, !tbaa !2005    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1847 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !570  ; 3 uses
  %.not = icmp eq i8 %i.h, -120                   ; 4 uses
  br i1 %.not, label %.critedge, label %.preheader474

.preheader474:                                    ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 103 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !918
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %.lr.ph484, label %.critedge

.lr.ph484:                                        ; preds = %.preheader474
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph484, %bb.j
  %.0301483 = phi i32 [ %i.k, %.lr.ph484 ], [ %.4, %bb.j ] ; 8 uses
  %.0303482 = phi ptr [ %i.j, %.lr.ph484 ], [ %.3306, %bb.j ] ; 10 uses
  %.0325481 = phi i32 [ 1, %.lr.ph484 ], [ %i.aw, %bb.j ] ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1842
  %i.q = load i32, ptr %i.p, align 8, !tbaa !570
  %.not342 = icmp sgt i32 %.0325481, %i.q
  br i1 %.not342, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.0303482, i64 8 ; 2 uses
  %i.s = icmp sgt i32 %.0301483, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.0298478 = phi ptr [ %i.y, %bb.d ], [ %i.r, %bb.c ] ; 2 uses
  %.0324477 = phi i32 [ %i.x, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0298478, i64 20
  %i.u = load i16, ptr %i.t, align 4, !tbaa !733
  %i.v = zext i16 %i.u to i32
  %i.w = icmp eq i32 %.0325481, %i.v
  br i1 %i.w, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.x = add nuw nsw i32 %.0324477, 1             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0298478, i64 24
  %exitcond.not = icmp eq i32 %i.x, %.0301483
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !5175

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0324.lcssa = phi i32 [ 0, %bb.c ], [ %.0324477, %.lr.ph ]
  %i.z = icmp eq i32 %.0324.lcssa, %.0301483
  br i1 %i.z, label %._crit_edge.thread, label %bb.j

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %i.aa = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef 72), !inline_history !2192 ; 10 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %.critedge354, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i8 0, i64 72, i1 false)
  store i8 -100, ptr %i.aa, align 8, !tbaa !1828
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 50
  store i16 -1, ptr %i.ab, align 2, !tbaa !2007
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 276826112, ptr %i.ac, align 4, !tbaa !795
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %.0325481, ptr %i.ad, align 8, !tbaa !733
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 1, ptr %i.ae, align 8, !tbaa !2008
  %i.af = icmp eq ptr %.0303482, null
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %0, align 8, !tbaa !980
  %i.ah = tail call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.ag, ptr noundef nonnull %i.aa), !inline_history !2011
  br label %sqlite3ExprListAppend.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.0303482, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !570
  %i.ak = load i32, ptr %.0303482, align 8, !tbaa !570 ; 3 uses
  %.not.i361 = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not.i361, label %sqlite3ExprListAppend.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %0, align 8, !tbaa !980
  %i.am = tail call fastcc ptr @sqlite3ExprListAppendGrow(ptr noundef %i.al, ptr noundef %.0303482, ptr noundef nonnull %i.aa), !inline_history !2011
  br label %sqlite3ExprListAppend.exit

sqlite3ExprListAppend.exit.thread:                ; preds = %bb.g
  %i.an = add nsw i32 %i.ak, 1
  store i32 %i.an, ptr %.0303482, align 8, !tbaa !570
  %i.ao = sext i32 %i.ak to i64
  %i.ap = getelementptr inbounds [24 x i8], ptr %i.r, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  store ptr %i.aa, ptr %i.ap, align 8, !tbaa !1998
  store ptr %.0303482, ptr %i.i, align 8, !tbaa !1847
  br label %bb.i

sqlite3ExprListAppend.exit:                       ; preds = %bb.f, %bb.h
  %.0.i = phi ptr [ %i.ah, %bb.f ], [ %i.am, %bb.h ] ; 3 uses
  store ptr %.0.i, ptr %i.i, align 8, !tbaa !1847
  %.not351 = icmp eq ptr %.0.i, null
  br i1 %.not351, label %bb.j, label %bb.i

bb.i:                                             ; preds = %sqlite3ExprListAppend.exit.thread, %sqlite3ExprListAppend.exit
  %.0.i445 = phi ptr [ %.0303482, %sqlite3ExprListAppend.exit.thread ], [ %.0.i, %sqlite3ExprListAppend.exit ] ; 2 uses
  %i.ar = trunc i32 %.0325481 to i16
  %i.as = add nsw i32 %.0301483, 1
  %i.at = sext i32 %.0301483 to i64
  %i.au = getelementptr [24 x i8], ptr %.0.i445, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 28
  store i16 %i.ar, ptr %i.av, align 4, !tbaa !733
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %sqlite3ExprListAppend.exit, %._crit_edge
  %.3306 = phi ptr [ %.0303482, %._crit_edge ], [ null, %sqlite3ExprListAppend.exit ], [ %.0.i445, %bb.i ] ; 2 uses
  %.4 = phi i32 [ %.0301483, %._crit_edge ], [ %.0301483, %sqlite3ExprListAppend.exit ], [ %i.as, %bb.i ] ; 2 uses
  %i.aw = add nuw nsw i32 %.0325481, 1
  %i.ax = load i8, ptr %i.l, align 1, !tbaa !918
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.b, label %.critedge, !llvm.loop !5176

.critedge:                                        ; preds = %bb.j, %bb.b, %.preheader474, %bb.a
  %.4307 = phi ptr [ %i.j, %bb.a ], [ %i.j, %.preheader474 ], [ %.0303482, %bb.b ], [ %.3306, %bb.j ] ; 2 uses
  %.5 = phi i32 [ %i.k, %bb.a ], [ %i.k, %.preheader474 ], [ %.0301483, %bb.b ], [ %.4, %bb.j ] ; 5 uses
  %i.az = add i32 %.5, 1                          ; 3 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %i.bc = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef %i.bb) ; 7 uses
  %.not343 = icmp eq ptr %i.bc, null
  br i1 %.not343, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  store i32 %.5, ptr %i.bc, align 4, !tbaa !570
  %.not344490 = icmp slt i32 %.5, 1
  br i1 %.not344490, label %._crit_edge496.thread, label %.lr.ph495.preheader

.lr.ph495.preheader:                              ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.4307, i64 8 ; 2 uses
  %wide.trip.count = zext i32 %i.az to i64
  %i.be = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.be, 1
  %i.bf = icmp eq i32 %i.az, 2
  br i1 %i.bf, label %.lr.ph495.epil.preheader, label %.lr.ph495.preheader.new

.lr.ph495.preheader.new:                          ; preds = %.lr.ph495.preheader
  %unroll_iter = and i64 %i.be, -2
  br label %.lr.ph495

.lr.ph495:                                        ; preds = %.lr.ph495, %.lr.ph495.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph495.preheader.new ], [ %indvars.iv.next.1, %.lr.ph495 ] ; 4 uses
  %.0493 = phi i32 [ 0, %.lr.ph495.preheader.new ], [ %spec.select.1, %.lr.ph495 ]
  %.0295492 = phi ptr [ %i.bd, %.lr.ph495.preheader.new ], [ %i.bt, %.lr.ph495 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph495.preheader.new ], [ %niter.next.1, %.lr.ph495 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0295492, i64 20
  %i.bh = load i16, ptr %i.bg, align 4, !tbaa !733 ; 2 uses
  %i.bi = zext i16 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !570
  %i.bl = zext i16 %i.bh to i64
  %.not350 = icmp eq i64 %indvars.iv, %i.bl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0295492, i64 44
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !733 ; 2 uses
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nsw i32 %i.bo, -1
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !570
  %i.br = zext i16 %i.bn to i64
  %.not350.1 = icmp eq i64 %indvars.iv.next, %i.br
  %i.bs = select i1 %.not350.1, i1 %.not350, i1 false
  %spec.select.1 = select i1 %i.bs, i32 %.0493, i32 1 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0295492, i64 48 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge496.unr-lcssa, label %.lr.ph495, !llvm.loop !5177

._crit_edge496.unr-lcssa:                         ; preds = %.lr.ph495
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge496, label %.lr.ph495.epil.preheader

.lr.ph495.epil.preheader:                         ; preds = %._crit_edge496.unr-lcssa, %.lr.ph495.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph495.preheader ], [ %indvars.iv.next.1, %._crit_edge496.unr-lcssa ] ; 2 uses
  %.0493.epil.init = phi i32 [ 0, %.lr.ph495.preheader ], [ %spec.select.1, %._crit_edge496.unr-lcssa ]
  %.0295492.epil.init = phi ptr [ %i.bd, %.lr.ph495.preheader ], [ %i.bt, %._crit_edge496.unr-lcssa ]
  %lcmp.mod617 = trunc i64 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod617)
  %i.bu = getelementptr inbounds nuw i8, ptr %.0295492.epil.init, i64 20
  %i.bv = load i16, ptr %i.bu, align 4, !tbaa !733 ; 2 uses
  %i.bw = zext i16 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, -1
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.epil.init
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !570
  %i.bz = zext i16 %i.bv to i64
  %.not350.epil = icmp eq i64 %indvars.iv.epil.init, %i.bz
  %spec.select.epil = select i1 %.not350.epil, i32 %.0493.epil.init, i32 1
  br label %._crit_edge496

._crit_edge496:                                   ; preds = %._crit_edge496.unr-lcssa, %.lr.ph495.epil.preheader
  %spec.select.lcssa = phi i32 [ %spec.select.1, %._crit_edge496.unr-lcssa ], [ %spec.select.epil, %.lr.ph495.epil.preheader ]
  %i.ca = icmp eq i32 %spec.select.lcssa, 0
  br i1 %i.ca, label %._crit_edge496.thread, label %bb.l

._crit_edge496.thread:                            ; preds = %bb.k, %._crit_edge496
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.a, ptr noundef nonnull %i.bc)
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge496, %._crit_edge496.thread, %.critedge
  %.1300 = phi ptr [ null, %.critedge ], [ null, %._crit_edge496.thread ], [ %i.bc, %._crit_edge496 ] ; 14 uses
  %i.cb = tail call fastcc ptr @multiSelectByMergeKeyInfo(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1842
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !570 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !1174
  %i.ch = add i32 %i.cg, 1                        ; 5 uses
  %i.ci = add i32 %i.ch, %i.ce
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !1174
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !703 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !1164
  %.not.i.i = icmp sgt i32 %i.cm, %i.ck
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 73, i32 noundef 0, i32 noundef %i.ch, i32 noundef 0), !inline_history !1196 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.o:                                             ; preds = %bb.m
  %i.co = add nsw i32 %i.ck, 1
  store i32 %i.co, ptr %i.cj, align 8, !tbaa !703
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !702
  %i.cr = sext i32 %i.ck to i64
  %i.cs = getelementptr inbounds [32 x i8], ptr %i.cq, i64 %i.cr ; 6 uses
  store i8 73, ptr %i.cs, align 8, !tbaa !929
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i16 0, ptr %i.ct, align 2, !tbaa !930
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 0, ptr %i.cu, align 4, !tbaa !926
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %i.ch, ptr %i.cv, align 8, !tbaa !927
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store i8 0, ptr %i.cx, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cw, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.n, %bb.o
  %i.cy = tail call fastcc ptr @sqlite3KeyInfoAlloc(ptr noundef %i.a, i32 noundef %i.ce, i32 noundef 1) ; 5 uses
  %.not345 = icmp ne ptr %i.cy, null
  %i.cz = icmp sgt i32 %i.ce, 0
  %or.cond = select i1 %.not345, i1 %i.cz, i1 false
  br i1 %or.cond, label %.lr.ph499, label %.loopexit

.lr.ph499:                                        ; preds = %sqlite3VdbeAddOp2.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %wide.trip.count514 = zext nneg i32 %i.ce to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph499, %bb.p
  %indvars.iv511 = phi i64 [ 0, %.lr.ph499 ], [ %indvars.iv.next512, %bb.p ] ; 4 uses
  %i.dc = trunc nuw nsw i64 %indvars.iv511 to i32
  %i.dd = tail call fastcc ptr @multiSelectCollSeq(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.dc)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv511
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !1715
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !741
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv511
  store i8 0, ptr %i.dg, align 1, !tbaa !733
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, 1 ; 2 uses
  %exitcond515.not = icmp eq i64 %indvars.iv.next512, %wide.trip.count514
  br i1 %exitcond515.not, label %.loopexit, label %bb.p, !llvm.loop !5178

.loopexit:                                        ; preds = %bb.p, %sqlite3VdbeAddOp2.exit
  %i.dh = icmp eq i8 %i.h, -121
  br i1 %i.dh, label %.thread, label %.critedge4.thread

.thread:                                          ; preds = %bb.l, %.loopexit
  %.0308453 = phi ptr [ %i.cy, %.loopexit ], [ null, %bb.l ] ; 5 uses
  %.0309451 = phi i32 [ %i.ch, %.loopexit ], [ 0, %bb.l ] ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !1373
  %i.dk = and i32 %i.dj, 2097152
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %.preheader472, label %.critedge4.thread

.preheader472:                                    ; preds = %.thread
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !1841 ; 2 uses
  %.not346500 = icmp eq ptr %i.dn, null
  br i1 %.not346500, label %.critedge4.thread, label %.lr.ph503

.lr.ph503:                                        ; preds = %.preheader472, %bb.q
  %i.do = phi ptr [ %i.dt, %bb.q ], [ %i.dn, %.preheader472 ] ; 2 uses
  %.0319502 = phi i32 [ %i.dr, %bb.q ], [ 1, %.preheader472 ] ; 2 uses
  %.0321501 = phi ptr [ %i.do, %bb.q ], [ %1, %.preheader472 ]
  %i.dp = load i8, ptr %.0321501, align 8, !tbaa !2005
  %i.dq = icmp eq i8 %i.dp, %i.h
  br i1 %i.dq, label %bb.q, label %.critedge4

bb.q:                                             ; preds = %.lr.ph503
end_hunk_5
begin_hunk_6_@sqlite3WhereCodeOneLoopStart:bb.a
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sqlite3WhereGetMask.exit, label %.lr.ph.i, !llvm.loop !402

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !570
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
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !2400
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !565
  %i.ae = zext nneg i32 %3 to i64
  %i.af = lshr i64 %i.ad, %i.ae                   ; 3 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ag, 1                        ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !2320 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !2365
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 6 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !1881
  %i.an = add nsw i32 %i.am, -1                   ; 7 uses
  store i32 %i.an, ptr %i.al, align 4, !tbaa !1881
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !2333
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %sqlite3WhereGetMask.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !2009
  %i.ar = and i8 %i.aq, 8
  %.not1046 = icmp eq i8 %i.ar, 0
  br i1 %.not1046, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !1174
  %i.au = add nsw i32 %i.at, 1                    ; 4 uses
  store i32 %i.au, ptr %i.as, align 4, !tbaa !1174
  store i32 %i.au, ptr %4, align 8, !tbaa !2358
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !703 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !1164
  %.not.i.i = icmp sgt i32 %i.ay, %i.aw
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = tail call fastcc i32 @growOp3(ptr noundef nonnull %1, i32 noundef 73, i32 noundef 0, i32 noundef %i.au, i32 noundef 0), !inline_history !1196 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.g:                                             ; preds = %bb.e
  %i.ba = add nsw i32 %i.aw, 1
  store i32 %i.ba, ptr %i.av, align 8, !tbaa !703
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !702
  %i.bd = sext i32 %i.aw to i64
  %i.be = getelementptr inbounds [32 x i8], ptr %i.bc, i64 %i.bd ; 6 uses
  store i8 73, ptr %i.be, align 8, !tbaa !929
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i16 0, ptr %i.bf, align 2, !tbaa !930
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 0, ptr %i.bg, align 4, !tbaa !926
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i32 %i.au, ptr %i.bh, align 8, !tbaa !927
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 0, ptr %i.bj, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bi, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.f, %bb.g
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %1, ptr noundef nonnull @.str.971)
  br label %bb.h

bb.h:                                             ; preds = %sqlite3VdbeAddOp2.exit, %bb.d, %sqlite3WhereGetMask.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 25
  %i.bm = load i16, ptr %i.bl, align 1            ; 2 uses
  %i.bn = and i16 %i.bm, 64
  %.not1047 = icmp eq i16 %i.bn, 0
  br i1 %.not1047, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !733 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !2135 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !2132 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !703 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !1164
  %.not.i = icmp sgt i32 %i.bx, %i.bv
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = tail call fastcc i32 @growOp3(ptr noundef nonnull %1, i32 noundef 11, i32 noundef %i.br, i32 noundef 0, i32 noundef %i.bt), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.k:                                             ; preds = %bb.i
  %i.bz = add nsw i32 %i.bv, 1
  store i32 %i.bz, ptr %i.bu, align 8, !tbaa !703
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !702
  %i.cc = sext i32 %i.bv to i64
  %i.cd = getelementptr inbounds [32 x i8], ptr %i.cb, i64 %i.cc ; 7 uses
  store i8 11, ptr %i.cd, align 8, !tbaa !929
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i16 0, ptr %i.ce, align 2, !tbaa !930
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 %i.br, ptr %i.cf, align 4, !tbaa !926
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 0, ptr %i.cg, align 8, !tbaa !927
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 %i.bt, ptr %i.ch, align 4, !tbaa !928
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store i8 0, ptr %i.cj, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.j, %bb.k
  %i.ck = load i32, ptr %i.bu, align 8, !tbaa !703 ; 4 uses
  %i.cl = load i32, ptr %i.bw, align 4, !tbaa !1164
  %.not.i.i1176 = icmp sgt i32 %i.cl, %i.ck
  br i1 %.not.i.i1176, label %bb.m, label %bb.l

bb.l:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.cm = tail call fastcc i32 @growOp3(ptr noundef nonnull %1, i32 noundef 12, i32 noundef %i.br, i32 noundef %i.aj, i32 noundef 0), !inline_history !1196
  br label %sqlite3VdbeAddOp2.exit1178

bb.m:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.cn = add nsw i32 %i.ck, 1
  store i32 %i.cn, ptr %i.bu, align 8, !tbaa !703
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !702
  %i.cq = sext i32 %i.ck to i64
  %i.cr = getelementptr inbounds [32 x i8], ptr %i.cp, i64 %i.cq ; 6 uses
  store i8 12, ptr %i.cr, align 8, !tbaa !929
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i16 0, ptr %i.cs, align 2, !tbaa !930
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 %i.br, ptr %i.ct, align 4, !tbaa !926
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %i.aj, ptr %i.cu, align 8, !tbaa !927
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store i8 0, ptr %i.cw, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cv, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit1178

sqlite3VdbeAddOp2.exit1178:                       ; preds = %bb.l, %bb.m
  %.0.i.i1177 = phi i32 [ %i.cm, %bb.l ], [ %i.ck, %bb.m ]
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 %.0.i.i1177, ptr %i.cx, align 8, !tbaa !2359
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1825
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1171
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %1, ptr noundef nonnull @.str.943, ptr noundef %i.da)
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 73
  store i8 9, ptr %i.db, align 1, !tbaa !2357
  br label %.critedge1157

bb.n:                                             ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 7 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !2291 ; 10 uses
  %i.de = and i32 %i.dd, 1024
  %.not1048 = icmp eq i32 %i.de, 0
  br i1 %.not1048, label %bb.bh, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.dg = load i16, ptr %i.df, align 4, !tbaa !2289 ; 4 uses
  %i.dh = zext i16 %i.dg to i32                   ; 3 uses
  %i.di = add nuw nsw i32 %i.dh, 2                ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !2138 ; 2 uses
  %.not.i1179 = icmp sgt i32 %i.di, %i.dk
  br i1 %.not.i1179, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !2172 ; 2 uses
  %i.dn = add nsw i32 %i.dm, %i.di
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !2172
  %i.do = sub nsw i32 %i.dk, %i.di
  store i32 %i.do, ptr %i.dj, align 4, !tbaa !2138
  br label %sqlite3GetTempRange.exit

bb.q:                                             ; preds = %bb.o
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !1174 ; 2 uses
  %i.dr = add nsw i32 %i.dq, 1
  %i.ds = add nsw i32 %i.dq, %i.di
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !1174
  br label %sqlite3GetTempRange.exit

sqlite3GetTempRange.exit:                         ; preds = %bb.p, %bb.q
  %.014.i = phi i32 [ %i.dr, %bb.q ], [ %i.dm, %bb.p ] ; 6 uses
  %i.dt = load i32, ptr %i.ai, align 4, !tbaa !2320 ; 2 uses
  %.not1537 = icmp eq i16 %i.dg, 0                ; 2 uses
  br i1 %.not1537, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3GetTempRange.exit
  %i.du = add i32 %.014.i, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 32
  %wide.trip.count = zext i16 %i.dg to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %sqlite3VdbeAddOp3.exit1182
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3VdbeAddOp3.exit1182 ] ; 4 uses
  %.010141452 = phi i32 [ %i.dt, %.lr.ph ], [ %.21016, %sqlite3VdbeAddOp3.exit1182 ] ; 6 uses
  %i.ef = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.eg = add i32 %i.du, %i.ef                    ; 7 uses
  %i.eh = load ptr, ptr %i.dv, align 8, !tbaa !2288
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !2309 ; 8 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %sqlite3VdbeAddOp3.exit1182, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 20 ; 2 uses
  %i.em = load i16, ptr %i.el, align 4, !tbaa !2397
  %i.en = and i16 %i.em, 1
  %.not1120 = icmp eq i16 %i.en, 0
  br i1 %.not1120, label %bb.af, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eo = icmp samesign ult i64 %indvars.iv, 32
  %i.ep = shl nuw i32 1, %i.ef
  %i.eq = select i1 %i.eo, i32 %i.ep, i32 0
  %i.er = load i32, ptr %i.dw, align 8, !tbaa !733
  %i.es = and i32 %i.er, %i.eq
  %.not1122 = icmp eq i32 %i.es, 0
  br i1 %.not1122, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.et = load i32, ptr %i.dx, align 8, !tbaa !1175 ; 4 uses
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.dx, align 8, !tbaa !1175
  %i.ev = load i32, ptr %i.dy, align 4, !tbaa !1174
  %i.ew = add nsw i32 %i.ev, 1                    ; 3 uses
  store i32 %i.ew, ptr %i.dy, align 4, !tbaa !1174
  %i.ex = load ptr, ptr %i.ej, align 8, !tbaa !1287
  tail call fastcc void @sqlite3CodeRhsOfIN(ptr noundef nonnull %0, ptr noundef %i.ex, i32 noundef %i.et, i32 noundef 0)
  %i.ey = load i32, ptr %i.dz, align 8, !tbaa !703 ; 3 uses
  %i.ez = load i32, ptr %i.ea, align 4, !tbaa !1164
  %.not.i1180 = icmp sgt i32 %i.ez, %i.ey
  br i1 %.not.i1180, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fa = tail call fastcc i32 @growOp3(ptr noundef nonnull %1, i32 noundef 177, i32 noundef %i.et, i32 noundef %i.eg, i32 noundef %i.ew), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit1182

bb.w:                                             ; preds = %bb.u
  %i.fb = add nsw i32 %i.ey, 1
  store i32 %i.fb, ptr %i.dz, align 8, !tbaa !703
  %i.fc = load ptr, ptr %i.eb, align 8, !tbaa !702
  %i.fd = sext i32 %i.ey to i64
  %i.fe = getelementptr inbounds [32 x i8], ptr %i.fc, i64 %i.fd ; 7 uses
  store i8 -79, ptr %i.fe, align 8, !tbaa !929
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  store i16 0, ptr %i.ff, align 2, !tbaa !930
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i32 %i.et, ptr %i.fg, align 4, !tbaa !926
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i32 %i.eg, ptr %i.fh, align 8, !tbaa !927
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  store i32 %i.ew, ptr %i.fi, align 4, !tbaa !928
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  store i8 0, ptr %i.fk, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit1182

bb.x:                                             ; preds = %bb.t
  %i.fl = load ptr, ptr %i.ej, align 8, !tbaa !1287 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !1828
  switch i8 %i.fm, label %bb.ac [
    i8 54, label %bb.y
    i8 45, label %bb.y
    i8 51, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !1288
  %i.fp = tail call fastcc i32 @sqlite3ExprCodeTarget(ptr noundef nonnull %0, ptr noundef %i.fo, i32 noundef %i.eg), !inline_history !414 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit1395

bb.z:                                             ; preds = %bb.x
  %i.fq = load ptr, ptr %i.ec, align 8, !tbaa !1195 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 144 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !703 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 148
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !1164
  %.not.i.i1392 = icmp sgt i32 %i.fu, %i.fs
  br i1 %.not.i.i1392, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fv = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.fq, i32 noundef 77, i32 noundef 0, i32 noundef %i.eg, i32 noundef 0), !inline_history !415 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit1395

bb.ab:                                            ; preds = %bb.z
  %i.fw = add nsw i32 %i.fs, 1
  store i32 %i.fw, ptr %i.fr, align 8, !tbaa !703
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 136
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !702
  %i.fz = sext i32 %i.fs to i64
  %i.ga = getelementptr inbounds [32 x i8], ptr %i.fy, i64 %i.fz ; 6 uses
  store i8 77, ptr %i.ga, align 8, !tbaa !929
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 2
  store i16 0, ptr %i.gb, align 2, !tbaa !930
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i32 0, ptr %i.gc, align 4, !tbaa !926
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store i32 %i.eg, ptr %i.gd, align 8, !tbaa !927
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  store i8 0, ptr %i.gf, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ge, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit1395

bb.ac:                                            ; preds = %bb.x
  tail call fastcc void @codeINTerm(ptr noundef nonnull %0, ptr noundef nonnull %i.ej, ptr noundef %4, i32 noundef range(i32 -2147483648, 65535) %i.ef, i32 noundef range(i32 0, 2) %i.ah, i32 noundef %i.eg), !inline_history !414
  br label %sqlite3VdbeAddOp2.exit1395

sqlite3VdbeAddOp2.exit1395:                       ; preds = %bb.ab, %bb.aa, %bb.ac, %bb.y
  %i.gg = load ptr, ptr %i.e, align 8, !tbaa !2314
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !2291
  %i.gj = and i32 %i.gi, 2097152
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %sqlite3VdbeAddOp2.exit1395
  %i.gl = load i16, ptr %i.el, align 4, !tbaa !2397
  %i.gm = and i16 %i.gl, 2048
  %i.gn = icmp eq i16 %i.gm, 0
  br i1 %i.gn, label %bb.ae, label %codeEqualityTerm.exit

bb.ae:                                            ; preds = %bb.ad, %sqlite3VdbeAddOp2.exit1395
  tail call fastcc void @disableTerm(ptr noundef nonnull %4, ptr noundef nonnull %i.ej), !inline_history !414
  br label %codeEqualityTerm.exit

codeEqualityTerm.exit:                            ; preds = %bb.ad, %bb.ae
  %i.go = load i32, ptr %i.ak, align 4, !tbaa !2365
  br label %sqlite3VdbeAddOp3.exit1182

bb.af:                                            ; preds = %bb.s
  %i.gp = load ptr, ptr %i.ej, align 8, !tbaa !1287
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !1288
  tail call fastcc void @codeExprOrVector(ptr noundef nonnull %0, ptr noundef %i.gr, i32 noundef %i.eg, i32 noundef 1)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ej, i64 23
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !2401
  %i.gu = icmp eq i8 %i.gt, 74
  br i1 %i.gu, label %bb.ag, label %sqlite3VdbeAddOp3.exit1182

bb.ag:                                            ; preds = %bb.af
  %i.gv = load i8, ptr %i.ed, align 4
  %i.gw = and i8 %i.gv, 2
  %.not1121 = icmp eq i8 %i.gw, 0
  br i1 %.not1121, label %sqlite3VdbeAddOp3.exit1182, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gx = load ptr, ptr %i.ee, align 8, !tbaa !2211
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !2128 ; 2 uses
  %i.ha = load i32, ptr %i.dz, align 8, !tbaa !703 ; 3 uses
  %i.hb = load i32, ptr %i.ea, align 4, !tbaa !1164
  %.not.i.i1184 = icmp sgt i32 %i.hb, %i.ha
  br i1 %.not.i.i1184, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hc = tail call fastcc i32 @growOp3(ptr noundef nonnull %1, i32 noundef 73, i32 noundef 0, i32 noundef %i.gz, i32 noundef 0), !inline_history !1196 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit1186
end_hunk_6
begin_hunk_7_@sqlite3GenerateConstraintChecks:bb.a
  br i1 %i.aom, label %bb.hh, label %bb.ht

bb.hh:                                            ; preds = %bb.hg
  %.val718 = load ptr, ptr %1, align 8, !tbaa !1171 ; 3 uses
  %.val719 = load ptr, ptr %i.aav, align 8, !tbaa !1147 ; 3 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %.val719, i64 80 ; 2 uses
  %i.aoo = load i8, ptr %.val718, align 1, !tbaa !733 ; 2 uses
  %.not6.i.i.i.i = icmp eq i8 %i.aoo, 0
  br i1 %.not6.i.i.i.i, label %strHash.exit.i.i.i, label %.lr.ph.i.i.i.i879

.lr.ph.i.i.i.i879:                                ; preds = %bb.hh, %.lr.ph.i.i.i.i879
  %i.aop = phi i8 [ %i.aov, %.lr.ph.i.i.i.i879 ], [ %i.aoo, %bb.hh ]
  %.08.i.i.i.i = phi i32 [ %i.aou, %.lr.ph.i.i.i.i879 ], [ 0, %bb.hh ]
  %.047.i.i.i.i = phi ptr [ %i.aoq, %.lr.ph.i.i.i.i879 ], [ %.val718, %bb.hh ]
  %i.aoq = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i, i64 1 ; 2 uses
  %i.aor = and i8 %i.aop, -33
  %i.aos = zext i8 %i.aor to i32
  %i.aot = add i32 %.08.i.i.i.i, %i.aos
  %i.aou = mul i32 %i.aot, -1640531535            ; 2 uses
  %i.aov = load i8, ptr %i.aoq, align 1, !tbaa !733 ; 2 uses
  %.not.i.i.i.i880 = icmp eq i8 %i.aov, 0
  br i1 %.not.i.i.i.i880, label %strHash.exit.i.i.i, label %.lr.ph.i.i.i.i879, !llvm.loop !96

strHash.exit.i.i.i:                               ; preds = %.lr.ph.i.i.i.i879, %bb.hh
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %bb.hh ], [ %i.aou, %.lr.ph.i.i.i.i879 ] ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %.val719, i64 96
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !1181 ; 2 uses
  %.not.i.i.i881 = icmp eq ptr %i.aox, null
  br i1 %.not.i.i.i881, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %strHash.exit.i.i.i
  %i.aoy = load i32, ptr %i.aon, align 8, !tbaa !1182
  %i.aoz = urem i32 %.0.lcssa.i.i.i.i, %i.aoy
  %i.apa = zext i32 %i.aoz to i64
  %i.apb = getelementptr inbounds nuw [16 x i8], ptr %i.aox, i64 %i.apa ; 2 uses
  br label %bb.hk

bb.hj:                                            ; preds = %strHash.exit.i.i.i
  %i.apc = getelementptr inbounds nuw i8, ptr %.val719, i64 84
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %.pn.i.i.i = phi ptr [ %i.apb, %bb.hi ], [ %i.aon, %bb.hj ]
  %.020.in.i.i.i = phi ptr [ %i.apb, %bb.hi ], [ %i.apc, %bb.hj ]
  %.020.i.i.i = load i32, ptr %.020.in.i.i.i, align 4, !tbaa !570 ; 2 uses
  %.not2631.i.i.i = icmp eq i32 %.020.i.i.i, 0
  br i1 %.not2631.i.i.i, label %sqlite3FkReferences.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.hk
  %.021.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %sqlite3StrICmp.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.133.i.i.i = phi i32 [ %i.apu, %sqlite3StrICmp.exit.i.i.i ], [ %.020.i.i.i, %.lr.ph.i.preheader.i.i ]
  %.12232.i.in.i.i = phi ptr [ %.12232.i.i.i, %sqlite3StrICmp.exit.i.i.i ], [ %.021.in.i.i.i, %.lr.ph.i.preheader.i.i ]
  %.12232.i.i.i = load ptr, ptr %.12232.i.in.i.i, align 8, !tbaa !646 ; 4 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %.12232.i.i.i, i64 32
  %i.ape = load i32, ptr %i.apd, align 8, !tbaa !1183
  %i.apf = icmp eq i32 %.0.lcssa.i.i.i.i, %i.ape
  br i1 %i.apf, label %bb.hl, label %sqlite3StrICmp.exit.i.i.i

bb.hl:                                            ; preds = %.lr.ph.i.i.i
  %i.apg = getelementptr inbounds nuw i8, ptr %.12232.i.i.i, i64 24
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !1184
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hp, %bb.hl
  %.013.i.i.i.i = phi ptr [ %i.aph, %bb.hl ], [ %i.aps, %bb.hp ] ; 2 uses
  %.012.i.i.i.i = phi ptr [ %.val718, %bb.hl ], [ %i.apt, %bb.hp ] ; 2 uses
  %i.api = load i8, ptr %.013.i.i.i.i, align 1, !tbaa !733 ; 3 uses
  %i.apj = load i8, ptr %.012.i.i.i.i, align 1, !tbaa !733 ; 2 uses
  %i.apk = icmp eq i8 %i.api, %i.apj
  br i1 %i.apk, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.apl = icmp eq i8 %i.api, 0
  br i1 %i.apl, label %sqlite3FkReferences.exit, label %bb.hp

bb.ho:                                            ; preds = %bb.hm
  %i.apm = zext i8 %i.api to i64
  %i.apn = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.apm
  %i.apo = load i8, ptr %i.apn, align 1, !tbaa !733
  %i.app = zext i8 %i.apj to i64
  %i.apq = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.app
  %i.apr = load i8, ptr %i.apq, align 1, !tbaa !733
  %.not.i27.i.i.i = icmp eq i8 %i.apo, %i.apr
  br i1 %.not.i27.i.i.i, label %bb.hp, label %sqlite3StrICmp.exit.i.i.i

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.aps = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 1
  %i.apt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 1
  br label %bb.hm

sqlite3StrICmp.exit.i.i.i:                        ; preds = %bb.ho, %.lr.ph.i.i.i
  %i.apu = add i32 %.133.i.i.i, -1                ; 2 uses
  %.not26.i.i.i = icmp eq i32 %i.apu, 0
  br i1 %.not26.i.i.i, label %sqlite3FkReferences.exit, label %.lr.ph.i.i.i, !llvm.loop !97

sqlite3FkReferences.exit:                         ; preds = %sqlite3StrICmp.exit.i.i.i, %bb.hn, %bb.hk
  %.0.i.i.i882 = phi ptr [ @findElementWithHash.nullElement, %bb.hk ], [ %.12232.i.i.i, %bb.hn ], [ @findElementWithHash.nullElement, %sqlite3StrICmp.exit.i.i.i ]
  %i.apv = getelementptr inbounds nuw i8, ptr %.0.i.i.i882, i64 16
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !648
  %i.apx = icmp eq ptr %i.apw, null
  br i1 %i.apx, label %bb.hq, label %bb.ht

bb.hq:                                            ; preds = %sqlite3FkReferences.exit, %sqlite3TriggersExist.exit878.thread
  %i.apy = load ptr, ptr %i.abj, align 8, !tbaa !1194 ; 4 uses
  %i.apz = sub i32 0, %i.acc                      ; 2 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apy, i64 80
  %i.aqb = load i32, ptr %i.aqa, align 8, !tbaa !2195
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apy, i64 76
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !1881
  %i.aqe = add nsw i32 %i.aqd, %i.aqb
  %i.aqf = icmp slt i32 %i.aqe, 0
  br i1 %i.aqf, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.apy, ptr noundef nonnull readonly %i.d, i32 noundef %i.apz), !inline_history !2196
  br label %sqlite3VdbeResolveLabel.exit869

bb.hs:                                            ; preds = %bb.hq
  %i.aqg = load i32, ptr %i.aag, align 8, !tbaa !703
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.apy, i64 88
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !1216
  %i.aqj = sext i32 %i.apz to i64
  %i.aqk = getelementptr inbounds [4 x i8], ptr %i.aqi, i64 %i.aqj
  store i32 %i.aqg, ptr %i.aqk, align 4, !tbaa !570
  br label %sqlite3VdbeResolveLabel.exit869

bb.ht:                                            ; preds = %sqlite3FkReferences.exit, %bb.hg, %sqlite3TriggersExist.exit878, %bb.hb, %bb.ha
  %i.aql = getelementptr inbounds nuw i8, ptr %.36331114, i64 94
  %i.aqm = load i16, ptr %i.aql, align 2, !tbaa !1159
  %i.aqn = zext i16 %i.aqm to i32                 ; 2 uses
  %i.aqo = load i32, ptr %i.aag, align 8, !tbaa !703 ; 4 uses
  %i.aqp = load i32, ptr %i.aal, align 4, !tbaa !1164
  %.not.i884 = icmp sgt i32 %i.aqp, %i.aqo
  br i1 %.not.i884, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.aqq = call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %i.d, i32 noundef 27, i32 noundef %i.acg, i32 noundef %i.acd, i32 noundef %i.ade, i32 noundef %i.aqn), !inline_history !1165
  br label %sqlite3VdbeAddOp4Int.exit

bb.hv:                                            ; preds = %bb.ht
  %i.aqr = add nsw i32 %i.aqo, 1
  store i32 %i.aqr, ptr %i.aag, align 8, !tbaa !703
  %i.aqs = load ptr, ptr %i.aah, align 8, !tbaa !702
  %i.aqt = sext i32 %i.aqo to i64
  %i.aqu = getelementptr inbounds [32 x i8], ptr %i.aqs, i64 %i.aqt ; 8 uses
  store i8 27, ptr %i.aqu, align 8, !tbaa !929
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 2
  store i16 0, ptr %i.aqv, align 2, !tbaa !930
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqu, i64 4
  store i32 %i.acg, ptr %i.aqw, align 4, !tbaa !926
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqu, i64 8
  store i32 %i.acd, ptr %i.aqx, align 8, !tbaa !927
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqu, i64 12
  store i32 %i.ade, ptr %i.aqy, align 4, !tbaa !928
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqu, i64 16
  store i32 %i.aqn, ptr %i.aqz, align 8, !tbaa !733
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqu, i64 1
  store i8 -3, ptr %i.ara, align 1, !tbaa !1166
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqu, i64 24
  store ptr null, ptr %i.arb, align 8, !tbaa !1167
  br label %sqlite3VdbeAddOp4Int.exit

sqlite3VdbeAddOp4Int.exit:                        ; preds = %bb.hu, %bb.hv
  %.0.i885 = phi i32 [ %i.aqq, %bb.hu ], [ %i.aqo, %bb.hv ] ; 2 uses
  br i1 %i.amf, label %sqlite3GetTempRange.exit, label %bb.hw

bb.hw:                                            ; preds = %sqlite3VdbeAddOp4Int.exit
  br i1 %i.aaw, label %bb.hx, label %bb.ia

bb.hx:                                            ; preds = %bb.hw
  %i.arc = load i8, ptr %i.aba, align 1, !tbaa !2137 ; 2 uses
  %i.ard = icmp eq i8 %i.arc, 0
  br i1 %i.ard, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.are = load i32, ptr %i.aaz, align 4, !tbaa !1174
  %i.arf = add nsw i32 %i.are, 1                  ; 2 uses
  store i32 %i.arf, ptr %i.aaz, align 4, !tbaa !1174
  br label %sqlite3GetTempRange.exit

bb.hz:                                            ; preds = %bb.hx
  %i.arg = add i8 %i.arc, -1                      ; 2 uses
  store i8 %i.arg, ptr %i.aba, align 1, !tbaa !2137
  %i.arh = zext i8 %i.arg to i64
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.arh
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !570
  br label %sqlite3GetTempRange.exit

bb.ia:                                            ; preds = %bb.hw
  %i.ark = load i32, ptr %i.aax, align 4, !tbaa !2138 ; 2 uses
  %.not.i886 = icmp sgt i32 %.0607, %i.ark
  br i1 %.not.i886, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.arl = load i32, ptr %i.aay, align 8, !tbaa !2172 ; 2 uses
  %i.arm = add nsw i32 %i.arl, %.0607
  store i32 %i.arm, ptr %i.aay, align 8, !tbaa !2172
  %i.arn = sub nsw i32 %i.ark, %.0607
  store i32 %i.arn, ptr %i.aax, align 4, !tbaa !2138
  br label %sqlite3GetTempRange.exit

bb.ic:                                            ; preds = %bb.ia
  %i.aro = load i32, ptr %i.aaz, align 4, !tbaa !1174 ; 2 uses
  %i.arp = add nsw i32 %i.aro, 1
  %i.arq = add nsw i32 %i.aro, %.0607
  store i32 %i.arq, ptr %i.aaz, align 4, !tbaa !1174
  br label %sqlite3GetTempRange.exit

sqlite3GetTempRange.exit:                         ; preds = %bb.ic, %bb.ib, %bb.hz, %bb.hy, %sqlite3VdbeAddOp4Int.exit
  %i.arr = phi i32 [ %i.ade, %sqlite3VdbeAddOp4Int.exit ], [ %i.arp, %bb.ic ], [ %i.arl, %bb.ib ], [ %i.arf, %bb.hy ], [ %i.arj, %bb.hz ] ; 12 uses
  %i.ars = icmp eq i32 %.10, 5
  %or.cond21 = or i1 %i.a, %i.ars
  br i1 %or.cond21, label %bb.id, label %sqlite3VdbeChangeP5.exit893

bb.id:                                            ; preds = %sqlite3GetTempRange.exit
  %i.art = load i32, ptr %i.g, align 8, !tbaa !1083
  %i.aru = and i32 %i.art, 128
  %i.arv = icmp eq i32 %i.aru, 0
  br i1 %i.arv, label %bb.ie, label %bb.il

bb.ie:                                            ; preds = %bb.id
  %i.arw = load i32, ptr %i.aag, align 8, !tbaa !703 ; 3 uses
  %i.arx = load i32, ptr %i.aal, align 4, !tbaa !1164
  %.not.i.i887 = icmp sgt i32 %i.arx, %i.arw
  br i1 %.not.i.i887, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.ary = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 144, i32 noundef %i.acg, i32 noundef %i.arr, i32 noundef 0), !inline_history !1196 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit889

bb.ig:                                            ; preds = %bb.ie
  %i.arz = add nsw i32 %i.arw, 1
  store i32 %i.arz, ptr %i.aag, align 8, !tbaa !703
  %i.asa = load ptr, ptr %i.aah, align 8, !tbaa !702
  %i.asb = sext i32 %i.arw to i64
  %i.asc = getelementptr inbounds [32 x i8], ptr %i.asa, i64 %i.asb ; 6 uses
  store i8 -112, ptr %i.asc, align 8, !tbaa !929
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 2
  store i16 0, ptr %i.asd, align 2, !tbaa !930
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asc, i64 4
  store i32 %i.acg, ptr %i.ase, align 4, !tbaa !926
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asc, i64 8
  store i32 %i.arr, ptr %i.asf, align 8, !tbaa !927
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asc, i64 12
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asc, i64 1
  store i8 0, ptr %i.ash, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.asg, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit889

sqlite3VdbeAddOp2.exit889:                        ; preds = %bb.if, %bb.ig
  br i1 %i.a, label %bb.ih, label %sqlite3VdbeChangeP5.exit893

bb.ih:                                            ; preds = %sqlite3VdbeAddOp2.exit889
  %i.asi = load i32, ptr %i.aag, align 8, !tbaa !703 ; 3 uses
  %i.asj = load i32, ptr %i.aal, align 4, !tbaa !1164
  %.not.i890 = icmp sgt i32 %i.asj, %i.asi
  br i1 %.not.i890, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.ask = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 54, i32 noundef %i.arr, i32 noundef %i.acd, i32 noundef %6), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit892

bb.ij:                                            ; preds = %bb.ih
  %i.asl = add nsw i32 %i.asi, 1
  store i32 %i.asl, ptr %i.aag, align 8, !tbaa !703
  %i.asm = load ptr, ptr %i.aah, align 8, !tbaa !702
  %i.asn = sext i32 %i.asi to i64
  %i.aso = getelementptr inbounds [32 x i8], ptr %i.asm, i64 %i.asn ; 7 uses
  store i8 54, ptr %i.aso, align 8, !tbaa !929
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 2
  store i16 0, ptr %i.asp, align 2, !tbaa !930
  %i.asq = getelementptr inbounds nuw i8, ptr %i.aso, i64 4
  store i32 %i.arr, ptr %i.asq, align 4, !tbaa !926
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aso, i64 8
  store i32 %i.acd, ptr %i.asr, align 8, !tbaa !927
  %i.ass = getelementptr inbounds nuw i8, ptr %i.aso, i64 12
  store i32 %6, ptr %i.ass, align 4, !tbaa !928
  %i.ast = getelementptr inbounds nuw i8, ptr %i.aso, i64 16
  %i.asu = getelementptr inbounds nuw i8, ptr %i.aso, i64 1
  store i8 0, ptr %i.asu, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ast, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit892

sqlite3VdbeAddOp3.exit892:                        ; preds = %bb.ii, %bb.ij
  %i.asv = load i32, ptr %i.aag, align 8, !tbaa !703 ; 2 uses
  %i.asw = icmp sgt i32 %i.asv, 0
  br i1 %i.asw, label %bb.ik, label %sqlite3VdbeChangeP5.exit893

bb.ik:                                            ; preds = %sqlite3VdbeAddOp3.exit892
  %i.asx = load ptr, ptr %i.aah, align 8, !tbaa !702
  %i.asy = zext nneg i32 %i.asv to i64
  %i.asz = getelementptr [32 x i8], ptr %i.asx, i64 %i.asy
  %i.ata = getelementptr i8, ptr %i.asz, i64 -30
  store i16 144, ptr %i.ata, align 2, !tbaa !930
  br label %sqlite3VdbeChangeP5.exit893

bb.il:                                            ; preds = %bb.id
  br i1 %i.amf, label %.loopexit, label %.preheader1043

.preheader1043:                                   ; preds = %bb.il
  %i.atb = load i16, ptr %i.abc, align 2, !tbaa !1159
  %.not1132 = icmp eq i16 %i.atb, 0
  br i1 %.not1132, label %.loopexit, label %.lr.ph1101

.lr.ph1101:                                       ; preds = %.preheader1043
  %i.atc = getelementptr inbounds nuw i8, ptr %.36331114, i64 8
  %i.atd = zext i32 %i.arr to i64
  br label %bb.im

bb.im:                                            ; preds = %.lr.ph1101, %sqlite3VdbeAddOp3.exit904
  %indvars.iv1161 = phi i64 [ 0, %.lr.ph1101 ], [ %indvars.iv.next1162, %sqlite3VdbeAddOp3.exit904 ] ; 4 uses
  %i.ate = load ptr, ptr %i.abd, align 8, !tbaa !1160
  %i.atf = getelementptr inbounds nuw [2 x i8], ptr %i.ate, i64 %indvars.iv1161
  %i.atg = load i16, ptr %i.atf, align 2, !tbaa !783
  %i.ath = load i16, ptr %i.adf, align 8, !tbaa !1778 ; 2 uses
  %.not.i894 = icmp eq i16 %i.ath, 0
  br i1 %.not.i894, label %sqlite3TableColumnToIndex.exit, label %.lr.ph.i895

.lr.ph.i895:                                      ; preds = %bb.im
  %i.ati = load ptr, ptr %i.atc, align 8, !tbaa !1160
  %wide.trip.count.i896 = zext i16 %i.ath to i64
  br label %bb.in

bb.in:                                            ; preds = %bb.io, %.lr.ph.i895
  %indvars.iv.i897 = phi i64 [ 0, %.lr.ph.i895 ], [ %indvars.iv.next.i898, %bb.io ] ; 3 uses
  %i.atj = getelementptr inbounds nuw [2 x i8], ptr %i.ati, i64 %indvars.iv.i897
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !783
  %i.atl = icmp eq i16 %i.atg, %i.atk
  br i1 %i.atl, label %._crit_edge.loopexit.split.loop.exit13.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  %indvars.iv.next.i898 = add nuw nsw i64 %indvars.iv.i897, 1 ; 2 uses
  %exitcond.not.i899 = icmp eq i64 %indvars.iv.next.i898, %wide.trip.count.i896
  br i1 %exitcond.not.i899, label %sqlite3TableColumnToIndex.exit, label %bb.in, !llvm.loop !307

._crit_edge.loopexit.split.loop.exit13.i:         ; preds = %bb.in
  %i.atm = trunc nuw nsw i64 %indvars.iv.i897 to i32
  br label %sqlite3TableColumnToIndex.exit

sqlite3TableColumnToIndex.exit:                   ; preds = %bb.io, %bb.im, %._crit_edge.loopexit.split.loop.exit13.i
  %.08.i901 = phi i32 [ -1, %bb.im ], [ %i.atm, %._crit_edge.loopexit.split.loop.exit13.i ], [ -1, %bb.io ] ; 2 uses
  %i.atn = add nuw i64 %indvars.iv1161, %i.atd    ; 2 uses
  %i.ato = load i32, ptr %i.aag, align 8, !tbaa !703 ; 3 uses
  %i.atp = load i32, ptr %i.aal, align 4, !tbaa !1164
  %.not.i902 = icmp sgt i32 %i.atp, %i.ato
  br i1 %.not.i902, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %sqlite3TableColumnToIndex.exit
  %i.atq = trunc i64 %i.atn to i32
  %i.atr = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 96, i32 noundef %i.acg, i32 noundef %.08.i901, i32 noundef %i.atq), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit904

bb.iq:                                            ; preds = %sqlite3TableColumnToIndex.exit
  %i.ats = add nsw i32 %i.ato, 1
  store i32 %i.ats, ptr %i.aag, align 8, !tbaa !703
  %i.att = load ptr, ptr %i.aah, align 8, !tbaa !702
  %i.atu = sext i32 %i.ato to i64
  %i.atv = getelementptr inbounds [32 x i8], ptr %i.att, i64 %i.atu ; 7 uses
  store i8 96, ptr %i.atv, align 8, !tbaa !929
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 2
  store i16 0, ptr %i.atw, align 2, !tbaa !930
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atv, i64 4
  store i32 %i.acg, ptr %i.atx, align 4, !tbaa !926
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atv, i64 8
  store i32 %.08.i901, ptr %i.aty, align 8, !tbaa !927
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atv, i64 12
  %i.aua = trunc i64 %i.atn to i32
  store i32 %i.aua, ptr %i.atz, align 4, !tbaa !928
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atv, i64 16
  %i.auc = getelementptr inbounds nuw i8, ptr %i.atv, i64 1
  store i8 0, ptr %i.auc, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aub, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit904

sqlite3VdbeAddOp3.exit904:                        ; preds = %bb.ip, %bb.iq
  %i.aud = load ptr, ptr %1, align 8, !tbaa !1171
  %i.aue = load ptr, ptr %i.aap, align 8, !tbaa !1149
  %i.auf = load ptr, ptr %i.abd, align 8, !tbaa !1160
  %i.aug = getelementptr inbounds nuw [2 x i8], ptr %i.auf, i64 %indvars.iv1161
  %i.auh = load i16, ptr %i.aug, align 2, !tbaa !783
  %i.aui = sext i16 %i.auh to i64
  %i.auj = getelementptr inbounds [16 x i8], ptr %i.aue, i64 %i.aui
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !1153
  call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.656, ptr noundef %i.aud, ptr noundef %i.auk)
  %indvars.iv.next1162 = add nuw nsw i64 %indvars.iv1161, 1 ; 2 uses
  %i.aul = load i16, ptr %i.abc, align 2, !tbaa !1159
  %i.aum = zext i16 %i.aul to i64
  %i.aun = icmp samesign ult i64 %indvars.iv.next1162, %i.aum
  br i1 %i.aun, label %bb.im, label %.loopexit, !llvm.loop !5564

.loopexit:                                        ; preds = %sqlite3VdbeAddOp3.exit904, %.preheader1043, %bb.il
  br i1 %i.a, label %bb.ir, label %sqlite3VdbeChangeP5.exit893

bb.ir:                                            ; preds = %.loopexit
  %i.auo = load i16, ptr %i.abc, align 2, !tbaa !1159 ; 2 uses
  %.not1133 = icmp eq i16 %i.auo, 0
  br i1 %.not1133, label %sqlite3VdbeChangeP5.exit893, label %.lr.ph1106.preheader

end_hunk_7
begin_hunk_8_@simpleOpen:bb.a
  store ptr %i.b, ptr %3, align 8, !tbaa !2595
  br label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit.thread:                       ; preds = %bb.a, %sqlite3_malloc.exit, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 7, %sqlite3_malloc.exit ], [ 7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @simpleClose(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2690 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.f(ptr noundef nonnull %i.e) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.h = tail call i32 %i.g(ptr noundef nonnull %i.b) #58, !inline_history !13
  %i.i = sext i32 %i.h to i64
  %i.j = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.k = sub nsw i64 %i.j, %i.i
  store i64 %i.k, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.m = add nsw i64 %i.l, -1
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.n(ptr noundef nonnull %i.b) #58, !inline_history !749
  %i.o = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.o, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.p(ptr noundef nonnull %i.o) #58, !inline_history !750
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.q(ptr noundef nonnull %i.b) #58, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.f, %bb.e, %sqlite3_mutex_enter.exit.i, %bb.a
  %i.r = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i3 = icmp eq i32 %i.r, 0
  br i1 %.not.i3, label %bb.j, label %bb.g

bb.g:                                             ; preds = %sqlite3_free.exit
  %i.s = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.s, null
  br i1 %.not.i.i4, label %sqlite3_mutex_enter.exit.i5, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.t(ptr noundef nonnull %i.s) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i5

sqlite3_mutex_enter.exit.i5:                      ; preds = %bb.h, %bb.g
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.v = tail call i32 %i.u(ptr noundef nonnull %0) #58, !inline_history !13
  %i.w = sext i32 %i.v to i64
  %i.x = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.y = sub nsw i64 %i.x, %i.w
  store i64 %i.y, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.aa = add nsw i64 %i.z, -1
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ab(ptr noundef nonnull %0) #58, !inline_history !749
  %i.ac = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i4.i6, label %sqlite3_free.exit7, label %bb.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit.i5
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ad(ptr noundef nonnull %i.ac) #58, !inline_history !750
  br label %sqlite3_free.exit7

bb.j:                                             ; preds = %sqlite3_free.exit
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ae(ptr noundef nonnull %0) #58, !inline_history !749
  br label %sqlite3_free.exit7

sqlite3_free.exit7:                               ; preds = %sqlite3_mutex_enter.exit.i5, %bb.i, %bb.j
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 102) i32 @simpleNext(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2692
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2686 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.e, align 8, !tbaa !2687 ; 6 uses
  %.promoted = load i32, ptr %i.d, align 4, !tbaa !2688 ; 2 uses
  %i.k = icmp slt i32 %.promoted, %i.j
  br i1 %i.k, label %.lr.ph.preheader, label %.thread82

.lr.ph.preheader:                                 ; preds = %bb.a, %.critedge3.thread
  %i.l = phi i32 [ %i.bs, %.critedge3.thread ], [ %.promoted, %bb.a ] ; 3 uses
  %i.m = sext i32 %i.l to i64                     ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !733   ; 2 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %simpleDelim.exit, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next
  %i.r = load i8, ptr %i.q, align 1, !tbaa !733   ; 2 uses
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %simpleDelim.exit, label %.critedge, !llvm.loop !5880

simpleDelim.exit:                                 ; preds = %.lr.ph.preheader, %.lr.ph
  %i.t = phi i8 [ %i.r, %.lr.ph ], [ %i.o, %.lr.ph.preheader ]
  %indvars.iv140 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %i.u = phi i32 [ %i.y, %.lr.ph ], [ %i.l, %.lr.ph.preheader ]
  %i.v = zext nneg i8 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !733
  %.not84 = icmp eq i8 %i.x, 0
  br i1 %.not84, label %.critedge, label %bb.b

bb.b:                                             ; preds = %simpleDelim.exit
  %indvars.iv.next = add nsw i64 %indvars.iv140, 1 ; 4 uses
  %i.y = trunc i64 %indvars.iv.next to i32        ; 5 uses
  store i32 %i.y, ptr %i.d, align 4, !tbaa !2688
  %exitcond.not = icmp eq i32 %i.j, %i.y
  br i1 %exitcond.not, label %.critedge3.thread, label %.lr.ph, !llvm.loop !5880

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
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !733 ; 2 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %simpleDelim.exit74, label %simpleDelim.exit74.thread

simpleDelim.exit74:                               ; preds = %.lr.ph90
  %i.ag = zext nneg i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !733
  %.not = icmp eq i8 %i.ai, 0
  br i1 %.not, label %simpleDelim.exit74.thread, label %.critedge3.loopexit.split.loop.exit125

simpleDelim.exit74.thread:                        ; preds = %.lr.ph90, %simpleDelim.exit74
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.aj = trunc i64 %indvars.iv.next97 to i32     ; 4 uses
  store i32 %i.aj, ptr %i.d, align 4, !tbaa !2688
  %exitcond100.not = icmp eq i32 %i.j, %i.aj
  br i1 %exitcond100.not, label %.critedge3, label %.lr.ph90, !llvm.loop !5881

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
  %i.an = load i32, ptr %i.g, align 8, !tbaa !2691
  %i.ao = icmp sgt i32 %i.am, %i.an
  br i1 %i.ao, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ap = add nsw i32 %i.am, 20                   ; 2 uses
  store i32 %i.ap, ptr %i.g, align 8, !tbaa !2691
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !2690
  %i.ar = tail call i32 @sqlite3_initialize(), !inline_history !1233
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %sqlite3_realloc64.exit, label %.thread82

sqlite3_realloc64.exit:                           ; preds = %bb.d
  %i.as = sext i32 %i.ap to i64
  %i.at = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.aq, i64 noundef %i.as), !inline_history !1233 ; 2 uses
  %.not72.not = icmp eq ptr %i.at, null
  br i1 %.not72.not, label %.thread82, label %bb.e

bb.e:                                             ; preds = %sqlite3_realloc64.exit
  store ptr %i.at, ptr %i.h, align 8, !tbaa !2690
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
  %i.aw = load i8, ptr %gep, align 1, !tbaa !733  ; 3 uses
  %i.ax = add i8 %i.aw, -65
  %or.cond = icmp ult i8 %i.ax, 26
  %i.ay = add i8 %i.aw, 32
  %i.az = select i1 %or.cond, i8 %i.ay, i8 %i.aw
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !2690
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv101
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !733
  %indvars.iv.next102 = or disjoint i64 %indvars.iv101, 1 ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next102
  %i.bc = load i8, ptr %gep.1, align 1, !tbaa !733 ; 3 uses
  %i.bd = add i8 %i.bc, -65
  %or.cond.1 = icmp ult i8 %i.bd, 26
  %i.be = add i8 %i.bc, 32
  %i.bf = select i1 %or.cond.1, i8 %i.be, i8 %i.bc
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !2690
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next102
  store i8 %i.bf, ptr %i.bh, align 1, !tbaa !733
  %indvars.iv.next102.1 = add nuw nsw i64 %indvars.iv101, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.loopexit.unr-lcssa, label %.lr.ph94, !llvm.loop !5882

.thread.loopexit.unr-lcssa:                       ; preds = %.lr.ph94
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread, label %.lr.ph94.epil.preheader

.lr.ph94.epil.preheader:                          ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph94.preheader
  %indvars.iv101.epil.init = phi i64 [ 0, %.lr.ph94.preheader ], [ %indvars.iv.next102.1, %.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod150 = trunc i32 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv101.epil.init
  %i.bi = load i8, ptr %gep.epil, align 1, !tbaa !733 ; 3 uses
  %i.bj = add i8 %i.bi, -65
  %or.cond.epil = icmp ult i8 %i.bj, 26
  %i.bk = add i8 %i.bi, 32
  %i.bl = select i1 %or.cond.epil, i8 %i.bk, i8 %i.bi
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !2690
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv101.epil.init
  store i8 %i.bl, ptr %i.bn, align 1, !tbaa !733
  br label %.thread

.thread:                                          ; preds = %.lr.ph94.epil.preheader, %.thread.loopexit.unr-lcssa, %bb.f
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !2690
  store ptr %i.bo, ptr %1, align 8, !tbaa !741
  store i32 %i.am, ptr %2, align 4, !tbaa !570
  store i32 %i.z, ptr %3, align 4, !tbaa !570
  %i.bp = load i32, ptr %i.d, align 4, !tbaa !2688
  store i32 %i.bp, ptr %4, align 4, !tbaa !570
  %i.bq = load i32, ptr %i.i, align 8, !tbaa !2689 ; 2 uses
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.i, align 8, !tbaa !2689
  store i32 %i.bq, ptr %5, align 4, !tbaa !570
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
  %i.a = tail call i32 @sqlite3_initialize(), !inline_history !785
  %.not.i.not = icmp eq i32 %i.a, 0
  br i1 %.not.i.not, label %sqlite3_malloc.exit, label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit:                              ; preds = %bb.a
  %i.b = tail call fastcc ptr @sqlite3Malloc(i64 noundef 8), !inline_history !785 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3_malloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %sqlite3_malloc.exit
  store i64 0, ptr %i.b, align 8
  store ptr %i.b, ptr %2, align 8, !tbaa !2588
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
  %i.b = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.d(ptr noundef nonnull %i.c) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #58, !inline_history !13
  %i.g = sext i32 %i.f to i64
  %i.h = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.i = sub nsw i64 %i.h, %i.g
  store i64 %i.i, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.k = add nsw i64 %i.j, -1
  store i64 %i.k, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.l(ptr noundef nonnull %0) #58, !inline_history !749
  %i.m = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.m, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.n(ptr noundef nonnull %i.m) #58, !inline_history !750
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.o(ptr noundef nonnull %0) #58, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.a, %sqlite3_mutex_enter.exit.i, %bb.e, %bb.f
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @porterOpen(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @sqlite3_initialize(), !inline_history !785
  %.not.i.not = icmp eq i32 %i.a, 0
  br i1 %.not.i.not, label %sqlite3_malloc.exit, label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit:                              ; preds = %bb.a
  %i.b = tail call fastcc ptr @sqlite3Malloc(i64 noundef 48), !inline_history !785 ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3_malloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %sqlite3_malloc.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !2694
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #59
  %i.h = trunc i64 %i.g to i32
  br label %bb.e

end_hunk_8
begin_hunk_9_@porterClose:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.f(ptr noundef nonnull %i.e) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.h = tail call i32 %i.g(ptr noundef nonnull %i.b) #58, !inline_history !13
  %i.i = sext i32 %i.h to i64
  %i.j = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.k = sub nsw i64 %i.j, %i.i
  store i64 %i.k, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.m = add nsw i64 %i.l, -1
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.n(ptr noundef nonnull %i.b) #58, !inline_history !749
  %i.o = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.o, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.p(ptr noundef nonnull %i.o) #58, !inline_history !750
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.q(ptr noundef nonnull %i.b) #58, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.f, %bb.e, %sqlite3_mutex_enter.exit.i, %bb.a
  %i.r = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i3 = icmp eq i32 %i.r, 0
  br i1 %.not.i3, label %bb.j, label %bb.g

bb.g:                                             ; preds = %sqlite3_free.exit
  %i.s = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.s, null
  br i1 %.not.i.i4, label %sqlite3_mutex_enter.exit.i5, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.t(ptr noundef nonnull %i.s) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i5

sqlite3_mutex_enter.exit.i5:                      ; preds = %bb.h, %bb.g
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.v = tail call i32 %i.u(ptr noundef nonnull %0) #58, !inline_history !13
  %i.w = sext i32 %i.v to i64
  %i.x = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.y = sub nsw i64 %i.x, %i.w
  store i64 %i.y, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.aa = add nsw i64 %i.z, -1
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ab(ptr noundef nonnull %0) #58, !inline_history !749
  %i.ac = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i4.i6, label %sqlite3_free.exit7, label %bb.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit.i5
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ad(ptr noundef nonnull %i.ac) #58, !inline_history !750
  br label %sqlite3_free.exit7

bb.j:                                             ; preds = %sqlite3_free.exit
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ae(ptr noundef nonnull %0) #58, !inline_history !749
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2694 ; 5 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.f, align 4, !tbaa !2696 ; 2 uses
  %i.m = load i32, ptr %i.g, align 8, !tbaa !2695 ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.preheader, label %.thread449

.lr.ph.preheader:                                 ; preds = %bb.a, %.backedge
  %i.o = phi i32 [ %i.asv, %.backedge ], [ %i.m, %bb.a ] ; 4 uses
  %i.p = phi i32 [ %i.asu, %.backedge ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !733   ; 2 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %.lr.ph953, label %.critedge

.lr.ph:                                           ; preds = %.critedge3
  %i.u = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.next
  %i.v = load i8, ptr %i.u, align 1, !tbaa !733   ; 2 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %.lr.ph953, label %.critedge, !llvm.loop !5883

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
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !733
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %.critedge3, label %.critedge

.critedge3:                                       ; preds = %.lr.ph953, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv952, 1 ; 4 uses
  %i.ad = trunc i64 %indvars.iv.next to i32       ; 4 uses
  store i32 %i.ad, ptr %i.f, align 4, !tbaa !2696
  %exitcond.not = icmp eq i32 %i.o, %i.ad
  br i1 %exitcond.not, label %.backedge, label %.lr.ph, !llvm.loop !5883

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
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !733 ; 3 uses
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.c, label %.critedge67

bb.c:                                             ; preds = %.lr.ph559
  %i.ak = icmp samesign ult i8 %i.ai, 48
  br i1 %i.ak, label %.critedge5.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = zext nneg i8 %i.ai to i64
  %i.am = getelementptr i8, ptr @porterIdChar, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -48
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !733
  %.not63.not = icmp eq i8 %i.ao, 0
  br i1 %.not63.not, label %.critedge5.loopexit.split.loop.exit890, label %.critedge67

.critedge67:                                      ; preds = %.lr.ph559, %bb.d
  %indvars.iv.next654 = add nsw i64 %indvars.iv653, 1 ; 2 uses
  %i.ap = trunc i64 %indvars.iv.next654 to i32    ; 2 uses
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !2696
  %exitcond657.not = icmp eq i32 %i.o, %i.ap
  br i1 %exitcond657.not, label %.critedge5, label %.lr.ph559, !llvm.loop !5884

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
  %i.at = load i32, ptr %i.h, align 8, !tbaa !2699
  %i.au = icmp sgt i32 %i.as, %i.at
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !2698 ; 2 uses
  br i1 %i.au, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.av = add nsw i32 %i.as, 20                   ; 2 uses
  store i32 %i.av, ptr %i.h, align 8, !tbaa !2699
  %i.aw = tail call i32 @sqlite3_initialize(), !inline_history !1233
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %sqlite3_realloc64.exit, label %.thread449

sqlite3_realloc64.exit:                           ; preds = %bb.f
  %i.ax = sext i32 %i.av to i64
  %i.ay = tail call fastcc ptr @sqlite3Realloc(ptr noundef %.pre, i64 noundef %i.ax), !inline_history !1233 ; 3 uses
  %.not64.not = icmp eq ptr %i.ay, null
  br i1 %.not64.not, label %.thread449, label %bb.g

bb.g:                                             ; preds = %sqlite3_realloc64.exit
  store ptr %i.ay, ptr %i.i, align 8, !tbaa !2698
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.az = phi ptr [ %i.ay, %bb.g ], [ %.pre, %bb.e ] ; 24 uses
  %i.ba = ptrtoaddr ptr %i.az to i64              ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.lcssa ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.bc = add i32 %i.as, -21
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
  %wide.load992 = load <4 x i8>, ptr %i.bf, align 1, !tbaa !733 ; 4 uses
  %wide.load993 = load <4 x i8>, ptr %i.bg, align 1, !tbaa !733 ; 4 uses
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
  store <4 x i8> %i.bn, ptr %i.bv, align 1, !tbaa !733
  store <4 x i8> %i.bo, ptr %i.bw, align 1, !tbaa !733
  %index.next994 = add nuw i64 %index989, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next994, %n.vec987
  br i1 %i.bx, label %middle.block995, label %vector.body988, !llvm.loop !5885

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
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !733 ; 4 uses
  %i.cb = add i8 %i.ca, -65
  %or.cond.i.i.prol = icmp ult i8 %i.cb, 26
  %i.cc = or disjoint i8 %i.ca, 32
  %.sink.i.i.prol = select i1 %or.cond.i.i.prol, i8 %i.cc, i8 %i.ca
  %i.cd = add i8 %i.ca, -58
  %i.ce = icmp ult i8 %i.cd, -10
  %.2.i.i.prol = select i1 %i.ce, i32 %.045.i.i.ph, i32 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i.ph
  store i8 %.sink.i.i.prol, ptr %i.cf, align 1, !tbaa !733
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
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !733 ; 4 uses
  %i.ck = add i8 %i.cj, -65
  %or.cond.i.i = icmp ult i8 %i.ck, 26
  %i.cl = or disjoint i8 %i.cj, 32
  %.sink.i.i = select i1 %or.cond.i.i, i8 %i.cl, i8 %i.cj
  %i.cm = add i8 %i.cj, -58
  %i.cn = icmp ult i8 %i.cm, -10
  %i.co = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i
  store i8 %.sink.i.i, ptr %i.co, align 1, !tbaa !733
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !733 ; 4 uses
  %i.cr = add i8 %i.cq, -65
  %or.cond.i.i.1 = icmp ult i8 %i.cr, 26
  %i.cs = or disjoint i8 %i.cq, 32
  %.sink.i.i.1 = select i1 %or.cond.i.i.1, i8 %i.cs, i8 %i.cq
  %i.ct = add i8 %i.cq, -58
  %i.cu = icmp ult i8 %i.ct, -10
  %i.cv = select i1 %i.cu, i1 %i.cn, i1 false
  %.2.i.i.1 = select i1 %i.cv, i32 %.045.i.i, i32 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next.i.i
  store i8 %.sink.i.i.1, ptr %i.cw, align 1, !tbaa !733
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !5886

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
  %wide.load1012 = load <16 x i8>, ptr %gep1147, align 1, !tbaa !733
  %wide.load1013 = load <16 x i8>, ptr %i.dk, align 1, !tbaa !733
  %gep1149 = getelementptr i8, ptr %invariant.gep1148, i64 %index1011 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %gep1149, i64 16
  store <16 x i8> %wide.load1012, ptr %gep1149, align 1, !tbaa !733
  store <16 x i8> %wide.load1013, ptr %i.dl, align 1, !tbaa !733
  %index.next1014 = add nuw i64 %index1011, 32    ; 2 uses
  %i.dm = icmp eq i64 %index.next1014, %n.vec1009
  br i1 %i.dm, label %middle.block1015, label %vector.body1010, !llvm.loop !5887

middle.block1015:                                 ; preds = %vector.body1010
  %cmp.n1016 = icmp eq i64 %i.df, %n.vec1009
  br i1 %cmp.n1016, label %.loopexit.loopexit.i.i, label %vec.epilog.iter.check1022

vec.epilog.iter.check1022:                        ; preds = %middle.block1015
  %min.epilog.iters.check1023 = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check1023, label %.lr.ph50.i.i.preheader, label %vec.epilog.ph1024, !prof !1824

vec.epilog.ph1024:                                ; preds = %vector.main.loop.iter.check1006, %vec.epilog.iter.check1022
  %vec.epilog.resume.val1017 = phi i64 [ %n.vec1009, %vec.epilog.iter.check1022 ], [ 0, %vector.main.loop.iter.check1006 ]
  %n.vec1025 = and i64 %i.df, -8                  ; 4 uses
  %i.dn = add nsw i64 %n.vec1025, %i.dd
  %i.do = add nsw i64 %n.vec1025, %i.dc           ; 2 uses
  %invariant.gep1150 = getelementptr i8, ptr %i.az, i64 %i.dd
  %invariant.gep1152 = getelementptr i8, ptr %i.az, i64 %i.dc
  br label %vec.epilog.vector.body1026

vec.epilog.vector.body1026:                       ; preds = %vec.epilog.vector.body1026, %vec.epilog.ph1024
  %index1027 = phi i64 [ %vec.epilog.resume.val1017, %vec.epilog.ph1024 ], [ %index.next1029, %vec.epilog.vector.body1026 ] ; 3 uses
  %gep1151 = getelementptr i8, ptr %invariant.gep1150, i64 %index1027
  %wide.load1028 = load <8 x i8>, ptr %gep1151, align 1, !tbaa !733
  %gep1153 = getelementptr i8, ptr %invariant.gep1152, i64 %index1027
  store <8 x i8> %wide.load1028, ptr %gep1153, align 1, !tbaa !733
  %index.next1029 = add nuw i64 %index1027, 8     ; 2 uses
  %i.dp = icmp eq i64 %index.next1029, %n.vec1025
  br i1 %i.dp, label %vec.epilog.middle.block1030, label %vec.epilog.vector.body1026, !llvm.loop !5888

vec.epilog.middle.block1030:                      ; preds = %vec.epilog.vector.body1026
  %cmp.n1031 = icmp eq i64 %i.df, %n.vec1025
  br i1 %cmp.n1031, label %.loopexit.loopexit.i.i, label %.lr.ph50.i.i.preheader

.lr.ph50.i.i.preheader:                           ; preds = %iter.check1020, %vec.epilog.iter.check1022, %vec.epilog.middle.block1030
  %indvars.iv57.i.i.ph = phi i64 [ %i.dd, %iter.check1020 ], [ %i.di, %vec.epilog.iter.check1022 ], [ %i.dn, %vec.epilog.middle.block1030 ]
  %indvars.iv55.i.i.ph = phi i64 [ %i.dc, %iter.check1020 ], [ %i.dj, %vec.epilog.iter.check1022 ], [ %i.do, %vec.epilog.middle.block1030 ]
  br label %.lr.ph50.i.i
end_hunk_9
begin_hunk_10_@fts3EvalNextRow:bb.a
.lr.ph.i.i.i139.i.i:                              ; preds = %.lr.ph.i.i.i139.i.i, %.lr.ph.preheader.i.i.i138.i.i
  %i.mr = phi i32 [ %i.mu, %.lr.ph.i.i.i139.i.i ], [ %i.mq, %.lr.ph.preheader.i.i.i138.i.i ]
  %.022.i.i.i140.i.i = phi ptr [ %i.ms, %.lr.ph.i.i.i139.i.i ], [ %i.mk, %.lr.ph.preheader.i.i.i138.i.i ]
  %i.ms = getelementptr inbounds nuw i8, ptr %.022.i.i.i140.i.i, i64 1 ; 3 uses
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !733
  %i.mu = sext i8 %i.mt to i32                    ; 2 uses
  %i.mv = and i32 %i.mr, -128
  %i.mw = or i32 %i.mv, %i.mu
  %.not.i.i.i141.i.i = icmp eq i32 %i.mw, 0
  br i1 %.not.i.i.i141.i.i, label %fts3PoslistCopy.exit.i.i142.i.i, label %.lr.ph.i.i.i139.i.i, !llvm.loop !491

fts3PoslistCopy.exit.i.i142.i.i:                  ; preds = %.lr.ph.i.i.i139.i.i, %sqlite3Fts3GetVarintU.exit.i.i
  %.0.lcssa.i.i.i143.i.i = phi ptr [ %i.mk, %sqlite3Fts3GetVarintU.exit.i.i ], [ %i.ms, %.lr.ph.i.i.i139.i.i ] ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i143.i.i, i64 1 ; 4 uses
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = ptrtoint ptr %i.mk to i64
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = trunc i64 %i.na to i32
  store i32 %i.nb, ptr %i.fl, align 8, !tbaa !2788
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
  %i.nf = load i8, ptr %.028.i.i150.i.i, align 1, !tbaa !733
  %i.ng = icmp eq i8 %i.nf, 0
  br i1 %i.ng, label %bb.bz, label %.critedge.i.i144.i.i

bb.bz:                                            ; preds = %.lr.ph.i.i149.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %.028.i.i150.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i151.i.i = icmp eq ptr %i.nh, %scevgep.i.i148.i.i
  br i1 %exitcond.not.i.i151.i.i, label %.critedge.i.i144.i.i, label %.lr.ph.i.i149.i.i, !llvm.loop !6134

.critedge.i.i144.i.i:                             ; preds = %bb.bz, %.lr.ph.i.i149.i.i, %fts3PoslistCopy.exit.i.i142.i.i
  %.0.lcssa.i.i145.i.i = phi ptr [ %i.mx, %fts3PoslistCopy.exit.i.i142.i.i ], [ %scevgep.i.i148.i.i, %bb.bz ], [ %.028.i.i150.i.i, %.lr.ph.i.i149.i.i ]
  store ptr %.0.lcssa.i.i145.i.i, ptr %i.ga, align 8, !tbaa !6145
  br label %fts3EvalDlPhraseNext.exit.i136.i.i

fts3EvalDlPhraseNext.exit.i136.i.i:               ; preds = %.critedge.i.i144.i.i, %.thread.i.i133.i.i, %bb.bj
  %.8.i.i = phi i8 [ 0, %.critedge.i.i144.i.i ], [ 1, %.thread.i.i133.i.i ], [ 1, %bb.bj ]
  %i.ni = load ptr, ptr %i.fk, align 8, !tbaa !2785
  %i.nj = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store ptr %i.ni, ptr %i.nj, align 16, !tbaa !6147
  %i.nk = load i32, ptr %i.fl, align 8, !tbaa !2788
  %i.nl = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  store i32 %i.nk, ptr %i.nl, align 8, !tbaa !6148
  %i.nm = load i64, ptr %i.gd, align 8, !tbaa !2809 ; 2 uses
  store i64 %i.nm, ptr %i.jc, align 8, !tbaa !6149
  br label %incrPhraseTokenNext.exit152.i.i

bb.ca:                                            ; preds = %bb.bh
  %i.nn = getelementptr [40 x i8], ptr %i.eq, i64 %i.iy
  %i.no = getelementptr i8, ptr %i.nn, i64 120
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !2786 ; 2 uses
  %.not.i129.i.i = icmp eq ptr %i.np, null
  br i1 %.not.i129.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nq = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.ns = call fastcc i32 @sqlite3Fts3MsrIncrNext(ptr noundef readonly %i.fm, ptr noundef nonnull %i.np, ptr noundef nonnull %i.jc, ptr noundef nonnull %i.nq, ptr noundef nonnull %i.nr), !inline_history !6133
  %i.nt = load ptr, ptr %i.nq, align 16, !tbaa !6147
  %i.nu = icmp eq ptr %i.nt, null
  %spec.select187.i.i = zext i1 %i.nu to i8
  %.pre271.i.i = load i64, ptr %i.jc, align 8, !tbaa !6149
  br label %incrPhraseTokenNext.exit152.i.i

bb.cc:                                            ; preds = %bb.ca
  store i32 1, ptr %i.iz, align 16, !tbaa !6150
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
  br i1 %or.cond.i.i, label %.lr.ph222.i.i, label %.critedge5.loopexit.i.i, !llvm.loop !6136

.critedge5.loopexit.i.i:                          ; preds = %incrPhraseTokenNext.exit152.i.i, %bb.bg, %.lr.ph222.i.i
  %.3164.lcssa.ph.i.i = phi i8 [ 0, %.lr.ph222.i.i ], [ %.9.i.i, %incrPhraseTokenNext.exit152.i.i ], [ 0, %bb.bg ]
  %.3108.lcssa.ph.i.i = phi i32 [ 0, %.lr.ph222.i.i ], [ %.1.i130.i.i, %incrPhraseTokenNext.exit152.i.i ], [ 0, %bb.bg ]
  %.3101.lcssa.ph.i.i = phi i64 [ %.3101220.i.i, %.lr.ph222.i.i ], [ %spec.select188.i.i, %incrPhraseTokenNext.exit152.i.i ], [ %.3101220.i.i, %bb.bg ]
  %.296.lcssa.ph.i.i = phi i32 [ %.296221.i.i, %.lr.ph222.i.i ], [ %spec.select189.i.i, %incrPhraseTokenNext.exit152.i.i ], [ %.296221.i.i, %bb.bg ]
  %.pre272.i.i = load i32, ptr %i.fp, align 8, !tbaa !570
  br label %.critedge5.i.i

.critedge5.i.i:                                   ; preds = %.critedge5.loopexit.i.i, %.preheader.i.i
  %i.ob = phi i32 [ %i.iv, %.preheader.i.i ], [ %.pre272.i.i, %.critedge5.loopexit.i.i ] ; 3 uses
  %.3164.lcssa.i.i = phi i8 [ %.2163237.i.i, %.preheader.i.i ], [ %.3164.lcssa.ph.i.i, %.critedge5.loopexit.i.i ] ; 2 uses
  %.3108.lcssa.i.i = phi i32 [ %.2107238.i.i, %.preheader.i.i ], [ %.3108.lcssa.ph.i.i, %.critedge5.loopexit.i.i ] ; 2 uses
  %.3101.lcssa.i.i = phi i64 [ %.2100239.i.i, %.preheader.i.i ], [ %.3101.lcssa.ph.i.i, %.critedge5.loopexit.i.i ] ; 2 uses
  %.296.lcssa.i.i = phi i32 [ %.195240.i.i, %.preheader.i.i ], [ %.296.lcssa.ph.i.i, %.critedge5.loopexit.i.i ]
  %i.oc = add nsw i32 %.296.lcssa.i.i, 1          ; 2 uses
  %i.od = icmp slt i32 %i.oc, %i.ob
  br i1 %i.od, label %.preheader.i.i, label %._crit_edge.i.i, !llvm.loop !6137

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
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !6148 ; 2 uses
  %i.oi = sext i32 %i.oh to i64                   ; 2 uses
  %i.oj = tail call i32 @sqlite3_initialize(), !inline_history !6138
  %.not.i153.i.i = icmp eq i32 %i.oj, 0
  br i1 %.not.i153.i.i, label %sqlite3_malloc64.exit.i.i, label %sqlite3_malloc64.exit.thread.i.i

sqlite3_malloc64.exit.i.i:                        ; preds = %bb.cd
  %i.ok = add nsw i64 %i.oi, 8
  %i.ol = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.ok), !inline_history !6138 ; 10 uses
  %.not.i.i189 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i189, label %sqlite3_malloc64.exit.thread.i.i, label %bb.ce

bb.ce:                                            ; preds = %sqlite3_malloc64.exit.i.i
  %i.om = load i32, ptr %i.fp, align 8, !tbaa !570
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr [32 x i8], ptr %3, i64 %i.on
  %i.op = getelementptr i8, ptr %i.oo, i64 -16
  %i.oq = load ptr, ptr %i.op, align 16, !tbaa !6147
  %i.or = add nsw i32 %i.oh, 1
  %i.os = sext i32 %i.or to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ol, ptr align 1 %i.oq, i64 %i.os, i1 false)
  %i.ot = getelementptr inbounds i8, ptr %i.ol, i64 %i.oi
  store i64 0, ptr %i.ot, align 1
  %i.ou = load i32, ptr %i.fp, align 8, !tbaa !570 ; 3 uses
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
  %i.oz = load i32, ptr %i.oy, align 16, !tbaa !6150
  %i.pa = icmp eq i32 %i.oz, 0
  br i1 %i.pa, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pc = load ptr, ptr %i.pb, align 16, !tbaa !6147
  store ptr %i.pc, ptr %i.c, align 8, !tbaa !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  store ptr %i.ol, ptr %i.d, align 8, !tbaa !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  store ptr %i.ol, ptr %i.e, align 8, !tbaa !741
  %i.pd = trunc nuw nsw i64 %indvars.iv267.i.i to i32 ; 2 uses
  %i.pe = xor i32 %i.pd, -1
  %i.pf = add i32 %i.ox, %i.pe
  %i.pg = call fastcc i32 @fts3PoslistPhraseMerge(ptr noundef %i.e, i32 noundef %i.pf, i32 noundef 0, i32 noundef 1, ptr noundef %i.c, ptr noundef %i.d), !inline_history !6132
  %i.ph = icmp eq i32 %i.pg, 0
  %i.pi = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  %.pre275.pre.i.i = load i32, ptr %i.fp, align 8, !tbaa !570 ; 2 uses
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
  br i1 %i.pp, label %bb.cf, label %._crit_edge249.loopexit.split.loop.exit317.i.i, !llvm.loop !6139

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
  %i.pt = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i154.i.i = icmp eq i32 %i.pt, 0
  br i1 %.not.i154.i.i, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.pu = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i155.i.i = icmp eq ptr %i.pu, null
  br i1 %.not.i.i155.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.pv(ptr noundef nonnull %i.pu) #58, !inline_history !6140
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.ck, %bb.cj
  %i.pw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.px = tail call i32 %i.pw(ptr noundef nonnull %i.ol) #58, !inline_history !6141
  %i.py = sext i32 %i.px to i64
  %i.pz = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.qa = sub nsw i64 %i.pz, %i.py
  store i64 %i.qa, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.qb = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.qc = add nsw i64 %i.qb, -1
  store i64 %i.qc, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.qd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.qd(ptr noundef nonnull %i.ol) #58, !inline_history !6142
  %i.qe = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.qe, null
  br i1 %.not.i4.i.i.i, label %.preheader194.i.i.backedge, label %bb.cl

bb.cl:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.qf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.qf(ptr noundef nonnull %i.qe) #58, !inline_history !6143
  br label %.preheader194.i.i.backedge

bb.cm:                                            ; preds = %bb.ci
  %i.qg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.qg(ptr noundef nonnull %i.ol) #58, !inline_history !6142
  br label %.preheader194.i.i.backedge

.preheader194.i.i.backedge:                       ; preds = %bb.cm, %bb.cl, %sqlite3_mutex_enter.exit.i.i.i
  br label %.preheader194.i.i

bb.cn:                                            ; preds = %._crit_edge249.i.i
  store i64 %.2100.lcssa.i.i, ptr %i.gd, align 8, !tbaa !2809
  store ptr %i.ol, ptr %i.fk, align 8, !tbaa !2785
  store i32 %.090.lcssa.i.i, ptr %i.fl, align 8, !tbaa !2788
  store i32 1, ptr %i.er, align 8, !tbaa !2784
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %._crit_edge.i.i, %bb.cn
  %.2163.lcssa266.i.i = phi i8 [ 0, %bb.cn ], [ 1, %._crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.co

sqlite3_malloc64.exit.thread.i.i:                 ; preds = %sqlite3_malloc64.exit.i.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %fts3EvalPhraseNext.exit

bb.co:                                            ; preds = %.thread.i.i, %bb.ar
  %.5166.i.i = phi i8 [ %.2163.lcssa266.i.i, %.thread.i.i ], [ %spec.select.i.i, %bb.ar ]
  %.6.i.i = phi i32 [ %.2107.lcssa.i.i, %.thread.i.i ], [ %i.fv, %bb.ar ]
  store i8 %.5166.i.i, ptr %i.h, align 8, !tbaa !733
  br label %fts3EvalPhraseNext.exit

bb.cp:                                            ; preds = %fts3EvalInvalidatePoslist.exit
  %i.qh = load i8, ptr %i.k, align 4, !tbaa !2714
  %i.qi = getelementptr inbounds nuw i8, ptr %i.fm, i64 463 ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !2672 ; 2 uses
  %i.qk = zext i8 %i.qj to i32
  %.not23.i = icmp eq i8 %i.qh, %i.qj
  br i1 %.not23.i, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ql = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !2800 ; 2 uses
  %.not24.i = icmp eq i32 %i.qm, 0
  br i1 %.not24.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qn = load ptr, ptr %i.eq, align 8, !tbaa !2783
  %i.qo = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  tail call fastcc void @sqlite3Fts3DoclistPrev(i32 noundef %i.qk, ptr noundef %i.qn, i32 noundef %i.qm, ptr noundef nonnull %i.qo, ptr noundef nonnull %i.qp, ptr noundef nonnull %i.fl, ptr noundef nonnull %i.h), !inline_history !6144
  %i.qq = load ptr, ptr %i.qo, align 8, !tbaa !6145
  store ptr %i.qq, ptr %i.fk, align 8, !tbaa !2785
  br label %fts3EvalPhraseNext.exit

bb.cs:                                            ; preds = %bb.cq, %bb.cp
  %i.qr = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 3 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !6145 ; 2 uses
  %.not.i25.i = icmp eq ptr %i.qs, null
  %.pre.i26.i = load ptr, ptr %i.eq, align 8, !tbaa !2783 ; 4 uses
  br i1 %.not.i25.i, label %bb.ct, label %.thread.i27.i

bb.ct:                                            ; preds = %bb.cs
  %i.qt = icmp eq ptr %.pre.i26.i, null
  br i1 %i.qt, label %bb.cu, label %.thread.i27.i

.thread.i27.i:                                    ; preds = %bb.ct, %bb.cs
  %storemerge27.i.i = phi ptr [ %.pre.i26.i, %bb.ct ], [ %i.qs, %bb.cs ] ; 3 uses
  %i.qu = ptrtoaddr ptr %.pre.i26.i to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !2800
  %i.qx = sext i32 %i.qw to i64                   ; 2 uses
  %i.qy = getelementptr inbounds i8, ptr %.pre.i26.i, i64 %i.qx ; 2 uses
  %.not19.i.i = icmp ult ptr %storemerge27.i.i, %i.qy
  br i1 %.not19.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %.thread.i27.i, %bb.ct
  store i8 1, ptr %i.h, align 8, !tbaa !733
  br label %fts3EvalPhraseNext.exit

bb.cv:                                            ; preds = %.thread.i27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.qz = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %storemerge27.i.i, ptr noundef nonnull %i.a), !inline_history !6144
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds i8, ptr %storemerge27.i.i, i64 %i.ra ; 5 uses
  %i.rc = load i8, ptr %i.qi, align 1, !tbaa !2672
  %i.rd = icmp eq i8 %i.rc, 0
  br i1 %i.rd, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.re = load ptr, ptr %i.qr, align 8, !tbaa !6145
  %i.rf = icmp eq ptr %i.re, null
  br i1 %i.rf, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.rg = load i64, ptr %i.a, align 8, !tbaa !565
  %i.rh = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 2 uses
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !2809
  %i.rj = add nsw i64 %i.ri, %i.rg
  store i64 %i.rj, ptr %i.rh, align 8, !tbaa !2809
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  %i.rk = load i64, ptr %i.a, align 8, !tbaa !565
  %i.rl = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 2 uses
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !2809
  %i.rn = sub nsw i64 %i.rm, %i.rk
  store i64 %i.rn, ptr %i.rl, align 8, !tbaa !2809
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  store ptr %i.rb, ptr %i.fk, align 8, !tbaa !2785
  %i.ro = load i8, ptr %i.rb, align 1, !tbaa !733 ; 2 uses
  %.not21.i.i.i = icmp eq i8 %i.ro, 0
  br i1 %.not21.i.i.i, label %fts3PoslistCopy.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.cz
  %i.rp = sext i8 %i.ro to i32
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %i.rq = phi i32 [ %i.rt, %.lr.ph.i.i.i ], [ %i.rp, %.lr.ph.preheader.i.i.i ]
  %.022.i.i.i = phi ptr [ %i.rr, %.lr.ph.i.i.i ], [ %i.rb, %.lr.ph.preheader.i.i.i ]
  %i.rr = getelementptr inbounds nuw i8, ptr %.022.i.i.i, i64 1 ; 3 uses
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !733
  %i.rt = sext i8 %i.rs to i32                    ; 2 uses
  %i.ru = and i32 %i.rq, -128
  %i.rv = or i32 %i.ru, %i.rt
  %.not.i.i28.i = icmp eq i32 %i.rv, 0
  br i1 %.not.i.i28.i, label %fts3PoslistCopy.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !491

fts3PoslistCopy.exit.i.i:                         ; preds = %.lr.ph.i.i.i, %bb.cz
  %.0.lcssa.i.i.i = phi ptr [ %i.rb, %bb.cz ], [ %i.rr, %.lr.ph.i.i.i ] ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 1 ; 4 uses
  %i.rx = ptrtoint ptr %i.rw to i64
  %i.ry = ptrtoint ptr %i.rb to i64
  %i.rz = sub i64 %i.rx, %i.ry
  %i.sa = trunc i64 %i.rz to i32
  store i32 %i.sa, ptr %i.fl, align 8, !tbaa !2788
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
  %i.se = load i8, ptr %.028.i.i, align 1, !tbaa !733
  %i.sf = icmp eq i8 %i.se, 0
  br i1 %i.sf, label %bb.da, label %.critedge.i29.i

bb.da:                                            ; preds = %.lr.ph.i30.i
end_hunk_10
