inline.NumInlined: 3577
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZL22_exif_decode_exif_dataP10dt_image_tRN5Exiv28ExifDataE:bb.a

.noexc.i1828:                                     ; preds = %bb.gm
  %i.aht = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  store ptr %i.aht, ptr %33, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn) #35
  store i64 27, ptr %i.bn, align 8, !tbaa !20
  %i.ahu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.bn, i64 noundef 0)
          to label %.noexc1829 unwind label %bb.gt ; 2 uses

.noexc1829:                                       ; preds = %.noexc.i1828
  store ptr %i.ahu, ptr %33, align 8, !tbaa !22
  %i.ahv = load i64, ptr %i.bn, align 8, !tbaa !20 ; 3 uses
  store i64 %i.ahv, ptr %i.aht, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.ahu, ptr noundef nonnull align 1 dereferenceable(27) @.str.423, i64 27, i1 false)
  %i.ahw = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 %i.ahv, ptr %i.ahw, align 8, !tbaa !25
  %i.ahx = load ptr, ptr %33, align 8, !tbaa !22
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 %i.ahv
  store i8 0, ptr %i.ahy, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn) #35
  %i.ahz = invoke fastcc noundef zeroext i1 @_ZL19_exif_read_exif_tagRN5Exiv28ExifDataEPSt20_List_const_iteratorINS_9ExifdatumEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef align 8 %33)
          to label %.critedge1511 unwind label %bb.gu ; 2 uses

.critedge1511:                                    ; preds = %.noexc1829
  %i.aia = load ptr, ptr %33, align 8, !tbaa !22  ; 2 uses
  %i.aib = icmp eq ptr %i.aia, %i.aht
  br i1 %i.aib, label %.critedge1514, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1831

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1831: ; preds = %.critedge1511
  %i.aic = load i64, ptr %i.aht, align 8, !tbaa !24
  %i.aid = add i64 %i.aic, 1
  call void @_ZdlPvm(ptr noundef %i.aia, i64 noundef %i.aid) #37
  br label %.critedge1514

.critedge1514:                                    ; preds = %.critedge1511, %bb.gm, %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1831
  %i.aie = phi i1 [ false, %bb.gm ], [ %i.ahz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1831 ], [ true, %bb.gk ], [ %i.ahz, %.critedge1511 ] ; 2 uses
  %i.aif = load ptr, ptr %32, align 8, !tbaa !22  ; 2 uses
  %i.aig = icmp eq ptr %i.aif, %i.ahl
  br i1 %i.aig, label %.critedge1515, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1834

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1834: ; preds = %.critedge1514
  %i.aih = load i64, ptr %i.ahl, align 8, !tbaa !24
  %i.aii = add i64 %i.aih, 1
  call void @_ZdlPvm(ptr noundef %i.aif, i64 noundef %i.aii) #37
  br label %.critedge1515

.critedge1515:                                    ; preds = %.critedge1514, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1834, %bb.gj
  %i.aij = phi i1 [ true, %bb.gj ], [ %i.aie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1834 ], [ %i.aie, %.critedge1514 ]
  %i.aik = load ptr, ptr %31, align 8, !tbaa !22  ; 2 uses
  %i.ail = icmp eq ptr %i.aik, %i.ahe
  br i1 %i.ail, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1839, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1837

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1837: ; preds = %.critedge1515
  %i.aim = load i64, ptr %i.ahe, align 8, !tbaa !24
  %i.ain = add i64 %i.aim, 1
  call void @_ZdlPvm(ptr noundef %i.aik, i64 noundef %i.ain) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1839

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1839: ; preds = %.critedge1515, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1837
  br i1 %i.aij, label %bb.gn, label %.noexc.i1850

