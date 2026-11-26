Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/deepidexample?download=true
inline.NumInlined: 970
inline.NumDeleted: 387
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
.noexc549:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ro, ptr %28, align 8, !tbaa !37
  %i.rp = getelementptr inbounds nuw [24 x i8], ptr %i.ro, i64 %i.rl
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ro, i8 0, i64 %i.rn, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ro, i64 %i.rn
  br label %_ZNSt12_Vector_baseISt6vectorI5RgbazSaIS1_EESaIS3_EEC2EmRKS4_.exit.thread.i

_ZNSt12_Vector_baseISt6vectorI5RgbazSaIS1_EESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorIS_I5RgbazSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.noexc549
  %.sink.i = phi ptr [ %i.rp, %.noexc549 ], [ null, %_ZNSt6vectorIS_I5RgbazSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc549 ], [ null, %_ZNSt6vectorIS_I5RgbazSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %i.rq = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.rr, align 8, !tbaa !38
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.rq, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  store i64 2, ptr %29, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %i.rs = fdiv double %i.cp, 1.000000e+02
  %i.rt = call double @cos(double noundef %i.rs) #21
  %i.ru = icmp sgt i32 %.1199, 0
  br i1 %i.ru, label %.lr.ph, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseISt6vectorI5RgbazSaIS1_EESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.rv = fmul double %i.rt, 5.000000e-01
  %i.rw = fsub double 5.000000e-01, %i.rv
  %i.rx = fptrunc double %i.rw to float           ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.rz = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.sa = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.sb = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 7 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 9 uses
  %i.se = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 9 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 10 uses
  %i.si = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 7 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.sl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.sm = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 7 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 9 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 9 uses
  %i.st = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 14 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 7 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 7 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 7 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 9 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 7 uses
  %i.td = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 15 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 5 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ti = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.tj = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.tk = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.tl = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.tm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.tn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.to = fpext float %i.rx to double
  %i.tp = fsub double 1.000000e+00, %i.to
  %i.tq = insertelement <2 x double> poison, double %i.tp, i64 0
  %i.tr = shufflevector <2 x double> %i.tq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ts = insertelement <2 x float> poison, float %i.rx, i64 0
  %i.tt = shufflevector <2 x float> %i.ts, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.cg

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.fw, %_ZNSt12_Vector_baseISt6vectorI5RgbazSaIS1_EESaIS3_EEC2EmRKS4_.exit.thread.i
  br i1 %.not.i.i.i.i, label %._crit_edge2332, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.tu = shl nuw nsw i64 %i.rl, 2
  %i.tv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tu) #22
          to label %.noexc552 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 16 uses

.noexc552:                                        ; preds = %bb.ce
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %i.rl ; 12 uses
  store i32 0, ptr %i.tv, align 4, !tbaa !42
  %i.tx = add nsw i64 %i.rl, -1                   ; 12 uses
  %i.ty = icmp eq i64 %i.tx, 0                    ; 11 uses
  br i1 %i.ty, label %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

bb.cf:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.cd
  %i.tz = landingpad { ptr, i32 }
          cleanup
  br label %bb.np

bb.cg:                                            ; preds = %.lr.ph, %bb.fw
  %.01872328 = phi i32 [ 0, %.lr.ph ], [ %i.ang, %bb.fw ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store i32 0, ptr %9, align 4, !tbaa !44
  store i32 1, ptr %i.ry, align 4, !tbaa !45
  %i.ua = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store i32 0, ptr %8, align 4, !tbaa !44
  store i32 2, ptr %i.rz, align 4, !tbaa !45
  %i.ub = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i32 0, ptr %7, align 4, !tbaa !44
  store i32 6, ptr %i.sa, align 4, !tbaa !45
  %i.uc = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %.1191, label %bb.ck, label %bb.ep

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %i.ud = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22
          to label %.noexc563 unwind label %bb.eg ; 9 uses

.noexc563:                                        ; preds = %bb.ck
  store ptr %i.ud, ptr %30, align 8, !tbaa !32
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 64
  store ptr %i.ue, ptr %i.sm, align 8, !tbaa !33
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 16 ; 2 uses
  store ptr %i.uf, ptr %i.ud, align 8, !tbaa !25
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  store i64 0, ptr %i.ug, align 8, !tbaa !27
  store i8 0, ptr %i.uf, align 8, !tbaa !28
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ud, i64 32
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ud, i64 48 ; 2 uses
  store ptr %i.ui, ptr %i.uh, align 8, !tbaa !25
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ud, i64 40
  store i64 0, ptr %i.uj, align 8, !tbaa !27
  store i8 0, ptr %i.ui, align 8, !tbaa !28
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ud, i64 64
  store ptr %i.uk, ptr %i.sn, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  %i.ul = sext i32 %i.ua to i64
  %i.um = getelementptr inbounds [8 x i8], ptr @_ZL10shapeNames, i64 %i.ul
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !94 ; 3 uses
  store ptr %i.so, ptr %33, align 8, !tbaa !25
  %i.uo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.un) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i64 %i.uo, ptr %i.e, align 8, !tbaa !116
  %i.up = icmp ugt i64 %i.uo, 15
  br i1 %i.up, label %.noexc.i566, label %._crit_edge.i.i565

.noexc.i566:                                      ; preds = %.noexc563
  %i.uq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc568 unwind label %bb.eh ; 2 uses

.noexc568:                                        ; preds = %.noexc.i566
  store ptr %i.uq, ptr %33, align 8, !tbaa !29
  %i.ur = load i64, ptr %i.e, align 8, !tbaa !116
  store i64 %i.ur, ptr %i.so, align 8, !tbaa !28
  br label %._crit_edge.i.i565

._crit_edge.i.i565:                               ; preds = %.noexc568, %.noexc563
  %i.us = phi ptr [ %i.uq, %.noexc568 ], [ %i.so, %.noexc563 ] ; 2 uses
  switch i64 %i.uo, label %bb.cm [
    i64 1, label %bb.cl
    i64 0, label %bb.cn
  ]

bb.cl:                                            ; preds = %._crit_edge.i.i565
  %i.ut = load i8, ptr %i.un, align 1, !tbaa !28
  store i8 %i.ut, ptr %i.us, align 1, !tbaa !28
  br label %bb.cn

bb.cm:                                            ; preds = %._crit_edge.i.i565
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.us, ptr nonnull align 1 %i.un, i64 %i.uo, i1 false)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %._crit_edge.i.i565
  %i.uu = load i64, ptr %i.e, align 8, !tbaa !116 ; 2 uses
  store i64 %i.uu, ptr %i.sp, align 8, !tbaa !27
  %i.uv = load ptr, ptr %33, align 8, !tbaa !29
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.uu
  store i8 0, ptr %i.uw, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.ux = load i64, ptr %i.sp, align 8, !tbaa !27, !noalias !117
  %i.uy = icmp eq i64 %i.ux, 4611686018427387903
  br i1 %i.uy, label %bb.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #25
          to label %.noexc571 unwind label %.loopexit.split-lp2074.loopexit.split-lp.loopexit.split-lp, !noalias !117

.noexc571:                                        ; preds = %bb.co
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.cn
  %i.uz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %.noexc572 unwind label %.loopexit.split-lp2074.loopexit.split-lp.loopexit.split-lp, !noalias !117 ; 6 uses

.noexc572:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.sq, ptr %32, align 8, !tbaa !25, !alias.scope !117
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !29 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 16 ; 5 uses
  %i.vc = icmp eq ptr %i.va, %i.vb
  br i1 %i.vc, label %bb.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570

bb.cp:                                            ; preds = %.noexc572
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !27 ; 3 uses
  %i.vf = icmp ult i64 %i.ve, 16
  call void @llvm.assume(i1 %i.vf)
  %i.vg = add nuw nsw i64 %i.ve, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sq, ptr noundef nonnull align 8 dereferenceable(1) %i.vb, i64 %i.vg, i1 false)
  br label %bb.cq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570: ; preds = %.noexc572
  store ptr %i.va, ptr %32, align 8, !tbaa !29, !alias.scope !117
  %i.vh = load i64, ptr %i.vb, align 8, !tbaa !28
  store i64 %i.vh, ptr %i.sq, align 8, !tbaa !28, !alias.scope !117
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !27
  br label %bb.cq

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570, %bb.cp
  %i.vi = phi i64 [ %i.ve, %bb.cp ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570 ]
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  store i64 %i.vi, ptr %i.sr, align 8, !tbaa !27, !alias.scope !117
  store ptr %i.vb, ptr %i.uz, align 8, !tbaa !29
  store i64 0, ptr %i.vj, align 8, !tbaa !27
  store i8 0, ptr %i.vb, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  %i.vk = sext i32 %i.ub to i64
  %i.vl = getelementptr inbounds [8 x i8], ptr @_ZL9sizeNames, i64 %i.vk
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !94 ; 3 uses
  store ptr %i.ss, ptr %34, align 8, !tbaa !25
  %i.vn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.vm) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i64 %i.vn, ptr %i.d, align 8, !tbaa !116
  %i.vo = icmp ugt i64 %i.vn, 15
  br i1 %i.vo, label %.noexc.i574, label %._crit_edge.i.i573

.noexc.i574:                                      ; preds = %bb.cq
  %i.vp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc576 unwind label %bb.ei ; 2 uses

.noexc576:                                        ; preds = %.noexc.i574
  store ptr %i.vp, ptr %34, align 8, !tbaa !29
  %i.vq = load i64, ptr %i.d, align 8, !tbaa !116
  store i64 %i.vq, ptr %i.ss, align 8, !tbaa !28
  br label %._crit_edge.i.i573

._crit_edge.i.i573:                               ; preds = %.noexc576, %bb.cq
  %i.vr = phi ptr [ %i.vp, %.noexc576 ], [ %i.ss, %bb.cq ] ; 2 uses
  switch i64 %i.vn, label %bb.cs [
    i64 1, label %bb.cr
    i64 0, label %bb.ct
  ]

bb.cr:                                            ; preds = %._crit_edge.i.i573
  %i.vs = load i8, ptr %i.vm, align 1, !tbaa !28
  store i8 %i.vs, ptr %i.vr, align 1, !tbaa !28
  br label %bb.ct

