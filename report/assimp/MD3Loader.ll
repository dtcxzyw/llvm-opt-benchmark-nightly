inline.NumInlined: 1319
inline.NumDeleted: 545
begin_hunk_0_@_ZN6Assimp11MD3Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 1312
  store ptr null, ptr %i.la, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.kx, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.ky, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.kz, i8 0, i64 36, i1 false)
  %i.lb = load ptr, ptr %i.gp, align 8
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.jt
  store ptr %i.ku, ptr %i.lc, align 8
  %i.ld = load ptr, ptr %i.gp, align 8
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.jt
  %i.lf = load ptr, ptr %i.le, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.iv, ptr %10, align 8
  store i64 0, ptr %i.iw, align 8
  store i8 0, ptr %i.iv, align 8
  %i.lg = load ptr, ptr %8, align 8               ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.0228799, i64 4 ; 6 uses
  %.not4.i.i.i = icmp eq ptr %i.lg, %8
  br i1 %.not4.i.i.i, label %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader8SkinData12TextureEntryEEA64_cET_S7_S7_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bx, %bb.cd
  %.sroa.02.05.i.i.i = phi ptr [ %i.mf, %bb.cd ], [ %i.lg, %bb.bx ] ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %i.ix, ptr %4, align 8
  %i.lj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lh) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.lj, ptr %i.a, align 8
  %i.lk = icmp ugt i64 %i.lj, 15
  br i1 %i.lk, label %.noexc.i.i, label %._crit_edge.i.i.i453

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %i.ll = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc455 unwind label %.loopexit548 ; 2 uses

.noexc455:                                        ; preds = %.noexc.i.i
  store ptr %i.ll, ptr %4, align 8
  %i.lm = load i64, ptr %i.a, align 8
  store i64 %i.lm, ptr %i.ix, align 8
  br label %._crit_edge.i.i.i453

._crit_edge.i.i.i453:                             ; preds = %.noexc455, %.lr.ph.i.i.i
  %i.ln = phi ptr [ %i.ll, %.noexc455 ], [ %i.ix, %.lr.ph.i.i.i ] ; 2 uses
  switch i64 %i.lj, label %bb.bz [
    i64 1, label %bb.by
    i64 0, label %bb.ca
  ]

bb.by:                                            ; preds = %._crit_edge.i.i.i453
  %i.lo = load i8, ptr %i.lh, align 4
  store i8 %i.lo, ptr %i.ln, align 1
  br label %bb.ca

bb.bz:                                            ; preds = %._crit_edge.i.i.i453
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ln, ptr nonnull align 1 %i.lh, i64 %i.lj, i1 false)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %._crit_edge.i.i.i453
  %i.lp = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.lp, ptr %i.iy, align 8
  %i.lq = load ptr, ptr %4, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lp
  store i8 0, ptr %i.lr, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ls = load i64, ptr %i.iy, align 8            ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 24
  %i.lu = load i64, ptr %i.lt, align 8
  %i.lv = icmp eq i64 %i.ls, %i.lu
  br i1 %i.lv, label %bb.cb, label %._ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge.i

._ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge.i: ; preds = %bb.ca
  %.pre.i454 = load ptr, ptr %4, align 8
  br label %_ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

bb.cb:                                            ; preds = %bb.ca
  %i.lw = icmp eq i64 %i.ls, 0
  %.pre3.i = load ptr, ptr %4, align 8            ; 3 uses
  br i1 %i.lw, label %_ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lx = load ptr, ptr %i.li, align 8
  %bcmp.i.i.i = call i32 @bcmp(ptr %.pre3.i, ptr %i.lx, i64 %i.ls)
  %i.ly = icmp eq i32 %bcmp.i.i.i, 0
  br label %_ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.cc, %bb.cb, %._ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge.i
  %i.lz = phi ptr [ %.pre.i454, %._ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge.i ], [ %.pre3.i, %bb.cc ], [ %.pre3.i, %bb.cb ] ; 2 uses
  %i.ma = phi i1 [ false, %._ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge.i ], [ %i.ly, %bb.cc ], [ true, %bb.cb ]
  %i.mb = icmp eq ptr %i.lz, %i.ix
  br i1 %i.mb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.mc = icmp ult i64 %i.ls, 16
  call void @llvm.assume(i1 %i.mc)
  br label %.noexc334

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.md = load i64, ptr %i.ix, align 8
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.me) #25
  br label %.noexc334

