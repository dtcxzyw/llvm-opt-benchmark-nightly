Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/coordinateoperationfactory?download=true
inline.NumInlined: 9028
inline.NumDeleted: 2068
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumUnrolled: 114
begin_hunk_0_@_ZN5osgeo4proj9operation26CoordinateOperationFactory7Private28createOperationsFromDatabaseERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNS0_4util8optionalINS0_6common9DataEpochEEESD_SK_RNS3_7ContextEPKNS8_11GeodeticCRSESP_PKNS8_13GeographicCRSESS_PKNS8_11VerticalCRSESV_RSt6vectorINS6_IS7_INS1_19CoordinateOperationEEEESaISZ_EE:bb.a
bb.jy:                                            ; preds = %bb.jx
  store i32 0, ptr %i.aet, align 8, !tbaa !93
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aes, i64 12
  store i32 0, ptr %i.aex, align 4, !tbaa !94
  %i.aey = load ptr, ptr %i.aes, align 8, !tbaa !80
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  %i.afa = load ptr, ptr %i.aez, align 8
  call void %i.afa(ptr noundef nonnull align 8 dereferenceable(16) %i.aes) #31, !inline_history !17
  %i.afb = load ptr, ptr %i.aes, align 8, !tbaa !80
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 24
  %i.afd = load ptr, ptr %i.afc, align 8
  call void %i.afd(ptr noundef nonnull align 8 dereferenceable(16) %i.aes) #31, !inline_history !17
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit560

bb.jz:                                            ; preds = %bb.jx
  %i.afe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i557 = icmp eq i8 %i.afe, 0
  br i1 %.not.i.i.i.i557, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.aff = add nsw i32 %i.aew, -1
  store i32 %i.aff, ptr %i.aet, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i558

bb.kb:                                            ; preds = %bb.jz
  %i.afg = atomicrmw volatile add ptr %i.aet, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i558

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i558: ; preds = %bb.kb, %bb.ka
  %.0.i.i.i.i.i559 = phi i32 [ %i.aew, %bb.ka ], [ %i.afg, %bb.kb ]
  %i.afh = icmp eq i32 %.0.i.i.i.i.i559, 1
  br i1 %i.afh, label %bb.kc, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit560, !prof !95

bb.kc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i558
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aes) #31
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit560

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit560: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit, %bb.jy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i558, %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  %i.afi = load ptr, ptr %i.ade, align 8, !tbaa !89 ; 8 uses
  %.not.i.i561 = icmp eq ptr %i.afi, null
  br i1 %.not.i.i561, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565, label %bb.kd

bb.kd:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit560
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 8 ; 4 uses
  %i.afk = load atomic i64, ptr %i.afj acquire, align 8 ; 2 uses
  %i.afl = icmp eq i64 %i.afk, 4294967297
  %i.afm = trunc i64 %i.afk to i32                ; 2 uses
  br i1 %i.afl, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  store i32 0, ptr %i.afj, align 8, !tbaa !93
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afi, i64 12
  store i32 0, ptr %i.afn, align 4, !tbaa !94
  %i.afo = load ptr, ptr %i.afi, align 8, !tbaa !80
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 16
  %i.afq = load ptr, ptr %i.afp, align 8
  call void %i.afq(ptr noundef nonnull align 8 dereferenceable(16) %i.afi) #31, !inline_history !15
  %i.afr = load ptr, ptr %i.afi, align 8, !tbaa !80
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 24
  %i.aft = load ptr, ptr %i.afs, align 8
  call void %i.aft(ptr noundef nonnull align 8 dereferenceable(16) %i.afi) #31, !inline_history !15
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565

bb.kf:                                            ; preds = %bb.kd
  %i.afu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i562 = icmp eq i8 %i.afu, 0
  br i1 %.not.i.i.i562, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.afv = add nsw i32 %i.afm, -1
  store i32 %i.afv, ptr %i.afj, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i563

bb.kh:                                            ; preds = %bb.kf
  %i.afw = atomicrmw volatile add ptr %i.afj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i563

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i563: ; preds = %bb.kh, %bb.kg
  %.0.i.i.i.i564 = phi i32 [ %i.afm, %bb.kg ], [ %i.afw, %bb.kh ]
  %i.afx = icmp eq i32 %.0.i.i.i.i564, 1
  br i1 %i.afx, label %bb.ki, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565, !prof !95