bb.cs:                                            ; preds = %._crit_edge.i.i573
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vr, ptr nonnull align 1 %i.vm, i64 %i.vn, i1 false)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %._crit_edge.i.i573
  %i.vt = load i64, ptr %i.d, align 8, !tbaa !116 ; 2 uses
  store i64 %i.vt, ptr %i.st, align 8, !tbaa !27
  %i.vu = load ptr, ptr %34, align 8, !tbaa !29
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 %i.vt
  store i8 0, ptr %i.vv, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.vw = load i64, ptr %i.sr, align 8, !tbaa !27, !noalias !118 ; 4 uses
  %i.vx = load i64, ptr %i.st, align 8, !tbaa !27, !noalias !118 ; 4 uses
  %i.vy = add i64 %i.vx, %i.vw                    ; 2 uses
  %i.vz = load ptr, ptr %32, align 8, !tbaa !29, !noalias !118 ; 2 uses
  %i.wa = icmp eq ptr %i.vz, %i.sq
  br i1 %i.wa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i579, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i578

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i579: ; preds = %bb.ct
  %i.wb = icmp ult i64 %i.vw, 16
  call void @llvm.assume(i1 %i.wb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i578: ; preds = %bb.ct
  %i.wc = load i64, ptr %i.sq, align 8, !tbaa !28, !noalias !118
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i578, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i579
  %i.wd = phi i64 [ %i.wc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i578 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i579 ]
  %i.we = icmp ugt i64 %i.vy, %i.wd
  br i1 %i.we, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.wf = load ptr, ptr %34, align 8, !tbaa !29, !noalias !118
  %i.wg = icmp eq ptr %i.wf, %i.ss
  br i1 %i.wg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.cu
  %i.wh = icmp ult i64 %i.vx, 16
  call void @llvm.assume(i1 %i.wh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.cu
  %i.wi = load i64, ptr %i.ss, align 8, !tbaa !28, !noalias !118
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.wj = phi i64 [ %i.wi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.vy, %i.wj
  br i1 %.not.i, label %bb.cw, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.wk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, i64 noundef 0, i64 noundef 0, ptr noundef %i.vz, i64 noundef %i.vw)
          to label %.noexc580 unwind label %.loopexit.split-lp2079.loopexit.split-lp.loopexit.split-lp, !noalias !118 ; 5 uses

.noexc580:                                        ; preds = %.critedge.i
  store ptr %i.su, ptr %31, align 8, !tbaa !25, !alias.scope !118
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !29 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wk, i64 16 ; 5 uses
  %i.wn = icmp eq ptr %i.wl, %i.wm
  br i1 %i.wn, label %bb.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.cv:                                            ; preds = %.noexc580
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !27 ; 2 uses
  %i.wq = icmp ult i64 %i.wp, 16
  call void @llvm.assume(i1 %i.wq)
  %i.wr = add nuw nsw i64 %i.wp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.su, ptr noundef nonnull align 8 dereferenceable(1) %i.wm, i64 %i.wr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc580
  store ptr %i.wl, ptr %31, align 8, !tbaa !29, !alias.scope !118
  %i.ws = load i64, ptr %i.wm, align 8, !tbaa !28
  store i64 %i.ws, ptr %i.su, align 8, !tbaa !28, !alias.scope !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.cv
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wk, i64 8 ; 2 uses
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !27
  store i64 %i.wu, ptr %i.sv, align 8, !tbaa !27, !alias.scope !118
  store ptr %i.wm, ptr %i.wk, align 8, !tbaa !29
  store i64 0, ptr %i.wt, align 8, !tbaa !27
  store i8 0, ptr %i.wm, align 8, !tbaa !28
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.cw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.wv = sub i64 4611686018427387903, %i.vw
  %i.ww = icmp ult i64 %i.wv, %i.vx
  br i1 %i.ww, label %bb.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #25
          to label %.noexc581 unwind label %.loopexit.split-lp2079.loopexit.split-lp.loopexit.split-lp, !noalias !118

.noexc581:                                        ; preds = %bb.cx
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.cw
  %i.wx = load ptr, ptr %34, align 8, !tbaa !29, !noalias !118
  %i.wy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef %i.wx, i64 noundef %i.vx)
          to label %.noexc582 unwind label %.loopexit.split-lp2079.loopexit.split-lp.loopexit.split-lp, !noalias !118 ; 5 uses

.noexc582:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.su, ptr %31, align 8, !tbaa !25, !alias.scope !118
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !29 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wy, i64 16 ; 5 uses
  %i.xb = icmp eq ptr %i.wz, %i.xa
  br i1 %i.xb, label %bb.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.cy:                                            ; preds = %.noexc582
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wy, i64 8
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !27 ; 2 uses
  %i.xe = icmp ult i64 %i.xd, 16
  call void @llvm.assume(i1 %i.xe)
  %i.xf = add nuw nsw i64 %i.xd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.su, ptr noundef nonnull align 8 dereferenceable(1) %i.xa, i64 %i.xf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc582
  store ptr %i.wz, ptr %31, align 8, !tbaa !29, !alias.scope !118
  %i.xg = load i64, ptr %i.xa, align 8, !tbaa !28
  store i64 %i.xg, ptr %i.su, align 8, !tbaa !28, !alias.scope !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.cy
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wy, i64 8 ; 2 uses
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !27
  store i64 %i.xi, ptr %i.sv, align 8, !tbaa !27, !alias.scope !118
  store ptr %i.xa, ptr %i.wy, align 8, !tbaa !29
  store i64 0, ptr %i.xh, align 8, !tbaa !27
  store i8 0, ptr %i.xa, align 8, !tbaa !28
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.xj = load ptr, ptr %30, align 8, !tbaa !32   ; 9 uses
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !29 ; 6 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 16 ; 4 uses
  %i.xm = icmp eq ptr %i.xk, %i.xl
  %i.xn = load ptr, ptr %31, align 8, !tbaa !29   ; 6 uses
  %i.xo = icmp eq ptr %i.xn, %i.su                ; 2 uses
  br i1 %i.xm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  br i1 %i.xo, label %bb.cz, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  br i1 %i.xo, label %bb.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.xp = load i64, ptr %i.sv, align 8, !tbaa !27 ; 3 uses
  %i.xq = icmp ult i64 %i.xp, 16
  call void @llvm.assume(i1 %i.xq)
  %.not21.i = icmp eq ptr %31, %i.xj
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.da, !prof !46

bb.da:                                            ; preds = %bb.cz
  switch i64 %i.xp, label %bb.dc [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.db
  ]

bb.db:                                            ; preds = %bb.da
  %i.xr = load i8, ptr %i.xn, align 1, !tbaa !28
  store i8 %i.xr, ptr %i.xk, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.dc:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xk, ptr align 1 %i.xn, i64 %i.xp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.dc, %bb.db, %bb.da
  %i.xs = load i64, ptr %i.sv, align 8, !tbaa !27 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store i64 %i.xs, ptr %i.xt, align 8, !tbaa !27
  %i.xu = load ptr, ptr %i.xj, align 8, !tbaa !29
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 %i.xs
  store i8 0, ptr %i.xv, align 1, !tbaa !28
  %.pre.i584 = load ptr, ptr %31, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store ptr %i.xn, ptr %i.xj, align 8, !tbaa !29
  %i.xx = load i64, ptr %i.sv, align 8, !tbaa !27
  store i64 %i.xx, ptr %i.xw, align 8, !tbaa !27
  %i.xy = load i64, ptr %i.su, align 8, !tbaa !28
  store i64 %i.xy, ptr %i.xl, align 8, !tbaa !28
  br label %bb.de

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.xz = load i64, ptr %i.xl, align 8, !tbaa !28
  store ptr %i.xn, ptr %i.xj, align 8, !tbaa !29
  %i.ya = load i64, ptr %i.sv, align 8, !tbaa !27
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store i64 %i.ya, ptr %i.yb, align 8, !tbaa !27
  %i.yc = load i64, ptr %i.su, align 8, !tbaa !28
  store i64 %i.yc, ptr %i.xl, align 8, !tbaa !28
  %.not.i583 = icmp eq ptr %i.xk, null
  br i1 %.not.i583, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.xk, ptr %31, align 8, !tbaa !29
  store i64 %i.xz, ptr %i.su, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.de:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.su, ptr %31, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.dd, %bb.de
  %i.yd = phi ptr [ %.pre.i584, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.xk, %bb.dd ], [ %i.su, %bb.de ], [ %i.xn, %bb.cz ]
  store i64 0, ptr %i.sv, align 8, !tbaa !27
  store i8 0, ptr %i.yd, align 1, !tbaa !28
  %i.ye = load ptr, ptr %31, align 8, !tbaa !29   ; 2 uses
  %i.yf = icmp eq ptr %i.ye, %i.su
  br i1 %i.yf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.yg = load i64, ptr %i.su, align 8, !tbaa !28
  %i.yh = add i64 %i.yg, 1
  call void @_ZdlPvm(ptr noundef %i.ye, i64 noundef %i.yh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585
  %i.yi = load ptr, ptr %34, align 8, !tbaa !29   ; 2 uses
  %i.yj = icmp eq ptr %i.yi, %i.ss
  br i1 %i.yj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587
  %i.yk = load i64, ptr %i.ss, align 8, !tbaa !28
  %i.yl = add i64 %i.yk, 1
  call void @_ZdlPvm(ptr noundef %i.yi, i64 noundef %i.yl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  %i.ym = load ptr, ptr %32, align 8, !tbaa !29   ; 2 uses
  %i.yn = icmp eq ptr %i.ym, %i.sq
  br i1 %i.yn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590
  %i.yo = load i64, ptr %i.sq, align 8, !tbaa !28
  %i.yp = add i64 %i.yo, 1
  call void @_ZdlPvm(ptr noundef %i.ym, i64 noundef %i.yp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591
  %i.yq = load ptr, ptr %33, align 8, !tbaa !29   ; 2 uses
  %i.yr = icmp eq ptr %i.yq, %i.so
  br i1 %i.yr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593
  %i.ys = load i64, ptr %i.so, align 8, !tbaa !28
  %i.yt = add i64 %i.ys, 1
  call void @_ZdlPvm(ptr noundef %i.yq, i64 noundef %i.yt) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  %i.yu = sext i32 %i.uc to i64
  %i.yv = getelementptr inbounds [8 x i8], ptr @_ZL10colorNames, i64 %i.yu
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !94 ; 2 uses
  %i.yx = load ptr, ptr %30, align 8, !tbaa !32   ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 32
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 40
  %i.za = load i64, ptr %i.yz, align 8, !tbaa !27
  %i.zb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.yw) #21
  %i.zc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.yy, i64 noundef 0, i64 noundef %i.za, ptr noundef nonnull %i.yw, i64 noundef %i.zb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit598 unwind label %bb.ej ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit598: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596
  %i.zd = invoke noundef i64 @_ZN7Imf_3_410IDManifest20ChannelGroupManifest6insertERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(201) %10, ptr noundef nonnull align 8 dereferenceable(24) %30)
          to label %bb.df unwind label %bb.ej     ; 2 uses

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit598
  %i.ze = trunc i64 %i.zd to i32                  ; 5 uses
  store i64 %i.zd, ptr %i.f, align 16
  br i1 %.1193, label %bb.dg, label %bb.el

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21
  %i.zf = load ptr, ptr %30, align 8, !tbaa !32   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !29, !noalias !119
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zf, i64 8
  %i.zi = load i64, ptr %i.zh, align 8, !tbaa !27, !noalias !119 ; 3 uses
  store ptr %i.sw, ptr %38, align 8, !tbaa !25, !alias.scope !120
  store i64 0, ptr %i.sx, align 8, !tbaa !27, !alias.scope !120
  store i8 0, ptr %i.sw, align 8, !tbaa !28, !alias.scope !120
  %i.zj = add i64 %i.zi, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %38, i64 noundef %i.zj)
          to label %bb.dh unwind label %.loopexit.split-lp2084.loopexit.split-lp.loopexit.split-lp

bb.dh:                                            ; preds = %bb.dg
  %i.zk = load i64, ptr %i.sx, align 8, !tbaa !27, !alias.scope !120
  %i.zl = sub i64 4611686018427387903, %i.zk
  %i.zm = icmp ult i64 %i.zl, %i.zi
  br i1 %i.zm, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.dh
  %i.zn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef %i.zg, i64 noundef %i.zi)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit.split-lp2084.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.zo = load i64, ptr %i.sx, align 8, !tbaa !27, !alias.scope !120
  %i.zp = icmp eq i64 %i.zo, 4611686018427387903
  br i1 %i.zp, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.dh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #25
          to label %.cont.i.i unwind label %.loopexit.split-lp2084.loopexit.split-lp.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.zq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit.split-lp2084.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp2084.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.dg, %.invoke.i.i
  %lpad.loopexit.split-lp2992 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zr = load ptr, ptr %38, align 8, !tbaa !29, !alias.scope !120 ; 2 uses
  %i.zs = icmp eq ptr %i.zr, %i.sw
  br i1 %i.zs, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.zt = load ptr, ptr %30, align 8, !tbaa !32   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 40
  %i.zv = load i64, ptr %i.zu, align 8, !tbaa !27, !noalias !121 ; 2 uses
  %i.zw = load i64, ptr %i.sx, align 8, !tbaa !27, !noalias !121
  %i.zx = sub i64 4611686018427387903, %i.zw
  %i.zy = icmp ult i64 %i.zx, %i.zv
  br i1 %i.zy, label %bb.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i599

bb.di:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #25
          to label %.noexc604 unwind label %.loopexit.split-lp2089.loopexit.split-lp.loopexit.split-lp, !noalias !121

.noexc604:                                        ; preds = %bb.di
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i599: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zt, i64 32
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !29, !noalias !121
  %i.aab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef %i.aaa, i64 noundef %i.zv)
          to label %.noexc605 unwind label %.loopexit.split-lp2089.loopexit.split-lp.loopexit.split-lp, !noalias !121 ; 6 uses