.noexc334:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.ma, label %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader8SkinData12TextureEntryEEA64_cET_S7_S7_RKT0_.exit, label %bb.cd

bb.cd:                                            ; preds = %.noexc334
  %i.mf = load ptr, ptr %.sroa.02.05.i.i.i, align 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.mf, %8
  br i1 %.not.i.i.i, label %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader8SkinData12TextureEntryEEA64_cET_S7_S7_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !214

_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader8SkinData12TextureEntryEEA64_cET_S7_S7_RKT0_.exit: ; preds = %bb.cd, %.noexc334, %bb.bx
  %.sroa.02.0.lcssa.i.i.i = phi ptr [ %i.lg, %bb.bx ], [ %.sroa.02.05.i.i.i, %.noexc334 ], [ %i.mf, %bb.cd ] ; 3 uses
  %.not533 = icmp eq ptr %.sroa.02.0.lcssa.i.i.i, %8
  br i1 %.not533, label %.thread, label %bb.ce

bb.ce:                                            ; preds = %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader8SkinData12TextureEntryEEA64_cET_S7_S7_RKT0_.exit
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i.i, i64 48 ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.mg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ch

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ce
  %i.mh = load ptr, ptr %10, align 8              ; 2 uses
  %i.mi = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cf unwind label %.loopexit.split-lp549

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  invoke void @_ZN6Assimp6Logger12verboseDebugIJRA29_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_RA64_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.mi, ptr noundef nonnull align 1 dereferenceable(29) @.str.88, ptr noundef nonnull align 8 dereferenceable(32) %i.mg, ptr noundef nonnull align 1 dereferenceable(13) @.str.89, ptr noundef nonnull align 1 dereferenceable(64) %i.lh)
          to label %bb.ci unwind label %.loopexit.split-lp549

bb.cg:                                            ; preds = %bb.bw
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

.loopexit548:                                     ; preds = %.noexc.i.i
  %lpad.loopexit550 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

.loopexit.split-lp549:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.cf
  %lpad.loopexit.split-lp551 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.ch:                                            ; preds = %bb.ce
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.ci:                                            ; preds = %bb.cf
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i.i, i64 80
  store i8 1, ptr %i.ml, align 8
  %.not260 = icmp eq ptr %i.mh, null
  br i1 %.not260, label %.thread, label %bb.ck

.thread:                                          ; preds = %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader8SkinData12TextureEntryEEA64_cET_S7_S7_RKT0_.exit, %bb.ci
  %i.mm = getelementptr inbounds nuw i8, ptr %.0228799, i64 76
  %i.mn = load i32, ptr %i.mm, align 4
  %.fr = freeze i32 %i.mn
  %.not261 = icmp eq i32 %.fr, 0
  br i1 %.not261, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %i.iz, ptr %11, align 8
  store i64 0, ptr %i.ja, align 8
  store i8 0, ptr %i.iz, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.ck:                                            ; preds = %bb.ci, %.thread
  %.1239.ph = phi ptr [ %i.kj, %.thread ], [ %i.mh, %bb.ci ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %i.iz, ptr %11, align 8
  store i64 0, ptr %i.ja, align 8
  store i8 0, ptr %i.iz, align 8
  %i.mo = load i8, ptr %i.hc, align 8, !range !200, !noundef !201
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZNK6Assimp11MD3Importer11ConvertPathEPKcS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull %.1239.ph, ptr noundef nonnull %i.ir, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cn, %bb.cl
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.cn:                                            ; preds = %bb.ck
  %i.mr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1239.ph) #24
  %i.ms = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %.1239.ph, i64 noundef %i.mr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.cm ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.cn, %bb.cj, %bb.cl
  %i.mt = load ptr, ptr %9, align 8
  %i.mu = icmp eq ptr %i.mt, %9
  br i1 %i.mu, label %bb.dc, label %bb.co

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.mv = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 noundef signext 46, i64 noundef -1) #24
  %.pre907 = load i64, ptr %i.ja, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  store ptr %i.jb, ptr %12, align 8, !alias.scope !215
  %i.mw = load ptr, ptr %11, align 8, !noalias !215 ; 2 uses
  %i.mx = call i64 @llvm.umin.i64(i64 %i.mv, i64 %.pre907) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !215
  store i64 %i.mx, ptr %i.d, align 8, !noalias !215
  %i.my = icmp ugt i64 %i.mx, 15
  br i1 %i.my, label %.noexc10.i.i340, label %._crit_edge.i.i.i339

