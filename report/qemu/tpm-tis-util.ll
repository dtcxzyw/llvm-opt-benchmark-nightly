Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tpm-tis-util?download=true
inline.NumInlined: 57
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@tpm_tis_test_check_access_reg:bb.a
; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tpm_tis_test_check_access_reg_seize(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv177 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next178205, %.loopexit ] ; 9 uses
  %indvars.iv171 = phi i64 [ 1, %bb.a ], [ %indvars.iv.next172, %.loopexit ] ; 2 uses
  %i.a = load i64, ptr @tpm_tis_base_addr, align 8
  %i.b = shl nuw nsw i64 %indvars.iv177, 12       ; 7 uses
  %i.c = add i64 %i.a, %i.b
  %i.d = load ptr, ptr @global_qtest, align 8
  %i.e = tail call zeroext i8 @qtest_readb(ptr noundef %i.d, i64 noundef %i.c) #4 ; 2 uses
  %i.f = icmp eq i8 %i.e, -127
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = uitofp i8 %i.e to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 118, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.1, x86_fp80 noundef %i.g, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.290000e+02, i8 noundef signext 105) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = load i64, ptr @tpm_tis_base_addr, align 8
  %i.i = add i64 %i.h, %i.b
  %i.j = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.j, i64 noundef %i.i, i8 noundef zeroext 2) #4
  %i.k = load i64, ptr @tpm_tis_base_addr, align 8
  %i.l = add i64 %i.k, %i.b
  %i.m = load ptr, ptr @global_qtest, align 8
  %i.n = tail call zeroext i8 @qtest_readb(ptr noundef %i.m, i64 noundef %i.l) #4 ; 2 uses
  %i.o = icmp eq i8 %i.n, -95
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = uitofp i8 %i.n to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 125, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.10, x86_fp80 noundef %i.p, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.610000e+02, i8 noundef signext 105) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.not = icmp eq i64 %indvars.iv177, 0           ; 2 uses
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.q = load i64, ptr @tpm_tis_base_addr, align 8
  %i.r = load ptr, ptr @global_qtest, align 8
  %i.s = tail call zeroext i8 @qtest_readb(ptr noundef %i.r, i64 noundef %i.q) #4 ; 2 uses
  %i.t = icmp eq i8 %i.s, -127
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.preheader
  %i.u = uitofp i8 %i.s to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 134, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.11, x86_fp80 noundef %i.u, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.290000e+02, i8 noundef signext 105) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.preheader
  %i.v = load i64, ptr @tpm_tis_base_addr, align 8
  %i.w = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.w, i64 noundef %i.v, i8 noundef zeroext 2) #4
  %i.x = load i64, ptr @tpm_tis_base_addr, align 8
  %i.y = load ptr, ptr @global_qtest, align 8
  %i.z = tail call zeroext i8 @qtest_readb(ptr noundef %i.y, i64 noundef %i.x) #4 ; 2 uses
  %i.aa = icmp eq i8 %i.z, -125
  br i1 %i.aa, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = uitofp i8 %i.z to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 148, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.12, x86_fp80 noundef %i.ab, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.310000e+02, i8 noundef signext 105) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = load i64, ptr @tpm_tis_base_addr, align 8
  %i.ad = add i64 %i.ac, %i.b
  %i.ae = load ptr, ptr @global_qtest, align 8
  %i.af = tail call zeroext i8 @qtest_readb(ptr noundef %i.ae, i64 noundef %i.ad) #4 ; 2 uses
  %i.ag = icmp eq i8 %i.af, -91
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = uitofp i8 %i.af to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 158, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.13, x86_fp80 noundef %i.ah, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.650000e+02, i8 noundef signext 105) #4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = load i64, ptr @tpm_tis_base_addr, align 8
  %i.aj = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.aj, i64 noundef %i.ai, i8 noundef zeroext 8) #4
  %i.ak = load i64, ptr @tpm_tis_base_addr, align 8
  %i.al = load ptr, ptr @global_qtest, align 8
  %i.am = tail call zeroext i8 @qtest_readb(ptr noundef %i.al, i64 noundef %i.ak) #4 ; 2 uses
  %i.an = icmp eq i8 %i.am, -125
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = uitofp i8 %i.am to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.12, x86_fp80 noundef %i.ao, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.310000e+02, i8 noundef signext 105) #4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = load i64, ptr @tpm_tis_base_addr, align 8
  %i.aq = add i64 %i.ap, %i.b
  %i.ar = load ptr, ptr @global_qtest, align 8
  %i.as = tail call zeroext i8 @qtest_readb(ptr noundef %i.ar, i64 noundef %i.aq) #4 ; 2 uses
  %i.at = icmp eq i8 %i.as, -91
  br i1 %i.at, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = uitofp i8 %i.as to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 175, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.13, x86_fp80 noundef %i.au, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.650000e+02, i8 noundef signext 105) #4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %exitcond.peel.not = icmp eq i64 %indvars.iv177, 1
  br i1 %exitcond.peel.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.z
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.z ], [ 1, %bb.p ] ; 2 uses
  %i.av = load i64, ptr @tpm_tis_base_addr, align 8
  %i.aw = shl nuw nsw i64 %indvars.iv, 12         ; 5 uses
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = load ptr, ptr @global_qtest, align 8
  %i.az = tail call zeroext i8 @qtest_readb(ptr noundef %i.ay, i64 noundef %i.ax) #4 ; 2 uses
  %i.ba = icmp eq i8 %i.az, -123
  br i1 %i.ba, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.bb = uitofp i8 %i.az to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 134, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.11, x86_fp80 noundef %i.bb, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.330000e+02, i8 noundef signext 105) #4
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.q
  %i.bc = load i64, ptr @tpm_tis_base_addr, align 8
  %i.bd = add i64 %i.bc, %i.aw
  %i.be = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.be, i64 noundef %i.bd, i8 noundef zeroext 2) #4
  %i.bf = load i64, ptr @tpm_tis_base_addr, align 8
  %i.bg = add i64 %i.bf, %i.aw
  %i.bh = load ptr, ptr @global_qtest, align 8
  %i.bi = tail call zeroext i8 @qtest_readb(ptr noundef %i.bh, i64 noundef %i.bg) #4 ; 2 uses
  %i.bj = icmp eq i8 %i.bi, -121
  br i1 %i.bj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = uitofp i8 %i.bi to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 148, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.12, x86_fp80 noundef %i.bk, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.350000e+02, i8 noundef signext 105) #4
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bl = load i64, ptr @tpm_tis_base_addr, align 8
  %i.bm = add i64 %i.bl, %i.b
  %i.bn = load ptr, ptr @global_qtest, align 8
  %i.bo = tail call zeroext i8 @qtest_readb(ptr noundef %i.bn, i64 noundef %i.bm) #4 ; 2 uses
  %i.bp = icmp eq i8 %i.bo, -91
  br i1 %i.bp, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = uitofp i8 %i.bo to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 158, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.13, x86_fp80 noundef %i.bq, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.650000e+02, i8 noundef signext 105) #4
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.br = load i64, ptr @tpm_tis_base_addr, align 8
  %i.bs = add i64 %i.br, %i.aw
  %i.bt = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.bt, i64 noundef %i.bs, i8 noundef zeroext 8) #4
  %i.bu = load i64, ptr @tpm_tis_base_addr, align 8
  %i.bv = add i64 %i.bu, %i.aw
  %i.bw = load ptr, ptr @global_qtest, align 8
  %i.bx = tail call zeroext i8 @qtest_readb(ptr noundef %i.bw, i64 noundef %i.bv) #4 ; 2 uses
  %i.by = icmp eq i8 %i.bx, -121
  br i1 %i.by, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = uitofp i8 %i.bx to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.12, x86_fp80 noundef %i.bz, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.350000e+02, i8 noundef signext 105) #4
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ca = load i64, ptr @tpm_tis_base_addr, align 8
  %i.cb = add i64 %i.ca, %i.b
  %i.cc = load ptr, ptr @global_qtest, align 8
  %i.cd = tail call zeroext i8 @qtest_readb(ptr noundef %i.cc, i64 noundef %i.cb) #4 ; 2 uses
  %i.ce = icmp eq i8 %i.cd, -91
  br i1 %i.ce, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = uitofp i8 %i.cd to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 175, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.13, x86_fp80 noundef %i.cf, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.650000e+02, i8 noundef signext 105) #4
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv177
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge.thread:                               ; preds = %bb.p, %bb.f
  %.0.lcssa.ph = phi i8 [ 4, %bb.p ], [ 0, %bb.f ]
  %indvars.iv.next178202 = add nuw nsw i64 %indvars.iv177, 1
  br label %.lr.ph158

