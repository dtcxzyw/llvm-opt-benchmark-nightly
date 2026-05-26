inline.NumInlined: 1319
inline.NumDeleted: 545
begin_hunk_0_@_ZN6Assimp11MD3Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
    i8 92, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn, %bb.bn
  %i.id = load i8, ptr %i.hk, align 1
  %.not33.i = icmp eq i8 %i.id, 0
  br i1 %.not33.i, label %bb.bp, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.i

bb.bp:                                            ; preds = %bb.bo
  %i.ie = getelementptr inbounds nuw i8, ptr %.02540.i, i64 1
  br label %.critedge.i

bb.bq:                                            ; preds = %bb.bn, %.thread.i332
  %i.if = ptrtoint ptr %.02540.i to i64
  %i.ig = ptrtoint ptr %i.ht to i64
  %i.ih = sub i64 %i.if, %i.ig
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.ih, i64 %i.hz) ; 2 uses
  %i.ii = and i64 %.sroa.speculated.i, 4294967295
  %.not.i.i = icmp eq i64 %i.ii, 0
  br i1 %.not.i.i, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.i

_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.i:       ; preds = %bb.bo, %bb.bq
  %.02448.i = phi i64 [ %.sroa.speculated.i, %bb.bq ], [ 6, %bb.bo ]
  %i.ij = and i64 %.02448.i, 4294967295
  %i.ik = call i32 @strncasecmp(ptr noundef nonnull %i.ht, ptr noundef nonnull %i.hk, i64 noundef %i.ij) #28
  %.not34.i = icmp eq i32 %i.ik, 0
  br i1 %.not34.i, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i, label %.critedge.i

_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i: ; preds = %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.i, %bb.bq
  %i.il = getelementptr inbounds nuw i8, ptr %.02540.i, i64 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.i, %bb.bp, %bb.bm
  %.sink57.i = phi ptr [ %i.ie, %bb.bp ], [ %i.il, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i ], [ %i.ht, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.i ], [ %i.ht, %bb.bm ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0479.0, i64 24
  %i.in = load i64, ptr %i.im, align 8
  %i.io = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink57.i) #24
  %i.ip = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.hs, i64 noundef 0, i64 noundef %i.in, ptr noundef nonnull %.sink57.i, i64 noundef %i.io)
          to label %_ZNK6Assimp11MD3Importer11ConvertPathEPKcS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.br, !llvm.loop !212 ; 0 uses

bb.br:                                            ; preds = %.critedge.i
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

.loopexit579.loopexit:                            ; preds = %bb.bh
  %.pre906 = load ptr, ptr %i.ew, align 8
  br label %.loopexit579

.loopexit579:                                     ; preds = %.thread1043, %.loopexit579.loopexit, %bb.be
  %i.ir = phi ptr [ %i.hk, %.loopexit579.loopexit ], [ %i.hk, %bb.be ], [ %i.hg, %.thread1043 ]
  %i.is = phi ptr [ %.pre906, %.loopexit579.loopexit ], [ %i.hj, %bb.be ], [ %i.hf, %.thread1043 ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 84
  %i.iu = load i32, ptr %i.it, align 1            ; 2 uses
  %.not797 = icmp eq i32 %i.iu, 0
  br i1 %.not797, label %._crit_edge802, label %.lr.ph801

.lr.ph801:                                        ; preds = %.loopexit579
  %i.iv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.jg = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.js = zext i32 %i.iu to i64
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph801, %bb.fd
  %indvars.iv886 = phi i64 [ %i.js, %.lr.ph801 ], [ %i.jt, %bb.fd ]
  %.0228799 = phi ptr [ %i.fc, %.lr.ph801 ], [ %.1229, %bb.fd ] ; 16 uses
  %.0235798 = phi i32 [ 0, %.lr.ph801 ], [ %.1236, %bb.fd ] ; 4 uses
  %i.jt = add nsw i64 %indvars.iv886, -1          ; 4 uses
  invoke void @_ZN6Assimp11MD3Importer28ValidateSurfaceHeaderOffsetsEPKNS_3MD37SurfaceE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %.0228799)
          to label %bb.bt unwind label %.loopexit553