bb.ki:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i563
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.afi) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565

_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit560, %bb.ke, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i563, %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  br label %bb.kl

bb.kj:                                            ; preds = %bb.jp, %bb.jo
  %.pn303 = phi { ptr, i32 } [ %i.adz, %bb.jp ], [ %i.ady, %bb.jo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #31
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %42) #31
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.jn
  %.pn303.pn = phi { ptr, i32 } [ %.pn303, %bb.kj ], [ %i.adx, %bb.jn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  br label %bb.ms

bb.kl:                                            ; preds = %bb.jc, %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565, %bb.ja, %bb.jb
  %.0277 = phi i1 [ false, %bb.jb ], [ false, %bb.ja ], [ %i.adn, %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565 ], [ false, %bb.jc ]
  %.1273 = phi i1 [ false, %bb.jb ], [ false, %bb.ja ], [ %.0272, %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565 ], [ false, %bb.jc ] ; 2 uses
  %i.afy = load ptr, ptr %i.es, align 8, !tbaa !158
  %i.afz = load ptr, ptr %11, align 8, !tbaa !157 ; 2 uses
  %i.aga = ptrtoint ptr %i.afy to i64
  %i.agb = ptrtoint ptr %i.afz to i64
  %i.agc = sub i64 %i.aga, %i.agb                 ; 2 uses
  %i.agd = icmp eq i64 %i.agc, 16
  br i1 %i.agd, label %bb.km, label %bb.kz

bb.km:                                            ; preds = %bb.kl
  %i.age = load ptr, ptr %i.afz, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter6createENS2_10ConventionESt10shared_ptrINS1_15DatabaseContextEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.368") align 8 %45, i32 noundef 0, ptr noundef nonnull align 8 %46)
          to label %bb.kn unwind label %bb.kv

bb.kn:                                            ; preds = %bb.km
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 48
  %i.agg = load ptr, ptr %45, align 8, !tbaa !327
  invoke void @_ZNK5osgeo4proj2io21IPROJStringExportable18exportToPROJStringB5cxx11EPNS1_19PROJStringFormatterE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %44, ptr noundef nonnull align 8 dereferenceable(8) %i.agf, ptr noundef %i.agg)
          to label %bb.ko unwind label %bb.kw

bb.ko:                                            ; preds = %bb.kn
  %i.agh = load ptr, ptr %44, align 8, !tbaa !132 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.agj = icmp eq ptr %i.agh, %i.agi
  br i1 %i.agj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566: ; preds = %bb.ko
  %i.agk = load i64, ptr %i.agi, align 8, !tbaa !90
  %i.agl = add i64 %i.agk, 1
  call void @_ZdlPvm(ptr noundef %i.agh, i64 noundef %i.agl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568: ; preds = %bb.ko, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566
  %i.agm = load ptr, ptr %45, align 8, !tbaa !327 ; 3 uses
  %.not.i.i569 = icmp eq ptr %i.agm, null
  br i1 %.not.i.i569, label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568
  call void @_ZN5osgeo4proj2io19PROJStringFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.agm) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.agm, i64 noundef 8) #32
  br label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, %_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i.i
  %i.agn = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !89 ; 8 uses
  %.not.i.i570 = icmp eq ptr %i.ago, null
  br i1 %.not.i.i570, label %.thread.a, label %bb.kp

bb.kp:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 8 ; 4 uses
  %i.agq = load atomic i64, ptr %i.agp acquire, align 8 ; 2 uses
  %i.agr = icmp eq i64 %i.agq, 4294967297
  %i.ags = trunc i64 %i.agq to i32                ; 2 uses
  br i1 %i.agr, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  store i32 0, ptr %i.agp, align 8, !tbaa !93
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ago, i64 12
  store i32 0, ptr %i.agt, align 4, !tbaa !94
  %i.agu = load ptr, ptr %i.ago, align 8, !tbaa !80
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 16
  %i.agw = load ptr, ptr %i.agv, align 8
  call void %i.agw(ptr noundef nonnull align 8 dereferenceable(16) %i.ago) #31, !inline_history !15
  %i.agx = load ptr, ptr %i.ago, align 8, !tbaa !80
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 24
  %i.agz = load ptr, ptr %i.agy, align 8
  call void %i.agz(ptr noundef nonnull align 8 dereferenceable(16) %i.ago) #31, !inline_history !15
  br label %.thread.a

