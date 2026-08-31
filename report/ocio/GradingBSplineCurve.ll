Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingBSplineCurve?download=true
inline.NumInlined: 1494
inline.NumDeleted: 467
begin_hunk_0_@_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl31computeKnotsAndCoefsForHueCurveERNS0_10KnotsCoefsEib:bb.a

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i164.i: ; preds = %bb.bj, %.noexc168.i
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  %.not.i17.i.i165.i = icmp eq ptr %i.rb, null
  br i1 %.not.i17.i.i165.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i166.i, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i164.i
  %i.rr = load ptr, ptr %i.of, align 8, !tbaa !41
  %i.rs = ptrtoint ptr %i.rr to i64
  %i.rt = sub i64 %i.rs, %i.rd
  call void @_ZdlPvm(ptr noundef nonnull %i.rb, i64 noundef %i.rt) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i166.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i166.i: ; preds = %bb.bk, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i164.i
  store ptr %i.rm, ptr %6, align 8, !tbaa !38
  store ptr %i.rq, ptr %i.nt, align 8, !tbaa !44
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %i.rk
  store ptr %i.ru, ptr %i.of, align 8, !tbaa !41
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit169.i

bb.bl:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i161.i, %.invoke.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bm:                                            ; preds = %._crit_edge.i130
  br i1 %.not.i.i131, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store float 0.000000e+00, ptr %i.od, align 4, !tbaa !42
  %i.rw = getelementptr inbounds nuw i8, ptr %i.od, i64 4 ; 2 uses
  store ptr %i.rw, ptr %i.nt, align 8, !tbaa !44
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i

bb.bo:                                            ; preds = %bb.bm
  %i.rx = load ptr, ptr %6, align 8, !tbaa !38    ; 4 uses
  %i.ry = ptrtoint ptr %i.od to i64
  %i.rz = ptrtoint ptr %i.rx to i64               ; 2 uses
  %i.sa = sub i64 %i.ry, %i.rz                    ; 5 uses
  %i.sb = icmp eq i64 %i.sa, 9223372036854775804
  br i1 %i.sb, label %bb.bp, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i171.i

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #24
          to label %.noexc177.i unwind label %bb.bw

.noexc177.i:                                      ; preds = %bb.bp
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i171.i: ; preds = %bb.bo
  %i.sc = ashr exact i64 %i.sa, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i172.i = call i64 @llvm.umax.i64(i64 %i.sc, i64 1)
  %i.sd = add nsw i64 %.sroa.speculated.i.i.i.i172.i, %i.sc ; 2 uses
  %i.se = icmp ult i64 %i.sd, %i.sc
  %i.sf = call i64 @llvm.umin.i64(i64 %i.sd, i64 2305843009213693951)
  %i.sg = select i1 %i.se, i64 2305843009213693951, i64 %i.sf ; 3 uses
  %.not.i.i.i.i173.i = icmp ne i64 %i.sg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i173.i)
  %i.sh = shl nuw nsw i64 %i.sg, 2
  %i.si = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sh) #21
          to label %.noexc178.i unwind label %bb.bw ; 4 uses

.noexc178.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i171.i
  %i.sj = getelementptr inbounds i8, ptr %i.si, i64 %i.sa ; 2 uses
  store float 0.000000e+00, ptr %i.sj, align 4, !tbaa !42
  %i.sk = icmp sgt i64 %i.sa, 0
  br i1 %i.sk, label %bb.bq, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i174.i

bb.bq:                                            ; preds = %.noexc178.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.si, ptr align 4 %i.rx, i64 %i.sa, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i174.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i174.i: ; preds = %bb.bq, %.noexc178.i
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 4 ; 2 uses
  %.not.i17.i.i.i175.i = icmp eq ptr %i.rx, null
  br i1 %.not.i17.i.i.i175.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i176.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i174.i
  %i.sm = load ptr, ptr %i.of, align 8, !tbaa !41
  %i.sn = ptrtoint ptr %i.sm to i64
  %i.so = sub i64 %i.sn, %i.rz
  call void @_ZdlPvm(ptr noundef nonnull %i.rx, i64 noundef %i.so) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i176.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i176.i: ; preds = %bb.br, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i174.i
  store ptr %i.si, ptr %6, align 8, !tbaa !38
  store ptr %i.sl, ptr %i.nt, align 8, !tbaa !44
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.sg ; 2 uses
  store ptr %i.sp, ptr %i.of, align 8, !tbaa !41
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i

