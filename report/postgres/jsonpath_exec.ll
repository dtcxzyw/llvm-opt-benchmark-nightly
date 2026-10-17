Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/jsonpath_exec?download=true
inline.NumInlined: 345
inline.NumDeleted: 74
begin_hunk_0_@executeItemOptUnwrapTarget:bb.a

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 6 uses
  %i.ce = load i32, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  %i.ch = icmp slt i32 %i.ce, %i.cg
  br i1 %i.ch, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cj = sext i32 %i.ce to i64
  %i.ck = getelementptr inbounds [32 x i8], ptr %i.ci, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull readonly align 8 dereferenceable(32) %19, i64 32, i1 false)
  %i.cl = load i32, ptr %i.cd, align 8
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.cd, align 8
  br label %appendBoolResult.exit

bb.ab:                                            ; preds = %bb.z
  %i.cn = shl i32 %i.cg, 1
  %i.co = call i32 @llvm.smax.i32(i32 %i.cn, i32 16) ; 2 uses
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 5
  %i.cr = or disjoint i64 %i.cq, 24
  %i.cs = call ptr @palloc(i64 noundef %i.cr) #9, !inline_history !23 ; 6 uses
  store i32 1, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %i.co, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr null, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull readonly align 8 dereferenceable(32) %19, i64 32, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.cs, ptr %i.cw, align 8
  store ptr %i.cs, ptr %i.cc, align 8
  br label %appendBoolResult.exit

appendBoolResult.exit:                            ; preds = %bb.y, %bb.x, %bb.ab, %bb.aa, %bb.t
  %.0.i = phi i32 [ 0, %bb.t ], [ %i.cb, %bb.x ], [ 0, %bb.y ], [ 0, %bb.ab ], [ 0, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #9
  br label %.thread747

bb.ac:                                            ; preds = %bb.c
  %i.cx = tail call fastcc i32 @executeBinaryArithmExpr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @numeric_add_safe, ptr noundef %3)
  br label %.thread747

bb.ad:                                            ; preds = %bb.c
  %i.cy = tail call fastcc i32 @executeBinaryArithmExpr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @numeric_sub_safe, ptr noundef %3)
  br label %.thread747

bb.ae:                                            ; preds = %bb.c
  %i.cz = tail call fastcc i32 @executeBinaryArithmExpr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @numeric_mul_safe, ptr noundef %3)
  br label %.thread747

bb.af:                                            ; preds = %bb.c
  %i.da = tail call fastcc i32 @executeBinaryArithmExpr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @numeric_div_safe, ptr noundef %3)
  br label %.thread747

bb.ag:                                            ; preds = %bb.c
  %i.db = tail call fastcc i32 @executeBinaryArithmExpr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @numeric_mod_safe, ptr noundef %3)
  br label %.thread747

bb.ah:                                            ; preds = %bb.c
  %i.dc = tail call fastcc i32 @executeUnaryArithmExpr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %3)
  br label %.thread747

bb.ai:                                            ; preds = %bb.c
  %i.dd = tail call fastcc i32 @executeUnaryArithmExpr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @numeric_uminus, ptr noundef %3)
  br label %.thread747

bb.aj:                                            ; preds = %bb.c
  %i.de = tail call fastcc i32 @JsonbType(ptr noundef %2)
  %i.df = icmp eq i32 %i.de, 16
  br i1 %i.df, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dg = call zeroext i1 @jspGetNext(ptr noundef nonnull %1, ptr noundef nonnull %21) #9
  %. = select i1 %i.dg, ptr %21, ptr null
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.di = load i8, ptr %i.dh, align 8, !range !10, !noundef !11
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = call fastcc i32 @executeItemUnwrapTargetArray(ptr noundef %0, ptr noundef %., ptr noundef %2, ptr noundef %3, i1 noundef zeroext %i.dj)
  br label %.thread747

bb.al:                                            ; preds = %bb.aj
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dm = load i8, ptr %i.dl, align 8, !range !10, !noundef !11
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.do = tail call fastcc i32 @executeNextItem(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3)
  br label %.thread747

bb.an:                                            ; preds = %bb.al
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.dq = load i8, ptr %i.dp, align 1, !range !10, !noundef !11
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %.thread747, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.dt = load i8, ptr %i.ds, align 2, !range !10, !noundef !11
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.ap, label %.thread747

