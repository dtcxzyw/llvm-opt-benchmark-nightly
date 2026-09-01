Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj7?download=true
inline.NumInlined: 184
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Exa7_ManExactSynthesis:bb.a
  %i.buk = shl nuw i64 2, %indvars.iv.i324
  %i.bul = select i1 %.not84.i, i64 0, i64 %i.buk
  %.1.i327 = or i64 %i.bul, %.088.i325            ; 2 uses
  %i.bum = load i32, ptr %i.fw, align 4, !tbaa !70
  %i.bun = sext i32 %i.bum to i64
  %i.buo = icmp slt i64 %indvars.iv.next.i326, %i.bun
  br i1 %i.buo, label %.lr.ph90.i, label %._crit_edge91.loopexit.i, !llvm.loop !196

._crit_edge91.loopexit.i:                         ; preds = %.lr.ph90.i
  %.pre.i328 = load i32, ptr %i.fy, align 8, !tbaa !71
  %.pre109.i = load i32, ptr %i.fu, align 8, !tbaa !69
  br label %._crit_edge91.i

._crit_edge91.i:                                  ; preds = %._crit_edge91.loopexit.i, %bb.ji
  %i.bup = phi i32 [ %i.bua, %bb.ji ], [ %.pre109.i, %._crit_edge91.loopexit.i ]
  %i.buq = phi i32 [ %i.btv, %bb.ji ], [ %.pre.i328, %._crit_edge91.loopexit.i ]
  %.0.lcssa.i310 = phi i64 [ 0, %bb.ji ], [ %.1.i327, %._crit_edge91.loopexit.i ] ; 2 uses
  %i.bur = add nsw i32 %i.buq, -1
  %i.bus = icmp eq i32 %i.bur, %i.btx
  %or.cond.i311 = and i1 %i.bus, %.not112
  %i.but = xor i64 %.0.lcssa.i310, -1
  %i.buu = and i64 %i.buc, %i.but
  %.2.i312 = select i1 %or.cond.i311, i64 %i.buu, i64 %.0.lcssa.i310
  %i.buv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bsw, ptr noundef nonnull @.str.86, i32 noundef %i.bup, i32 noundef %i.bsn, i32 noundef %i.bsp, i64 noundef %.2.i312, i32 noundef %i.bty) #23 ; 0 uses
  %i.buw = load i32, ptr %i.fu, align 8, !tbaa !69
  %i.bux = icmp sgt i32 %i.buw, 0
  br i1 %i.bux, label %.lr.ph95.i, label %._crit_edge96.i

.lr.ph95.i:                                       ; preds = %._crit_edge91.i
  %i.buy = getelementptr inbounds [2048 x i8], ptr %i.afj, i64 %indvars.iv106.i
  br label %bb.jj

bb.jj:                                            ; preds = %bb.jp, %.lr.ph95.i
  %indvars.iv103.i = phi i64 [ 0, %.lr.ph95.i ], [ %indvars.iv.next104.i, %bb.jp ] ; 3 uses
  %i.buz = trunc nuw nsw i64 %indvars.iv103.i to i32
  %i.bva = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bsw, ptr noundef nonnull @.str.69, i32 noundef %i.buz) #23 ; 0 uses
  %i.bvb = load i32, ptr %i.fy, align 8, !tbaa !71 ; 2 uses
  %i.bvc = icmp sgt i32 %i.bvb, 0
  br i1 %i.bvc, label %.lr.ph.i.i315, label %Exa7_ManFindFanin.exit.i313