_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i176.i, %bb.bn
  %i.sq = phi ptr [ %i.sp, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i176.i ], [ %i.og, %bb.bn ] ; 4 uses
  %i.sr = phi ptr [ %i.sl, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i176.i ], [ %i.rw, %bb.bn ] ; 4 uses
  br i1 %narrow, label %.preheader.i135, label %.preheader303.i

.preheader303.i:                                  ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i
  %i.ss = add nsw i64 %i.ob, -3
  %i.st = add nsw i64 %i.ob, -2                   ; 4 uses
  br label %bb.cd

.preheader.i135:                                  ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i
  %i.su = icmp samesign ugt i64 %i.ob, 2
  br i1 %i.su, label %.lr.ph385.i, label %._crit_edge386.i

._crit_edge386.i:                                 ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i, %.preheader.i135
  %i.sv = phi ptr [ %i.sq, %.preheader.i135 ], [ %i.vn, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ] ; 2 uses
  %i.sw = phi ptr [ %i.sr, %.preheader.i135 ], [ %i.vo, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ] ; 3 uses
  %i.sx = add nsw i64 %i.ob, -2                   ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0260.0.lcssa.i, i64 %i.sx
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !42
  %i.ta = load ptr, ptr %6, align 8, !tbaa !38    ; 5 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.sx
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !42
  %i.td = fneg float %i.tc
  %i.te = call float @llvm.fmuladd.f32(float %i.sz, float 3.000000e+00, float %i.td)
  %i.tf = fmul float %i.te, 5.000000e-01          ; 2 uses
  %.not.i.i180.i = icmp eq ptr %i.sw, %i.sv
  br i1 %.not.i.i180.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge386.i
  store float %i.tf, ptr %i.sw, align 4, !tbaa !42
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  store ptr %i.tg, ptr %i.nt, align 8, !tbaa !44
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i

bb.bt:                                            ; preds = %._crit_edge386.i
  %i.th = ptrtoint ptr %i.sv to i64
  %i.ti = ptrtoint ptr %i.ta to i64               ; 2 uses
  %i.tj = sub i64 %i.th, %i.ti                    ; 5 uses
  %i.tk = icmp eq i64 %i.tj, 9223372036854775804
  br i1 %i.tk, label %bb.bu, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i181.i

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #24
          to label %.noexc187.i unwind label %bb.cc

.noexc187.i:                                      ; preds = %bb.bu
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i181.i: ; preds = %bb.bt
  %i.tl = ashr exact i64 %i.tj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i182.i = call i64 @llvm.umax.i64(i64 %i.tl, i64 1)
  %i.tm = add nsw i64 %.sroa.speculated.i.i.i.i182.i, %i.tl ; 2 uses
  %i.tn = icmp ult i64 %i.tm, %i.tl
  %i.to = call i64 @llvm.umin.i64(i64 %i.tm, i64 2305843009213693951)
  %i.tp = select i1 %i.tn, i64 2305843009213693951, i64 %i.to ; 3 uses
  %.not.i.i.i.i183.i = icmp ne i64 %i.tp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i183.i)
  %i.tq = shl nuw nsw i64 %i.tp, 2
  %i.tr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tq) #21
          to label %.noexc188.i unwind label %bb.cc ; 5 uses

.noexc188.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i181.i
  %i.ts = getelementptr inbounds i8, ptr %i.tr, i64 %i.tj ; 2 uses
  store float %i.tf, ptr %i.ts, align 4, !tbaa !42
  %i.tt = icmp sgt i64 %i.tj, 0
  br i1 %i.tt, label %bb.bv, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i

