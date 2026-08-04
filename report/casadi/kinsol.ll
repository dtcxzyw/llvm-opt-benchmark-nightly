inline.NumInlined: 17
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@KINSol:bb.a
  %i.yp = fadd double %i.ym, %i.yo
  br label %bb.fm

.peel.begin.i181:                                 ; preds = %bb.fk
  %i.yq = load double, ptr %i.fx, align 8, !tbaa !99
  %i.yr = extractelement <2 x double> %i.xp, i64 1
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINPrintInfo(ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.58, double noundef %i.yj, double noundef %i.yq, double noundef %i.yr)
  %.pre.i182 = load i32, ptr %i.di, align 4, !tbaa !83
  %i.ys = icmp sgt i32 %.pre.i182, 2
  %i.yt = fmul double %i.xx, 1.000000e-04         ; 3 uses
  %i.yu = fneg double %i.xx                       ; 2 uses
  %i.yv = load double, ptr %i.fx, align 8, !tbaa !99
  %i.yw = fadd double %i.yt, %i.yv                ; 3 uses
  br i1 %i.ys, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %.peel.begin.i181
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINPrintInfo(ptr noundef nonnull %0, i32 noundef 9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, double noundef %i.xs, double noundef %i.xu, double noundef %i.yw, double noundef 1.000000e+00)
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %.peel.begin.i181, %.peel.begin.thread.i176
  %i.yx = phi double [ %i.yp, %.peel.begin.thread.i176 ], [ %i.yw, %bb.fl ], [ %i.yw, %.peel.begin.i181 ]
  %i.yy = phi double [ %i.yn, %.peel.begin.thread.i176 ], [ %i.yu, %bb.fl ], [ %i.yu, %.peel.begin.i181 ] ; 3 uses
  %i.yz = phi double [ %i.ym, %.peel.begin.thread.i176 ], [ %i.yt, %bb.fl ], [ %i.yt, %.peel.begin.i181 ] ; 3 uses
  %i.za = fcmp ugt double %i.xu, %i.yx
  br i1 %i.za, label %bb.fn, label %.loopexit.thread.i

bb.fn:                                            ; preds = %bb.fm
  %.pre444.i = load ptr, ptr %i.ha, align 8, !tbaa !61
  %.pre443.i = load ptr, ptr %i.hb, align 8, !tbaa !63
  %.pre442.i = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.zb = load double, ptr %i.fx, align 8, !tbaa !99
  %i.zc = fsub double %i.xu, %i.zb
  %i.zd = fsub double %i.zc, %i.xx
  %i.ze = fmul double %i.zd, 2.000000e+00
  %i.zf = fdiv double %i.yy, %i.ze                ; 2 uses
  %i.zg = fcmp ogt double %i.zf, 5.000000e-01
  %.1334.peel.i = select i1 %i.zg, double 5.000000e-01, double %i.zf ; 2 uses
  %i.zh = fcmp olt double %.1334.peel.i, 1.000000e-01
  %i.zi = select i1 %i.zh, double 1.000000e-01, double %.1334.peel.i ; 3 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %.pre442.i, double noundef %i.zi, ptr noundef %.pre443.i, ptr noundef %.pre444.i) #12
  %i.zj = load ptr, ptr %i.eq, align 8, !tbaa !76
  %i.zk = load ptr, ptr %i.ha, align 8, !tbaa !61
  %i.zl = load ptr, ptr %i.et, align 8, !tbaa !62
  %i.zm = load ptr, ptr %i.ev, align 8, !tbaa !84
  %i.zn = tail call i32 %i.zj(ptr noundef %i.zk, ptr noundef %i.zl, ptr noundef %i.zm) #12, !inline_history !125
  %i.zo = load i64, ptr %i.ep, align 8, !tbaa !86
  %i.zp = add nsw i64 %i.zo, 1
  store i64 %i.zp, ptr %i.ep, align 8, !tbaa !86
  %.not354.peel.i = icmp eq i32 %i.zn, 0
  br i1 %.not354.peel.i, label %bb.fo, label %KINLinSolDrv.exit.thread

