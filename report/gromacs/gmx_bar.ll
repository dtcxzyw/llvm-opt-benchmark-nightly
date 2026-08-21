inline.NumInlined: 497
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_Z7gmx_bariPPc:bb.a
  br i1 %i.etz, label %bb.xl, label %_ZL29lambda_vec_print_intermediatePK12lambda_vec_tS1_Pc.exit

bb.xl:                                            ; preds = %bb.xk
  %i.eua = load ptr, ptr %i.eti, align 8, !tbaa !86
  %i.eub = load double, ptr %i.eua, align 8, !tbaa !81
  %i.euc = load ptr, ptr %i.etl, align 8, !tbaa !86
  %i.eud = load double, ptr %i.euc, align 8, !tbaa !81
  %i.eue = fadd double %i.eub, %i.eud
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.xl, %bb.xi
  %.sink13.i = phi double [ %i.eue, %bb.xl ], [ %i.ett, %bb.xi ]
  %i.euf = fmul double %.sink13.i, 5.000000e-01
  %i.eug = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.290, double noundef %i.euf) #23 ; 0 uses
  br label %_ZL29lambda_vec_print_intermediatePK12lambda_vec_tS1_Pc.exit

_ZL29lambda_vec_print_intermediatePK12lambda_vec_tS1_Pc.exit: ; preds = %bb.xj, %bb.xk, %.sink.split.i
  %i.euh = getelementptr inbounds nuw i8, ptr %i.etg, i64 16
  %i.eui = load double, ptr %i.euh, align 8, !tbaa !271
  %i.euj = getelementptr inbounds nuw i8, ptr %i.etg, i64 24
  %i.euk = load double, ptr %i.euj, align 8, !tbaa !298
  %i.eul = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0143, ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, double noundef %i.eui, double noundef %i.euk) #23 ; 0 uses
  br label %bb.xm

bb.xm:                                            ; preds = %_ZL29lambda_vec_print_intermediatePK12lambda_vec_tS1_Pc.exit, %bb.xf
  %i.eum = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.150) ; 0 uses
  %i.eun = getelementptr inbounds nuw [96 x i8], ptr %i.csy, i64 %indvars.iv1760 ; 5 uses
  %i.euo = load ptr, ptr %i.eun, align 8, !tbaa !261
  %i.eup = load ptr, ptr %i.euo, align 8, !tbaa !225 ; 3 uses
  %i.euq = getelementptr inbounds nuw i8, ptr %i.eup, i64 24
  %i.eur = load i32, ptr %i.euq, align 8, !tbaa !75 ; 2 uses
  %i.eus = icmp sgt i32 %i.eur, -1
  br i1 %i.eus, label %bb.xn, label %bb.xo

bb.xn:                                            ; preds = %bb.xm
  %i.eut = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.289, i32 noundef %i.eur) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit554

bb.xo:                                            ; preds = %bb.xm
  %i.euu = getelementptr inbounds nuw i8, ptr %i.eup, i64 8
  %i.euv = load i32, ptr %i.euu, align 8, !tbaa !76 ; 2 uses
  %i.euw = icmp slt i32 %i.euv, 0
  br i1 %i.euw, label %bb.xp, label %bb.xq

bb.xp:                                            ; preds = %bb.xo
  %i.eux = load ptr, ptr %i.eup, align 8, !tbaa !86
  %i.euy = load double, ptr %i.eux, align 8, !tbaa !81
  %i.euz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.290, double noundef %i.euy) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit554

bb.xq:                                            ; preds = %bb.xo
  %i.eva = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.291, i32 noundef %i.euv) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit554

_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit554: ; preds = %bb.xn, %bb.xp, %bb.xq
  %i.evb = getelementptr inbounds nuw i8, ptr %i.eun, i64 8
  %i.evc = load ptr, ptr %i.evb, align 8, !tbaa !263
  %i.evd = load ptr, ptr %i.evc, align 8, !tbaa !225 ; 3 uses
  %i.eve = getelementptr inbounds nuw i8, ptr %i.evd, i64 24
  %i.evf = load i32, ptr %i.eve, align 8, !tbaa !75 ; 2 uses
  %i.evg = icmp sgt i32 %i.evf, -1
  br i1 %i.evg, label %bb.xr, label %bb.xs

