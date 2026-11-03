Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/subscriptioncmds?download=true
inline.NumInlined: 106
inline.NumDeleted: 27
begin_hunk_0_@AlterSubscription:bb.a
bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = call ptr @GetForeignServerByName(ptr noundef %i.iq, i1 noundef zeroext false) #8 ; 6 uses
  %i.is = load i32, ptr %i.ir, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 4 uses
  %i.iu = load i32, ptr %i.it, align 8
  %i.iv = call i32 @object_aclcheck(i32 noundef 1417, i32 noundef %i.is, i32 noundef %i.iu, i64 noundef 256) #8
  %.not213 = icmp eq i32 %i.iv, 0
  br i1 %.not213, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.iw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ix = call i32 @errcode(i32 noundef 16797828) #8 ; 0 uses
  %i.iy = load i32, ptr %i.it, align 8
  %i.iz = call ptr @GetUserNameFromId(i32 noundef %i.iy, i1 noundef zeroext false) #8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.29, ptr noundef %i.iz, ptr noundef %i.jb) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 1937, ptr noundef nonnull @__func__.AlterSubscription) #8
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.jd = load i32, ptr %i.it, align 8
  %i.je = load i32, ptr %i.ir, align 8
  %i.jf = call ptr @GetUserMapping(i32 noundef %i.jd, i32 noundef %i.je) #8 ; 0 uses
  %i.jg = load i32, ptr %i.it, align 8
  %i.jh = call ptr @ForeignServerConnectionString(i32 noundef %i.jg, ptr noundef nonnull %i.ir) #8 ; 2 uses
  call void @load_file(ptr noundef nonnull @.str.10, i1 noundef zeroext false) #8
  %i.ji = load ptr, ptr @WalReceiverFunctions, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = load i8, ptr %i.az, align 2, !range !6, !noundef !7
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jn = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.jo = load i8, ptr %i.jn, align 4, !range !6, !noundef !7
  %i.jp = trunc nuw i8 %i.jo to i1
  %i.jq = xor i1 %i.jp, true
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.jr = phi i1 [ false, %bb.bt ], [ %i.jq, %bb.bu ]
  call void %i.jk(ptr noundef %i.jh, i1 noundef zeroext %i.jr) #8
  %i.js = load i32, ptr %i.ir, align 8
  %i.jt = zext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i64 %i.jt, ptr %i.ju, align 16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 1, ptr %i.jv, align 16
  store i32 1417, ptr %5, align 4
  %i.jw = load i32, ptr %i.ir, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.jw, ptr %i.jx, align 4
  %i.jy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.jy, align 4
  call void @recordDependencyOn(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 110) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.jz = load i8, ptr %i.ar, align 1, !range !6, !noundef !7
  br label %bb.dk

bb.bw:                                            ; preds = %bb.k
  %i.ka = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.kb = load i32, ptr %i.ka, align 8            ; 2 uses
  %.not211 = icmp eq i32 %i.kb, 0
  br i1 %.not211, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kc = load i32, ptr %i.u, align 8
  %i.kd = call i64 @deleteDependencyRecordsForSpecific(i32 noundef 6100, i32 noundef %i.kc, i8 noundef signext 110, i32 noundef 1417, i32 noundef %i.kb) #8 ; 0 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i64 0, ptr %i.ke, align 16
  %i.kf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 1, ptr %i.kf, align 16
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8            ; 2 uses
  call void @load_file(ptr noundef nonnull @.str.10, i1 noundef zeroext false) #8
  %i.ki = load ptr, ptr @WalReceiverFunctions, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = load i8, ptr %i.az, align 2, !range !6, !noundef !7
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.kn = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.ko = load i8, ptr %i.kn, align 4, !range !6, !noundef !7
  %i.kp = trunc nuw i8 %i.ko to i1
  %i.kq = xor i1 %i.kp, true
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.kr = phi i1 [ false, %bb.by ], [ %i.kq, %bb.bz ]
  call void %i.kk(ptr noundef %i.kh, i1 noundef zeroext %i.kr) #8
  %i.ks = load ptr, ptr %i.kg, align 8
  %i.kt = call ptr @cstring_to_text(ptr noundef %i.ks) #8
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store i64 %i.ku, ptr %i.kv, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  store i8 1, ptr %i.kw, align 1
  %i.kx = load i8, ptr %i.ar, align 1, !range !6, !noundef !7
  br label %bb.dk

