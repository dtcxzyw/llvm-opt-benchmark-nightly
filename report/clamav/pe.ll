Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe?download=true
inline.NumInlined: 74
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0_@cli_scanpe:bb.a
bb.vx:                                            ; preds = %.thread3118
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.f, i64 99
  %i.bzm = sext i16 %.2 to i32                    ; 2 uses
  %i.bzn = sext i16 %.2 to i64
  %i.bzo = getelementptr inbounds i8, ptr %i.bzl, i64 %i.bzn ; 2 uses
  %i.bzp = load i16, ptr %i.bzo, align 1
  %i.bzq = xor i16 %i.bzp, -7510
  %i.bzr = getelementptr i8, ptr %i.bzo, i64 2
  %i.bzs = load i8, ptr %i.bzr, align 1
  %i.bzt = zext i8 %i.bzs to i16
  %i.bzu = xor i16 %i.bzt, 204
  %i.bzv = or i16 %i.bzq, %i.bzu
  %i.bzw = icmp ne i16 %i.bzv, 0
  %i.bzx = zext i1 %i.bzw to i32
  %.not2738 = icmp eq i32 %i.bzx, 0
  br i1 %.not2738, label %bb.vy, label %.thread3123

bb.vy:                                            ; preds = %bb.vx
  %i.bzy = getelementptr i8, ptr %i.bvl, i64 -28
  %i.bzz = load i32, ptr %i.bzy, align 4, !tbaa !15
  %i.caa = add nuw nsw i32 %.22091, 198
  %i.cab = add nsw i32 %i.caa, %i.bzm
  %i.cac = add i32 %i.cab, %i.bzz
  %i.cad = zext i32 %i.cac to i64
  %.not2739 = icmp ult i64 %i.ae, %i.cad
  br i1 %.not2739, label %.thread3123, label %bb.vz

bb.vz:                                            ; preds = %bb.vy
  %i.cae = call ptr @cli_max_malloc(i64 noundef %i.ae) #22 ; 9 uses
  %i.caf = icmp eq ptr %i.cae, null
  br i1 %i.caf, label %bb.wa, label %bb.wb

bb.wa:                                            ; preds = %bb.vz
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.134, i64 noundef %i.ae) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.wb:                                            ; preds = %bb.vz
  %i.cag = call fastcc i64 @fmap_readn(ptr noundef %i.ac, ptr noundef nonnull %i.cae, i64 noundef 0, i64 noundef %i.ae)
  %.not2740 = icmp eq i64 %i.cag, %i.ae
  br i1 %.not2740, label %bb.wd, label %bb.wc

bb.wc:                                            ; preds = %bb.wb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.135, i64 noundef %i.ae) #22
  call void @free(ptr noundef nonnull %i.cae) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.wd:                                            ; preds = %bb.wb
  %.not2741 = icmp eq ptr %.02164, null
  br i1 %.not2741, label %bb.wf, label %bb.we

bb.we:                                            ; preds = %bb.wd
  %i.cah = call i32 @cli_jsonstr(ptr noundef nonnull %.02164, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.136) #22 ; 0 uses
  br label %bb.wf

bb.wf:                                            ; preds = %bb.we, %bb.wd
  %i.cai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.caj = load ptr, ptr %i.cai, align 8, !tbaa !136
  %i.cak = call i64 @evidence_num_alerts(ptr noundef %i.caj) #22
  %i.cal = load i16, ptr %i.bf, align 8, !tbaa !30
  %i.cam = zext i16 %i.cal to i32
  %i.can = add nsw i32 %i.cam, -1
  %i.cao = load i32, ptr %i.kf, align 8, !tbaa !89
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.137, i32 noundef %i.can, i32 noundef %i.cao, i32 noundef %.22091, i32 noundef %i.bzm) #22
  %i.cap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.caq = load ptr, ptr %i.cap, align 8, !tbaa !127
  %i.car = call ptr @cli_gentemp(ptr noundef %i.caq) #22 ; 3 uses
  store ptr %i.car, ptr %i.g, align 8, !tbaa !82
  %.not2742 = icmp eq ptr %i.car, null
  br i1 %.not2742, label %bb.wg, label %bb.wh

