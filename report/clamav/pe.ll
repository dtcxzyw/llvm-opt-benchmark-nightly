Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe?download=true
inline.NumInlined: 74
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0_@cli_scanpe:bb.a
bb.vx:                                            ; preds = %.thread3118
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.f, i64 99
  %i.bzh = sext i16 %.2 to i32                    ; 2 uses
  %i.bzi = sext i16 %.2 to i64
  %i.bzj = getelementptr inbounds i8, ptr %i.bzg, i64 %i.bzi ; 2 uses
  %i.bzk = load i16, ptr %i.bzj, align 1
  %i.bzl = xor i16 %i.bzk, -7510
  %i.bzm = getelementptr i8, ptr %i.bzj, i64 2
  %i.bzn = load i8, ptr %i.bzm, align 1
  %i.bzo = zext i8 %i.bzn to i16
  %i.bzp = xor i16 %i.bzo, 204
  %i.bzq = or i16 %i.bzl, %i.bzp
  %i.bzr = icmp ne i16 %i.bzq, 0
  %i.bzs = zext i1 %i.bzr to i32
  %.not2738 = icmp eq i32 %i.bzs, 0
  br i1 %.not2738, label %bb.vy, label %.thread3123

bb.vy:                                            ; preds = %bb.vx
  %i.bzt = getelementptr i8, ptr %i.bvg, i64 -28
  %i.bzu = load i32, ptr %i.bzt, align 4, !tbaa !15
  %i.bzv = add nuw nsw i32 %.22091, 198
  %i.bzw = add nsw i32 %i.bzv, %i.bzh
  %i.bzx = add i32 %i.bzw, %i.bzu
  %i.bzy = zext i32 %i.bzx to i64
  %.not2739 = icmp ult i64 %i.ae, %i.bzy
  br i1 %.not2739, label %.thread3123, label %bb.vz

bb.vz:                                            ; preds = %bb.vy
  %i.bzz = call ptr @cli_max_malloc(i64 noundef %i.ae) #22 ; 9 uses
  %i.caa = icmp eq ptr %i.bzz, null
  br i1 %i.caa, label %bb.wa, label %bb.wb

bb.wa:                                            ; preds = %bb.vz
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.134, i64 noundef %i.ae) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.wb:                                            ; preds = %bb.vz
  %i.cab = call fastcc i64 @fmap_readn(ptr noundef %i.ac, ptr noundef nonnull %i.bzz, i64 noundef 0, i64 noundef %i.ae)
  %.not2740 = icmp eq i64 %i.cab, %i.ae
  br i1 %.not2740, label %bb.wd, label %bb.wc

bb.wc:                                            ; preds = %bb.wb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.135, i64 noundef %i.ae) #22
  call void @free(ptr noundef nonnull %i.bzz) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.wd:                                            ; preds = %bb.wb
  %.not2741 = icmp eq ptr %.02164, null
  br i1 %.not2741, label %bb.wf, label %bb.we

bb.we:                                            ; preds = %bb.wd
  %i.cac = call i32 @cli_jsonstr(ptr noundef nonnull %.02164, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.136) #22 ; 0 uses
  br label %bb.wf

bb.wf:                                            ; preds = %bb.we, %bb.wd
  %i.cad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cae = load ptr, ptr %i.cad, align 8, !tbaa !136
  %i.caf = call i64 @evidence_num_alerts(ptr noundef %i.cae) #22
  %i.cag = load i16, ptr %i.bf, align 8, !tbaa !30
  %i.cah = zext i16 %i.cag to i32
  %i.cai = add nsw i32 %i.cah, -1
  %i.caj = load i32, ptr %i.kf, align 8, !tbaa !89
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.137, i32 noundef %i.cai, i32 noundef %i.caj, i32 noundef %.22091, i32 noundef %i.bzh) #22
  %i.cak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cal = load ptr, ptr %i.cak, align 8, !tbaa !127
  %i.cam = call ptr @cli_gentemp(ptr noundef %i.cal) #22 ; 3 uses
  store ptr %i.cam, ptr %i.g, align 8, !tbaa !82
  %.not2742 = icmp eq ptr %i.cam, null
  br i1 %.not2742, label %bb.wg, label %bb.wh

