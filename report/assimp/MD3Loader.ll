inline.NumInlined: 1319
inline.NumDeleted: 545
begin_hunk_0_@_ZN6Assimp11MD3Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 1272
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 1312
  store ptr null, ptr %i.kz, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.kw, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.kx, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ky, i8 0, i64 36, i1 false)
  %i.la = load ptr, ptr %i.go, align 8
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.js
  store ptr %i.kt, ptr %i.lb, align 8
  %i.lc = load ptr, ptr %i.go, align 8
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.js
  %i.le = load ptr, ptr %i.ld, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.iu, ptr %10, align 8
  store i64 0, ptr %i.iv, align 8
  store i8 0, ptr %i.iu, align 8
  %i.lf = load ptr, ptr %8, align 8               ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.0228798, i64 4 ; 6 uses
  %.not4.i.i.i = icmp eq ptr %i.lf, %8
  br i1 %.not4.i.i.i, label %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader8SkinData12TextureEntryEEA64_cET_S7_S7_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bu, %bb.ca
  %.sroa.02.05.i.i.i = phi ptr [ %i.me, %bb.ca ], [ %i.lf, %bb.bu ] ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %i.iw, ptr %4, align 8
  %i.li = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lg) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.li, ptr %i.a, align 8
  %i.lj = icmp ugt i64 %i.li, 15
  br i1 %i.lj, label %.noexc.i.i, label %._crit_edge.i.i.i452

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %i.lk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc454 unwind label %.loopexit547 ; 2 uses

.noexc454:                                        ; preds = %.noexc.i.i
  store ptr %i.lk, ptr %4, align 8
  %i.ll = load i64, ptr %i.a, align 8
  store i64 %i.ll, ptr %i.iw, align 8
  br label %._crit_edge.i.i.i452

._crit_edge.i.i.i452:                             ; preds = %.noexc454, %.lr.ph.i.i.i
  %i.lm = phi ptr [ %i.lk, %.noexc454 ], [ %i.iw, %.lr.ph.i.i.i ] ; 2 uses
  switch i64 %i.li, label %bb.bw [
    i64 1, label %bb.bv
    i64 0, label %bb.bx
  ]

bb.bv:                                            ; preds = %._crit_edge.i.i.i452
  %i.ln = load i8, ptr %i.lg, align 4
  store i8 %i.ln, ptr %i.lm, align 1
  br label %bb.bx

bb.bw:                                            ; preds = %._crit_edge.i.i.i452
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lm, ptr nonnull align 1 %i.lg, i64 %i.li, i1 false)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %._crit_edge.i.i.i452
  %i.lo = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.lo, ptr %i.ix, align 8
  %i.lp = load ptr, ptr %4, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lo
  store i8 0, ptr %i.lq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.lr = load i64, ptr %i.ix, align 8            ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 24
  %i.lt = load i64, ptr %i.ls, align 8
  %i.lu = icmp eq i64 %i.lr, %i.lt
  br i1 %i.lu, label %bb.by, label %._ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge.i

._ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge.i: ; preds = %bb.bx
  %.pre.i453 = load ptr, ptr %4, align 8
  br label %_ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

bb.by:                                            ; preds = %bb.bx
  %i.lv = icmp eq i64 %i.lr, 0
  %.pre3.i = load ptr, ptr %4, align 8            ; 3 uses
  br i1 %i.lv, label %_ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lw = load ptr, ptr %i.lh, align 8
  %bcmp.i.i.i = call i32 @bcmp(ptr %.pre3.i, ptr %i.lw, i64 %i.lr)
  %i.lx = icmp eq i32 %bcmp.i.i.i, 0
  br label %_ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.bz, %bb.by, %._ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge.i
  %i.ly = phi ptr [ %.pre.i453, %._ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge.i ], [ %.pre3.i, %bb.bz ], [ %.pre3.i, %bb.by ] ; 2 uses
  %i.lz = phi i1 [ false, %._ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge.i ], [ %i.lx, %bb.bz ], [ true, %bb.by ]
  %i.ma = icmp eq ptr %i.ly, %i.iw
  br i1 %i.ma, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.mb = icmp ult i64 %i.lr, 16
  call void @llvm.assume(i1 %i.mb)
  br label %.noexc333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK6Assimp8Q3Shader8SkinData12TextureEntryeqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.mc = load i64, ptr %i.iw, align 8
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.md) #25
  br label %.noexc333