bb.fo:                                            ; preds = %bb.fn
  %i.zq = load ptr, ptr %i.et, align 8, !tbaa !62
  %i.zr = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.zs = tail call double @N_VWL2Norm(ptr noundef %i.zq, ptr noundef %i.zr) #12 ; 4 uses
  %i.zt = fmul double %i.zs, 5.000000e-01
  %i.zu = fmul double %i.zs, %i.zt                ; 2 uses
  %i.zv = fcmp olt double %i.zi, %i.yj
  br i1 %i.zv, label %.loopexit441.i, label %.peel.next.i179.preheader

.peel.next.i179.preheader:                        ; preds = %bb.fo
  %i.zw = insertelement <2 x double> poison, double %i.xx, i64 0
  %i.zx = shufflevector <2 x double> %i.zw, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.peel.next.i179

.peel.next.i179:                                  ; preds = %.peel.next.i179.preheader, %bb.fv
  %.10221 = phi double [ %i.aci, %bb.fv ], [ %i.zs, %.peel.next.i179.preheader ] ; 4 uses
  %.10 = phi double [ %i.ack, %bb.fv ], [ %i.zu, %.peel.next.i179.preheader ] ; 8 uses
  %.0335.i = phi double [ %.0321.i, %bb.fv ], [ 1.000000e+00, %.peel.next.i179.preheader ] ; 3 uses
  %.0332.i = phi double [ %.10, %bb.fv ], [ %i.xu, %.peel.next.i179.preheader ]
  %.0321.i = phi double [ %i.abu, %bb.fv ], [ %i.zi, %.peel.next.i179.preheader ] ; 12 uses
  %.0310.i = phi i32 [ %i.acf, %bb.fv ], [ 1, %.peel.next.i179.preheader ] ; 4 uses
  %i.zy = load double, ptr %i.fx, align 8, !tbaa !99
  %i.zz = tail call double @llvm.fmuladd.f64(double %i.yz, double %.0321.i, double %i.zy) ; 3 uses
  %i.aaa = load i32, ptr %i.di, align 4, !tbaa !83
  %i.aab = icmp sgt i32 %i.aaa, 2
  br i1 %i.aab, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %.peel.next.i179
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINPrintInfo(ptr noundef nonnull %0, i32 noundef 9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, double noundef %.10221, double noundef %.10, double noundef %i.zz, double noundef %.0321.i)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %.peel.next.i179
  %i.aac = fcmp ugt double %.10, %i.zz
  %i.aad = load double, ptr %i.fx, align 8, !tbaa !99 ; 2 uses
  br i1 %i.aac, label %bb.fr, label %.loopexit.i180