.noexc605:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i599
  store ptr %i.sy, ptr %37, align 8, !tbaa !25, !alias.scope !121
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !29 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aab, i64 16 ; 5 uses
  %i.aae = icmp eq ptr %i.aac, %i.aad
  br i1 %i.aae, label %bb.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600

bb.dj:                                            ; preds = %.noexc605
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %i.aag = load i64, ptr %i.aaf, align 8, !tbaa !27 ; 3 uses
  %i.aah = icmp ult i64 %i.aag, 16
  call void @llvm.assume(i1 %i.aah)
  %i.aai = add nuw nsw i64 %i.aag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sy, ptr noundef nonnull align 8 dereferenceable(1) %i.aad, i64 %i.aai, i1 false)
  br label %bb.dk

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600: ; preds = %.noexc605
  store ptr %i.aac, ptr %37, align 8, !tbaa !29, !alias.scope !121
  %i.aaj = load i64, ptr %i.aad, align 8, !tbaa !28
  store i64 %i.aaj, ptr %i.sy, align 8, !tbaa !28, !alias.scope !121
  %.phi.trans.insert.i601 = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %.pre.i602 = load i64, ptr %.phi.trans.insert.i601, align 8, !tbaa !27
  br label %bb.dk

bb.dk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600, %bb.dj
  %i.aak = phi i64 [ %i.aag, %bb.dj ], [ %.pre.i602, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600 ]
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  store i64 %i.aak, ptr %i.sz, align 8, !tbaa !27, !alias.scope !121
  store ptr %i.aad, ptr %i.aab, align 8, !tbaa !29
  store i64 0, ptr %i.aal, align 8, !tbaa !27
  store i8 0, ptr %i.aad, align 8, !tbaa !28
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.aam = load i64, ptr %i.sz, align 8, !tbaa !27, !noalias !122
  %i.aan = icmp eq i64 %i.aam, 4611686018427387903
  br i1 %i.aan, label %bb.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i606

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #25
          to label %.noexc611 unwind label %.loopexit.split-lp2094.loopexit.split-lp.loopexit.split-lp, !noalias !122

.noexc611:                                        ; preds = %bb.dl
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i606: ; preds = %bb.dk
  %i.aao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %.noexc612 unwind label %.loopexit.split-lp2094.loopexit.split-lp.loopexit.split-lp, !noalias !122 ; 6 uses

.noexc612:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i606
  store ptr %i.ta, ptr %36, align 8, !tbaa !25, !alias.scope !122
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !29 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aao, i64 16 ; 5 uses
  %i.aar = icmp eq ptr %i.aap, %i.aaq
  br i1 %i.aar, label %bb.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607

bb.dm:                                            ; preds = %.noexc612
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !27 ; 3 uses
  %i.aau = icmp ult i64 %i.aat, 16
  call void @llvm.assume(i1 %i.aau)
  %i.aav = add nuw nsw i64 %i.aat, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ta, ptr noundef nonnull align 8 dereferenceable(1) %i.aaq, i64 %i.aav, i1 false)
  br label %bb.dn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607: ; preds = %.noexc612
  store ptr %i.aap, ptr %36, align 8, !tbaa !29, !alias.scope !122
  %i.aaw = load i64, ptr %i.aaq, align 8, !tbaa !28
  store i64 %i.aaw, ptr %i.ta, align 8, !tbaa !28, !alias.scope !122
  %.phi.trans.insert.i608 = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %.pre.i609 = load i64, ptr %.phi.trans.insert.i608, align 8, !tbaa !27
  br label %bb.dn

bb.dn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607, %bb.dm
  %i.aax = phi i64 [ %i.aat, %bb.dm ], [ %.pre.i609, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607 ]
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  store i64 %i.aax, ptr %i.tb, align 8, !tbaa !27, !alias.scope !122
  store ptr %i.aaq, ptr %i.aao, align 8, !tbaa !29
  store i64 0, ptr %i.aay, align 8, !tbaa !27
  store i8 0, ptr %i.aaq, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.aaz = icmp ult i32 %i.ze, 10
  br i1 %i.aaz, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.dn, %bb.dt
  %.030.i.i = phi i32 [ %i.abh, %bb.dt ], [ 1, %bb.dn ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.abg, %bb.dt ], [ %i.ze, %bb.dn ] ; 5 uses
  %i.aba = icmp ult i32 %.02329.i.i, 100
  br i1 %i.aba, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %.lr.ph.i.i
  %i.abb = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.dp:                                            ; preds = %.lr.ph.i.i
  %i.abc = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.abc, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.abd = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.dr:                                            ; preds = %bb.dp
  %i.abe = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.abe, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.abf = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.dt:                                            ; preds = %bb.dr
  %i.abg = udiv i32 %.02329.i.i, 10000
  %i.abh = add i32 %.030.i.i, 4                   ; 2 uses
  %i.abi = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.abi, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !84

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.dt, %bb.ds, %bb.dq, %bb.do, %bb.dn
  %.022.i.i = phi i32 [ %i.abf, %bb.ds ], [ %i.abb, %bb.do ], [ %i.abd, %bb.dq ], [ 1, %bb.dn ], [ %i.abh, %bb.dt ]
  %i.abj = zext i32 %.022.i.i to i64
  store ptr %i.tc, ptr %39, align 8, !tbaa !25, !alias.scope !123
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %39, i64 noundef %i.abj, i8 noundef signext 0)
          to label %bb.du unwind label %bb.dx

bb.du:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.abk = load ptr, ptr %39, align 8, !tbaa !29, !alias.scope !123 ; 4 uses
  %i.abl = icmp ugt i32 %i.ze, 99
  br i1 %i.abl, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i614

.lr.ph.preheader.i.i:                             ; preds = %bb.du
  %i.abm = load i64, ptr %i.td, align 8, !tbaa !27, !alias.scope !123
  %i.abn = trunc i64 %i.abm to i32
  %i.abo = add i32 %i.abn, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.abr, %.lr.ph.i2.i ], [ %i.ze, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.acc, %.lr.ph.i2.i ], [ %i.abo, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.abp = urem i32 %.020.i.i, 100
  %i.abq = shl nuw nsw i32 %i.abp, 1
  %i.abr = udiv i32 %.020.i.i, 100                ; 2 uses
  %i.abs = zext nneg i32 %i.abq to i64
  %i.abt = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.abs ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 1
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !28, !noalias !123
  %i.abw = zext i32 %.01819.i.i to i64
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.abw
  store i8 %i.abv, ptr %i.abx, align 1, !tbaa !28
  %i.aby = load i8, ptr %i.abt, align 2, !tbaa !28, !noalias !123
  %i.abz = add i32 %.01819.i.i, -1
  %i.aca = zext i32 %i.abz to i64
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.aca
  store i8 %i.aby, ptr %i.acb, align 1, !tbaa !28
  %i.acc = add i32 %.01819.i.i, -2
  %i.acd = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.acd, label %.lr.ph.i2.i, label %._crit_edge.i.i614, !llvm.loop !85

._crit_edge.i.i614:                               ; preds = %.lr.ph.i2.i, %bb.du
  %.0.lcssa.i.i = phi i32 [ %i.ze, %bb.du ], [ %i.abr, %.lr.ph.i2.i ] ; 3 uses
  %i.ace = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.ace, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %._crit_edge.i.i614
  %i.acf = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.acg = zext nneg i32 %i.acf to i64
  %i.ach = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.acg ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 1
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !28, !noalias !123
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abk, i64 1
  store i8 %i.acj, ptr %i.ack, align 1, !tbaa !28
  %i.acl = load i8, ptr %i.ach, align 2, !tbaa !28, !noalias !123
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.dw:                                            ; preds = %._crit_edge.i.i614
  %i.acm = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.acn = or disjoint i8 %i.acm, 48
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.dx:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.aco = landingpad { ptr, i32 }
          catch ptr null
  %i.acp = extractvalue { ptr, i32 } %i.aco, 0
  call void @__clang_call_terminate(ptr %i.acp) #24
  unreachable

_ZNSt7__cxx119to_stringEj.exit:                   ; preds = %bb.dv, %bb.dw
  %storemerge.i.i = phi i8 [ %i.acn, %bb.dw ], [ %i.acl, %bb.dv ]
  store i8 %storemerge.i.i, ptr %i.abk, align 1, !tbaa !28
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.acq = load i64, ptr %i.tb, align 8, !tbaa !27, !noalias !124 ; 4 uses
  %i.acr = load i64, ptr %i.td, align 8, !tbaa !27, !noalias !124 ; 4 uses
  %i.acs = add i64 %i.acr, %i.acq                 ; 2 uses
  %i.act = load ptr, ptr %36, align 8, !tbaa !29, !noalias !124 ; 2 uses
  %i.acu = icmp eq ptr %i.act, %i.ta
  br i1 %i.acu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i627, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i627: ; preds = %_ZNSt7__cxx119to_stringEj.exit
  %i.acv = icmp ult i64 %i.acq, 16
  call void @llvm.assume(i1 %i.acv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i616

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615: ; preds = %_ZNSt7__cxx119to_stringEj.exit
  %i.acw = load i64, ptr %i.ta, align 8, !tbaa !28, !noalias !124
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i616

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i616: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i627
  %i.acx = phi i64 [ %i.acw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i627 ]
  %i.acy = icmp ugt i64 %i.acs, %i.acx
  br i1 %i.acy, label %bb.dy, label %bb.ea

bb.dy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i616
  %i.acz = load ptr, ptr %39, align 8, !tbaa !29, !noalias !124
  %i.ada = icmp eq ptr %i.acz, %i.tc
  br i1 %i.ada, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i626, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i620

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i626: ; preds = %bb.dy
  %i.adb = icmp ult i64 %i.acr, 16
  call void @llvm.assume(i1 %i.adb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i621

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i620: ; preds = %bb.dy
  %i.adc = load i64, ptr %i.tc, align 8, !tbaa !28, !noalias !124
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i621

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i621: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i620, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i626
  %i.add = phi i64 [ %i.adc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i620 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i626 ]
  %.not.i622 = icmp ugt i64 %i.acs, %i.add
  br i1 %.not.i622, label %bb.ea, label %.critedge.i623

.critedge.i623:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i621
  %i.ade = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %39, i64 noundef 0, i64 noundef 0, ptr noundef %i.act, i64 noundef %i.acq)
          to label %.noexc628 unwind label %.loopexit.split-lp2099.loopexit.split-lp.loopexit.split-lp, !noalias !124 ; 5 uses

.noexc628:                                        ; preds = %.critedge.i623
  store ptr %i.te, ptr %35, align 8, !tbaa !25, !alias.scope !124
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !29 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ade, i64 16 ; 5 uses
  %i.adh = icmp eq ptr %i.adf, %i.adg
  br i1 %i.adh, label %bb.dz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i624

bb.dz:                                            ; preds = %.noexc628
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ade, i64 8
  %i.adj = load i64, ptr %i.adi, align 8, !tbaa !27 ; 2 uses
  %i.adk = icmp ult i64 %i.adj, 16
  call void @llvm.assume(i1 %i.adk)
  %i.adl = add nuw nsw i64 %i.adj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.te, ptr noundef nonnull align 8 dereferenceable(1) %i.adg, i64 %i.adl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i625

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i624: ; preds = %.noexc628
  store ptr %i.adf, ptr %35, align 8, !tbaa !29, !alias.scope !124
  %i.adm = load i64, ptr %i.adg, align 8, !tbaa !28
  store i64 %i.adm, ptr %i.te, align 8, !tbaa !28, !alias.scope !124
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i625

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i625: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i624, %bb.dz
  %i.adn = getelementptr inbounds nuw i8, ptr %i.ade, i64 8 ; 2 uses
  %i.ado = load i64, ptr %i.adn, align 8, !tbaa !27
  store i64 %i.ado, ptr %i.tf, align 8, !tbaa !27, !alias.scope !124
  store ptr %i.adg, ptr %i.ade, align 8, !tbaa !29
  store i64 0, ptr %i.adn, align 8, !tbaa !27
  store i8 0, ptr %i.adg, align 8, !tbaa !28
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit631

bb.ea:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i621, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i616
  %i.adp = sub i64 4611686018427387903, %i.acq
  %i.adq = icmp ult i64 %i.adp, %i.acr
  br i1 %i.adq, label %bb.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i617

bb.eb:                                            ; preds = %bb.ea
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #25
          to label %.noexc629 unwind label %.loopexit.split-lp2099.loopexit.split-lp.loopexit.split-lp, !noalias !124

.noexc629:                                        ; preds = %bb.eb
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i617: ; preds = %bb.ea
  %i.adr = load ptr, ptr %39, align 8, !tbaa !29, !noalias !124
  %i.ads = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef %i.adr, i64 noundef %i.acr)
          to label %.noexc630 unwind label %.loopexit.split-lp2099.loopexit.split-lp.loopexit.split-lp, !noalias !124 ; 5 uses

.noexc630:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i617
  store ptr %i.te, ptr %35, align 8, !tbaa !25, !alias.scope !124
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !29 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ads, i64 16 ; 5 uses
  %i.adv = icmp eq ptr %i.adt, %i.adu
  br i1 %i.adv, label %bb.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i618

bb.ec:                                            ; preds = %.noexc630
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  %i.adx = load i64, ptr %i.adw, align 8, !tbaa !27 ; 2 uses
  %i.ady = icmp ult i64 %i.adx, 16
  call void @llvm.assume(i1 %i.ady)
  %i.adz = add nuw nsw i64 %i.adx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.te, ptr noundef nonnull align 8 dereferenceable(1) %i.adu, i64 %i.adz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i619

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i618: ; preds = %.noexc630
  store ptr %i.adt, ptr %35, align 8, !tbaa !29, !alias.scope !124
  %i.aea = load i64, ptr %i.adu, align 8, !tbaa !28
  store i64 %i.aea, ptr %i.te, align 8, !tbaa !28, !alias.scope !124
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i619

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i619: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i618, %bb.ec
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.ads, i64 8 ; 2 uses
  %i.aec = load i64, ptr %i.aeb, align 8, !tbaa !27
  store i64 %i.aec, ptr %i.tf, align 8, !tbaa !27, !alias.scope !124
  store ptr %i.adu, ptr %i.ads, align 8, !tbaa !29
  store i64 0, ptr %i.aeb, align 8, !tbaa !27
  store i8 0, ptr %i.adu, align 8, !tbaa !28
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit631

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit631: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i619, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i625
  %i.aed = load ptr, ptr %i.tg, align 8, !tbaa !34 ; 7 uses
  %i.aee = load ptr, ptr %i.th, align 8, !tbaa !33
  %.not.i.i632 = icmp eq ptr %i.aed, %i.aee
  br i1 %.not.i.i632, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit631
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aed, i64 16 ; 3 uses
  store ptr %i.aef, ptr %i.aed, align 8, !tbaa !25
  %i.aeg = load ptr, ptr %35, align 8, !tbaa !29  ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, %i.te
  br i1 %i.aeh, label %bb.ee, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.aei = load i64, ptr %i.tf, align 8, !tbaa !27 ; 3 uses
  %i.aej = icmp ult i64 %i.aei, 16
  call void @llvm.assume(i1 %i.aej)
  %i.aek = add nuw nsw i64 %i.aei, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aef, ptr noundef nonnull align 8 dereferenceable(1) %i.te, i64 %i.aek, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ed
  store ptr %i.aeg, ptr %i.aed, align 8, !tbaa !29
  %i.ael = load i64, ptr %i.te, align 8, !tbaa !28
  store i64 %i.ael, ptr %i.aef, align 8, !tbaa !28
  %.pre = load i64, ptr %i.tf, align 8, !tbaa !27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aem = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aei, %bb.ee ]
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aed, i64 8
  store i64 %i.aem, ptr %i.aen, align 8, !tbaa !27
  store ptr %i.te, ptr %35, align 8, !tbaa !29
  store i64 0, ptr %i.tf, align 8, !tbaa !27
  store i8 0, ptr %i.te, align 8, !tbaa !28
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aed, i64 32
  store ptr %i.aeo, ptr %i.tg, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636