._crit_edge:                                      ; preds = %bb.z
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.cg = icmp samesign ult i64 %indvars.iv177, 3
  br i1 %i.cg, label %.lr.ph158, label %._crit_edge159

.lr.ph158:                                        ; preds = %._crit_edge.thread, %._crit_edge
  %indvars.iv.next178206 = phi i64 [ %indvars.iv.next178202, %._crit_edge.thread ], [ %indvars.iv.next178, %._crit_edge ]
  %.0.lcssa204 = phi i8 [ %.0.lcssa.ph, %._crit_edge.thread ], [ 4, %._crit_edge ] ; 2 uses
  %i.ch = zext nneg i8 %.0.lcssa204 to i32        ; 4 uses
  %i.ci = or disjoint i32 %i.ch, 131              ; 2 uses
  %i.cj = uitofp nneg i32 %i.ci to x86_fp80
  %i.ck = or disjoint i32 %i.ch, 161              ; 2 uses
  %i.cl = uitofp nneg i32 %i.ck to x86_fp80
  %i.cm = or disjoint i32 %i.ch, 145              ; 2 uses
  %i.cn = uitofp nneg i32 %i.cm to x86_fp80
  %i.co = or disjoint i32 %i.ch, 129              ; 2 uses
  %i.cp = uitofp nneg i32 %i.co to x86_fp80
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph158, %bb.ak
  %indvars.iv173 = phi i64 [ %indvars.iv171, %.lr.ph158 ], [ %indvars.iv.next174, %bb.ak ] ; 2 uses
  %i.cq = load i64, ptr @tpm_tis_base_addr, align 8
  %i.cr = shl nuw nsw i64 %indvars.iv173, 12      ; 5 uses
  %i.cs = add i64 %i.cq, %i.cr
  %i.ct = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.ct, i64 noundef %i.cs, i8 noundef zeroext 2) #4
  %i.cu = load i64, ptr @tpm_tis_base_addr, align 8
  %i.cv = add i64 %i.cu, %i.cr
  %i.cw = load ptr, ptr @global_qtest, align 8
  %i.cx = tail call zeroext i8 @qtest_readb(ptr noundef %i.cw, i64 noundef %i.cv) #4 ; 2 uses
  %i.cy = zext i8 %i.cx to i32
  %i.cz = icmp eq i32 %i.ci, %i.cy
  br i1 %i.cz, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = uitofp i8 %i.cx to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 201, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.12, x86_fp80 noundef %i.da, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.cj, i8 noundef signext 105) #4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.db = load i64, ptr @tpm_tis_base_addr, align 8
  %i.dc = add nsw i64 %i.cr, -4096                ; 4 uses
  %i.dd = add i64 %i.db, %i.dc
  %i.de = load ptr, ptr @global_qtest, align 8
  %i.df = tail call zeroext i8 @qtest_readb(ptr noundef %i.de, i64 noundef %i.dd) #4 ; 2 uses
  %i.dg = icmp eq i8 %i.df, -91
  br i1 %i.dg, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dh = uitofp i8 %i.df to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 212, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.13, x86_fp80 noundef %i.dh, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.650000e+02, i8 noundef signext 105) #4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.di = load i64, ptr @tpm_tis_base_addr, align 8
  %i.dj = add i64 %i.di, %i.cr
  %i.dk = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.dk, i64 noundef %i.dj, i8 noundef zeroext 8) #4
  %i.dl = load i64, ptr @tpm_tis_base_addr, align 8
  %i.dm = add i64 %i.dl, %i.cr
  %i.dn = load ptr, ptr @global_qtest, align 8
  %i.do = tail call zeroext i8 @qtest_readb(ptr noundef %i.dn, i64 noundef %i.dm) #4 ; 2 uses
  %i.dp = zext i8 %i.do to i32
  %i.dq = icmp eq i32 %i.ck, %i.dp
  br i1 %i.dq, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dr = uitofp i8 %i.do to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 223, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.14, x86_fp80 noundef %i.dr, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.cl, i8 noundef signext 105) #4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.ds = load i64, ptr @tpm_tis_base_addr, align 8
  %i.dt = add i64 %i.ds, %i.dc
  %i.du = load ptr, ptr @global_qtest, align 8
  %i.dv = tail call zeroext i8 @qtest_readb(ptr noundef %i.du, i64 noundef %i.dt) #4 ; 2 uses
  %i.dw = zext i8 %i.dv to i32
  %i.dx = icmp eq i32 %i.cm, %i.dw
  br i1 %i.dx, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dy = uitofp i8 %i.dv to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 231, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.15, x86_fp80 noundef %i.dy, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.cn, i8 noundef signext 105) #4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.dz = load i64, ptr @tpm_tis_base_addr, align 8
  %i.ea = add i64 %i.dz, %i.dc
  %i.eb = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.eb, i64 noundef %i.ea, i8 noundef zeroext 16) #4
  %i.ec = load i64, ptr @tpm_tis_base_addr, align 8
  %i.ed = add i64 %i.ec, %i.dc
  %i.ee = load ptr, ptr @global_qtest, align 8
  %i.ef = tail call zeroext i8 @qtest_readb(ptr noundef %i.ee, i64 noundef %i.ed) #4 ; 2 uses
  %i.eg = zext i8 %i.ef to i32
  %i.eh = icmp eq i32 %i.co, %i.eg
  br i1 %i.eh, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ei = uitofp i8 %i.ef to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 240, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.11, x86_fp80 noundef %i.ei, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.cp, i8 noundef signext 105) #4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next174, 4
  br i1 %exitcond176.not, label %._crit_edge159, label %bb.aa, !llvm.loop !13