bb.bv:                                            ; preds = %.noexc188.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.tr, ptr nonnull align 4 %i.ta, i64 %i.tj, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i: ; preds = %bb.bv, %.noexc188.i
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  %i.tv = load ptr, ptr %i.of, align 8, !tbaa !41
  %i.tw = ptrtoint ptr %i.tv to i64
  %i.tx = sub i64 %i.tw, %i.ti
  call void @_ZdlPvm(ptr noundef nonnull %i.ta, i64 noundef %i.tx) #22
  store ptr %i.tr, ptr %6, align 8, !tbaa !38
  store ptr %i.tu, ptr %i.nt, align 8, !tbaa !44
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.tp
  store ptr %i.ty, ptr %i.of, align 8, !tbaa !41
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i

bb.bw:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i171.i, %bb.bp
  %i.tz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.lr.ph385.i:                                      ; preds = %.preheader.i135, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i
  %i.ua = phi ptr [ %i.vn, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ], [ %i.sq, %.preheader.i135 ] ; 3 uses
  %i.ub = phi ptr [ %i.vo, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ], [ %i.sr, %.preheader.i135 ] ; 3 uses
  %i.uc = phi i64 [ %i.vq, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ], [ 1, %.preheader.i135 ]
  %.0125384.i = phi i32 [ %i.vp, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ], [ 1, %.preheader.i135 ] ; 2 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0260.0.lcssa.i, i64 %i.uc
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !42 ; 3 uses
  %i.uf = add i32 %.0125384.i, -1
  %i.ug = zext i32 %i.uf to i64
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0260.0.lcssa.i, i64 %i.ug
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !42 ; 3 uses
  %i.uj = fadd float %i.ue, %i.ui                 ; 3 uses
  %i.uk = call float @llvm.fabs.f32(float %i.uj)
  %i.ul = fcmp olt float %i.uk, 1.000000e-03
  %i.um = fcmp olt float %i.uj, 0.000000e+00
  %i.un = select i1 %i.um, float -1.000000e-03, float 1.000000e-03
  %.sink487.i = select i1 %i.ul, float %i.un, float %i.uj
  %i.uo = fmul float %i.ue, 2.000000e+00
  %i.up = fmul float %i.uo, %i.ui
  %i.uq = fdiv float %i.up, %.sink487.i
  %7 = bitcast float %i.uq to i32
  %i.ur = fmul float %i.ue, %i.ui
  %i.us = fcmp ugt float %i.ur, 0.000000e+00
  %spec.select.i = select i1 %i.us, i32 %7, i32 0 ; 2 uses
  %.not.i190.i = icmp eq ptr %i.ub, %i.ua
  br i1 %.not.i190.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph385.i
  store i32 %spec.select.i, ptr %i.ub, align 4, !tbaa !42
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ub, i64 4 ; 2 uses
  store ptr %i.ut, ptr %i.nt, align 8, !tbaa !44
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i

bb.by:                                            ; preds = %.lr.ph385.i
  %i.uu = load ptr, ptr %6, align 8, !tbaa !38    ; 4 uses
  %i.uv = ptrtoint ptr %i.ua to i64
  %i.uw = ptrtoint ptr %i.uu to i64               ; 2 uses
  %i.ux = sub i64 %i.uv, %i.uw                    ; 5 uses
  %i.uy = icmp eq i64 %i.ux, 9223372036854775804
  br i1 %i.uy, label %bb.bz, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i191.i

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #24
          to label %.noexc197.i unwind label %.loopexit.split-lp.i

.noexc197.i:                                      ; preds = %bb.bz
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i191.i: ; preds = %bb.by
  %i.uz = ashr exact i64 %i.ux, 2                 ; 3 uses
  %.sroa.speculated.i.i.i192.i = call i64 @llvm.umax.i64(i64 %i.uz, i64 1)
  %i.va = add nsw i64 %.sroa.speculated.i.i.i192.i, %i.uz ; 2 uses
  %i.vb = icmp ult i64 %i.va, %i.uz
  %i.vc = call i64 @llvm.umin.i64(i64 %i.va, i64 2305843009213693951)
  %i.vd = select i1 %i.vb, i64 2305843009213693951, i64 %i.vc ; 3 uses
  %.not.i.i.i193.i = icmp ne i64 %i.vd, 0
  call void @llvm.assume(i1 %.not.i.i.i193.i)
  %i.ve = shl nuw nsw i64 %i.vd, 2
  %i.vf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ve) #21
          to label %.noexc198.i unwind label %.loopexit.i136 ; 4 uses