.lr.ph.i.i315:                                    ; preds = %bb.jj
  %i.bvd = getelementptr inbounds nuw [256 x i8], ptr %i.buy, i64 %indvars.iv103.i
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jm, %.lr.ph.i.i315
  %i.bve = phi i32 [ %i.bvb, %.lr.ph.i.i315 ], [ %i.bvk, %bb.jm ]
  %indvars.iv.i.i316 = phi i64 [ 0, %.lr.ph.i.i315 ], [ %indvars.iv.next.i.i323, %bb.jm ] ; 3 uses
  %.022.i.i317 = phi i32 [ -1, %.lr.ph.i.i315 ], [ %.1.i.i322, %bb.jm ] ; 2 uses
  %i.bvf = getelementptr inbounds nuw [4 x i8], ptr %i.bvd, i64 %indvars.iv.i.i316
  %i.bvg = load i32, ptr %i.bvf, align 4, !tbaa !20 ; 2 uses
  %.not.i.i318 = icmp eq i32 %i.bvg, 0
  br i1 %.not.i.i318, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.bvh = load ptr, ptr %i.vu, align 8, !tbaa !45
  %i.bvi = call i32 @cadical_solver_get_var_value(ptr noundef %i.bvh, i32 noundef %i.bvg) #23
  %.not18.not.i.i319 = icmp eq i32 %i.bvi, 0
  %i.bvj = trunc nuw nsw i64 %indvars.iv.i.i316 to i32
  %spec.select19.i.i320 = select i1 %.not18.not.i.i319, i32 %.022.i.i317, i32 %i.bvj
  %.pre.i.i321 = load i32, ptr %i.fy, align 8, !tbaa !71
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %i.bvk = phi i32 [ %i.bve, %bb.jk ], [ %.pre.i.i321, %bb.jl ] ; 2 uses
  %.1.i.i322 = phi i32 [ %.022.i.i317, %bb.jk ], [ %spec.select19.i.i320, %bb.jl ] ; 2 uses
  %indvars.iv.next.i.i323 = add nuw nsw i64 %indvars.iv.i.i316, 1 ; 2 uses
  %i.bvl = sext i32 %i.bvk to i64
  %i.bvm = icmp slt i64 %indvars.iv.next.i.i323, %i.bvl
  br i1 %i.bvm, label %bb.jk, label %Exa7_ManFindFanin.exit.i313, !llvm.loop !128

Exa7_ManFindFanin.exit.i313:                      ; preds = %bb.jm, %bb.jj
  %.0.lcssa.i.i314 = phi i32 [ -1, %bb.jj ], [ %.1.i.i322, %bb.jm ] ; 3 uses
  %i.bvn = load i32, ptr %i.fo, align 8, !tbaa !37 ; 2 uses
  %i.bvo = icmp slt i32 %.0.lcssa.i.i314, %i.bvn
  br i1 %i.bvo, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %Exa7_ManFindFanin.exit.i313
  %i.bvp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bsw, ptr noundef nonnull @.str.70, i32 noundef %.0.lcssa.i.i314) #23 ; 0 uses
  br label %bb.jp

bb.jo:                                            ; preds = %Exa7_ManFindFanin.exit.i313
  %i.bvq = sub nsw i32 %.0.lcssa.i.i314, %i.bvn
  %i.bvr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bsw, ptr noundef nonnull @.str.71, i32 noundef %i.bvq) #23 ; 0 uses
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  %i.bvs = call i64 @fwrite(ptr nonnull @.str.73, i64 3, i64 1, ptr nonnull %i.bsw) ; 0 uses
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1 ; 2 uses
  %i.bvt = load i32, ptr %i.fu, align 8, !tbaa !69
  %i.bvu = sext i32 %i.bvt to i64
  %i.bvv = icmp slt i64 %indvars.iv.next104.i, %i.bvu
  br i1 %i.bvv, label %bb.jj, label %._crit_edge96.i, !llvm.loop !197

._crit_edge96.i:                                  ; preds = %bb.jp, %._crit_edge91.i
  %i.bvw = load i32, ptr %i.fy, align 8, !tbaa !71
  %i.bvx = add nsw i32 %i.bvw, -1
  %i.bvy = icmp eq i32 %i.bvx, %i.btx
  br i1 %i.bvy, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %._crit_edge96.i
  %i.bvz = call i64 @fwrite(ptr nonnull @.str.74, i64 10, i64 1, ptr nonnull %i.bsw) ; 0 uses
  br label %bb.js

bb.jr:                                            ; preds = %._crit_edge96.i
  %i.bwa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bsw, ptr noundef nonnull @.str.75, i32 noundef %i.bty) #23 ; 0 uses
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %i.bwb = call i64 @fwrite(ptr nonnull @.str.76, i64 6, i64 1, ptr nonnull %i.bsw) ; 0 uses
  %indvars.iv.next107.i = add nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %i.bwc = load i32, ptr %i.fy, align 8, !tbaa !71 ; 2 uses
  %i.bwd = sext i32 %i.bwc to i64
  %i.bwe = icmp slt i64 %indvars.iv.next107.i, %i.bwd
  br i1 %i.bwe, label %bb.ji, label %._crit_edge100.i306, !llvm.loop !198