bb.xr:                                            ; preds = %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit554
  %i.evh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) @.str.289, i32 noundef %i.evf) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit555

bb.xs:                                            ; preds = %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit554
  %i.evi = getelementptr inbounds nuw i8, ptr %i.evd, i64 8
  %i.evj = load i32, ptr %i.evi, align 8, !tbaa !76 ; 2 uses
  %i.evk = icmp slt i32 %i.evj, 0
  br i1 %i.evk, label %bb.xt, label %bb.xu

bb.xt:                                            ; preds = %bb.xs
  %i.evl = load ptr, ptr %i.evd, align 8, !tbaa !86
  %i.evm = load double, ptr %i.evl, align 8, !tbaa !81
  %i.evn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) @.str.290, double noundef %i.evm) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit555

bb.xu:                                            ; preds = %bb.xs
  %i.evo = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) @.str.291, i32 noundef %i.evj) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit555

_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit555: ; preds = %bb.xr, %bb.xt, %bb.xu
  %i.evp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.151, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao) ; 0 uses
  %i.evq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.152) ; 0 uses
  %i.evr = getelementptr inbounds nuw i8, ptr %i.eun, i64 16 ; 2 uses
  %i.evs = load double, ptr %i.evr, align 8, !tbaa !271
  %i.evt = fmul double %i.epe, %i.evs
  %i.evu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.ak, double noundef %i.evt) ; 0 uses
  br i1 %.1666, label %bb.xv, label %bb.xw

bb.xv:                                            ; preds = %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit555
  %i.evv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.153) ; 0 uses
  %i.evw = getelementptr inbounds nuw i8, ptr %i.eun, i64 24
  %i.evx = load double, ptr %i.evw, align 8, !tbaa !298
  %i.evy = fmul double %i.epe, %i.evx
  %i.evz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.ak, double noundef %i.evy) ; 0 uses
  br label %bb.xw

bb.xw:                                            ; preds = %bb.xv, %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit555
  br i1 %i.epm, label %bb.xx, label %bb.xy

bb.xx:                                            ; preds = %bb.xw
  %i.ewa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.154) ; 0 uses
  %i.ewb = getelementptr inbounds nuw i8, ptr %i.eun, i64 40 ; 2 uses
  %i.ewc = load double, ptr %i.ewb, align 8, !tbaa !274
  %i.ewd = fmul double %i.epe, %i.ewc
  %i.ewe = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.ak, double noundef %i.ewd) ; 0 uses
  %putchar166 = call i32 @putchar(i32 41)         ; 0 uses
  %i.ewf = load double, ptr %i.ewb, align 8, !tbaa !274
  %i.ewg = call double @llvm.fmuladd.f64(double %i.ewf, double %i.epe, double %.06671254)
  br label %bb.xy

bb.xy:                                            ; preds = %bb.xx, %bb.xw
  %.1668 = phi double [ %i.ewg, %bb.xx ], [ %.06671254, %bb.xw ] ; 5 uses
  %putchar167 = call i32 @putchar(i32 10)         ; 0 uses
  %i.ewh = load double, ptr %i.evr, align 8, !tbaa !271
  %i.ewi = fadd double %.01441255, %i.ewh         ; 3 uses
  %indvars.iv.next1761 = add nuw nsw i64 %indvars.iv1760, 1 ; 2 uses
  %exitcond1772.not = icmp eq i64 %indvars.iv.next1761, %wide.trip.count
  br i1 %exitcond1772.not, label %bb.xz, label %bb.wz, !llvm.loop !307

bb.xz:                                            ; preds = %bb.xy
  %putchar160 = call i32 @putchar(i32 10)         ; 0 uses
  %i.ewj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.156) ; 0 uses
  %i.ewk = load ptr, ptr %i.csy, align 8, !tbaa !261
  %i.ewl = load ptr, ptr %i.ewk, align 8, !tbaa !225 ; 3 uses
  %i.ewm = getelementptr inbounds nuw i8, ptr %i.ewl, i64 24
  %i.ewn = load i32, ptr %i.ewm, align 8, !tbaa !75 ; 2 uses
  %i.ewo = icmp sgt i32 %i.ewn, -1
  br i1 %i.ewo, label %bb.ya, label %bb.yb