bb.gn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1839
  %i.aio = load ptr, ptr %2, align 8, !tbaa !1721
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 16 ; 2 uses
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !48
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 160
  %i.ais = load ptr, ptr %i.air, align 8
  %i.ait = invoke noundef float %i.ais(ptr noundef nonnull align 8 dereferenceable(24) %i.aip, i64 noundef 0)
          to label %bb.go unwind label %bb.gv, !call_target !1731

bb.go:                                            ; preds = %bb.gn
  %i.aiu = fmul reassoc nsz arcp contract afn float %i.ait, 2.500000e-02
  %i.aiv = call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float 1.000000e+01, float %i.aiu)
  %i.aiw = fmul reassoc nsz arcp contract afn float %i.aiv, f0x3C23D70A
  %i.aix = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.aiw, ptr %i.aix, align 4, !tbaa !1862
  br label %.critedge14

bb.gp:                                            ; preds = %.critedge1509.thread
  %i.aiy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582

bb.gq:                                            ; preds = %.noexc1821
  %i.aiz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1845

bb.gr:                                            ; preds = %.noexc.i1824
  %i.aja = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1845

bb.gs:                                            ; preds = %bb.gl, %.noexc1825
  %i.ajb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1842

bb.gt:                                            ; preds = %.noexc.i1828
  %i.ajc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1842

bb.gu:                                            ; preds = %.noexc1829
  %i.ajd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE        ; 2 uses
  %i.aje = load ptr, ptr %33, align 8, !tbaa !22  ; 2 uses
  %i.ajf = icmp eq ptr %i.aje, %i.aht
  br i1 %i.ajf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1842, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1840

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1840: ; preds = %bb.gu
  %i.ajg = load i64, ptr %i.aht, align 8, !tbaa !24
  %i.ajh = add i64 %i.ajg, 1
  call void @_ZdlPvm(ptr noundef %i.aje, i64 noundef %i.ajh) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1842

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1842: ; preds = %bb.gu, %bb.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1840, %bb.gs
  %.pn1173.pn = phi { ptr, i32 } [ %i.ajb, %bb.gs ], [ %i.ajc, %bb.gt ], [ %i.ajd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1840 ], [ %i.ajd, %bb.gu ] ; 2 uses
  %i.aji = load ptr, ptr %32, align 8, !tbaa !22  ; 2 uses
  %i.ajj = icmp eq ptr %i.aji, %i.ahl
  br i1 %i.ajj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1845, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1843

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1843: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1842
  %i.ajk = load i64, ptr %i.ahl, align 8, !tbaa !24
  %i.ajl = add i64 %i.ajk, 1
  call void @_ZdlPvm(ptr noundef %i.aji, i64 noundef %i.ajl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1845

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1845: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1842, %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1843, %bb.gq
  %.pn1173.pn.pn.pn = phi { ptr, i32 } [ %i.aiz, %bb.gq ], [ %i.aja, %bb.gr ], [ %.pn1173.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1843 ], [ %.pn1173.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1842 ] ; 2 uses
  %i.ajm = load ptr, ptr %31, align 8, !tbaa !22  ; 2 uses
  %i.ajn = icmp eq ptr %i.ajm, %i.ahe
  br i1 %i.ajn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1846

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1846: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1845
  %i.ajo = load i64, ptr %i.ahe, align 8, !tbaa !24
  %i.ajp = add i64 %i.ajo, 1
  call void @_ZdlPvm(ptr noundef %i.ajm, i64 noundef %i.ajp) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582

bb.gv:                                            ; preds = %bb.gn
  %i.ajq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582

.noexc.i1850:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1839
  %i.ajr = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 6 uses
  store ptr %i.ajr, ptr %34, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm) #35
  store i64 28, ptr %i.bm, align 8, !tbaa !20
  %i.ajs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i64 noundef 0)
          to label %.noexc1851 unwind label %bb.gz ; 2 uses