._crit_edge100.i306:                              ; preds = %bb.js, %._crit_edge.thread.i305
  %i.bwf = call i64 @fwrite(ptr nonnull @.str.77, i64 11, i64 1, ptr nonnull %i.bsw) ; 0 uses
  %i.bwg = call i32 @fclose(ptr noundef nonnull %i.bsw) ; 0 uses
  %i.bwh = load ptr, ptr %i.fm, align 8, !tbaa !65
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bwh, i64 120
  %i.bwj = load i32, ptr %i.bwi, align 8, !tbaa !62
  %.not.i307 = icmp eq i32 %i.bwj, 0
  br i1 %.not.i307, label %bb.jt, label %Exa7_ManDumpVerilog.exit

bb.jt:                                            ; preds = %._crit_edge100.i306
  %i.bwk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef nonnull %i.c) ; 0 uses
  br label %Exa7_ManDumpVerilog.exit

Exa7_ManDumpVerilog.exit:                         ; preds = %bb.jd, %bb.je, %bb.jf, %._crit_edge100.i306, %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.ju

bb.ju:                                            ; preds = %Exa7_ManDumpCascadeVerilog.exit, %Exa7_ManDumpVerilog.exit, %Exa7_ManPrintPerm.exit
  %i.bwl = load ptr, ptr %i.fm, align 8, !tbaa !65 ; 2 uses
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwl, i64 112
  %i.bwn = load i32, ptr %i.bwm, align 8, !tbaa !199
  %.not125 = icmp eq i32 %i.bwn, 0
  br i1 %.not125, label %bb.kk, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bwl, i64 176 ; 3 uses
  %i.bwp = load ptr, ptr %i.bwo, align 8, !tbaa !200 ; 3 uses
  %.not126 = icmp eq ptr %i.bwp, null
  br i1 %.not126, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bwp, i64 8
  %i.bwr = load ptr, ptr %i.bwq, align 8, !tbaa !90 ; 2 uses
  %.not.i333 = icmp eq ptr %i.bwr, null
  br i1 %.not.i333, label %Vec_WrdFreeP.exit, label %.thread.i334

.thread.i334:                                     ; preds = %bb.jw
  call void @free(ptr noundef nonnull %i.bwr) #23
  %i.bws = load ptr, ptr %i.bwo, align 8, !tbaa !201 ; 2 uses
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.bws, i64 8
  store ptr null, ptr %i.bwt, align 8, !tbaa !90
  br label %Vec_WrdFreeP.exit

Vec_WrdFreeP.exit:                                ; preds = %bb.jw, %.thread.i334
  %i.bwu = phi ptr [ %i.bws, %.thread.i334 ], [ %i.bwp, %bb.jw ]
  call void @free(ptr noundef nonnull %i.bwu) #23
  store ptr null, ptr %i.bwo, align 8, !tbaa !201
  br label %bb.jx

bb.jx:                                            ; preds = %Vec_WrdFreeP.exit, %bb.jv
  %i.bwv = load i32, ptr %i.fu, align 8, !tbaa !69 ; 3 uses
  %i.bww = shl nuw i32 1, %i.bwv
  %i.bwx = icmp slt i32 %i.bwv, 7                 ; 2 uses
  %i.bwy = icmp eq i32 %i.bwv, 7                  ; 2 uses
  %i.bwz = select i1 %i.bwy, i64 2, i64 4
  %i.bxa = select i1 %i.bwx, i64 1, i64 %i.bwz    ; 2 uses
  %i.bxb = load i32, ptr %i.fy, align 8, !tbaa !71 ; 3 uses
  %i.bxc = select i1 %i.bwy, i32 1, i32 2
  %i.bxd = select i1 %i.bwx, i32 0, i32 %i.bxc    ; 2 uses
  %i.bxe = shl i32 %i.bxb, %i.bxd                 ; 4 uses
  %i.bxf = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.bxg = add i32 %i.bxe, -1
  %or.cond.i.i.i335 = icmp ult i32 %i.bxg, 15
  %spec.store.select.i.i.i336 = select i1 %or.cond.i.i.i335, i32 16, i32 %i.bxe ; 3 uses
  store i32 %spec.store.select.i.i.i336, ptr %i.bxf, align 8, !tbaa !88
  %.not.i.i.i337 = icmp eq i32 %spec.store.select.i.i.i336, 0
  br i1 %.not.i.i.i337, label %Vec_WrdStart.exit.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bxh = sext i32 %spec.store.select.i.i.i336 to i64
  %i.bxi = shl nsw i64 %i.bxh, 3
  %i.bxj = call noalias ptr @malloc(i64 noundef %i.bxi) #21
  br label %Vec_WrdStart.exit.i