bb.bt:                                            ; preds = %bb.bs
  %i.ju = getelementptr inbounds nuw i8, ptr %.0228799, i64 100
  %i.jv = load i32, ptr %i.ju, align 4
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %.0228799, i64 %i.jw ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.0228799, i64 88
  %i.jz = load i32, ptr %i.jy, align 4
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %.0228799, i64 %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %.0228799, i64 96
  %i.kd = load i32, ptr %i.kc, align 4
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %.0228799, i64 %i.ke ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.0228799, i64 92
  %i.kh = load i32, ptr %i.kg, align 4
  %i.ki = zext i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %.0228799, i64 %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %.0228799, i64 80 ; 4 uses
  %i.kl = load i32, ptr %i.kk, align 4
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kn = getelementptr inbounds nuw i8, ptr %.0228799, i64 84 ; 5 uses
  %i.ko = load i32, ptr %i.kn, align 4
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.kq = getelementptr inbounds nuw i8, ptr %.0228799, i64 104
  %i.kr = load i32, ptr %i.kq, align 4
  %i.ks = load i32, ptr %i.gc, align 8
  %i.kt = add i32 %i.ks, -1
  store i32 %i.kt, ptr %i.gc, align 8
  br label %bb.fd, !llvm.loop !213

.loopexit553:                                     ; preds = %bb.bs
  %lpad.loopexit555 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

.loopexit.split-lp554:                            ; preds = %._crit_edge802, %bb.fp, %bb.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424, %bb.fu
  %lpad.loopexit.split-lp556 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.bw:                                            ; preds = %bb.bu
  %i.ku = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #27
          to label %bb.bx unwind label %bb.cg     ; 8 uses

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.ku, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  store i32 0, ptr %i.kv, align 4
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store i32 0, ptr %i.kw, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 224
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 1272
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
  %i.lo = load i8, ptr %i.lh, align 1
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
  %.not261 = icmp eq i32 %i.mn, 0
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
  %i.mv = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 noundef signext 46, i64 noundef -1) #24 ; 2 uses
  %i.mw = icmp eq i64 %i.mv, -1
  %.pre907 = load i64, ptr %i.ja, align 8         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  store ptr %i.jb, ptr %12, align 8, !alias.scope !215
  %i.mx = load ptr, ptr %11, align 8, !noalias !215 ; 2 uses
  %i.my = call i64 @llvm.umin.i64(i64 %i.mv, i64 %.pre907)
  %spec.select.i.i.i338 = select i1 %i.mw, i64 %.pre907, i64 %i.my ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !215
  store i64 %spec.select.i.i.i338, ptr %i.d, align 8, !noalias !215
  %i.mz = icmp ugt i64 %spec.select.i.i.i338, 15
  br i1 %i.mz, label %.noexc10.i.i340, label %._crit_edge.i.i.i339

.noexc10.i.i340:                                  ; preds = %bb.co
  %i.na = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc341 unwind label %bb.cx ; 2 uses

.noexc341:                                        ; preds = %.noexc10.i.i340
  store ptr %i.na, ptr %12, align 8, !alias.scope !215
  %i.nb = load i64, ptr %i.d, align 8, !noalias !215
  store i64 %i.nb, ptr %i.jb, align 8, !alias.scope !215
  br label %._crit_edge.i.i.i339

._crit_edge.i.i.i339:                             ; preds = %.noexc341, %bb.co
  %i.nc = phi ptr [ %i.na, %.noexc341 ], [ %i.jb, %bb.co ] ; 2 uses
  switch i64 %spec.select.i.i.i338, label %bb.cq [
    i64 1, label %bb.cp
    i64 0, label %bb.cr
  ]

bb.cp:                                            ; preds = %._crit_edge.i.i.i339
  %i.nd = load i8, ptr %i.mx, align 1
  store i8 %i.nd, ptr %i.nc, align 1
  br label %bb.cr

bb.cq:                                            ; preds = %._crit_edge.i.i.i339
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nc, ptr align 1 %i.mx, i64 %spec.select.i.i.i338, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %._crit_edge.i.i.i339
  %i.ne = load i64, ptr %i.d, align 8, !noalias !215 ; 2 uses
  store i64 %i.ne, ptr %i.jc, align 8, !alias.scope !215
  %i.nf = load ptr, ptr %12, align 8, !alias.scope !215
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.ne
  store i8 0, ptr %i.ng, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !215
  %i.nh = load ptr, ptr %9, align 8               ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.nh, %9
  br i1 %.not6.i.i.i, label %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit, label %.lr.ph.i.i.i343

