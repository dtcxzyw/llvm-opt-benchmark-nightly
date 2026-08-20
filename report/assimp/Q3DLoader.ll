inline.NumInlined: 896
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  br label %.body589

bb.kh:                                            ; preds = %.invoke1810.a, %bb.jo
  %i.ahb = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.ki:                                            ; preds = %bb.jz
  %i.ahc = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.kj:                                            ; preds = %.invoke1812.a
  %i.ahd = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.kk:                                            ; preds = %bb.kf
  %i.ahe = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.agz) #24
  br label %.body589

.preheader1817:                                   ; preds = %bb.ke, %bb.kn
  %i.ahf = phi ptr [ %i.ahg, %bb.kn ], [ %i.ags, %bb.ke ] ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 1 ; 4 uses
  %i.ahh = icmp ugt ptr %i.ahg, %i.add
  br i1 %i.ahh, label %bb.kl, label %bb.kn

bb.kl:                                            ; preds = %.preheader1817
  %i.ahi = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ahi, ptr noundef nonnull @.str.43)
          to label %.invoke1814 unwind label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.ahj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ahi) #24
  br label %.body589

bb.kn:                                            ; preds = %.preheader1817
  %i.ahk = load i8, ptr %i.ahf, align 1
  store ptr %i.ahg, ptr %i.x, align 8
  %.not481 = icmp eq i8 %i.ahk, 0
  br i1 %.not481, label %bb.kp, label %.preheader1817, !llvm.loop !25

bb.ko:                                            ; preds = %.invoke1814
  %i.ahl = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.kp:                                            ; preds = %bb.kn
  %i.ahm = mul i32 %i.agr, 3
  %i.ahn = mul i32 %i.ahm, %i.agx
  %i.aho = add i32 %i.ahn, 20
  %i.ahp = zext i32 %i.aho to i64
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahg, i64 %i.ahp ; 2 uses
  store ptr %i.ahq, ptr %i.x, align 8
  %i.ahr = icmp ugt ptr %i.ahq, %i.add
  br i1 %i.ahr, label %bb.kq, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844.thread

bb.kq:                                            ; preds = %bb.kp
  %i.ahs = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ahs, ptr noundef nonnull @.str.42)
          to label %.invoke1814 unwind label %bb.kr

.invoke1814:                                      ; preds = %bb.kl, %bb.kq
  %i.aht = phi ptr [ %i.ahs, %bb.kq ], [ %i.ahi, %bb.kl ]
  invoke void @__cxa_throw(ptr nonnull %i.aht, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %.cont1815 unwind label %bb.ko

.cont1815:                                        ; preds = %.invoke1814
  unreachable

bb.kr:                                            ; preds = %bb.kq
  %i.ahu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ahs) #24
  br label %.body589

bb.ks:                                            ; preds = %bb.bn
  %i.ahv = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ahv, ptr noundef nonnull @.str.20)
          to label %.invoke unwind label %bb.kt