bb.ef:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit631
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.aed, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.ek

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.ef
  %.pre2357 = load ptr, ptr %35, align 8, !tbaa !29 ; 2 uses
  %i.aep = icmp eq ptr %.pre2357, %i.te
  br i1 %i.aep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.aeq = load i64, ptr %i.te, align 8, !tbaa !28
  %i.aer = add i64 %i.aeq, 1
  call void @_ZdlPvm(ptr noundef %.pre2357, i64 noundef %i.aer) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634
  %i.aes = load ptr, ptr %39, align 8, !tbaa !29  ; 2 uses
  %i.aet = icmp eq ptr %i.aes, %i.tc
  br i1 %i.aet, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636
  %i.aeu = load i64, ptr %i.tc, align 8, !tbaa !28
  %i.aev = add i64 %i.aeu, 1
  call void @_ZdlPvm(ptr noundef %i.aes, i64 noundef %i.aev) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  %i.aew = load ptr, ptr %36, align 8, !tbaa !29  ; 2 uses
  %i.aex = icmp eq ptr %i.aew, %i.ta
  br i1 %i.aex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639
  %i.aey = load i64, ptr %i.ta, align 8, !tbaa !28
  %i.aez = add i64 %i.aey, 1
  call void @_ZdlPvm(ptr noundef %i.aew, i64 noundef %i.aez) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640
  %i.afa = load ptr, ptr %37, align 8, !tbaa !29  ; 2 uses
  %i.afb = icmp eq ptr %i.afa, %i.sy
  br i1 %i.afb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i643

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i643: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642
  %i.afc = load i64, ptr %i.sy, align 8, !tbaa !28
  %i.afd = add i64 %i.afc, 1
  call void @_ZdlPvm(ptr noundef %i.afa, i64 noundef %i.afd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i643
  %i.afe = load ptr, ptr %38, align 8, !tbaa !29  ; 2 uses
  %i.aff = icmp eq ptr %i.afe, %i.sw
  br i1 %i.aff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i646

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i646: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645
  %i.afg = load i64, ptr %i.sw, align 8, !tbaa !28
  %i.afh = add i64 %i.afg, 1
  call void @_ZdlPvm(ptr noundef %i.afe, i64 noundef %i.afh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i646
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  br label %bb.el

bb.eg:                                            ; preds = %bb.ck
  %i.afi = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.eh:                                            ; preds = %.noexc.i566
  %i.afj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657

.loopexit.split-lp2074.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.co
  %lpad.loopexit.split-lp2986 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654

bb.ei:                                            ; preds = %.noexc.i574
  %i.afk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651

.loopexit.split-lp2079.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %.critedge.i, %bb.cx
  %lpad.loopexit.split-lp2989 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afl = load ptr, ptr %34, align 8, !tbaa !29  ; 2 uses
  %i.afm = icmp eq ptr %i.afl, %i.ss
  br i1 %i.afm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649: ; preds = %.loopexit.split-lp2079.loopexit.split-lp.loopexit.split-lp
  %i.afn = load i64, ptr %i.ss, align 8, !tbaa !28
  %i.afo = add i64 %i.afn, 1
  call void @_ZdlPvm(ptr noundef %i.afl, i64 noundef %i.afo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651: ; preds = %.loopexit.split-lp2079.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649, %bb.ei
  %.pn347 = phi { ptr, i32 } [ %i.afk, %bb.ei ], [ %lpad.loopexit.split-lp2989, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649 ], [ %lpad.loopexit.split-lp2989, %.loopexit.split-lp2079.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  %i.afp = load ptr, ptr %32, align 8, !tbaa !29  ; 2 uses
  %i.afq = icmp eq ptr %i.afp, %i.sq
  br i1 %i.afq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651
  %i.afr = load i64, ptr %i.sq, align 8, !tbaa !28
  %i.afs = add i64 %i.afr, 1
  call void @_ZdlPvm(ptr noundef %i.afp, i64 noundef %i.afs) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651, %.loopexit.split-lp2074.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652
  %.pn347.pn = phi { ptr, i32 } [ %.pn347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652 ], [ %lpad.loopexit.split-lp2986, %.loopexit.split-lp2074.loopexit.split-lp.loopexit.split-lp ], [ %.pn347, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651 ] ; 2 uses
  %i.aft = load ptr, ptr %33, align 8, !tbaa !29  ; 2 uses
  %i.afu = icmp eq ptr %i.aft, %i.so
  br i1 %i.afu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654
  %i.afv = load i64, ptr %i.so, align 8, !tbaa !28
  %i.afw = add i64 %i.afv, 1
  call void @_ZdlPvm(ptr noundef %i.aft, i64 noundef %i.afw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655, %bb.eh
  %.pn347.pn.pn = phi { ptr, i32 } [ %i.afj, %bb.eh ], [ %.pn347.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655 ], [ %.pn347.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
end_hunk_0
begin_hunk_1_@main:bb.a
bb.ej:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit598
  %i.afx = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

.loopexit.split-lp2089.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i599, %bb.di
  %lpad.loopexit.split-lp2995 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669

.loopexit.split-lp2094.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i606, %bb.dl
  %lpad.loopexit.split-lp2998 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666

.loopexit.split-lp2099.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i617, %.critedge.i623, %bb.eb
  %lpad.loopexit.split-lp3001 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660

bb.ek:                                            ; preds = %bb.ef
  %i.afy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afz = load ptr, ptr %35, align 8, !tbaa !29  ; 2 uses
  %i.aga = icmp eq ptr %i.afz, %i.te
  br i1 %i.aga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658: ; preds = %bb.ek
  %i.agb = load i64, ptr %i.te, align 8, !tbaa !28
  %i.agc = add i64 %i.agb, 1
  call void @_ZdlPvm(ptr noundef %i.afz, i64 noundef %i.agc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660: ; preds = %bb.ek, %.loopexit.split-lp2099.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658
  %.pn351 = phi { ptr, i32 } [ %i.afy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658 ], [ %lpad.loopexit.split-lp3001, %.loopexit.split-lp2099.loopexit.split-lp.loopexit.split-lp ], [ %i.afy, %bb.ek ] ; 2 uses
  %i.agd = load ptr, ptr %39, align 8, !tbaa !29  ; 2 uses
  %i.age = icmp eq ptr %i.agd, %i.tc
  br i1 %i.age, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i661

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i661: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660
  %i.agf = load i64, ptr %i.tc, align 8, !tbaa !28
  %i.agg = add i64 %i.agf, 1
  call void @_ZdlPvm(ptr noundef %i.agd, i64 noundef %i.agg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i661
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  %i.agh = load ptr, ptr %36, align 8, !tbaa !29  ; 2 uses
  %i.agi = icmp eq ptr %i.agh, %i.ta
  br i1 %i.agi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i664

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i664: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663
  %i.agj = load i64, ptr %i.ta, align 8, !tbaa !28
  %i.agk = add i64 %i.agj, 1
  call void @_ZdlPvm(ptr noundef %i.agh, i64 noundef %i.agk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663, %.loopexit.split-lp2094.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i664
  %.pn351.pn = phi { ptr, i32 } [ %.pn351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i664 ], [ %lpad.loopexit.split-lp2998, %.loopexit.split-lp2094.loopexit.split-lp.loopexit.split-lp ], [ %.pn351, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663 ] ; 2 uses
  %i.agl = load ptr, ptr %37, align 8, !tbaa !29  ; 2 uses
  %i.agm = icmp eq ptr %i.agl, %i.sy
  br i1 %i.agm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666
  %i.agn = load i64, ptr %i.sy, align 8, !tbaa !28
  %i.ago = add i64 %i.agn, 1
  call void @_ZdlPvm(ptr noundef %i.agl, i64 noundef %i.ago) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666, %.loopexit.split-lp2089.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667
  %.pn351.pn.pn = phi { ptr, i32 } [ %.pn351.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667 ], [ %lpad.loopexit.split-lp2995, %.loopexit.split-lp2089.loopexit.split-lp.loopexit.split-lp ], [ %.pn351.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666 ] ; 2 uses
  %i.agp = load ptr, ptr %38, align 8, !tbaa !29  ; 2 uses
  %i.agq = icmp eq ptr %i.agp, %i.sw
  br i1 %i.agq, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669, %.loopexit.split-lp2084.loopexit.split-lp.loopexit.split-lp
  %.sink = phi ptr [ %i.zr, %.loopexit.split-lp2084.loopexit.split-lp.loopexit.split-lp ], [ %i.agp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669 ]
  %.pn351.pn.pn.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp2992, %.loopexit.split-lp2084.loopexit.split-lp.loopexit.split-lp ], [ %.pn351.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669 ]
  %i.agr = load i64, ptr %i.sw, align 8, !tbaa !28
  %i.ags = add i64 %i.agr, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ags) #23
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669, %.loopexit.split-lp2084.loopexit.split-lp.loopexit.split-lp
  %.pn351.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp2992, %.loopexit.split-lp2084.loopexit.split-lp.loopexit.split-lp ], [ %.pn351.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669 ], [ %.pn351.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  br label %bb.en

bb.el:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648, %bb.df
  %i.agt = load ptr, ptr %30, align 8, !tbaa !32  ; 3 uses
  %i.agu = load ptr, ptr %i.sn, align 8, !tbaa !34 ; 2 uses
  %.not4.i.i.i673 = icmp eq ptr %i.agt, %i.agu
  br i1 %.not4.i.i.i673, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i681, label %.lr.ph.i.i.i674

.lr.ph.i.i.i674:                                  ; preds = %bb.el, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i677
  %.05.i.i.i675 = phi ptr [ %i.aha, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i677 ], [ %i.agt, %bb.el ] ; 3 uses
  %i.agv = load ptr, ptr %.05.i.i.i675, align 8, !tbaa !29 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.05.i.i.i675, i64 16 ; 2 uses
  %i.agx = icmp eq ptr %i.agv, %i.agw
  br i1 %i.agx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i677, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i676

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i676: ; preds = %.lr.ph.i.i.i674
  %i.agy = load i64, ptr %i.agw, align 8, !tbaa !28
  %i.agz = add i64 %i.agy, 1
  call void @_ZdlPvm(ptr noundef %i.agv, i64 noundef %i.agz) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i677

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i677: ; preds = %.lr.ph.i.i.i674, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i676
  %i.aha = getelementptr inbounds nuw i8, ptr %.05.i.i.i675, i64 32 ; 2 uses
  %.not.i.i.i678 = icmp eq ptr %i.aha, %i.agu
  br i1 %.not.i.i.i678, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i679, label %.lr.ph.i.i.i674, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i679: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i677
  %.pr.i680 = load ptr, ptr %30, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i681

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i681: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i679, %bb.el
  %i.ahb = phi ptr [ %.pr.i680, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i679 ], [ %i.agt, %bb.el ] ; 3 uses
  %.not.i.i1.i682 = icmp eq ptr %i.ahb, null
  br i1 %.not.i.i1.i682, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit684, label %bb.em

bb.em:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i681
  %i.ahc = load ptr, ptr %i.sm, align 8, !tbaa !33
  %i.ahd = ptrtoint ptr %i.ahc to i64
  %i.ahe = ptrtoint ptr %i.ahb to i64
  %i.ahf = sub i64 %i.ahd, %i.ahe
  call void @_ZdlPvm(ptr noundef nonnull %i.ahb, i64 noundef %i.ahf) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit684

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit684: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i681, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %bb.fo

bb.en:                                            ; preds = %bb.ej, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657
  %.pn351.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn347.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657 ], [ %i.afx, %bb.ej ], [ %.pn351.pn.pn.pn, %.body ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #21
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.eg
  %.pn351.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn351.pn.pn.pn.pn.pn, %bb.en ], [ %i.afi, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit930

bb.ep:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  %i.ahg = sext i32 %i.ua to i64
  %i.ahh = getelementptr inbounds [8 x i8], ptr @_ZL10shapeNames, i64 %i.ahg
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !94 ; 3 uses
  store ptr %i.sb, ptr %42, align 8, !tbaa !25
  %i.ahj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ahi) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 %i.ahj, ptr %i.c, align 8, !tbaa !116
  %i.ahk = icmp ugt i64 %i.ahj, 15
  br i1 %i.ahk, label %.noexc.i686, label %._crit_edge.i.i685

.noexc.i686:                                      ; preds = %bb.ep
  %i.ahl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc688 unwind label %bb.fj ; 2 uses

.noexc688:                                        ; preds = %.noexc.i686
  store ptr %i.ahl, ptr %42, align 8, !tbaa !29
  %i.ahm = load i64, ptr %i.c, align 8, !tbaa !116
  store i64 %i.ahm, ptr %i.sb, align 8, !tbaa !28
  br label %._crit_edge.i.i685

._crit_edge.i.i685:                               ; preds = %.noexc688, %bb.ep
  %i.ahn = phi ptr [ %i.ahl, %.noexc688 ], [ %i.sb, %bb.ep ] ; 2 uses
  switch i64 %i.ahj, label %bb.er [
    i64 1, label %bb.eq
    i64 0, label %bb.es
  ]

bb.eq:                                            ; preds = %._crit_edge.i.i685
  %i.aho = load i8, ptr %i.ahi, align 1, !tbaa !28
  store i8 %i.aho, ptr %i.ahn, align 1, !tbaa !28
  br label %bb.es

bb.er:                                            ; preds = %._crit_edge.i.i685
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ahn, ptr nonnull align 1 %i.ahi, i64 %i.ahj, i1 false)
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %._crit_edge.i.i685
  %i.ahp = load i64, ptr %i.c, align 8, !tbaa !116 ; 2 uses
  store i64 %i.ahp, ptr %i.sc, align 8, !tbaa !27
  %i.ahq = load ptr, ptr %42, align 8, !tbaa !29
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 %i.ahp
  store i8 0, ptr %i.ahr, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.ahs = load i64, ptr %i.sc, align 8, !tbaa !27, !noalias !125
  %i.aht = icmp eq i64 %i.ahs, 4611686018427387903
  br i1 %i.aht, label %bb.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i690

bb.et:                                            ; preds = %bb.es
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #25
          to label %.noexc695 unwind label %.loopexit.split-lp2064.loopexit.split-lp.loopexit.split-lp, !noalias !125

.noexc695:                                        ; preds = %bb.et
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i690: ; preds = %bb.es
  %i.ahu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %.noexc696 unwind label %.loopexit.split-lp2064.loopexit.split-lp.loopexit.split-lp, !noalias !125 ; 6 uses

.noexc696:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i690
  store ptr %i.sd, ptr %41, align 8, !tbaa !25, !alias.scope !125
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !29 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahu, i64 16 ; 5 uses
  %i.ahx = icmp eq ptr %i.ahv, %i.ahw
  br i1 %i.ahx, label %bb.eu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i691

bb.eu:                                            ; preds = %.noexc696
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  %i.ahz = load i64, ptr %i.ahy, align 8, !tbaa !27 ; 3 uses
  %i.aia = icmp ult i64 %i.ahz, 16
  call void @llvm.assume(i1 %i.aia)
  %i.aib = add nuw nsw i64 %i.ahz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sd, ptr noundef nonnull align 8 dereferenceable(1) %i.ahw, i64 %i.aib, i1 false)
  br label %bb.ev

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i691: ; preds = %.noexc696
  store ptr %i.ahv, ptr %41, align 8, !tbaa !29, !alias.scope !125
  %i.aic = load i64, ptr %i.ahw, align 8, !tbaa !28
  store i64 %i.aic, ptr %i.sd, align 8, !tbaa !28, !alias.scope !125
  %.phi.trans.insert.i692 = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  %.pre.i693 = load i64, ptr %.phi.trans.insert.i692, align 8, !tbaa !27
  br label %bb.ev

bb.ev:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i691, %bb.eu
  %i.aid = phi i64 [ %i.ahz, %bb.eu ], [ %.pre.i693, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i691 ]
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  store i64 %i.aid, ptr %i.se, align 8, !tbaa !27, !alias.scope !125
  store ptr %i.ahw, ptr %i.ahu, align 8, !tbaa !29
  store i64 0, ptr %i.aie, align 8, !tbaa !27
  store i8 0, ptr %i.ahw, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21
  %i.aif = sext i32 %i.ub to i64
  %i.aig = getelementptr inbounds [8 x i8], ptr @_ZL9sizeNames, i64 %i.aif
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !94 ; 3 uses
  store ptr %i.sf, ptr %43, align 8, !tbaa !25
  %i.aii = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aih) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.aii, ptr %i.b, align 8, !tbaa !116
  %i.aij = icmp ugt i64 %i.aii, 15
  br i1 %i.aij, label %.noexc.i699, label %._crit_edge.i.i698

.noexc.i699:                                      ; preds = %bb.ev
  %i.aik = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc701 unwind label %bb.fk ; 2 uses

.noexc701:                                        ; preds = %.noexc.i699
  store ptr %i.aik, ptr %43, align 8, !tbaa !29
  %i.ail = load i64, ptr %i.b, align 8, !tbaa !116
  store i64 %i.ail, ptr %i.sf, align 8, !tbaa !28
  br label %._crit_edge.i.i698

._crit_edge.i.i698:                               ; preds = %.noexc701, %bb.ev
  %i.aim = phi ptr [ %i.aik, %.noexc701 ], [ %i.sf, %bb.ev ] ; 2 uses
  switch i64 %i.aii, label %bb.ex [
    i64 1, label %bb.ew
    i64 0, label %bb.ey
  ]

bb.ew:                                            ; preds = %._crit_edge.i.i698
  %i.ain = load i8, ptr %i.aih, align 1, !tbaa !28
  store i8 %i.ain, ptr %i.aim, align 1, !tbaa !28
  br label %bb.ey

bb.ex:                                            ; preds = %._crit_edge.i.i698
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aim, ptr nonnull align 1 %i.aih, i64 %i.aii, i1 false)
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew, %._crit_edge.i.i698
  %i.aio = load i64, ptr %i.b, align 8, !tbaa !116 ; 2 uses
  store i64 %i.aio, ptr %i.sg, align 8, !tbaa !27
  %i.aip = load ptr, ptr %43, align 8, !tbaa !29
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 %i.aio
  store i8 0, ptr %i.aiq, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.air = load i64, ptr %i.se, align 8, !tbaa !27, !noalias !126 ; 4 uses
  %i.ais = load i64, ptr %i.sg, align 8, !tbaa !27, !noalias !126 ; 4 uses
  %i.ait = add i64 %i.ais, %i.air                 ; 2 uses
  %i.aiu = load ptr, ptr %41, align 8, !tbaa !29, !noalias !126 ; 2 uses
  %i.aiv = icmp eq ptr %i.aiu, %i.sd
  br i1 %i.aiv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i715, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i703

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i715: ; preds = %bb.ey
  %i.aiw = icmp ult i64 %i.air, 16
  call void @llvm.assume(i1 %i.aiw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i704

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i703: ; preds = %bb.ey
  %i.aix = load i64, ptr %i.sd, align 8, !tbaa !28, !noalias !126
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i704

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i704: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i703, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i715
  %i.aiy = phi i64 [ %i.aix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i703 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i715 ]
  %i.aiz = icmp ugt i64 %i.ait, %i.aiy
  br i1 %i.aiz, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i704
  %i.aja = load ptr, ptr %43, align 8, !tbaa !29, !noalias !126
  %i.ajb = icmp eq ptr %i.aja, %i.sf
  br i1 %i.ajb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i714, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i708

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i714: ; preds = %bb.ez
  %i.ajc = icmp ult i64 %i.ais, 16
  call void @llvm.assume(i1 %i.ajc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i709

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i708: ; preds = %bb.ez
  %i.ajd = load i64, ptr %i.sf, align 8, !tbaa !28, !noalias !126
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i709

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i709: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i708, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i714
  %i.aje = phi i64 [ %i.ajd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i708 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i714 ]
  %.not.i710 = icmp ugt i64 %i.ait, %i.aje
  br i1 %.not.i710, label %bb.fb, label %.critedge.i711

.critedge.i711:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i709
  %i.ajf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %43, i64 noundef 0, i64 noundef 0, ptr noundef %i.aiu, i64 noundef %i.air)
          to label %.noexc716 unwind label %.loopexit.split-lp2069.loopexit.split-lp.loopexit.split-lp, !noalias !126 ; 5 uses

.noexc716:                                        ; preds = %.critedge.i711
  store ptr %i.sh, ptr %40, align 8, !tbaa !25, !alias.scope !126
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !29 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajf, i64 16 ; 5 uses
  %i.aji = icmp eq ptr %i.ajg, %i.ajh
  br i1 %i.aji, label %bb.fa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i712

bb.fa:                                            ; preds = %.noexc716
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  %i.ajk = load i64, ptr %i.ajj, align 8, !tbaa !27 ; 2 uses
  %i.ajl = icmp ult i64 %i.ajk, 16
  call void @llvm.assume(i1 %i.ajl)
  %i.ajm = add nuw nsw i64 %i.ajk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sh, ptr noundef nonnull align 8 dereferenceable(1) %i.ajh, i64 %i.ajm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i713

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i712: ; preds = %.noexc716
  store ptr %i.ajg, ptr %40, align 8, !tbaa !29, !alias.scope !126
  %i.ajn = load i64, ptr %i.ajh, align 8, !tbaa !28
  store i64 %i.ajn, ptr %i.sh, align 8, !tbaa !28, !alias.scope !126
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i713

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i713: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i712, %bb.fa
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8 ; 2 uses
  %i.ajp = load i64, ptr %i.ajo, align 8, !tbaa !27
  store i64 %i.ajp, ptr %i.si, align 8, !tbaa !27, !alias.scope !126
  store ptr %i.ajh, ptr %i.ajf, align 8, !tbaa !29
  store i64 0, ptr %i.ajo, align 8, !tbaa !27
  store i8 0, ptr %i.ajh, align 8, !tbaa !28
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit719

bb.fb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i709, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i704
  %i.ajq = sub i64 4611686018427387903, %i.air
  %i.ajr = icmp ult i64 %i.ajq, %i.ais
  br i1 %i.ajr, label %bb.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i705

bb.fc:                                            ; preds = %bb.fb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #25
          to label %.noexc717 unwind label %.loopexit.split-lp2069.loopexit.split-lp.loopexit.split-lp, !noalias !126

.noexc717:                                        ; preds = %bb.fc
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i705: ; preds = %bb.fb
  %i.ajs = load ptr, ptr %43, align 8, !tbaa !29, !noalias !126
  %i.ajt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef %i.ajs, i64 noundef %i.ais)
          to label %.noexc718 unwind label %.loopexit.split-lp2069.loopexit.split-lp.loopexit.split-lp, !noalias !126 ; 5 uses

.noexc718:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i705
  store ptr %i.sh, ptr %40, align 8, !tbaa !25, !alias.scope !126
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !29 ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajt, i64 16 ; 5 uses
  %i.ajw = icmp eq ptr %i.aju, %i.ajv
  br i1 %i.ajw, label %bb.fd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i706

bb.fd:                                            ; preds = %.noexc718
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  %i.ajy = load i64, ptr %i.ajx, align 8, !tbaa !27 ; 2 uses
  %i.ajz = icmp ult i64 %i.ajy, 16
  call void @llvm.assume(i1 %i.ajz)
  %i.aka = add nuw nsw i64 %i.ajy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sh, ptr noundef nonnull align 8 dereferenceable(1) %i.ajv, i64 %i.aka, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i707

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i706: ; preds = %.noexc718
  store ptr %i.aju, ptr %40, align 8, !tbaa !29, !alias.scope !126
  %i.akb = load i64, ptr %i.ajv, align 8, !tbaa !28
  store i64 %i.akb, ptr %i.sh, align 8, !tbaa !28, !alias.scope !126
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i707

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i707: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i706, %bb.fd
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8 ; 2 uses
  %i.akd = load i64, ptr %i.akc, align 8, !tbaa !27
  store i64 %i.akd, ptr %i.si, align 8, !tbaa !27, !alias.scope !126
  store ptr %i.ajv, ptr %i.ajt, align 8, !tbaa !29
  store i64 0, ptr %i.akc, align 8, !tbaa !27
  store i8 0, ptr %i.ajv, align 8, !tbaa !28
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit719

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit719: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i707, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i713
  %i.ake = invoke noundef i64 @_ZN7Imf_3_410IDManifest20ChannelGroupManifest6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(201) %10, ptr noundef nonnull align 8 dereferenceable(32) %40)
          to label %bb.fe unwind label %bb.fl

bb.fe:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit719
  %i.akf = load ptr, ptr %40, align 8, !tbaa !29  ; 2 uses
  %i.akg = icmp eq ptr %i.akf, %i.sh
  br i1 %i.akg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720: ; preds = %bb.fe
  %i.akh = load i64, ptr %i.sh, align 8, !tbaa !28
  %i.aki = add i64 %i.akh, 1
  call void @_ZdlPvm(ptr noundef %i.akf, i64 noundef %i.aki) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720
  %i.akj = load ptr, ptr %43, align 8, !tbaa !29  ; 2 uses
  %i.akk = icmp eq ptr %i.akj, %i.sf
  br i1 %i.akk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722
  %i.akl = load i64, ptr %i.sf, align 8, !tbaa !28
  %i.akm = add i64 %i.akl, 1
  call void @_ZdlPvm(ptr noundef %i.akj, i64 noundef %i.akm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  %i.akn = load ptr, ptr %41, align 8, !tbaa !29  ; 2 uses
  %i.ako = icmp eq ptr %i.akn, %i.sd
  br i1 %i.ako, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit728, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i726

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i726: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725
  %i.akp = load i64, ptr %i.sd, align 8, !tbaa !28
  %i.akq = add i64 %i.akp, 1
  call void @_ZdlPvm(ptr noundef %i.akn, i64 noundef %i.akq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit728

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit728: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i726
  %i.akr = load ptr, ptr %42, align 8, !tbaa !29  ; 2 uses
  %i.aks = icmp eq ptr %i.akr, %i.sb
  br i1 %i.aks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i729

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i729: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit728
  %i.akt = load i64, ptr %i.sb, align 8, !tbaa !28
  %i.aku = add i64 %i.akt, 1
  call void @_ZdlPvm(ptr noundef %i.akr, i64 noundef %i.aku) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit728, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i729
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  store i64 %i.ake, ptr %i.f, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #21
  %i.akv = sext i32 %i.uc to i64
  %i.akw = getelementptr inbounds [8 x i8], ptr @_ZL10colorNames, i64 %i.akv
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !94 ; 3 uses
  store ptr %i.sj, ptr %44, align 8, !tbaa !25
  %i.aky = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.akx) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.aky, ptr %i.a, align 8, !tbaa !116
  %i.akz = icmp ugt i64 %i.aky, 15
  br i1 %i.akz, label %.noexc.i733, label %._crit_edge.i.i732

.noexc.i733:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731
  %i.ala = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc735 unwind label %bb.fm ; 2 uses

.noexc735:                                        ; preds = %.noexc.i733
  store ptr %i.ala, ptr %44, align 8, !tbaa !29
  %i.alb = load i64, ptr %i.a, align 8, !tbaa !116
  store i64 %i.alb, ptr %i.sj, align 8, !tbaa !28
  br label %._crit_edge.i.i732

._crit_edge.i.i732:                               ; preds = %.noexc735, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731
  %i.alc = phi ptr [ %i.ala, %.noexc735 ], [ %i.sj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731 ] ; 2 uses
  switch i64 %i.aky, label %bb.fg [
    i64 1, label %bb.ff
    i64 0, label %bb.fh
  ]

bb.ff:                                            ; preds = %._crit_edge.i.i732
  %i.ald = load i8, ptr %i.akx, align 1, !tbaa !28
  store i8 %i.ald, ptr %i.alc, align 1, !tbaa !28
  br label %bb.fh

bb.fg:                                            ; preds = %._crit_edge.i.i732
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alc, ptr nonnull align 1 %i.akx, i64 %i.aky, i1 false)
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %._crit_edge.i.i732
  %i.ale = load i64, ptr %i.a, align 8, !tbaa !116 ; 2 uses
  store i64 %i.ale, ptr %i.sk, align 8, !tbaa !27
  %i.alf = load ptr, ptr %44, align 8, !tbaa !29
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 %i.ale
  store i8 0, ptr %i.alg, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.alh = invoke noundef i64 @_ZN7Imf_3_410IDManifest20ChannelGroupManifest6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(201) %11, ptr noundef nonnull align 8 dereferenceable(32) %44)
          to label %bb.fi unwind label %bb.fn