bb.cb:                                            ; preds = %bb.k
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8            ; 4 uses
  %i.la = load ptr, ptr @CurrentMemoryContext, align 8
  %i.lb = call ptr @AllocSetContextCreateInternal(ptr noundef %i.la, ptr noundef nonnull @.str.97, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #8 ; 2 uses
  %i.lc = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.lb, ptr @CurrentMemoryContext, align 8
  %.not.i.i = icmp eq ptr %i.kz, null             ; 2 uses
  br i1 %.not.i.i, label %list_length.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.le = load i32, ptr %i.ld, align 4
  %i.lf = sext i32 %i.le to i64
  br label %list_length.exit.i

list_length.exit.i:                               ; preds = %bb.cc, %bb.cb
  %i.lg = phi i64 [ %i.lf, %bb.cc ], [ 0, %bb.cb ]
  %i.lh = call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.lg) #8 ; 2 uses
  call fastcc void @check_duplicates_in_publist(ptr noundef readonly %i.kz, ptr noundef %i.lh)
  store ptr %i.lc, ptr @CurrentMemoryContext, align 8
  br i1 %.not.i.i, label %publicationListToArray.exit, label %bb.cd

bb.cd:                                            ; preds = %list_length.exit.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.lj = load i32, ptr %i.li, align 4
  br label %publicationListToArray.exit

publicationListToArray.exit:                      ; preds = %list_length.exit.i, %bb.cd
  %i.lk = phi i32 [ %i.lj, %bb.cd ], [ 0, %list_length.exit.i ]
  %i.ll = call ptr @construct_array_builtin(ptr noundef %i.lh, i32 noundef %i.lk, i32 noundef 25) #8
  call void @MemoryContextDelete(ptr noundef %i.lb) #8
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store i64 %i.lm, ptr %i.ln, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  store i8 1, ptr %i.lo, align 1
  %i.lp = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.lq = load i8, ptr %i.lp, align 4, !range !6, !noundef !7
  %i.lr = trunc nuw i8 %i.lq to i1
  br i1 %i.lr, label %bb.ce, label %bb.dk

bb.ce:                                            ; preds = %publicationListToArray.exit
  %i.ls = getelementptr inbounds nuw i8, ptr %i.aq, i64 37
  %i.lt = load i8, ptr %i.ls, align 1, !range !6, !noundef !7
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.lw = call i32 @errcode(i32 noundef 325) #8   ; 0 uses
  %i.lx = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.30) #8 ; 0 uses
  %i.ly = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.31) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 2016, ptr noundef nonnull @__func__.AlterSubscription) #8
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.lz = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.ma = load i8, ptr %i.lz, align 8
  %i.mb = icmp eq i8 %i.ma, 101
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 27 ; 2 uses
  %i.md = load i8, ptr %i.mc, align 1, !range !6
  %i.me = trunc nuw i8 %i.md to i1
  %or.cond14 = select i1 %i.mb, i1 %i.me, i1 false
  br i1 %or.cond14, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.mf = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.mg = call i32 @errcode(i32 noundef 325) #8   ; 0 uses
  %i.mh = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.32) #8 ; 0 uses
  %i.mi = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.33) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 2026, ptr noundef nonnull @__func__.AlterSubscription) #8
  unreachable

