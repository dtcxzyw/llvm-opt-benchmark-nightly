Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ocr_hmm_decoder?download=true
inline.NumInlined: 2610
inline.NumDeleted: 791
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN2cv4text19OCRHMMClassifierCNN4evalERKNS_11_InputArrayERSt6vectorIiSaIiEERS5_IdSaIdEE:bb.a
  %i.ku = fsub <2 x double> %wide.load607, %wide.load606
  %i.kv = fdiv <2 x double> %i.ks, %i.ku
  %i.kw = fadd <2 x double> %i.kv, splat (double -1.000000e+00)
  store <2 x double> %i.kw, ptr %i.kp, align 8, !tbaa !122, !alias.scope !315, !noalias !316
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kx = icmp eq i64 %index.next, %n.vec
  br i1 %i.kx, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge495, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph494, %middle.block
  %indvars.iv515.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph494 ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv515.ph ; 2 uses
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !122
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv515.ph
  %i.lb = load double, ptr %i.la, align 8, !tbaa !122 ; 2 uses
  %i.lc = fsub double %i.kz, %i.lb
  %i.ld = fmul double %i.lc, 2.000000e+00
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv515.ph
  %i.lf = load double, ptr %i.le, align 8, !tbaa !122
  %i.lg = fsub double %i.lf, %i.lb
  %i.lh = fdiv double %i.ld, %i.lg
  %i.li = fadd double %i.lh, -1.000000e+00
  store double %i.li, ptr %i.ky, align 8, !tbaa !122
  %indvars.iv.next516.prol = or disjoint i64 %indvars.iv515.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv515.unr = phi i64 [ %indvars.iv515.ph, %scalar.ph.preheader ], [ %indvars.iv.next516.prol, %scalar.ph.prol ]
  %i.lj = add nsw i64 %wide.trip.count, -1
  %i.lk = icmp eq i64 %indvars.iv515.ph, %i.lj
  br i1 %i.lk, label %._crit_edge495, label %scalar.ph

._crit_edge495:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #23
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !152 ; 3 uses
  %i.ln = sext i32 %i.lm to i64                   ; 2 uses
  %i.lo = icmp slt i32 %i.lm, 0
  br i1 %i.lo, label %bb.cq, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.cq:                                            ; preds = %._crit_edge495
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc355 unwind label %bb.cy

.noexc355:                                        ; preds = %bb.cq
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge495
  %.not.i.i.i.i = icmp eq i32 %i.lm, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %bb.cr

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  br label %.loopexit450

bb.cr:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.lp = shl nuw nsw i64 %i.ln, 3                ; 3 uses
  %i.lq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lp) #26
          to label %.noexc356 unwind label %bb.cy ; 5 uses

.noexc356:                                        ; preds = %bb.cr
  store ptr %i.lq, ptr %41, align 8, !tbaa !80
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %i.ln ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %41, i64 16
  store ptr %i.lr, ptr %i.ls, align 8, !tbaa !140
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.lq, i8 0, i64 %i.lp, i1 false), !tbaa !122
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lp
  %i.lu = ptrtoint ptr %i.lr to i64
  br label %.loopexit450

bb.cs:                                            ; preds = %bb.bn
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %bb.co
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #23
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn276 = phi { ptr, i32 } [ %i.lw, %bb.ct ], [ %i.lv, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  br label %bb.ee

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv515 = phi i64 [ %indvars.iv.next516.1, %scalar.ph ], [ %indvars.iv515.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv515 ; 2 uses
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !122
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv515
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !122 ; 2 uses
  %i.mb = fsub double %i.ly, %i.ma
  %i.mc = fmul double %i.mb, 2.000000e+00
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv515
  %i.me = load double, ptr %i.md, align 8, !tbaa !122
  %i.mf = fsub double %i.me, %i.ma
  %i.mg = fdiv double %i.mc, %i.mf
  %i.mh = fadd double %i.mg, -1.000000e+00
  store double %i.mh, ptr %i.lx, align 8, !tbaa !122
  %indvars.iv.next516 = add nuw nsw i64 %indvars.iv515, 1 ; 3 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.next516 ; 2 uses
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !122
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv.next516
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !122 ; 2 uses
  %i.mm = fsub double %i.mj, %i.ml
  %i.mn = fmul double %i.mm, 2.000000e+00
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.next516
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !122
  %i.mq = fsub double %i.mp, %i.ml
  %i.mr = fdiv double %i.mn, %i.mq
  %i.ms = fadd double %i.mr, -1.000000e+00
  store double %i.ms, ptr %i.mi, align 8, !tbaa !122
  %indvars.iv.next516.1 = add nuw nsw i64 %indvars.iv515, 2 ; 2 uses
  %exitcond518.not.1 = icmp eq i64 %indvars.iv.next516.1, %wide.trip.count
  br i1 %exitcond518.not.1, label %._crit_edge495, label %scalar.ph, !llvm.loop !304

.loopexit450:                                     ; preds = %.noexc356, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %i.mt = phi i64 [ 0, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.lu, %.noexc356 ] ; 2 uses
  %i.mu = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.lq, %.noexc356 ] ; 8 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.lt, %.noexc356 ]
  %i.mv = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.mv, align 8, !tbaa !81
  %i.mw = call noundef double @_ZN2cv4text19OCRHMMClassifierCNN12eval_featureERNS_3MatERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(1296) %0, ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 8 dereferenceable(24) %41) ; 2 uses
  %i.mx = fcmp olt double %i.mw, 0.000000e+00
  br i1 %i.mx, label %bb.cv, label %bb.db