.noexc198.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i191.i
  %i.vg = getelementptr inbounds i8, ptr %i.vf, i64 %i.ux ; 2 uses
  store i32 %spec.select.i, ptr %i.vg, align 4, !tbaa !42
  %i.vh = icmp sgt i64 %i.ux, 0
  br i1 %i.vh, label %bb.ca, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i

bb.ca:                                            ; preds = %.noexc198.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.vf, ptr align 4 %i.uu, i64 %i.ux, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i: ; preds = %bb.ca, %.noexc198.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 4 ; 2 uses
  %.not.i17.i.i195.i = icmp eq ptr %i.uu, null
  br i1 %.not.i17.i.i195.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i
  %i.vj = load ptr, ptr %i.of, align 8, !tbaa !41
  %i.vk = ptrtoint ptr %i.vj to i64
  %i.vl = sub i64 %i.vk, %i.uw
  call void @_ZdlPvm(ptr noundef nonnull %i.uu, i64 noundef %i.vl) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i: ; preds = %bb.cb, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i
  store ptr %i.vf, ptr %6, align 8, !tbaa !38
  store ptr %i.vi, ptr %i.nt, align 8, !tbaa !44
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %i.vd ; 2 uses
  store ptr %i.vm, ptr %i.of, align 8, !tbaa !41
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i:     ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i, %bb.bx
  %i.vn = phi ptr [ %i.vm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i ], [ %i.ua, %bb.bx ] ; 2 uses
  %i.vo = phi ptr [ %i.vi, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i ], [ %i.ut, %bb.bx ] ; 2 uses
  %i.vp = add i32 %.0125384.i, 1                  ; 2 uses
  %i.vq = zext i32 %i.vp to i64                   ; 2 uses
  %i.vr = icmp ugt i64 %i.oc, %i.vq
  br i1 %i.vr, label %.lr.ph385.i, label %._crit_edge386.i, !llvm.loop !150

.loopexit.i136:                                   ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i191.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.loopexit.split-lp.i:                             ; preds = %bb.bz
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i, %bb.bs
  %i.vs = phi ptr [ %i.tr, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i ], [ %i.ta, %bb.bs ] ; 3 uses
  %i.vt = load float, ptr %.sroa.0260.0.lcssa.i, align 4, !tbaa !42
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 4
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !42
  %i.vw = fneg float %i.vv
  %i.vx = call float @llvm.fmuladd.f32(float %i.vt, float 3.000000e+00, float %i.vw)
  %i.vy = fmul float %i.vx, 5.000000e-01
  store float %i.vy, ptr %i.vs, align 4, !tbaa !42
  br label %bb.cn

bb.cc:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i181.i, %bb.bu
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cd:                                            ; preds = %._crit_edge380.i, %.preheader303.i
  %.0124.i = phi i32 [ %i.xn, %._crit_edge380.i ], [ 0, %.preheader303.i ] ; 13 uses
  %i.wa = zext i32 %.0124.i to i64                ; 5 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.wa
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !42 ; 3 uses
  %i.wd = icmp ugt i64 %i.st, %i.wa
  br i1 %i.wd, label %.lr.ph367.preheader.i, label %.critedge.i

.lr.ph367.preheader.i:                            ; preds = %bb.cd
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0260.0.lcssa.i, i64 %i.wa
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !42
  %i.we = add i32 %.0124.i, 1                     ; 2 uses
  %i.wf = zext i32 %i.we to i64                   ; 2 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0260.0.lcssa.i, i64 %i.wf
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !42 ; 2 uses
  %i.wi = fsub float %i.wh, %.pre.i
  %i.wj = call float @llvm.fabs.f32(float %i.wi)
  %i.wk = fcmp olt float %i.wj, f0x358637BD
  br i1 %i.wk, label %.lr.ph, label %.critedge.i