bb.ci:                                            ; preds = %bb.cg
  call void @PreventInTransactionBlock(i1 noundef zeroext %2, ptr noundef nonnull @.str.34) #8
  %i.mj = load ptr, ptr %i.ky, align 8            ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  store ptr %i.mj, ptr %i.mk, align 8
  %i.ml = load i8, ptr %i.mc, align 1, !range !6, !noundef !7
  %i.mm = trunc nuw i8 %i.ml to i1
  call fastcc void @AlterSubscription_refresh(ptr noundef nonnull %i.aq, i1 noundef zeroext %i.mm, ptr noundef %i.mj)
  br label %bb.dk

bb.cj:                                            ; preds = %bb.k, %bb.k
  %i.mn = icmp eq i32 %i.bj, 4                    ; 4 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.aq, i64 88 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8            ; 4 uses
  %i.ms = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.mt = call ptr @list_copy(ptr noundef %i.mp) #8 ; 5 uses
  call fastcc void @check_duplicates_in_publist(ptr noundef readonly %i.mr, ptr noundef null)
  %.not42.i = icmp eq ptr %i.mr, null
  br i1 %.not42.i, label %.critedge.i, label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %bb.cj
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 4 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 16 ; 2 uses
  %i.mw = load i32, ptr %i.mu, align 4
  %i.mx = icmp sgt i32 %i.mw, 0                   ; 2 uses
  br i1 %i.mn, label %.lr.ph.a, label %.lr.ph76.split.i.preheader

.lr.ph76.split.i.preheader:                       ; preds = %.lr.ph76.i
  br i1 %i.mx, label %.lr.ph.split, label %.critedge.i

.lr.ph.a:                                         ; preds = %.lr.ph76.i
  br i1 %i.mx, label %.lr.ph.split.us, label %.critedge.i

.lr.ph.split.us:                                  ; preds = %.lr.ph.a, %.critedge49.i.us
  %.03874.i278.us = phi ptr [ %i.no, %.critedge49.i.us ], [ %i.mt, %.lr.ph.a ] ; 4 uses
  %indvars.iv82.i277.us = phi i64 [ %indvars.iv.next83.i.us, %.critedge49.i.us ], [ 0, %.lr.ph.a ] ; 2 uses
  %i.my = load ptr, ptr %i.mv, align 8
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %indvars.iv82.i277.us
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8            ; 3 uses
  %.not45.i.us = icmp eq ptr %.03874.i278.us, null
  br i1 %.not45.i.us, label %.critedge49.i.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us
  %i.nd = getelementptr inbounds nuw i8, ptr %.03874.i278.us, i64 4
  %i.ne = load i32, ptr %i.nd, align 4            ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, 0
  br i1 %i.nf, label %.lr.ph72.i.us, label %.critedge49.i.us

.lr.ph72.i.us:                                    ; preds = %.lr.ph.i.us
  %i.ng = getelementptr inbounds nuw i8, ptr %.03874.i278.us, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8
  %wide.trip.count.i.us = zext nneg i32 %i.ne to i64
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %.lr.ph72.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph72.i.us ], [ %indvars.iv.next.i.us, %bb.cl ] ; 2 uses
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv.i.us
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nc, ptr noundef nonnull dereferenceable(1) %i.nl) #12
  %.not47.i.us = icmp eq i32 %i.nm, 0
  br i1 %.not47.i.us, label %.split.us, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %.critedge49.i.us, label %bb.ck

.critedge49.i.us:                                 ; preds = %bb.cl, %.lr.ph.i.us, %.lr.ph.split.us
  %i.nn = call ptr @makeString(ptr noundef %i.nc) #8
  %i.no = call ptr @lappend(ptr noundef %.03874.i278.us, ptr noundef %i.nn) #8 ; 2 uses
  %indvars.iv.next83.i.us = add nuw nsw i64 %indvars.iv82.i277.us, 1 ; 2 uses
  %i.np = load i32, ptr %i.mu, align 4
  %i.nq = sext i32 %i.np to i64
  %i.nr = icmp slt i64 %indvars.iv.next83.i.us, %i.nq
  br i1 %i.nr, label %.lr.ph.split.us, label %.critedge.i