Vec_WrdStart.exit.i:                              ; preds = %bb.jy, %bb.jx
  %i.bxk = phi ptr [ %i.bxj, %bb.jy ], [ null, %bb.jx ] ; 3 uses
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.bxf, i64 4
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bxf, i64 8
  store ptr %i.bxk, ptr %i.bxm, align 8, !tbaa !90
  store i32 %i.bxe, ptr %i.bxl, align 4, !tbaa !91
  %i.bxn = sext i32 %i.bxe to i64
  %i.bxo = shl nsw i64 %i.bxn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bxk, i8 0, i64 %i.bxo, i1 false)
  %i.bxp = load i32, ptr %i.fo, align 8, !tbaa !37 ; 2 uses
  %i.bxq = icmp slt i32 %i.bxp, %i.bxb
  br i1 %i.bxq, label %.lr.ph60.i, label %Exa7_ManSaveTruthTables.exit

.lr.ph60.i:                                       ; preds = %Vec_WrdStart.exit.i
  %i.bxr = sext i32 %i.bww to i64
  %i.bxs = shl nuw nsw i64 %i.bxa, 3
  %.pre.i338 = load i32, ptr %i.fw, align 4, !tbaa !70
  br label %bb.jz

bb.jz:                                            ; preds = %bb.kf, %.lr.ph60.i
  %i.bxt = phi i32 [ %i.bxb, %.lr.ph60.i ], [ %i.byn, %bb.kf ]
  %i.bxu = phi i32 [ %.pre.i338, %.lr.ph60.i ], [ %i.byo, %bb.kf ] ; 3 uses
  %.05059.i = phi i32 [ %i.bxp, %.lr.ph60.i ], [ %i.bzw, %bb.kf ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.bxv = load i32, ptr %i.fo, align 8, !tbaa !37
  %i.bxw = sub nsw i32 %.05059.i, %i.bxv
  %i.bxx = mul nsw i32 %i.bxw, %i.bxu
  %i.bxy = add nsw i32 %i.bxx, 1
  %i.bxz = icmp sgt i32 %i.bxu, 0
  br i1 %i.bxz, label %.lr.ph.i352, label %._crit_edge.i339

.lr.ph.i352:                                      ; preds = %bb.jz, %.lr.ph._crit_edge.i
  %.05156.i = phi i32 [ %.pre67.i, %.lr.ph._crit_edge.i ], [ 0, %bb.jz ] ; 2 uses
  %i.bya = load ptr, ptr %i.vu, align 8, !tbaa !45
  %i.byb = add nsw i32 %i.bxy, %.05156.i
  %i.byc = call i32 @cadical_solver_get_var_value(ptr noundef %i.bya, i32 noundef %i.byb) #23
  %.not.i353 = icmp eq i32 %i.byc, 0
  %.pre67.i = add nuw nsw i32 %.05156.i, 1        ; 4 uses
  br i1 %.not.i353, label %.lr.ph._crit_edge.i, label %bb.ka

bb.ka:                                            ; preds = %.lr.ph.i352
  %i.byd = lshr i32 %.pre67.i, 6
  %i.bye = and i32 %.pre67.i, 63
  %i.byf = zext nneg i32 %i.bye to i64
  %i.byg = shl nuw i64 1, %i.byf
  %i.byh = zext nneg i32 %i.byd to i64
  %i.byi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.byh ; 2 uses
  %i.byj = load i64, ptr %i.byi, align 8, !tbaa !59
  %i.byk = or i64 %i.byj, %i.byg
  store i64 %i.byk, ptr %i.byi, align 8, !tbaa !59
  br label %.lr.ph._crit_edge.i

.lr.ph._crit_edge.i:                              ; preds = %bb.ka, %.lr.ph.i352
  %i.byl = load i32, ptr %i.fw, align 4, !tbaa !70 ; 2 uses
  %i.bym = icmp slt i32 %.pre67.i, %i.byl
  br i1 %i.bym, label %.lr.ph.i352, label %._crit_edge.loopexit.i354, !llvm.loop !202

._crit_edge.loopexit.i354:                        ; preds = %.lr.ph._crit_edge.i
  %.pre66.i = load i32, ptr %i.fy, align 8, !tbaa !71
  br label %._crit_edge.i339

._crit_edge.i339:                                 ; preds = %._crit_edge.loopexit.i354, %bb.jz
  %i.byn = phi i32 [ %.pre66.i, %._crit_edge.loopexit.i354 ], [ %i.bxt, %bb.jz ] ; 3 uses
  %i.byo = phi i32 [ %i.byl, %._crit_edge.loopexit.i354 ], [ %i.bxu, %bb.jz ]
  %i.byp = add nsw i32 %i.byn, -1
  %i.byq = icmp eq i32 %.05059.i, %i.byp
  %or.cond.i340 = and i1 %i.byq, %.not112
  br i1 %or.cond.i340, label %.preheader.i347, label %.loopexit.i341

.preheader.i347:                                  ; preds = %._crit_edge.i339, %bb.kd
  %indvars.iv.i348 = phi i64 [ %indvars.iv.next.i350, %bb.kd ], [ 0, %._crit_edge.i339 ] ; 3 uses
  %i.byr = shl nuw nsw i64 %indvars.iv.i348, 6
  %i.bys = sub nsw i64 %i.bxr, %i.byr             ; 3 uses
  %i.byt = icmp slt i64 %i.bys, 1
  br i1 %i.byt, label %bb.kd, label %bb.kb

bb.kb:                                            ; preds = %.preheader.i347
  %i.byu = icmp samesign ugt i64 %i.bys, 63
  br i1 %i.byu, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %notmask.i349 = shl nsw i64 -1, %i.bys
  %i.byv = xor i64 %notmask.i349, -1
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb, %.preheader.i347
  %.048.i = phi i64 [ %i.byv, %bb.kc ], [ 0, %.preheader.i347 ], [ -1, %bb.kb ]
  %i.byw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i348 ; 2 uses
  %i.byx = load i64, ptr %i.byw, align 8, !tbaa !59
  %i.byy = xor i64 %i.byx, -1
  %i.byz = and i64 %.048.i, %i.byy
  store i64 %i.byz, ptr %i.byw, align 8, !tbaa !59
  %indvars.iv.next.i350 = add nuw nsw i64 %indvars.iv.i348, 1 ; 2 uses
  %exitcond.not.i351 = icmp eq i64 %indvars.iv.next.i350, %i.bxa
  br i1 %exitcond.not.i351, label %.loopexit.i341, label %.preheader.i347, !llvm.loop !203

.loopexit.i341:                                   ; preds = %bb.kd, %._crit_edge.i339
  %i.bza = load i32, ptr %i.fu, align 8, !tbaa !69 ; 7 uses
  %i.bzb = icmp slt i32 %i.bza, 6
  br i1 %i.bzb, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %.loopexit.i341
  %i.bzc = load i64, ptr %i.a, align 16, !tbaa !59 ; 7 uses
  %i.bzd = icmp eq i32 %i.bza, 0
  %i.bze = trunc i64 %i.bzc to i1
  %i.bzf = select i1 %i.bze, i64 3, i64 0
  %i.bzg = icmp ult i32 %i.bza, 2
  %i.bzh = and i64 %i.bzc, 3
  %i.bzi = select i1 %i.bzd, i64 %i.bzf, i64 %i.bzh
  %i.bzj = mul nuw nsw i64 %i.bzi, 5
  %.126.i.i342 = select i1 %i.bzg, i64 %i.bzj, i64 %i.bzc
  %i.bzk = icmp ult i32 %i.bza, 3
  %i.bzl = and i64 %.126.i.i342, 15
  %i.bzm = mul nuw nsw i64 %i.bzl, 17
  %.227.i.i343 = select i1 %i.bzk, i64 %i.bzm, i64 %i.bzc
  %i.bzn = icmp ult i32 %i.bza, 4
  %i.bzo = and i64 %.227.i.i343, 255
  %i.bzp = mul nuw nsw i64 %i.bzo, 257
  %.328.i.i344 = select i1 %i.bzn, i64 %i.bzp, i64 %i.bzc
  %i.bzq = icmp ult i32 %i.bza, 5
  %i.bzr = and i64 %.328.i.i344, 65535
  %i.bzs = mul nuw nsw i64 %i.bzr, 65537
  %.429.i.i345 = select i1 %i.bzq, i64 %i.bzs, i64 %i.bzc
  %i.bzt = icmp ult i32 %i.bza, 6
  %i.bzu = and i64 %.429.i.i345, 4294967295
  %i.bzv = mul nuw i64 %i.bzu, 4294967297
  %.5.i.i346 = select i1 %i.bzt, i64 %i.bzv, i64 %i.bzc
  store i64 %.5.i.i346, ptr %i.a, align 16, !tbaa !59
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %.loopexit.i341
  %5 = shl i32 %.05059.i, %i.bxd
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %scevgep.i = getelementptr i8, ptr %i.bxk, i64 %7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.bxs, i1 false), !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bzw = add nsw i32 %.05059.i, 1               ; 2 uses
  %i.bzx = icmp slt i32 %i.bzw, %i.byn
  br i1 %i.bzx, label %bb.jz, label %Exa7_ManSaveTruthTables.exit, !llvm.loop !204