._crit_edge159:                                   ; preds = %bb.ak, %._crit_edge
  %indvars.iv.next178205 = phi i64 [ %indvars.iv.next178, %._crit_edge ], [ %indvars.iv.next178206, %bb.ak ] ; 2 uses
  %.0.lcssa203 = phi i8 [ 4, %._crit_edge ], [ %.0.lcssa204, %bb.ak ]
  %i.ej = icmp samesign ult i64 %indvars.iv177, 2
  %spec.select = select i1 %i.ej, i8 0, i8 %.0.lcssa203 ; 2 uses
  %i.ek = load i64, ptr @tpm_tis_base_addr, align 8
  %i.el = add i64 %i.ek, 12288
  %i.em = load ptr, ptr @global_qtest, align 8
  %i.en = tail call zeroext i8 @qtest_readb(ptr noundef %i.em, i64 noundef %i.el) #4 ; 0 uses
  %i.eo = load i64, ptr @tpm_tis_base_addr, align 8
  %i.ep = add i64 %i.eo, 12288
  %i.eq = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.eq, i64 noundef %i.ep, i8 noundef zeroext 32) #4
  %i.er = load i64, ptr @tpm_tis_base_addr, align 8
  %i.es = add i64 %i.er, 12288
  %i.et = load ptr, ptr @global_qtest, align 8
  %i.eu = tail call zeroext i8 @qtest_readb(ptr noundef %i.et, i64 noundef %i.es) #4 ; 2 uses
  %i.ev = or disjoint i8 %spec.select, -127       ; 2 uses
  %i.ew = icmp eq i8 %i.eu, %i.ev
  br i1 %i.ew, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge159
  %i.ex = uitofp i8 %i.eu to x86_fp80
  %i.ey = uitofp i8 %i.ev to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 267, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.11, x86_fp80 noundef %i.ex, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.ey, i8 noundef signext 105) #4
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge159, %bb.al
  br i1 %.not, label %.preheader, label %.lr.ph165