bb.cv:                                            ; preds = %.loopexit450
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %43)
          to label %bb.cw unwind label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @__func__._ZN2cv4text13OCRHMMDecoder18ClassifierCallback4evalERKNS_11_InputArrayERSt6vectorIiSaIiEERS6_IdSaIdEE, ptr noundef nonnull @.str.1, i32 noundef 1113) #24
          to label %bb.cx unwind label %bb.da

bb.cx:                                            ; preds = %bb.cw
  unreachable

bb.cy:                                            ; preds = %bb.cr, %bb.cq
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit387

bb.cz:                                            ; preds = %bb.cv
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359

bb.da:                                            ; preds = %bb.cw
  %i.na = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nb = load ptr, ptr %42, align 8, !tbaa !39   ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.nd = icmp eq ptr %i.nb, %i.nc
  br i1 %i.nd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357: ; preds = %bb.da
  %i.ne = load i64, ptr %i.nc, align 8, !tbaa !40
  %i.nf = add i64 %i.ne, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.nf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357, %bb.cz
  %.pn279 = phi { ptr, i32 } [ %i.mz, %bb.cz ], [ %i.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357 ], [ %i.na, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  br label %.loopexit.split-lp

bb.db:                                            ; preds = %.loopexit450
  %i.ng = fptosi double %i.mw to i32              ; 3 uses
  %i.nh = load ptr, ptr %i.w, align 8, !tbaa !77  ; 4 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !139
  %.not.i.i360 = icmp eq ptr %i.nh, %i.nj
  br i1 %.not.i.i360, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i32 %i.ng, ptr %i.nh, align 4, !tbaa !93
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  store ptr %i.nk, ptr %i.w, align 8, !tbaa !77
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.dd:                                            ; preds = %bb.db
  %i.nl = load ptr, ptr %2, align 8, !tbaa !76    ; 4 uses
  %i.nm = ptrtoint ptr %i.nh to i64
  %i.nn = ptrtoint ptr %i.nl to i64               ; 2 uses
  %i.no = sub i64 %i.nm, %i.nn                    ; 5 uses
  %i.np = icmp eq i64 %i.no, 9223372036854775804
  br i1 %i.np, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dd
  %i.nq = ashr exact i64 %i.no, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.nq, i64 1)
  %i.nr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.nq ; 2 uses
  %i.ns = icmp ult i64 %i.nr, %i.nq
  %i.nt = call i64 @llvm.umin.i64(i64 %i.nr, i64 2305843009213693951)
  %i.nu = select i1 %i.ns, i64 2305843009213693951, i64 %i.nt ; 3 uses
  %.not.i.i.i.i361 = icmp ne i64 %i.nu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i361)
  %i.nv = shl nuw nsw i64 %i.nu, 2
  %i.nw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nv) #26
          to label %.noexc363 unwind label %44    ; 4 uses

.noexc363:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.nx = getelementptr inbounds i8, ptr %i.nw, i64 %i.no ; 2 uses
  store i32 %i.ng, ptr %i.nx, align 4, !tbaa !93
  %i.ny = icmp sgt i64 %i.no, 0
  br i1 %i.ny, label %bb.de, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.de:                                            ; preds = %.noexc363
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nw, ptr align 4 %i.nl, i64 %i.no, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.de, %.noexc363
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.nl, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.df