bb.wg:                                            ; preds = %bb.wf
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bzz, i32 noundef 0)
  br label %.thread2995

bb.wh:                                            ; preds = %bb.wf
  %i.can = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.cam, i32 noundef 578, i32 noundef 384) #22 ; 6 uses
  %i.cao = icmp slt i32 %i.can, 0
  br i1 %i.cao, label %bb.wi, label %bb.wj

bb.wi:                                            ; preds = %bb.wh
  %i.cap = load ptr, ptr %i.g, align 8, !tbaa !82
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138, ptr noundef %i.cap) #22
  %i.caq = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.caq) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bzz, i32 noundef 0)
  br label %.thread2995

bb.wj:                                            ; preds = %bb.wh
  %i.car = trunc nsw i64 %i.ae to i32
  %i.cas = load ptr, ptr %2, align 8, !tbaa !29
  %i.cat = load i16, ptr %i.bf, align 8, !tbaa !30
  %i.cau = zext i16 %i.cat to i32
  %i.cav = add nsw i32 %i.cau, -1
  %i.caw = load i32, ptr %i.kf, align 8, !tbaa !89
  %i.cax = call i32 @yc_decrypt(ptr noundef nonnull %0, ptr noundef nonnull %i.bzz, i32 noundef %i.car, ptr noundef %i.cas, i32 noundef %i.cav, i32 noundef %i.caw, i32 noundef %i.can, i32 noundef %.22091, i16 noundef signext %.2) #22
  %cond8 = icmp eq i32 %i.cax, 0
  br i1 %cond8, label %bb.wk, label %bb.wt

bb.wk:                                            ; preds = %bb.wj
  %i.cay = load ptr, ptr %i.g, align 8, !tbaa !82
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.139, ptr noundef %i.cay) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bzz, i32 noundef 0)
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.caz = call i64 @lseek(i32 noundef %i.can, i64 noundef 0, i32 noundef 0) #22 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.45) #22
  %i.cba = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.cbb = call i32 @cli_magic_scan_desc(i32 noundef %i.can, ptr noundef %i.cba, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #22 ; 2 uses
  %.not2746 = icmp eq i32 %i.cbb, 0
  %i.cbc = call i32 @close(i32 noundef %i.can) #22 ; 0 uses
  %i.cbd = load ptr, ptr %i.ks, align 8, !tbaa !63
  %i.cbe = getelementptr inbounds nuw i8, ptr %i.cbd, i64 48
  %i.cbf = load i32, ptr %i.cbe, align 8, !tbaa !128
  %.not2747 = icmp eq i32 %i.cbf, 0               ; 2 uses
  br i1 %.not2746, label %bb.wp, label %bb.wl

bb.wl:                                            ; preds = %bb.wk
  br i1 %.not2747, label %bb.wm, label %bb.wo

bb.wm:                                            ; preds = %bb.wl
  %i.cbg = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.cbh = call i32 @cli_unlink(ptr noundef %i.cbg) #22
  %.not2750 = icmp eq i32 %i.cbh, 0
  br i1 %.not2750, label %bb.wo, label %bb.wn

bb.wn:                                            ; preds = %bb.wm
  %i.cbi = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbi) #22
  br label %.thread2995

bb.wo:                                            ; preds = %bb.wm, %bb.wl
  %i.cbj = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbj) #22
  br label %.thread2995

bb.wp:                                            ; preds = %bb.wk
  br i1 %.not2747, label %bb.wq, label %bb.ws