.preheader:                                       ; preds = %bb.ao, %bb.am
  %i.ez = load i64, ptr @tpm_tis_base_addr, align 8
  %i.fa = load ptr, ptr @global_qtest, align 8
  %i.fb = tail call zeroext i8 @qtest_readb(ptr noundef %i.fa, i64 noundef %i.ez) #4 ; 2 uses
  %i.fc = icmp eq i8 %i.fb, -127
  br i1 %i.fc, label %bb.aq, label %bb.ap

.lr.ph165:                                        ; preds = %bb.am, %bb.ao
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %bb.ao ], [ %indvars.iv177, %bb.am ] ; 2 uses
  %.2162 = phi i8 [ %spec.select153, %bb.ao ], [ %spec.select, %bb.am ] ; 2 uses
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, -1 ; 3 uses
  %i.fd = load i64, ptr @tpm_tis_base_addr, align 8
  %i.fe = shl nsw i64 %indvars.iv.next180, 12     ; 2 uses
  %i.ff = add i64 %i.fd, %i.fe
  %i.fg = load ptr, ptr @global_qtest, align 8
  %i.fh = tail call zeroext i8 @qtest_readb(ptr noundef %i.fg, i64 noundef %i.ff) #4 ; 2 uses
  %i.fi = or i8 %.2162, -95                       ; 2 uses
  %i.fj = icmp eq i8 %i.fh, %i.fi
  br i1 %i.fj, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph165
  %i.fk = uitofp i8 %i.fh to x86_fp80
  %i.fl = uitofp i8 %i.fi to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 275, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.14, x86_fp80 noundef %i.fk, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.fl, i8 noundef signext 105) #4
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph165, %bb.an
  %i.fm = load i64, ptr @tpm_tis_base_addr, align 8
  %i.fn = add i64 %i.fm, %i.fe
  %i.fo = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.fo, i64 noundef %i.fn, i8 noundef zeroext 32) #4
  %i.fp = icmp eq i64 %indvars.iv.next180, 1
  %spec.select153 = select i1 %i.fp, i8 0, i8 %.2162
  %i.fq = icmp sgt i64 %indvars.iv179, 1
  br i1 %i.fq, label %.lr.ph165, label %.preheader, !llvm.loop !14