bb.df:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.oa = load ptr, ptr %i.ni, align 8, !tbaa !139
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = sub i64 %i.ob, %i.nn
  call void @_ZdlPvm(ptr noundef nonnull %i.nl, i64 noundef %i.oc) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.df, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.nw, ptr %2, align 8, !tbaa !76
  store ptr %i.nz, ptr %i.w, align 8, !tbaa !77
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %i.nu
  store ptr %i.od, ptr %i.ni, align 8, !tbaa !139
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.dc
  %i.oe = zext nneg i32 %i.ng to i64              ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %i.oe ; 2 uses
  %i.og = load ptr, ptr %i.z, align 8, !tbaa !81  ; 4 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !140 ; 2 uses
  %.not.i = icmp eq ptr %i.og, %i.oi
  br i1 %.not.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.oj = load double, ptr %i.of, align 8, !tbaa !122
  store double %i.oj, ptr %i.og, align 8, !tbaa !122
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 2 uses
  store ptr %i.ok, ptr %i.z, align 8, !tbaa !81
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.dh:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ol = load ptr, ptr %3, align 8, !tbaa !80    ; 4 uses
  %i.om = ptrtoint ptr %i.og to i64
  %i.on = ptrtoint ptr %i.ol to i64               ; 2 uses
  %i.oo = sub i64 %i.om, %i.on                    ; 5 uses
  %i.op = icmp eq i64 %i.oo, 9223372036854775800
  br i1 %i.op, label %.invoke, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.dh, %bb.dd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #24
          to label %.cont unwind label %44

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dh
  %i.oq = ashr exact i64 %i.oo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.oq, i64 1)
  %i.or = add nsw i64 %.sroa.speculated.i.i.i, %i.oq ; 2 uses
  %i.os = icmp ult i64 %i.or, %i.oq
  %i.ot = call i64 @llvm.umin.i64(i64 %i.or, i64 1152921504606846975)
  %i.ou = select i1 %i.os, i64 1152921504606846975, i64 %i.ot ; 3 uses
  %.not.i.i.i364 = icmp ne i64 %i.ou, 0
  call void @llvm.assume(i1 %.not.i.i.i364)
  %i.ov = shl nuw nsw i64 %i.ou, 3
  %i.ow = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ov) #26
          to label %.noexc366 unwind label %44    ; 4 uses

.noexc366:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.ox = getelementptr inbounds i8, ptr %i.ow, i64 %i.oo ; 2 uses
  %i.oy = load double, ptr %i.of, align 8, !tbaa !122
  store double %i.oy, ptr %i.ox, align 8, !tbaa !122
  %i.oz = icmp sgt i64 %i.oo, 0
  br i1 %i.oz, label %bb.di, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.di:                                            ; preds = %.noexc366
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ow, ptr align 8 %i.ol, i64 %i.oo, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.di, %.noexc366
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ol, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  %i.pb = load ptr, ptr %i.oh, align 8, !tbaa !140
  %i.pc = ptrtoint ptr %i.pb to i64
  %i.pd = sub i64 %i.pc, %i.on
  call void @_ZdlPvm(ptr noundef nonnull %i.ol, i64 noundef %i.pd) #25
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.dj, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.ow, ptr %3, align 8, !tbaa !80
  store ptr %i.pa, ptr %i.z, align 8, !tbaa !81
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.ou ; 2 uses
  store ptr %i.pe, ptr %i.oh, align 8, !tbaa !140
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

_ZNSt6vectorIdSaIdEE9push_backERKd.exit:          ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.dg
  %i.pf = phi ptr [ %i.pe, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.oi, %bb.dg ]
  %i.pg = phi ptr [ %i.pa, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.ok, %bb.dg ]
  %i.ph = load i32, ptr %i.ll, align 8, !tbaa !152
  %i.pi = icmp sgt i32 %i.ph, 0
  br i1 %i.pi, label %.lr.ph498, label %._crit_edge499.thread

._crit_edge499:                                   ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385
  %.not.i.i.i367 = icmp eq ptr %i.mu, null
  br i1 %.not.i.i.i367, label %_ZNSt6vectorIdSaIdEED2Ev.exit368, label %._crit_edge499.thread

._crit_edge499.thread:                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit, %._crit_edge499
  %i.pj = ptrtoint ptr %i.mu to i64
  %i.pk = sub i64 %i.mt, %i.pj
  call void @_ZdlPvm(ptr noundef nonnull %i.mu, i64 noundef %i.pk) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit368