bb.ap:                                            ; preds = %bb.ao
  %i.dv = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.dw = tail call i32 @errcode(i32 noundef 151781506) #9 ; 0 uses
  %i.dx = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 890, ptr noundef nonnull @__func__.executeItemOptUnwrapTarget) #9
  unreachable

bb.aq:                                            ; preds = %bb.c
  %i.dy = tail call fastcc i32 @JsonbType(ptr noundef %2)
  %i.dz = icmp eq i32 %i.dy, 17
  br i1 %i.dz, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.ea = call zeroext i1 @jspGetNext(ptr noundef nonnull %1, ptr noundef nonnull %21) #9
  %i.eb = load i32, ptr %2, align 8
  %.not640 = icmp eq i32 %i.eb, 18
  br i1 %.not640, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ec = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.ed = load i32, ptr %2, align 8
  %i.ee = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.11, i32 noundef %i.ed) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 899, ptr noundef nonnull @__func__.executeItemOptUnwrapTarget) #9
  unreachable

bb.at:                                            ; preds = %bb.ar
  %.21 = select i1 %i.ea, ptr %21, ptr null
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ei = load i8, ptr %i.eh, align 8, !range !10, !noundef !11
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = call fastcc i32 @executeAnyItem(ptr noundef %0, ptr noundef %.21, ptr noundef %i.eg, ptr noundef %3, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext %i.ej)
  br label %.thread747

bb.au:                                            ; preds = %bb.aq
  br i1 %4, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.el = tail call fastcc i32 @JsonbType(ptr noundef %2)
  %i.em = icmp eq i32 %i.el, 16
  br i1 %i.em, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.en = tail call fastcc i32 @executeItemUnwrapTargetArray(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false)
  br label %.thread747

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.ep = load i8, ptr %i.eo, align 1, !range !10, !noundef !11
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %.thread747, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.es = load i8, ptr %i.er, align 2, !range !10, !noundef !11
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.az, label %.thread747

bb.az:                                            ; preds = %bb.ay
  %i.eu = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.ev = tail call i32 @errcode(i32 noundef 319553666) #9 ; 0 uses
  %i.ew = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.12) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 913, ptr noundef nonnull @__func__.executeItemOptUnwrapTarget) #9
  unreachable

bb.ba:                                            ; preds = %bb.c
  %i.ex = tail call fastcc i32 @JsonbType(ptr noundef %2)
  %i.ey = icmp eq i32 %i.ex, 16
  br i1 %i.ey, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fa = load i8, ptr %i.ez, align 8, !range !10, !noundef !11
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.bc, label %bb.bu

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = load i32, ptr %2, align 8
  %i.ff = icmp eq i32 %i.fe, 18
  br i1 %i.ff, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = load i32, ptr %i.fh, align 4            ; 2 uses
  %i.fj = and i32 %i.fi, 1342177280
  %or.cond.i649 = icmp eq i32 %i.fj, 1073741824
  %i.fk = and i32 %i.fi, 268435455
  br i1 %or.cond.i649, label %JsonbArraySize.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  br label %JsonbArraySize.exit

JsonbArraySize.exit:                              ; preds = %bb.bd, %bb.be
  %.1.i = phi i32 [ -1, %bb.be ], [ %i.fk, %bb.bd ] ; 2 uses
  %44 = icmp slt i32 %.1.i, 0                     ; 3 uses
  %45 = call zeroext i1 @jspGetNext(ptr noundef nonnull %1, ptr noundef nonnull %21) #9
  %spec.select = select i1 %44, i32 1, i32 %.1.i  ; 3 uses
  store i32 %spec.select, ptr %i.fc, align 4
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %47 = load i32, ptr %46, align 8
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %JsonbArraySize.exit.a, label %.thread737

JsonbArraySize.exit.a:                            ; preds = %JsonbArraySize.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.fm = add nsw i32 %spec.select, -1
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fo = icmp ne ptr %3, null                    ; 4 uses
  %.fr = freeze i1 %45
  %or.cond23 = or i1 %i.fo, %.fr
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %.lr.ph959

