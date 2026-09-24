Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/ri_triggers?download=true
inline.NumInlined: 140
inline.NumDeleted: 44
begin_hunk_0_@RI_Initial_Check:bb.a

bb.ae:                                            ; preds = %bb.ag, %bb.ad
  %.pn.i160 = phi ptr [ %i.em, %bb.ad ], [ %.1.i164, %bb.ag ] ; 3 uses
  %.0.i161 = phi ptr [ %i.ge, %bb.ad ], [ %i.gi, %bb.ag ] ; 3 uses
  %.08.i162 = getelementptr inbounds nuw i8, ptr %.pn.i160, i64 1 ; 3 uses
  %i.gf = load i8, ptr %.0.i161, align 1          ; 2 uses
  switch i8 %i.gf, label %bb.ag [
    i8 0, label %quoteOneName.exit165
    i8 34, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.gg = getelementptr inbounds nuw i8, ptr %.pn.i160, i64 2
  store i8 34, ptr %.08.i162, align 1
  %.pre.i163 = load i8, ptr %.0.i161, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gh = phi i8 [ %.pre.i163, %bb.af ], [ %i.gf, %bb.ae ]
  %.1.i164 = phi ptr [ %i.gg, %bb.af ], [ %.08.i162, %bb.ae ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i161, i64 1
  store i8 %i.gh, ptr %.1.i164, align 1
  br label %bb.ae, !llvm.loop !2

quoteOneName.exit165:                             ; preds = %bb.ae
  %i.gj = getelementptr inbounds nuw i8, ptr %.pn.i160, i64 2
  store i8 34, ptr %.08.i162, align 1
  store i8 0, ptr %i.gj, align 1
  %i.gk = load i16, ptr %i.fs, align 2
  %i.gl = sext i16 %i.gk to i32
  %i.gm = call ptr @attnumAttName(ptr noundef %1, i32 noundef %i.gl) #11
  store i8 34, ptr %i.en, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %quoteOneName.exit165
  %.pn.i166 = phi ptr [ %i.en, %quoteOneName.exit165 ], [ %.1.i170, %bb.aj ] ; 3 uses
  %.0.i167 = phi ptr [ %i.gm, %quoteOneName.exit165 ], [ %i.gq, %bb.aj ] ; 3 uses
  %.08.i168 = getelementptr inbounds nuw i8, ptr %.pn.i166, i64 1 ; 3 uses
  %i.gn = load i8, ptr %.0.i167, align 1          ; 2 uses
  switch i8 %i.gn, label %bb.aj [
    i8 0, label %quoteOneName.exit171
    i8 34, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.go = getelementptr inbounds nuw i8, ptr %.pn.i166, i64 2
  store i8 34, ptr %.08.i168, align 1
  %.pre.i169 = load i8, ptr %.0.i167, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gp = phi i8 [ %.pre.i169, %bb.ai ], [ %i.gn, %bb.ah ]
  %.1.i170 = phi ptr [ %i.go, %bb.ai ], [ %.08.i168, %bb.ah ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.i167, i64 1
  store i8 %i.gp, ptr %.1.i170, align 1
  br label %bb.ah, !llvm.loop !2

quoteOneName.exit171:                             ; preds = %bb.ah
  %i.gr = getelementptr inbounds nuw i8, ptr %.pn.i166, i64 2
  store i8 34, ptr %.08.i168, align 1
  store i8 0, ptr %i.gr, align 1
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv200
  %i.gt = load i32, ptr %i.gs, align 4
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %3, ptr noundef nonnull @.str.76, ptr noundef nonnull %.1184) #11
  call void @generate_operator_clause(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i32 noundef %i.fr, i32 noundef %i.gt, ptr noundef nonnull %i.d, i32 noundef %i.fv) #11
  %.not139 = icmp eq i32 %i.fy, %i.gb
  br i1 %.not139, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %quoteOneName.exit171
  call fastcc void @ri_GenerateQualCollation(ptr noundef %3, i32 noundef %i.fy)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %quoteOneName.exit171
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %i.gu = load i32, ptr %i.aw, align 8
  %i.gv = sext i32 %i.gu to i64
  %i.gw = icmp slt i64 %indvars.iv.next201, %i.gv
  br i1 %i.gw, label %bb.ad, label %._crit_edge187, !llvm.loop !34

._crit_edge191:                                   ; preds = %bb.as, %quoteOneName.exit159
  call void @appendStringInfoChar(ptr noundef nonnull %3, i8 noundef signext 41) #11
  %i.gx = call i32 @NewGUCNestLevel() #11
  %i.gy = load i32, ptr @maintenance_work_mem, align 4
  %i.gz = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.e, i64 noundef 32, ptr noundef nonnull @.str.34, i32 noundef %i.gy) #11 ; 0 uses
  %i.ha = call i32 @set_config_option(ptr noundef nonnull @.str.35, ptr noundef nonnull %i.e, i32 noundef 6, i32 noundef 13, i32 noundef 2, i1 noundef zeroext true, i32 noundef 0, i1 noundef zeroext false) #11 ; 0 uses
  %i.hb = call i32 @set_config_option(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 6, i32 noundef 13, i32 noundef 2, i1 noundef zeroext true, i32 noundef 0, i1 noundef zeroext false) #11 ; 0 uses
  %i.hc = call i32 @SPI_connect() #11             ; 0 uses
  %i.hd = load ptr, ptr %3, align 8
  %i.he = call ptr @SPI_prepare(ptr noundef %i.hd, i32 noundef 0, ptr noundef null) #11 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.at, label %bb.au

bb.am:                                            ; preds = %.lr.ph190, %bb.as
  %indvars.iv203 = phi i64 [ 0, %.lr.ph190 ], [ %indvars.iv.next204, %bb.as ] ; 2 uses
  %.2188 = phi ptr [ @.str.7, %.lr.ph190 ], [ %.3, %bb.as ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %indvars.iv203
  %i.hh = load i16, ptr %i.hg, align 2
  %i.hi = sext i16 %i.hh to i32
  %i.hj = call ptr @attnumAttName(ptr noundef %1, i32 noundef %i.hi) #11
  store i8 34, ptr %i.d, align 16
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %bb.am
  %.pn.i172 = phi ptr [ %i.d, %bb.am ], [ %.1.i176, %bb.ap ] ; 3 uses
  %.0.i173 = phi ptr [ %i.hj, %bb.am ], [ %i.hn, %bb.ap ] ; 3 uses
  %.08.i174 = getelementptr inbounds nuw i8, ptr %.pn.i172, i64 1 ; 3 uses
  %i.hk = load i8, ptr %.0.i173, align 1          ; 2 uses
  switch i8 %i.hk, label %bb.ap [
    i8 0, label %quoteOneName.exit177
    i8 34, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %i.hl = getelementptr inbounds nuw i8, ptr %.pn.i172, i64 2
  store i8 34, ptr %.08.i174, align 1
  %.pre.i175 = load i8, ptr %.0.i173, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hm = phi i8 [ %.pre.i175, %bb.ao ], [ %i.hk, %bb.an ]
  %.1.i176 = phi ptr [ %i.hl, %bb.ao ], [ %.08.i174, %bb.an ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i173, i64 1
  store i8 %i.hm, ptr %.1.i176, align 1
  br label %bb.an, !llvm.loop !2

quoteOneName.exit177:                             ; preds = %bb.an
  %i.ho = getelementptr inbounds nuw i8, ptr %.pn.i172, i64 2
  store i8 34, ptr %.08.i174, align 1
  store i8 0, ptr %i.ho, align 1
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %3, ptr noundef nonnull @.str.31, ptr noundef %.2188, ptr noundef nonnull %i.d) #11
  %i.hp = load i8, ptr %i.fn, align 4
  switch i8 %i.hp, label %bb.as [
    i8 115, label %bb.aq
    i8 102, label %bb.ar
  ]

bb.aq:                                            ; preds = %quoteOneName.exit177
  br label %bb.as

bb.ar:                                            ; preds = %quoteOneName.exit177
  br label %bb.as

bb.as:                                            ; preds = %quoteOneName.exit177, %bb.aq, %bb.ar
  %.3 = phi ptr [ %.2188, %quoteOneName.exit177 ], [ @.str.32, %bb.aq ], [ @.str.33, %bb.ar ]
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.hq = load i32, ptr %i.aw, align 8
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp slt i64 %indvars.iv.next204, %i.hr
  br i1 %i.hs, label %bb.am, label %._crit_edge191, !llvm.loop !35

bb.at:                                            ; preds = %._crit_edge191
  %i.ht = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.hu = load i32, ptr @SPI_result, align 4
  %i.hv = call ptr @SPI_result_code_string(i32 noundef %i.hu) #11
  %i.hw = load ptr, ptr %3, align 8
  %i.hx = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.38, ptr noundef %i.hv, ptr noundef %i.hw) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef 1874, ptr noundef nonnull @__func__.RI_Initial_Check) #11
  unreachable

bb.au:                                            ; preds = %._crit_edge191
  %i.hy = call ptr @GetLatestSnapshot() #11
  %i.hz = call i32 @SPI_execute_snapshot(ptr noundef nonnull %i.he, ptr noundef null, ptr noundef null, ptr noundef %i.hy, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext false, i64 noundef 1) #11 ; 2 uses
  %.not = icmp eq i32 %i.hz, 5
  br i1 %.not, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ia = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.ib = call ptr @SPI_result_code_string(i32 noundef %i.hz) #11
  %i.ic = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.39, ptr noundef %i.ib) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef 1891, ptr noundef nonnull @__func__.RI_Initial_Check) #11
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.id = load i64, ptr @SPI_processed, align 8
  %.not136 = icmp eq i64 %i.id, 0
  br i1 %.not136, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ie = load ptr, ptr @SPI_tuptable, align 8    ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = load ptr, ptr %i.ie, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ij = call ptr @MakeSingleTupleTableSlot(ptr noundef %i.ii, ptr noundef nonnull @TTSOpsVirtual) #11 ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.in = load ptr, ptr %i.im, align 8
  call void @heap_deform_tuple(ptr noundef %i.ih, ptr noundef %i.ii, ptr noundef %i.il, ptr noundef %i.in) #11
  %i.io = call ptr @ExecStoreVirtualTuple(ptr noundef %i.ij) #11 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(728) %4, ptr noundef nonnull align 8 dereferenceable(728) %i.f, i64 728, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.iq = load i32, ptr %i.ip, align 8            ; 4 uses
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %iter.check, label %._crit_edge195

