inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@vm_exec_core:bb.a
  %i.bih = icmp eq i64 %.val24.i2506, %.0.i29.i2505
  br i1 %i.bih, label %bb.jf, label %bb.jg, !prof !72

bb.jf:                                            ; preds = %rb_class_of.exit.i2503
  %i.bii = getelementptr i8, ptr %i.bif, i64 16
  %.val.i2510 = load ptr, ptr %i.bii, align 8, !tbaa !187
  %i.bij = load i64, ptr %.val.i2510, align 8, !tbaa !170
  %i.bik = and i64 %i.bij, 2097152
  %.not.i.i2511 = icmp eq i64 %i.bik, 0
  br i1 %.not.i.i2511, label %vm_sendish.exit2513, label %bb.jg, !prof !72

bb.jg:                                            ; preds = %bb.jf, %rb_class_of.exit.i2503
  %i.bil = call fastcc ptr @vm_search_method_slowpath0(i64 noundef %i.bhv, ptr noundef nonnull %6, i64 noundef %.0.i29.i2505), !inline_history !232
  br label %vm_sendish.exit2513

vm_sendish.exit2513:                              ; preds = %bb.jf, %bb.jg
  %.0.i.i2507 = phi ptr [ %i.bil, %bb.jg ], [ %i.bif, %bb.jf ] ; 2 uses
  store ptr %.0.i.i2507, ptr %i.ad, align 8, !tbaa !233
  %i.bim = getelementptr i8, ptr %.0.i.i2507, i64 24
  %.0.i.val.i2508 = load ptr, ptr %i.bim, align 8, !tbaa !234
  %i.bin = call i64 %.0.i.val.i2508(ptr noundef %0, ptr noundef nonnull %.02257, ptr noundef nonnull %4) #23, !inline_history !232 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bio = icmp eq i64 %i.bin, 36
  br i1 %i.bio, label %bb.jh, label %bb.jx

bb.jh:                                            ; preds = %vm_sendish.exit2513
  %i.bip = load ptr, ptr %i.p, align 8, !tbaa !70 ; 5 uses
  %.not2327 = icmp eq ptr %.02257, %i.bip
  br i1 %.not2327, label %bb.jx, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.biq = load i8, ptr @rb_yjit_enabled_p, align 1, !tbaa !269, !range !114, !noundef !64
  %i.bir = trunc nuw i8 %i.biq to i1
  br i1 %i.bir, label %bb.jj, label %bb.jr

bb.jj:                                            ; preds = %bb.ji
  %i.bis = getelementptr i8, ptr %i.bip, i64 16
  %i.bit = load ptr, ptr %i.bis, align 8, !tbaa !123 ; 2 uses
  %i.biu = getelementptr i8, ptr %i.bit, i64 16
  %i.biv = load ptr, ptr %i.biu, align 8, !tbaa !124 ; 4 uses
  %i.biw = getelementptr i8, ptr %i.biv, i64 304  ; 2 uses
  %i.bix = load ptr, ptr %i.biw, align 8, !tbaa !270 ; 2 uses
  %i.biy = icmp eq ptr %i.bix, null
  br i1 %i.biy, label %bb.jk, label %yjit_compile.exit2516.thread

bb.jk:                                            ; preds = %bb.jj
  %i.biz = getelementptr i8, ptr %i.biv, i64 312  ; 2 uses
  %i.bja = load i64, ptr %i.biz, align 8, !tbaa !271 ; 2 uses
  %i.bjb = add i64 %i.bja, 1                      ; 3 uses
  store i64 %i.bjb, ptr %i.biz, align 8, !tbaa !271
  %i.bjc = load i64, ptr @yjit_total_entry_hits, align 8, !tbaa !11
  %i.bjd = add i64 %i.bjc, 1                      ; 3 uses
  store i64 %i.bjd, ptr @yjit_total_entry_hits, align 8, !tbaa !11
  %i.bje = add i64 %i.bja, 21
  %i.bjf = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11 ; 2 uses
  %i.bjg = icmp eq i64 %i.bje, %i.bjf
  br i1 %i.bjg, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %i.bjh = getelementptr i8, ptr %i.biv, i64 344
  store i64 %i.bjd, ptr %i.bjh, align 8, !tbaa !272
  %.pr.i.i2515 = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %i.bji = phi i64 [ %.pr.i.i2515, %bb.jl ], [ %i.bjf, %bb.jk ]
  %i.bjj = icmp eq i64 %i.bjb, %i.bji
  br i1 %i.bjj, label %bb.jn, label %yjit_compile.exit2516