bb.fi:                                            ; preds = %bb.fh
  %i.ali = load ptr, ptr %44, align 8, !tbaa !29  ; 2 uses
  %i.alj = icmp eq ptr %i.ali, %i.sj
  br i1 %i.alj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i737

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i737: ; preds = %bb.fi
  %i.alk = load i64, ptr %i.sj, align 8, !tbaa !28
  %i.all = add i64 %i.alk, 1
  call void @_ZdlPvm(ptr noundef %i.ali, i64 noundef %i.all) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739: ; preds = %bb.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i737
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  store i64 %i.alh, ptr %i.sl, align 8
  br label %bb.fo

bb.fj:                                            ; preds = %.noexc.i686
  %i.alm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751

.loopexit.split-lp2064.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i690, %bb.et
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748

bb.fk:                                            ; preds = %.noexc.i699
  %i.aln = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745

.loopexit.split-lp2069.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i705, %.critedge.i711, %bb.fc
  %lpad.loopexit.split-lp2983 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742

bb.fl:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit719
  %i.alo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alp = load ptr, ptr %40, align 8, !tbaa !29  ; 2 uses
  %i.alq = icmp eq ptr %i.alp, %i.sh
  br i1 %i.alq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740: ; preds = %bb.fl
  %i.alr = load i64, ptr %i.sh, align 8, !tbaa !28
  %i.als = add i64 %i.alr, 1
  call void @_ZdlPvm(ptr noundef %i.alp, i64 noundef %i.als) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742: ; preds = %bb.fl, %.loopexit.split-lp2069.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740
  %.pn339 = phi { ptr, i32 } [ %i.alo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740 ], [ %lpad.loopexit.split-lp2983, %.loopexit.split-lp2069.loopexit.split-lp.loopexit.split-lp ], [ %i.alo, %bb.fl ] ; 2 uses
  %i.alt = load ptr, ptr %43, align 8, !tbaa !29  ; 2 uses
  %i.alu = icmp eq ptr %i.alt, %i.sf
  br i1 %i.alu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i743

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i743: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742
  %i.alv = load i64, ptr %i.sf, align 8, !tbaa !28
  %i.alw = add i64 %i.alv, 1
  call void @_ZdlPvm(ptr noundef %i.alt, i64 noundef %i.alw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i743, %bb.fk
  %.pn339.pn = phi { ptr, i32 } [ %i.aln, %bb.fk ], [ %.pn339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i743 ], [ %.pn339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  %i.alx = load ptr, ptr %41, align 8, !tbaa !29  ; 2 uses
  %i.aly = icmp eq ptr %i.alx, %i.sd
  br i1 %i.aly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i746
end_hunk_1
begin_hunk_2_@main:bb.a

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !tbaa !44
  store i32 4096, ptr %i.tn, align 4, !tbaa !45
  %i.amp = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %bb.ft unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.amq = sitofp i32 %i.amp to float
  %i.amr = fmul nnan float %i.amq, 5.000000e-01   ; 2 uses
  %i.ams = insertelement <2 x i32> poison, i32 %i.amn, i64 0
  %i.amt = insertelement <2 x i32> %i.ams, i32 %i.amo, i64 1
  %i.amu = sitofp <2 x i32> %i.amt to <2 x float>
  %i.amv = insertelement <2 x i32> poison, i32 %i.aml, i64 0
  %i.amw = insertelement <2 x i32> %i.amv, i32 %i.amm, i64 1
  %i.amx = sitofp <2 x i32> %i.amw to <2 x double>
  %i.amy = fmul <2 x float> %i.tt, %i.amu
  %i.amz = fpext <2 x float> %i.amy to <2 x double>
  %i.ana = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tr, <2 x double> %i.amx, <2 x double> %i.amz) ; 2 uses
  %i.anb = extractelement <2 x double> %i.ana, i64 0
  %i.anc = fptrunc double %i.anb to float         ; 2 uses
  %i.and = extractelement <2 x double> %i.ana, i64 1
  %i.ane = fptrunc double %i.and to float         ; 2 uses
  %i.anf = icmp eq i32 %i.ua, 0
  br i1 %i.anf, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  invoke void @_Z8drawBlobRSt6vectorIS_I5RgbazSaIS0_EESaIS2_EEiifffiiPKj(ptr noundef nonnull align 8 dereferenceable(24) %28, i32 noundef %.1195, i32 noundef %.1197, float noundef %i.anc, float noundef %i.ane, float noundef %i.amr, i32 noundef %i.ub, i32 noundef %i.uc, ptr noundef nonnull %i.f)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fv:                                            ; preds = %bb.ft
  invoke void @_Z10drawCircleRSt6vectorIS_I5RgbazSaIS0_EESaIS2_EEiifffiiPKj(ptr noundef nonnull align 8 dereferenceable(24) %28, i32 noundef %.1195, i32 noundef %.1197, float noundef %i.anc, float noundef %i.ane, float noundef %i.amr, i32 noundef %i.ub, i32 noundef %i.uc, ptr noundef nonnull %i.f)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.ang = add nuw nsw i32 %.01872328, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.ang, %.1199
  br i1 %exitcond.not, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, label %bb.cg, !llvm.loop !92

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %.noexc552
  %i.anh = getelementptr i8, ptr %i.tv, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.tx, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.anh, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !42
  br label %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %.noexc552
  %i.ani = shl nuw nsw i64 %i.rl, 3               ; 10 uses
  %i.anj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc769 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit928.thread ; 15 uses

.noexc769:                                        ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.ank = getelementptr inbounds nuw [8 x i8], ptr %i.anj, i64 %i.rl ; 11 uses
  store ptr null, ptr %i.anj, align 8, !tbaa !94
  br i1 %i.ty, label %bb.fx, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc769
  %i.anl = getelementptr i8, ptr %i.anj, i64 8
  %.idx.i.i.i.i.i.i.i766 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.anl, i8 0, i64 %.idx.i.i.i.i.i.i.i766, i1 false), !tbaa !94
  br label %bb.fx