iter.check:                                       ; preds = %bb.ax
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 236 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.iq to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.iq, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check214 = icmp ult i32 %i.iq, 16
  br i1 %min.iters.check214, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.it = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.iu = add <8 x i16> %vec.ind, splat (i16 8)
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %index ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store <8 x i16> %vec.ind, ptr %i.iv, align 4
  store <8 x i16> %i.iu, ptr %i.iw, align 4
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.ix = icmp eq i64 %index.next, %n.vec
  br i1 %i.ix, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge195, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.it, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec215 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %5 = trunc i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %5, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index216 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next218, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind217 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next219, %vec.epilog.vector.body ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %index216
  store <4 x i16> %vec.ind217, ptr %i.iy, align 4
  %index.next218 = add nuw i64 %index216, 4       ; 2 uses
  %vec.ind.next219 = add <4 x i16> %vec.ind217, splat (i16 4)
  %i.iz = icmp eq i64 %index.next218, %n.vec215
  br i1 %i.iz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n220 = icmp eq i64 %n.vec215, %wide.trip.count
  br i1 %cmp.n220, label %._crit_edge195, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv206.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec215, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge195:                                   ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.ax
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 164
  %i.jb = load i8, ptr %i.ja, align 4
  %i.jc = icmp eq i8 %i.jb, 102
  br i1 %i.jc, label %bb.ay, label %bb.ba

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %vec.epilog.scalar.ph ], [ %indvars.iv206.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 3 uses
  %i.jd = trunc i64 %indvars.iv.next207 to i16
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %indvars.iv206
  store i16 %i.jd, ptr %i.je, align 2
  %exitcond.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge195, label %vec.epilog.scalar.ph, !llvm.loop !38

bb.ay:                                            ; preds = %._crit_edge195
  %i.jf = call fastcc i32 @ri_NullCheck(ptr noundef nonnull %i.ij, ptr noundef nonnull %4, i1 noundef zeroext false)
  %.not138 = icmp eq i32 %i.jf, 2
  br i1 %.not138, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jg = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.jh = call i32 @errcode(i32 noundef 50352322) #11 ; 0 uses
  %i.ji = load ptr, ptr %i.al, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.jl = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.40, ptr noundef nonnull %i.jj, ptr noundef nonnull %i.jk) #11 ; 0 uses
  %i.jm = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.41) #11 ; 0 uses
  %i.jn = call i32 @errtableconstraint(ptr noundef %1, ptr noundef nonnull %i.jk) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef 1934, ptr noundef nonnull @__func__.RI_Initial_Check) #11
  unreachable