bb.kr:                                            ; preds = %bb.kp
  %i.aha = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i571 = icmp eq i8 %i.aha, 0
  br i1 %.not.i.i.i571, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.ahb = add nsw i32 %i.ags, -1
  store i32 %i.ahb, ptr %i.agp, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i572

bb.kt:                                            ; preds = %bb.kr
  %i.ahc = atomicrmw volatile add ptr %i.agp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i572

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i572: ; preds = %bb.kt, %bb.ks
  %.0.i.i.i.i573 = phi i32 [ %i.ags, %bb.ks ], [ %i.ahc, %bb.kt ]
  %i.ahd = icmp eq i32 %.0.i.i.i.i573, 1
  br i1 %i.ahd, label %bb.ku, label %.thread.a, !prof !95

bb.ku:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i572
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ago) #31
  br label %.thread.a

.thread.a:                                        ; preds = %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit, %bb.kq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i572, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  br label %bb.la

bb.kv:                                            ; preds = %bb.km
  %i.ahe = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.kx

bb.kw:                                            ; preds = %bb.kn
  %i.ahf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #31
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %bb.kv
  %.pn314 = phi { ptr, i32 } [ %i.ahf, %bb.kw ], [ %i.ahe, %bb.kv ] ; 3 uses
  %.18258 = extractvalue { ptr, i32 } %.pn314, 1
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %46) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  %i.ahg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.ahh = icmp eq i32 %.18258, %i.ahg
  br i1 %i.ahh, label %bb.ky, label %bb.ms

bb.ky:                                            ; preds = %bb.kx
  %.18 = extractvalue { ptr, i32 } %.pn314, 0
  %i.ahi = call ptr @__cxa_begin_catch(ptr %.18) #31 ; 0 uses
  call void @__cxa_end_catch()
  store i8 0, ptr %i.a, align 1, !tbaa !242
  br label %bb.la

bb.kz:                                            ; preds = %bb.kl
  %i.ahj = icmp ugt i64 %i.agc, 16
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %.thread.a, %bb.ky
  %.1279 = phi i1 [ true, %.thread.a ], [ false, %bb.ky ], [ %i.ahj, %bb.kz ]
  br i1 %.0277, label %.thread635, label %bb.lb

.thread635:                                       ; preds = %bb.la
  br i1 %.1273, label %bb.mq, label %bb.mr

bb.lb:                                            ; preds = %bb.la
  %i.ahk = load ptr, ptr %11, align 8, !tbaa !154
  %i.ahl = load ptr, ptr %i.es, align 8, !tbaa !154
  %i.ahm = icmp ne ptr %i.ahk, %i.ahl
  %or.cond19 = and i1 %.1279, %i.ahm
  %i.ahn = load i8, ptr %i.a, align 1, !range !117
  %i.aho = trunc nuw i8 %i.ahn to i1
  %or.cond21 = select i1 %or.cond19, i1 true, i1 %i.aho
  %.phi.trans.insert671 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre672 = load ptr, ptr %.phi.trans.insert671, align 8, !tbaa !196
  %.pre673 = load ptr, ptr %.pre672, align 8, !tbaa !148
  %.phi.trans.insert674 = getelementptr inbounds nuw i8, ptr %.pre673, i64 8
  %.pre675 = load ptr, ptr %.phi.trans.insert674, align 8, !tbaa !83
  %.phi.trans.insert676 = getelementptr inbounds nuw i8, ptr %.pre675, i64 56
  %.pre677 = load i32, ptr %.phi.trans.insert676, align 8, !tbaa !124 ; 2 uses
  %or.cond21.not = xor i1 %or.cond21, true
  %i.ahp = icmp eq i32 %.pre677, 1
  %or.cond834 = select i1 %or.cond21.not, i1 %i.ahp, i1 false
  %i.ahq = icmp eq i32 %.pre677, 0
  %or.cond835 = select i1 %or.cond834, i1 true, i1 %i.ahq
  br i1 %or.cond835, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.ahr = call ptr @getenv(ptr noundef nonnull @.str.12) #31
  %.not316 = icmp eq ptr %i.ahr, null
  br i1 %.not316, label %bb.ln, label %bb.ld