.lr.ph959:                                        ; preds = %JsonbArraySize.exit.a, %.thread720.thread860.thread
  %.0588958 = phi i32 [ 0, %JsonbArraySize.exit.a ], [ %i.hu, %.thread720.thread860.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #9
  %i.fs = call zeroext i1 @jspGetArraySubscript(ptr noundef nonnull %1, ptr noundef nonnull %23, ptr noundef nonnull %24, i32 noundef %.0588958) #9
  %i.ft = call fastcc i32 @getArrayIndex(ptr noundef %0, ptr noundef %23, ptr noundef nonnull %2, ptr noundef %i.m)
  %i.fu = icmp eq i32 %i.ft, 2
  br i1 %i.fu, label %.thread726, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph959
  br i1 %i.fs, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fv = call fastcc i32 @getArrayIndex(ptr noundef %0, ptr noundef %24, ptr noundef nonnull %2, ptr noundef %i.n)
  %i.fw = icmp eq i32 %i.fv, 2
  br i1 %i.fw, label %.thread726, label %._crit_edge905

._crit_edge905:                                   ; preds = %bb.bg
  %.pre901.pre = load i32, ptr %i.m, align 4
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.fx = load i32, ptr %i.m, align 4             ; 2 uses
  store i32 %i.fx, ptr %i.n, align 4
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge905, %bb.bh
  %.pre901 = phi i32 [ %.pre901.pre, %._crit_edge905 ], [ %i.fx, %bb.bh ] ; 3 uses
  %i.fy = load i8, ptr %i.fl, align 1, !range !10, !noundef !11
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %._crit_edge, label %bb.bj

._crit_edge:                                      ; preds = %bb.bi
  %.pre902 = load i32, ptr %i.n, align 4
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.ga = icmp slt i32 %.pre901, 0
  br i1 %i.ga, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gb = load i32, ptr %i.n, align 4             ; 3 uses
  %i.gc = icmp sle i32 %.pre901, %i.gb
  %.not637 = icmp slt i32 %i.gb, %spec.select
  %or.cond642 = and i1 %i.gc, %.not637
  br i1 %or.cond642, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ge = load i8, ptr %i.gd, align 2, !range !10, !noundef !11
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %bb.bl
  %i.gg = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.gh = call i32 @errcode(i32 noundef 51118210) #9 ; 0 uses
  %i.gi = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 962, ptr noundef nonnull @__func__.executeItemOptUnwrapTarget) #9
  unreachable

bb.bn:                                            ; preds = %._crit_edge, %bb.bk
  %i.gj = phi i32 [ %.pre902, %._crit_edge ], [ %i.gb, %bb.bk ]
  %spec.store.select = call i32 @llvm.smax.i32(i32 %.pre901, i32 0) ; 3 uses
  %spec.store.select881 = call i32 @llvm.smin.i32(i32 %i.gj, i32 %i.fm) ; 3 uses
  %.not639878 = icmp sgt i32 %spec.store.select, %spec.store.select881
  br i1 %.not639878, label %.thread720.thread860.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bn
  br i1 %or.cond23, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %select.unfold.us
  %.3555880.us = phi i32 [ %.4556.ph.us, %select.unfold.us ], [ 1, %.lr.ph ]
  %.0586879.us = phi i32 [ %i.ho, %select.unfold.us ], [ %spec.store.select, %.lr.ph ] ; 3 uses
  br i1 %44, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.split.us
  %i.gk = load ptr, ptr %i.fn, align 8
  %i.gl = call ptr @getIthJsonbValueFromContainer(ptr noundef %i.gk, i32 noundef %.0586879.us) #9 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %select.unfold.us, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph.split.us
  %.0585.us = phi ptr [ %i.gl, %bb.bo ], [ %2, %.lr.ph.split.us ] ; 3 uses
  %i.gn = load i32, ptr %i.fp, align 4
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %executeNextItem.exit652.us, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.fo, label %bb.br, label %executeNextItem.exit652.thread.us