.noexc1851:                                       ; preds = %.noexc.i1850
  store ptr %i.ajs, ptr %34, align 8, !tbaa !22
  %i.ajt = load i64, ptr %i.bm, align 8, !tbaa !20 ; 3 uses
  store i64 %i.ajt, ptr %i.ajr, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.ajs, ptr noundef nonnull align 1 dereferenceable(28) @.str.426, i64 28, i1 false)
  %i.aju = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 %i.ajt, ptr %i.aju, align 8, !tbaa !25
  %i.ajv = load ptr, ptr %34, align 8, !tbaa !22
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 %i.ajt
  store i8 0, ptr %i.ajw, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm) #35
  %i.ajx = invoke fastcc noundef zeroext i1 @_ZL19_exif_read_exif_tagRN5Exiv28ExifDataEPSt20_List_const_iteratorINS_9ExifdatumEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef align 8 %34)
          to label %bb.gw unwind label %bb.ha

bb.gw:                                            ; preds = %.noexc1851
  %i.ajy = load ptr, ptr %34, align 8, !tbaa !22  ; 2 uses
  %i.ajz = icmp eq ptr %i.ajy, %i.ajr
  br i1 %i.ajz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1855, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1853

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1853: ; preds = %bb.gw
  %i.aka = load i64, ptr %i.ajr, align 8, !tbaa !24
  %i.akb = add i64 %i.aka, 1
  call void @_ZdlPvm(ptr noundef %i.ajy, i64 noundef %i.akb) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1855

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1855: ; preds = %bb.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1853
  br i1 %i.ajx, label %bb.gx, label %.noexc.i1860

bb.gx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1855
  %i.akc = load ptr, ptr %2, align 8, !tbaa !1721
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 16 ; 2 uses
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !48
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 168
  %i.akg = load ptr, ptr %i.akf, align 8
  %i.akh = invoke i64 %i.akg(ptr noundef nonnull align 8 dereferenceable(24) %i.akd, i64 noundef 0)
          to label %bb.gy unwind label %bb.hb, !call_target !1798

bb.gy:                                            ; preds = %bb.gx
  %.sroa.0370.0.extract.trunc = trunc i64 %i.akh to i32
  %i.aki = sitofp reassoc nsz arcp contract afn i32 %.sroa.0370.0.extract.trunc to double
  %135 = fmul reassoc nnan nsz arcp contract afn double %i.aki, 1.000000e-03
  %136 = call reassoc nsz arcp contract afn double @llvm.maxnum.f64(double %135, double 0.000000e+00)
  %i.akj = fptrunc reassoc nsz arcp contract afn double %136 to float
  %i.akk = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.akj, ptr %i.akk, align 4, !tbaa !1862
  br label %.critedge14

bb.gz:                                            ; preds = %.noexc.i1850
  %i.akl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582

bb.ha:                                            ; preds = %.noexc1851
  %i.akm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE        ; 2 uses
  %i.akn = load ptr, ptr %34, align 8, !tbaa !22  ; 2 uses
  %i.ako = icmp eq ptr %i.akn, %i.ajr
  br i1 %i.ako, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1856

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1856: ; preds = %bb.ha
  %i.akp = load i64, ptr %i.ajr, align 8, !tbaa !24
  %i.akq = add i64 %i.akp, 1
  call void @_ZdlPvm(ptr noundef %i.akn, i64 noundef %i.akq) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582

bb.hb:                                            ; preds = %bb.gx
  %i.akr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582

.noexc.i1860:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1855
  %i.aks = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.aks, ptr %35, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl) #35
  store i64 31, ptr %i.bl, align 8, !tbaa !20
  %i.akt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i64 noundef 0)
          to label %.noexc1861 unwind label %bb.hg ; 2 uses