bb.jn:                                            ; preds = %bb.jm
  %i.bjk = icmp ult i64 %i.bjb, 20
  br i1 %i.bjk, label %bb.jq, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.bjl = getelementptr i8, ptr %i.biv, i64 344
  %i.bjm = load i64, ptr %i.bjl, align 8, !tbaa !272
  %i.bjn = sub i64 %i.bjd, %i.bjm
  %i.bjo = load i64, ptr @rb_yjit_cold_threshold, align 8, !tbaa !11
  %.not.i.i2514 = icmp ugt i64 %i.bjn, %i.bjo
  br i1 %.not.i.i2514, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  call void @rb_yjit_incr_counter(ptr noundef nonnull @.str.195) #23
  br label %yjit_compile.exit2516

bb.jq:                                            ; preds = %bb.jo, %bb.jn
  call void @rb_yjit_compile_iseq(ptr noundef nonnull %i.bit, ptr noundef nonnull %0, i1 noundef zeroext false) #23
  br label %yjit_compile.exit2516

yjit_compile.exit2516:                            ; preds = %bb.jm, %bb.jp, %bb.jq
  %.pr2847 = load ptr, ptr %i.biw, align 8, !tbaa !270 ; 2 uses
  %.not2330 = icmp eq ptr %.pr2847, null
  br i1 %.not2330, label %bb.jx, label %yjit_compile.exit2516.yjit_compile.exit2516.thread_crit_edge

yjit_compile.exit2516.yjit_compile.exit2516.thread_crit_edge: ; preds = %yjit_compile.exit2516
  %.pre3194 = load ptr, ptr %i.p, align 8, !tbaa !70
  br label %yjit_compile.exit2516.thread

yjit_compile.exit2516.thread:                     ; preds = %yjit_compile.exit2516.yjit_compile.exit2516.thread_crit_edge, %bb.jj
  %i.bjp = phi ptr [ %.pre3194, %yjit_compile.exit2516.yjit_compile.exit2516.thread_crit_edge ], [ %i.bip, %bb.jj ]
  %i.bjq = phi ptr [ %.pr2847, %yjit_compile.exit2516.yjit_compile.exit2516.thread_crit_edge ], [ %i.bix, %bb.jj ]
  %i.bjr = call i64 %i.bjq(ptr noundef nonnull %0, ptr noundef %i.bjp) #23 ; 2 uses
  %i.bjs = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.bjt = getelementptr i8, ptr %i.bjs, i64 64
  %i.bju = load i32, ptr %i.bjt, align 8, !tbaa !68
  %.not2331 = icmp eq i32 %i.bju, 0
  br i1 %.not2331, label %bb.jx, label %.loopexit2951

bb.jr:                                            ; preds = %bb.ji
  %i.bjv = load ptr, ptr @rb_zjit_entry, align 8, !tbaa !176 ; 2 uses
  %.not2328 = icmp eq ptr %i.bjv, null
  br i1 %.not2328, label %bb.jx, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.bjw = getelementptr i8, ptr %i.bip, i64 16
  %.val2356.val = load ptr, ptr %i.bjw, align 8, !tbaa !123 ; 3 uses
  %i.bjx = getelementptr i8, ptr %.val2356.val, i64 16
  %i.bjy = load ptr, ptr %i.bjx, align 8, !tbaa !124 ; 2 uses
  %i.bjz = getelementptr i8, ptr %i.bjy, i64 304  ; 2 uses
  %i.bka = load ptr, ptr %i.bjz, align 8, !tbaa !270 ; 2 uses
  %i.bkb = icmp eq ptr %i.bka, null
  br i1 %i.bkb, label %bb.jt, label %zjit_compile.exit2518.thread