bb.ya:                                            ; preds = %bb.xz
  %i.ewp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.289, i32 noundef %i.ewn) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit556

bb.yb:                                            ; preds = %bb.xz
  %i.ewq = getelementptr inbounds nuw i8, ptr %i.ewl, i64 8
  %i.ewr = load i32, ptr %i.ewq, align 8, !tbaa !76 ; 2 uses
  %i.ews = icmp slt i32 %i.ewr, 0
  br i1 %i.ews, label %bb.yc, label %bb.yd

bb.yc:                                            ; preds = %bb.yb
  %i.ewt = load ptr, ptr %i.ewl, align 8, !tbaa !86
  %i.ewu = load double, ptr %i.ewt, align 8, !tbaa !81
  %i.ewv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.290, double noundef %i.ewu) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit556

bb.yd:                                            ; preds = %bb.yb
  %i.eww = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.291, i32 noundef %i.ewr) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit556

_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit556: ; preds = %bb.ya, %bb.yc, %bb.yd
  %i.ewx = getelementptr [96 x i8], ptr %i.csy, i64 %indvars.iv.next
  %i.ewy = getelementptr i8, ptr %i.ewx, i64 -88  ; 2 uses
  %i.ewz = load ptr, ptr %i.ewy, align 8, !tbaa !263
  %i.exa = load ptr, ptr %i.ewz, align 8, !tbaa !225 ; 3 uses
  %i.exb = getelementptr inbounds nuw i8, ptr %i.exa, i64 24
  %i.exc = load i32, ptr %i.exb, align 8, !tbaa !75 ; 2 uses
  %i.exd = icmp sgt i32 %i.exc, -1
  br i1 %i.exd, label %bb.ye, label %bb.yf

bb.ye:                                            ; preds = %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit556
  %i.exe = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) @.str.289, i32 noundef %i.exc) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit557

bb.yf:                                            ; preds = %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit556
  %i.exf = getelementptr inbounds nuw i8, ptr %i.exa, i64 8
  %i.exg = load i32, ptr %i.exf, align 8, !tbaa !76 ; 2 uses
  %i.exh = icmp slt i32 %i.exg, 0
  br i1 %i.exh, label %bb.yg, label %bb.yh

bb.yg:                                            ; preds = %bb.yf
  %i.exi = load ptr, ptr %i.exa, align 8, !tbaa !86
  %i.exj = load double, ptr %i.exi, align 8, !tbaa !81
  %i.exk = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) @.str.290, double noundef %i.exj) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit557

bb.yh:                                            ; preds = %bb.yf
  %i.exl = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) @.str.291, i32 noundef %i.exg) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit557

_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit557: ; preds = %bb.ye, %bb.yg, %bb.yh
  %i.exm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.151, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao) ; 0 uses
  %i.exn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.152) ; 0 uses
  %i.exo = fmul double %i.epe, %i.ewi
  %i.exp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.ak, double noundef %i.exo) ; 0 uses
  br i1 %.1666, label %bb.yi, label %bb.yl

bb.yi:                                            ; preds = %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit557
  %i.exq = load i32, ptr %i.ag, align 4, !tbaa !9 ; 4 uses
  %i.exr = load i32, ptr %i.ah, align 4, !tbaa !9 ; 3 uses
  %.not36.i = icmp sgt i32 %i.exq, %i.exr
  br i1 %.not36.i, label %_ZL7bar_erriiPKd.exit, label %.preheader.lr.ph.i558

.preheader.lr.ph.i558:                            ; preds = %bb.yi
  %i.exs = add i32 %i.exr, 1                      ; 2 uses
  %i.ext = sext i32 %i.exq to i64
  %i.exu = sext i32 %i.exs to i64
  br label %.preheader.i559

