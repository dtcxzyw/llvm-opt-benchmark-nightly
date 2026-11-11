Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/dict_thesaurus?download=true
inline.NumInlined: 27
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@thesaurus_init:bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 72
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.ep to i64
  %i.fu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ep) #10
  %i.fv = shl i64 %i.fu, 32
  %i.fw = ashr exact i64 %i.fv, 32
  %i.fx = call i64 @FunctionCall4Coll(ptr noundef nonnull %i.fp, i32 noundef 0, i64 noundef %i.fs, i64 noundef %i.ft, i64 noundef %i.fw, i64 noundef 0) #9 ; 2 uses
  %.not93.i = icmp eq i64 %i.fx, 0
  br i1 %.not93.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.tail.thread.i
  %i.fy = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.fz = call i32 @errcode(i32 noundef 22) #9    ; 0 uses
  %i.ga = load ptr, ptr %i.em, align 8
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %indvars.iv.i ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = load i32, ptr %i.ge, align 8
  %i.gg = add i32 %i.gf, 1
  %i.gh = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.17, ptr noundef %i.gc, i32 noundef %i.gg) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 419, ptr noundef nonnull @__func__.compileTheLexeme) #9
  unreachable

bb.ak:                                            ; preds = %.tail.thread.i
  %i.gi = inttoptr i64 %i.fx to ptr               ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  %.not94.i = icmp eq ptr %i.gk, null
  br i1 %.not94.i, label %bb.al, label %.lr.ph179.i

bb.al:                                            ; preds = %bb.ak
  %i.gl = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.gm = call i32 @errcode(i32 noundef 22) #9    ; 0 uses
  %i.gn = load ptr, ptr %i.em, align 8
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.gn, i64 %indvars.iv.i ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = load i32, ptr %i.gr, align 8
  %i.gt = add i32 %i.gs, 1
  %i.gu = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.18, ptr noundef %i.gp, i32 noundef %i.gt) #9 ; 0 uses
  %i.gv = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.19) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 426, ptr noundef nonnull @__func__.compileTheLexeme) #9
  unreachable

.lr.ph179.i:                                      ; preds = %bb.ak, %.critedge.i33
  %.082178.i = phi ptr [ %.1.lcssa.ph.i, %.critedge.i33 ], [ %i.gi, %bb.ak ] ; 5 uses
  %.185177.i = phi ptr [ %.2.lcssa.ph.i, %.critedge.i33 ], [ %.084186.i, %bb.ak ]
  %.1124176.i = phi i32 [ %.2125.lcssa.ph.i, %.critedge.i33 ], [ %.0123184.i, %bb.ak ]
  %.1130175.i = phi i32 [ %.2131.lcssa.ph.i, %.critedge.i33 ], [ %.0129183.i, %bb.ak ]
  %i.gw = load i16, ptr %.082178.i, align 8       ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.082178.i, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8
  %.not96152.i = icmp eq ptr %i.gy, null
  br i1 %.not96152.i, label %.lr.ph164.preheader.i, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %.lr.ph179.i, %bb.am
  %.0154.i = phi i16 [ %i.ha, %bb.am ], [ 1, %.lr.ph179.i ] ; 2 uses
  %.082.pn153.i = phi ptr [ %.081155.i, %bb.am ], [ %.082178.i, %.lr.ph179.i ] ; 2 uses
  %.081155.i = getelementptr inbounds nuw i8, ptr %.082.pn153.i, i64 16 ; 2 uses
  %i.gz = load i16, ptr %.081155.i, align 8
  %.not97.i = icmp eq i16 %i.gz, %i.gw
  br i1 %.not97.i, label %bb.am, label %.lr.ph164.preheader.i

bb.am:                                            ; preds = %.lr.ph.i32
  %i.ha = add i16 %.0154.i, 1                     ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.082.pn153.i, i64 40
  %i.hc = load ptr, ptr %i.hb, align 8
  %.not96.i36 = icmp eq ptr %i.hc, null
  br i1 %.not96.i36, label %.lr.ph164.preheader.i, label %.lr.ph.i32, !llvm.loop !12