.noexc10.i.i340:                                  ; preds = %bb.co
  %i.mz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc341 unwind label %bb.cx ; 2 uses

.noexc341:                                        ; preds = %.noexc10.i.i340
  store ptr %i.mz, ptr %12, align 8, !alias.scope !215
  %i.na = load i64, ptr %i.d, align 8, !noalias !215
  store i64 %i.na, ptr %i.jb, align 8, !alias.scope !215
  br label %._crit_edge.i.i.i339

._crit_edge.i.i.i339:                             ; preds = %.noexc341, %bb.co
  %i.nb = phi ptr [ %i.mz, %.noexc341 ], [ %i.jb, %bb.co ] ; 2 uses
  switch i64 %i.mx, label %bb.cq [
    i64 1, label %bb.cp
    i64 0, label %bb.cr
  ]

bb.cp:                                            ; preds = %._crit_edge.i.i.i339
  %i.nc = load i8, ptr %i.mw, align 1
  store i8 %i.nc, ptr %i.nb, align 1
  br label %bb.cr

bb.cq:                                            ; preds = %._crit_edge.i.i.i339
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nb, ptr align 1 %i.mw, i64 %i.mx, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %._crit_edge.i.i.i339
  %i.nd = load i64, ptr %i.d, align 8, !noalias !215 ; 2 uses
  store i64 %i.nd, ptr %i.jc, align 8, !alias.scope !215
  %i.ne = load ptr, ptr %12, align 8, !alias.scope !215
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.nd
  store i8 0, ptr %i.nf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !215
  %i.ng = load ptr, ptr %9, align 8               ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.ng, %9
  br i1 %.not6.i.i.i, label %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit, label %.lr.ph.i.i.i343

.lr.ph.i.i.i343:                                  ; preds = %bb.cr
  %i.nh = load i64, ptr %i.jc, align 8
  %i.ni = trunc i64 %i.nh to i32
  %i.nj = load ptr, ptr %12, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i, %.lr.ph.i.i.i343
  %.sroa.03.07.i.i.i = phi ptr [ %i.ng, %.lr.ph.i.i.i343 ], [ %i.ob, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i ] ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 24
  %i.nl = load i64, ptr %i.nk, align 8
  %i.nm = trunc i64 %i.nl to i32
  %.not.i.i.i.i.i.i = icmp eq i32 %i.nm, %i.ni
  br i1 %.not.i.i.i.i.i.i, label %bb.ct, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 16
  %i.no = load ptr, ptr %i.nn, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %bb.ct
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.no, %bb.ct ], [ %i.nt, %bb.cu ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.nj, %bb.ct ], [ %i.np, %bb.cu ] ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 1
  %i.nq = load i8, ptr %.0.i.i.i.i.i.i.i, align 1
  %i.nr = zext i8 %i.nq to i32
  %i.ns = call i32 @tolower(i32 noundef %i.nr) #28 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 1
  %i.nu = load i8, ptr %.06.i.i.i.i.i.i.i, align 1
  %i.nv = zext i8 %i.nu to i32
  %i.nw = call i32 @tolower(i32 noundef %i.nv) #28
  %i.nx = and i32 %i.ns, 255
  %i.ny = icmp ne i32 %i.nx, 0
  %.unshifted.i.i.i.i.i = xor i32 %i.nw, %i.ns
  %.mask.i.i.i.i.i = and i32 %.unshifted.i.i.i.i.i, 255
  %i.nz = icmp eq i32 %.mask.i.i.i.i.i, 0         ; 2 uses
  %i.oa = select i1 %i.ny, i1 %i.nz, i1 false
  br i1 %i.oa, label %bb.cu, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.i.i.i, !llvm.loop !218

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.i.i.i: ; preds = %bb.cu
  br i1 %i.nz, label %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.i.i.i, %bb.cs
  %i.ob = load ptr, ptr %.sroa.03.07.i.i.i, align 8 ; 3 uses
  %.not.i.i.i344 = icmp eq ptr %i.ob, %9
  br i1 %.not.i.i.i344, label %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit, label %bb.cs, !llvm.loop !219

_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.i.i.i, %bb.cr
  %.sroa.03.0.lcssa.i.i.i = phi ptr [ %i.ng, %bb.cr ], [ %.sroa.03.07.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.i.i.i ], [ %i.ob, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i ] ; 2 uses
  %.not534 = icmp eq ptr %.sroa.03.0.lcssa.i.i.i, %9
  br i1 %.not534, label %bb.cz, label %bb.cv