bb.ld:                                            ; preds = %bb.lb, %bb.lc
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #31
  call void @_ZN5osgeo4proj9operation26CoordinateOperationFactory7Private34findsOpsInRegistryWithIntermediateERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESD_RNS3_7ContextEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.35") align 8 %47, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(112) %4, i1 noundef zeroext false)
  %i.ahs = load ptr, ptr %i.es, align 8, !tbaa !154
  %i.aht = load ptr, ptr %47, align 8, !tbaa !154
  %i.ahu = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !154
  %i.ahw = load ptr, ptr %11, align 8, !tbaa !154 ; 2 uses
  %i.ahx = ptrtoint ptr %i.ahs to i64
  %i.ahy = ptrtoint ptr %i.ahw to i64
  %i.ahz = sub i64 %i.ahx, %i.ahy
  %i.aia = getelementptr inbounds i8, ptr %i.ahw, i64 %i.ahz
  invoke void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS9_SB_EEEEvSG_T_SH_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.aia, ptr %i.aht, ptr %i.ahv)
          to label %bb.le unwind label %bb.lm

bb.le:                                            ; preds = %bb.ld
  %i.aib = load ptr, ptr %11, align 8, !tbaa !154
  %i.aic = load ptr, ptr %i.es, align 8, !tbaa !154
  %i.aid = icmp ne ptr %i.aib, %i.aic
  %i.aie = load ptr, ptr %47, align 8, !tbaa !157 ; 3 uses
  %i.aif = load ptr, ptr %i.ahu, align 8, !tbaa !158 ; 2 uses
  %.not4.i.i.i577 = icmp eq ptr %i.aie, %i.aif
  br i1 %.not4.i.i.i577, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i588, label %.lr.ph.i.i.i578

.lr.ph.i.i.i578:                                  ; preds = %bb.le, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i584
  %.05.i.i.i579 = phi ptr [ %i.aix, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i584 ], [ %i.aie, %bb.le ] ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %.05.i.i.i579, i64 8
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i.i.i.i.i580 = icmp eq ptr %i.aih, null
  br i1 %.not.i.i.i.i.i.i.i580, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i584, label %bb.lf

bb.lf:                                            ; preds = %.lr.ph.i.i.i578
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 8 ; 4 uses
  %i.aij = load atomic i64, ptr %i.aii acquire, align 8 ; 2 uses
  %i.aik = icmp eq i64 %i.aij, 4294967297
  %i.ail = trunc i64 %i.aij to i32                ; 2 uses
  br i1 %i.aik, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  store i32 0, ptr %i.aii, align 8, !tbaa !93
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aih, i64 12
  store i32 0, ptr %i.aim, align 4, !tbaa !94
  %i.ain = load ptr, ptr %i.aih, align 8, !tbaa !80
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 16
  %i.aip = load ptr, ptr %i.aio, align 8
  call void %i.aip(ptr noundef nonnull align 8 dereferenceable(16) %i.aih) #31, !inline_history !4
  %i.aiq = load ptr, ptr %i.aih, align 8, !tbaa !80
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 24
  %i.ais = load ptr, ptr %i.air, align 8
  call void %i.ais(ptr noundef nonnull align 8 dereferenceable(16) %i.aih) #31, !inline_history !4
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i584

bb.lh:                                            ; preds = %bb.lf
  %i.ait = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i.i.i581 = icmp eq i8 %i.ait, 0
  br i1 %.not.i.i.i.i.i.i.i.i581, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.aiu = add nsw i32 %i.ail, -1
  store i32 %i.aiu, ptr %i.aii, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i582

bb.lj:                                            ; preds = %bb.lh
  %i.aiv = atomicrmw volatile add ptr %i.aii, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i582

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i582: ; preds = %bb.lj, %bb.li
  %.0.i.i.i.i.i.i.i.i.i583 = phi i32 [ %i.ail, %bb.li ], [ %i.aiv, %bb.lj ]
  %i.aiw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i583, 1
  br i1 %i.aiw, label %bb.lk, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i584, !prof !95

bb.lk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i582
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aih) #31
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i584

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i584: ; preds = %bb.lk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i582, %bb.lg, %.lr.ph.i.i.i578
  %i.aix = getelementptr inbounds nuw i8, ptr %.05.i.i.i579, i64 16 ; 2 uses
  %.not.i.i.i585 = icmp eq ptr %i.aix, %i.aif
  br i1 %.not.i.i.i585, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i586, label %.lr.ph.i.i.i578, !llvm.loop !5

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i586: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i584
  %.pr.i587 = load ptr, ptr %47, align 8, !tbaa !157
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i588

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i588: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i586, %bb.le
  %i.aiy = phi ptr [ %.pr.i587, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i586 ], [ %i.aie, %bb.le ] ; 3 uses
  %.not.i.i1.i589 = icmp eq ptr %i.aiy, null
  br i1 %.not.i.i1.i589, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit590, label %bb.ll