bb.wq:                                            ; preds = %bb.wp
  %i.cbk = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.cbl = call i32 @cli_unlink(ptr noundef %i.cbk) #22
  %.not2748 = icmp eq i32 %i.cbl, 0
  br i1 %.not2748, label %bb.ws, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  %i.cbm = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbm) #22
  br label %.thread2995

bb.ws:                                            ; preds = %bb.wq, %bb.wp
  %i.cbn = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbn) #22
  br label %.thread2995

bb.wt:                                            ; preds = %bb.wj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.140) #22
  %i.cbo = call i32 @close(i32 noundef %i.can) #22 ; 0 uses
  %i.cbp = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.cbq = call i32 @cli_unlink(ptr noundef %i.cbp) #22
  %.not2743 = icmp eq i32 %i.cbq, 0
  br i1 %.not2743, label %bb.wv, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.cbr = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbr) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bzz, i32 noundef 0)
  br label %.thread2995

bb.wv:                                            ; preds = %bb.wt
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bzz, i32 noundef 0)
  %i.cbs = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbs) #22
  %i.cbt = load ptr, ptr %i.p, align 8, !tbaa !114
  %i.cbu = load i32, ptr %i.cbt, align 4, !tbaa !116
  %i.cbv = and i32 %i.cbu, 1
  %.not2744 = icmp eq i32 %i.cbv, 0
  br i1 %.not2744, label %bb.ww, label %.thread3123

bb.ww:                                            ; preds = %bb.wv
  %i.cbw = load ptr, ptr %i.cad, align 8, !tbaa !136
  %i.cbx = call i64 @evidence_num_alerts(ptr noundef %i.cbw) #22
  %.not2745 = icmp eq i64 %i.caf, %i.cbx
  br i1 %.not2745, label %.thread3123, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

.thread3123:                                      ; preds = %.thread3113, %bb.vv, %bb.vu, %bb.vy, %bb.vx, %.thread3118, %bb.wv, %bb.ww, %bb.vj, %bb.vk, %bb.vl
  %i.cby = load ptr, ptr %i.kx, align 8, !tbaa !58
  %i.cbz = load i32, ptr %i.cby, align 4, !tbaa !60
  %i.cca = and i32 %i.cbz, 2048
  %.not2751 = icmp eq i32 %i.cca, 0
  br i1 %.not2751, label %.critedge190, label %bb.wy

bb.wy:                                            ; preds = %.thread3123
  %i.ccb = load i16, ptr %i.bf, align 8, !tbaa !30 ; 4 uses
  %i.ccc = icmp ugt i16 %i.ccb, 1
  br i1 %i.ccc, label %bb.wz, label %.critedge190

bb.wz:                                            ; preds = %bb.wy
  %i.ccd = zext i16 %i.ccb to i64
  %i.cce = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ccf = load i32, ptr %i.cce, align 8, !tbaa !95
  %i.ccg = load ptr, ptr %2, align 8, !tbaa !29   ; 7 uses
  %i.cch = getelementptr [36 x i8], ptr %i.ccg, i64 %i.ccd ; 2 uses
  %i.cci = getelementptr i8, ptr %i.cch, i64 -36
  %i.ccj = load i32, ptr %i.cci, align 4, !tbaa !14
  %i.cck = icmp eq i32 %i.ccf, %i.ccj
  br i1 %i.cck, label %bb.xa, label %.critedge190

bb.xa:                                            ; preds = %bb.wz
  %i.ccl = load i32, ptr %i.f, align 16
  %i.ccm = xor i32 %i.ccl, -393521837
  %i.ccn = getelementptr i8, ptr %i.f, i64 3
  %i.cco = load i32, ptr %i.ccn, align 1
  %i.ccp = xor i32 %i.cco, -337955864
  %i.ccq = or i32 %i.ccm, %i.ccp
  %i.ccr = icmp ne i32 %i.ccq, 0
  %i.ccs = zext i1 %i.ccr to i32
  %i.cct = icmp eq i32 %i.ccs, 0
  br i1 %i.cct, label %bb.xb, label %.critedge190