bb.br:                                            ; preds = %bb.bq
  %i.gp = load ptr, ptr %i.fq, align 8            ; 6 uses
  %i.gq = load i32, ptr %i.gp, align 8            ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gs = load i32, ptr %i.gr, align 4            ; 2 uses
  %i.gt = icmp slt i32 %i.gq, %i.gs
  br i1 %i.gt, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gu = shl i32 %i.gs, 1
  %i.gv = call i32 @llvm.smax.i32(i32 %i.gu, i32 16) ; 2 uses
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = shl nuw nsw i64 %i.gw, 5
  %i.gy = or disjoint i64 %i.gx, 24
  %i.gz = call ptr @palloc(i64 noundef %i.gy) #9  ; 6 uses
  store i32 1, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  store i32 %i.gv, ptr %i.ha, align 4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr null, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hc, ptr noundef nonnull readonly align 8 dereferenceable(32) %.0585.us, i64 32, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr %i.gz, ptr %i.hd, align 8
  store ptr %i.gz, ptr %i.fq, align 8
  br label %select.unfold.us

bb.bt:                                            ; preds = %bb.br
  %i.he = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.hf = sext i32 %i.gq to i64
  %i.hg = getelementptr inbounds [32 x i8], ptr %i.he, i64 %i.hf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hg, ptr noundef nonnull readonly align 8 dereferenceable(32) %.0585.us, i64 32, i1 false)
  %i.hh = load i32, ptr %i.gp, align 8
  %i.hi = add i32 %i.hh, 1
  store i32 %i.hi, ptr %i.gp, align 8
  br label %select.unfold.us

executeNextItem.exit652.us:                       ; preds = %bb.bp
  %i.hj = load i8, ptr %i.fr, align 8, !range !10, !noundef !11
  %i.hk = trunc nuw i8 %i.hj to i1
  %i.hl = call fastcc i32 @executeItemOptUnwrapTarget(ptr noundef nonnull %0, ptr noundef nonnull %21, ptr noundef nonnull %.0585.us, ptr noundef %3, i1 noundef zeroext %i.hk), !inline_history !33 ; 2 uses
  %i.hm = icmp eq i32 %i.hl, 2
  br i1 %i.hm, label %.thread726, label %executeNextItem.exit652.thread.us

executeNextItem.exit652.thread.us:                ; preds = %executeNextItem.exit652.us, %bb.bq
  %.014.i651711.us = phi i32 [ %i.hl, %executeNextItem.exit652.us ], [ 0, %bb.bq ] ; 2 uses
  %i.hn = icmp ne i32 %.014.i651711.us, 0
  %or.cond25.us = or i1 %i.fo, %i.hn
  br i1 %or.cond25.us, label %select.unfold.us, label %.thread720.thread860

select.unfold.us:                                 ; preds = %executeNextItem.exit652.thread.us, %bb.bt, %bb.bs, %bb.bo
  %.4556.ph.us = phi i32 [ %.3555880.us, %bb.bo ], [ %.014.i651711.us, %executeNextItem.exit652.thread.us ], [ 0, %bb.bs ], [ 0, %bb.bt ] ; 2 uses
  %i.ho = add nuw nsw i32 %.0586879.us, 1
  %exitcond894 = icmp eq i32 %.0586879.us, %spec.store.select881
  br i1 %exitcond894, label %.thread720.thread860, label %.lr.ph.split.us, !llvm.loop !24

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %44, label %.loopexit, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %select.unfold
  %.0586879 = phi i32 [ %i.hs, %select.unfold ], [ %spec.store.select, %.lr.ph.split ] ; 3 uses
  %i.hp = load ptr, ptr %i.fn, align 8
  %i.hq = call ptr @getIthJsonbValueFromContainer(ptr noundef %i.hp, i32 noundef %.0586879) #9
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %select.unfold, label %.loopexit

select.unfold:                                    ; preds = %.lr.ph.split.split
  %i.hs = add nuw nsw i32 %.0586879, 1
  %exitcond893 = icmp eq i32 %.0586879, %spec.store.select881
  br i1 %exitcond893, label %.thread720.thread860.thread, label %.lr.ph.split.split, !llvm.loop !24

.thread720.thread860:                             ; preds = %executeNextItem.exit652.thread.us, %select.unfold.us
  %.5557862 = phi i32 [ %.4556.ph.us, %select.unfold.us ], [ 0, %executeNextItem.exit652.thread.us ] ; 2 uses
  %i.ht = icmp ne i32 %.5557862, 0
  %or.cond27 = or i1 %i.fo, %i.ht
  br i1 %or.cond27, label %.thread720.thread860.thread, label %.thread726