bb.fr:                                            ; preds = %bb.fq
  %i.aae = insertelement <2 x double> poison, double %.0332.i, i64 0
  %i.aaf = insertelement <2 x double> %i.aae, double %.10, i64 1
  %i.aag = insertelement <2 x double> poison, double %i.aad, i64 0
  %i.aah = shufflevector <2 x double> %i.aag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aai = fsub <2 x double> %i.aaf, %i.aah
  %i.aaj = insertelement <2 x double> poison, double %.0335.i, i64 0
  %i.aak = insertelement <2 x double> %i.aaj, double %.0321.i, i64 1 ; 3 uses
  %i.aal = fneg <2 x double> %i.aak               ; 2 uses
  %i.aam = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aal, <2 x double> %i.zx, <2 x double> %i.aai) ; 3 uses
  %i.aan = fmul <2 x double> %i.aak, %i.aak       ; 2 uses
  %i.aao = fdiv <2 x double> splat (double 1.000000e+00), %i.aan ; 2 uses
  %i.aap = insertelement <2 x double> poison, double %.0321.i, i64 0
  %i.aaq = shufflevector <2 x double> %i.aap, <2 x double> %i.aal, <2 x i32> <i32 0, i32 2>
  %i.aar = fdiv <2 x double> %i.aaq, %i.aan       ; 2 uses
  %i.aas = shufflevector <2 x double> %i.aao, <2 x double> %i.aar, <2 x i32> <i32 0, i32 2>
  %i.aat = fneg <2 x double> %i.aam
  %i.aau = shufflevector <2 x double> %i.aat, <2 x double> %i.aam, <2 x i32> <i32 0, i32 2>
  %i.aav = fmul <2 x double> %i.aas, %i.aau
  %i.aaw = shufflevector <2 x double> %i.aao, <2 x double> %i.aar, <2 x i32> <i32 1, i32 3>
  %i.aax = shufflevector <2 x double> %i.aam, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaw, <2 x double> %i.aax, <2 x double> %i.aav) ; 2 uses
  %i.aaz = fsub double %.0321.i, %.0335.i
  %i.aba = fdiv double 1.000000e+00, %i.aaz       ; 2 uses
  %i.abb = extractelement <2 x double> %i.aay, i64 0
  %i.abc = fmul double %i.aba, %i.abb             ; 2 uses
  %i.abd = extractelement <2 x double> %i.aay, i64 1
  %i.abe = fmul double %i.aba, %i.abd             ; 4 uses
  %i.abf = tail call double @SUNRabs(double noundef %i.abc) #12
  %i.abg = load double, ptr %0, align 8, !tbaa !8
  %i.abh = fcmp olt double %i.abf, %i.abg
  br i1 %i.abh, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.abi = fmul double %i.abe, 2.000000e+00
  %i.abj = fdiv double %i.yy, %i.abi
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fr
  %i.abk = fmul double %i.abc, 3.000000e+00       ; 2 uses
  %i.abl = fmul double %i.yy, %i.abk
  %i.abm = tail call double @llvm.fmuladd.f64(double %i.abe, double %i.abe, double %i.abl)
  %i.abn = tail call double @SUNRsqrt(double noundef %i.abm) #12
  %i.abo = fsub double %i.abn, %i.abe
  %i.abp = fdiv double %i.abo, %i.abk
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.0333.i = phi double [ %i.abp, %bb.ft ], [ %i.abj, %bb.fs ] ; 2 uses
  %i.abq = fmul double %.0321.i, 5.000000e-01     ; 2 uses
  %i.abr = fcmp ogt double %.0333.i, %i.abq
  %.1334.i = select i1 %i.abr, double %i.abq, double %.0333.i ; 2 uses
  %i.abs = fmul double %.0321.i, 1.000000e-01     ; 2 uses
  %i.abt = fcmp ogt double %i.abs, %.1334.i
  %i.abu = select i1 %i.abt, double %i.abs, double %.1334.i ; 3 uses
  %i.abv = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.abw = load ptr, ptr %i.hb, align 8, !tbaa !63
  %i.abx = load ptr, ptr %i.ha, align 8, !tbaa !61
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.abv, double noundef %i.abu, ptr noundef %i.abw, ptr noundef %i.abx) #12
  %i.aby = load ptr, ptr %i.eq, align 8, !tbaa !76
  %i.abz = load ptr, ptr %i.ha, align 8, !tbaa !61
  %i.aca = load ptr, ptr %i.et, align 8, !tbaa !62
  %i.acb = load ptr, ptr %i.ev, align 8, !tbaa !84
  %i.acc = tail call i32 %i.aby(ptr noundef %i.abz, ptr noundef %i.aca, ptr noundef %i.acb) #12, !inline_history !125
  %i.acd = load i64, ptr %i.ep, align 8, !tbaa !86
  %i.ace = add nsw i64 %i.acd, 1
  store i64 %i.ace, ptr %i.ep, align 8, !tbaa !86
  %.not354.i = icmp eq i32 %i.acc, 0
  br i1 %.not354.i, label %bb.fv, label %KINLinSolDrv.exit.thread

bb.fv:                                            ; preds = %bb.fu
  %i.acf = add nuw nsw i32 %.0310.i, 1
  %i.acg = load ptr, ptr %i.et, align 8, !tbaa !62
  %i.ach = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.aci = tail call double @N_VWL2Norm(ptr noundef %i.acg, ptr noundef %i.ach) #12 ; 4 uses
  %i.acj = fmul double %i.aci, 5.000000e-01
  %i.ack = fmul double %i.aci, %i.acj             ; 2 uses
  %i.acl = fcmp olt double %i.abu, %i.yj
  br i1 %i.acl, label %.loopexit441.i, label %.peel.next.i179, !llvm.loop !127