.invoke:                                          ; preds = %bb.bl, %bb.ks, %bb.il, %bb.ij
  %i.ahw = phi ptr [ %i.zn, %bb.il ], [ %i.ahv, %bb.ks ], [ %i.zl, %bb.ij ], [ %i.ej, %bb.bl ]
  invoke void @__cxa_throw(ptr nonnull %i.ahw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %.cont unwind label %.loopexit.split-lp1013

.cont:                                            ; preds = %.invoke
  unreachable

bb.kt:                                            ; preds = %bb.ks
  %i.ahx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ahv) #24
  br label %.body589

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844.loopexit1251: ; preds = %bb.hc
  %.pre1452 = load ptr, ptr %i.x, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844: ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit678, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844.loopexit1251, %.preheader999, %.preheader983, %bb.hd
  %i.ahy = phi ptr [ %i.eg, %bb.hd ], [ %i.sa, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit678 ], [ %.pre1452, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844.loopexit1251 ], [ %i.eg, %.preheader983 ], [ %i.eg, %.preheader999 ], [ %i.yu, %._crit_edge ] ; 2 uses
  %i.ahz = load ptr, ptr %i.v, align 8
  %i.aia = ptrtoint ptr %i.ahz to i64
  %i.aib = ptrtoint ptr %i.ahy to i64
  %i.aic = sub i64 %i.aia, %i.aib
  %i.aid = and i64 %i.aic, 4294967295
  %i.aie = icmp eq i64 %i.aid, 0
  br i1 %i.aie, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844.thread, label %bb.bk

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844.thread: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844, %bb.bg, %bb.kp
  %.sroa.0948.2 = phi float [ %i.aep, %bb.kp ], [ 6.000000e-01, %bb.bg ], [ 6.000000e-01, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844 ]
  %.sroa.6949.2 = phi float [ %i.aeu, %bb.kp ], [ 6.000000e-01, %bb.bg ], [ 6.000000e-01, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844 ]
  %.sroa.9.2 = phi float [ %i.aez, %bb.kp ], [ 6.000000e-01, %bb.bg ], [ 6.000000e-01, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844 ]
  %i.aif = load ptr, ptr %9, align 8
  %i.aig = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.aih = load ptr, ptr %i.aig, align 8
  %i.aii = icmp eq ptr %i.aif, %i.aih
  br i1 %i.aii, label %bb.ku, label %bb.kx

bb.ku:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844.thread
  %i.aij = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aij, ptr noundef nonnull @.str.21)
          to label %bb.kv unwind label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  invoke void @__cxa_throw(ptr nonnull %i.aij, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ph unwind label %bb.bj

bb.kw:                                            ; preds = %bb.ku
  %i.aik = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aij) #24
  br label %.body589

bb.kx:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844.thread
  %i.ail = load ptr, ptr %8, align 8              ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  %i.ain = load ptr, ptr %i.aim, align 8          ; 2 uses
  %i.aio = icmp eq ptr %i.ail, %i.ain
  br i1 %i.aio, label %bb.ky, label %bb.ld

bb.ky:                                            ; preds = %bb.kx
  %i.aip = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.kz unwind label %bb.bj

bb.kz:                                            ; preds = %bb.ky
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aip, ptr noundef nonnull @.str.22)
          to label %bb.la unwind label %bb.bj

bb.la:                                            ; preds = %bb.kz
  %i.aiq = load ptr, ptr %i.aim, align 8          ; 8 uses
  %i.air = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ais = load ptr, ptr %i.air, align 8
  %.not.i845 = icmp eq ptr %i.aiq, %i.ais
  br i1 %.not.i845, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aiq, i64 1040
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1072) %i.aiq, i8 0, i64 1040, i1 false)
  store <2 x float> splat (float 6.000000e-01), ptr %i.ait, align 4
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aiq, i64 1048
  store float 6.000000e-01, ptr %i.aiu, align 4
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiq, i64 1052
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiq, i64 1068
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aiv, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.aiw, align 4
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiq, i64 1072 ; 2 uses
  store ptr %i.aix, ptr %i.aim, align 8
  br label %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848

bb.lc:                                            ; preds = %bb.la
  invoke void @_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.aiq)
          to label %._ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848_crit_edge unwind label %bb.bj

._ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848_crit_edge: ; preds = %bb.lc
  %.pre1453 = load ptr, ptr %i.aim, align 8
  br label %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848

_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848: ; preds = %._ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848_crit_edge, %bb.lb
  %i.aiy = phi ptr [ %.pre1453, %._ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848_crit_edge ], [ %i.aix, %bb.lb ] ; 3 uses
  %i.aiz = getelementptr inbounds i8, ptr %i.aiy, i64 -32
  store float %.sroa.0948.2, ptr %i.aiz, align 4
  %i.aja = getelementptr inbounds i8, ptr %i.aiy, i64 -28
  store float %.sroa.6949.2, ptr %i.aja, align 4
  %i.ajb = getelementptr inbounds i8, ptr %i.aiy, i64 -24
  store float %.sroa.9.2, ptr %i.ajb, align 4
  %.pre1454 = load ptr, ptr %i.aim, align 8
  %.pre1455 = load ptr, ptr %8, align 8
  br label %bb.ld