bb.jt:                                            ; preds = %bb.js
  %i.bkc = getelementptr i8, ptr %i.bjy, i64 312  ; 3 uses
  %i.bkd = load i64, ptr %i.bkc, align 8, !tbaa !271
  %i.bke = add i64 %i.bkd, 1                      ; 3 uses
  store i64 %i.bke, ptr %i.bkc, align 8, !tbaa !271
  %i.bkf = load i64, ptr @rb_zjit_profile_threshold, align 8, !tbaa !11
  %i.bkg = icmp eq i64 %i.bke, %i.bkf
  br i1 %i.bkg, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  call void @rb_zjit_profile_enable(ptr noundef nonnull %.val2356.val) #23
  %.pre.i2517 = load i64, ptr %i.bkc, align 8, !tbaa !271
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %i.bkh = phi i64 [ %.pre.i2517, %bb.ju ], [ %i.bke, %bb.jt ]
  %i.bki = load i64, ptr @rb_zjit_call_threshold, align 8, !tbaa !11
  %i.bkj = icmp eq i64 %i.bkh, %i.bki
  br i1 %i.bkj, label %bb.jw, label %zjit_compile.exit2518

bb.jw:                                            ; preds = %bb.jv
  call void @rb_zjit_compile_iseq(ptr noundef nonnull %.val2356.val, i1 noundef zeroext false) #23
  br label %zjit_compile.exit2518

zjit_compile.exit2518:                            ; preds = %bb.jv, %bb.jw
  %.pr2849 = load ptr, ptr %i.bjz, align 8, !tbaa !270 ; 2 uses
  %.not2329 = icmp eq ptr %.pr2849, null
  br i1 %.not2329, label %bb.jx, label %zjit_compile.exit2518.zjit_compile.exit2518.thread_crit_edge

zjit_compile.exit2518.zjit_compile.exit2518.thread_crit_edge: ; preds = %zjit_compile.exit2518
  %.pre3193 = load ptr, ptr %i.p, align 8, !tbaa !70
  br label %zjit_compile.exit2518.thread

zjit_compile.exit2518.thread:                     ; preds = %zjit_compile.exit2518.zjit_compile.exit2518.thread_crit_edge, %bb.js
  %i.bkk = phi ptr [ %.pre3193, %zjit_compile.exit2518.zjit_compile.exit2518.thread_crit_edge ], [ %i.bip, %bb.js ]
  %i.bkl = phi ptr [ %.pr2849, %zjit_compile.exit2518.zjit_compile.exit2518.thread_crit_edge ], [ %i.bka, %bb.js ]
  %i.bkm = call i64 %i.bjv(ptr noundef nonnull %0, ptr noundef %i.bkk, ptr noundef nonnull %i.bkl) #23
  br label %bb.jx

bb.jx:                                            ; preds = %vm_sendish.exit2513, %bb.jh, %bb.jr, %zjit_compile.exit2518.thread, %zjit_compile.exit2518, %yjit_compile.exit2516, %yjit_compile.exit2516.thread
  %.02267 = phi i64 [ %i.bjr, %yjit_compile.exit2516.thread ], [ 36, %yjit_compile.exit2516 ], [ %i.bkm, %zjit_compile.exit2518.thread ], [ 36, %zjit_compile.exit2518 ], [ 36, %bb.jr ], [ 36, %bb.jh ], [ %i.bin, %vm_sendish.exit2513 ] ; 2 uses
  %i.bkn = getelementptr i8, ptr %i.bgq, i64 8    ; 2 uses
  %i.bko = load ptr, ptr %i.bkn, align 8, !tbaa !182
  %i.bkp = load ptr, ptr %i.aj, align 8, !tbaa !279 ; 3 uses
  %.not2332 = icmp eq ptr %i.bko, %i.bkp
  br i1 %.not2332, label %rb_obj_write.exit, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bkq = load i64, ptr %i.bkp, align 8, !tbaa !77
  %i.bkr = and i64 %i.bkq, 1048576
  %.not2943 = icmp eq i64 %i.bkr, 0
  br i1 %.not2943, label %bb.jz, label %rb_obj_write.exit