.preheader.i559:                                  ; preds = %._crit_edge.i560, %.preheader.lr.ph.i558
  %indvar = phi i32 [ %indvar.next, %._crit_edge.i560 ], [ 0, %.preheader.lr.ph.i558 ] ; 2 uses
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %._crit_edge.i560 ], [ %i.ext, %.preheader.lr.ph.i558 ] ; 4 uses
  %.02838.i = phi double [ %i.ezu, %._crit_edge.i560 ], [ 0.000000e+00, %.preheader.lr.ph.i558 ]
  %67 = add i32 %i.exq, %indvar                   ; 2 uses
  %68 = zext i32 %67 to i64                       ; 2 uses
  %i.exv = icmp sgt i64 %indvars.iv44.i, 0
  br i1 %i.exv, label %.lr.ph.i565, label %._crit_edge.i560

.lr.ph.i565:                                      ; preds = %.preheader.i559
  %i.exw = mul nsw i64 %indvars.iv44.i, %i.exu
  %invariant.gep.i567 = getelementptr [8 x i8], ptr %i.ev, i64 %i.exw ; 9 uses
  %xtraiter3983 = and i64 %68, 7                  ; 3 uses
  %i.exx = add i32 %67, -1
  %i.exy = icmp ult i32 %i.exx, 7
  br i1 %i.exy, label %.epil.preheader3982, label %.lr.ph.i565.new

.lr.ph.i565.new:                                  ; preds = %.lr.ph.i565
  %unroll_iter3989 = and i64 %68, 4294967288
  br label %bb.yj

bb.yj:                                            ; preds = %bb.yj, %.lr.ph.i565.new
  %indvars.iv.i568 = phi i64 [ 0, %.lr.ph.i565.new ], [ %indvars.iv.next.i570.7, %bb.yj ] ; 9 uses
  %.034.i = phi double [ 0.000000e+00, %.lr.ph.i565.new ], [ %i.ezd, %bb.yj ]
  %.02733.i = phi double [ 0.000000e+00, %.lr.ph.i565.new ], [ %i.ezc, %bb.yj ]
  %niter3990 = phi i64 [ 0, %.lr.ph.i565.new ], [ %niter3990.next.7, %bb.yj ]
  %gep.i569 = getelementptr [8 x i8], ptr %invariant.gep.i567, i64 %indvars.iv.i568
  %i.exz = load double, ptr %gep.i569, align 8, !tbaa !81 ; 3 uses
  %i.eya = fadd double %.02733.i, %i.exz
  %i.eyb = call double @llvm.fmuladd.f64(double %i.exz, double %i.exz, double %.034.i)
  %i.eyc = getelementptr [8 x i8], ptr %invariant.gep.i567, i64 %indvars.iv.i568
  %gep.i569.1 = getelementptr i8, ptr %i.eyc, i64 8
  %i.eyd = load double, ptr %gep.i569.1, align 8, !tbaa !81 ; 3 uses
  %i.eye = fadd double %i.eya, %i.eyd
  %i.eyf = call double @llvm.fmuladd.f64(double %i.eyd, double %i.eyd, double %i.eyb)
  %i.eyg = getelementptr [8 x i8], ptr %invariant.gep.i567, i64 %indvars.iv.i568
  %gep.i569.2 = getelementptr i8, ptr %i.eyg, i64 16
  %i.eyh = load double, ptr %gep.i569.2, align 8, !tbaa !81 ; 3 uses
  %i.eyi = fadd double %i.eye, %i.eyh
  %i.eyj = call double @llvm.fmuladd.f64(double %i.eyh, double %i.eyh, double %i.eyf)
  %i.eyk = getelementptr [8 x i8], ptr %invariant.gep.i567, i64 %indvars.iv.i568
  %gep.i569.3 = getelementptr i8, ptr %i.eyk, i64 24
  %i.eyl = load double, ptr %gep.i569.3, align 8, !tbaa !81 ; 3 uses
  %i.eym = fadd double %i.eyi, %i.eyl
  %i.eyn = call double @llvm.fmuladd.f64(double %i.eyl, double %i.eyl, double %i.eyj)
  %i.eyo = getelementptr [8 x i8], ptr %invariant.gep.i567, i64 %indvars.iv.i568
  %gep.i569.4 = getelementptr i8, ptr %i.eyo, i64 32
  %i.eyp = load double, ptr %gep.i569.4, align 8, !tbaa !81 ; 3 uses
  %i.eyq = fadd double %i.eym, %i.eyp
  %i.eyr = call double @llvm.fmuladd.f64(double %i.eyp, double %i.eyp, double %i.eyn)
  %i.eys = getelementptr [8 x i8], ptr %invariant.gep.i567, i64 %indvars.iv.i568
  %gep.i569.5 = getelementptr i8, ptr %i.eys, i64 40
  %i.eyt = load double, ptr %gep.i569.5, align 8, !tbaa !81 ; 3 uses
  %i.eyu = fadd double %i.eyq, %i.eyt
  %i.eyv = call double @llvm.fmuladd.f64(double %i.eyt, double %i.eyt, double %i.eyr)
  %i.eyw = getelementptr [8 x i8], ptr %invariant.gep.i567, i64 %indvars.iv.i568
  %gep.i569.6 = getelementptr i8, ptr %i.eyw, i64 48
  %i.eyx = load double, ptr %gep.i569.6, align 8, !tbaa !81 ; 3 uses
  %i.eyy = fadd double %i.eyu, %i.eyx
  %i.eyz = call double @llvm.fmuladd.f64(double %i.eyx, double %i.eyx, double %i.eyv)
  %i.eza = getelementptr [8 x i8], ptr %invariant.gep.i567, i64 %indvars.iv.i568
  %gep.i569.7 = getelementptr i8, ptr %i.eza, i64 56
  %i.ezb = load double, ptr %gep.i569.7, align 8, !tbaa !81 ; 3 uses
  %i.ezc = fadd double %i.eyy, %i.ezb             ; 3 uses
  %i.ezd = call double @llvm.fmuladd.f64(double %i.ezb, double %i.ezb, double %i.eyz) ; 3 uses
  %indvars.iv.next.i570.7 = add nuw nsw i64 %indvars.iv.i568, 8 ; 2 uses
  %niter3990.next.7 = add i64 %niter3990, 8       ; 2 uses
  %niter3990.ncmp.7 = icmp eq i64 %niter3990.next.7, %unroll_iter3989
  br i1 %niter3990.ncmp.7, label %._crit_edge.i560.loopexit.unr-lcssa, label %bb.yj, !llvm.loop !308