bb.ap:                                            ; preds = %.preheader
  %i.fr = uitofp i8 %i.fb to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 291, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.1, x86_fp80 noundef %i.fr, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.290000e+02, i8 noundef signext 105) #4
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader, %bb.ap
  %i.fs = load i64, ptr @tpm_tis_base_addr, align 8
  %i.ft = add i64 %i.fs, 4096
  %i.fu = load ptr, ptr @global_qtest, align 8
  %i.fv = tail call zeroext i8 @qtest_readb(ptr noundef %i.fu, i64 noundef %i.ft) #4 ; 2 uses
  %i.fw = icmp eq i8 %i.fv, -127
  br i1 %i.fw, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fx = uitofp i8 %i.fv to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 291, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.1, x86_fp80 noundef %i.fx, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.290000e+02, i8 noundef signext 105) #4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fy = load i64, ptr @tpm_tis_base_addr, align 8
  %i.fz = add i64 %i.fy, 8192
  %i.ga = load ptr, ptr @global_qtest, align 8
  %i.gb = tail call zeroext i8 @qtest_readb(ptr noundef %i.ga, i64 noundef %i.fz) #4 ; 2 uses
  %i.gc = icmp eq i8 %i.gb, -127
  br i1 %i.gc, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gd = uitofp i8 %i.gb to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 291, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.1, x86_fp80 noundef %i.gd, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.290000e+02, i8 noundef signext 105) #4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ge = load i64, ptr @tpm_tis_base_addr, align 8
  %i.gf = add i64 %i.ge, 12288
  %i.gg = load ptr, ptr @global_qtest, align 8
  %i.gh = tail call zeroext i8 @qtest_readb(ptr noundef %i.gg, i64 noundef %i.gf) #4 ; 2 uses
  %i.gi = icmp eq i8 %i.gh, -127
  br i1 %i.gi, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gj = uitofp i8 %i.gh to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 291, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.1, x86_fp80 noundef %i.gj, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.290000e+02, i8 noundef signext 105) #4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.av, %bb.au
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1
  %exitcond186.not = icmp eq i64 %indvars.iv.next178205, 4
  br i1 %exitcond186.not, label %bb.aw, label %bb.b, !llvm.loop !15