bb.jz:                                            ; preds = %bb.jy
  %i.bks = load ptr, ptr %i.bht, align 8, !tbaa !123
  %i.bkt = ptrtoint ptr %i.bkp to i64             ; 2 uses
  store i64 %i.bkt, ptr %i.bkn, align 8, !tbaa !11
  %i.bku = ptrtoint ptr %i.bks to i64
  call void @rb_gc_writebarrier(i64 noundef %i.bku, i64 noundef %i.bkt) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.jz, %bb.jy, %bb.jx
  %i.bkv = icmp eq i64 %.02267, 36
  br i1 %i.bkv, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %rb_obj_write.exit
  %i.bkw = load ptr, ptr %i.p, align 8, !tbaa !70 ; 2 uses
  %i.bkx = load ptr, ptr %i.bkw, align 8, !tbaa !146
  br label %.backedge.backedge

bb.kb:                                            ; preds = %rb_obj_write.exit
  %i.bky = load ptr, ptr %i.bgv, align 8, !tbaa !73 ; 2 uses
  store i64 %.02267, ptr %i.bky, align 8, !tbaa !11
  %i.bkz = getelementptr i8, ptr %i.bky, i64 8
  store ptr %i.bkz, ptr %i.bgv, align 8, !tbaa !73
  br label %.backedge.backedge