Exa7_ManSaveTruthTables.exit:                     ; preds = %bb.kf, %Vec_WrdStart.exit.i
  %i.bzy = load ptr, ptr %i.fm, align 8, !tbaa !65
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.bzy, i64 176
  store ptr %i.bxf, ptr %i.bzz, align 8, !tbaa !200
  br label %bb.kk

bb.kg:                                            ; preds = %bb.gt
  %i.caa = icmp eq i32 %.2, 0
  br i1 %i.caa, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.cab = load i32, ptr %i.wn, align 8, !tbaa !105
  %i.cac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.cab) ; 0 uses
  br label %bb.kk

bb.ki:                                            ; preds = %bb.kg
  %i.cad = load ptr, ptr %i.fm, align 8, !tbaa !65
  %i.cae = getelementptr inbounds nuw i8, ptr %i.cad, i64 120
  %i.caf = load i32, ptr %i.cae, align 8, !tbaa !62
  %.not121 = icmp eq i32 %i.caf, 0
  br i1 %.not121, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.kk

bb.kk:                                            ; preds = %bb.ju, %Exa7_ManSaveTruthTables.exit, %bb.kh, %bb.kj, %bb.ki
  %.098 = phi i32 [ 2, %bb.kj ], [ 0, %bb.kh ], [ 0, %bb.ki ], [ 1, %Exa7_ManSaveTruthTables.exit ], [ 1, %bb.ju ]
  %i.cag = load i32, ptr %i.qz, align 8, !tbaa !62
  %.not127 = icmp eq i32 %i.cag, 0
  br i1 %.not127, label %bb.kl, label %.thread