.noexc1861:                                       ; preds = %.noexc.i1860
  store ptr %i.akt, ptr %35, align 8, !tbaa !22
  %i.aku = load i64, ptr %i.bl, align 8, !tbaa !20 ; 3 uses
  store i64 %i.aku, ptr %i.aks, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.akt, ptr noundef nonnull align 1 dereferenceable(31) @.str.427, i64 31, i1 false)
  %i.akv = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %i.aku, ptr %i.akv, align 8, !tbaa !25
  %i.akw = load ptr, ptr %35, align 8, !tbaa !22
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 %i.aku
  store i8 0, ptr %i.akx, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl) #35
  %i.aky = invoke fastcc noundef zeroext i1 @_ZL19_exif_read_exif_tagRN5Exiv28ExifDataEPSt20_List_const_iteratorINS_9ExifdatumEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef align 8 %35)
          to label %bb.hc unwind label %bb.hh

bb.hc:                                            ; preds = %.noexc1861
  %i.akz = load ptr, ptr %35, align 8, !tbaa !22  ; 2 uses
  %i.ala = icmp eq ptr %i.akz, %i.aks
  br i1 %i.ala, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1865, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1863

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1863: ; preds = %bb.hc
  %i.alb = load i64, ptr %i.aks, align 8, !tbaa !24
  %i.alc = add i64 %i.alb, 1
  call void @_ZdlPvm(ptr noundef %i.akz, i64 noundef %i.alc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1865

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1865: ; preds = %bb.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1863
  br i1 %i.aky, label %bb.hd, label %.noexc.i1880

bb.hd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1865
  %i.ald = load ptr, ptr %2, align 8, !tbaa !1721
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 16 ; 2 uses
  %i.alf = load ptr, ptr %i.ale, align 8, !tbaa !48
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 160
  %i.alh = load ptr, ptr %i.alg, align 8
  %i.ali = invoke noundef float %i.alh(ptr noundef nonnull align 8 dereferenceable(24) %i.ale, i64 noundef 0)
          to label %bb.he unwind label %bb.hi, !call_target !1731 ; 3 uses

bb.he:                                            ; preds = %bb.hd
  %i.alj = fcmp reassoc nsz arcp contract afn ole float %i.ali, 0.000000e+00
  %i.alk = fptosi float %i.ali to i32
  %i.all = icmp sgt i32 %i.alk, 65534
  %or.cond1517 = select i1 %i.alj, i1 true, i1 %i.all
  br i1 %or.cond1517, label %bb.hf, label %.noexc.i1870

bb.hf:                                            ; preds = %bb.he
  %i.alm = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.alm, align 4, !tbaa !1862
  br label %.critedge14

bb.hg:                                            ; preds = %.noexc.i1860
  %i.aln = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582

bb.hh:                                            ; preds = %.noexc1861
  %i.alo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE        ; 2 uses
  %i.alp = load ptr, ptr %35, align 8, !tbaa !22  ; 2 uses
  %i.alq = icmp eq ptr %i.alp, %i.aks
  br i1 %i.alq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1866

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1866: ; preds = %bb.hh
  %i.alr = load i64, ptr %i.aks, align 8, !tbaa !24
  %i.als = add i64 %i.alr, 1
  call void @_ZdlPvm(ptr noundef %i.alp, i64 noundef %i.als) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582

bb.hi:                                            ; preds = %bb.hd
  %i.alt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582

.noexc.i1870:                                     ; preds = %bb.he
  %i.alu = fpext reassoc nsz arcp contract afn float %i.ali to double
  %i.alv = fmul reassoc nsz arcp contract afn double %i.alu, 1.000000e-02
  %i.alw = fptrunc reassoc nsz arcp contract afn double %i.alv to float
  %i.alx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  store float %i.alw, ptr %i.alx, align 4, !tbaa !1862
  %i.aly = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  store ptr %i.aly, ptr %36, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk) #35
  store i64 31, ptr %i.bk, align 8, !tbaa !20
  %i.alz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i64 noundef 0)
          to label %.noexc1871 unwind label %bb.hn ; 2 uses