._crit_edge.i560.loopexit.unr-lcssa:              ; preds = %bb.yj
  %lcmp.mod3985.not = icmp eq i64 %xtraiter3983, 0
  br i1 %lcmp.mod3985.not, label %._crit_edge.i560, label %.epil.preheader3982

.epil.preheader3982:                              ; preds = %._crit_edge.i560.loopexit.unr-lcssa, %.lr.ph.i565
  %indvars.iv.i568.epil.init = phi i64 [ 0, %.lr.ph.i565 ], [ %indvars.iv.next.i570.7, %._crit_edge.i560.loopexit.unr-lcssa ]
  %.034.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i565 ], [ %i.ezd, %._crit_edge.i560.loopexit.unr-lcssa ]
  %.02733.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i565 ], [ %i.ezc, %._crit_edge.i560.loopexit.unr-lcssa ]
  %lcmp.mod3988 = icmp ne i64 %xtraiter3983, 0
  call void @llvm.assume(i1 %lcmp.mod3988)
  br label %bb.yk

bb.yk:                                            ; preds = %bb.yk, %.epil.preheader3982
  %indvars.iv.i568.epil = phi i64 [ %indvars.iv.i568.epil.init, %.epil.preheader3982 ], [ %indvars.iv.next.i570.epil, %bb.yk ] ; 2 uses
  %.034.i.epil = phi double [ %.034.i.epil.init, %.epil.preheader3982 ], [ %i.ezg, %bb.yk ]
  %.02733.i.epil = phi double [ %.02733.i.epil.init, %.epil.preheader3982 ], [ %i.ezf, %bb.yk ]
  %epil.iter3984 = phi i64 [ 0, %.epil.preheader3982 ], [ %epil.iter3984.next, %bb.yk ]
  %gep.i569.epil = getelementptr [8 x i8], ptr %invariant.gep.i567, i64 %indvars.iv.i568.epil
  %i.eze = load double, ptr %gep.i569.epil, align 8, !tbaa !81 ; 3 uses
  %i.ezf = fadd double %.02733.i.epil, %i.eze     ; 2 uses
  %i.ezg = call double @llvm.fmuladd.f64(double %i.eze, double %i.eze, double %.034.i.epil) ; 2 uses
  %indvars.iv.next.i570.epil = add nuw nsw i64 %indvars.iv.i568.epil, 1
  %epil.iter3984.next = add i64 %epil.iter3984, 1 ; 2 uses
  %epil.iter3984.cmp.not = icmp eq i64 %epil.iter3984.next, %xtraiter3983
  br i1 %epil.iter3984.cmp.not, label %._crit_edge.i560, label %bb.yk, !llvm.loop !309