bb.wg:                                            ; preds = %bb.wf
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.cae, i32 noundef 0)
  br label %.thread2995

bb.wh:                                            ; preds = %bb.wf
  %i.cas = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.car, i32 noundef 578, i32 noundef 384) #22 ; 6 uses
  %i.cat = icmp slt i32 %i.cas, 0
  br i1 %i.cat, label %bb.wi, label %bb.wj

bb.wi:                                            ; preds = %bb.wh
  %i.cau = load ptr, ptr %i.g, align 8, !tbaa !82
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138, ptr noundef %i.cau) #22
  %i.cav = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cav) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.cae, i32 noundef 0)
  br label %.thread2995

bb.wj:                                            ; preds = %bb.wh
  %i.caw = trunc nsw i64 %i.ae to i32
  %i.cax = load ptr, ptr %2, align 8, !tbaa !29
  %i.cay = load i16, ptr %i.bf, align 8, !tbaa !30
  %i.caz = zext i16 %i.cay to i32
  %i.cba = add nsw i32 %i.caz, -1
  %i.cbb = load i32, ptr %i.kf, align 8, !tbaa !89
  %i.cbc = call i32 @yc_decrypt(ptr noundef nonnull %0, ptr noundef nonnull %i.cae, i32 noundef %i.caw, ptr noundef %i.cax, i32 noundef %i.cba, i32 noundef %i.cbb, i32 noundef %i.cas, i32 noundef %.22091, i16 noundef signext %.2) #22
  %cond8 = icmp eq i32 %i.cbc, 0
  br i1 %cond8, label %bb.wk, label %bb.wt

bb.wk:                                            ; preds = %bb.wj
  %i.cbd = load ptr, ptr %i.g, align 8, !tbaa !82
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.139, ptr noundef %i.cbd) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.cae, i32 noundef 0)
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.cbe = call i64 @lseek(i32 noundef %i.cas, i64 noundef 0, i32 noundef 0) #22 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.45) #22
  %i.cbf = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.cbg = call i32 @cli_magic_scan_desc(i32 noundef %i.cas, ptr noundef %i.cbf, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #22 ; 2 uses
  %.not2746 = icmp eq i32 %i.cbg, 0
  %i.cbh = call i32 @close(i32 noundef %i.cas) #22 ; 0 uses
  %i.cbi = load ptr, ptr %i.ks, align 8, !tbaa !63
  %i.cbj = getelementptr inbounds nuw i8, ptr %i.cbi, i64 48
  %i.cbk = load i32, ptr %i.cbj, align 8, !tbaa !128
  %.not2747 = icmp eq i32 %i.cbk, 0               ; 2 uses
  br i1 %.not2746, label %bb.wp, label %bb.wl

bb.wl:                                            ; preds = %bb.wk
  br i1 %.not2747, label %bb.wm, label %bb.wo

bb.wm:                                            ; preds = %bb.wl
  %i.cbl = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.cbm = call i32 @cli_unlink(ptr noundef %i.cbl) #22
  %.not2750 = icmp eq i32 %i.cbm, 0
  br i1 %.not2750, label %bb.wo, label %bb.wn

bb.wn:                                            ; preds = %bb.wm
  %i.cbn = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbn) #22
  br label %.thread2995

bb.wo:                                            ; preds = %bb.wm, %bb.wl
  %i.cbo = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbo) #22
  br label %.thread2995

bb.wp:                                            ; preds = %bb.wk
  br i1 %.not2747, label %bb.wq, label %bb.ws

bb.wq:                                            ; preds = %bb.wp
  %i.cbp = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.cbq = call i32 @cli_unlink(ptr noundef %i.cbp) #22
  %.not2748 = icmp eq i32 %i.cbq, 0
  br i1 %.not2748, label %bb.ws, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  %i.cbr = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbr) #22
  br label %.thread2995