.lr.ph.split:                                     ; preds = %.lr.ph76.split.i.preheader, %.thread59.i
  %.03874.i278 = phi ptr [ %i.ol, %.thread59.i ], [ %i.mt, %.lr.ph76.split.i.preheader ] ; 4 uses
  %indvars.iv82.i277 = phi i64 [ %indvars.iv.next83.i, %.thread59.i ], [ 0, %.lr.ph76.split.i.preheader ] ; 2 uses
  %i.ns = load ptr, ptr %i.mv, align 8
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %indvars.iv82.i277
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8            ; 2 uses
  %.not45.i = icmp eq ptr %.03874.i278, null
  br i1 %.not45.i, label %.critedge49.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.split
  %i.nx = getelementptr inbounds nuw i8, ptr %.03874.i278, i64 4
  %i.ny = load i32, ptr %i.nx, align 4            ; 2 uses
  %i.nz = icmp sgt i32 %i.ny, 0
  br i1 %i.nz, label %.lr.ph72.i, label %.critedge49.i

.lr.ph72.i:                                       ; preds = %.lr.ph.i
  %i.oa = getelementptr inbounds nuw i8, ptr %.03874.i278, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8
  %wide.trip.count.i = zext nneg i32 %i.ny to i64
  br label %bb.cm

.critedge.i:                                      ; preds = %.thread59.i, %.critedge49.i.us, %.lr.ph76.split.i.preheader, %.lr.ph.a, %bb.cj
  %.038.lcssa.i = phi ptr [ %i.mt, %bb.cj ], [ %i.no, %.critedge49.i.us ], [ %i.mt, %.lr.ph.a ], [ %i.mt, %.lr.ph76.split.i.preheader ], [ %i.ol, %.thread59.i ] ; 4 uses
  %.not44.i = icmp eq ptr %.038.lcssa.i, null
  br i1 %.not44.i, label %bb.co, label %publicationListToArray.exit245

bb.cm:                                            ; preds = %bb.cn, %.lr.ph72.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph72.i ], [ %indvars.iv.next.i, %bb.cn ] ; 3 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv.i
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load ptr, ptr %i.oe, align 8
  %i.og = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nw, ptr noundef nonnull dereferenceable(1) %i.of) #12
  %.not47.i = icmp eq i32 %i.og, 0
  br i1 %.not47.i, label %.thread59.i, label %bb.cn

.split.us:                                        ; preds = %bb.ck
  %i.oh = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.oi = call i32 @errcode(i32 noundef 290948) #8 ; 0 uses
  %i.oj = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.144, ptr noundef nonnull %i.nc, ptr noundef %i.ms) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 3446, ptr noundef nonnull @__func__.merge_publications) #8
  unreachable

.thread59.i:                                      ; preds = %bb.cm
  %i.ok = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ol = call ptr @list_delete_nth_cell(ptr noundef nonnull %.03874.i278, i32 noundef %i.ok) #8 ; 2 uses
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i277, 1 ; 2 uses
  %i.om = load i32, ptr %i.mu, align 4
  %i.on = sext i32 %i.om to i64
  %i.oo = icmp slt i64 %indvars.iv.next83.i, %i.on
  br i1 %i.oo, label %.lr.ph.split, label %.critedge.i

bb.cn:                                            ; preds = %bb.cm
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge49.i, label %bb.cm

.critedge49.i:                                    ; preds = %.lr.ph.i, %.lr.ph.split, %bb.cn
  %i.op = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.oq = call i32 @errcode(i32 noundef 117833860) #8 ; 0 uses
  %i.or = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.145, ptr noundef %i.nw, ptr noundef %i.ms) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 3460, ptr noundef nonnull @__func__.merge_publications) #8
  unreachable