._crit_edge.i560:                                 ; preds = %._crit_edge.i560.loopexit.unr-lcssa, %bb.yk, %.preheader.i559
  %.027.lcssa.i = phi double [ 0.000000e+00, %.preheader.i559 ], [ %i.ezc, %._crit_edge.i560.loopexit.unr-lcssa ], [ %i.ezf, %bb.yk ]
  %.0.lcssa.i561 = phi double [ 0.000000e+00, %.preheader.i559 ], [ %i.ezd, %._crit_edge.i560.loopexit.unr-lcssa ], [ %i.ezg, %bb.yk ]
  %.pre-phi.i562 = trunc i64 %indvars.iv44.i to i32 ; 2 uses
  %i.ezh = sitofp i32 %.pre-phi.i562 to double
  %i.ezi = insertelement <2 x double> poison, double %.027.lcssa.i, i64 0
  %i.ezj = insertelement <2 x double> %i.ezi, double %.0.lcssa.i561, i64 1
  %i.ezk = insertelement <2 x double> poison, double %i.ezh, i64 0
  %i.ezl = shufflevector <2 x double> %i.ezk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ezm = fdiv <2 x double> %i.ezj, %i.ezl       ; 2 uses
  %i.ezn = extractelement <2 x double> %i.ezm, i64 0 ; 2 uses
  %i.ezo = fneg double %i.ezn
  %i.ezp = extractelement <2 x double> %i.ezm, i64 1
  %i.ezq = call double @llvm.fmuladd.f64(double %i.ezo, double %i.ezn, double %i.ezp)
  %i.ezr = add i32 %.pre-phi.i562, -1
  %i.ezs = sitofp i32 %i.ezr to double
  %i.ezt = fdiv double %i.ezq, %i.ezs
  %i.ezu = fadd double %.02838.i, %i.ezt          ; 2 uses
  %indvars.iv.next45.i = add nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %lftr.wideiv.i563 = trunc i64 %indvars.iv.next45.i to i32
  %exitcond47.not.i = icmp eq i32 %i.exs, %lftr.wideiv.i563
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond47.not.i, label %_ZL7bar_erriiPKd.exit, label %.preheader.i559, !llvm.loop !310

_ZL7bar_erriiPKd.exit:                            ; preds = %._crit_edge.i560, %bb.yi
  %.028.lcssa.i = phi double [ 0.000000e+00, %bb.yi ], [ %i.ezu, %._crit_edge.i560 ]
  %reass.sub1257 = sub i32 %i.exr, %i.exq
  %i.ezv = add i32 %reass.sub1257, 1
  %i.ezw = sitofp i32 %i.ezv to double
  %i.ezx = fdiv double %.028.lcssa.i, %i.ezw
  %i.ezy = call noundef double @sqrt(double noundef %i.ezx) #23
  %i.ezz = fmul double %i.epe, %i.ezy             ; 3 uses
  %i.faa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.153) ; 0 uses
  %i.fab = fcmp olt double %i.ezz, %.3.lcssa.i
  %.sroa.speculated642 = select i1 %i.fab, double %.3.lcssa.i, double %i.ezz ; 2 uses
  %i.fac = fcmp olt double %.sroa.speculated642, %.1668
  %.sroa.speculated = select i1 %i.fac, double %.1668, double %.sroa.speculated642
  %i.fad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.ak, double noundef %.sroa.speculated) ; 0 uses
  br label %bb.yl