bb.ld:                                            ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848, %bb.kx
  %i.ajc = phi ptr [ %.pre1455, %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848 ], [ %i.ail, %bb.kx ] ; 2 uses
  %i.ajd = phi ptr [ %.pre1454, %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848 ], [ %i.ain, %bb.kx ] ; 2 uses
  %i.aje = ptrtoint ptr %i.ajd to i64
  %i.ajf = ptrtoint ptr %i.ajc to i64
  %i.ajg = sub i64 %i.aje, %i.ajf
  %i.ajh = sdiv exact i64 %i.ajg, 1072            ; 3 uses
  %i.aji = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ajh, i64 24) ; 2 uses
  %i.ajj = extractvalue { i64, i1 } %i.aji, 1
  %i.ajk = extractvalue { i64, i1 } %i.aji, 0
  %i.ajl = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ajk, i64 8) ; 2 uses
  %i.ajm = extractvalue { i64, i1 } %i.ajl, 1
  %i.ajn = or i1 %i.ajj, %i.ajm
  %i.ajo = extractvalue { i64, i1 } %i.ajl, 0
  %i.ajp = select i1 %i.ajn, i64 -1, i64 %i.ajo
  %i.ajq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ajp) #28
          to label %bb.le unwind label %bb.lf     ; 5 uses

bb.le:                                            ; preds = %bb.ld
  store i64 %i.ajh, ptr %i.ajq, align 16
  %.ptr519 = getelementptr inbounds nuw i8, ptr %i.ajq, i64 8 ; 6 uses
  %i.ajr = icmp eq ptr %i.ajd, %i.ajc
  br i1 %i.ajr, label %.loopexit971, label %10

10:                                               ; preds = %bb.le
  %11 = getelementptr inbounds [24 x i8], ptr %.ptr519, i64 %i.ajh
  br label %.loopexit971.loopexit

.loopexit971.loopexit:                            ; preds = %.loopexit971.loopexit, %10
  %12 = phi ptr [ %.ptr519, %10 ], [ %13, %.loopexit971.loopexit ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %14 = icmp eq ptr %13, %11
  br i1 %14, label %.loopexit971, label %.loopexit971.loopexit

.loopexit971:                                     ; preds = %.loopexit971.loopexit, %bb.le
  %i.ajs = load ptr, ptr %9, align 8              ; 2 uses
  %i.ajt = load ptr, ptr %i.aig, align 8          ; 2 uses
  %.not9621194 = icmp eq ptr %i.ajs, %i.ajt
  br i1 %.not9621194, label %._crit_edge1199, label %.lr.ph1198

.lr.ph1198:                                       ; preds = %.loopexit971
  %i.aju = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.lg

._crit_edge1199:                                  ; preds = %._crit_edge1193, %.loopexit971
  %i.ajv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ajw = load i32, ptr %i.ajv, align 8          ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.ajw, ptr %i.ajx, align 8
  %i.ajy = zext i32 %i.ajw to i64
  %i.ajz = shl nuw nsw i64 %i.ajy, 3              ; 2 uses
  %i.aka = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ajz) #28
          to label %bb.lr unwind label %bb.lt

bb.lf:                                            ; preds = %bb.ld
  %i.akb = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.lg:                                            ; preds = %.lr.ph1198, %._crit_edge1193
  %.09531196 = phi i32 [ 0, %.lr.ph1198 ], [ %i.akh, %._crit_edge1193 ] ; 3 uses
  %.sroa.0939.01195 = phi ptr [ %i.ajs, %.lr.ph1198 ], [ %i.akg, %._crit_edge1193 ] ; 3 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %.sroa.0939.01195, i64 72
  %i.akd = load ptr, ptr %i.akc, align 8          ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %.sroa.0939.01195, i64 80
  %i.akf = load ptr, ptr %i.ake, align 8          ; 2 uses
  %.not9651188 = icmp eq ptr %i.akd, %i.akf
  br i1 %.not9651188, label %._crit_edge1193, label %.lr.ph1192