bb.ws:                                            ; preds = %bb.wq, %bb.wp
  %i.cbs = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbs) #22
  br label %.thread2995

bb.wt:                                            ; preds = %bb.wj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.140) #22
  %i.cbt = call i32 @close(i32 noundef %i.cas) #22 ; 0 uses
  %i.cbu = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.cbv = call i32 @cli_unlink(ptr noundef %i.cbu) #22
  %.not2743 = icmp eq i32 %i.cbv, 0
  br i1 %.not2743, label %bb.wv, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.cbw = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbw) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.cae, i32 noundef 0)
  br label %.thread2995

bb.wv:                                            ; preds = %bb.wt
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.cae, i32 noundef 0)
  %i.cbx = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbx) #22
  %i.cby = load ptr, ptr %i.p, align 8, !tbaa !114
  %i.cbz = load i32, ptr %i.cby, align 4, !tbaa !116
  %i.cca = and i32 %i.cbz, 1
  %.not2744 = icmp eq i32 %i.cca, 0
  br i1 %.not2744, label %bb.ww, label %.thread3123

bb.ww:                                            ; preds = %bb.wv
  %i.ccb = load ptr, ptr %i.cai, align 8, !tbaa !136
  %i.ccc = call i64 @evidence_num_alerts(ptr noundef %i.ccb) #22
  %.not2745 = icmp eq i64 %i.cak, %i.ccc
  br i1 %.not2745, label %.thread3123, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

.thread3123:                                      ; preds = %.thread3113, %bb.vv, %bb.vu, %bb.vy, %bb.vx, %.thread3118, %bb.wv, %bb.ww, %bb.vj, %bb.vk, %bb.vl
  %i.ccd = load ptr, ptr %i.kx, align 8, !tbaa !58
  %i.cce = load i32, ptr %i.ccd, align 4, !tbaa !60
  %i.ccf = and i32 %i.cce, 2048
  %.not2751 = icmp eq i32 %i.ccf, 0
  br i1 %.not2751, label %.critedge190, label %bb.wy

bb.wy:                                            ; preds = %.thread3123
  %i.ccg = load i16, ptr %i.bf, align 8, !tbaa !30 ; 3 uses
  %i.cch = icmp ugt i16 %i.ccg, 1
  br i1 %i.cch, label %bb.wz, label %.critedge190

bb.wz:                                            ; preds = %bb.wy
  %i.cci = zext i16 %i.ccg to i64                 ; 2 uses
  %i.ccj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cck = load i32, ptr %i.ccj, align 8, !tbaa !95
  %i.ccl = load ptr, ptr %2, align 8, !tbaa !29   ; 7 uses
  %i.ccm = getelementptr [36 x i8], ptr %i.ccl, i64 %i.cci ; 2 uses
  %i.ccn = getelementptr i8, ptr %i.ccm, i64 -36
  %i.cco = load i32, ptr %i.ccn, align 4, !tbaa !14
  %i.ccp = icmp eq i32 %i.cck, %i.cco
  br i1 %i.ccp, label %bb.xa, label %.critedge190

bb.xa:                                            ; preds = %bb.wz
  %i.ccq = load i32, ptr %i.f, align 16
  %i.ccr = xor i32 %i.ccq, -393521837
  %i.ccs = getelementptr i8, ptr %i.f, i64 3
  %i.cct = load i32, ptr %i.ccs, align 1
  %i.ccu = xor i32 %i.cct, -337955864
  %i.ccv = or i32 %i.ccr, %i.ccu
  %i.ccw = icmp ne i32 %i.ccv, 0
  %i.ccx = zext i1 %i.ccw to i32
  %i.ccy = icmp eq i32 %i.ccx, 0
  br i1 %i.ccy, label %bb.xb, label %.critedge190