bb.aw:                                            ; preds = %.loopexit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tpm_tis_test_check_access_reg_release(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.ai, %bb.a
  %indvars.iv = phi i64 [ 3, %bb.a ], [ %indvars.iv.next, %bb.ai ] ; 7 uses
  %i.a = load i64, ptr @tpm_tis_base_addr, align 8
  %i.b = shl nsw i64 %indvars.iv, 12              ; 4 uses
  %i.c = add i64 %i.a, %i.b
  %i.d = load ptr, ptr @global_qtest, align 8
  %i.e = tail call zeroext i8 @qtest_readb(ptr noundef %i.d, i64 noundef %i.c) #4 ; 2 uses
  %i.f = icmp eq i8 %i.e, -127
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = uitofp i8 %i.e to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 311, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_release, ptr noundef nonnull @.str.1, x86_fp80 noundef %i.g, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.290000e+02, i8 noundef signext 105) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = load i64, ptr @tpm_tis_base_addr, align 8
  %i.i = add i64 %i.h, %i.b
  %i.j = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.j, i64 noundef %i.i, i8 noundef zeroext 2) #4
  %i.k = load i64, ptr @tpm_tis_base_addr, align 8
  %i.l = add i64 %i.k, %i.b
  %i.m = load ptr, ptr @global_qtest, align 8
  %i.n = tail call zeroext i8 @qtest_readb(ptr noundef %i.m, i64 noundef %i.l) #4 ; 2 uses
  %i.o = icmp eq i8 %i.n, -95
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = uitofp i8 %i.n to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 318, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_release, ptr noundef nonnull @.str.10, x86_fp80 noundef %i.p, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.610000e+02, i8 noundef signext 105) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.q = icmp eq i64 %indvars.iv, 0               ; 2 uses
  br i1 %i.q, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr @tpm_tis_base_addr, align 8
  %i.s = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.s, i64 noundef %i.r, i8 noundef zeroext 2) #4
  %i.t = load i64, ptr @tpm_tis_base_addr, align 8
  %i.u = load ptr, ptr @global_qtest, align 8
  %i.v = tail call zeroext i8 @qtest_readb(ptr noundef %i.u, i64 noundef %i.t) #4 ; 2 uses
  %i.w = icmp eq i8 %i.v, -125
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = uitofp i8 %i.v to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 335, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_release, ptr noundef nonnull @.str.12, x86_fp80 noundef %i.x, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.310000e+02, i8 noundef signext 105) #4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = icmp eq i64 %indvars.iv, 1
  br i1 %i.y, label %.thread96, label %.thread

.thread:                                          ; preds = %bb.f, %bb.i
  %.195 = phi i8 [ -121, %bb.i ], [ -125, %bb.f ] ; 2 uses
  %i.z = load i64, ptr @tpm_tis_base_addr, align 8
  %i.aa = add i64 %i.z, 4096
  %i.ab = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.ab, i64 noundef %i.aa, i8 noundef zeroext 2) #4
  %i.ac = load i64, ptr @tpm_tis_base_addr, align 8
  %i.ad = add i64 %i.ac, 4096
  %i.ae = load ptr, ptr @global_qtest, align 8
  %i.af = tail call zeroext i8 @qtest_readb(ptr noundef %i.ae, i64 noundef %i.ad) #4 ; 2 uses
  %i.ag = icmp eq i8 %i.af, %.195
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.ah = uitofp i8 %i.af to x86_fp80
  %i.ai = uitofp i8 %.195 to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 335, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_release, ptr noundef nonnull @.str.12, x86_fp80 noundef %i.ah, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.ai, i8 noundef signext 105) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread
  %i.aj = icmp eq i64 %indvars.iv, 2
  br i1 %i.aj, label %.thread99, label %.thread96

.thread96:                                        ; preds = %bb.i, %bb.k
  %i.ak = phi i1 [ false, %bb.k ], [ true, %bb.i ] ; 2 uses
  %i.al = load i64, ptr @tpm_tis_base_addr, align 8
  %i.am = add i64 %i.al, 8192
  %i.an = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.an, i64 noundef %i.am, i8 noundef zeroext 2) #4
  %i.ao = load i64, ptr @tpm_tis_base_addr, align 8
  %i.ap = add i64 %i.ao, 8192
  %i.aq = load ptr, ptr @global_qtest, align 8
  %i.ar = tail call zeroext i8 @qtest_readb(ptr noundef %i.aq, i64 noundef %i.ap) #4 ; 2 uses
  %i.as = icmp eq i8 %i.ar, -121
  br i1 %i.as, label %bb.m, label %bb.l

end_hunk_0