_ZNSt6vectorIdSaIdEED2Ev.exit368:                 ; preds = %._crit_edge499, %._crit_edge499.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  %i.pl = load ptr, ptr %i.av, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.pl, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit368
  %i.pm = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !140
  %i.po = ptrtoint ptr %i.pn to i64
  %i.pp = ptrtoint ptr %i.pl to i64
  %i.pq = sub i64 %i.po, %i.pp
  call void @_ZdlPvm(ptr noundef nonnull %i.pl, i64 noundef %i.pq) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i:  ; preds = %bb.dk, %_ZNSt6vectorIdSaIdEED2Ev.exit368
  %.05.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.pr = load ptr, ptr %.05.i.i.i.ptr.1, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq ptr %i.pr, null
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.1, label %bb.dl

bb.dl:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !140
  %i.pu = ptrtoint ptr %i.pt to i64
  %i.pv = ptrtoint ptr %i.pr to i64
  %i.pw = sub i64 %i.pu, %i.pv
  call void @_ZdlPvm(ptr noundef nonnull %i.pr, i64 noundef %i.pw) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.1

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.1: ; preds = %bb.dl, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %.05.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.px = load ptr, ptr %.05.i.i.i.ptr.2, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.2 = icmp eq ptr %i.px, null
  br i1 %.not.i.i.i.i.i.i.i.2, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.2, label %bb.dm

bb.dm:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.1
  %i.py = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !140
  %i.qa = ptrtoint ptr %i.pz to i64
  %i.qb = ptrtoint ptr %i.px to i64
  %i.qc = sub i64 %i.qa, %i.qb
  call void @_ZdlPvm(ptr noundef nonnull %i.px, i64 noundef %i.qc) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.2

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.2: ; preds = %bb.dm, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.1
  %.05.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.qd = load ptr, ptr %.05.i.i.i.ptr.3, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.3, label %bb.dn

bb.dn:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.2
  %i.qe = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !140
  %i.qg = ptrtoint ptr %i.qf to i64
  %i.qh = ptrtoint ptr %i.qd to i64
  %i.qi = sub i64 %i.qg, %i.qh
  call void @_ZdlPvm(ptr noundef nonnull %i.qd, i64 noundef %i.qi) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.3

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.3: ; preds = %bb.dn, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.2
  %.05.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.qj = load ptr, ptr %.05.i.i.i.ptr.4, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.4 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i.i.i.i.i.i.4, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.4, label %bb.do

bb.do:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.3
  %i.qk = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !140
  %i.qm = ptrtoint ptr %i.ql to i64
  %i.qn = ptrtoint ptr %i.qj to i64
  %i.qo = sub i64 %i.qm, %i.qn
  call void @_ZdlPvm(ptr noundef nonnull %i.qj, i64 noundef %i.qo) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.4

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.4: ; preds = %bb.do, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.3
  %.05.i.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.qp = load ptr, ptr %.05.i.i.i.ptr.5, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.5 = icmp eq ptr %i.qp, null
  br i1 %.not.i.i.i.i.i.i.i.5, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.5, label %bb.dp

bb.dp:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.4
  %i.qq = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !140
  %i.qs = ptrtoint ptr %i.qr to i64
  %i.qt = ptrtoint ptr %i.qp to i64
  %i.qu = sub i64 %i.qs, %i.qt
  call void @_ZdlPvm(ptr noundef nonnull %i.qp, i64 noundef %i.qu) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.5

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.5: ; preds = %bb.dp, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.4
  %.05.i.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  %i.qv = load ptr, ptr %.05.i.i.i.ptr.6, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.6 = icmp eq ptr %i.qv, null
  br i1 %.not.i.i.i.i.i.i.i.6, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.6, label %bb.dq

bb.dq:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.5
  %i.qw = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !140
  %i.qy = ptrtoint ptr %i.qx to i64
  %i.qz = ptrtoint ptr %i.qv to i64
  %i.ra = sub i64 %i.qy, %i.qz
  call void @_ZdlPvm(ptr noundef nonnull %i.qv, i64 noundef %i.ra) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.6

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.6: ; preds = %bb.dq, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.5
  %.05.i.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.av, i64 168
  %i.rb = load ptr, ptr %.05.i.i.i.ptr.7, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq ptr %i.rb, null
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.7, label %bb.dr

bb.dr:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.6
  %i.rc = getelementptr inbounds nuw i8, ptr %i.av, i64 184
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !140
  %i.re = ptrtoint ptr %i.rd to i64
  %i.rf = ptrtoint ptr %i.rb to i64
  %i.rg = sub i64 %i.re, %i.rf
  call void @_ZdlPvm(ptr noundef nonnull %i.rb, i64 noundef %i.rg) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.7

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.7: ; preds = %bb.dr, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.6
  %.05.i.i.i.ptr.8 = getelementptr inbounds nuw i8, ptr %i.av, i64 192
  %i.rh = load ptr, ptr %.05.i.i.i.ptr.8, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i.8 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i.i.i.i.i.8, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.8, label %bb.ds