bb.xb:                                            ; preds = %bb.xa
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.cda = load i128, ptr %i.ccz, align 1
  %i.cdb = xor i128 %i.cda, 107382933364910958583781871253727477992
  %i.cdc = getelementptr i8, ptr %i.ccz, i64 3
  %i.cdd = load i128, ptr %i.cdc, align 1
  %i.cde = xor i128 %i.cdd, 106755414664042775544543906123602198528
  %i.cdf = or i128 %i.cdb, %i.cde
  %i.cdg = icmp ne i128 %i.cdf, 0
  %i.cdh = zext i1 %i.cdg to i32
  %i.cdi = icmp eq i32 %i.cdh, 0
  br i1 %i.cdi, label %.lr.ph3302.preheader, label %.critedge190

.lr.ph3302.preheader:                             ; preds = %bb.xb
  %i.cdj = getelementptr inbounds nuw i8, ptr %i.ccl, i64 8
  %i.cdk = load i32, ptr %i.cdj, align 4, !tbaa !15
  %i.cdl = getelementptr i8, ptr %i.ccm, i64 -28
  %i.cdm = load i32, ptr %i.cdl, align 4, !tbaa !15
  %spec.select29013298 = call i32 @llvm.umin.i32(i32 %i.cdk, i32 %i.cdm) ; 2 uses
  %i.cdn = add nsw i64 %i.cci, -1                 ; 3 uses
  %xtraiter = and i64 %i.cdn, 1
  %i.cdo = icmp eq i16 %i.ccg, 2
  br i1 %i.cdo, label %.lr.ph3302.epil.preheader, label %.lr.ph3302.preheader.new

.lr.ph3302.preheader.new:                         ; preds = %.lr.ph3302.preheader
  %unroll_iter = and i64 %i.cdn, -2
  br label %.lr.ph3302

.lr.ph3302:                                       ; preds = %.lr.ph3302, %.lr.ph3302.preheader.new
  %indvars.iv3402 = phi i64 [ 1, %.lr.ph3302.preheader.new ], [ %indvars.iv.next3403.1, %.lr.ph3302 ] ; 3 uses
  %spec.select29013300 = phi i32 [ %spec.select29013298, %.lr.ph3302.preheader.new ], [ %spec.select2901.1, %.lr.ph3302 ]
  %i.cdp = phi ptr [ %i.ccl, %.lr.ph3302.preheader.new ], [ %i.cec, %.lr.ph3302 ] ; 2 uses
  %.121803299 = phi i32 [ 0, %.lr.ph3302.preheader.new ], [ %spec.select2902.1, %.lr.ph3302 ]
  %niter = phi i64 [ 0, %.lr.ph3302.preheader.new ], [ %niter.next.1, %.lr.ph3302 ]
  %i.cdq = load i32, ptr %i.cdp, align 4, !tbaa !14
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.cdp, i64 4
  %i.cds = load i32, ptr %i.cdr, align 4, !tbaa !61
  %i.cdt = add i32 %i.cds, %i.cdq
  %spec.select2902 = call i32 @llvm.umax.i32(i32 %.121803299, i32 %i.cdt)
  %i.cdu = getelementptr inbounds nuw [36 x i8], ptr %i.ccl, i64 %indvars.iv3402 ; 3 uses
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cdu, i64 8
  %i.cdw = load i32, ptr %i.cdv, align 4, !tbaa !15
  %spec.select2901 = call i32 @llvm.umin.i32(i32 %i.cdw, i32 %spec.select29013300)
  %i.cdx = load i32, ptr %i.cdu, align 4, !tbaa !14
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.cdu, i64 4
  %i.cdz = load i32, ptr %i.cdy, align 4, !tbaa !61
  %i.cea = add i32 %i.cdz, %i.cdx
  %spec.select2902.1 = call i32 @llvm.umax.i32(i32 %spec.select2902, i32 %i.cea) ; 3 uses
  %i.ceb = getelementptr inbounds nuw [36 x i8], ptr %i.ccl, i64 %indvars.iv3402 ; 2 uses
  %i.cec = getelementptr inbounds nuw i8, ptr %i.ceb, i64 36 ; 2 uses
  %i.ced = getelementptr inbounds nuw i8, ptr %i.ceb, i64 44
  %i.cee = load i32, ptr %i.ced, align 4, !tbaa !15
  %spec.select2901.1 = call i32 @llvm.umin.i32(i32 %i.cee, i32 %spec.select2901) ; 3 uses
  %indvars.iv.next3403.1 = add nuw nsw i64 %indvars.iv3402, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge3303.unr-lcssa, label %.lr.ph3302