bb.co:                                            ; preds = %.critedge.i
  %i.os = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ot = call i32 @errcode(i32 noundef 117833860) #8 ; 0 uses
  %i.ou = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.146) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 3470, ptr noundef nonnull @__func__.merge_publications) #8
  unreachable

publicationListToArray.exit245:                   ; preds = %.critedge.i
  %i.ov = load ptr, ptr @CurrentMemoryContext, align 8
  %i.ow = call ptr @AllocSetContextCreateInternal(ptr noundef %i.ov, ptr noundef nonnull @.str.97, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #8 ; 2 uses
  %i.ox = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.ow, ptr @CurrentMemoryContext, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %.038.lcssa.i, i64 4 ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 4
  %i.pa = sext i32 %i.oz to i64
  %i.pb = call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.pa) #8 ; 2 uses
  call fastcc void @check_duplicates_in_publist(ptr noundef nonnull readonly %.038.lcssa.i, ptr noundef %i.pb)
  store ptr %i.ox, ptr @CurrentMemoryContext, align 8
  %i.pc = load i32, ptr %i.oy, align 4
  %i.pd = call ptr @construct_array_builtin(ptr noundef %i.pb, i32 noundef %i.pc, i32 noundef 25) #8
  call void @MemoryContextDelete(ptr noundef %i.ow) #8
  %i.pe = ptrtoint ptr %i.pd to i64
  %i.pf = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store i64 %i.pe, ptr %i.pf, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  store i8 1, ptr %i.pg, align 1
  %i.ph = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.pi = load i8, ptr %i.ph, align 4, !range !6, !noundef !7
  %i.pj = trunc nuw i8 %i.pi to i1
  br i1 %i.pj, label %bb.cp, label %bb.dk

bb.cp:                                            ; preds = %publicationListToArray.exit245
  br i1 %i.mn, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.pk = load ptr, ptr %i.mq, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %i.pl = phi ptr [ %i.pk, %bb.cq ], [ null, %bb.cp ]
  %i.pm = getelementptr inbounds nuw i8, ptr %i.aq, i64 37
  %i.pn = load i8, ptr %i.pm, align 1, !range !6, !noundef !7
  %i.po = trunc nuw i8 %i.pn to i1
  br i1 %i.po, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.pp = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.pq = call i32 @errcode(i32 noundef 325) #8   ; 0 uses
  %i.pr = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.30) #8 ; 0 uses
  %i.ps = select i1 %i.mn, ptr @.str.36, ptr @.str.37
  %i.pt = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.35, ptr noundef nonnull %i.ps) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 2067, ptr noundef nonnull @__func__.AlterSubscription) #8
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.pu = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.pv = load i8, ptr %i.pu, align 8
  %i.pw = icmp eq i8 %i.pv, 101
  %i.px = getelementptr inbounds nuw i8, ptr %4, i64 27 ; 2 uses
  %i.py = load i8, ptr %i.px, align 1, !range !6
  %i.pz = trunc nuw i8 %i.py to i1
  %or.cond17 = select i1 %i.pw, i1 %i.pz, i1 false
  br i1 %or.cond17, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.qa = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.qb = call i32 @errcode(i32 noundef 325) #8   ; 0 uses
  %i.qc = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.32) #8 ; 0 uses
  %i.qd = select i1 %i.mn, ptr @.str.39, ptr @.str.40
  %i.qe = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.38, ptr noundef nonnull %i.qd) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 2081, ptr noundef nonnull @__func__.AlterSubscription) #8
  unreachable

bb.cv:                                            ; preds = %bb.ct
  call void @PreventInTransactionBlock(i1 noundef zeroext %2, ptr noundef nonnull @.str.34) #8
  store ptr %.038.lcssa.i, ptr %i.mo, align 8
  %i.qf = load i8, ptr %i.px, align 1, !range !6, !noundef !7
  %i.qg = trunc nuw i8 %i.qf to i1
  call fastcc void @AlterSubscription_refresh(ptr noundef nonnull %i.aq, i1 noundef zeroext %i.qg, ptr noundef %i.pl)
  br label %bb.dk