bb.fx:                                            ; preds = %.noexc769, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.anm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc777 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit926.thread ; 14 uses

.noexc777:                                        ; preds = %bb.fx
  %i.ann = getelementptr inbounds nuw [8 x i8], ptr %i.anm, i64 %i.rl ; 10 uses
  store ptr null, ptr %i.anm, align 8, !tbaa !94
  br i1 %i.ty, label %bb.fy, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i772

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i772: ; preds = %.noexc777
  %i.ano = getelementptr i8, ptr %i.anm, i64 8
  %.idx.i.i.i.i.i.i.i773 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ano, i8 0, i64 %.idx.i.i.i.i.i.i.i773, i1 false), !tbaa !94
  br label %bb.fy

bb.fy:                                            ; preds = %.noexc777, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i772
  %i.anp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc786 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit924.thread ; 13 uses

.noexc786:                                        ; preds = %bb.fy
  %i.anq = getelementptr inbounds nuw [8 x i8], ptr %i.anp, i64 %i.rl ; 9 uses
  store ptr null, ptr %i.anp, align 8, !tbaa !94
  br i1 %i.ty, label %bb.fz, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i781

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i781: ; preds = %.noexc786
  %i.anr = getelementptr i8, ptr %i.anp, i64 8
  %.idx.i.i.i.i.i.i.i782 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.anr, i8 0, i64 %.idx.i.i.i.i.i.i.i782, i1 false), !tbaa !94
  br label %bb.fz