._crit_edge3303.unr-lcssa:                        ; preds = %.lr.ph3302
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge3303, label %.lr.ph3302.epil.preheader

.lr.ph3302.epil.preheader:                        ; preds = %._crit_edge3303.unr-lcssa, %.lr.ph3302.preheader
  %indvars.iv3402.epil.init = phi i64 [ 1, %.lr.ph3302.preheader ], [ %indvars.iv.next3403.1, %._crit_edge3303.unr-lcssa ]
  %spec.select29013300.epil.init = phi i32 [ %spec.select29013298, %.lr.ph3302.preheader ], [ %spec.select2901.1, %._crit_edge3303.unr-lcssa ]
  %.epil.init = phi ptr [ %i.ccl, %.lr.ph3302.preheader ], [ %i.cec, %._crit_edge3303.unr-lcssa ] ; 2 uses
  %.121803299.epil.init = phi i32 [ 0, %.lr.ph3302.preheader ], [ %spec.select2902.1, %._crit_edge3303.unr-lcssa ]
  %lcmp.mod3759 = trunc i64 %i.cdn to i1
  call void @llvm.assume(i1 %lcmp.mod3759)
  %i.cef = load i32, ptr %.epil.init, align 4, !tbaa !14
  %i.ceg = getelementptr inbounds nuw i8, ptr %.epil.init, i64 4
  %i.ceh = load i32, ptr %i.ceg, align 4, !tbaa !61
  %i.cei = add i32 %i.ceh, %i.cef
  %spec.select2902.epil = call i32 @llvm.umax.i32(i32 %.121803299.epil.init, i32 %i.cei)
  %i.cej = getelementptr inbounds nuw [36 x i8], ptr %i.ccl, i64 %indvars.iv3402.epil.init
  %i.cek = getelementptr inbounds nuw i8, ptr %i.cej, i64 8
  %i.cel = load i32, ptr %i.cek, align 4, !tbaa !15
  %spec.select2901.epil = call i32 @llvm.umin.i32(i32 %i.cel, i32 %spec.select29013300.epil.init)
  br label %._crit_edge3303

._crit_edge3303:                                  ; preds = %._crit_edge3303.unr-lcssa, %.lr.ph3302.epil.preheader
  %spec.select2902.lcssa = phi i32 [ %spec.select2902.1, %._crit_edge3303.unr-lcssa ], [ %spec.select2902.epil, %.lr.ph3302.epil.preheader ] ; 4 uses
  %spec.select2901.lcssa = phi i32 [ %spec.select2901.1, %._crit_edge3303.unr-lcssa ], [ %spec.select2901.epil, %.lr.ph3302.epil.preheader ] ; 3 uses
  %3 = add i32 %spec.select2901.lcssa, -1
  %.not3155 = icmp ult i32 %3, %spec.select2902.lcssa
  br i1 %.not3155, label %bb.xc, label %.critedge190

bb.xc:                                            ; preds = %._crit_edge3303
  %i.cem = zext i32 %spec.select2902.lcssa to i64 ; 3 uses
  %i.cen = call i32 @cli_checklimits(ptr noundef nonnull @.str.143, ptr noundef nonnull %0, i64 noundef %i.cem, i64 noundef 0, i64 noundef 0) #22
  %.not2754 = icmp eq i32 %i.cen, 0
  br i1 %.not2754, label %bb.xe, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.xe:                                            ; preds = %bb.xc
  %i.ceo = call ptr @cli_max_calloc(i64 noundef %i.cem, i64 noundef 1) #22 ; 14 uses
  %.not2755 = icmp eq ptr %i.ceo, null
  br i1 %.not2755, label %bb.xf, label %bb.xg