.noexc333:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.lz, label %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader8SkinData12TextureEntryEEA64_cET_S7_S7_RKT0_.exit, label %bb.ca

bb.ca:                                            ; preds = %.noexc333
  %i.me = load ptr, ptr %.sroa.02.05.i.i.i, align 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.me, %8
  br i1 %.not.i.i.i, label %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader8SkinData12TextureEntryEEA64_cET_S7_S7_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !214

_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader8SkinData12TextureEntryEEA64_cET_S7_S7_RKT0_.exit: ; preds = %bb.ca, %.noexc333, %bb.bu
  %.sroa.02.0.lcssa.i.i.i = phi ptr [ %i.lf, %bb.bu ], [ %.sroa.02.05.i.i.i, %.noexc333 ], [ %i.me, %bb.ca ] ; 3 uses
  %.not532 = icmp eq ptr %.sroa.02.0.lcssa.i.i.i, %8
  br i1 %.not532, label %.thread, label %bb.cb

bb.cb:                                            ; preds = %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader8SkinData12TextureEntryEEA64_cET_S7_S7_RKT0_.exit
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i.i, i64 48 ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.mf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ce

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.cb
  %i.mg = load ptr, ptr %10, align 8              ; 2 uses
  %i.mh = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cc unwind label %.loopexit.split-lp548

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  invoke void @_ZN6Assimp6Logger12verboseDebugIJRA29_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_RA64_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.mh, ptr noundef nonnull align 1 dereferenceable(29) @.str.88, ptr noundef nonnull align 8 dereferenceable(32) %i.mf, ptr noundef nonnull align 1 dereferenceable(13) @.str.89, ptr noundef nonnull align 1 dereferenceable(64) %i.lg)
          to label %bb.cf unwind label %.loopexit.split-lp548

bb.cd:                                            ; preds = %bb.bt
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

.loopexit547:                                     ; preds = %.noexc.i.i
  %lpad.loopexit549 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

.loopexit.split-lp548:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.cc
  %lpad.loopexit.split-lp550 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.ce:                                            ; preds = %bb.cb
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.cf:                                            ; preds = %bb.cc
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i.i, i64 80
  store i8 1, ptr %i.mk, align 8
  %.not260 = icmp eq ptr %i.mg, null
  br i1 %.not260, label %.thread, label %bb.ch

.thread:                                          ; preds = %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader8SkinData12TextureEntryEEA64_cET_S7_S7_RKT0_.exit, %bb.cf
  %i.ml = getelementptr inbounds nuw i8, ptr %.0228798, i64 76
  %i.mm = load i32, ptr %i.ml, align 4
  %.not261 = icmp eq i32 %i.mm, 0
  br i1 %.not261, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %i.iy, ptr %11, align 8
  store i64 0, ptr %i.iz, align 8
  store i8 0, ptr %i.iy, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.ch:                                            ; preds = %bb.cf, %.thread
  %.1239.ph = phi ptr [ %i.ki, %.thread ], [ %i.mg, %bb.cf ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %i.iy, ptr %11, align 8
  store i64 0, ptr %i.iz, align 8
  store i8 0, ptr %i.iy, align 8
  %i.mn = load i8, ptr %i.hb, align 8, !range !200, !noundef !201
  %i.mo = trunc nuw i8 %i.mn to i1
  br i1 %i.mo, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZNK6Assimp11MD3Importer11ConvertPathEPKcS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull %.1239.ph, ptr noundef nonnull %i.iq, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ck, %bb.ci
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.ck:                                            ; preds = %bb.ch
  %i.mq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1239.ph) #24
  %i.mr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %.1239.ph, i64 noundef %i.mq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.cj ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.ck, %bb.cg, %bb.ci
  %i.ms = load ptr, ptr %9, align 8
  %i.mt = icmp eq ptr %i.ms, %9
  br i1 %i.mt, label %bb.cz, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.mu = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 noundef signext 46, i64 noundef -1) #24 ; 2 uses
  %23 = icmp eq i64 %i.mu, -1
  %.pre906 = load i64, ptr %i.iz, align 8         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  store ptr %i.ja, ptr %12, align 8, !alias.scope !215
  %i.mv = load ptr, ptr %11, align 8, !noalias !215 ; 2 uses
  %i.mw = call i64 @llvm.umin.i64(i64 %i.mu, i64 %.pre906)
  %spec.select.i.i.i337 = select i1 %23, i64 %.pre906, i64 %i.mw ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !215
  store i64 %spec.select.i.i.i337, ptr %i.d, align 8, !noalias !215
  %i.mx = icmp ugt i64 %spec.select.i.i.i337, 15
  br i1 %i.mx, label %.noexc10.i.i339, label %._crit_edge.i.i.i338