bb.kl:                                            ; preds = %bb.kk
  %i.cah = load i32, ptr %i.afl, align 4, !tbaa !20 ; 2 uses
  %.not128 = icmp eq i32 %i.cah, 0
  %.pre528 = load i32, ptr %i.afn, align 8, !tbaa !20 ; 2 uses
  %.not129 = icmp eq i32 %.pre528, 0
  %or.cond788 = select i1 %.not128, i1 %.not129, i1 false
  br i1 %or.cond788, label %.thread703, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.cai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %.pre528, i32 noundef %i.cah) ; 0 uses
  %.pr.pre = load i32, ptr %i.qz, align 8, !tbaa !62
  %i.caj = icmp eq i32 %.pr.pre, 0
  br i1 %i.caj, label %.thread703, label %.thread

.thread703:                                       ; preds = %bb.kl, %bb.km
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.cak = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #23
  %i.cal = icmp slt i32 %i.cak, 0
  br i1 %i.cal, label %Abc_Clock.exit356, label %bb.kn

bb.kn:                                            ; preds = %.thread703
  %i.cam = load i64, ptr %1, align 8, !tbaa !49
  %i.can = mul nsw i64 %i.cam, 1000000
  %i.cao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cap = load i64, ptr %i.cao, align 8, !tbaa !52
  %i.caq = sdiv i64 %i.cap, 1000
  %i.car = add nsw i64 %i.caq, %i.can
  br label %Abc_Clock.exit356