.loopexit441.i:                                   ; preds = %bb.fv, %bb.fo
  %.11222 = phi double [ %i.zs, %bb.fo ], [ %i.aci, %bb.fv ]
  %.11 = phi double [ %i.zu, %bb.fo ], [ %i.ack, %bb.fv ]
  %i.acm = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.acn = load ptr, ptr %i.ha, align 8, !tbaa !61
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.acm, ptr noundef %i.acn) #12
  br label %bb.gm

.loopexit.i180:                                   ; preds = %bb.fq
  %i.aco = fmul double %i.xx, 9.000000e-01        ; 3 uses
  %i.acp = tail call double @llvm.fmuladd.f64(double %i.aco, double %.0321.i, double %i.aad)
  %i.acq = fcmp olt double %.10, %i.acp
  br i1 %i.acq, label %bb.fw, label %.thread495.i

.loopexit.thread.i:                               ; preds = %bb.fm
  %i.acr = load double, ptr %i.fx, align 8, !tbaa !99
  %i.acs = fmul double %i.xx, 9.000000e-01        ; 2 uses
  %i.act = fadd double %i.acs, %i.acr
  %i.acu = fcmp olt double %i.xu, %i.act
  br i1 %i.acu, label %.thread.i177, label %.thread495.i

bb.fw:                                            ; preds = %.loopexit.i180
  %i.acv = fcmp oeq double %.0321.i, 1.000000e+00
  br i1 %i.acv, label %.thread.i177, label %.critedge.i

.thread.i177:                                     ; preds = %bb.fw, %.loopexit.thread.i
  %.5216 = phi double [ %.10221, %bb.fw ], [ %i.xs, %.loopexit.thread.i ]
  %.5 = phi double [ %.10, %bb.fw ], [ %i.xu, %.loopexit.thread.i ]
  %.0310.lcssa473481.i = phi i32 [ %.0310.i, %bb.fw ], [ 0, %.loopexit.thread.i ] ; 2 uses
  %i.acw = phi double [ %i.aco, %bb.fw ], [ %i.acs, %.loopexit.thread.i ] ; 2 uses
  %i.acx = load double, ptr %i.dw, align 8, !tbaa !92
  %i.acy = extractelement <2 x double> %i.xp, i64 1
  %i.acz = fcmp olt double %i.acy, %i.acx
  br i1 %i.acz, label %.preheader.i, label %.thread495.i

.preheader.i:                                     ; preds = %.thread.i177, %bb.fz
  %.1322.i = phi double [ %i.ada, %bb.fz ], [ 1.000000e+00, %.thread.i177 ] ; 2 uses
  %.1311.i = phi i32 [ %i.add, %bb.fz ], [ %.0310.lcssa473481.i, %.thread.i177 ]
  %i.ada = fmul double %.1322.i, 2.000000e+00     ; 3 uses
  %i.adb = fcmp uge double %i.ada, %.2327406.lcssa.i ; 2 uses
  %i.adc = select i1 %i.adb, double %.2327406.lcssa.i, double %i.ada ; 5 uses
  %i.add = add nuw nsw i32 %.1311.i, 1            ; 2 uses
  %i.ade = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.adf = load ptr, ptr %i.hb, align 8, !tbaa !63
  %i.adg = load ptr, ptr %i.ha, align 8, !tbaa !61
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ade, double noundef %i.adc, ptr noundef %i.adf, ptr noundef %i.adg) #12
  %i.adh = load ptr, ptr %i.eq, align 8, !tbaa !76
  %i.adi = load ptr, ptr %i.ha, align 8, !tbaa !61
  %i.adj = load ptr, ptr %i.et, align 8, !tbaa !62
  %i.adk = load ptr, ptr %i.ev, align 8, !tbaa !84
  %i.adl = tail call i32 %i.adh(ptr noundef %i.adi, ptr noundef %i.adj, ptr noundef %i.adk) #12, !inline_history !125
  %i.adm = load i64, ptr %i.ep, align 8, !tbaa !86
  %i.adn = add nsw i64 %i.adm, 1
  store i64 %i.adn, ptr %i.ep, align 8, !tbaa !86
  %.not355.i = icmp eq i32 %i.adl, 0
  br i1 %.not355.i, label %bb.fx, label %KINLinSolDrv.exit.thread