bb.cw:                                            ; preds = %bb.k
  %i.qh = getelementptr inbounds nuw i8, ptr %i.aq, i64 37
  %i.qi = load i8, ptr %i.qh, align 1, !range !6, !noundef !7
  %i.qj = trunc nuw i8 %i.qi to i1
  br i1 %i.qj, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.qk = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ql = call i32 @errcode(i32 noundef 325) #8   ; 0 uses
  %i.qm = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 2101, ptr noundef nonnull @__func__.AlterSubscription) #8
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.qn = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.qo = load i8, ptr %i.qn, align 8
  %i.qp = icmp eq i8 %i.qo, 101
  %i.qq = getelementptr inbounds nuw i8, ptr %4, i64 27 ; 2 uses
  %i.qr = load i8, ptr %i.qq, align 1, !range !6
  %i.qs = trunc nuw i8 %i.qr to i1
  %or.cond20 = select i1 %i.qp, i1 %i.qs, i1 false
  br i1 %or.cond20, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.qt = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.qu = call i32 @errcode(i32 noundef 16801924) #8 ; 0 uses
  %i.qv = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.43) #8 ; 0 uses
  %i.qw = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.44) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 2124, ptr noundef nonnull @__func__.AlterSubscription) #8
  unreachable

bb.da:                                            ; preds = %bb.cy
  call void @PreventInTransactionBlock(i1 noundef zeroext %2, ptr noundef nonnull @.str.42) #8
  %i.qx = load i8, ptr %i.qq, align 1, !range !6, !noundef !7
  %i.qy = trunc nuw i8 %i.qx to i1
  call fastcc void @AlterSubscription_refresh(ptr noundef nonnull %i.aq, i1 noundef zeroext %i.qy, ptr noundef null)
  br label %bb.dl

bb.db:                                            ; preds = %bb.k
  %i.qz = getelementptr inbounds nuw i8, ptr %i.aq, i64 37
  %i.ra = load i8, ptr %i.qz, align 1, !range !6, !noundef !7
  %i.rb = trunc nuw i8 %i.ra to i1
  br i1 %i.rb, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.rc = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.rd = call i32 @errcode(i32 noundef 325) #8   ; 0 uses
  %i.re = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.45) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 2139, ptr noundef nonnull @__func__.AlterSubscription) #8
  unreachable

bb.dd:                                            ; preds = %bb.db
  call fastcc void @AlterSubscription_refresh_seq(ptr noundef nonnull %i.aq)
  br label %bb.dl

bb.de:                                            ; preds = %bb.k
  %i.rf = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.rg = load i64, ptr %i.rf, align 8
  %.not209 = icmp eq i64 %i.rg, 0
  br i1 %.not209, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @ReplicationOriginNameForLogicalRep(i32 noundef %i.v, i32 noundef 0, ptr noundef nonnull %i.d, i64 noundef 64) #8
  %i.rh = call zeroext i16 @replorigin_by_name(ptr noundef nonnull %i.d, i1 noundef zeroext false) #8
  %i.ri = call i64 @replorigin_get_progress(i16 noundef zeroext %i.rh, i1 noundef zeroext false) #8 ; 4 uses
  %.not210 = icmp ne i64 %i.ri, 0
  %i.rj = load i64, ptr %i.rf, align 8            ; 2 uses
  %i.rk = icmp ult i64 %i.rj, %i.ri
  %or.cond240 = select i1 %.not210, i1 %i.rk, i1 false
  br i1 %or.cond240, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.rl = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.rm = call i32 @errcode(i32 noundef 50856066) #8 ; 0 uses
  %i.rn = load i64, ptr %i.rf, align 8            ; 2 uses
  %i.ro = lshr i64 %i.rn, 32
  %i.rp = trunc nuw i64 %i.ro to i32
  %i.rq = trunc i64 %i.rn to i32
  %i.rr = lshr i64 %i.ri, 32
  %i.rs = trunc nuw i64 %i.rr to i32
  %i.rt = trunc i64 %i.ri to i32
  %i.ru = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.46, i32 noundef %i.rp, i32 noundef %i.rq, i32 noundef %i.rs, i32 noundef %i.rt) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 2172, ptr noundef nonnull @__func__.AlterSubscription) #8
  unreachable