.lr.ph164.preheader.i:                            ; preds = %bb.am, %.lr.ph.i32, %.lr.ph179.i
  %.0.lcssa.i = phi i16 [ 1, %.lr.ph179.i ], [ %i.ha, %bb.am ], [ %.0154.i, %.lr.ph.i32 ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.082178.i, i64 8
  br label %.lr.ph164.i

.lr.ph164.i:                                      ; preds = %addCompiledLexeme.exit101.i, %.lr.ph164.preheader.i
  %i.he = phi ptr [ %i.ih, %addCompiledLexeme.exit101.i ], [ %i.hd, %.lr.ph164.preheader.i ]
  %.1162.i = phi ptr [ %i.ig, %addCompiledLexeme.exit101.i ], [ %.082178.i, %.lr.ph164.preheader.i ] ; 4 uses
  %.2161.i = phi ptr [ %.0.i100.i, %addCompiledLexeme.exit101.i ], [ %.185177.i, %.lr.ph164.preheader.i ] ; 3 uses
  %.2125160.i = phi i32 [ %.5128.i, %addCompiledLexeme.exit101.i ], [ %.1124176.i, %.lr.ph164.preheader.i ] ; 4 uses
  %.2131159.i = phi i32 [ %i.if, %addCompiledLexeme.exit101.i ], [ %.1130175.i, %.lr.ph164.preheader.i ] ; 4 uses
  %i.hf = load i16, ptr %.1162.i, align 8
  %i.hg = icmp eq i16 %i.hf, %i.gw
  br i1 %i.hg, label %bb.an, label %.critedge.i33

bb.an:                                            ; preds = %.lr.ph164.i
  %i.hh = load ptr, ptr %i.em, align 8
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %indvars.iv.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8            ; 2 uses
  %.not.i99.i = icmp slt i32 %.2131159.i, %.2125160.i
  br i1 %.not.i99.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hl = shl i32 %.2125160.i, 1                  ; 2 uses
  %i.hm = sext i32 %i.hl to i64
  %i.hn = shl nsw i64 %i.hm, 4
  %i.ho = call ptr @repalloc(ptr noundef %.2161.i, i64 noundef %i.hn) #9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.5128.i = phi i32 [ %.2125160.i, %bb.an ], [ %i.hl, %bb.ao ] ; 2 uses
  %.0.i100.i = phi ptr [ %.2161.i, %bb.an ], [ %i.ho, %bb.ao ] ; 3 uses
  %i.hp = call ptr @palloc(i64 noundef 24) #9     ; 2 uses
  %i.hq = sext i32 %.2131159.i to i64
  %i.hr = getelementptr inbounds [16 x i8], ptr %.0.i100.i, i64 %i.hq ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 5 uses
  store ptr %i.hp, ptr %i.hs, align 8
  %i.ht = load ptr, ptr %i.he, align 8            ; 2 uses
  %.not32.i.i = icmp eq ptr %i.ht, null
  br i1 %.not32.i.i, label %addCompiledLexeme.exit101.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hu = call ptr @pstrdup(ptr noundef nonnull %i.ht) #9
  %.pre.i = load ptr, ptr %i.hs, align 8
  br label %addCompiledLexeme.exit101.i

addCompiledLexeme.exit101.i:                      ; preds = %bb.aq, %bb.ap
  %i.hv = phi ptr [ %.pre.i, %bb.aq ], [ %i.hp, %bb.ap ]
  %.sink42.i.i = phi ptr [ %i.hu, %bb.aq ], [ null, %bb.ap ]
  %.sink.i.i = phi i16 [ %.0.lcssa.i, %bb.aq ], [ 1, %bb.ap ]
  store ptr %.sink42.i.i, ptr %i.hr, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 6
  store i16 %.sink.i.i, ptr %i.hw, align 2
  %i.hx = load i32, ptr %i.hk, align 8
  %i.hy = load ptr, ptr %i.hs, align 8
  store i32 %i.hx, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.ia = load i16, ptr %i.hz, align 4
  %i.ib = load ptr, ptr %i.hs, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  store i16 %i.ia, ptr %i.ic, align 4
  %i.id = load ptr, ptr %i.hs, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store ptr null, ptr %i.ie, align 8
  %i.if = add i32 %.2131159.i, 1                  ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.1162.i, i64 16 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.1162.i, i64 24 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8
  %.not98.i35 = icmp eq ptr %i.ii, null
  br i1 %.not98.i35, label %.critedge.i33, label %.lr.ph164.i, !llvm.loop !13

.critedge.i33:                                    ; preds = %addCompiledLexeme.exit101.i, %.lr.ph164.i
  %.2131.lcssa.ph.i = phi i32 [ %.2131159.i, %.lr.ph164.i ], [ %i.if, %addCompiledLexeme.exit101.i ] ; 2 uses
  %.2125.lcssa.ph.i = phi i32 [ %.2125160.i, %.lr.ph164.i ], [ %.5128.i, %addCompiledLexeme.exit101.i ] ; 2 uses
  %.2.lcssa.ph.i = phi ptr [ %.2161.i, %.lr.ph164.i ], [ %.0.i100.i, %addCompiledLexeme.exit101.i ] ; 2 uses
  %.1.lcssa.ph.i = phi ptr [ %.1162.i, %.lr.ph164.i ], [ %i.ig, %addCompiledLexeme.exit101.i ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.1.lcssa.ph.i, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8
  %.not95.i34 = icmp eq ptr %i.ik, null
  br i1 %.not95.i34, label %.loopexit.i, label %.lr.ph179.i, !llvm.loop !14

.loopexit.i:                                      ; preds = %.critedge.i33, %addCompiledLexeme.exit.i
  %.3132.i = phi i32 [ %i.fn, %addCompiledLexeme.exit.i ], [ %.2131.lcssa.ph.i, %.critedge.i33 ] ; 2 uses
  %.3126.i = phi i32 [ %.4127.i, %addCompiledLexeme.exit.i ], [ %.2125.lcssa.ph.i, %.critedge.i33 ] ; 2 uses
  %.3.i = phi ptr [ %.0.i.i, %addCompiledLexeme.exit.i ], [ %.2.lcssa.ph.i, %.critedge.i33 ] ; 2 uses
  %i.il = load ptr, ptr %i.em, align 8
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.il, i64 %indvars.iv.i
  %i.in = load ptr, ptr %i.im, align 8
  call void @pfree(ptr noundef %i.in) #9
  %i.io = load ptr, ptr %i.em, align 8
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %indvars.iv.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8
  call void @pfree(ptr noundef %i.ir) #9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.is = load i32, ptr %i.ej, align 8
  %i.it = sext i32 %i.is to i64
  %i.iu = icmp slt i64 %indvars.iv.next.i, %i.it
  br i1 %i.iu, label %sub_0.i, label %._crit_edge187.i, !llvm.loop !15

._crit_edge187.i:                                 ; preds = %.loopexit.i, %bb.ag
  %.0129.lcssa.i = phi i32 [ 0, %bb.ag ], [ %.3132.i, %.loopexit.i ] ; 3 uses
  %.0123.lcssa.i = phi i32 [ 16, %bb.ag ], [ %.3126.i, %.loopexit.i ]
  %.084.lcssa.i = phi ptr [ %i.ei, %bb.ag ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %i.iw = load ptr, ptr %i.iv, align 8            ; 2 uses
  %.not.i31 = icmp eq ptr %i.iw, null
  br i1 %.not.i31, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge187.i
  call void @pfree(ptr noundef nonnull %i.iw) #9
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge187.i
  store ptr %.084.lcssa.i, ptr %i.iv, align 8
  store i32 %.0129.lcssa.i, ptr %i.ej, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %.0123.lcssa.i, ptr %i.ix, align 4
  %i.iy = icmp sgt i32 %.0129.lcssa.i, 1
  br i1 %i.iy, label %bb.at, label %compileTheLexeme.exit

bb.at:                                            ; preds = %bb.as
  %i.iz = zext nneg i32 %.0129.lcssa.i to i64
  call void @pg_qsort(ptr noundef %.084.lcssa.i, i64 noundef %i.iz, i64 noundef 16, ptr noundef nonnull @cmpTheLexeme) #9
  %i.ja = load ptr, ptr %i.iv, align 8            ; 5 uses
  %i.jb = load i32, ptr %i.ej, align 8
  %i.jc = icmp sgt i32 %i.jb, 1
  br i1 %i.jc, label %.lr.ph196.preheader.i, label %._crit_edge197.i

.lr.ph196.preheader.i:                            ; preds = %bb.at
  %.083191.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  br label %.lr.ph196.i

.lr.ph196.i:                                      ; preds = %bb.bc, %.lr.ph196.preheader.i
  %.083194.i = phi ptr [ %.083.i, %bb.bc ], [ %.083191.i, %.lr.ph196.preheader.i ] ; 5 uses
  %.pn193.i = phi ptr [ %.083194.i, %bb.bc ], [ %i.ja, %.lr.ph196.preheader.i ]
  %.4192.i = phi ptr [ %.5.i, %bb.bc ], [ %i.ja, %.lr.ph196.preheader.i ] ; 5 uses
  %.083.val.i = load ptr, ptr %.083194.i, align 8 ; 2 uses
  %i.jd = icmp eq ptr %.083.val.i, null
  %i.je = load ptr, ptr %.4192.i, align 8         ; 2 uses
  %.not136.i = icmp eq ptr %i.je, null            ; 2 uses
  br i1 %i.jd, label %.split.i, label %bb.au

.split.i:                                         ; preds = %.lr.ph196.i
  br i1 %.not136.i, label %bb.av, label %cmpLexeme.exit.thread.i

bb.au:                                            ; preds = %.lr.ph196.i
  br i1 %.not136.i, label %cmpLexeme.exit.thread.i, label %cmpLexeme.exit.i

cmpLexeme.exit.i:                                 ; preds = %bb.au
  %i.jf = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.083.val.i, ptr noundef nonnull dereferenceable(1) %i.je) #10
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.av, label %cmpLexeme.exit.thread.i

bb.av:                                            ; preds = %cmpLexeme.exit.i, %.split.i
  %i.jh = getelementptr inbounds nuw i8, ptr %.pn193.i, i64 24 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8            ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.4192.i, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8            ; 5 uses
  %i.jl = icmp eq ptr %i.ji, null
  %i.jm = icmp eq ptr %i.jk, null
  %or.cond.i.i = or i1 %i.jl, %i.jm
  br i1 %or.cond.i.i, label %cmpLexemeInfo.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jn = load i32, ptr %i.ji, align 8
  %i.jo = load i32, ptr %i.jk, align 8
  %i.jp = icmp eq i32 %i.jn, %i.jo
  br i1 %i.jp, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jr = load i16, ptr %i.jq, align 4
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %i.jt = load i16, ptr %i.js, align 4
  %i.ju = icmp eq i16 %i.jr, %i.jt
  br i1 %i.ju, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ji, i64 6
  %i.jw = load i16, ptr %i.jv, align 2
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jk, i64 6
  %i.jy = load i16, ptr %i.jx, align 2
  %i.jz = icmp eq i16 %i.jw, %i.jy
  br i1 %i.jz, label %cmpLexemeInfo.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr %i.jk, ptr %i.ka, align 8
  %i.kb = load ptr, ptr %i.jh, align 8
  store ptr %i.kb, ptr %i.jj, align 8
  br label %bb.ba

cmpLexemeInfo.exit.i:                             ; preds = %bb.ay, %bb.av
  call void @pfree(ptr noundef %i.ji) #9
  br label %bb.ba

bb.ba:                                            ; preds = %cmpLexemeInfo.exit.i, %bb.az
  %i.kc = load ptr, ptr %.083194.i, align 8       ; 2 uses
  %.not92.i = icmp eq ptr %i.kc, null
  br i1 %.not92.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @pfree(ptr noundef nonnull %i.kc) #9
  br label %bb.bc

cmpLexeme.exit.thread.i:                          ; preds = %cmpLexeme.exit.i, %bb.au, %.split.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.4192.i, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kd, ptr noundef nonnull align 8 dereferenceable(16) %.083194.i, i64 16, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %cmpLexeme.exit.thread.i, %bb.bb, %bb.ba
  %.5.i = phi ptr [ %.4192.i, %bb.bb ], [ %.4192.i, %bb.ba ], [ %i.kd, %cmpLexeme.exit.thread.i ] ; 2 uses
  %.083.i = getelementptr inbounds nuw i8, ptr %.083194.i, i64 16 ; 2 uses
  %i.ke = load ptr, ptr %i.iv, align 8            ; 2 uses
  %i.kf = ptrtoint ptr %.083.i to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = ashr exact i64 %i.kh, 4
  %i.kj = load i32, ptr %i.ej, align 8
  %i.kk = sext i32 %i.kj to i64
  %i.kl = icmp slt i64 %i.ki, %i.kk
  br i1 %i.kl, label %.lr.ph196.i, label %._crit_edge197.i, !llvm.loop !16

._crit_edge197.i:                                 ; preds = %bb.bc, %bb.at
  %.pre-phi.in.i = phi ptr [ %i.ja, %bb.at ], [ %.5.i, %bb.bc ]
  %.lcssa137.i = phi ptr [ %i.ja, %bb.at ], [ %i.ke, %bb.bc ] ; 2 uses
  %.lcssa.pre-phi.i.pre-phi = ptrtoint ptr %.lcssa137.i to i64
  %.pre-phi.i = ptrtoint ptr %.pre-phi.in.i to i64
  %i.km = sub i64 %.pre-phi.i, %.lcssa.pre-phi.i.pre-phi
  %i.kn = lshr exact i64 %i.km, 4
  %i.ko = trunc i64 %i.kn to i32
  %i.kp = add i32 %i.ko, 1                        ; 2 uses
  store i32 %i.kp, ptr %i.ej, align 8
  %i.kq = sext i32 %i.kp to i64
  %i.kr = shl nsw i64 %i.kq, 4
  %i.ks = call ptr @repalloc(ptr noundef %.lcssa137.i, i64 noundef %i.kr) #9
  store ptr %i.ks, ptr %i.iv, align 8
  br label %compileTheLexeme.exit

compileTheLexeme.exit:                            ; preds = %bb.as, %._crit_edge197.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 8
  %i.kv = icmp sgt i32 %i.ku, 0
  br i1 %i.kv, label %.lr.ph117.i, label %compileTheSubstitute.exit

.lr.ph117.i:                                      ; preds = %compileTheLexeme.exit
  %i.kw = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 8 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bn, %.lr.ph117.i
  %indvars.iv.i37 = phi i64 [ 0, %.lr.ph117.i ], [ %indvars.iv.next.i41, %bb.bn ] ; 12 uses
  %i.kz = load ptr, ptr %i.kw, align 8
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.kz, i64 %indvars.iv.i37
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8            ; 4 uses
  %i.ld = call ptr @palloc_mul(i64 noundef 16, i64 noundef 2) #9 ; 5 uses
  %i.le = load ptr, ptr %i.kw, align 8
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %indvars.iv.i37
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store ptr %i.ld, ptr %i.lg, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store ptr null, ptr %i.lh, align 8
  %.not106.i = icmp eq ptr %i.lc, null
  br i1 %.not106.i, label %.critedge.i40, label %.lr.ph111.i.preheader

.lr.ph111.i.preheader:                            ; preds = %bb.bd
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8            ; 2 uses
  %.not82.i130 = icmp eq ptr %i.lj, null
  br i1 %.not82.i130, label %.critedge.i40, label %.lr.ph134

.lr.ph134:                                        ; preds = %.lr.ph111.i.preheader, %.lr.ph111.i
  %i.lk = phi ptr [ %i.or, %.lr.ph111.i ], [ %i.lj, %.lr.ph111.i.preheader ] ; 2 uses
  %i.ll = phi ptr [ %i.oq, %.lr.ph111.i ], [ %i.li, %.lr.ph111.i.preheader ] ; 3 uses
  %.075107.i133 = phi ptr [ %i.ni, %.lr.ph111.i ], [ %i.ld, %.lr.ph111.i.preheader ] ; 3 uses
  %.074108.i132 = phi ptr [ %i.op, %.lr.ph111.i ], [ %i.lc, %.lr.ph111.i.preheader ] ; 4 uses
  %.072109.i131 = phi i32 [ %.2.i39, %.lr.ph111.i ], [ 2, %.lr.ph111.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.lm = getelementptr inbounds nuw i8, ptr %.074108.i132, i64 2
  %i.ln = load i16, ptr %i.lm, align 2
  %i.lo = and i16 %i.ln, 4096
  %.not83.i = icmp eq i16 %i.lo, 0
  br i1 %.not83.i, label %bb.be, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.074108.i132, i64 16, i1 false)
  store i16 0, ptr %i.kx, align 2
  store ptr null, ptr %i.ky, align 8
  br label %bb.bf

bb.be:                                            ; preds = %.lr.ph134
  %i.lp = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 72
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = ptrtoint ptr %i.lk to i64
  %i.lv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lk) #10
  %i.lw = shl i64 %i.lv, 32
  %i.lx = ashr exact i64 %i.lw, 32
  %i.ly = call i64 @FunctionCall4Coll(ptr noundef nonnull %i.lq, i32 noundef 0, i64 noundef %i.lt, i64 noundef %i.lu, i64 noundef %i.lx, i64 noundef 0) #9 ; 2 uses
  %i.lz = inttoptr i64 %i.ly to ptr
  %.not84.i = icmp eq i64 %i.ly, 0
  br i1 %.not84.i, label %.critedge91.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.thread.i
  %.07194.i = phi ptr [ %1, %.thread.i ], [ %i.lz, %bb.be ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.07194.i, i64 8 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8
  %.not85.i = icmp eq ptr %i.mb, null
  br i1 %.not85.i, label %bb.bk, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bf
  %i.mc = load ptr, ptr %i.kw, align 8
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %i.mc, i64 %indvars.iv.i37
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load ptr, ptr %i.me, align 8            ; 2 uses
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.bh, %.lr.ph.preheader.i
  %i.mg = phi ptr [ %i.nk, %bb.bh ], [ %i.ma, %.lr.ph.preheader.i ]
  %.1104.i = phi ptr [ %i.nj, %bb.bh ], [ %.07194.i, %.lr.ph.preheader.i ] ; 3 uses
  %.173103.i = phi i32 [ %.2.i39, %bb.bh ], [ %.072109.i131, %.lr.ph.preheader.i ] ; 3 uses
  %.176102.i = phi ptr [ %i.ni, %bb.bh ], [ %.075107.i133, %.lr.ph.preheader.i ] ; 2 uses
  %i.mh = load ptr, ptr %i.kw, align 8
  %i.mi = getelementptr inbounds nuw [16 x i8], ptr %i.mh, i64 %indvars.iv.i37
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8            ; 2 uses
  %i.ml = ptrtoint ptr %.176102.i to i64
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = sub i64 %i.ml, %i.mm                    ; 2 uses
  %i.mo = ashr exact i64 %i.mn, 4
  %i.mp = add nsw i64 %i.mo, 1
  %i.mq = sext i32 %.173103.i to i64
  %.not89.i = icmp slt i64 %i.mp, %i.mq
  br i1 %.not89.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i38
  %i.mr = shl i32 %.173103.i, 1                   ; 2 uses
  %i.ms = sext i32 %i.mr to i64
  %i.mt = shl nsw i64 %i.ms, 4
  %i.mu = call ptr @repalloc(ptr noundef %i.mk, i64 noundef %i.mt) #9
  %i.mv = load ptr, ptr %i.kw, align 8
  %i.mw = getelementptr inbounds nuw [16 x i8], ptr %i.mv, i64 %indvars.iv.i37
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %i.mu, ptr %i.mx, align 8
  %i.my = load ptr, ptr %i.kw, align 8
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %i.my, i64 %indvars.iv.i37
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load ptr, ptr %i.na, align 8
  %i.nc = shl i64 %i.mn, 28
  %i.nd = ashr i64 %i.nc, 32
  %i.ne = getelementptr inbounds [16 x i8], ptr %i.nb, i64 %i.nd
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.lr.ph.i38
  %.277.i = phi ptr [ %i.ne, %bb.bg ], [ %.176102.i, %.lr.ph.i38 ] ; 3 uses
  %.2.i39 = phi i32 [ %i.mr, %bb.bg ], [ %.173103.i, %.lr.ph.i38 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.277.i, ptr noundef nonnull align 8 dereferenceable(16) %.1104.i, i64 16, i1 false)
  %i.nf = load ptr, ptr %i.mg, align 8
  %i.ng = call ptr @pstrdup(ptr noundef %i.nf) #9
  %i.nh = getelementptr inbounds nuw i8, ptr %.277.i, i64 8
  store ptr %i.ng, ptr %i.nh, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %.277.i, i64 16 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.1104.i, i64 16
  %i.nk = getelementptr inbounds nuw i8, ptr %.1104.i, i64 24 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8
  %.not87.i = icmp eq ptr %i.nl, null
  br i1 %.not87.i, label %._crit_edge.i, label %.lr.ph.i38, !llvm.loop !17

._crit_edge.i:                                    ; preds = %bb.bh
  %.not86.i = icmp eq ptr %.075107.i133, %i.mf
  %i.nm = ptrtoint ptr %.075107.i133 to i64
  %i.nn = ptrtoint ptr %i.mf to i64
  %i.no = sub i64 %i.nm, %i.nn
  %i.np = lshr exact i64 %i.no, 4
  %i.nq = trunc i64 %i.np to i32
  %i.nr = select i1 %.not86.i, i32 -1, i32 %i.nq  ; 2 uses
  %i.ns = icmp sgt i32 %i.nr, 0
  br i1 %i.ns, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %._crit_edge.i
  %i.nt = load ptr, ptr %i.kw, align 8
  %i.nu = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %indvars.iv.i37
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = zext nneg i32 %i.nr to i64
  %i.ny = getelementptr inbounds nuw [16 x i8], ptr %i.nw, i64 %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 2 ; 2 uses
  %i.oa = load i16, ptr %i.nz, align 2
  %i.ob = or i16 %i.oa, 1
  store i16 %i.ob, ptr %i.nz, align 2
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge.i
  %i.oc = load ptr, ptr %i.ll, align 8            ; 2 uses
  %.not88.i = icmp eq ptr %i.oc, null
  br i1 %.not88.i, label %.lr.ph111.i, label %bb.bl

bb.bk:                                            ; preds = %bb.bf
  %i.od = trunc nuw nsw i64 %indvars.iv.i37 to i32
  %i.oe = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.of = call i32 @errcode(i32 noundef 22) #9    ; 0 uses
  %i.og = load ptr, ptr %i.ll, align 8
  %i.oh = add nuw nsw i32 %i.od, 1
  %i.oi = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20, ptr noundef %i.og, i32 noundef %i.oh) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 569, ptr noundef nonnull @__func__.compileTheSubstitute) #9
  unreachable

.critedge91.i:                                    ; preds = %bb.be
  %i.oj = trunc nuw nsw i64 %indvars.iv.i37 to i32
  %i.ok = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.ol = call i32 @errcode(i32 noundef 22) #9    ; 0 uses
  %i.om = load ptr, ptr %i.ll, align 8
  %i.on = add nuw nsw i32 %i.oj, 1
  %i.oo = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.21, ptr noundef %i.om, i32 noundef %i.on) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 576, ptr noundef nonnull @__func__.compileTheSubstitute) #9
  unreachable

bb.bl:                                            ; preds = %bb.bj
  call void @pfree(ptr noundef nonnull %i.oc) #9
  br label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %bb.bl, %bb.bj
  %i.op = getelementptr inbounds nuw i8, ptr %.074108.i132, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.oq = getelementptr inbounds nuw i8, ptr %.074108.i132, i64 24 ; 2 uses
end_hunk_0