bb.fx:                                            ; preds = %.preheader.i
  %i.ado = load ptr, ptr %i.et, align 8, !tbaa !62
  %i.adp = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.adq = tail call double @N_VWL2Norm(ptr noundef %i.ado, ptr noundef %i.adp) #12 ; 3 uses
  %i.adr = fmul double %i.adq, 5.000000e-01
  %i.ads = fmul double %i.adq, %i.adr             ; 4 uses
  %i.adt = load double, ptr %i.fx, align 8, !tbaa !99 ; 2 uses
  %5 = tail call double @llvm.fmuladd.f64(double %i.yz, double %i.adc, double %i.adt) ; 2 uses
  %6 = tail call double @llvm.fmuladd.f64(double %i.acw, double %i.adc, double %i.adt) ; 2 uses
  %i.adu = load i32, ptr %i.di, align 4, !tbaa !83
  %i.adv = icmp sgt i32 %i.adu, 2
  br i1 %i.adv, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINPrintInfo(ptr noundef nonnull %0, i32 noundef 10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.61, double noundef %i.ads, double noundef %6, double noundef %i.adc)
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.adw = fcmp ugt double %i.ads, %5
  %i.adx = fcmp uge double %i.ads, %6
  %or.cond.i.not589 = select i1 %i.adw, i1 true, i1 %i.adx ; 2 uses
  %brmerge = or i1 %or.cond.i.not589, %i.adb
  br i1 %brmerge, label %.critedge.i.loopexit, label %.preheader.i

.critedge.i.loopexit:                             ; preds = %bb.fz
  %.mux = select i1 %or.cond.i.not589, double %i.adc, double %.2327406.lcssa.i
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.fw
  %.7218 = phi double [ %.10221, %bb.fw ], [ %i.adq, %.critedge.i.loopexit ]
  %.7 = phi double [ %.10, %bb.fw ], [ %i.ads, %.critedge.i.loopexit ] ; 2 uses
  %i.ady = phi double [ %i.aco, %bb.fw ], [ %i.acw, %.critedge.i.loopexit ]
  %.1336.i = phi double [ %.0335.i, %bb.fw ], [ %.1322.i, %.critedge.i.loopexit ] ; 3 uses
  %.2323.i = phi double [ %.0321.i, %bb.fw ], [ %.mux, %.critedge.i.loopexit ] ; 6 uses
  %.0320.i = phi double [ %i.zz, %bb.fw ], [ %5, %.critedge.i.loopexit ]
  %.2.i = phi i32 [ %.0310.i, %bb.fw ], [ %i.add, %.critedge.i.loopexit ] ; 2 uses
  %i.adz = fcmp olt double %.2323.i, 1.000000e+00
  br i1 %i.adz, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %.critedge.i
  %i.aea = fcmp ogt double %.2323.i, 1.000000e+00
  %i.aeb = fcmp ogt double %.7, %.0320.i
  %or.cond527.i = select i1 %i.aea, i1 %i.aeb, i1 false
  br i1 %or.cond527.i, label %bb.gb, label %.thread495.i

bb.gb:                                            ; preds = %bb.ga, %.critedge.i
  %i.aec = fcmp olt double %.2323.i, %.1336.i
  %i.aed = select i1 %i.aec, double %.2323.i, double %.1336.i
  %i.aee = fsub double %.1336.i, %.2323.i
  %i.aef = tail call double @SUNRabs(double noundef %i.aee) #12
  %i.aeg = insertelement <2 x double> poison, double %i.yz, i64 0
  %i.aeh = insertelement <2 x double> %i.aeg, double %i.ady, i64 1
  br label %.critedge2.outer.i

