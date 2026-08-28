Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/acct_policy?download=true
inline.NumInlined: 112
inline.NumDeleted: 11
begin_hunk_0_@acct_policy_job_runnable_post_select:bb.a
  br label %.thread328

bb.cq:                                            ; preds = %bb.co
  %i.sf = load ptr, ptr %i.cg, align 8
  br label %.lr.ph.split.us.split.i248

.lr.ph.split.us.split.i248:                       ; preds = %bb.cq, %bb.cu
  %indvars.iv57.i249 = phi i64 [ %indvars.iv.next58.i251, %bb.cu ], [ 0, %bb.cq ] ; 8 uses
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %i.qx, i64 %indvars.iv57.i249
  %i.sh = load i16, ptr %i.sg, align 2
  %i.si = icmp eq i16 %i.sh, -1
  br i1 %i.si, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.split.us.split.i248
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv57.i249
  %i.sk = load i64, ptr %i.sj, align 8
  %.not.us.i250 = icmp eq i64 %i.sk, -1
  br i1 %.not.us.i250, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv57.i249
  %i.sm = load i64, ptr %i.sl, align 8            ; 3 uses
  %i.sn = icmp eq i64 %i.sm, -1
  br i1 %i.sn, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv57.i249
  %i.sp = load i64, ptr %i.so, align 8
  %i.sq = icmp ugt i64 %i.sp, %i.sm
  br i1 %i.sq, label %_validate_tres_limits_for_assoc.exit252, label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr, %.lr.ph.split.us.split.i248
  %indvars.iv.next58.i251 = add nuw nsw i64 %indvars.iv57.i249, 1 ; 2 uses
  %exitcond467.not = icmp eq i64 %indvars.iv.next58.i251, %i.qy
  br i1 %exitcond467.not, label %.thread326.loopexit, label %.lr.ph.split.us.split.i248, !llvm.loop !29

_validate_tres_limits_for_assoc.exit252:          ; preds = %bb.ct
  %i.sr = trunc nuw nsw i64 %indvars.iv57.i249 to i32
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 1040
  call void @slurm_xfree(ptr noundef nonnull %i.ss) #14
  %i.st = call fastcc i32 @_get_tres_state_reason(i32 noundef %i.sr, i32 noundef 81)
  store i32 %i.st, ptr %i.p, align 8
  %i.su = call i32 @get_log_level() #14
  %i.sv = icmp sgt i32 %i.su, 5
  br i1 %i.sv, label %bb.cv, label %.thread328

bb.cv:                                            ; preds = %_validate_tres_limits_for_assoc.exit252
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv57.i249
  %i.sx = getelementptr inbounds nuw i8, ptr %.0180422, i64 132
  %i.sy = load i32, ptr %i.sx, align 4
  %i.sz = getelementptr inbounds nuw i8, ptr %.0180422, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8
  %i.tb = getelementptr inbounds nuw i8, ptr %.0180422, i64 312
  %i.tc = load ptr, ptr %i.tb, align 8
  %i.td = getelementptr inbounds nuw i8, ptr %.0180422, i64 264
  %i.te = load ptr, ptr %i.td, align 8
  %i.tf = load ptr, ptr @assoc_mgr_tres_name_array, align 8
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %indvars.iv57.i249
  %i.th = load ptr, ptr %i.tg, align 8
  %i.ti = load i64, ptr %i.sw, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.15, ptr noundef nonnull %0, i32 noundef %i.sy, ptr noundef %i.ta, ptr noundef %i.tc, ptr noundef %i.te, ptr noundef %i.th, i64 noundef %i.sm, i64 noundef %i.ti) #14
  br label %.thread328

.thread326.loopexit:                              ; preds = %bb.cu
  store i32 %i.qz, ptr %i.a, align 4
  br label %.thread326