bb.xf:                                            ; preds = %bb.xe
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.xg:                                            ; preds = %bb.xe
  %i.cep = zext i32 %spec.select2901.lcssa to i64 ; 2 uses
  %i.ceq = call fastcc i64 @fmap_readn(ptr noundef %i.ac, ptr noundef nonnull %i.ceo, i64 noundef 0, i64 noundef %i.cep)
  %.not2756 = icmp eq i64 %i.ceq, %i.cep
  br i1 %.not2756, label %.preheader3182, label %bb.xh

.preheader3182:                                   ; preds = %bb.xg
  %i.cer = load i16, ptr %i.bf, align 8, !tbaa !30 ; 2 uses
  %.not3342 = icmp eq i16 %i.cer, 1
  br i1 %.not3342, label %._crit_edge3308, label %.lr.ph3307

.lr.ph3307:                                       ; preds = %.preheader3182
  %i.ces = ptrtoint ptr %i.ceo to i64             ; 2 uses
  %i.cet = add i64 %i.ces, %i.cem                 ; 2 uses
  %.pre3436 = load ptr, ptr %2, align 8, !tbaa !29
  br label %bb.xi

bb.xh:                                            ; preds = %bb.xg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.144, i32 noundef %spec.select2901.lcssa) #22
  call void @free(ptr noundef nonnull %i.ceo) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.xi:                                            ; preds = %.lr.ph3307, %._crit_edge3437
  %i.ceu = phi i16 [ %i.cer, %.lr.ph3307 ], [ %i.cfq, %._crit_edge3437 ] ; 3 uses
  %i.cev = phi ptr [ %.pre3436, %.lr.ph3307 ], [ %i.cfr, %._crit_edge3437 ] ; 2 uses
  %indvars.iv3405 = phi i64 [ 0, %.lr.ph3307 ], [ %indvars.iv.next3406, %._crit_edge3437 ] ; 6 uses
  %i.cew = getelementptr inbounds nuw [36 x i8], ptr %i.cev, i64 %indvars.iv3405 ; 3 uses
  %i.cex = getelementptr inbounds nuw i8, ptr %i.cew, i64 12
  %i.cey = load i32, ptr %i.cex, align 4, !tbaa !13 ; 3 uses
  %.not2757 = icmp eq i32 %i.cey, 0
  br i1 %.not2757, label %._crit_edge3437, label %bb.xj

bb.xj:                                            ; preds = %bb.xi
  %i.cez = zext i32 %i.cey to i64                 ; 2 uses
  %.not2758 = icmp ugt i32 %i.cey, %spec.select2902.lcssa
  br i1 %.not2758, label %._crit_edge3308.loopexit, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %i.cfa = load i32, ptr %i.cew, align 4, !tbaa !14
  %i.cfb = zext i32 %i.cfa to i64
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.ceo, i64 %i.cfb ; 2 uses
  %i.cfd = ptrtoint ptr %i.cfc to i64             ; 2 uses
  %i.cfe = add i64 %i.cfd, %i.cez                 ; 2 uses
  %.not2760 = icmp ule i64 %i.cfe, %i.cet
  %i.cff = icmp ugt i64 %i.cfe, %i.ces
  %or.cond2904 = and i1 %.not2760, %i.cff
  %i.cfg = icmp ugt i64 %i.cet, %i.cfd
  %or.cond2905 = and i1 %i.cfg, %or.cond2904
  br i1 %or.cond2905, label %bb.xl, label %._crit_edge3308.loopexit