.noexc1871:                                       ; preds = %.noexc.i1870
  store ptr %i.alz, ptr %36, align 8, !tbaa !22
  %i.ama = load i64, ptr %i.bk, align 8, !tbaa !20 ; 3 uses
  store i64 %i.ama, ptr %i.aly, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.alz, ptr noundef nonnull align 1 dereferenceable(31) @.str.428, i64 31, i1 false)
  %i.amb = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %i.ama, ptr %i.amb, align 8, !tbaa !25
  %i.amc = load ptr, ptr %36, align 8, !tbaa !22
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.ama
  store i8 0, ptr %i.amd, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk) #35
  %i.ame = invoke fastcc noundef zeroext i1 @_ZL19_exif_read_exif_tagRN5Exiv28ExifDataEPSt20_List_const_iteratorINS_9ExifdatumEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef align 8 %36)
          to label %bb.hj unwind label %bb.ho

bb.hj:                                            ; preds = %.noexc1871
  %i.amf = load ptr, ptr %36, align 8, !tbaa !22  ; 2 uses
  %i.amg = icmp eq ptr %i.amf, %i.aly
  br i1 %i.amg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1875, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1873

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1873: ; preds = %bb.hj
  %i.amh = load i64, ptr %i.aly, align 8, !tbaa !24
  %i.ami = add i64 %i.amh, 1
  call void @_ZdlPvm(ptr noundef %i.amf, i64 noundef %i.ami) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1875

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1875: ; preds = %bb.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1873
  br i1 %i.ame, label %bb.hk, label %.critedge14

bb.hk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1875
  %i.amj = load ptr, ptr %2, align 8, !tbaa !1721
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 16 ; 2 uses
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !48
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 160
  %i.amn = load ptr, ptr %i.amm, align 8
  %i.amo = invoke noundef float %i.amn(ptr noundef nonnull align 8 dereferenceable(24) %i.amk, i64 noundef 0)
          to label %bb.hl unwind label %bb.hp, !call_target !1731 ; 3 uses

bb.hl:                                            ; preds = %bb.hk
  %i.amp = fcmp reassoc nsz arcp contract afn ogt float %i.amo, 0.000000e+00
  %i.amq = fptosi float %i.amo to i32
  %i.amr = icmp slt i32 %i.amq, 65535
  %or.cond1519 = select i1 %i.amp, i1 %i.amr, i1 false
  br i1 %or.cond1519, label %bb.hm, label %.critedge14

bb.hm:                                            ; preds = %bb.hl
  %i.ams = fpext reassoc nnan nsz arcp contract afn float %i.amo to double
  %i.amt = fmul reassoc nnan nsz arcp contract afn double %i.ams, 1.000000e-02
  %i.amu = load float, ptr %i.alx, align 4, !tbaa !1862
  %i.amv = fpext reassoc nsz arcp contract afn float %i.amu to double
  %i.amw = fadd reassoc nsz arcp contract afn double %i.amt, %i.amv
  %i.amx = fptrunc reassoc nsz arcp contract afn double %i.amw to float
  %i.amy = fmul reassoc nsz arcp contract afn float %i.amx, 5.000000e-01
  store float %i.amy, ptr %i.alx, align 4, !tbaa !1862
  br label %.critedge14

bb.hn:                                            ; preds = %.noexc.i1870
  %i.amz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582

bb.ho:                                            ; preds = %.noexc1871
  %i.ana = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE        ; 2 uses
  %i.anb = load ptr, ptr %36, align 8, !tbaa !22  ; 2 uses
  %i.anc = icmp eq ptr %i.anb, %i.aly
  br i1 %i.anc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1876

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1876: ; preds = %bb.ho
  %i.and = load i64, ptr %i.aly, align 8, !tbaa !24
  %i.ane = add i64 %i.and, 1
  call void @_ZdlPvm(ptr noundef %i.anb, i64 noundef %i.ane) #37
end_hunk_0