bb.cv:                                            ; preds = %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit
  %i.oc = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cw unwind label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i, i64 16
  invoke void @_ZN6Assimp6Logger4infoIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.oc, ptr noundef nonnull align 1 dereferenceable(25) @.str.90, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.db unwind label %bb.cy

bb.cx:                                            ; preds = %.noexc10.i.i340
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

bb.cy:                                            ; preds = %bb.da, %bb.cz, %bb.cw, %bb.cv
  %i.of = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.og = load ptr, ptr %12, align 8              ; 2 uses
  %i.oh = icmp eq ptr %i.og, %i.jb
  br i1 %i.oh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348

bb.cz:                                            ; preds = %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit
  %i.oi = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.da unwind label %bb.cy

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZN6Assimp6Logger4warnIJRA34_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.oi, ptr noundef nonnull align 1 dereferenceable(34) @.str.91, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.db unwind label %bb.cy

bb.db:                                            ; preds = %bb.da, %bb.cw
  %.0233 = phi ptr [ %i.od, %bb.cw ], [ null, %bb.da ]
  %i.oj = load ptr, ptr %12, align 8              ; 2 uses
  %i.ok = icmp eq ptr %i.oj, %i.jb
  br i1 %i.ok, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %bb.db
  %i.ol = load i64, ptr %i.jb, align 8
  %i.om = add i64 %i.ol, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.om) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.dc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348: ; preds = %bb.cy
  %i.on = load i64, ptr %i.jb, align 8
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.og, i64 noundef %i.oo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348, %bb.cx
  %.pn263.pn = phi { ptr, i32 } [ %i.oe, %bb.cx ], [ %i.of, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348 ], [ %i.of, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.fh

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.1234 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.0233, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347 ] ; 3 uses
  %i.op = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %bb.dd unwind label %bb.dv     ; 11 uses

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.op)
          to label %bb.de unwind label %bb.dw

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i32 2, ptr %i.g, align 4
  %i.oq = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.op, ptr noundef nonnull %i.g, i32 noundef 4, ptr noundef nonnull @.str.92, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit unwind label %bb.dx ; 0 uses

_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit: ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store <2 x float> splat (float 5.000000e-02), ptr %13, align 8
  store float 5.000000e-02, ptr %i.jd, align 8
  %i.or = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.op, ptr noundef nonnull %13, i32 noundef 12, ptr noundef nonnull @.str.93, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit unwind label %bb.dy ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit: ; preds = %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit
  store <2 x float> splat (float 1.000000e+00), ptr %13, align 8
  store float 1.000000e+00, ptr %i.jd, align 8
  %i.os = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.op, ptr noundef nonnull %13, i32 noundef 12, ptr noundef nonnull @.str.94, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit354 unwind label %bb.dy ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit354: ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit
  %i.ot = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.op, ptr noundef nonnull %13, i32 noundef 12, ptr noundef nonnull @.str.95, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit356 unwind label %bb.dy ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit356: ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit354
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %14, i8 0, i64 1028, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.ou = load ptr, ptr %i.je, align 8, !noalias !220
  %i.ov = load i64, ptr %i.jf, align 8, !noalias !220 ; 3 uses
  store ptr %i.jg, ptr %18, align 8, !alias.scope !223
  store i64 0, ptr %i.jh, align 8, !alias.scope !223
  store i8 0, ptr %i.jg, align 8, !alias.scope !223
  %i.ow = add i64 %i.ov, 5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %i.ow)
          to label %bb.df unwind label %.loopexit558

bb.df:                                            ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit356
  %i.ox = load i64, ptr %i.jh, align 8, !alias.scope !223
  %i.oy = add i64 %i.ox, -4611686018427387899
  %i.oz = icmp ult i64 %i.oy, 5
  br i1 %i.oz, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.df
  %i.pa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.96, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit558 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.pb = load i64, ptr %i.jh, align 8, !alias.scope !223
  %i.pc = sub i64 4611686018427387903, %i.pb
  %i.pd = icmp ult i64 %i.pc, %i.ov
  br i1 %i.pd, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.df
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #26
          to label %.cont.i.i unwind label %.loopexit.split-lp559

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.pe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef %i.ou, i64 noundef %i.ov)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit558 ; 0 uses

.loopexit558:                                     ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit560 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg
end_hunk_0