.thread726:                                       ; preds = %bb.bg, %.lr.ph959, %.thread720.thread860, %executeNextItem.exit652.us
  %.6558.ph = phi i32 [ 2, %executeNextItem.exit652.us ], [ 2, %.lr.ph959 ], [ 0, %.thread720.thread860 ], [ 2, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #9
  br label %.thread737

.thread720.thread860.thread:                      ; preds = %select.unfold, %bb.bn, %.thread720.thread860
  %.5557862930 = phi i32 [ %.5557862, %.thread720.thread860 ], [ 1, %bb.bn ], [ 1, %select.unfold ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #9
  %i.hu = add nuw nsw i32 %.0588958, 1            ; 2 uses
  %i.hv = load i32, ptr %46, align 8
  %i.hw = icmp slt i32 %i.hu, %i.hv
  br i1 %i.hw, label %.lr.ph959, label %.thread737, !llvm.loop !25

.thread737:                                       ; preds = %.thread720.thread860.thread, %JsonbArraySize.exit, %.thread726
  %.7559 = phi i32 [ %.6558.ph, %.thread726 ], [ 1, %JsonbArraySize.exit ], [ %.5557862930, %.thread720.thread860.thread ]
  store i32 %i.fd, ptr %i.fc, align 4
  br label %.thread747

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.split, %bb.bl
  %.4.ph732 = phi i32 [ 2, %bb.bl ], [ 0, %.lr.ph.split.split ], [ 0, %.lr.ph.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #9
  br label %.thread747

bb.bu:                                            ; preds = %bb.bb
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.hy = load i8, ptr %i.hx, align 1, !range !10, !noundef !11
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %.thread747, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ib = load i8, ptr %i.ia, align 2, !range !10, !noundef !11
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.bw, label %.thread747

bb.bw:                                            ; preds = %bb.bv
  %i.id = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.ie = tail call i32 @errcode(i32 noundef 151781506) #9 ; 0 uses
  %i.if = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.14) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1014, ptr noundef nonnull @__func__.executeItemOptUnwrapTarget) #9
  unreachable

bb.bx:                                            ; preds = %bb.c
  %i.ig = call zeroext i1 @jspGetNext(ptr noundef nonnull %1, ptr noundef nonnull %21) #9
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 8
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 3 uses
  %i.il = load i8, ptr %i.ik, align 1, !range !10, !noundef !11
  store i8 1, ptr %i.ik, align 1
  %i.im = call fastcc i32 @executeNextItem(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %21, ptr noundef %2, ptr noundef %3) ; 2 uses
  store i8 %i.il, ptr %i.ik, align 1
  %i.in = icmp ne i32 %i.im, 0
  %i.io = icmp ne ptr %3, null
  %or.cond29 = or i1 %i.io, %i.in
  br i1 %or.cond29, label %bb.bz, label %.thread747

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.9561 = phi i32 [ %i.im, %bb.by ], [ 1, %bb.bx ]
  %i.ip = load i32, ptr %2, align 8
  %i.iq = icmp eq i32 %i.ip, 18
  br i1 %i.iq, label %bb.ca, label %.thread747

bb.ca:                                            ; preds = %bb.bz
  %.30 = select i1 %i.ig, ptr %21, ptr null
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = load i32, ptr %i.ih, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.iv = load i32, ptr %i.iu, align 4
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ix = load i8, ptr %i.iw, align 8, !range !10, !noundef !11
  %i.iy = trunc nuw i8 %i.ix to i1
  %i.iz = call fastcc i32 @executeAnyItem(ptr noundef %0, ptr noundef %.30, ptr noundef %i.is, ptr noundef %3, i32 noundef 1, i32 noundef %i.it, i32 noundef %i.iv, i1 noundef zeroext true, i1 noundef zeroext %i.iy)
  br label %.thread747

bb.cb:                                            ; preds = %bb.c
  %i.ja = tail call fastcc i32 @JsonbType(ptr noundef %2)
  %i.jb = icmp eq i32 %i.ja, 17
  br i1 %i.jb, label %bb.cc, label %bb.ci

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #9
  store i32 1, ptr %25, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.jd = call ptr @jspGetString(ptr noundef nonnull %1, ptr noundef nonnull %i.jc) #9
  %i.je = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store ptr %i.jd, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = call ptr @findJsonbValueFromContainer(ptr noundef %i.jg, i32 noundef 536870912, ptr noundef nonnull %25) #9 ; 3 uses
  %.not636 = icmp eq ptr %i.jh, null
  br i1 %.not636, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ji = call fastcc i32 @executeNextItem(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.jh, ptr noundef %3)
  call void @pfree(ptr noundef nonnull %i.jh) #9
  br label %.thread743

bb.ce:                                            ; preds = %bb.cc
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.jk = load i8, ptr %i.jj, align 1, !range !10, !noundef !11
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %.thread743, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.jn = load i8, ptr %i.jm, align 2, !range !10, !noundef !11
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.jp = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.jq = call i32 @errcode(i32 noundef 285999234) #9 ; 0 uses
  %i.jr = load ptr, ptr %i.je, align 8
  %i.js = load i32, ptr %i.jc, align 8
  %i.jt = sext i32 %i.js to i64
  %i.ju = call ptr @pnstrdup(ptr noundef %i.jr, i64 noundef %i.jt) #9
  %i.jv = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.15, ptr noundef %i.ju) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1077, ptr noundef nonnull @__func__.executeItemOptUnwrapTarget) #9
  unreachable