Abc_Clock.exit356:                                ; preds = %.thread703, %bb.kn
  %.0.i355 = phi i64 [ %i.car, %bb.kn ], [ -1, %.thread703 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.cas = sub nsw i64 %.0.i355, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12)
  %i.cat = sitofp i64 %i.cas to double
  %i.cau = fdiv double %i.cat, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.15, double noundef %i.cau)
  br label %.thread

.thread:                                          ; preds = %bb.kk, %Abc_Clock.exit356, %bb.km
  %i.cav = load ptr, ptr %i.ah, align 8, !tbaa !54
  %.not131 = icmp eq ptr %i.cav, null
  br i1 %.not131, label %bb.kq, label %bb.ko

bb.ko:                                            ; preds = %.thread
  %i.caw = load ptr, ptr %i.db, align 8, !tbaa !61 ; 2 uses
  %.not132 = icmp eq ptr %i.caw, null
  br i1 %.not132, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  call void @free(ptr noundef nonnull %i.caw) #23
  store ptr null, ptr %i.db, align 8, !tbaa !61
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko, %.thread
  %i.cax = load ptr, ptr %i.vu, align 8, !tbaa !45
  call void @cadical_solver_delete(ptr noundef %i.cax) #23
  %i.cay = load ptr, ptr %i.sz, align 8, !tbaa !97 ; 2 uses
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cay, i64 8
  %i.cba = load ptr, ptr %i.caz, align 8, !tbaa !90 ; 2 uses
  %.not.i.i357 = icmp eq ptr %i.cba, null
  br i1 %.not.i.i357, label %Vec_WrdFree.exit.i, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  call void @free(ptr noundef nonnull %i.cba) #23
  br label %Vec_WrdFree.exit.i

Vec_WrdFree.exit.i:                               ; preds = %bb.kr, %bb.kq
  call void @free(ptr noundef nonnull %i.cay) #23
  %i.cbb = load ptr, ptr %i.afm, align 8, !tbaa !102 ; 3 uses
  %i.cbc = icmp eq ptr %i.cbb, null
  br i1 %i.cbc, label %Vec_BitFreeP.exit.i, label %bb.ks

bb.ks:                                            ; preds = %Vec_WrdFree.exit.i
  %i.cbd = getelementptr inbounds nuw i8, ptr %i.cbb, i64 8
  %i.cbe = load ptr, ptr %i.cbd, align 8, !tbaa !100 ; 2 uses
  %.not.i8.i = icmp eq ptr %i.cbe, null
  br i1 %.not.i8.i, label %bb.kt, label %.thread.i.i358

.thread.i.i358:                                   ; preds = %bb.ks
  call void @free(ptr noundef nonnull %i.cbe) #23
  %i.cbf = load ptr, ptr %i.afm, align 8, !tbaa !102 ; 2 uses
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cbf, i64 8
  store ptr null, ptr %i.cbg, align 8, !tbaa !100
  br label %bb.kt

bb.kt:                                            ; preds = %.thread.i.i358, %bb.ks
  %i.cbh = phi ptr [ %i.cbf, %.thread.i.i358 ], [ %i.cbb, %bb.ks ]
  call void @free(ptr noundef nonnull %i.cbh) #23
  store ptr null, ptr %i.afm, align 8, !tbaa !102
  br label %Vec_BitFreeP.exit.i

Vec_BitFreeP.exit.i:                              ; preds = %bb.kt, %Vec_WrdFree.exit.i
  %i.cbi = load ptr, ptr %i.afp, align 8, !tbaa !102 ; 3 uses
  %i.cbj = icmp eq ptr %i.cbi, null
  br i1 %i.cbj, label %Vec_BitFreeP.exit11.i, label %bb.ku

bb.ku:                                            ; preds = %Vec_BitFreeP.exit.i
  %i.cbk = getelementptr inbounds nuw i8, ptr %i.cbi, i64 8
  %i.cbl = load ptr, ptr %i.cbk, align 8, !tbaa !100 ; 2 uses
  %.not.i9.i = icmp eq ptr %i.cbl, null
  br i1 %.not.i9.i, label %bb.kv, label %.thread.i10.i