bb.xl:                                            ; preds = %bb.xk
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cew, i64 8
  %i.cfi = load i32, ptr %i.cfh, align 4, !tbaa !15
  %i.cfj = zext i32 %i.cfi to i64
  %i.cfk = call fastcc i64 @fmap_readn(ptr noundef %i.ac, ptr noundef nonnull %i.cfc, i64 noundef %i.cfj, i64 noundef %i.cez)
  %i.cfl = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.cfm = getelementptr inbounds nuw [36 x i8], ptr %i.cfl, i64 %indvars.iv3405
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cfm, i64 12
  %i.cfo = load i32, ptr %i.cfn, align 4, !tbaa !13
  %i.cfp = zext i32 %i.cfo to i64
  %.not2761 = icmp eq i64 %i.cfk, %i.cfp
  %.pre3439.pre = load i16, ptr %i.bf, align 8, !tbaa !30 ; 2 uses
  br i1 %.not2761, label %._crit_edge3437, label %._crit_edge3308.loopexit

._crit_edge3437:                                  ; preds = %bb.xl, %bb.xi
  %i.cfq = phi i16 [ %i.ceu, %bb.xi ], [ %.pre3439.pre, %bb.xl ] ; 3 uses
  %i.cfr = phi ptr [ %i.cev, %bb.xi ], [ %i.cfl, %bb.xl ]
  %indvars.iv.next3406 = add nuw nsw i64 %indvars.iv3405, 1 ; 3 uses
  %i.cfs = zext i16 %i.cfq to i64
  %i.cft = add nuw nsw i64 %i.cfs, 4294967295
  %i.cfu = and i64 %i.cft, 4294967295
  %i.cfv = icmp samesign ult i64 %indvars.iv.next3406, %i.cfu
  br i1 %i.cfv, label %bb.xi, label %._crit_edge3308.loopexit

._crit_edge3308.loopexit:                         ; preds = %bb.xl, %bb.xj, %bb.xk, %._crit_edge3437
  %.pre3439 = phi i16 [ %i.cfq, %._crit_edge3437 ], [ %i.ceu, %bb.xk ], [ %i.ceu, %bb.xj ], [ %.pre3439.pre, %bb.xl ]
  %.92223.lcssa.ph.in = phi i64 [ %indvars.iv.next3406, %._crit_edge3437 ], [ %indvars.iv3405, %bb.xk ], [ %indvars.iv3405, %bb.xj ], [ %indvars.iv3405, %bb.xl ]
  %.92223.lcssa.ph = trunc nuw i64 %.92223.lcssa.ph.in to i32
  %i.cfw = add i32 %.92223.lcssa.ph, 1
  br label %._crit_edge3308

._crit_edge3308:                                  ; preds = %._crit_edge3308.loopexit, %.preheader3182
  %i.cfx = phi i16 [ 1, %.preheader3182 ], [ %.pre3439, %._crit_edge3308.loopexit ] ; 2 uses
  %.92223.lcssa = phi i32 [ 1, %.preheader3182 ], [ %i.cfw, %._crit_edge3308.loopexit ]
  %i.cfy = zext i16 %i.cfx to i32
  %.not2762 = icmp eq i32 %.92223.lcssa, %i.cfy
  br i1 %.not2762, label %bb.xn, label %bb.xm

bb.xm:                                            ; preds = %._crit_edge3308
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.145) #22
  br label %.critedge190.sink.split

bb.xn:                                            ; preds = %._crit_edge3308
  %i.cfz = load ptr, ptr %2, align 8, !tbaa !29
  %i.cga = zext i16 %i.cfx to i64
  %i.cgb = getelementptr [36 x i8], ptr %i.cfz, i64 %i.cga
  %i.cgc = getelementptr i8, ptr %i.cgb, i64 -24
  %i.cgd = load i32, ptr %i.cgc, align 4, !tbaa !13
  %i.cge = zext i32 %i.cgd to i64
  %i.cgf = call ptr @cli_max_calloc(i64 noundef %i.cge, i64 noundef 1) #22 ; 9 uses
  %i.cgg = icmp eq ptr %i.cgf, null
  br i1 %i.cgg, label %bb.xo, label %bb.xp