.lr.ph367.i:                                      ; preds = %.lr.ph
  %i.wl = add i32 %i.wu, 1                        ; 2 uses
  %i.wm = zext i32 %i.wl to i64                   ; 2 uses
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0260.0.lcssa.i, i64 %i.wm
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !42 ; 2 uses
  %i.wp = fsub float %i.wo, %i.ws
  %i.wq = call float @llvm.fabs.f32(float %i.wp)
  %i.wr = fcmp olt float %i.wq, f0x358637BD
  br i1 %i.wr, label %.lr.ph, label %.critedge.i, !llvm.loop !151

.lr.ph:                                           ; preds = %.lr.ph367.preheader.i, %.lr.ph367.i
  %i.ws = phi float [ %i.wo, %.lr.ph367.i ], [ %i.wh, %.lr.ph367.preheader.i ]
  %i.wt = phi i64 [ %i.wm, %.lr.ph367.i ], [ %i.wf, %.lr.ph367.preheader.i ] ; 4 uses
  %i.wu = phi i32 [ %i.wl, %.lr.ph367.i ], [ %i.we, %.lr.ph367.preheader.i ] ; 3 uses
  %.0122365.i509 = phi float [ %i.wx, %.lr.ph367.i ], [ %i.wc, %.lr.ph367.preheader.i ]
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.wt
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !42
  %i.wx = fadd float %.0122365.i509, %i.ww        ; 3 uses
  %i.wy = icmp ugt i64 %i.st, %i.wt
  br i1 %i.wy, label %.lr.ph367.i, label %..critedge.i.loopexit_crit_edge, !llvm.loop !151

..critedge.i.loopexit_crit_edge:                  ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !151

.critedge.i:                                      ; preds = %.lr.ph367.i, %.lr.ph367.preheader.i, %..critedge.i.loopexit_crit_edge, %bb.cd
  %.0123.lcssa.i = phi i32 [ %.0124.i, %bb.cd ], [ %.0124.i, %.lr.ph367.preheader.i ], [ %i.wu, %..critedge.i.loopexit_crit_edge ], [ %i.wu, %.lr.ph367.i ] ; 5 uses
  %.0122.lcssa.i = phi float [ %i.wc, %bb.cd ], [ %i.wc, %.lr.ph367.preheader.i ], [ %i.wx, %..critedge.i.loopexit_crit_edge ], [ %i.wx, %.lr.ph367.i ] ; 2 uses
  %.lcssa314.i = phi i64 [ %i.wa, %bb.cd ], [ %i.wa, %.lr.ph367.preheader.i ], [ %i.wt, %..critedge.i.loopexit_crit_edge ], [ %i.wt, %.lr.ph367.i ]
  %.not377.i = icmp ugt i32 %.0124.i, %.0123.lcssa.i
  br i1 %.not377.i, label %._crit_edge380.i, label %.lr.ph379.i.preheader

.lr.ph379.i.preheader:                            ; preds = %.critedge.i
  %i.wz = add i32 %.0123.lcssa.i, 1
  %i.xa = add i32 %.0124.i, 1
  %i.xb = call i32 @llvm.umax.i32(i32 %i.wz, i32 %i.xa)
  %i.xc = sub i32 %i.xb, %.0124.i                 ; 3 uses
  %min.iters.check1264 = icmp ult i32 %i.xc, 20
  br i1 %min.iters.check1264, label %.lr.ph379.i.preheader1446, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph379.i.preheader
  %i.xd = add i32 %.0123.lcssa.i, 1
  %i.xe = add i32 %.0124.i, 1
  %umax = call i32 @llvm.umax.i32(i32 %i.xd, i32 %i.xe)
  %i.xf = add i32 %umax, -1
  %i.xg = icmp ult i32 %i.xf, %.0124.i
  br i1 %i.xg, label %.lr.ph379.i.preheader1446, label %vector.ph1265

