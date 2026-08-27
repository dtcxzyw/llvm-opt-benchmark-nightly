Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tpm-tis-util?download=true
inline.NumInlined: 57
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@tpm_tis_test_check_access_reg_seize:bb.a
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
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 3 uses
  %i.cg = icmp samesign ult i64 %indvars.iv177, 3
  %i.ch = trunc nuw nsw i64 %indvars.iv.next178 to i32
  br i1 %i.cg, label %.lr.ph158, label %._crit_edge159

.lr.ph158:                                        ; preds = %._crit_edge.thread, %._crit_edge
  %indvars.iv.next178206 = phi i64 [ %indvars.iv.next178202, %._crit_edge.thread ], [ %indvars.iv.next178, %._crit_edge ]
  %.0.lcssa204 = phi i8 [ %.0.lcssa.ph, %._crit_edge.thread ], [ 4, %._crit_edge ] ; 2 uses
  %i.ci = zext nneg i8 %.0.lcssa204 to i32        ; 4 uses
  %i.cj = or disjoint i32 %i.ci, 131              ; 2 uses
  %i.ck = uitofp nneg i32 %i.cj to x86_fp80
  %i.cl = or disjoint i32 %i.ci, 161              ; 2 uses
  %i.cm = uitofp nneg i32 %i.cl to x86_fp80
  %i.cn = or disjoint i32 %i.ci, 145              ; 2 uses
  %i.co = uitofp nneg i32 %i.cn to x86_fp80
  %i.cp = or disjoint i32 %i.ci, 129              ; 2 uses
  %i.cq = uitofp nneg i32 %i.cp to x86_fp80
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph158, %bb.ak
  %indvars.iv173 = phi i64 [ %indvars.iv171, %.lr.ph158 ], [ %indvars.iv.next174, %bb.ak ] ; 2 uses
  %i.cr = load i64, ptr @tpm_tis_base_addr, align 8
  %i.cs = shl nuw nsw i64 %indvars.iv173, 12      ; 5 uses
  %i.ct = add i64 %i.cr, %i.cs
  %i.cu = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.cu, i64 noundef %i.ct, i8 noundef zeroext 2) #4
  %i.cv = load i64, ptr @tpm_tis_base_addr, align 8
  %i.cw = add i64 %i.cv, %i.cs
  %i.cx = load ptr, ptr @global_qtest, align 8
  %i.cy = tail call zeroext i8 @qtest_readb(ptr noundef %i.cx, i64 noundef %i.cw) #4 ; 2 uses
  %i.cz = zext i8 %i.cy to i32
  %i.da = icmp eq i32 %i.cj, %i.cz
  br i1 %i.da, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = uitofp i8 %i.cy to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 201, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.12, x86_fp80 noundef %i.db, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.ck, i8 noundef signext 105) #4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.dc = load i64, ptr @tpm_tis_base_addr, align 8
  %i.dd = add nsw i64 %i.cs, -4096                ; 4 uses
  %i.de = add i64 %i.dc, %i.dd
  %i.df = load ptr, ptr @global_qtest, align 8
  %i.dg = tail call zeroext i8 @qtest_readb(ptr noundef %i.df, i64 noundef %i.de) #4 ; 2 uses
  %i.dh = icmp eq i8 %i.dg, -91
  br i1 %i.dh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = uitofp i8 %i.dg to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 212, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.13, x86_fp80 noundef %i.di, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.650000e+02, i8 noundef signext 105) #4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.dj = load i64, ptr @tpm_tis_base_addr, align 8
  %i.dk = add i64 %i.dj, %i.cs
  %i.dl = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.dl, i64 noundef %i.dk, i8 noundef zeroext 8) #4
  %i.dm = load i64, ptr @tpm_tis_base_addr, align 8
  %i.dn = add i64 %i.dm, %i.cs
  %i.do = load ptr, ptr @global_qtest, align 8
  %i.dp = tail call zeroext i8 @qtest_readb(ptr noundef %i.do, i64 noundef %i.dn) #4 ; 2 uses
  %i.dq = zext i8 %i.dp to i32
  %i.dr = icmp eq i32 %i.cl, %i.dq
  br i1 %i.dr, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ds = uitofp i8 %i.dp to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 223, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.14, x86_fp80 noundef %i.ds, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.cm, i8 noundef signext 105) #4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.dt = load i64, ptr @tpm_tis_base_addr, align 8
  %i.du = add i64 %i.dt, %i.dd
  %i.dv = load ptr, ptr @global_qtest, align 8
  %i.dw = tail call zeroext i8 @qtest_readb(ptr noundef %i.dv, i64 noundef %i.du) #4 ; 2 uses
  %i.dx = zext i8 %i.dw to i32
  %i.dy = icmp eq i32 %i.cn, %i.dx
  br i1 %i.dy, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dz = uitofp i8 %i.dw to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 231, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.15, x86_fp80 noundef %i.dz, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.co, i8 noundef signext 105) #4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.ea = load i64, ptr @tpm_tis_base_addr, align 8
  %i.eb = add i64 %i.ea, %i.dd
  %i.ec = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.ec, i64 noundef %i.eb, i8 noundef zeroext 16) #4
  %i.ed = load i64, ptr @tpm_tis_base_addr, align 8
  %i.ee = add i64 %i.ed, %i.dd
  %i.ef = load ptr, ptr @global_qtest, align 8
  %i.eg = tail call zeroext i8 @qtest_readb(ptr noundef %i.ef, i64 noundef %i.ee) #4 ; 2 uses
  %i.eh = zext i8 %i.eg to i32
  %i.ei = icmp eq i32 %i.cp, %i.eh
  br i1 %i.ei, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ej = uitofp i8 %i.eg to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 240, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.11, x86_fp80 noundef %i.ej, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.cq, i8 noundef signext 105) #4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next174, 4
  br i1 %exitcond176.not, label %._crit_edge159, label %bb.aa, !llvm.loop !13