.noexc10.i.i339:                                  ; preds = %bb.cl
  %i.my = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc340 unwind label %bb.cu ; 2 uses

.noexc340:                                        ; preds = %.noexc10.i.i339
  store ptr %i.my, ptr %12, align 8, !alias.scope !215
  %i.mz = load i64, ptr %i.d, align 8, !noalias !215
  store i64 %i.mz, ptr %i.ja, align 8, !alias.scope !215
  br label %._crit_edge.i.i.i338

._crit_edge.i.i.i338:                             ; preds = %.noexc340, %bb.cl
  %i.na = phi ptr [ %i.my, %.noexc340 ], [ %i.ja, %bb.cl ] ; 2 uses
  switch i64 %spec.select.i.i.i337, label %bb.cn [
    i64 1, label %bb.cm
    i64 0, label %bb.co
  ]

bb.cm:                                            ; preds = %._crit_edge.i.i.i338
  %i.nb = load i8, ptr %i.mv, align 1
  store i8 %i.nb, ptr %i.na, align 1
  br label %bb.co

bb.cn:                                            ; preds = %._crit_edge.i.i.i338
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.na, ptr align 1 %i.mv, i64 %spec.select.i.i.i337, i1 false)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %._crit_edge.i.i.i338
  %i.nc = load i64, ptr %i.d, align 8, !noalias !215 ; 2 uses
  store i64 %i.nc, ptr %i.jb, align 8, !alias.scope !215
  %i.nd = load ptr, ptr %12, align 8, !alias.scope !215
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.nc
  store i8 0, ptr %i.ne, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !215
  %i.nf = load ptr, ptr %9, align 8               ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.nf, %9
  br i1 %.not6.i.i.i, label %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit, label %.lr.ph.i.i.i342

.lr.ph.i.i.i342:                                  ; preds = %bb.co
  %i.ng = load i64, ptr %i.jb, align 8
  %i.nh = trunc i64 %i.ng to i32
  %i.ni = load ptr, ptr %12, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i, %.lr.ph.i.i.i342
  %.sroa.03.07.i.i.i = phi ptr [ %i.nf, %.lr.ph.i.i.i342 ], [ %i.oa, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i ] ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 24
  %i.nk = load i64, ptr %i.nj, align 8
  %i.nl = trunc i64 %i.nk to i32
  %.not.i.i.i.i.i.i = icmp eq i32 %i.nl, %i.nh
  br i1 %.not.i.i.i.i.i.i, label %bb.cq, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %bb.cq
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.nn, %bb.cq ], [ %i.ns, %bb.cr ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ni, %bb.cq ], [ %i.no, %bb.cr ] ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 1
  %i.np = load i8, ptr %.0.i.i.i.i.i.i.i, align 1
  %i.nq = zext i8 %i.np to i32
  %i.nr = call i32 @tolower(i32 noundef %i.nq) #28 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 1
  %i.nt = load i8, ptr %.06.i.i.i.i.i.i.i, align 1
  %i.nu = zext i8 %i.nt to i32
  %i.nv = call i32 @tolower(i32 noundef %i.nu) #28
  %i.nw = and i32 %i.nr, 255
  %i.nx = icmp ne i32 %i.nw, 0
  %.unshifted.i.i.i.i.i = xor i32 %i.nv, %i.nr
  %.mask.i.i.i.i.i = and i32 %.unshifted.i.i.i.i.i, 255
  %i.ny = icmp eq i32 %.mask.i.i.i.i.i, 0         ; 2 uses
  %i.nz = select i1 %i.nx, i1 %i.ny, i1 false
  br i1 %i.nz, label %bb.cr, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.i.i.i, !llvm.loop !218

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.i.i.i: ; preds = %bb.cr
  br i1 %i.ny, label %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.i.i.i, %bb.cp
  %i.oa = load ptr, ptr %.sroa.03.07.i.i.i, align 8 ; 3 uses
  %.not.i.i.i343 = icmp eq ptr %i.oa, %9
  br i1 %.not.i.i.i343, label %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit, label %bb.cp, !llvm.loop !219