bb.xb:                                            ; preds = %bb.xa
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.ccv = load i128, ptr %i.ccu, align 1
  %i.ccw = xor i128 %i.ccv, 107382933364910958583781871253727477992
  %i.ccx = getelementptr i8, ptr %i.ccu, i64 3
  %i.ccy = load i128, ptr %i.ccx, align 1
  %i.ccz = xor i128 %i.ccy, 106755414664042775544543906123602198528
  %i.cda = or i128 %i.ccw, %i.ccz
  %i.cdb = icmp ne i128 %i.cda, 0
  %i.cdc = zext i1 %i.cdb to i32
  %i.cdd = icmp eq i32 %i.cdc, 0
  br i1 %i.cdd, label %.lr.ph3302.preheader, label %.critedge190

.lr.ph3302.preheader:                             ; preds = %bb.xb
  %i.cde = getelementptr inbounds nuw i8, ptr %i.ccg, i64 8
  %i.cdf = load i32, ptr %i.cde, align 4, !tbaa !15
  %i.cdg = getelementptr i8, ptr %i.cch, i64 -28
  %i.cdh = load i32, ptr %i.cdg, align 4, !tbaa !15
  %spec.select29013298 = call i32 @llvm.umin.i32(i32 %i.cdf, i32 %i.cdh) ; 2 uses
  %3 = zext i16 %i.ccb to i64
  %i.cdi = add nsw i64 %3, -1                     ; 3 uses
  %xtraiter = and i64 %i.cdi, 1
  %i.cdj = icmp eq i16 %i.ccb, 2
  br i1 %i.cdj, label %.lr.ph3302.epil.preheader, label %.lr.ph3302.preheader.new

.lr.ph3302.preheader.new:                         ; preds = %.lr.ph3302.preheader
  %unroll_iter = and i64 %i.cdi, -2
  br label %.lr.ph3302