bb.xo:                                            ; preds = %bb.xn
  call void @free(ptr noundef %i.ceo) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.xp:                                            ; preds = %bb.xn
  %i.cgh = load ptr, ptr %2, align 8, !tbaa !29
  %i.cgi = load i16, ptr %i.bf, align 8, !tbaa !30
  %i.cgj = zext i16 %i.cgi to i64
  %i.cgk = getelementptr [36 x i8], ptr %i.cgh, i64 %i.cgj ; 2 uses
  %i.cgl = getelementptr i8, ptr %i.cgk, i64 -24
  %i.cgm = load i32, ptr %i.cgl, align 4, !tbaa !13 ; 2 uses
  %.not2763 = icmp eq i32 %i.cgm, 0
  br i1 %.not2763, label %bb.xr, label %bb.xq

bb.xq:                                            ; preds = %bb.xp
  %i.cgn = getelementptr i8, ptr %i.cgk, i64 -28
  %i.cgo = load i32, ptr %i.cgn, align 4, !tbaa !15
  %i.cgp = zext i32 %i.cgo to i64
  %i.cgq = zext i32 %i.cgm to i64
  %i.cgr = call fastcc i64 @fmap_readn(ptr noundef %i.ac, ptr noundef nonnull %i.cgf, i64 noundef %i.cgp, i64 noundef %i.cgq)
  %i.cgs = load ptr, ptr %2, align 8, !tbaa !29
  %i.cgt = load i16, ptr %i.bf, align 8, !tbaa !30
  %i.cgu = zext i16 %i.cgt to i64
  %i.cgv = getelementptr [36 x i8], ptr %i.cgs, i64 %i.cgu
  %i.cgw = getelementptr i8, ptr %i.cgv, i64 -24
  %i.cgx = load i32, ptr %i.cgw, align 4, !tbaa !13 ; 2 uses
  %i.cgy = zext i32 %i.cgx to i64
  %.not2764 = icmp eq i64 %i.cgr, %i.cgy
  br i1 %.not2764, label %bb.xs, label %bb.xr

bb.xr:                                            ; preds = %bb.xq, %bb.xp
  %i.cgz = phi i32 [ %i.cgx, %bb.xq ], [ 0, %bb.xp ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.146, i32 noundef %i.cgz) #22
  call void @free(ptr noundef %i.ceo) #22
  call void @free(ptr noundef nonnull %i.cgf) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.xs:                                            ; preds = %bb.xq
  %.not2765 = icmp eq ptr %.02164, null
  br i1 %.not2765, label %bb.xu, label %bb.xt

bb.xt:                                            ; preds = %bb.xs
  %i.cha = call i32 @cli_jsonstr(ptr noundef nonnull %.02164, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.147) #22 ; 0 uses
  br label %bb.xu

bb.xu:                                            ; preds = %bb.xt, %bb.xs
  %i.chb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.chc = load ptr, ptr %i.chb, align 8, !tbaa !127
  %i.chd = call ptr @cli_gentemp(ptr noundef %i.chc) #22 ; 3 uses
  store ptr %i.chd, ptr %i.g, align 8, !tbaa !82
  %.not2766 = icmp eq ptr %i.chd, null
  br i1 %.not2766, label %bb.xv, label %bb.xw

bb.xv:                                            ; preds = %bb.xu
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.ceo, ptr noundef nonnull %i.cgf, i32 noundef 0)
  br label %.thread2995

bb.xw:                                            ; preds = %bb.xu
  %i.che = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.chd, i32 noundef 578, i32 noundef 384) #22 ; 6 uses
  %i.chf = icmp slt i32 %i.che, 0
  br i1 %i.chf, label %bb.xx, label %bb.xy

bb.xx:                                            ; preds = %bb.xw
  %i.chg = load ptr, ptr %i.g, align 8, !tbaa !82
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.148, ptr noundef %i.chg) #22
  %i.chh = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.chh) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.ceo, ptr noundef nonnull %i.cgf, i32 noundef 0)
  br label %.thread2995

bb.xy:                                            ; preds = %bb.xw
  %i.chi = load ptr, ptr %2, align 8, !tbaa !29
end_hunk_0