.thread326:                                       ; preds = %.thread500, %.thread326.loopexit
  %i.tj = phi ptr [ %i.qt, %.thread500 ], [ %i.qx, %.thread326.loopexit ]
  %i.tk = getelementptr inbounds nuw i8, ptr %.0180422, i64 232
  %i.tl = load ptr, ptr %i.tk, align 8
  %i.tm = load ptr, ptr %i.ch, align 8
  %i.tn = call fastcc zeroext i1 @_validate_tres_limits_for_assoc(ptr noundef %i.a, ptr noundef %1, i64 noundef %i.jm, ptr noundef %i.tl, ptr noundef %i.tm, ptr noundef %i.tj, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.tn, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %.thread326
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 1040
  call void @slurm_xfree(ptr noundef nonnull %i.to) #14
  %i.tp = load i32, ptr %i.a, align 4             ; 2 uses
  %i.tq = call fastcc i32 @_get_tres_state_reason(i32 noundef %i.tp, i32 noundef 82)
  store i32 %i.tq, ptr %i.p, align 8
  %i.tr = call i32 @get_log_level() #14
  %i.ts = icmp sgt i32 %i.tr, 5
  br i1 %i.ts, label %bb.cx, label %.thread328

bb.cx:                                            ; preds = %bb.cw
  %i.tt = getelementptr inbounds nuw i8, ptr %.0180422, i64 232
  %i.tu = getelementptr inbounds nuw i8, ptr %.0180422, i64 132
  %i.tv = load i32, ptr %i.tu, align 4
  %i.tw = getelementptr inbounds nuw i8, ptr %.0180422, i64 8
  %i.tx = load ptr, ptr %i.tw, align 8
  %i.ty = getelementptr inbounds nuw i8, ptr %.0180422, i64 312
  %i.tz = load ptr, ptr %i.ty, align 8
  %i.ua = getelementptr inbounds nuw i8, ptr %.0180422, i64 264
  %i.ub = load ptr, ptr %i.ua, align 8
  %i.uc = load ptr, ptr @assoc_mgr_tres_name_array, align 8
  %i.ud = sext i32 %i.tp to i64                   ; 3 uses
  %i.ue = getelementptr inbounds [8 x i8], ptr %i.uc, i64 %i.ud
  %i.uf = load ptr, ptr %i.ue, align 8
  %i.ug = load ptr, ptr %i.tt, align 8
  %i.uh = getelementptr inbounds [8 x i8], ptr %i.ug, i64 %i.ud
  %i.ui = load i64, ptr %i.uh, align 8
  %i.uj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ud
  %i.uk = load i64, ptr %i.uj, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.16, ptr noundef nonnull %0, i32 noundef %i.tv, ptr noundef %i.tx, ptr noundef %i.tz, ptr noundef %i.ub, ptr noundef %i.uf, i64 noundef %i.ui, i64 noundef %i.uk) #14
  br label %.thread328

bb.cy:                                            ; preds = %.thread, %.thread326, %bb.ck
  %.pn.in = getelementptr inbounds nuw i8, ptr %.0180422, i64 296
  %.pn = load ptr, ptr %.pn.in, align 8
  %.1181.in = getelementptr inbounds nuw i8, ptr %.pn, i64 72
  %.0180 = load ptr, ptr %.1181.in, align 8       ; 2 uses
  %.not203 = icmp eq ptr %.0180, null
  br i1 %.not203, label %.thread328, label %bb.v

.thread328:                                       ; preds = %bb.cy, %.thread314, %bb.cw, %bb.cx, %bb.cv, %bb.cp, %bb.cj, %bb.ce, %bb.bv, %bb.bq, %bb.bd, %bb.ay, %bb.at, %_get_tres_state_reason.exit, %_get_tres_state_reason.exit220, %_get_tres_state_reason.exit225, %_get_tres_state_reason.exit230, %_get_tres_state_reason.exit235, %_get_tres_state_reason.exit240, %_get_tres_state_reason.exit245, %_validate_tres_limits_for_assoc.exit, %_validate_tres_limits_for_assoc.exit252, %bb.r, %bb.q
  %.4 = phi i1 [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.cw ], [ false, %_validate_tres_limits_for_assoc.exit252 ], [ false, %_validate_tres_limits_for_assoc.exit ], [ false, %_get_tres_state_reason.exit245 ], [ false, %_get_tres_state_reason.exit240 ], [ false, %_get_tres_state_reason.exit235 ], [ false, %_get_tres_state_reason.exit230 ], [ false, %_get_tres_state_reason.exit225 ], [ false, %_get_tres_state_reason.exit220 ], [ false, %_get_tres_state_reason.exit ], [ false, %bb.at ], [ false, %bb.ay ], [ false, %bb.bd ], [ false, %bb.bq ], [ false, %bb.bv ], [ false, %bb.ce ], [ false, %bb.cj ], [ false, %bb.cp ], [ false, %bb.cv ], [ false, %bb.cx ], [ true, %.thread314 ], [ true, %bb.cy ]
  br i1 %2, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %.thread328
  call void @assoc_mgr_unlock(ptr noundef nonnull %4) #14
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %.thread328
  call void @slurmdb_free_qos_rec_members(ptr noundef nonnull %3) #14
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.um = load ptr, ptr %i.ul, align 8
  %.not206 = icmp eq ptr %i.um, null
  br i1 %.not206, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @slurm_bit_free(ptr noundef nonnull %i.ul) #14
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  store ptr null, ptr %i.ul, align 8
  br label %bb.dd