vm_opt_neq.exit.thread:                           ; preds = %.backedge, %bb.ajc, %bb.ajb, %bb.aja, %bb.aiz, %bb.aiy, %bb.aix, %bb.aiw, %bb.aiv, %bb.aiu, %bb.ait, %bb.ais, %bb.air, %bb.aiq, %bb.aip, %bb.aio, %bb.ain, %bb.aim, %bb.ail, %bb.aik, %bb.aij, %bb.aii, %bb.aih, %bb.ahs, %bb.ahm, %bb.aeh, %vm_opt_regexpmatch2.exit.thread, %vm_opt_not.exit.thread, %vm_opt_succ.exit.thread, %bb.ace, %bb.acb, %bb.aby, %vm_opt_aset.exit.thread, %vm_opt_aref.exit.thread, %vm_opt_or.exit.thread, %vm_opt_and.exit.thread, %vm_opt_ltlt.exit.thread, %bb.aai, %bb.zq, %bb.zp, %bb.zo, %bb.zn, %bb.zm, %bb.yz, %bb.yy, %bb.yx, %bb.yw, %bb.yv, %bb.yi, %bb.yh, %bb.yg, %bb.yf, %bb.ye, %vm_method_cfunc_is.exit.i.i, %vm_search_method.exit.thread.i.i.i, %vm_search_method.exit.i.i.i, %vm_method_cfunc_is.exit.i2669, %vm_search_method.exit.thread.i.i2664, %vm_search_method.exit.i.i2660, %vm_method_cfunc_is.exit.i2651, %vm_search_method.exit.thread.i.i2648, %vm_search_method.exit.i.i2644, %vm_opt_mod.exit, %bb.wm, %bb.wl, %bb.wk, %bb.wj, %bb.wi, %bb.vp, %vm_opt_div.exit, %bb.vk, %bb.vj, %bb.vi, %bb.vh, %bb.vg, %bb.uw, %vm_opt_mult.exit, %bb.up, %bb.uo, %bb.un, %bb.um, %bb.ul, %vm_opt_minus.exit, %bb.to, %bb.tn, %bb.tm, %bb.tl, %bb.tk, %vm_opt_plus.exit, %bb.sr, %bb.sq, %bb.sp, %bb.sd, %bb.sc, %bb.mo, %vm_method_cfunc_is.exit.i, %vm_search_method.exit.thread.i.i, %vm_search_method.exit.i.i, %bb.mb, %bb.ly, %bb.lv, %bb.ls
  %.02256 = phi ptr [ %.6, %.backedge ], [ %.6, %bb.aeh ], [ %i.brw, %bb.lv ], [ %i.bsl, %bb.ly ], [ %i.bta, %bb.mb ], [ %.6, %bb.ajc ], [ %i.bvd, %bb.mo ], [ %.6, %bb.ajb ], [ %.6, %bb.aja ], [ %.6, %bb.aiz ], [ %.6, %bb.aiy ], [ %.6, %bb.aix ], [ %.6, %bb.aiw ], [ %.6, %bb.aiv ], [ %i.dje, %vm_search_method.exit.thread.i.i2664 ], [ %i.dje, %vm_method_cfunc_is.exit.i2669 ], [ %i.dje, %vm_search_method.exit.i.i2660 ], [ %.6, %bb.aai ], [ %.6, %vm_opt_ltlt.exit.thread ], [ %.6, %vm_opt_and.exit.thread ], [ %.6, %vm_opt_or.exit.thread ], [ %.6, %vm_opt_aref.exit.thread ], [ %.6, %vm_opt_aset.exit.thread ], [ %.6, %bb.aby ], [ %.6, %bb.acb ], [ %.6, %bb.ace ], [ %.6, %vm_opt_succ.exit.thread ], [ %.6, %vm_opt_not.exit.thread ], [ %.6, %vm_opt_regexpmatch2.exit.thread ], [ %.6, %bb.ahm ], [ %.6, %bb.ahs ], [ %.6, %bb.aih ], [ %.6, %bb.aii ], [ %.6, %bb.aij ], [ %.6, %bb.aik ], [ %.6, %bb.ail ], [ %.6, %bb.aim ], [ %i.enn, %bb.ain ], [ %.6, %bb.aio ], [ %.6, %bb.aip ], [ %.6, %bb.aiq ], [ %.6, %bb.air ], [ %.6, %bb.ais ], [ %.6, %bb.ait ], [ %.6, %bb.aiu ], [ %i.dje, %vm_method_cfunc_is.exit.i.i ], [ %i.dje, %vm_search_method.exit.i.i.i ], [ %i.dje, %vm_search_method.exit.thread.i.i.i ], [ %.6, %bb.ls ], [ %.6, %vm_search_method.exit.i.i ], [ %.6, %vm_search_method.exit.thread.i.i ], [ %.6, %vm_method_cfunc_is.exit.i ], [ %.6, %vm_opt_plus.exit ], [ %.6, %bb.sp ], [ %.6, %bb.sc ], [ %.6, %bb.sd ], [ %.6, %bb.sr ], [ %.6, %bb.sq ], [ %.6, %vm_opt_minus.exit ], [ %.6, %bb.tm ], [ %.6, %bb.tk ], [ %.6, %bb.tl ], [ %.6, %bb.to ], [ %.6, %bb.tn ], [ %.6, %vm_opt_mult.exit ], [ %.6, %bb.un ], [ %.6, %bb.ul ], [ %.6, %bb.um ], [ %.6, %bb.up ], [ %.6, %bb.uo ], [ %.6, %vm_opt_div.exit ], [ %.6, %bb.vg ], [ %.6, %bb.uw ], [ %.6, %bb.vi ], [ %.6, %bb.vh ], [ %.6, %bb.vk ], [ %.6, %bb.vj ], [ %.6, %vm_opt_mod.exit ], [ %.6, %bb.wi ], [ %.6, %bb.vp ], [ %.6, %bb.wk ], [ %.6, %bb.wj ], [ %.6, %bb.wm ], [ %.6, %bb.wl ], [ %.6, %vm_search_method.exit.thread.i.i2648 ], [ %.6, %vm_search_method.exit.i.i2644 ], [ %.6, %vm_method_cfunc_is.exit.i2651 ], [ %.6, %bb.yg ], [ %.6, %bb.yh ], [ %.6, %bb.yi ], [ %.6, %bb.yf ], [ %.6, %bb.ye ], [ %.6, %bb.yx ], [ %.6, %bb.yy ], [ %.6, %bb.yz ], [ %.6, %bb.yw ], [ %.6, %bb.yv ], [ %.6, %bb.zm ], [ %.6, %bb.zn ], [ %.6, %bb.zq ], [ %.6, %bb.zp ], [ %.6, %bb.zo ] ; 2 uses
  %i.bla = getelementptr i8, ptr %.02256, i64 8
  %i.blb = load i64, ptr %i.bla, align 8, !tbaa !11
  %i.blc = inttoptr i64 %i.blb to ptr             ; 4 uses
  %i.bld = getelementptr i8, ptr %.02256, i64 16  ; 2 uses
  store ptr %i.bld, ptr %.02257, align 8, !tbaa !146
  %i.ble = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.blf = load ptr, ptr %i.blc, align 8, !tbaa !225 ; 3 uses
  %i.blg = ptrtoint ptr %i.blf to i64             ; 3 uses
  %.not.i.i.i2519 = trunc i64 %i.blg to i1        ; 2 uses
  br i1 %.not.i.i.i2519, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %vm_opt_neq.exit.thread
  %i.blh = trunc i64 %i.blg to i32
  %i.bli = lshr i32 %i.blh, 1
  %i.blj = and i32 %i.bli, 32767
  br label %vm_ci_argc.exit.i2520