bb.fz:                                            ; preds = %.noexc786, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i781
  %i.ans = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc795 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit922.thread ; 12 uses

.noexc795:                                        ; preds = %bb.fz
  %i.ant = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %i.rl ; 8 uses
  store ptr null, ptr %i.ans, align 8, !tbaa !94
  br i1 %i.ty, label %bb.ga, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i790

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i790: ; preds = %.noexc795
  %i.anu = getelementptr i8, ptr %i.ans, i64 8
  %.idx.i.i.i.i.i.i.i791 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.anu, i8 0, i64 %.idx.i.i.i.i.i.i.i791, i1 false), !tbaa !94
  br label %bb.ga

bb.ga:                                            ; preds = %.noexc795, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i790
  %i.anv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc804 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit920.thread ; 11 uses

.noexc804:                                        ; preds = %bb.ga
  %i.anw = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.rl ; 7 uses
  store ptr null, ptr %i.anv, align 8, !tbaa !94
  br i1 %i.ty, label %bb.gb, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i799

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i799: ; preds = %.noexc804
  %i.anx = getelementptr i8, ptr %i.anv, i64 8
  %.idx.i.i.i.i.i.i.i800 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.anx, i8 0, i64 %.idx.i.i.i.i.i.i.i800, i1 false), !tbaa !94
  br label %bb.gb

bb.gb:                                            ; preds = %.noexc804, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i799
  %i.any = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc813 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit918.thread ; 10 uses

.noexc813:                                        ; preds = %bb.gb
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %i.rl ; 6 uses
  store ptr null, ptr %i.any, align 8, !tbaa !94
  br i1 %i.ty, label %bb.gc, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i808

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i808: ; preds = %.noexc813
  %i.aoa = getelementptr i8, ptr %i.any, i64 8
  %.idx.i.i.i.i.i.i.i809 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aoa, i8 0, i64 %.idx.i.i.i.i.i.i.i809, i1 false), !tbaa !94
  br label %bb.gc

bb.gc:                                            ; preds = %.noexc813, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i808
  %i.aob = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc822 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit916.thread ; 9 uses

.noexc822:                                        ; preds = %bb.gc
  %i.aoc = getelementptr inbounds nuw [8 x i8], ptr %i.aob, i64 %i.rl ; 5 uses
  store ptr null, ptr %i.aob, align 8, !tbaa !94
  br i1 %i.ty, label %bb.gd, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i817

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i817: ; preds = %.noexc822
  %i.aod = getelementptr i8, ptr %i.aob, i64 8
  %.idx.i.i.i.i.i.i.i818 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aod, i8 0, i64 %.idx.i.i.i.i.i.i.i818, i1 false), !tbaa !94
  br label %bb.gd

bb.gd:                                            ; preds = %.noexc822, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i817
  %i.aoe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc831 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit914.thread ; 8 uses

.noexc831:                                        ; preds = %bb.gd
  %i.aof = getelementptr inbounds nuw [8 x i8], ptr %i.aoe, i64 %i.rl ; 4 uses
  store ptr null, ptr %i.aoe, align 8, !tbaa !94
  br i1 %i.ty, label %bb.ge, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i826

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i826: ; preds = %.noexc831
  %i.aog = getelementptr i8, ptr %i.aoe, i64 8
  %.idx.i.i.i.i.i.i.i827 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aog, i8 0, i64 %.idx.i.i.i.i.i.i.i827, i1 false), !tbaa !94
  br label %bb.ge

bb.ge:                                            ; preds = %.noexc831, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i826
  %i.aoh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc840 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit912.thread ; 7 uses

.noexc840:                                        ; preds = %bb.ge
  %i.aoi = getelementptr inbounds nuw [8 x i8], ptr %i.aoh, i64 %i.rl ; 3 uses
  store ptr null, ptr %i.aoh, align 8, !tbaa !94
  br i1 %i.ty, label %bb.gf, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i835

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i835: ; preds = %.noexc840
  %i.aoj = getelementptr i8, ptr %i.aoh, i64 8
  %.idx.i.i.i.i.i.i.i836 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aoj, i8 0, i64 %.idx.i.i.i.i.i.i.i836, i1 false), !tbaa !94
  br label %bb.gf

bb.gf:                                            ; preds = %.noexc840, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i835
  %i.aok = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #22
          to label %.noexc849 unwind label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit910.thread ; 6 uses

.noexc849:                                        ; preds = %bb.gf
  %i.aol = getelementptr inbounds nuw [8 x i8], ptr %i.aok, i64 %i.rl ; 2 uses
  store ptr null, ptr %i.aok, align 8, !tbaa !94
  br i1 %i.ty, label %.lr.ph2331.preheader, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i844

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i844: ; preds = %.noexc849
  %i.aom = getelementptr i8, ptr %i.aok, i64 8
  %.idx.i.i.i.i.i.i.i845 = shl nuw nsw i64 %i.tx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aom, i8 0, i64 %.idx.i.i.i.i.i.i.i845, i1 false), !tbaa !94
  br label %.lr.ph2331.preheader

.lr.ph2331.preheader:                             ; preds = %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i844, %.noexc849
  %85 = load ptr, ptr %28, align 8, !tbaa !37
  %wide.trip.count = zext nneg i32 %i.rk to i64
  br label %.lr.ph2331

._crit_edge2332:                                  ; preds = %bb.gi, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.02875 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aol, %bb.gi ] ; 2 uses
  %.sroa.01016.02872 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aok, %bb.gi ] ; 6 uses
  %.sroa.12.0160916312859 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aof, %bb.gi ] ; 3 uses
  %.sroa.01030.0160016332847 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aoe, %bb.gi ] ; 7 uses
  %.sroa.14.014771495159116352835 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.anz, %bb.gi ] ; 3 uses
  %.sroa.01047.014661497158916372823 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.any, %bb.gi ] ; 9 uses
  %.sroa.111069.01361137514551499158716392811 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ant, %bb.gi ] ; 3 uses
  %.sroa.01064.01348137714531501158516412799 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ans, %bb.gi ] ; 6 uses
  %.sroa.111085.0126112711335137914511503158316432787 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ann, %bb.gi ] ; 3 uses
  %.sroa.01080.0124612731333138114491505158116452775 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.anm, %bb.gi ] ; 6 uses
  %.sroa.121102.0115011721183123112751331138314471507157916472763 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.tw, %bb.gi ] ; 3 uses
  %.sroa.01096.0116711701185122912771329138514451509157716492751 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.tv, %bb.gi ] ; 6 uses
  %.sroa.111093.01201122712791327138714431511157516512739 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ank, %bb.gi ] ; 3 uses
  %.sroa.01088.01217122512811325138914411513157316532727 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.anj, %bb.gi ] ; 6 uses
  %.sroa.01072.012951323139114391515157116552715 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.anp, %bb.gi ] ; 6 uses
  %.sroa.111077.013091321139314371517156916572703 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.anq, %bb.gi ] ; 3 uses
  %.sroa.01056.0140514351519156716592691 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.anv, %bb.gi ] ; 6 uses
  %.sroa.111061.0141714331521156516612679 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.anw, %bb.gi ] ; 3 uses
  %.sroa.01038.01531156316632667 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aob, %bb.gi ] ; 7 uses
  %.sroa.121044.01541156116652655 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aoc, %bb.gi ] ; 3 uses
  %.sroa.01022.016732643 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aoh, %bb.gi ] ; 6 uses
  %.sroa.111027.016812631 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aoi, %bb.gi ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #21
  store <2 x float> zeroinitializer, ptr %46, align 8, !tbaa !128
  invoke void @_ZN7Imf_3_46HeaderC1EiifRKN9Imath_3_24Vec2IfEEfNS_9LineOrderENS_11CompressionE(ptr noundef nonnull align 8 dereferenceable(49) %45, i32 noundef %.1195, i32 noundef %.1197, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(8) %46, float noundef 1.000000e+00, i32 noundef 0, i32 noundef 3)
          to label %bb.gj unwind label %bb.hz

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fu, %bb.fv, %bb.cg, %bb.ch, %bb.ci, %bb.fo, %bb.fp, %bb.fq, %bb.fr, %bb.fs, %bb.ce
  %lpad.loopexit.split-lp2979 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit930

_ZNSt6vectorIPcSaIS0_EED2Ev.exit928.thread:       ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.aon = landingpad { ptr, i32 }
          cleanup
  br label %bb.no