bb.ba:                                            ; preds = %bb.ay, %._crit_edge195
  call fastcc void @ri_ReportViolation(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %1, ptr noundef nonnull %i.ij, ptr noundef %i.ii, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #13
  unreachable

bb.bb:                                            ; preds = %bb.aw
  %i.jo = call i32 @SPI_finish() #11
  %.not137 = icmp eq i32 %i.jo, 2
  br i1 %.not137, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jp = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.jq = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.13) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef 1950, ptr noundef nonnull @__func__.RI_Initial_Check) #11
  unreachable

bb.bd:                                            ; preds = %bb.bb
  call void @AtEOXact_GUC(i1 noundef zeroext true, i32 noundef %i.gx) #11
  br label %bb.be

bb.be:                                            ; preds = %bb.g, %bb.i, %._crit_edge, %bb.bd
  %.0127 = phi i1 [ true, %bb.bd ], [ false, %._crit_edge ], [ false, %bb.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i1 %.0127
}

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bms_add_member(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @ExecCheckPermissions(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @has_bypassrls_privilege(i32 noundef) local_unnamed_addr #2

declare i32 @GetUserId() local_unnamed_addr #2

declare zeroext i1 @object_ownercheck(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @appendStringInfoString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @attnumCollationId(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ri_GenerateQualCollation(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [131 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64
  %i.c = tail call ptr @SearchSysCache1(i32 noundef 16, i64 noundef %i.b) #11 ; 3 uses
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.e = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.77, i32 noundef %1) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef 2262, ptr noundef nonnull @__func__.ri_GenerateQualCollation) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 16
  %.val = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.h = load i8, ptr %i.g, align 2
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call ptr @get_namespace_name(i32 noundef %i.l) #11
  store i8 34, ptr %i.a, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i = phi ptr [ %i.a, %bb.d ], [ %.1.i, %bb.g ] ; 3 uses
  %.0.i = phi ptr [ %i.m, %bb.d ], [ %i.q, %bb.g ] ; 3 uses
  %.08.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 3 uses
  %i.n = load i8, ptr %.0.i, align 1              ; 2 uses
  switch i8 %i.n, label %bb.g [
    i8 0, label %quoteOneName.exit
    i8 34, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.pn.i, i64 2
  store i8 34, ptr %.08.i, align 1
  %.pre.i = load i8, ptr %.0.i, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = phi i8 [ %.pre.i, %bb.f ], [ %i.n, %bb.e ]
  %.1.i = phi ptr [ %i.o, %bb.f ], [ %.08.i, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.p, ptr %.1.i, align 1
  br label %bb.e, !llvm.loop !2

quoteOneName.exit:                                ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %.pn.i, i64 2
  store i8 34, ptr %.08.i, align 1
  store i8 0, ptr %i.s, align 1
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.a) #11
  store i8 34, ptr %i.a, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %quoteOneName.exit
  %.pn.i12 = phi ptr [ %i.a, %quoteOneName.exit ], [ %.1.i16, %bb.j ] ; 3 uses
  %.0.i13 = phi ptr [ %i.r, %quoteOneName.exit ], [ %i.w, %bb.j ] ; 3 uses
  %.08.i14 = getelementptr inbounds nuw i8, ptr %.pn.i12, i64 1 ; 3 uses
  %i.t = load i8, ptr %.0.i13, align 1            ; 2 uses
  switch i8 %i.t, label %bb.j [
    i8 0, label %quoteOneName.exit17
    i8 34, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.pn.i12, i64 2
  store i8 34, ptr %.08.i14, align 1
  %.pre.i15 = load i8, ptr %.0.i13, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = phi i8 [ %.pre.i15, %bb.i ], [ %i.t, %bb.h ]
  %.1.i16 = phi ptr [ %i.u, %bb.i ], [ %.08.i14, %bb.h ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i13, i64 1
  store i8 %i.v, ptr %.1.i16, align 1
  br label %bb.h, !llvm.loop !2

quoteOneName.exit17:                              ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.pn.i12, i64 2
  store i8 34, ptr %.08.i14, align 1
  store i8 0, ptr %i.x, align 1
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %0, ptr noundef nonnull @.str.79, ptr noundef nonnull %i.a) #11
  call void @ReleaseSysCache(ptr noundef nonnull %i.c) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %quoteOneName.exit17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare void @appendStringInfoChar(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare i32 @NewGUCNestLevel() local_unnamed_addr #2

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @set_config_option(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @SPI_prepare(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

end_hunk_0
begin_hunk_1_@RI_PartitionRemove_Check:bb.a
  %i.cu = call ptr @attnumAttName(ptr noundef %1, i32 noundef %i.ct) #11
  store i8 34, ptr %i.bu, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %quoteOneName.exit103
  %.pn.i104 = phi ptr [ %i.bu, %quoteOneName.exit103 ], [ %.1.i108, %bb.x ] ; 3 uses
  %.0.i105 = phi ptr [ %i.cu, %quoteOneName.exit103 ], [ %i.cy, %bb.x ] ; 3 uses
  %.08.i106 = getelementptr inbounds nuw i8, ptr %.pn.i104, i64 1 ; 3 uses
  %i.cv = load i8, ptr %.0.i105, align 1          ; 2 uses
  switch i8 %i.cv, label %bb.x [
    i8 0, label %quoteOneName.exit109
    i8 34, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn.i104, i64 2
  store i8 34, ptr %.08.i106, align 1
  %.pre.i107 = load i8, ptr %.0.i105, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cx = phi i8 [ %.pre.i107, %bb.w ], [ %i.cv, %bb.v ]
  %.1.i108 = phi ptr [ %i.cw, %bb.w ], [ %.08.i106, %bb.v ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i105, i64 1
  store i8 %i.cx, ptr %.1.i108, align 1
  br label %bb.v, !llvm.loop !2

quoteOneName.exit109:                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn.i104, i64 2
  store i8 34, ptr %.08.i106, align 1
  store i8 0, ptr %i.cz, align 1
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv132
  %i.db = load i32, ptr %i.da, align 4
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %3, ptr noundef nonnull @.str.76, ptr noundef nonnull %.174118) #11
  call void @generate_operator_clause(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i32 noundef %i.bz, i32 noundef %i.db, ptr noundef nonnull %i.d, i32 noundef %i.cd) #11
  %.not85 = icmp eq i32 %i.cg, %i.cj
  br i1 %.not85, label %bb.z, label %bb.y

bb.y:                                             ; preds = %quoteOneName.exit109
  call fastcc void @ri_GenerateQualCollation(ptr noundef %3, i32 noundef %i.cg)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %quoteOneName.exit109
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.dc = load i32, ptr %i.g, align 8
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp slt i64 %indvars.iv.next133, %i.dd
  br i1 %i.de, label %bb.r, label %._crit_edge121, !llvm.loop !44

._crit_edge121:                                   ; preds = %bb.z, %quoteRelationName.exit97
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dg = load i32, ptr %i.df, align 8
  %i.dh = call ptr @pg_get_partconstrdef_string(i32 noundef %i.dg, ptr noundef nonnull @.str.43) #11 ; 3 uses
  %.not = icmp eq ptr %i.dh, null
  br i1 %.not, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge121
  %i.di = load i8, ptr %i.dh, align 1
  %.not81 = icmp eq i8 %i.di, 0
  br i1 %.not81, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %3, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.dh) #11
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %._crit_edge121
  call void @appendStringInfoString(ptr noundef nonnull %3, ptr noundef nonnull @.str.45) #11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dj = load i32, ptr %i.g, align 8
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %bb.ad
  %i.dl = getelementptr inbounds nuw i8, ptr %i.f, i64 236
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 164
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph125, %bb.ak
  %indvars.iv135 = phi i64 [ 0, %.lr.ph125 ], [ %indvars.iv.next136, %bb.ak ] ; 2 uses
  %.275122 = phi ptr [ @.str.7, %.lr.ph125 ], [ %.376, %bb.ak ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %indvars.iv135
  %i.do = load i16, ptr %i.dn, align 2
  %i.dp = sext i16 %i.do to i32
  %i.dq = call ptr @attnumAttName(ptr noundef %1, i32 noundef %i.dp) #11
  store i8 34, ptr %i.d, align 16
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae
  %.pn.i110 = phi ptr [ %i.d, %bb.ae ], [ %.1.i114, %bb.ah ] ; 3 uses
  %.0.i111 = phi ptr [ %i.dq, %bb.ae ], [ %i.du, %bb.ah ] ; 3 uses
  %.08.i112 = getelementptr inbounds nuw i8, ptr %.pn.i110, i64 1 ; 3 uses
  %i.dr = load i8, ptr %.0.i111, align 1          ; 2 uses
  switch i8 %i.dr, label %bb.ah [
    i8 0, label %quoteOneName.exit115
    i8 34, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ds = getelementptr inbounds nuw i8, ptr %.pn.i110, i64 2
  store i8 34, ptr %.08.i112, align 1
  %.pre.i113 = load i8, ptr %.0.i111, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dt = phi i8 [ %.pre.i113, %bb.ag ], [ %i.dr, %bb.af ]
  %.1.i114 = phi ptr [ %i.ds, %bb.ag ], [ %.08.i112, %bb.af ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i111, i64 1
  store i8 %i.dt, ptr %.1.i114, align 1
  br label %bb.af, !llvm.loop !2

quoteOneName.exit115:                             ; preds = %bb.af
  %i.dv = getelementptr inbounds nuw i8, ptr %.pn.i110, i64 2
  store i8 34, ptr %.08.i112, align 1
  store i8 0, ptr %i.dv, align 1
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %3, ptr noundef nonnull @.str.31, ptr noundef %.275122, ptr noundef nonnull %i.d) #11
  %i.dw = load i8, ptr %i.dm, align 4
  switch i8 %i.dw, label %bb.ak [
    i8 115, label %bb.ai
    i8 102, label %bb.aj
  ]

bb.ai:                                            ; preds = %quoteOneName.exit115
  br label %bb.ak

bb.aj:                                            ; preds = %quoteOneName.exit115
  br label %bb.ak

bb.ak:                                            ; preds = %quoteOneName.exit115, %bb.ai, %bb.aj
  %.376 = phi ptr [ %.275122, %quoteOneName.exit115 ], [ @.str.32, %bb.ai ], [ @.str.33, %bb.aj ]
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.dx = load i32, ptr %i.g, align 8
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp slt i64 %indvars.iv.next136, %i.dy
  br i1 %i.dz, label %bb.ae, label %._crit_edge126, !llvm.loop !45

._crit_edge126:                                   ; preds = %bb.ak, %bb.ad
  call void @appendStringInfoChar(ptr noundef nonnull %3, i8 noundef signext 41) #11
  %i.ea = call i32 @NewGUCNestLevel() #11
  %i.eb = load i32, ptr @maintenance_work_mem, align 4
  %i.ec = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.e, i64 noundef 32, ptr noundef nonnull @.str.34, i32 noundef %i.eb) #11 ; 0 uses
  %i.ed = call i32 @set_config_option(ptr noundef nonnull @.str.35, ptr noundef nonnull %i.e, i32 noundef 6, i32 noundef 13, i32 noundef 2, i1 noundef zeroext true, i32 noundef 0, i1 noundef zeroext false) #11 ; 0 uses
  %i.ee = call i32 @set_config_option(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 6, i32 noundef 13, i32 noundef 2, i1 noundef zeroext true, i32 noundef 0, i1 noundef zeroext false) #11 ; 0 uses
  %i.ef = call i32 @SPI_connect() #11             ; 0 uses
  %i.eg = load ptr, ptr %3, align 8
  %i.eh = call ptr @SPI_prepare(ptr noundef %i.eg, i32 noundef 0, ptr noundef null) #11 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge126
  %i.ej = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.ek = load i32, ptr @SPI_result, align 4
  %i.el = call ptr @SPI_result_code_string(i32 noundef %i.ek) #11
  %i.em = load ptr, ptr %3, align 8
  %i.en = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.38, ptr noundef %i.el, ptr noundef %i.em) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef 2113, ptr noundef nonnull @__func__.RI_PartitionRemove_Check) #11
  unreachable

bb.am:                                            ; preds = %._crit_edge126
  %i.eo = call ptr @GetLatestSnapshot() #11
  %i.ep = call i32 @SPI_execute_snapshot(ptr noundef nonnull %i.eh, ptr noundef null, ptr noundef null, ptr noundef %i.eo, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext false, i64 noundef 1) #11 ; 2 uses
  %.not82 = icmp eq i32 %i.ep, 5
  br i1 %.not82, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.er = call ptr @SPI_result_code_string(i32 noundef %i.ep) #11
  %i.es = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.39, ptr noundef %i.er) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef 2130, ptr noundef nonnull @__func__.RI_PartitionRemove_Check) #11
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.et = load i64, ptr @SPI_processed, align 8
  %.not83 = icmp eq i64 %i.et, 0
  br i1 %.not83, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eu = load ptr, ptr @SPI_tuptable, align 8    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = load ptr, ptr %i.eu, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ez = call ptr @MakeSingleTupleTableSlot(ptr noundef %i.ey, ptr noundef nonnull @TTSOpsVirtual) #11 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8
  call void @heap_deform_tuple(ptr noundef %i.ex, ptr noundef %i.ey, ptr noundef %i.fb, ptr noundef %i.fd) #11
  %i.fe = call ptr @ExecStoreVirtualTuple(ptr noundef %i.ez) #11 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(728) %4, ptr noundef nonnull align 8 dereferenceable(728) %i.f, i64 728, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.fg = load i32, ptr %i.ff, align 8            ; 4 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %iter.check, label %._crit_edge130

iter.check:                                       ; preds = %bb.ap
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 172 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.fg to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.fg, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check145 = icmp ult i32 %i.fg, 16
  br i1 %min.iters.check145, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fj = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.fk = add <8 x i16> %vec.ind, splat (i16 8)
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %index ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <8 x i16> %vec.ind, ptr %i.fl, align 4
  store <8 x i16> %i.fk, ptr %i.fm, align 4
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge130, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.fj, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec146 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %5 = trunc i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %5, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index147 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next149, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind148 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next150, %vec.epilog.vector.body ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %index147
  store <4 x i16> %vec.ind148, ptr %i.fo, align 4
  %index.next149 = add nuw i64 %index147, 4       ; 2 uses
  %vec.ind.next150 = add <4 x i16> %vec.ind148, splat (i16 4)
  %i.fp = icmp eq i64 %index.next149, %n.vec146
  br i1 %i.fp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n151 = icmp eq i64 %n.vec146, %wide.trip.count
  br i1 %cmp.n151, label %._crit_edge130, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv138.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec146, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %vec.epilog.scalar.ph ], [ %indvars.iv138.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 3 uses
  %i.fq = trunc i64 %indvars.iv.next139 to i16
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %indvars.iv138
  store i16 %i.fq, ptr %i.fr, align 2
  %exitcond.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge130, label %vec.epilog.scalar.ph, !llvm.loop !48

._crit_edge130:                                   ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.ap
  call fastcc void @ri_ReportViolation(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %1, ptr noundef nonnull %i.ez, ptr noundef %i.ey, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.fs = call i32 @SPI_finish() #11
  %.not84 = icmp eq i32 %i.fs, 2
  br i1 %.not84, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ft = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.fu = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.13) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef 2164, ptr noundef nonnull @__func__.RI_PartitionRemove_Check) #11
  unreachable

bb.as:                                            ; preds = %bb.aq
  call void @AtEOXact_GUC(i1 noundef zeroext true, i32 noundef %i.ea) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

declare ptr @pg_get_partconstrdef_string(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 3) i32 @RI_FKey_trigger_type(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %switch.tableidx = add i32 %0, -1644            ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 12
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.RI_FKey_trigger_type, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @AtEOXact_RI(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @ri_fastpath_cache, align 8
  %i.b = icmp ne ptr %i.a, null
  %or.cond = select i1 %0, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #11
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.46) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef 4311, ptr noundef nonnull @__func__.AtEOXact_RI) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  store ptr null, ptr @ri_fastpath_cache, align 8
  store i1 false, ptr @ri_fastpath_callback_registered, align 1
  store i1 false, ptr @ri_fastpath_flushing, align 1
  ret void
}

declare zeroext i1 @AfterTriggerIsActive() local_unnamed_addr #2

declare i32 @GetCurrentTransactionNestLevel() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ri_FastPathCheck(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %3 = alloca [32 x %struct.ScanKeyData], align 16 ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  tail call void @CommandCounterIncrement() #11
  %i.e = tail call ptr @GetTransactionSnapshot() #11
  %i.f = tail call ptr @RegisterSnapshot(ptr noundef %i.e) #11 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.h = load i32, ptr %i.g, align 4
  %i.i = tail call ptr @table_open(i32 noundef %i.h, i32 noundef 2) #11 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.k = load i32, ptr %i.j, align 8
  %i.l = tail call ptr @index_open(i32 noundef %i.k, i32 noundef 1) #11 ; 5 uses
  %i.m = tail call ptr @table_slot_create(ptr noundef %i.i, ptr noundef null) #11 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.o = load i32, ptr %i.n, align 8
  %i.p = tail call ptr @index_beginscan(ptr noundef %i.i, ptr noundef %i.l, ptr noundef %i.f, ptr noundef null, i32 noundef %i.o, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  call void @GetUserIdAndSecContext(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load i32, ptr %i.s, align 4
  %i.u = load i32, ptr %i.d, align 4
  %i.v = or i32 %i.u, 5
  call void @SetUserIdAndSecContext(i32 noundef %i.t, i32 noundef %i.v) #11
  call fastcc void @ri_CheckPermissions(ptr noundef %i.i)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = load i32, ptr %0, align 8
  %i.aa = call fastcc ptr @ri_LoadConstraintInfo(i32 noundef %i.z) ; 2 uses
  call fastcc void @ri_populate_fastpath_metadata(ptr noundef %i.aa, ptr noundef %1, ptr noundef %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.aa, %bb.b ], [ %0, %bb.a ]   ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 168 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 8            ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i, label %build_index_scankeys.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 236
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.d

bb.d:                                             ; preds = %slot_getattr.exit.i, %.lr.ph.i
  %i.aj = phi i32 [ %i.ac, %.lr.ph.i ], [ %i.as, %slot_getattr.exit.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %slot_getattr.exit.i ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.al = load i16, ptr %i.ak, align 2            ; 2 uses
  %i.am = sext i16 %i.al to i32                   ; 2 uses
  %i.an = load i16, ptr %i.af, align 2
  %i.ao = icmp sgt i16 %i.al, %i.an
  br i1 %i.ao, label %slot_getsomeattrs.exit.i.i, label %slot_getattr.exit.i

slot_getsomeattrs.exit.i.i:                       ; preds = %bb.d
  %i.ap = load ptr, ptr %i.ag, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull %2, i32 noundef range(i32 -32767, 32768) %i.am) #11, !inline_history !3
  %.pre = load i32, ptr %i.ab, align 8
  br label %slot_getattr.exit.i

slot_getattr.exit.i:                              ; preds = %slot_getsomeattrs.exit.i.i, %bb.d
  %i.as = phi i32 [ %.pre, %slot_getsomeattrs.exit.i.i ], [ %i.aj, %bb.d ] ; 5 uses
  %i.at = load ptr, ptr %i.ah, align 8
  %i.au = add nsw i32 %i.am, -1
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !range !13, !noundef !14
  %i.ay = load ptr, ptr %i.ai, align 8
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.av
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = trunc nuw i8 %i.ax to i1
  %i.bd = select i1 %i.bc, i8 110, i8 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %i.bd, ptr %i.be, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bf = sext i32 %i.as to i64
  %i.bg = icmp slt i64 %indvars.iv.next.i, %i.bf
  br i1 %i.bg, label %bb.d, label %ri_ExtractValues.exit, !llvm.loop !4

ri_ExtractValues.exit:                            ; preds = %slot_getattr.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.0, i64 720
  %i.bi = load ptr, ptr %i.bh, align 8            ; 5 uses
  %i.bj = icmp sgt i32 %i.as, 0
  br i1 %i.bj, label %.lr.ph.i35, label %build_index_scankeys.exit
end_hunk_1
begin_hunk_2_@ri_LockPKTuple:bb.a
    i32 0, label %bb.b
    i32 4, label %bb.d
    i32 3, label %bb.f
    i32 2, label %bb.k
    i32 1, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i8, ptr %i.j, align 4, !range !13, !noundef !14
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 1
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.m = load i32, ptr @XactIsoLevel, align 4
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.o = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.p = call i32 @errcode(i32 noundef 16777220) #11 ; 0 uses
  %i.q = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.62) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef 3307, ptr noundef nonnull @__func__.ri_LockPKTuple) #11
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.r = load i32, ptr @XactIsoLevel, align 4
  %i.s = icmp sgt i32 %i.r, 1
  %i.t = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = call i32 @errcode(i32 noundef 16777220) #11 ; 0 uses
  %i.v = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.63) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef 3314, ptr noundef nonnull @__func__.ri_LockPKTuple) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.64, i32 noundef 3) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef 3321, ptr noundef nonnull @__func__.ri_LockPKTuple) #11
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.x = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.y = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.65) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef 3335, ptr noundef nonnull @__func__.ri_LockPKTuple) #11
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.z = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.aa = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.66, i32 noundef %i.i) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.14, i32 noundef 3339, ptr noundef nonnull @__func__.ri_LockPKTuple) #11
  unreachable