.thread743:                                       ; preds = %bb.ce, %bb.cd
  %.13565.ph = phi i32 [ 1, %bb.ce ], [ %i.ji, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #9
  br label %.thread747

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #9
  br label %.thread747

bb.ci:                                            ; preds = %bb.cb
  br i1 %4, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.jw = tail call fastcc i32 @JsonbType(ptr noundef %2)
  %i.jx = icmp eq i32 %i.jw, 16
  br i1 %i.jx, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.jy = tail call fastcc i32 @executeItemUnwrapTargetArray(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false)
  br label %.thread747

bb.cl:                                            ; preds = %bb.cj, %bb.ci
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.ka = load i8, ptr %i.jz, align 1, !range !10, !noundef !11
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %.thread747, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.kd = load i8, ptr %i.kc, align 2, !range !10, !noundef !11
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %bb.cn, label %.thread747

bb.cn:                                            ; preds = %bb.cm
  %i.kf = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.kg = tail call i32 @errcode(i32 noundef 285999234) #9 ; 0 uses
  %i.kh = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.16) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1087, ptr noundef nonnull @__func__.executeItemOptUnwrapTarget) #9
  unreachable

bb.co:                                            ; preds = %bb.c
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = tail call fastcc i32 @executeNextItem(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %i.kj, ptr noundef %3)
  br label %.thread747

bb.cp:                                            ; preds = %bb.c
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.km = load ptr, ptr %i.kl, align 8            ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.kn, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ko = load i32, ptr %i.km, align 8
  %.not.i = icmp eq i32 %i.ko, 18
  br i1 %.not.i, label %bb.cq, label %setBaseObject.exit

bb.cq:                                            ; preds = %bb.cp
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8
  br label %setBaseObject.exit

setBaseObject.exit:                               ; preds = %bb.cp, %bb.cq
  %i.kr = phi ptr [ %i.kq, %bb.cq ], [ null, %bb.cp ]
  store ptr %i.kr, ptr %i.kn, align 8
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ks = tail call fastcc i32 @executeNextItem(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.km, ptr noundef %3)
  store ptr %.sroa.0.0.copyload.i, ptr %i.kn, align 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  br label %.thread747

bb.cr:                                            ; preds = %bb.c
  br i1 %4, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.kt = tail call fastcc i32 @JsonbType(ptr noundef %2)
  %i.ku = icmp eq i32 %i.kt, 16
  br i1 %i.ku, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  call void @jspGetArg(ptr noundef nonnull %1, ptr noundef nonnull %21) #9
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.kw = load ptr, ptr %i.kv, align 8
  store ptr %2, ptr %i.kv, align 8
  %i.kx = call fastcc i32 @executeBoolItem(ptr noundef nonnull %0, ptr noundef nonnull %21, ptr noundef %2, i1 noundef zeroext false), !inline_history !26
  store ptr %i.kw, ptr %i.kv, align 8
  %.not635 = icmp eq i32 %i.kx, 1
end_hunk_0