bb.ds:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.7
  %i.ri = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !140
  %i.rk = ptrtoint ptr %i.rj to i64
  %i.rl = ptrtoint ptr %i.rh to i64
  %i.rm = sub i64 %i.rk, %i.rl
  call void @_ZdlPvm(ptr noundef nonnull %i.rh, i64 noundef %i.rm) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.8

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.8: ; preds = %bb.ds, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.7
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 216) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  ret void

44:                                               ; preds = %.invoke, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph498:                                        ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385
  %i.rn = phi ptr [ %i.to, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385 ], [ %i.pf, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %i.ro = phi ptr [ %i.tp, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385 ], [ %i.pg, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %indvars.iv519 = phi i64 [ %indvars.iv.next520, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385 ], [ 0, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 5 uses
  %.not278 = icmp eq i64 %indvars.iv519, %i.oe
  br i1 %.not278, label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph498
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %indvars.iv519 ; 3 uses
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !122
  %i.rr = fcmp une double %i.rq, 0.000000e+00
  br i1 %i.rr, label %bb.du, label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385

bb.du:                                            ; preds = %bb.dt
  %i.rs = load ptr, ptr %i.w, align 8, !tbaa !77  ; 4 uses
  %i.rt = load ptr, ptr %i.ni, align 8, !tbaa !139
  %.not.i370 = icmp eq ptr %i.rs, %i.rt
  br i1 %.not.i370, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ru = trunc nuw nsw i64 %indvars.iv519 to i32
  store i32 %i.ru, ptr %i.rs, align 4, !tbaa !93
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 4
  store ptr %i.rv, ptr %i.w, align 8, !tbaa !77
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.dw:                                            ; preds = %bb.du
  %i.rw = load ptr, ptr %2, align 8, !tbaa !76    ; 4 uses
  %i.rx = ptrtoint ptr %i.rs to i64
  %i.ry = ptrtoint ptr %i.rw to i64               ; 2 uses
  %i.rz = sub i64 %i.rx, %i.ry                    ; 5 uses
  %i.sa = icmp eq i64 %i.rz, 9223372036854775804
  br i1 %i.sa, label %.invoke592, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke592:                                       ; preds = %bb.ea, %bb.dw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #24
          to label %.cont593 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont593:                                         ; preds = %.invoke592
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dw
  %i.sb = ashr exact i64 %i.rz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i371 = call i64 @llvm.umax.i64(i64 %i.sb, i64 1)
  %i.sc = add nsw i64 %.sroa.speculated.i.i.i371, %i.sb ; 2 uses
  %i.sd = icmp ult i64 %i.sc, %i.sb
  %i.se = call i64 @llvm.umin.i64(i64 %i.sc, i64 2305843009213693951)
  %i.sf = select i1 %i.sd, i64 2305843009213693951, i64 %i.se ; 3 uses
  %.not.i.i.i372 = icmp ne i64 %i.sf, 0
  call void @llvm.assume(i1 %.not.i.i.i372)
  %i.sg = shl nuw nsw i64 %i.sf, 2
  %i.sh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sg) #26
          to label %.noexc375 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc375:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.si = getelementptr inbounds i8, ptr %i.sh, i64 %i.rz ; 2 uses
  %i.sj = trunc nuw nsw i64 %indvars.iv519 to i32
  store i32 %i.sj, ptr %i.si, align 4, !tbaa !93
  %i.sk = icmp sgt i64 %i.rz, 0
  br i1 %i.sk, label %bb.dx, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.dx:                                            ; preds = %.noexc375
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sh, ptr align 4 %i.rw, i64 %i.rz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.dx, %.noexc375
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 4
  %.not.i17.i.i373 = icmp eq ptr %i.rw, null
  br i1 %.not.i17.i.i373, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.dy

bb.dy:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.sm = load ptr, ptr %i.ni, align 8, !tbaa !139
  %i.sn = ptrtoint ptr %i.sm to i64
  %i.so = sub i64 %i.sn, %i.ry
  call void @_ZdlPvm(ptr noundef nonnull %i.rw, i64 noundef %i.so) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.dy, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.sh, ptr %2, align 8, !tbaa !76
  store ptr %i.sl, ptr %i.w, align 8, !tbaa !77
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.sf
  store ptr %i.sp, ptr %i.ni, align 8, !tbaa !139
  %.pre522 = load ptr, ptr %i.z, align 8, !tbaa !81
  %.pre523 = load ptr, ptr %i.oh, align 8, !tbaa !140
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.dv
  %i.sq = phi ptr [ %.pre523, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.rn, %bb.dv ] ; 3 uses
  %i.sr = phi ptr [ %.pre522, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ro, %bb.dv ] ; 3 uses
  %.not.i376 = icmp eq ptr %i.sr, %i.sq
  br i1 %.not.i376, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ss = load double, ptr %i.rp, align 8, !tbaa !122
  store double %i.ss, ptr %i.sr, align 8, !tbaa !122
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 8 ; 2 uses
  store ptr %i.st, ptr %i.z, align 8, !tbaa !81
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385

bb.ea:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.su = load ptr, ptr %3, align 8, !tbaa !80    ; 4 uses
  %i.sv = ptrtoint ptr %i.sq to i64
  %i.sw = ptrtoint ptr %i.su to i64               ; 2 uses
  %i.sx = sub i64 %i.sv, %i.sw                    ; 5 uses
  %i.sy = icmp eq i64 %i.sx, 9223372036854775800
  br i1 %i.sy, label %.invoke592, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i377

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i377: ; preds = %bb.ea
  %i.sz = ashr exact i64 %i.sx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i378 = call i64 @llvm.umax.i64(i64 %i.sz, i64 1)
  %i.ta = add nsw i64 %.sroa.speculated.i.i.i378, %i.sz ; 2 uses
  %i.tb = icmp ult i64 %i.ta, %i.sz
  %i.tc = call i64 @llvm.umin.i64(i64 %i.ta, i64 1152921504606846975)
  %i.td = select i1 %i.tb, i64 1152921504606846975, i64 %i.tc ; 3 uses
  %.not.i.i.i379 = icmp ne i64 %i.td, 0
  call void @llvm.assume(i1 %.not.i.i.i379)
  %i.te = shl nuw nsw i64 %i.td, 3
  %i.tf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.te) #26
          to label %.noexc384 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc384:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i377
  %i.tg = getelementptr inbounds i8, ptr %i.tf, i64 %i.sx ; 2 uses
  %i.th = load double, ptr %i.rp, align 8, !tbaa !122
  store double %i.th, ptr %i.tg, align 8, !tbaa !122
  %i.ti = icmp sgt i64 %i.sx, 0
  br i1 %i.ti, label %bb.eb, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i380

bb.eb:                                            ; preds = %.noexc384
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tf, ptr align 8 %i.su, i64 %i.sx, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i380

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i380: ; preds = %bb.eb, %.noexc384
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 8 ; 2 uses
  %.not.i17.i.i381 = icmp eq ptr %i.su, null
  br i1 %.not.i17.i.i381, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i382, label %bb.ec

bb.ec:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i380
  %i.tk = load ptr, ptr %i.oh, align 8, !tbaa !140
  %i.tl = ptrtoint ptr %i.tk to i64
  %i.tm = sub i64 %i.tl, %i.sw
  call void @_ZdlPvm(ptr noundef nonnull %i.su, i64 noundef %i.tm) #25
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i382

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i382: ; preds = %bb.ec, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i380
  store ptr %i.tf, ptr %3, align 8, !tbaa !80
  store ptr %i.tj, ptr %i.z, align 8, !tbaa !81
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %i.td ; 2 uses
  store ptr %i.tn, ptr %i.oh, align 8, !tbaa !140
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit385

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i377, %.invoke592
  %lpad.loopexit.split-lp500 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

_ZNSt6vectorIdSaIdEE9push_backERKd.exit385:       ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i382, %bb.dz, %.lr.ph498, %bb.dt
  %i.to = phi ptr [ %i.tn, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i382 ], [ %i.sq, %bb.dz ], [ %i.rn, %.lr.ph498 ], [ %i.rn, %bb.dt ]
  %i.tp = phi ptr [ %i.tj, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i382 ], [ %i.st, %bb.dz ], [ %i.ro, %.lr.ph498 ], [ %i.ro, %bb.dt ]
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %i.tq = load i32, ptr %i.ll, align 8, !tbaa !152
  %i.tr = sext i32 %i.tq to i64
  %i.ts = icmp slt i64 %indvars.iv.next520, %i.tr
  br i1 %i.ts, label %.lr.ph498, label %._crit_edge499, !llvm.loop !305

.loopexit.split-lp:                               ; preds = %44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359
  %.pn279.pn = phi { ptr, i32 } [ %.pn279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359 ], [ %45, %44 ] ; 2 uses
  %.not.i.i.i386 = icmp eq ptr %i.mu, null
  br i1 %.not.i.i.i386, label %_ZNSt6vectorIdSaIdEED2Ev.exit387, label %bb.ed

bb.ed:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp
  %.pn279.pn589 = phi { ptr, i32 } [ %.pn279.pn, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp500, %.loopexit.split-lp.loopexit.split-lp ]
  %i.tt = ptrtoint ptr %i.mu to i64
  %i.tu = sub i64 %i.mt, %i.tt
  call void @_ZdlPvm(ptr noundef nonnull %i.mu, i64 noundef %i.tu) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit387

_ZNSt6vectorIdSaIdEED2Ev.exit387:                 ; preds = %bb.ed, %.loopexit.split-lp, %bb.cy
  %.pn279.pn.pn = phi { ptr, i32 } [ %i.my, %bb.cy ], [ %.pn279.pn, %.loopexit.split-lp ], [ %.pn279.pn589, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  br label %bb.ee

bb.ee:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit387, %bb.cu, %bb.cn
  %.pn287.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn287.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cn ], [ %.pn276, %bb.cu ], [ %.pn279.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit387 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #23
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.bp
  %.pn287.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn287.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ee ], [ %.pn274, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %.lr.ph.i.i.i389

.lr.ph.i.i.i389:                                  ; preds = %bb.ef, %bb.bl
  %.pn311.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn, %bb.bl ], [ %.pn287.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ef ]
  %i.tv = load ptr, ptr %i.av, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i391 = icmp eq ptr %i.tv, null
  br i1 %.not.i.i.i.i.i.i.i391, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392, label %bb.eg

bb.eg:                                            ; preds = %.lr.ph.i.i.i389
  %i.tw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !140
  %i.ty = ptrtoint ptr %i.tx to i64
  %i.tz = ptrtoint ptr %i.tv to i64
  %i.ua = sub i64 %i.ty, %i.tz
  call void @_ZdlPvm(ptr noundef nonnull %i.tv, i64 noundef %i.ua) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392: ; preds = %bb.eg, %.lr.ph.i.i.i389
  %.05.i.i.i390.ptr.1 = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ub = load ptr, ptr %.05.i.i.i390.ptr.1, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i391.1 = icmp eq ptr %i.ub, null
  br i1 %.not.i.i.i.i.i.i.i391.1, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.1, label %bb.eh

bb.eh:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392
  %i.uc = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !140
  %i.ue = ptrtoint ptr %i.ud to i64
  %i.uf = ptrtoint ptr %i.ub to i64
  %i.ug = sub i64 %i.ue, %i.uf
  call void @_ZdlPvm(ptr noundef nonnull %i.ub, i64 noundef %i.ug) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.1

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.1: ; preds = %bb.eh, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392
  %.05.i.i.i390.ptr.2 = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.uh = load ptr, ptr %.05.i.i.i390.ptr.2, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i391.2 = icmp eq ptr %i.uh, null
  br i1 %.not.i.i.i.i.i.i.i391.2, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.2, label %bb.ei

bb.ei:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.1
  %i.ui = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !140
  %i.uk = ptrtoint ptr %i.uj to i64
  %i.ul = ptrtoint ptr %i.uh to i64
  %i.um = sub i64 %i.uk, %i.ul
  call void @_ZdlPvm(ptr noundef nonnull %i.uh, i64 noundef %i.um) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.2

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.2: ; preds = %bb.ei, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.1
  %.05.i.i.i390.ptr.3 = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.un = load ptr, ptr %.05.i.i.i390.ptr.3, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i391.3 = icmp eq ptr %i.un, null
  br i1 %.not.i.i.i.i.i.i.i391.3, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.3, label %bb.ej

bb.ej:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.2
  %i.uo = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !140
  %i.uq = ptrtoint ptr %i.up to i64
  %i.ur = ptrtoint ptr %i.un to i64
  %i.us = sub i64 %i.uq, %i.ur
  call void @_ZdlPvm(ptr noundef nonnull %i.un, i64 noundef %i.us) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.3

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.3: ; preds = %bb.ej, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.2
  %.05.i.i.i390.ptr.4 = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.ut = load ptr, ptr %.05.i.i.i390.ptr.4, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i391.4 = icmp eq ptr %i.ut, null
  br i1 %.not.i.i.i.i.i.i.i391.4, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.4, label %bb.ek

bb.ek:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.3
  %i.uu = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !140
  %i.uw = ptrtoint ptr %i.uv to i64
  %i.ux = ptrtoint ptr %i.ut to i64
  %i.uy = sub i64 %i.uw, %i.ux
  call void @_ZdlPvm(ptr noundef nonnull %i.ut, i64 noundef %i.uy) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.4

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.4: ; preds = %bb.ek, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.3
  %.05.i.i.i390.ptr.5 = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.uz = load ptr, ptr %.05.i.i.i390.ptr.5, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i391.5 = icmp eq ptr %i.uz, null
  br i1 %.not.i.i.i.i.i.i.i391.5, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.5, label %bb.el

bb.el:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.4
  %i.va = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !140
  %i.vc = ptrtoint ptr %i.vb to i64
  %i.vd = ptrtoint ptr %i.uz to i64
  %i.ve = sub i64 %i.vc, %i.vd
  call void @_ZdlPvm(ptr noundef nonnull %i.uz, i64 noundef %i.ve) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.5

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.5: ; preds = %bb.el, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.4
  %.05.i.i.i390.ptr.6 = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  %i.vf = load ptr, ptr %.05.i.i.i390.ptr.6, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i391.6 = icmp eq ptr %i.vf, null
  br i1 %.not.i.i.i.i.i.i.i391.6, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.6, label %bb.em

bb.em:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.5
  %i.vg = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !140
  %i.vi = ptrtoint ptr %i.vh to i64
  %i.vj = ptrtoint ptr %i.vf to i64
  %i.vk = sub i64 %i.vi, %i.vj
  call void @_ZdlPvm(ptr noundef nonnull %i.vf, i64 noundef %i.vk) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.6

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.6: ; preds = %bb.em, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.5
  %.05.i.i.i390.ptr.7 = getelementptr inbounds nuw i8, ptr %i.av, i64 168
  %i.vl = load ptr, ptr %.05.i.i.i390.ptr.7, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i391.7 = icmp eq ptr %i.vl, null
  br i1 %.not.i.i.i.i.i.i.i391.7, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.7, label %bb.en

bb.en:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.6
  %i.vm = getelementptr inbounds nuw i8, ptr %i.av, i64 184
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !140
  %i.vo = ptrtoint ptr %i.vn to i64
  %i.vp = ptrtoint ptr %i.vl to i64
  %i.vq = sub i64 %i.vo, %i.vp
  call void @_ZdlPvm(ptr noundef nonnull %i.vl, i64 noundef %i.vq) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.7

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.7: ; preds = %bb.en, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.6
  %.05.i.i.i390.ptr.8 = getelementptr inbounds nuw i8, ptr %i.av, i64 192
  %i.vr = load ptr, ptr %.05.i.i.i390.ptr.8, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i391.8 = icmp eq ptr %i.vr, null
  br i1 %.not.i.i.i.i.i.i.i391.8, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.8, label %bb.eo

bb.eo:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.7
  %i.vs = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !140
  %i.vu = ptrtoint ptr %i.vt to i64
  %i.vv = ptrtoint ptr %i.vr to i64
  %i.vw = sub i64 %i.vu, %i.vv
  call void @_ZdlPvm(ptr noundef nonnull %i.vr, i64 noundef %i.vw) #25
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.8

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.8: ; preds = %bb.eo, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.7
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 216) #25
  br label %bb.ep