.lr.ph3302:                                       ; preds = %.lr.ph3302, %.lr.ph3302.preheader.new
  %indvars.iv3402 = phi i64 [ 1, %.lr.ph3302.preheader.new ], [ %indvars.iv.next3403.1, %.lr.ph3302 ] ; 3 uses
  %spec.select29013300 = phi i32 [ %spec.select29013298, %.lr.ph3302.preheader.new ], [ %spec.select2901.1, %.lr.ph3302 ]
  %i.cdk = phi ptr [ %i.ccg, %.lr.ph3302.preheader.new ], [ %i.cdx, %.lr.ph3302 ] ; 2 uses
  %.121803299 = phi i32 [ 0, %.lr.ph3302.preheader.new ], [ %spec.select2902.1, %.lr.ph3302 ]
  %niter = phi i64 [ 0, %.lr.ph3302.preheader.new ], [ %niter.next.1, %.lr.ph3302 ]
  %i.cdl = load i32, ptr %i.cdk, align 4, !tbaa !14
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cdk, i64 4
  %i.cdn = load i32, ptr %i.cdm, align 4, !tbaa !61
  %i.cdo = add i32 %i.cdn, %i.cdl
  %spec.select2902 = call i32 @llvm.umax.i32(i32 %.121803299, i32 %i.cdo)
  %i.cdp = getelementptr inbounds nuw [36 x i8], ptr %i.ccg, i64 %indvars.iv3402 ; 3 uses
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdp, i64 8
  %i.cdr = load i32, ptr %i.cdq, align 4, !tbaa !15
  %spec.select2901 = call i32 @llvm.umin.i32(i32 %i.cdr, i32 %spec.select29013300)
  %i.cds = load i32, ptr %i.cdp, align 4, !tbaa !14
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.cdp, i64 4
  %i.cdu = load i32, ptr %i.cdt, align 4, !tbaa !61
  %i.cdv = add i32 %i.cdu, %i.cds
  %spec.select2902.1 = call i32 @llvm.umax.i32(i32 %spec.select2902, i32 %i.cdv) ; 3 uses
  %i.cdw = getelementptr inbounds nuw [36 x i8], ptr %i.ccg, i64 %indvars.iv3402 ; 2 uses
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.cdw, i64 36 ; 2 uses
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.cdw, i64 44
  %i.cdz = load i32, ptr %i.cdy, align 4, !tbaa !15
  %spec.select2901.1 = call i32 @llvm.umin.i32(i32 %i.cdz, i32 %spec.select2901) ; 3 uses
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
  %.epil.init = phi ptr [ %i.ccg, %.lr.ph3302.preheader ], [ %i.cdx, %._crit_edge3303.unr-lcssa ] ; 2 uses
  %.121803299.epil.init = phi i32 [ 0, %.lr.ph3302.preheader ], [ %spec.select2902.1, %._crit_edge3303.unr-lcssa ]
  %lcmp.mod3756 = trunc i64 %i.cdi to i1
  call void @llvm.assume(i1 %lcmp.mod3756)
  %i.cea = load i32, ptr %.epil.init, align 4, !tbaa !14
  %i.ceb = getelementptr inbounds nuw i8, ptr %.epil.init, i64 4
  %i.cec = load i32, ptr %i.ceb, align 4, !tbaa !61
  %i.ced = add i32 %i.cec, %i.cea
  %spec.select2902.epil = call i32 @llvm.umax.i32(i32 %.121803299.epil.init, i32 %i.ced)
  %i.cee = getelementptr inbounds nuw [36 x i8], ptr %i.ccg, i64 %indvars.iv3402.epil.init
  %i.cef = getelementptr inbounds nuw i8, ptr %i.cee, i64 8
  %i.ceg = load i32, ptr %i.cef, align 4, !tbaa !15
  %spec.select2901.epil = call i32 @llvm.umin.i32(i32 %i.ceg, i32 %spec.select29013300.epil.init)
  br label %._crit_edge3303

._crit_edge3303:                                  ; preds = %._crit_edge3303.unr-lcssa, %.lr.ph3302.epil.preheader
  %spec.select2902.lcssa = phi i32 [ %spec.select2902.1, %._crit_edge3303.unr-lcssa ], [ %spec.select2902.epil, %.lr.ph3302.epil.preheader ] ; 5 uses
  %spec.select2901.lcssa = phi i32 [ %spec.select2901.1, %._crit_edge3303.unr-lcssa ], [ %spec.select2901.epil, %.lr.ph3302.epil.preheader ] ; 4 uses
  %i.ceh = icmp eq i32 %spec.select2901.lcssa, 0
  %i.cei = icmp eq i32 %spec.select2902.lcssa, 0
  %i.cej = icmp ugt i32 %spec.select2901.lcssa, %spec.select2902.lcssa
  %i.cek = or i1 %i.cei, %i.cej
  %or.cond2903 = select i1 %i.ceh, i1 true, i1 %i.cek
  br i1 %or.cond2903, label %.critedge190, label %bb.xc

bb.xc:                                            ; preds = %._crit_edge3303
  %i.cel = zext i32 %spec.select2902.lcssa to i64 ; 3 uses
  %i.cem = call i32 @cli_checklimits(ptr noundef nonnull @.str.143, ptr noundef nonnull %0, i64 noundef %i.cel, i64 noundef 0, i64 noundef 0) #22
  %.not2754 = icmp eq i32 %i.cem, 0
  br i1 %.not2754, label %bb.xe, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.xe:                                            ; preds = %bb.xc
  %i.cen = call ptr @cli_max_calloc(i64 noundef %i.cel, i64 noundef 1) #22 ; 14 uses
  %.not2755 = icmp eq ptr %i.cen, null
  br i1 %.not2755, label %bb.xf, label %bb.xg