.lr.ph.i.i.i343:                                  ; preds = %bb.cr
  %i.ni = load i64, ptr %i.jc, align 8
  %i.nj = trunc i64 %i.ni to i32
  %i.nk = load ptr, ptr %12, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i, %.lr.ph.i.i.i343
  %.sroa.03.07.i.i.i = phi ptr [ %i.nh, %.lr.ph.i.i.i343 ], [ %i.oc, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i ] ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 24
  %i.nm = load i64, ptr %i.nl, align 8
  %i.nn = trunc i64 %i.nm to i32
  %.not.i.i.i.i.i.i = icmp eq i32 %i.nn, %i.nj
  br i1 %.not.i.i.i.i.i.i, label %bb.ct, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 16
  %i.np = load ptr, ptr %i.no, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %bb.ct
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.np, %bb.ct ], [ %i.nu, %bb.cu ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.nk, %bb.ct ], [ %i.nq, %bb.cu ] ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 1
  %i.nr = load i8, ptr %.0.i.i.i.i.i.i.i, align 1
  %i.ns = zext i8 %i.nr to i32
  %i.nt = call i32 @tolower(i32 noundef %i.ns) #28 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 1
  %i.nv = load i8, ptr %.06.i.i.i.i.i.i.i, align 1
  %i.nw = zext i8 %i.nv to i32
  %i.nx = call i32 @tolower(i32 noundef %i.nw) #28
  %i.ny = and i32 %i.nt, 255
  %i.nz = icmp ne i32 %i.ny, 0
  %.unshifted.i.i.i.i.i = xor i32 %i.nx, %i.nt
  %.mask.i.i.i.i.i = and i32 %.unshifted.i.i.i.i.i, 255
  %i.oa = icmp eq i32 %.mask.i.i.i.i.i, 0         ; 2 uses
  %i.ob = select i1 %i.nz, i1 %i.oa, i1 false
  br i1 %i.ob, label %bb.cu, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.i.i.i, !llvm.loop !218

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.i.i.i: ; preds = %bb.cu
  br i1 %i.oa, label %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.i.i.i, %bb.cs
  %i.oc = load ptr, ptr %.sroa.03.07.i.i.i, align 8 ; 3 uses
  %.not.i.i.i344 = icmp eq ptr %i.oc, %9
  br i1 %.not.i.i.i344, label %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit, label %bb.cs, !llvm.loop !219

_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.i.i.i, %bb.cr
  %.sroa.03.0.lcssa.i.i.i = phi ptr [ %i.nh, %bb.cr ], [ %.sroa.03.07.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.i.i.i ], [ %i.oc, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEEEEbT_.exit.thread.i.i.i ] ; 2 uses
  %.not534 = icmp eq ptr %.sroa.03.0.lcssa.i.i.i, %9
  br i1 %.not534, label %bb.cz, label %bb.cv

bb.cv:                                            ; preds = %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit
  %i.od = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cw unwind label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i, i64 16
  invoke void @_ZN6Assimp6Logger4infoIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.od, ptr noundef nonnull align 1 dereferenceable(25) @.str.90, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.db unwind label %bb.cy

bb.cx:                                            ; preds = %.noexc10.i.i340
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

bb.cy:                                            ; preds = %bb.da, %bb.cz, %bb.cw, %bb.cv
  %i.og = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oh = load ptr, ptr %12, align 8              ; 2 uses
  %i.oi = icmp eq ptr %i.oh, %i.jb
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348

bb.cz:                                            ; preds = %_ZSt4findISt14_List_iteratorIN6Assimp8Q3Shader15ShaderDataBlockEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_SB_SB_RKT0_.exit
  %i.oj = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.da unwind label %bb.cy

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZN6Assimp6Logger4warnIJRA34_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.oj, ptr noundef nonnull align 1 dereferenceable(34) @.str.91, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.db unwind label %bb.cy

bb.db:                                            ; preds = %bb.da, %bb.cw
  %.0233 = phi ptr [ %i.oe, %bb.cw ], [ null, %bb.da ]
  %i.ok = load ptr, ptr %12, align 8              ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.jb
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %bb.db
  %i.om = load i64, ptr %i.jb, align 8
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.on) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.dc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348: ; preds = %bb.cy
  %i.oo = load i64, ptr %i.jb, align 8
  %i.op = add i64 %i.oo, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.op) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348, %bb.cx
  %.pn263.pn = phi { ptr, i32 } [ %i.of, %bb.cx ], [ %i.og, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348 ], [ %i.og, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.fh

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.1234 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.0233, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347 ] ; 3 uses
  %i.oq = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
end_hunk_0