.critedge2.outer.i:                               ; preds = %bb.gf, %bb.gb
  %.0330.ph.i = phi double [ %.1331.ph.i, %bb.gf ], [ %i.aed, %bb.gb ] ; 2 uses
  %.0328.ph.i = phi double [ %.1329.ph.i, %bb.gf ], [ %i.aef, %bb.gb ]
  %.3.ph.i = phi i32 [ %i.aek, %bb.gf ], [ %.2.i, %bb.gb ]
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.ge, %.critedge2.outer.i
  %.0328.i = phi double [ %i.aei, %bb.ge ], [ %.0328.ph.i, %.critedge2.outer.i ] ; 3 uses
  %.3.i178 = phi i32 [ %i.aek, %bb.ge ], [ %.3.ph.i, %.critedge2.outer.i ]
  %i.aei = fmul double %.0328.i, 5.000000e-01     ; 3 uses
  %i.aej = fadd double %.0330.ph.i, %i.aei        ; 7 uses
  %i.aek = add nsw i32 %.3.i178, 1                ; 4 uses
  %i.ael = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.aem = load ptr, ptr %i.hb, align 8, !tbaa !63
  %i.aen = load ptr, ptr %i.ha, align 8, !tbaa !61
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ael, double noundef %i.aej, ptr noundef %i.aem, ptr noundef %i.aen) #12
  %i.aeo = load ptr, ptr %i.eq, align 8, !tbaa !76
  %i.aep = load ptr, ptr %i.ha, align 8, !tbaa !61
  %i.aeq = load ptr, ptr %i.et, align 8, !tbaa !62
  %i.aer = load ptr, ptr %i.ev, align 8, !tbaa !84
  %i.aes = tail call i32 %i.aeo(ptr noundef %i.aep, ptr noundef %i.aeq, ptr noundef %i.aer) #12, !inline_history !125
  %i.aet = load i64, ptr %i.ep, align 8, !tbaa !86
  %i.aeu = add nsw i64 %i.aet, 1
  store i64 %i.aeu, ptr %i.ep, align 8, !tbaa !86
  %.not356.i = icmp eq i32 %i.aes, 0
  br i1 %.not356.i, label %bb.gc, label %KINLinSolDrv.exit.thread

bb.gc:                                            ; preds = %.critedge2.i
  %i.aev = load ptr, ptr %i.et, align 8, !tbaa !62
  %i.aew = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.aex = tail call double @N_VWL2Norm(ptr noundef %i.aev, ptr noundef %i.aew) #12 ; 3 uses
  %i.aey = fmul double %i.aex, 5.000000e-01
  %i.aez = fmul double %i.aex, %i.aey             ; 4 uses
  %i.afa = load double, ptr %i.fx, align 8, !tbaa !99
  %i.afb = insertelement <2 x double> poison, double %i.aej, i64 0
  %i.afc = shufflevector <2 x double> %i.afb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afd = insertelement <2 x double> poison, double %i.afa, i64 0
  %i.afe = shufflevector <2 x double> %i.afd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aff = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeh, <2 x double> %i.afc, <2 x double> %i.afe) ; 4 uses
  %i.afg = load i32, ptr %i.di, align 4, !tbaa !83
  %i.afh = icmp sgt i32 %i.afg, 2
  br i1 %i.afh, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.afi = extractelement <2 x double> %i.aff, i64 0
  %i.afj = extractelement <2 x double> %i.aff, i64 1
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINPrintInfo(ptr noundef nonnull %0, i32 noundef 11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.62, double noundef %i.aez, double noundef %i.afi, double noundef %i.afj, double noundef %i.aej)
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.afk = extractelement <2 x double> %i.aff, i64 0
  %i.afl = fcmp ogt double %i.aez, %i.afk
  br i1 %i.afl, label %.critedge2.i, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.afm = extractelement <2 x double> %i.aff, i64 1
  %i.afn = fcmp olt double %i.aez, %i.afm         ; 4 uses
  %i.afo = fsub double %.0328.i, %i.aei
  %.1331.ph.i = select i1 %i.afn, double %i.aej, double %.0330.ph.i
  %.1329.ph.i = select i1 %i.afn, double %i.afo, double %.0328.i ; 2 uses
  %i.afp = fcmp oge double %.1329.ph.i, %i.yj
  %i.afq = select i1 %i.afn, i1 %i.afp, i1 false
  br i1 %i.afq, label %.critedge2.outer.i, label %bb.gg, !llvm.loop !128

bb.gg:                                            ; preds = %bb.gf
  br i1 %i.afn, label %bb.gh, label %.thread495.i