bb.xf:                                            ; preds = %bb.xe
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.xg:                                            ; preds = %bb.xe
  %i.ceo = zext i32 %spec.select2901.lcssa to i64 ; 2 uses
  %i.cep = call fastcc i64 @fmap_readn(ptr noundef %i.ac, ptr noundef nonnull %i.cen, i64 noundef 0, i64 noundef %i.ceo)
  %.not2756 = icmp eq i64 %i.cep, %i.ceo
  br i1 %.not2756, label %.preheader3182, label %bb.xh

.preheader3182:                                   ; preds = %bb.xg
  %i.ceq = load i16, ptr %i.bf, align 8, !tbaa !30 ; 2 uses
  %.not3342 = icmp eq i16 %i.ceq, 1
  br i1 %.not3342, label %._crit_edge3308, label %.lr.ph3307

.lr.ph3307:                                       ; preds = %.preheader3182
  %i.cer = ptrtoint ptr %i.cen to i64             ; 2 uses
  %i.ces = add i64 %i.cer, %i.cel                 ; 2 uses
  %.pre3436 = load ptr, ptr %2, align 8, !tbaa !29
  br label %bb.xi

bb.xh:                                            ; preds = %bb.xg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.144, i32 noundef %spec.select2901.lcssa) #22
  call void @free(ptr noundef nonnull %i.cen) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.xi:                                            ; preds = %.lr.ph3307, %._crit_edge3437
  %i.cet = phi i16 [ %i.ceq, %.lr.ph3307 ], [ %i.cfp, %._crit_edge3437 ] ; 3 uses
  %i.ceu = phi ptr [ %.pre3436, %.lr.ph3307 ], [ %i.cfq, %._crit_edge3437 ] ; 2 uses
  %indvars.iv3405 = phi i64 [ 0, %.lr.ph3307 ], [ %indvars.iv.next3406, %._crit_edge3437 ] ; 6 uses
  %i.cev = getelementptr inbounds nuw [36 x i8], ptr %i.ceu, i64 %indvars.iv3405 ; 3 uses
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cev, i64 12
  %i.cex = load i32, ptr %i.cew, align 4, !tbaa !13 ; 3 uses
  %.not2757 = icmp eq i32 %i.cex, 0
  br i1 %.not2757, label %._crit_edge3437, label %bb.xj

bb.xj:                                            ; preds = %bb.xi
  %i.cey = zext i32 %i.cex to i64                 ; 2 uses
  %.not2758 = icmp ugt i32 %i.cex, %spec.select2902.lcssa
  br i1 %.not2758, label %._crit_edge3308.loopexit, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %i.cez = load i32, ptr %i.cev, align 4, !tbaa !14
  %i.cfa = zext i32 %i.cez to i64
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cen, i64 %i.cfa ; 2 uses
  %i.cfc = ptrtoint ptr %i.cfb to i64             ; 2 uses
  %i.cfd = add i64 %i.cfc, %i.cey                 ; 2 uses
  %.not2760 = icmp ule i64 %i.cfd, %i.ces
  %i.cfe = icmp ugt i64 %i.cfd, %i.cer
  %or.cond2904 = and i1 %.not2760, %i.cfe
  %i.cff = icmp ugt i64 %i.ces, %i.cfc
  %or.cond2905 = and i1 %i.cff, %or.cond2904
  br i1 %or.cond2905, label %bb.xl, label %._crit_edge3308.loopexit

bb.xl:                                            ; preds = %bb.xk
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cev, i64 8
  %i.cfh = load i32, ptr %i.cfg, align 4, !tbaa !15
  %i.cfi = zext i32 %i.cfh to i64
  %i.cfj = call fastcc i64 @fmap_readn(ptr noundef %i.ac, ptr noundef nonnull %i.cfb, i64 noundef %i.cfi, i64 noundef %i.cey)
  %i.cfk = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.cfl = getelementptr inbounds nuw [36 x i8], ptr %i.cfk, i64 %indvars.iv3405
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.cfl, i64 12
  %i.cfn = load i32, ptr %i.cfm, align 4, !tbaa !13
  %i.cfo = zext i32 %i.cfn to i64
  %.not2761 = icmp eq i64 %i.cfj, %i.cfo
  %.pre3439.pre = load i16, ptr %i.bf, align 8, !tbaa !30 ; 2 uses
  br i1 %.not2761, label %._crit_edge3437, label %._crit_edge3308.loopexit