bb.ll:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i588
  %i.aiz = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !159
  %i.ajb = ptrtoint ptr %i.aja to i64
  %i.ajc = ptrtoint ptr %i.aiy to i64
  %i.ajd = sub i64 %i.ajb, %i.ajc
  call void @_ZdlPvm(ptr noundef nonnull %i.aiy, i64 noundef %i.ajd) #32
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit590

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit590: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i588, %bb.ll
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  br label %bb.ln

bb.lm:                                            ; preds = %bb.ld
  %i.aje = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %47) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  br label %bb.ms

bb.ln:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit590, %bb.lc
  %.2274 = phi i1 [ %.1273, %bb.lc ], [ %i.aid, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit590 ]
  %i.ajf = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ajg = load i8, ptr %i.ajf, align 8, !tbaa !309, !range !117, !noundef !118
  %i.ajh = trunc nuw i8 %i.ajg to i1
  %.not22 = xor i1 %i.ajh, true
  %or.cond24 = and i1 %i.ev, %.not22
  %or.cond26 = and i1 %i.ew, %or.cond24
  br i1 %or.cond26, label %bb.lo, label %bb.mp

bb.lo:                                            ; preds = %bb.ln
  %i.aji = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !196, !nonnull !118, !align !197
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !148
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !83 ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 64
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !134
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajm, i64 72
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !134
  %i.ajr = icmp eq ptr %i.ajo, %i.ajq
  br i1 %i.ajr, label %bb.lp, label %bb.mp

bb.lp:                                            ; preds = %bb.lo
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajm, i64 56
  %i.ajt = load i32, ptr %i.ajs, align 8, !tbaa !124
  %.not317 = icmp eq i32 %i.ajt, 2
  br i1 %.not317, label %bb.mp, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.aju = load i8, ptr %i.a, align 1, !tbaa !242, !range !117, !noundef !118
  %i.ajv = trunc nuw i8 %i.aju to i1              ; 2 uses
  br i1 %i.ajv, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %bb.lq
  %.val335 = load ptr, ptr %11, align 8, !tbaa !154
  %.val336 = load ptr, ptr %i.es, align 8, !tbaa !154
  %i.ajw = call fastcc noundef zeroext i1 @_ZN5osgeo4proj9operationL25useOnlyReplacedOperationsERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaIS9_EE(ptr %.val335, ptr %.val336)
  br i1 %i.ajw, label %bb.ls, label %bb.mp

bb.ls:                                            ; preds = %bb.lr, %bb.lq
  %i.ajx = call noundef zeroext i1 @_ZN5osgeo4proj9operation26CoordinateOperationFactory7Private16hasTooSmallAreasERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaISB_EERKNS3_7ContextE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(112) %4) ; 3 uses
  %i.ajy = load ptr, ptr %11, align 8, !tbaa !154 ; 2 uses
  %i.ajz = load ptr, ptr %i.es, align 8, !tbaa !154 ; 2 uses
  %i.aka = icmp eq ptr %i.ajy, %i.ajz
  %or.cond30 = or i1 %i.aka, %i.ajv
  %or.cond32 = or i1 %i.ajx, %or.cond30
  br i1 %or.cond32, label %bb.lw, label %.lr.ph.i

bb.lt:                                            ; preds = %.lr.ph.i
  %i.akb = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 16 ; 2 uses
  %.not.i591 = icmp eq ptr %i.akb, %i.ajz
  br i1 %.not.i591, label %bb.lu, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ls, %bb.lt
  %.sroa.01.05.i = phi ptr [ %i.akb, %bb.lt ], [ %i.ajy, %bb.ls ] ; 2 uses
  %i.akc = load ptr, ptr %.sroa.01.05.i, align 8, !tbaa !191
  %i.akd = call noundef zeroext i1 @_ZNK5osgeo4proj9operation19CoordinateOperation30requiresPerCoordinateInputTimeEv(ptr noundef nonnull align 8 dereferenceable(72) %i.akc)
end_hunk_0