._crit_edge159:                                   ; preds = %bb.ak, %._crit_edge
  %indvars.iv.next178205 = phi i64 [ %indvars.iv.next178, %._crit_edge ], [ %indvars.iv.next178206, %bb.ak ] ; 2 uses
  %.0.lcssa203 = phi i8 [ 4, %._crit_edge ], [ %.0.lcssa204, %bb.ak ]
  %.1125.lcssa = phi i32 [ %i.ch, %._crit_edge ], [ 4, %bb.ak ]
  %i.ek = icmp samesign ult i64 %indvars.iv177, 2
  %spec.select = select i1 %i.ek, i8 0, i8 %.0.lcssa203 ; 2 uses
  %i.el = load i64, ptr @tpm_tis_base_addr, align 8
  %i.em = shl i32 %.1125.lcssa, 12
  %i.en = add nsw i32 %i.em, -4096
  %i.eo = sext i32 %i.en to i64                   ; 3 uses
  %i.ep = add i64 %i.el, %i.eo
  %i.eq = load ptr, ptr @global_qtest, align 8
  %i.er = tail call zeroext i8 @qtest_readb(ptr noundef %i.eq, i64 noundef %i.ep) #4 ; 0 uses
  %i.es = load i64, ptr @tpm_tis_base_addr, align 8
  %i.et = add i64 %i.es, %i.eo
  %i.eu = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.eu, i64 noundef %i.et, i8 noundef zeroext 32) #4
  %i.ev = load i64, ptr @tpm_tis_base_addr, align 8
  %i.ew = add i64 %i.ev, %i.eo
  %i.ex = load ptr, ptr @global_qtest, align 8
  %i.ey = tail call zeroext i8 @qtest_readb(ptr noundef %i.ex, i64 noundef %i.ew) #4 ; 2 uses
  %i.ez = or disjoint i8 %spec.select, -127       ; 2 uses
  %i.fa = icmp eq i8 %i.ey, %i.ez
  br i1 %i.fa, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge159
  %i.fb = uitofp i8 %i.ey to x86_fp80
  %i.fc = uitofp i8 %i.ez to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 267, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.11, x86_fp80 noundef %i.fb, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.fc, i8 noundef signext 105) #4
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge159, %bb.al
  br i1 %.not, label %.preheader, label %.lr.ph165

.preheader:                                       ; preds = %bb.ao, %bb.am
  %i.fd = load i64, ptr @tpm_tis_base_addr, align 8
  %i.fe = load ptr, ptr @global_qtest, align 8
  %i.ff = tail call zeroext i8 @qtest_readb(ptr noundef %i.fe, i64 noundef %i.fd) #4 ; 2 uses
  %i.fg = icmp eq i8 %i.ff, -127
  br i1 %i.fg, label %bb.aq, label %bb.ap