bb.yl:                                            ; preds = %_ZL7bar_erriiPKd.exit, %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit557
  %.0 = phi double [ %i.ezz, %_ZL7bar_erriiPKd.exit ], [ 0.000000e+00, %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit557 ] ; 4 uses
  %putchar161 = call i32 @putchar(i32 10)         ; 0 uses
  br i1 %i.epk, label %bb.ym, label %bb.yo

bb.ym:                                            ; preds = %bb.yl
  %i.fae = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.157) ; 0 uses
  %i.faf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.ak, double noundef %.3.lcssa.i) ; 0 uses
  %i.fag = fcmp olt double %.0, %.3.lcssa.i
  %or.cond = and i1 %.1666, %i.fag
  br i1 %or.cond, label %bb.yn, label %bb.yo

bb.yn:                                            ; preds = %bb.ym
  %i.fah = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.158, double noundef %.0) ; 0 uses
  br label %bb.yo

bb.yo:                                            ; preds = %bb.ym, %bb.yn, %bb.yl
  br i1 %i.epm, label %bb.yp, label %bb.yr

bb.yp:                                            ; preds = %bb.yo
  %i.fai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.159) ; 0 uses
  %i.faj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.ak, double noundef %.1668) ; 0 uses
  %i.fak = fcmp olt double %.0, %.1668
  %or.cond2597 = select i1 %.1666, i1 %i.fak, i1 false
  br i1 %or.cond2597, label %bb.yq, label %bb.yr

bb.yq:                                            ; preds = %bb.yp
  %i.fal = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.160, double noundef %.0) ; 0 uses
  br label %bb.yr

bb.yr:                                            ; preds = %bb.yp, %bb.yq, %bb.yo
  %putchar162 = call i32 @putchar(i32 10)         ; 0 uses
  br i1 %.not164, label %bb.yx, label %bb.ys

bb.ys:                                            ; preds = %bb.yr
  %i.fam = load ptr, ptr %i.ewy, align 8, !tbaa !263
  %i.fan = load ptr, ptr %i.fam, align 8, !tbaa !225 ; 3 uses
  %i.fao = getelementptr inbounds nuw i8, ptr %i.fan, i64 24
  %i.fap = load i32, ptr %i.fao, align 8, !tbaa !75 ; 2 uses
  %i.faq = icmp sgt i32 %i.fap, -1
  br i1 %i.faq, label %bb.yt, label %bb.yu

bb.yt:                                            ; preds = %bb.ys
  %i.far = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.289, i32 noundef %i.fap) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit573

bb.yu:                                            ; preds = %bb.ys
  %i.fas = getelementptr inbounds nuw i8, ptr %i.fan, i64 8
  %i.fat = load i32, ptr %i.fas, align 8, !tbaa !76 ; 2 uses
  %i.fau = icmp slt i32 %i.fat, 0
  br i1 %i.fau, label %bb.yv, label %bb.yw

bb.yv:                                            ; preds = %bb.yu
  %i.fav = load ptr, ptr %i.fan, align 8, !tbaa !86
  %i.faw = load double, ptr %i.fav, align 8, !tbaa !81
  %i.fax = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.290, double noundef %i.faw) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit573

bb.yw:                                            ; preds = %bb.yu
  %i.fay = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.291, i32 noundef %i.fat) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit573

_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit573: ; preds = %bb.yt, %bb.yv, %bb.yw
  %i.faz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0142, ptr noundef nonnull %i.al, ptr noundef nonnull %i.an, double noundef %i.ewi) #23 ; 0 uses
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef nonnull %.0142)
          to label %bb.yx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.yx:                                            ; preds = %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit573, %bb.yr
  br i1 %.not165, label %bb.yz, label %bb.yy

bb.yy:                                            ; preds = %bb.yx
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef nonnull %.0143)
          to label %bb.yz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.yz:                                            ; preds = %bb.yy, %bb.yx
  %i.fba = load ptr, ptr %i.at, align 8, !tbaa !220
  %i.fbb = invoke noundef ptr @_Z11opt2fn_nullPKciPK8t_filenm(ptr noundef nonnull @.str.110, i32 noundef 5, ptr noundef nonnull %57)
          to label %bb.za unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.za:                                            ; preds = %bb.yz
  invoke void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef %i.fba, ptr noundef %i.fbb, ptr noundef nonnull @.str.161)
          to label %bb.zb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