bb.dd:                                            ; preds = %bb.b, %bb.a, %bb.dc
  %.0179 = phi i1 [ true, %bb.b ], [ %.4, %bb.dc ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.stackrestore.p0(ptr %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i1 %.0179
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_qos_job_runnable_post_select(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 26 uses
  %i.b = load i32, ptr @slurmctld_tres_cnt, align 4
  %i.c = zext i32 %i.b to i64                     ; 5 uses
  %i.d = alloca i64, i64 %i.c, align 16           ; 5 uses
  %i.e = alloca i64, i64 %i.c, align 16           ; 6 uses
  %i.f = alloca i64, i64 %i.c, align 16           ; 4 uses
  %i.g = alloca i64, i64 %i.c, align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.cq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not252 = icmp eq ptr %i.k, null
  br i1 %.not252, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.m = load ptr, ptr %i.l, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.k, %bb.b ] ; 6 uses
  %i.o = load i16, ptr @accounting_enforce, align 2
  %i.p = and i16 %i.o, 16
  %.not253 = icmp ne i16 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call ptr @acct_policy_get_acct_used_limits(ptr noundef nonnull %i.q, ptr noundef %i.s) ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.w = load i32, ptr %i.v, align 8
  %i.x = tail call ptr @acct_policy_get_user_used_limits(ptr noundef nonnull %i.u, i32 noundef %i.w) ; 3 uses
  %i.y = shl nuw nsw i64 %i.c, 3                  ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.e, i8 0, i64 %i.y, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.f, i8 0, i64 %i.y, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.g, i8 0, i64 %i.y, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 0, i64 %i.y, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not254 = icmp eq ptr %i.aa, null
  br i1 %.not254, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 328
  %i.ac = load double, ptr %i.ab, align 8
  %5 = fcmp oeq double %i.ac, 0.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0240 = phi i1 [ false, %bb.d ], [ %5, %bb.e ]
  %i.ad = load i32, ptr @slurmctld_tres_cnt, align 4 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.am = load ptr, ptr %i.al, align 16
  %wide.trip.count = zext nneg i32 %i.ad to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 9 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = udiv i64 %i.ao, 60
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  store i64 %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = udiv i64 %i.as, 60
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  store i64 %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = udiv i64 %i.aw, 60
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  store i64 %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv
  %i.ba = load x86_fp80, ptr %i.az, align 16
  %i.bb = fdiv x86_fp80 %i.ba, 6.000000e+01
  %i.bc = fptoui x86_fp80 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 8
  br i1 %.0240, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.aq, align 8
  store i64 0, ptr %i.au, align 8
  store i64 0, ptr %i.bd, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.i, %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 8 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call fastcc range(i32 0, 4) i32 @_validate_tres_usage_limits(ptr noundef nonnull %i.a, ptr noundef readonly %i.bf, ptr noundef %i.bh, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.d, ptr noundef readonly %i.bj, i1 noundef zeroext %.not253, i1 noundef zeroext true)
  switch i32 %i.bk, label %default.unreachable [
    i32 1, label %bb.j
    i32 2, label %bb.o
    i32 3, label %bb.t
    i32 0, label %bb.y
  ]

bb.j:                                             ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1040
  call void @slurm_xfree(ptr noundef nonnull %i.bl) #14
  %i.bm = load i32, ptr %i.a, align 4             ; 4 uses
  %i.bn = icmp ult i32 %i.bm, 5
  br i1 %i.bn, label %switch.lookup, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.bp = sext i32 %i.bm to i64                   ; 3 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call i32 @xstrcmp(ptr noundef nonnull @.str.105, ptr noundef %i.bt) #14
  %.not.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i, label %_get_tres_state_reason.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bp
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call i32 @xstrcmp(ptr noundef nonnull @.str.106, ptr noundef %i.bz) #14
  %.not27.i = icmp eq i32 %i.ca, 0
  br i1 %.not27.i, label %_get_tres_state_reason.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.bp
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call i32 @xstrcmp(ptr noundef nonnull @.str.107, ptr noundef %i.cf) #14
  %.not29.i = icmp eq i32 %i.cg, 0
  %spec.select = select i1 %.not29.i, i32 160, i32 117
  br label %_get_tres_state_reason.exit

switch.lookup:                                    ; preds = %bb.j
  %i.ch = zext nneg i32 %i.bm to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._qos_policy_validate.19, i64 %i.ch
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_get_tres_state_reason.exit

_get_tres_state_reason.exit:                      ; preds = %switch.lookup, %bb.m, %bb.l, %bb.k
  %.0.i = phi i32 [ 153, %bb.l ], [ %switch.ext, %switch.lookup ], [ 145, %bb.k ], [ %spec.select, %bb.m ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 %.0.i, ptr %i.ci, align 8
  %i.cj = call i32 @get_log_level() #14
  %i.ck = icmp sgt i32 %i.cj, 5
  br i1 %i.ck, label %bb.n, label %bb.cp

bb.n:                                             ; preds = %_get_tres_state_reason.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = load ptr, ptr @assoc_mgr_tres_name_array, align 8
  %i.co = sext i32 %i.bm to i64                   ; 3 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = load ptr, ptr %i.be, align 8
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.co
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.co
  %i.cv = load i64, ptr %i.cu, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.84, ptr noundef nonnull %0, ptr noundef %i.cm, ptr noundef %i.cq, i64 noundef %i.ct, i64 noundef %i.cv) #14
  br label %bb.cp

bb.o:                                             ; preds = %._crit_edge
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1040
  call void @slurm_xfree(ptr noundef nonnull %i.cw) #14
  %i.cx = load i32, ptr %i.a, align 4             ; 4 uses
  %i.cy = icmp ult i32 %i.cx, 5
  br i1 %i.cy, label %switch.lookup466, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.da = sext i32 %i.cx to i64                   ; 3 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call i32 @xstrcmp(ptr noundef nonnull @.str.105, ptr noundef %i.de) #14
  %.not.i257 = icmp eq i32 %i.df, 0
  br i1 %.not.i257, label %_get_tres_state_reason.exit260, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dg = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.da
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call i32 @xstrcmp(ptr noundef nonnull @.str.106, ptr noundef %i.dk) #14
  %.not27.i258 = icmp eq i32 %i.dl, 0
  br i1 %.not27.i258, label %_get_tres_state_reason.exit260, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.da
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = call i32 @xstrcmp(ptr noundef nonnull @.str.107, ptr noundef %i.dq) #14
  %.not29.i259 = icmp eq i32 %i.dr, 0
  %spec.select333 = select i1 %.not29.i259, i32 160, i32 117
  br label %_get_tres_state_reason.exit260

switch.lookup466:                                 ; preds = %bb.o
  %i.ds = zext nneg i32 %i.cx to i64
  %switch.gep467 = getelementptr inbounds nuw i8, ptr @switch.table._qos_policy_validate.19, i64 %i.ds
  %switch.load468 = load i8, ptr %switch.gep467, align 1
  %switch.ext469 = zext i8 %switch.load468 to i32
  br label %_get_tres_state_reason.exit260

_get_tres_state_reason.exit260:                   ; preds = %switch.lookup466, %bb.r, %bb.q, %bb.p
  %.0.i256 = phi i32 [ 153, %bb.q ], [ %switch.ext469, %switch.lookup466 ], [ 145, %bb.p ], [ %spec.select333, %bb.r ]
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 %.0.i256, ptr %i.dt, align 8
  %i.du = call i32 @get_log_level() #14
  %i.dv = icmp sgt i32 %i.du, 5
  br i1 %i.dv, label %bb.s, label %bb.cp

bb.s:                                             ; preds = %_get_tres_state_reason.exit260
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = load ptr, ptr @assoc_mgr_tres_name_array, align 8
  %i.dz = sext i32 %i.cx to i64                   ; 3 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = load ptr, ptr %i.be, align 8
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.dz
  %i.ee = load i64, ptr %i.ed, align 8
end_hunk_0