bb.gh:                                            ; preds = %bb.gg
  %i.afr = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.afs = load ptr, ptr %i.hb, align 8, !tbaa !63
  %i.aft = load ptr, ptr %i.ha, align 8, !tbaa !61
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.afr, double noundef %i.aej, ptr noundef %i.afs, ptr noundef %i.aft) #12
  %i.afu = load ptr, ptr %i.eq, align 8, !tbaa !76
  %i.afv = load ptr, ptr %i.ha, align 8, !tbaa !61
  %i.afw = load ptr, ptr %i.et, align 8, !tbaa !62
  %i.afx = load ptr, ptr %i.ev, align 8, !tbaa !84
  %i.afy = tail call i32 %i.afu(ptr noundef %i.afv, ptr noundef %i.afw, ptr noundef %i.afx) #12, !inline_history !125
  %i.afz = load i64, ptr %i.ep, align 8, !tbaa !86
  %i.aga = add nsw i64 %i.afz, 1
  store i64 %i.aga, ptr %i.ep, align 8, !tbaa !86
  %.not357.i = icmp eq i32 %i.afy, 0
  br i1 %.not357.i, label %bb.gi, label %KINLinSolDrv.exit.thread

bb.gi:                                            ; preds = %bb.gh
  %i.agb = load ptr, ptr %i.et, align 8, !tbaa !62
  %i.agc = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.agd = tail call double @N_VWL2Norm(ptr noundef %i.agb, ptr noundef %i.agc) #12 ; 3 uses
  %i.age = fmul double %i.agd, 5.000000e-01
  %i.agf = fmul double %i.agd, %i.age
  %i.agg = load i64, ptr %i.hl, align 8, !tbaa !130
  %i.agh = add nsw i64 %i.agg, 1
  store i64 %i.agh, ptr %i.hl, align 8, !tbaa !130
  br label %.thread495.i

.thread495.i:                                     ; preds = %bb.gi, %bb.gg, %bb.ga, %.thread.i177, %.loopexit.thread.i, %.loopexit.i180
  %.4215 = phi double [ %i.agd, %bb.gi ], [ %i.aex, %bb.gg ], [ %.7218, %bb.ga ], [ %.5216, %.thread.i177 ], [ %.10221, %.loopexit.i180 ], [ %i.xs, %.loopexit.thread.i ] ; 2 uses
  %.4210 = phi double [ %i.agf, %bb.gi ], [ %i.aez, %bb.gg ], [ %.7, %bb.ga ], [ %.5, %.thread.i177 ], [ %.10, %.loopexit.i180 ], [ %i.xu, %.loopexit.thread.i ] ; 2 uses
  %.3324.i = phi double [ %i.aej, %bb.gi ], [ %i.aej, %bb.gg ], [ %.2323.i, %bb.ga ], [ 1.000000e+00, %.thread.i177 ], [ %.0321.i, %.loopexit.i180 ], [ 1.000000e+00, %.loopexit.thread.i ] ; 2 uses
  %.4.i = phi i32 [ %i.aek, %bb.gi ], [ %i.aek, %bb.gg ], [ %.2.i, %bb.ga ], [ %.0310.lcssa473481.i, %.thread.i177 ], [ %.0310.i, %.loopexit.i180 ], [ 0, %.loopexit.thread.i ] ; 2 uses
  %i.agi = sext i32 %.4.i to i64
  %i.agj = load i64, ptr %i.hm, align 8, !tbaa !131
  %i.agk = add nsw i64 %i.agj, %i.agi
  store i64 %i.agk, ptr %i.hm, align 8, !tbaa !131
  %i.agl = load i32, ptr %i.di, align 4, !tbaa !83
  %i.agm = icmp sgt i32 %i.agl, 1
  br i1 %i.agm, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %.thread495.i
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINPrintInfo(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.63, i32 noundef %.4.i)
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %.thread495.i
  %i.agn = load <2 x double>, ptr %i.he, align 8, !tbaa !35
  %i.ago = insertelement <2 x double> poison, double %.3324.i, i64 0
  %i.agp = shufflevector <2 x double> %i.ago, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agq = fmul <2 x double> %i.agp, %i.agn
  %i.agr = shufflevector <2 x double> %i.xp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ags = fmul <2 x double> %i.agr, %i.agq
  store <2 x double> %i.ags, ptr %i.he, align 8, !tbaa !35
  %i.agt = extractelement <2 x double> %i.xp, i64 1
  %i.agu = fmul double %i.agt, %.3324.i
  %i.agv = load double, ptr %i.dw, align 8, !tbaa !92
  %i.agw = fmul double %i.agv, f0x3FEFAE147AE147AE
  %i.agx = fcmp ogt double %i.agu, %i.agw
  br i1 %i.agx, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk, %.loopexit441.i, %bb.ez
  %.12223 = phi double [ %.11222, %.loopexit441.i ], [ %.1212, %bb.ez ], [ %.4215, %bb.gl ], [ %.4215, %bb.gk ]
  %.12 = phi double [ %.11, %.loopexit441.i ], [ %.1207, %bb.ez ], [ %.4210, %bb.gl ], [ %.4210, %bb.gk ]
  %.4205 = phi i32 [ 0, %.loopexit441.i ], [ 0, %bb.ez ], [ 1, %bb.gl ], [ 0, %bb.gk ]
  %.0313.i = phi i32 [ -997, %.loopexit441.i ], [ -997, %bb.ez ], [ 0, %bb.gl ], [ 0, %bb.gk ]
  %i.agy = load i64, ptr %i.hl, align 8, !tbaa !130
  %i.agz = load i64, ptr %i.hn, align 8, !tbaa !28
  %i.aha = icmp sgt i64 %i.agy, %i.agz
  br i1 %i.aha, label %KINLinSolDrv.exit.thread, label %KINFullNewton.exit