_ZNSt6vectorIPcSaIS0_EED2Ev.exit926.thread:       ; preds = %bb.fx
  %i.aoo = landingpad { ptr, i32 }
          cleanup
  br label %bb.nn

_ZNSt6vectorIPcSaIS0_EED2Ev.exit924.thread:       ; preds = %bb.fy
  %i.aop = landingpad { ptr, i32 }
          cleanup
  br label %bb.nm

_ZNSt6vectorIPcSaIS0_EED2Ev.exit922.thread:       ; preds = %bb.fz
  %i.aoq = landingpad { ptr, i32 }
          cleanup
  br label %bb.nl

_ZNSt6vectorIPcSaIS0_EED2Ev.exit920.thread:       ; preds = %bb.ga
  %i.aor = landingpad { ptr, i32 }
          cleanup
  br label %bb.nk

_ZNSt6vectorIPcSaIS0_EED2Ev.exit918.thread:       ; preds = %bb.gb
  %i.aos = landingpad { ptr, i32 }
          cleanup
  br label %bb.nj

_ZNSt6vectorIPcSaIS0_EED2Ev.exit916.thread:       ; preds = %bb.gc
  %i.aot = landingpad { ptr, i32 }
          cleanup
  br label %bb.ni

_ZNSt6vectorIPcSaIS0_EED2Ev.exit914.thread:       ; preds = %bb.gd
  %i.aou = landingpad { ptr, i32 }
          cleanup
  br label %bb.nh

_ZNSt6vectorIPcSaIS0_EED2Ev.exit912.thread:       ; preds = %bb.ge
  %i.aov = landingpad { ptr, i32 }
          cleanup
  br label %bb.ng

_ZNSt6vectorIPcSaIS0_EED2Ev.exit910.thread:       ; preds = %bb.gf
  %i.aow = landingpad { ptr, i32 }
          cleanup
  br label %bb.nf

.lr.ph2331:                                       ; preds = %.lr.ph2331.preheader, %bb.gi
  %indvars.iv = phi i64 [ 0, %.lr.ph2331.preheader ], [ %indvars.iv.next, %bb.gi ] ; 13 uses
  %i.aox = getelementptr inbounds nuw [24 x i8], ptr %85, i64 %indvars.iv ; 3 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 8
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !49 ; 4 uses
  %i.apa = load ptr, ptr %i.aox, align 8, !tbaa !50 ; 5 uses
  %i.apb = ptrtoint ptr %i.aoz to i64
  %i.apc = ptrtoint ptr %i.apa to i64
  %i.apd = sub i64 %i.apb, %i.apc
  %i.ape = ashr exact i64 %i.apd, 5               ; 2 uses
  %i.apf = trunc i64 %i.ape to i32                ; 2 uses
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %indvars.iv
  store i32 %i.apf, ptr %i.apg, align 4, !tbaa !42
  %i.aph = icmp sgt i32 %i.apf, 0
  br i1 %i.aph, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %.lr.ph2331
  %.not.i.i851 = icmp eq ptr %i.apa, %i.aoz
  br i1 %.not.i.i851, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.api = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ape, i1 true)
  %i.apj = shl nuw nsw i64 %i.api, 1
  %i.apk = xor i64 %i.apj, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr %i.apa, ptr %i.aoz, i64 noundef %i.apk)
          to label %.noexc852 unwind label %.thread2876

.noexc852:                                        ; preds = %bb.gh
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %i.apa, ptr %i.aoz)
          to label %.noexc852._ZSt4sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit_crit_edge unwind label %.thread2876

.noexc852._ZSt4sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit_crit_edge: ; preds = %.noexc852
  %.pre2358 = load ptr, ptr %i.aox, align 8, !tbaa !50
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit: ; preds = %.noexc852._ZSt4sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit_crit_edge, %bb.gg
  %86 = phi ptr [ %.pre2358, %.noexc852._ZSt4sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit_crit_edge ], [ %i.apa, %bb.gg ] ; 10 uses
  %i.apl = getelementptr inbounds nuw [8 x i8], ptr %i.anj, i64 %indvars.iv
  store ptr %86, ptr %i.apl, align 8, !tbaa !94
  %i.apm = getelementptr inbounds nuw i8, ptr %86, i64 2
  %i.apn = getelementptr inbounds nuw [8 x i8], ptr %i.anm, i64 %indvars.iv
  store ptr %i.apm, ptr %i.apn, align 8, !tbaa !94
  %i.apo = getelementptr inbounds nuw i8, ptr %86, i64 4
  %i.app = getelementptr inbounds nuw [8 x i8], ptr %i.anp, i64 %indvars.iv
  store ptr %i.apo, ptr %i.app, align 8, !tbaa !94
  %i.apq = getelementptr inbounds nuw i8, ptr %86, i64 6
  %i.apr = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %indvars.iv
  store ptr %i.apq, ptr %i.apr, align 8, !tbaa !94
  %i.aps = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.apt = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %indvars.iv
  store ptr %i.aps, ptr %i.apt, align 8, !tbaa !94
  %i.apu = getelementptr inbounds nuw i8, ptr %86, i64 12
  %i.apv = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv
  store ptr %i.apu, ptr %i.apv, align 8, !tbaa !94
  %i.apw = getelementptr inbounds nuw i8, ptr %86, i64 16
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr %i.aob, i64 %indvars.iv
  store ptr %i.apw, ptr %i.apx, align 8, !tbaa !94
  %i.apy = getelementptr inbounds nuw i8, ptr %86, i64 20
  %i.apz = getelementptr inbounds nuw [8 x i8], ptr %i.aoe, i64 %indvars.iv
  store ptr %i.apy, ptr %i.apz, align 8, !tbaa !94
  %i.aqa = getelementptr inbounds nuw i8, ptr %86, i64 24
  %i.aqb = getelementptr inbounds nuw [8 x i8], ptr %i.aoh, i64 %indvars.iv
  store ptr %i.aqa, ptr %i.aqb, align 8, !tbaa !94
  %i.aqc = getelementptr inbounds nuw i8, ptr %86, i64 28
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %i.aok, i64 %indvars.iv
  store ptr %i.aqc, ptr %i.aqd, align 8, !tbaa !94
  br label %bb.gi

.thread2876:                                      ; preds = %bb.gh, %.noexc852
  %i.aqe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ne

bb.gi:                                            ; preds = %.lr.ph2331, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond2356.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond2356.not, label %._crit_edge2332, label %.lr.ph2331, !llvm.loop !93

bb.gj:                                            ; preds = %._crit_edge2332
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  %i.aqf = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7Imf_3_46Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %45)
          to label %bb.gk unwind label %bb.ia

bb.gk:                                            ; preds = %bb.gj
  store i32 2, ptr %i.aqf, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  %i.aqg = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 3 uses
  store i32 0, ptr %i.aqg, align 8, !tbaa !95
  %i.aqh = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  store ptr null, ptr %i.aqh, align 8, !tbaa !22
  %i.aqi = getelementptr inbounds nuw i8, ptr %47, i64 24
  store ptr %i.aqg, ptr %i.aqi, align 8, !tbaa !23
  %i.aqj = getelementptr inbounds nuw i8, ptr %47, i64 32
  store ptr %i.aqg, ptr %i.aqj, align 8, !tbaa !96
  %i.aqk = getelementptr inbounds nuw i8, ptr %47, i64 40
  store i64 0, ptr %i.aqk, align 8, !tbaa !97
  %i.aql = getelementptr inbounds nuw i8, ptr %47, i64 48
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.aql, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit unwind label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aqm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %47) #21
  br label %.body854

_ZN7Imf_3_415DeepFrameBufferC2Ev.exit:            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  %i.aqn = sext i32 %.1195 to i64                 ; 2 uses
  %i.aqo = shl nsw i64 %i.aqn, 2
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %48, i32 noundef 0, ptr noundef %.sroa.01096.0116711701185122912771329138514451509157716492751, i64 noundef 4, i64 noundef %i.aqo, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.gm unwind label %bb.ib

bb.gm:                                            ; preds = %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
  invoke void @_ZN7Imf_3_415DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %47, ptr noundef nonnull align 8 dereferenceable(50) %48)
          to label %bb.gn unwind label %bb.ib

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  %i.aqp = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %45)
          to label %bb.go unwind label %bb.ic

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  invoke void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13) %49, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.gp unwind label %bb.id

bb.gp:                                            ; preds = %bb.go
  invoke void @_ZN7Imf_3_411ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.aqp, ptr noundef nonnull @.str.29, ptr noundef nonnull align 4 dereferenceable(13) %49)
          to label %bb.gq unwind label %bb.id

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  %i.aqq = shl nsw i64 %i.aqn, 3                  ; 15 uses
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %50, i32 noundef 1, ptr noundef %.sroa.01088.01217122512811325138914411513157316532727, i64 noundef 8, i64 noundef %i.aqq, i64 noundef 32, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.gr unwind label %bb.ie

bb.gr:                                            ; preds = %bb.gq
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %47, ptr noundef nonnull @.str.29, ptr noundef nonnull align 8 dereferenceable(56) %50)
          to label %bb.gs unwind label %bb.ie

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  %i.aqr = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %45)
          to label %bb.gt unwind label %bb.ic

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  invoke void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13) %51, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.gu unwind label %bb.if

bb.gu:                                            ; preds = %bb.gt
  invoke void @_ZN7Imf_3_411ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.aqr, ptr noundef nonnull @.str.30, ptr noundef nonnull align 4 dereferenceable(13) %51)
          to label %bb.gv unwind label %bb.if

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #21
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %52, i32 noundef 1, ptr noundef %.sroa.01080.0124612731333138114491505158116452775, i64 noundef 8, i64 noundef %i.aqq, i64 noundef 32, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.gw unwind label %bb.ig

bb.gw:                                            ; preds = %bb.gv
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %47, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(56) %52)
          to label %bb.gx unwind label %bb.ig

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  %i.aqs = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %45)
          to label %bb.gy unwind label %bb.ic

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #21
  invoke void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13) %53, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.gz unwind label %bb.ih

bb.gz:                                            ; preds = %bb.gy
  invoke void @_ZN7Imf_3_411ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.aqs, ptr noundef nonnull @.str.31, ptr noundef nonnull align 4 dereferenceable(13) %53)
          to label %bb.ha unwind label %bb.ih

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #21
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %54, i32 noundef 1, ptr noundef %.sroa.01072.012951323139114391515157116552715, i64 noundef 8, i64 noundef %i.aqq, i64 noundef 32, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.hb unwind label %bb.ii

bb.hb:                                            ; preds = %bb.ha
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %47, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(56) %54)
          to label %bb.hc unwind label %bb.ii

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #21
  %i.aqt = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %45)
          to label %bb.hd unwind label %bb.ic

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #21
  invoke void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13) %55, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.he unwind label %bb.ij

bb.he:                                            ; preds = %bb.hd
  invoke void @_ZN7Imf_3_411ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.aqt, ptr noundef nonnull @.str.32, ptr noundef nonnull align 4 dereferenceable(13) %55)
          to label %bb.hf unwind label %bb.ij

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #21
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %56, i32 noundef 1, ptr noundef %.sroa.01064.01348137714531501158516412799, i64 noundef 8, i64 noundef %i.aqq, i64 noundef 32, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.hg unwind label %bb.ik

bb.hg:                                            ; preds = %bb.hf
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %47, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(56) %56)
          to label %bb.hh unwind label %bb.ik

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  %i.aqu = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %45)
          to label %bb.hi unwind label %bb.ic

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #21
  invoke void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13) %57, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.hj unwind label %bb.il

bb.hj:                                            ; preds = %bb.hi
  invoke void @_ZN7Imf_3_411ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.aqu, ptr noundef nonnull @.str.33, ptr noundef nonnull align 4 dereferenceable(13) %57)
          to label %bb.hk unwind label %bb.il

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #21
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %58, i32 noundef 1, ptr noundef %.sroa.01056.0140514351519156716592691, i64 noundef 8, i64 noundef %i.aqq, i64 noundef 32, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.hl unwind label %bb.im

bb.hl:                                            ; preds = %bb.hk
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %47, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(56) %58)
          to label %bb.hm unwind label %bb.im
end_hunk_2