.thread.i10.i:                                    ; preds = %bb.ku
  call void @free(ptr noundef nonnull %i.cbl) #23
  %i.cbm = load ptr, ptr %i.afp, align 8, !tbaa !102 ; 2 uses
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.cbm, i64 8
  store ptr null, ptr %i.cbn, align 8, !tbaa !100
  br label %bb.kv

bb.kv:                                            ; preds = %.thread.i10.i, %bb.ku
  %i.cbo = phi ptr [ %i.cbm, %.thread.i10.i ], [ %i.cbi, %bb.ku ]
  call void @free(ptr noundef nonnull %i.cbo) #23
  store ptr null, ptr %i.afp, align 8, !tbaa !102
  br label %Vec_BitFreeP.exit11.i

Vec_BitFreeP.exit11.i:                            ; preds = %bb.kv, %Vec_BitFreeP.exit.i
  %i.cbp = load ptr, ptr %i.gm, align 8, !tbaa !74 ; 4 uses
  %i.cbq = load i32, ptr %i.cbp, align 8, !tbaa !8 ; 2 uses
  %i.cbr = icmp sgt i32 %i.cbq, 0
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.cbp, i64 8 ; 2 uses
  %.pre.i.i.i359 = load ptr, ptr %i.cbs, align 8, !tbaa !12 ; 3 uses
  br i1 %i.cbr, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_BitFreeP.exit11.i, %bb.kx
  %i.cbt = phi i32 [ %i.ccb, %bb.kx ], [ %i.cbq, %Vec_BitFreeP.exit11.i ]
  %i.cbu = phi ptr [ %i.ccc, %bb.kx ], [ %.pre.i.i.i359, %Vec_BitFreeP.exit11.i ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.kx ], [ 0, %Vec_BitFreeP.exit11.i ] ; 3 uses
  %i.cbv = getelementptr inbounds nuw [16 x i8], ptr %i.cbu, i64 %indvars.iv.i.i.i
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbv, i64 8
  %i.cbx = load ptr, ptr %i.cbw, align 8, !tbaa !17 ; 2 uses
  %.not15.i.i.i = icmp eq ptr %i.cbx, null
  br i1 %.not15.i.i.i, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %.lr.ph.i.i.i
  call void @free(ptr noundef nonnull %i.cbx) #23
  %i.cby = load ptr, ptr %i.cbs, align 8, !tbaa !12 ; 2 uses
  %i.cbz = getelementptr inbounds nuw [16 x i8], ptr %i.cby, i64 %indvars.iv.i.i.i
  %i.cca = getelementptr inbounds nuw i8, ptr %i.cbz, i64 8
  store ptr null, ptr %i.cca, align 8, !tbaa !17
  %.pre18.i.i.i = load i32, ptr %i.cbp, align 8, !tbaa !8
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %.lr.ph.i.i.i
  %i.ccb = phi i32 [ %.pre18.i.i.i, %bb.kw ], [ %i.cbt, %.lr.ph.i.i.i ] ; 2 uses
  %i.ccc = phi ptr [ %i.cby, %bb.kw ], [ %i.cbu, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ccd = sext i32 %i.ccb to i64
  %i.cce = icmp slt i64 %indvars.iv.next.i.i.i, %i.ccd
  br i1 %i.cce, label %.lr.ph.i.i.i, label %._crit_edge.thread.i.i.i, !llvm.loop !30

._crit_edge.i.i.i:                                ; preds = %Vec_BitFreeP.exit11.i
  %.not.i.i.i360 = icmp eq ptr %.pre.i.i.i359, null
  br i1 %.not.i.i.i360, label %Vec_WecFree.exit.i, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %bb.kx, %._crit_edge.i.i.i
  %i.ccf = phi ptr [ %.pre.i.i.i359, %._crit_edge.i.i.i ], [ %i.ccc, %bb.kx ]
  call void @free(ptr noundef nonnull %i.ccf) #23
  br label %Vec_WecFree.exit.i

Vec_WecFree.exit.i:                               ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i
  call void @free(ptr noundef nonnull %i.cbp) #23
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.fm, i64 131408
  %i.cch = load ptr, ptr %i.ccg, align 8, !tbaa !205 ; 5 uses
  %i.cci = icmp eq ptr %i.cch, null
  br i1 %i.cci, label %Exa7_ManFree.exit, label %bb.ky
end_hunk_0