bb.kd:                                            ; preds = %vm_opt_neq.exit.thread
  %i.blk = getelementptr i8, ptr %i.blf, i64 32
  %i.bll = load i64, ptr %i.blk, align 8, !tbaa !174
  %i.blm = trunc i64 %i.bll to i32
  br label %vm_ci_argc.exit.i2520

vm_ci_argc.exit.i2520:                            ; preds = %bb.kd, %bb.kc
  %.0.i26.i2521 = phi i32 [ %i.blj, %bb.kc ], [ %i.blm, %bb.kd ] ; 2 uses
  %i.bln = load ptr, ptr %i.ble, align 8, !tbaa !73
  %i.blo = sext i32 %.0.i26.i2521 to i64
  %i.blp = sub nsw i64 0, %i.blo
  %i.blq = getelementptr [8 x i8], ptr %i.bln, i64 %i.blp
  %i.blr = getelementptr i8, ptr %i.blq, i64 -8
  %i.bls = load i64, ptr %i.blr, align 8, !tbaa !11 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.blc, ptr %3, align 8, !tbaa !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store i64 %i.bls, ptr %i.z, align 8, !tbaa !229
  store i32 %.0.i26.i2521, ptr %i.aa, align 8, !tbaa !230
  br i1 %.not.i.i.i2519, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %vm_ci_argc.exit.i2520
  %i.blt = trunc i64 %i.blg to i32
  %i.blu = lshr i32 %i.blt, 16
  br label %vm_ci_flag.exit.i2522

bb.kf:                                            ; preds = %vm_ci_argc.exit.i2520
  %i.blv = getelementptr i8, ptr %i.blf, i64 24
  %i.blw = load i64, ptr %i.blv, align 8, !tbaa !173
  %i.blx = trunc i64 %i.blw to i32
  br label %vm_ci_flag.exit.i2522

vm_ci_flag.exit.i2522:                            ; preds = %bb.kf, %bb.ke
  %.0.i28.i2523 = phi i32 [ %i.blu, %bb.ke ], [ %i.blx, %bb.kf ]
  %i.bly = trunc i32 %.0.i28.i2523 to i8
  %i.blz = lshr i8 %i.bly, 6
  %i.bma = and i8 %i.blz, 1
  store i8 %i.bma, ptr %i.ab, align 4, !tbaa !231
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ac, i8 0, i64 11, i1 false)
  %i.bmb = getelementptr i8, ptr %.02257, i64 16
  %i.bmc = load ptr, ptr %i.bmb, align 8, !tbaa !123 ; 2 uses
  %i.bmd = ptrtoint ptr %i.bmc to i64
  %i.bme = icmp eq i64 %i.bls, 0
  %i.bmf = and i64 %i.bls, 7
  %i.bmg = icmp ne i64 %i.bmf, 0
  %i.bmh = or i1 %i.bme, %i.bmg
  br i1 %i.bmh, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %vm_ci_flag.exit.i2522
  %i.bmi = inttoptr i64 %i.bls to ptr
  %i.bmj = getelementptr i8, ptr %i.bmi, i64 8
  br label %rb_class_of.exit.i2524