._crit_edge3437:                                  ; preds = %bb.xl, %bb.xi
  %i.cfp = phi i16 [ %i.cet, %bb.xi ], [ %.pre3439.pre, %bb.xl ] ; 3 uses
  %i.cfq = phi ptr [ %i.ceu, %bb.xi ], [ %i.cfk, %bb.xl ]
  %indvars.iv.next3406 = add nuw nsw i64 %indvars.iv3405, 1 ; 3 uses
  %i.cfr = zext i16 %i.cfp to i64
  %i.cfs = add nuw nsw i64 %i.cfr, 4294967295
  %i.cft = and i64 %i.cfs, 4294967295
  %i.cfu = icmp samesign ult i64 %indvars.iv.next3406, %i.cft
  br i1 %i.cfu, label %bb.xi, label %._crit_edge3308.loopexit

._crit_edge3308.loopexit:                         ; preds = %bb.xl, %bb.xj, %bb.xk, %._crit_edge3437
  %.pre3439 = phi i16 [ %i.cfp, %._crit_edge3437 ], [ %i.cet, %bb.xk ], [ %i.cet, %bb.xj ], [ %.pre3439.pre, %bb.xl ]
  %.92223.lcssa.ph.in = phi i64 [ %indvars.iv.next3406, %._crit_edge3437 ], [ %indvars.iv3405, %bb.xk ], [ %indvars.iv3405, %bb.xj ], [ %indvars.iv3405, %bb.xl ]
  %.92223.lcssa.ph = trunc nuw i64 %.92223.lcssa.ph.in to i32
  %i.cfv = add i32 %.92223.lcssa.ph, 1
  br label %._crit_edge3308

._crit_edge3308:                                  ; preds = %._crit_edge3308.loopexit, %.preheader3182
  %i.cfw = phi i16 [ 1, %.preheader3182 ], [ %.pre3439, %._crit_edge3308.loopexit ] ; 2 uses
  %.92223.lcssa = phi i32 [ 1, %.preheader3182 ], [ %i.cfv, %._crit_edge3308.loopexit ]
  %i.cfx = zext i16 %i.cfw to i32
  %.not2762 = icmp eq i32 %.92223.lcssa, %i.cfx
  br i1 %.not2762, label %bb.xn, label %bb.xm

bb.xm:                                            ; preds = %._crit_edge3308
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.145) #22
  br label %.critedge190.sink.split

bb.xn:                                            ; preds = %._crit_edge3308
  %i.cfy = load ptr, ptr %2, align 8, !tbaa !29
  %i.cfz = zext i16 %i.cfw to i64
  %i.cga = getelementptr [36 x i8], ptr %i.cfy, i64 %i.cfz
  %i.cgb = getelementptr i8, ptr %i.cga, i64 -24
  %i.cgc = load i32, ptr %i.cgb, align 4, !tbaa !13
  %i.cgd = zext i32 %i.cgc to i64
  %i.cge = call ptr @cli_max_calloc(i64 noundef %i.cgd, i64 noundef 1) #22 ; 9 uses
  %i.cgf = icmp eq ptr %i.cge, null
  br i1 %i.cgf, label %bb.xo, label %bb.xp

bb.xo:                                            ; preds = %bb.xn
  call void @free(ptr noundef %i.cen) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.xp:                                            ; preds = %bb.xn
  %i.cgg = load ptr, ptr %2, align 8, !tbaa !29
end_hunk_0