KINFullNewton.exit:                               ; preds = %bb.eh, %bb.eg, %bb.dt, %bb.cz, %bb.gm
  %.2213 = phi double [ %.1212, %bb.cz ], [ %.12223, %bb.gm ], [ %i.sb, %bb.eh ], [ %i.sb, %bb.eg ], [ %.1212, %bb.dt ] ; 4 uses
  %.2208 = phi double [ %.1207, %bb.cz ], [ %.12, %bb.gm ], [ %i.sd, %bb.eh ], [ %i.sd, %bb.eg ], [ %.1207, %bb.dt ] ; 3 uses
  %.2203 = phi i32 [ %.1202, %bb.cz ], [ %.4205, %bb.gm ], [ 1, %bb.eh ], [ 0, %bb.eg ], [ 0, %bb.dt ] ; 3 uses
  %.2 = phi i32 [ %.1, %bb.cz ], [ 0, %bb.gm ], [ 0, %bb.eh ], [ 0, %bb.eg ], [ 0, %bb.dt ]
  %.0 = phi i32 [ 0, %bb.cz ], [ %.0313.i, %bb.gm ], [ 0, %bb.eh ], [ 0, %bb.eg ], [ -997, %bb.dt ]
  %i.ahb = load i32, ptr %i.h, align 8, !tbaa !81
  %i.ahc = and i32 %i.ahb, -2
  %switch = icmp eq i32 %i.ahc, 2
  br i1 %switch, label %KINStop.exit.thread, label %bb.gn

bb.gn:                                            ; preds = %KINFullNewton.exit
  %i.ahd = load i32, ptr %i.ho, align 4, !tbaa !94
  %.not148 = icmp eq i32 %i.ahd, 0
  br i1 %.not148, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  tail call fastcc void @KINForcingTerm(ptr noundef %0, double noundef %.2213)
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  store double %.2213, ptr %i.fu, align 8, !tbaa !87
  %i.ahe = icmp eq i32 %.0, -997
  br i1 %i.ahe, label %bb.gq, label %bb.gt

bb.gq:                                            ; preds = %bb.gp
  %i.ahf = load i32, ptr %i.gx, align 8, !tbaa !37
  %.not87.i191 = icmp eq i32 %i.ahf, 0
  br i1 %.not87.i191, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ahg = load i32, ptr %i.gy, align 8, !tbaa !110
  %.not88.i192 = icmp eq i32 %i.ahg, 0
  br i1 %.not88.i192, label %bb.hw, label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.ahh = load i32, ptr %i.h, align 8, !tbaa !81
  %i.ahi = icmp eq i32 %i.ahh, 0
  %..i = select i1 %i.ahi, i32 2, i32 -5
  br label %KINStop.exit.thread

bb.gt:                                            ; preds = %bb.gp
end_hunk_0