bb.kh:                                            ; preds = %vm_ci_flag.exit.i2522
  switch i64 %i.bls, label %bb.kk [
    i64 0, label %rb_class_of.exit.i2524
    i64 4, label %bb.ki
    i64 20, label %bb.kj
  ]

bb.ki:                                            ; preds = %bb.kh
  br label %rb_class_of.exit.i2524

bb.kj:                                            ; preds = %bb.kh
  br label %rb_class_of.exit.i2524

bb.kk:                                            ; preds = %bb.kh
  %i.bmk = trunc i64 %i.bls to i1
  br i1 %i.bmk, label %rb_class_of.exit.i2524, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.bml = and i64 %i.bls, 254
  %i.bmm = icmp eq i64 %i.bml, 12
  %spec.select.i.i2533 = select i1 %i.bmm, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i2524

rb_class_of.exit.i2524:                           ; preds = %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg
  %.0.in.i.i2525 = phi ptr [ %i.bmj, %bb.kg ], [ @rb_cNilClass, %bb.ki ], [ @rb_cTrueClass, %bb.kj ], [ @rb_cFalseClass, %bb.kh ], [ @rb_cInteger, %bb.kk ], [ %spec.select.i.i2533, %bb.kl ]
  %.0.i29.i2526 = load i64, ptr %.0.in.i.i2525, align 8, !tbaa !11 ; 2 uses
  %i.bmn = getelementptr i8, ptr %i.blc, i64 8    ; 2 uses
  %i.bmo = load ptr, ptr %i.bmn, align 8, !tbaa !182 ; 3 uses
  %i.bmp = getelementptr i8, ptr %i.bmo, i64 8
  %.val24.i2527 = load i64, ptr %i.bmp, align 8, !tbaa !185
  %i.bmq = icmp eq i64 %.val24.i2527, %.0.i29.i2526
  br i1 %i.bmq, label %bb.km, label %bb.kn, !prof !72

bb.km:                                            ; preds = %rb_class_of.exit.i2524
  %i.bmr = getelementptr i8, ptr %i.bmo, i64 16
  %.val.i2531 = load ptr, ptr %i.bmr, align 8, !tbaa !187
  %i.bms = load i64, ptr %.val.i2531, align 8, !tbaa !170
  %i.bmt = and i64 %i.bms, 2097152
  %.not.i.i2532 = icmp eq i64 %i.bmt, 0
  br i1 %.not.i.i2532, label %vm_sendish.exit2534, label %bb.kn, !prof !72

bb.kn:                                            ; preds = %bb.km, %rb_class_of.exit.i2524
  %i.bmu = load ptr, ptr %i.blc, align 8, !tbaa !225
  %i.bmv = call ptr @rb_vm_search_method_slowpath(ptr noundef %i.bmu, i64 noundef %.0.i29.i2526), !inline_history !358 ; 7 uses
  store ptr %i.bmv, ptr %i.bmn, align 8, !tbaa !182
  %.not.i2796 = icmp eq ptr %i.bmc, null
  %.not10.i = icmp eq ptr %i.bmv, @vm_empty_cc
  %or.cond.i2797 = select i1 %.not.i2796, i1 true, i1 %.not10.i
  br i1 %or.cond.i2797, label %vm_sendish.exit2534, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.bmw = ptrtoint ptr %i.bmv to i64             ; 2 uses
  %i.bmx = icmp eq ptr %i.bmv, null
  %i.bmy = and i64 %i.bmw, 7
  %i.bmz = icmp ne i64 %i.bmy, 0
  %i.bna = or i1 %i.bmx, %i.bmz
  br i1 %i.bna, label %vm_sendish.exit2534, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  call void @rb_gc_writebarrier(i64 noundef %i.bmd, i64 noundef %i.bmw) #23, !inline_history !358
  br label %vm_sendish.exit2534