bb.dh:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.de
  %i.rv = phi i64 [ %i.rj, %bb.dh ], [ 0, %bb.de ]
  %i.rw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.rv, ptr %i.rw, align 16
  %i.rx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 1, ptr %i.rx, align 2
  br label %bb.dk

bb.dj:                                            ; preds = %bb.k
  %i.ry = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.rz = load i32, ptr %i.z, align 4
  %i.sa = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.47, i32 noundef %i.rz) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 2184, ptr noundef nonnull @__func__.AlterSubscription) #8
  unreachable

bb.dk:                                            ; preds = %bb.di, %bb.bn, %bb.bv, %bb.ca, %bb.ci, %publicationListToArray.exit, %bb.bh, %bb.bi, %bb.cv, %publicationListToArray.exit245
  %.1197.ph = phi i1 [ false, %publicationListToArray.exit245 ], [ false, %bb.cv ], [ %.not224, %bb.bi ], [ %.not224, %bb.bh ], [ false, %publicationListToArray.exit ], [ false, %bb.ci ], [ false, %bb.ca ], [ false, %bb.bv ], [ false, %bb.bn ], [ false, %bb.di ]
  %.1195.ph = phi i1 [ false, %publicationListToArray.exit245 ], [ false, %bb.cv ], [ %.0194, %bb.bi ], [ %.0194, %bb.bh ], [ false, %publicationListToArray.exit ], [ false, %bb.ci ], [ false, %bb.ca ], [ false, %bb.bv ], [ false, %bb.bn ], [ false, %bb.di ]
  %.2.ph = phi i8 [ 0, %publicationListToArray.exit245 ], [ 0, %bb.cv ], [ %.1193, %bb.bi ], [ %.1193, %bb.bh ], [ 0, %publicationListToArray.exit ], [ 0, %bb.ci ], [ %i.kx, %bb.ca ], [ %i.jz, %bb.bv ], [ %i.ii, %bb.bn ], [ 0, %bb.di ]
  %.1191.ph = phi i8 [ %i.as, %publicationListToArray.exit245 ], [ %i.as, %bb.cv ], [ %.0190, %bb.bi ], [ %.0190, %bb.bh ], [ %i.as, %publicationListToArray.exit ], [ %i.as, %bb.ci ], [ %i.as, %bb.ca ], [ %i.as, %bb.bv ], [ %i.as, %bb.bn ], [ %i.as, %bb.di ]
  %.0186.ph = phi ptr [ null, %publicationListToArray.exit245 ], [ null, %bb.cv ], [ null, %bb.bi ], [ null, %bb.bh ], [ null, %publicationListToArray.exit ], [ null, %bb.ci ], [ %i.kh, %bb.ca ], [ %i.jh, %bb.bv ], [ null, %bb.bn ], [ null, %bb.di ]
  %.1.ph = phi ptr [ %i.au, %publicationListToArray.exit245 ], [ %i.au, %bb.cv ], [ %.0185, %bb.bi ], [ %.0185, %bb.bh ], [ %i.au, %publicationListToArray.exit ], [ %i.au, %bb.ci ], [ %i.au, %bb.ca ], [ %i.au, %bb.bv ], [ %i.au, %bb.bn ], [ %i.au, %bb.di ]
  %i.sb = getelementptr inbounds nuw i8, ptr %i.f, i64 64
end_hunk_0