bb.k:                                             ; preds = %bb.a, %bb.d, %bb.b, %bb.c
  %.011 = phi i1 [ false, %bb.d ], [ true, %bb.b ], [ true, %bb.c ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i1 %.011
}

declare i64 @FunctionCall2Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @GetCurrentCommandId(i1 noundef zeroext) local_unnamed_addr #2

declare ptr @BuildIndexInfo(ptr noundef) local_unnamed_addr #2

declare void @FormIndexDatum(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @ri_FastPathProbeOne(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 3 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  tail call void @index_rescan(ptr noundef %2, ptr noundef nonnull %5, i32 noundef %6, ptr noundef null, i32 noundef 0) #11
  %i.d = tail call zeroext i1 @index_getnext_slot(ptr noundef %2, i32 noundef 1, ptr noundef %3) #11
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.e = call fastcc zeroext i1 @ri_LockPKTuple(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %i.c)
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.c, align 1, !range !13, !noundef !14
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @BuildIndexInfo(ptr noundef %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @FormIndexDatum(ptr noundef %i.h, ptr noundef %3, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %i.i = icmp slt i32 %6, 1
  br i1 %i.i, label %recheck_matched_pk_tuple.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %6 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %5, i64 %indvars.iv.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.q = load i64, ptr %i.p, align 8
  %i.r = call i64 @FunctionCall2Coll(ptr noundef nonnull %i.k, i32 noundef %i.m, i64 noundef %i.o, i64 noundef %i.q) #11
  %.not.not.i.not = icmp ne i64 %i.r, 0           ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond.not = select i1 %.not.not.i.not, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %recheck_matched_pk_tuple.exit, !llvm.loop !63

recheck_matched_pk_tuple.exit:                    ; preds = %.lr.ph.i, %bb.d
  %.lcssa.i = phi i1 [ true, %bb.d ], [ %.not.not.i.not, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %recheck_matched_pk_tuple.exit, %bb.b
  %.0 = phi i1 [ %.lcssa.i, %recheck_matched_pk_tuple.exit ], [ false, %bb.b ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.1 = phi i1 [ %.0, %bb.e ], [ false, %bb.a ]
  ret i1 %.1
}

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare void @generate_operator_clause(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #2

declare i32 @SPI_keepplan(ptr noundef) local_unnamed_addr #2

declare i32 @check_enable_rls(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @pg_attribute_aclcheck(i32 noundef, i16 noundef signext, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @getTypeOutputInfo(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OidOutputFunctionCall(i32 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @SPI_plan_is_valid(ptr noundef) local_unnamed_addr #2

declare i32 @SPI_freeplan(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @datum_image_eq(i64 noundef, i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn }
attributes #14 = { nounwind returns_twice }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{ptr @ri_NullCheck, null, null}
!1 = distinct !{!1, !15}
!2 = distinct !{!2, !15}
!3 = distinct !{null, null, null}
!4 = distinct !{!4, !15}
!5 = distinct !{null, null, null}
!6 = distinct !{!6, !15}
!7 = distinct !{!7, !15}
!8 = distinct !{!8, !15}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"branch_weights", i32 4, i32 12}
!19 = distinct !{null}
!20 = distinct !{null, null}
!21 = distinct !{!21, !15}
!22 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{null, null}
!31 = distinct !{null}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15, !16, !17}
!37 = distinct !{!37, !15, !16, !17}
!38 = distinct !{!38, !15, !17, !16}
!39 = distinct !{!39, !15}
!40 = distinct !{null, null}
!41 = distinct !{!41, !15, !42}
!42 = !{!"llvm.loop.peeled.count", i32 1}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15, !16, !17}
!47 = distinct !{!47, !15, !16, !17}
!48 = distinct !{!48, !15, !17, !16}
!49 = distinct !{null, null, null, null}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !15}
!52 = distinct !{null, null, null}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = distinct !{null, null, null, null}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{null}
!63 = distinct !{!63, !15}
end_hunk_2