.lr.ph165:                                        ; preds = %bb.am, %bb.ao
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %bb.ao ], [ %indvars.iv177, %bb.am ] ; 2 uses
  %.2162 = phi i8 [ %spec.select153, %bb.ao ], [ %spec.select, %bb.am ] ; 2 uses
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, -1 ; 3 uses
  %i.fh = load i64, ptr @tpm_tis_base_addr, align 8
  %i.fi = shl nsw i64 %indvars.iv.next180, 12     ; 2 uses
  %i.fj = add i64 %i.fh, %i.fi
  %i.fk = load ptr, ptr @global_qtest, align 8
  %i.fl = tail call zeroext i8 @qtest_readb(ptr noundef %i.fk, i64 noundef %i.fj) #4 ; 2 uses
  %i.fm = or i8 %.2162, -95                       ; 2 uses
  %i.fn = icmp eq i8 %i.fl, %i.fm
  br i1 %i.fn, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph165
  %i.fo = uitofp i8 %i.fl to x86_fp80
  %i.fp = uitofp i8 %i.fm to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 275, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.14, x86_fp80 noundef %i.fo, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.fp, i8 noundef signext 105) #4
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph165, %bb.an
  %i.fq = load i64, ptr @tpm_tis_base_addr, align 8
  %i.fr = add i64 %i.fq, %i.fi
  %i.fs = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.fs, i64 noundef %i.fr, i8 noundef zeroext 32) #4
  %i.ft = icmp eq i64 %indvars.iv.next180, 1
  %spec.select153 = select i1 %i.ft, i8 0, i8 %.2162
  %i.fu = icmp sgt i64 %indvars.iv179, 1
  br i1 %i.fu, label %.lr.ph165, label %.preheader, !llvm.loop !14

bb.ap:                                            ; preds = %.preheader
  %i.fv = uitofp i8 %i.ff to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 291, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.1, x86_fp80 noundef %i.fv, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.290000e+02, i8 noundef signext 105) #4
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader, %bb.ap
  %i.fw = load i64, ptr @tpm_tis_base_addr, align 8
  %i.fx = add i64 %i.fw, 4096
  %i.fy = load ptr, ptr @global_qtest, align 8
  %i.fz = tail call zeroext i8 @qtest_readb(ptr noundef %i.fy, i64 noundef %i.fx) #4 ; 2 uses
  %i.ga = icmp eq i8 %i.fz, -127
  br i1 %i.ga, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gb = uitofp i8 %i.fz to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 291, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.1, x86_fp80 noundef %i.gb, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.290000e+02, i8 noundef signext 105) #4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gc = load i64, ptr @tpm_tis_base_addr, align 8
  %i.gd = add i64 %i.gc, 8192
  %i.ge = load ptr, ptr @global_qtest, align 8
  %i.gf = tail call zeroext i8 @qtest_readb(ptr noundef %i.ge, i64 noundef %i.gd) #4 ; 2 uses
  %i.gg = icmp eq i8 %i.gf, -127
  br i1 %i.gg, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gh = uitofp i8 %i.gf to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 291, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.1, x86_fp80 noundef %i.gh, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.290000e+02, i8 noundef signext 105) #4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gi = load i64, ptr @tpm_tis_base_addr, align 8
  %i.gj = add i64 %i.gi, 12288
  %i.gk = load ptr, ptr @global_qtest, align 8
  %i.gl = tail call zeroext i8 @qtest_readb(ptr noundef %i.gk, i64 noundef %i.gj) #4 ; 2 uses
  %i.gm = icmp eq i8 %i.gl, -127
  br i1 %i.gm, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gn = uitofp i8 %i.gl to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 291, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_seize, ptr noundef nonnull @.str.1, x86_fp80 noundef %i.gn, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.290000e+02, i8 noundef signext 105) #4
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
  %i.b = shl nuw nsw i64 %indvars.iv, 12          ; 4 uses
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

bb.l:                                             ; preds = %.thread96
  %i.at = uitofp i8 %i.ar to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 335, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_release, ptr noundef nonnull @.str.12, x86_fp80 noundef %i.at, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.350000e+02, i8 noundef signext 105) #4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread96
  %i.au = icmp eq i64 %indvars.iv, 3
  br i1 %i.au, label %bb.o, label %.thread99

.thread99:                                        ; preds = %bb.k, %bb.m
  %i.av = phi i1 [ %i.ak, %bb.m ], [ false, %bb.k ] ; 2 uses
  %i.aw = phi i1 [ false, %bb.m ], [ true, %bb.k ] ; 2 uses
  %i.ax = load i64, ptr @tpm_tis_base_addr, align 8
  %i.ay = add i64 %i.ax, 12288
  %i.az = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_writeb(ptr noundef %i.az, i64 noundef %i.ay, i8 noundef zeroext 2) #4
  %i.ba = load i64, ptr @tpm_tis_base_addr, align 8
  %i.bb = add i64 %i.ba, 12288
  %i.bc = load ptr, ptr @global_qtest, align 8
  %i.bd = tail call zeroext i8 @qtest_readb(ptr noundef %i.bc, i64 noundef %i.bb) #4 ; 2 uses
  %i.be = icmp eq i8 %i.bd, -121
  br i1 %i.be, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread99
  %i.bf = uitofp i8 %i.bd to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 335, ptr noundef nonnull @__func__.tpm_tis_test_check_access_reg_release, ptr noundef nonnull @.str.12, x86_fp80 noundef %i.bf, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.350000e+02, i8 noundef signext 105) #4
  br label %bb.o

end_hunk_0