bb.ep:                                            ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.8, %bb.y
  %.pn311.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn.pn, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i392.8 ], [ %i.cq, %bb.y ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.x, %bb.r
  %.pn311.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn.pn.pn, %bb.ep ], [ %i.cp, %bb.x ], [ %i.an, %bb.r ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn311.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn.pn.pn.pn, %bb.eq ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %bb.g ]
  resume { ptr, i32 } %.pn311.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #6

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv4text19OCRHMMClassifierCNN15normalizeAndZCAERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(1296) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Range", align 4         ; 5 uses
  %3 = alloca %"class.cv::Range", align 8         ; 4 uses
  %4 = alloca %"class.cv::Range", align 4         ; 5 uses
  %5 = alloca %"class.cv::Range", align 8         ; 4 uses
  %6 = alloca %"class.cv::Range", align 8         ; 4 uses
  %7 = alloca %"class.cv::Range", align 4         ; 5 uses
  %8 = alloca %"class.cv::Range", align 8         ; 4 uses
  %9 = alloca %"class.cv::Range", align 4         ; 5 uses
  %10 = alloca %"class.cv::Range", align 8        ; 4 uses
  %11 = alloca %"class.cv::Range", align 4        ; 5 uses
  %12 = alloca %"class.cv::Range", align 8        ; 4 uses
end_hunk_0