vector.ph1265:                                    ; preds = %vector.scevcheck
  %n.vec1266 = and i32 %i.xc, -8                  ; 3 uses
  %i.xh = add i32 %.0124.i, %n.vec1266
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.0122.lcssa.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.body1267, %vector.ph1265
  %index1268 = phi i32 [ 0, %vector.ph1265 ], [ %index.next1269, %vector.body1267 ] ; 2 uses
  %i.xi = add i32 %.0124.i, %index1268
  %i.xj = zext i32 %i.xi to i64
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.xj ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  store <4 x float> %broadcast.splat, ptr %i.xk, align 4, !tbaa !42
  store <4 x float> %broadcast.splat, ptr %i.xl, align 4, !tbaa !42
  %index.next1269 = add nuw i32 %index1268, 8     ; 2 uses
  %i.xm = icmp eq i32 %index.next1269, %n.vec1266
  br i1 %i.xm, label %middle.block1270, label %vector.body1267, !llvm.loop !152

middle.block1270:                                 ; preds = %vector.body1267
  %cmp.n1271 = icmp eq i32 %i.xc, %n.vec1266
  br i1 %cmp.n1271, label %._crit_edge380.i, label %.lr.ph379.i.preheader1446

.lr.ph379.i.preheader1446:                        ; preds = %vector.scevcheck, %.lr.ph379.i.preheader, %middle.block1270
  %.0121378.i.ph = phi i32 [ %.0124.i, %vector.scevcheck ], [ %.0124.i, %.lr.ph379.i.preheader ], [ %i.xh, %middle.block1270 ]
  br label %.lr.ph379.i

._crit_edge380.i:                                 ; preds = %.lr.ph379.i, %middle.block1270, %.critedge.i
  %.not141.i = icmp ugt i64 %i.ss, %.lcssa314.i
  %i.xn = add nuw i32 %.0123.lcssa.i, 1
  br i1 %.not141.i, label %bb.cd, label %.preheader299.i

.preheader299.i:                                  ; preds = %._crit_edge380.i
  %i.xo = icmp ugt i64 %i.oc, 1
  br i1 %i.xo, label %.lr.ph382.i, label %._crit_edge383.i

.lr.ph379.i:                                      ; preds = %.lr.ph379.i.preheader1446, %.lr.ph379.i
  %.0121378.i = phi i32 [ %i.xr, %.lr.ph379.i ], [ %.0121378.i.ph, %.lr.ph379.i.preheader1446 ] ; 2 uses
  %i.xp = zext i32 %.0121378.i to i64
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.xp
  store float %.0122.lcssa.i, ptr %i.xq, align 4, !tbaa !42
  %i.xr = add i32 %.0121378.i, 1                  ; 2 uses
  %.not.i132 = icmp ugt i32 %i.xr, %.0123.lcssa.i
  br i1 %.not.i132, label %._crit_edge380.i, label %.lr.ph379.i, !llvm.loop !153

._crit_edge383.i:                                 ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i, %.preheader299.i
  %i.xs = phi ptr [ %i.sq, %.preheader299.i ], [ %i.aah, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ] ; 2 uses
  %i.xt = phi ptr [ %i.sr, %.preheader299.i ], [ %i.aai, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ] ; 3 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0260.0.lcssa.i, i64 %i.st
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !42
  %i.xw = load ptr, ptr %6, align 8, !tbaa !38    ; 5 uses
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %i.st
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !42
  %i.xz = fneg float %i.xy
  %i.ya = call float @llvm.fmuladd.f32(float %i.xv, float 3.000000e+00, float %i.xz)
  %i.yb = fmul float %i.ya, 5.000000e-01          ; 3 uses
  %i.yc = fcmp ogt float %i.yb, f0x3C23D70A       ; 2 uses
  %.not.i200.i = icmp eq ptr %i.xt, %i.xs
  br i1 %.not.i200.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge383.i
  %.sroa.speculated232.i = select i1 %i.yc, float %i.yb, float f0x3C23D70A
  store float %.sroa.speculated232.i, ptr %i.xt, align 4, !tbaa !42
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xt, i64 4
  store ptr %i.yd, ptr %i.nt, align 8, !tbaa !44
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i

bb.cf:                                            ; preds = %._crit_edge383.i
  %i.ye = ptrtoint ptr %i.xs to i64
  %i.yf = ptrtoint ptr %i.xw to i64               ; 2 uses
  %i.yg = sub i64 %i.ye, %i.yf                    ; 5 uses
  %i.yh = icmp eq i64 %i.yg, 9223372036854775804
  br i1 %i.yh, label %bb.cg, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i201.i
end_hunk_0