vm_sendish.exit2534:                              ; preds = %bb.kp, %bb.ko, %bb.kn, %bb.km
  %.0.i.i2528 = phi ptr [ %i.bmo, %bb.km ], [ %i.bmv, %bb.kn ], [ %i.bmv, %bb.ko ], [ %i.bmv, %bb.kp ] ; 2 uses
  store ptr %.0.i.i2528, ptr %i.y, align 8, !tbaa !233
  %i.bnb = getelementptr i8, ptr %.0.i.i2528, i64 24
  %.0.i.val.i2529 = load ptr, ptr %i.bnb, align 8, !tbaa !234
  %i.bnc = call i64 %.0.i.val.i2529(ptr noundef %0, ptr noundef nonnull %.02257, ptr noundef nonnull %3) #23, !inline_history !232 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bnd = icmp eq i64 %i.bnc, 36
  br i1 %i.bnd, label %bb.kq, label %.thread2858

bb.kq:                                            ; preds = %vm_sendish.exit2534
  %i.bne = load ptr, ptr %i.p, align 8, !tbaa !70 ; 7 uses
  %.not2322 = icmp eq ptr %.02257, %i.bne
  br i1 %.not2322, label %.thread2856, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bnf = load i8, ptr @rb_yjit_enabled_p, align 1, !tbaa !269, !range !114, !noundef !64
  %i.bng = trunc nuw i8 %i.bnf to i1
  br i1 %i.bng, label %bb.ks, label %bb.la

bb.ks:                                            ; preds = %bb.kr
  %i.bnh = getelementptr i8, ptr %i.bne, i64 16
  %i.bni = load ptr, ptr %i.bnh, align 8, !tbaa !123 ; 2 uses
  %i.bnj = getelementptr i8, ptr %i.bni, i64 16
  %i.bnk = load ptr, ptr %i.bnj, align 8, !tbaa !124 ; 4 uses
  %i.bnl = getelementptr i8, ptr %i.bnk, i64 304  ; 2 uses
  %i.bnm = load ptr, ptr %i.bnl, align 8, !tbaa !270 ; 2 uses
  %i.bnn = icmp eq ptr %i.bnm, null
  br i1 %i.bnn, label %bb.kt, label %yjit_compile.exit2537.thread

bb.kt:                                            ; preds = %bb.ks
  %i.bno = getelementptr i8, ptr %i.bnk, i64 312  ; 2 uses
  %i.bnp = load i64, ptr %i.bno, align 8, !tbaa !271 ; 2 uses
  %i.bnq = add i64 %i.bnp, 1                      ; 3 uses
  store i64 %i.bnq, ptr %i.bno, align 8, !tbaa !271
  %i.bnr = load i64, ptr @yjit_total_entry_hits, align 8, !tbaa !11
  %i.bns = add i64 %i.bnr, 1                      ; 3 uses
  store i64 %i.bns, ptr @yjit_total_entry_hits, align 8, !tbaa !11
  %i.bnt = add i64 %i.bnp, 21
  %i.bnu = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11 ; 2 uses
  %i.bnv = icmp eq i64 %i.bnt, %i.bnu
  br i1 %i.bnv, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %i.bnw = getelementptr i8, ptr %i.bnk, i64 344
  store i64 %i.bns, ptr %i.bnw, align 8, !tbaa !272
  %.pr.i.i2536 = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %bb.kt
  %i.bnx = phi i64 [ %.pr.i.i2536, %bb.ku ], [ %i.bnu, %bb.kt ]
  %i.bny = icmp eq i64 %i.bnq, %i.bnx
  br i1 %i.bny, label %bb.kw, label %yjit_compile.exit2537

bb.kw:                                            ; preds = %bb.kv
  %i.bnz = icmp ult i64 %i.bnq, 20
  br i1 %i.bnz, label %bb.kz, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.boa = getelementptr i8, ptr %i.bnk, i64 344
  %i.bob = load i64, ptr %i.boa, align 8, !tbaa !272
  %i.boc = sub i64 %i.bns, %i.bob
  %i.bod = load i64, ptr @rb_yjit_cold_threshold, align 8, !tbaa !11
  %.not.i.i2535 = icmp ugt i64 %i.boc, %i.bod
  br i1 %.not.i.i2535, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx
end_hunk_0