_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.i.i.i, %bb.co
  %.sroa.03.0.lcssa.i.i.i = phi ptr [ %i.nf, %bb.co ], [ %.sroa.03.07.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.i.i.i ], [ %i.oa, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i ] ; 2 uses
  %.not533 = icmp eq ptr %.sroa.03.0.lcssa.i.i.i, %9
  br i1 %.not533, label %bb.cw, label %bb.cs

bb.cs:                                            ; preds = %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit
  %i.ob = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ct unwind label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i, i64 16
  invoke void @_ZN6Assimp6Logger4infoIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ob, ptr noundef nonnull align 1 dereferenceable(25) @.str.90, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.cy unwind label %bb.cv

bb.cu:                                            ; preds = %.noexc10.i.i339
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349

bb.cv:                                            ; preds = %bb.cx, %bb.cw, %bb.ct, %bb.cs
  %i.oe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.of = load ptr, ptr %12, align 8              ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.ja
  br i1 %i.og, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347

bb.cw:                                            ; preds = %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit
  %i.oh = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cx unwind label %bb.cv

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN6Assimp6Logger4warnIJRA34_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.oh, ptr noundef nonnull align 1 dereferenceable(34) @.str.91, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.cy unwind label %bb.cv

bb.cy:                                            ; preds = %bb.cx, %bb.ct
  %.0233 = phi ptr [ %i.oc, %bb.ct ], [ null, %bb.cx ]
  %i.oi = load ptr, ptr %12, align 8              ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.ja
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344: ; preds = %bb.cy
  %i.ok = load i64, ptr %i.ja, align 8
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.ol) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.cz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347: ; preds = %bb.cv
  %i.om = load i64, ptr %i.ja, align 8
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.on) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347, %bb.cu
  %.pn263.pn = phi { ptr, i32 } [ %i.od, %bb.cu ], [ %i.oe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347 ], [ %i.oe, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.fe

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.1234 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.0233, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346 ] ; 3 uses
  %i.oo = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %bb.da unwind label %bb.ds     ; 11 uses

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.oo)
          to label %bb.db unwind label %bb.dt

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i32 2, ptr %i.g, align 4
  %i.op = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.oo, ptr noundef nonnull %i.g, i32 noundef 4, ptr noundef nonnull @.str.92, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit unwind label %bb.du ; 0 uses

_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit: ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store <2 x float> splat (float 5.000000e-02), ptr %13, align 8
  store float 5.000000e-02, ptr %i.jc, align 8
  %i.oq = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.oo, ptr noundef nonnull %13, i32 noundef 12, ptr noundef nonnull @.str.93, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit unwind label %bb.dv ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit: ; preds = %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit
  store <2 x float> splat (float 1.000000e+00), ptr %13, align 8
  store float 1.000000e+00, ptr %i.jc, align 8
  %i.or = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.oo, ptr noundef nonnull %13, i32 noundef 12, ptr noundef nonnull @.str.94, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit353 unwind label %bb.dv ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit353: ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit
  %i.os = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.oo, ptr noundef nonnull %13, i32 noundef 12, ptr noundef nonnull @.str.95, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit355 unwind label %bb.dv ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit355: ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit353
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %14, i8 0, i64 1028, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.ot = load ptr, ptr %i.jd, align 8, !noalias !220
  %i.ou = load i64, ptr %i.je, align 8, !noalias !220 ; 3 uses
  store ptr %i.jf, ptr %18, align 8, !alias.scope !223
  store i64 0, ptr %i.jg, align 8, !alias.scope !223
  store i8 0, ptr %i.jf, align 8, !alias.scope !223
  %i.ov = add i64 %i.ou, 5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %i.ov)
          to label %bb.dc unwind label %.loopexit557

bb.dc:                                            ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit355
  %i.ow = load i64, ptr %i.jg, align 8, !alias.scope !223
  %i.ox = add i64 %i.ow, -4611686018427387899
  %i.oy = icmp ult i64 %i.ox, 5
  br i1 %i.oy, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.dc
  %i.oz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.96, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit557 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.pa = load i64, ptr %i.jg, align 8, !alias.scope !223
  %i.pb = sub i64 4611686018427387903, %i.pa
  %i.pc = icmp ult i64 %i.pb, %i.ou
  br i1 %i.pc, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.dc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #26
          to label %.cont.i.i unwind label %.loopexit.split-lp558

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.pd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef %i.ot, i64 noundef %i.ou)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit557 ; 0 uses

.loopexit557:                                     ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit559 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd
end_hunk_0