._crit_edge1193:                                  ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit, %bb.lg
  %i.akg = getelementptr inbounds nuw i8, ptr %.sroa.0939.01195, i64 104 ; 2 uses
  %i.akh = add i32 %.09531196, 1
  %.not962 = icmp eq ptr %i.akg, %i.ajt
  br i1 %.not962, label %._crit_edge1199, label %bb.lg, !llvm.loop !26

.lr.ph1192:                                       ; preds = %bb.lg, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit
  %.sroa.0930.01190 = phi ptr [ %i.amp, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ], [ %i.akd, %bb.lg ] ; 2 uses
  %.09541189 = phi i32 [ %i.amq, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ], [ 0, %bb.lg ] ; 3 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %.sroa.0930.01190, i64 48 ; 3 uses
  %i.akj = load i32, ptr %i.aki, align 8          ; 2 uses
  %i.akk = zext i32 %i.akj to i64
  %i.akl = load ptr, ptr %i.aim, align 8
  %i.akm = load ptr, ptr %8, align 8
  %i.akn = ptrtoint ptr %i.akl to i64
  %i.ako = ptrtoint ptr %i.akm to i64
  %i.akp = sub i64 %i.akn, %i.ako
  %i.akq = sdiv exact i64 %i.akp, 1072
  %.not545 = icmp ugt i64 %i.akq, %i.akk
  br i1 %.not545, label %bb.lk, label %bb.lh

bb.lh:                                            ; preds = %.lr.ph1192
  %i.akr = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.li unwind label %.loopexit970

bb.li:                                            ; preds = %bb.lh
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.akr, ptr noundef nonnull @.str.23)
          to label %bb.lj unwind label %.loopexit970

bb.lj:                                            ; preds = %bb.li
  store i32 0, ptr %i.aki, align 8
  br label %bb.lk

.loopexit970:                                     ; preds = %bb.lh, %bb.li, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body589

.loopexit.split-lp:                               ; preds = %bb.lp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.lk:                                            ; preds = %bb.lj, %.lr.ph1192
  %i.aks = phi i32 [ 0, %bb.lj ], [ %i.akj, %.lr.ph1192 ]
  %i.akt = zext i32 %i.aks to i64                 ; 2 uses
  %i.aku = getelementptr inbounds nuw [24 x i8], ptr %.ptr519, i64 %i.akt ; 2 uses
  %i.akv = load ptr, ptr %i.aku, align 8
  %i.akw = getelementptr inbounds nuw i8, ptr %i.aku, i64 8
  %i.akx = load ptr, ptr %i.akw, align 8          ; 2 uses
  %i.aky = icmp eq ptr %i.akv, %i.akx
  br i1 %i.aky, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.akz = load i32, ptr %i.aju, align 8
  %i.ala = add i32 %i.akz, 1
  store i32 %i.ala, ptr %i.aju, align 8
  %.pre1456 = load i32, ptr %i.aki, align 8
  %.phi.trans.insert = zext i32 %.pre1456 to i64  ; 2 uses
  %.phi.trans.insert1457 = getelementptr inbounds nuw [24 x i8], ptr %.ptr519, i64 %.phi.trans.insert
  %.phi.trans.insert1458 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert1457, i64 8
  %.pre1459 = load ptr, ptr %.phi.trans.insert1458, align 8
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %bb.lk
  %.pre-phi = phi i64 [ %.phi.trans.insert, %bb.ll ], [ %i.akt, %bb.lk ]
  %i.alb = phi ptr [ %.pre1459, %bb.ll ], [ %i.akx, %bb.lk ] ; 6 uses
  %i.alc = getelementptr inbounds nuw [24 x i8], ptr %.ptr519, i64 %.pre-phi ; 4 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 8 ; 3 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alc, i64 16 ; 2 uses
  %i.alf = load ptr, ptr %i.ale, align 8
  %.not.i849 = icmp eq ptr %i.alb, %i.alf
  br i1 %.not.i849, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  store i32 %.09531196, ptr %i.alb, align 4
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alb, i64 4
  store i32 %.09541189, ptr %i.alg, align 4
  %i.alh = load ptr, ptr %i.ald, align 8
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 8
  store ptr %i.ali, ptr %i.ald, align 8
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit

bb.lo:                                            ; preds = %bb.lm
  %i.alj = load ptr, ptr %i.alc, align 8          ; 7 uses
  %i.alk = ptrtoint ptr %i.alb to i64             ; 2 uses
  %i.all = ptrtoint ptr %i.alj to i64             ; 3 uses
  %i.alm = sub i64 %i.alk, %i.all                 ; 4 uses
  %i.aln = icmp eq i64 %i.alm, 9223372036854775800
  br i1 %i.aln, label %bb.lp, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.lp:                                            ; preds = %bb.lo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
          to label %.noexc850 unwind label %.loopexit.split-lp

.noexc850:                                        ; preds = %bb.lp
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.lo
  %i.alo = ashr exact i64 %i.alm, 3               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.alo, i64 1)
  %i.alp = add nsw i64 %.sroa.speculated.i.i.i, %i.alo ; 2 uses
  %i.alq = icmp ult i64 %i.alp, %i.alo
  %i.alr = call i64 @llvm.umin.i64(i64 %i.alp, i64 1152921504606846975)
  %i.als = select i1 %i.alq, i64 1152921504606846975, i64 %i.alr ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.als, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.alt = shl nuw nsw i64 %i.als, 3
  %i.alu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alt) #28
          to label %.noexc851 unwind label %.loopexit970 ; 8 uses

.noexc851:                                        ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 %i.alm ; 2 uses
  store i32 %.09531196, ptr %i.alv, align 4
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 4
  store i32 %.09541189, ptr %i.alw, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.alj, %i.alb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc851
  %i.alx = ptrtoaddr ptr %i.alu to i64
  %i.aly = add i64 %i.alk, -8
  %i.alz = sub i64 %i.aly, %i.all                 ; 2 uses
  %i.ama = lshr i64 %i.alz, 3
  %i.amb = add nuw nsw i64 %i.ama, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.alz, 24
  %i.amc = sub i64 %i.all, %i.alx
  %diff.check = icmp ugt i64 %i.amc, -32
  %or.cond1966 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1966, label %.lr.ph.i.i.i.i.i.preheader1982, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.amb, 4611686018427387900    ; 3 uses
  %i.amd = shl i64 %n.vec, 3                      ; 2 uses
  %i.ame = getelementptr i8, ptr %i.alu, i64 %i.amd ; 2 uses
  %i.amf = getelementptr i8, ptr %i.alj, i64 %i.amd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.amg = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.alu, i64 %i.amg ; 2 uses
  %next.gep1963 = getelementptr i8, ptr %i.alj, i64 %i.amg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.amh = getelementptr i8, ptr %next.gep1963, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1963, align 4, !alias.scope !30, !noalias !27
  %wide.load1964 = load <2 x i64>, ptr %i.amh, align 4, !alias.scope !30, !noalias !27
  %i.ami = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !27, !noalias !30
  store <2 x i64> %wide.load1964, ptr %i.ami, align 4, !alias.scope !27, !noalias !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.amj = icmp eq i64 %index.next, %n.vec
  br i1 %i.amj, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.amb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader1982

.lr.ph.i.i.i.i.i.preheader1982:                   ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.alu, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ame, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.alj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.amf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

end_hunk_0
