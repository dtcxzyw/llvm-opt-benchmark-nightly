Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/coordinateoperationfactory?download=true
inline.NumInlined: 9028
inline.NumDeleted: 2070
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumUnrolled: 114
begin_hunk_0_@"_ZZN5osgeo4proj9operation26CoordinateOperationFactory7Private30createOperationsWithDatumPivotERSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaISB_EERKNS7_IS8_INS0_3crs3CRSEEEERKNS0_4util8optionalINS0_6common9DataEpochEEESK_SR_PKNSF_11GeodeticCRSESU_RNS3_7ContextEENK3$_0clESK_SK_RKSB_bb":bb.a

bb.ji:                                            ; preds = %bb.if
  %i.afb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jq

bb.jj:                                            ; preds = %bb.ig
  %i.afc = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

bb.jk:                                            ; preds = %bb.ih
  %i.afd = landingpad { ptr, i32 }
          cleanup
  br label %bb.jo

bb.jl:                                            ; preds = %bb.ii
  %i.afe = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

bb.jm:                                            ; preds = %.noexc352, %bb.ij
  %i.aff = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #31
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jl
  %.pn110 = phi { ptr, i32 } [ %i.aff, %bb.jm ], [ %i.afe, %bb.jl ]
  %i.afg = load ptr, ptr %36, align 8, !tbaa !132 ; 2 uses
  %i.afh = icmp eq ptr %i.afg, %i.jv
  br i1 %i.afh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381: ; preds = %bb.jn
  %i.afi = load i64, ptr %i.jv, align 8, !tbaa !90
  %i.afj = add i64 %i.afi, 1
  call void @_ZdlPvm(ptr noundef %i.afg, i64 noundef %i.afj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383: ; preds = %bb.jn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #31
  br label %bb.jo

bb.jo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383, %bb.jk
  %.pn110.pn = phi { ptr, i32 } [ %.pn110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383 ], [ %i.afd, %bb.jk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #31
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jj
  %.pn110.pn.pn = phi { ptr, i32 } [ %.pn110.pn, %bb.jo ], [ %i.afc, %bb.jj ]
  %i.afk = load ptr, ptr %33, align 8, !tbaa !132 ; 2 uses
  %i.afl = icmp eq ptr %i.afk, %i.jt
  br i1 %i.afl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384: ; preds = %bb.jp
  %i.afm = load i64, ptr %i.jt, align 8, !tbaa !90
  %i.afn = add i64 %i.afm, 1
  call void @_ZdlPvm(ptr noundef %i.afk, i64 noundef %i.afn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386: ; preds = %bb.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %32) #31
  br label %bb.jq

bb.jq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386, %bb.ji
  %.pn110.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386 ], [ %i.afb, %bb.ji ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  br label %.loopexit839

bb.jr:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit337, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit380, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.thread
  %.pre902.pre = load ptr, ptr %i.kb, align 8, !tbaa !158 ; 8 uses
  %.pre904.pre907 = load ptr, ptr %i.kc, align 8, !tbaa !159 ; 4 uses
  br i1 %4, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %.not.i387 = icmp eq ptr %.pre902.pre, %.pre904.pre907
  br i1 %.not.i387, label %bb.jx, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.afo = load ptr, ptr %i.kd, align 8, !tbaa !89 ; 2 uses
  %i.afp = load <2 x ptr>, ptr %3, align 8, !tbaa !155
  store <2 x ptr> %i.afp, ptr %.pre902.pre, align 8, !tbaa !155
  %.not.i.i.i.i.i388 = icmp eq ptr %i.afo, null
  br i1 %.not.i.i.i.i.i388, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i390, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 8 ; 3 uses
  %i.afr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i389 = icmp eq i8 %i.afr, 0
  br i1 %.not.i.i.i.i.i.i389, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.afs = load i32, ptr %i.afq, align 4, !tbaa !91
  %i.aft = add nsw i32 %i.afs, 1
  store i32 %i.aft, ptr %i.afq, align 4, !tbaa !91
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i390

bb.jw:                                            ; preds = %bb.ju
  %i.afu = atomicrmw volatile add ptr %i.afq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i391 = load ptr, ptr %i.kb, align 8, !tbaa !158
  %.pre904.pre.pre = load ptr, ptr %i.kc, align 8, !tbaa !159
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i390

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i390: ; preds = %bb.jw, %bb.jv, %bb.jt
  %.pre904.pre = phi ptr [ %.pre904.pre907, %bb.jt ], [ %.pre904.pre907, %bb.jv ], [ %.pre904.pre.pre, %bb.jw ]
  %i.afv = phi ptr [ %.pre902.pre, %bb.jt ], [ %.pre902.pre, %bb.jv ], [ %.pre.i391, %bb.jw ]
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 16 ; 2 uses
  store ptr %i.afw, ptr %i.kb, align 8, !tbaa !158
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit

bb.jx:                                            ; preds = %bb.js
  %i.afx = load ptr, ptr %18, align 8, !tbaa !157 ; 5 uses
  %i.afy = ptrtoint ptr %.pre902.pre to i64
  %i.afz = ptrtoint ptr %i.afx to i64             ; 2 uses
  %i.aga = sub i64 %i.afy, %i.afz                 ; 3 uses
  %i.agb = icmp eq i64 %i.aga, 9223372036854775792
  br i1 %i.agb, label %.invoke, label %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i596

_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i596: ; preds = %bb.jx
  %i.agc = ashr exact i64 %i.aga, 4               ; 3 uses
  %.sroa.speculated.i.i597 = call i64 @llvm.umax.i64(i64 %i.agc, i64 1)
  %i.agd = add nsw i64 %.sroa.speculated.i.i597, %i.agc ; 2 uses
  %i.age = icmp ult i64 %i.agd, %i.agc
  %i.agf = call i64 @llvm.umin.i64(i64 %i.agd, i64 576460752303423487)
  %i.agg = select i1 %i.age, i64 576460752303423487, i64 %i.agf ; 3 uses
  %.not.i.i598 = icmp ne i64 %i.agg, 0
  call void @llvm.assume(i1 %.not.i.i598)
  %i.agh = shl nuw nsw i64 %i.agg, 4
  %i.agi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agh) #33
          to label %.noexc618 unwind label %.loopexit.split-lp835.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc618:                                        ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i596
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.aga
  %i.agk = load ptr, ptr %i.kd, align 8, !tbaa !89 ; 2 uses
  %i.agl = load <2 x ptr>, ptr %3, align 8, !tbaa !155
  store <2 x ptr> %i.agl, ptr %i.agj, align 8, !tbaa !155
  %.not.i.i.i.i.i599 = icmp eq ptr %i.agk, null
  br i1 %.not.i.i.i.i.i599, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i601, label %bb.jy

bb.jy:                                            ; preds = %.noexc618
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agk, i64 8 ; 3 uses
  %i.agn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i600 = icmp eq i8 %i.agn, 0
  br i1 %.not.i.i.i.i.i.i600, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.ago = load i32, ptr %i.agm, align 4, !tbaa !91
  %i.agp = add nsw i32 %i.ago, 1
  store i32 %i.agp, ptr %i.agm, align 4, !tbaa !91
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i601

bb.ka:                                            ; preds = %bb.jy
  %i.agq = atomicrmw volatile add ptr %i.agm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i601

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i601: ; preds = %bb.ka, %bb.jz, %.noexc618
  %.not10.i.i.i.i602 = icmp eq ptr %i.afx, %.pre902.pre
  br i1 %.not10.i.i.i.i602, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i614, label %.lr.ph.i.i.i.i603

.lr.ph.i.i.i.i603:                                ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i601, %.lr.ph.i.i.i.i603
  %.012.i.i.i.i604 = phi ptr [ %i.agu, %.lr.ph.i.i.i.i603 ], [ %i.agi, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i601 ] ; 2 uses
  %.0911.i.i.i.i605 = phi ptr [ %i.agt, %.lr.ph.i.i.i.i603 ], [ %i.afx, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i601 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.agr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i605, i64 8
  %i.ags = load <2 x ptr>, ptr %.0911.i.i.i.i605, align 8, !tbaa !155, !alias.scope !561
  store ptr null, ptr %i.agr, align 8, !tbaa !89, !alias.scope !561
  store <2 x ptr> %i.ags, ptr %.012.i.i.i.i604, align 8, !tbaa !155, !alias.scope !560
  store ptr null, ptr %.0911.i.i.i.i605, align 8, !tbaa !191, !alias.scope !561
  %i.agt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i605, i64 16 ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i604, i64 16 ; 2 uses
  %.not.i.i.i.i606 = icmp eq ptr %i.agt, %.pre902.pre
  br i1 %.not.i.i.i.i606, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i614, label %.lr.ph.i.i.i.i603, !llvm.loop !8

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i614: ; preds = %.lr.ph.i.i.i.i603, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i601
  %.0.lcssa.i.i.i.i608 = phi ptr [ %i.agi, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i601 ], [ %i.agu, %.lr.ph.i.i.i.i603 ]
  %i.agv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i608, i64 16 ; 2 uses
  %.not.i23.i616 = icmp eq ptr %i.afx, null
  br i1 %.not.i23.i616, label %.noexc393, label %bb.kb

bb.kb:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i614
  %i.agw = load ptr, ptr %i.kc, align 8, !tbaa !159
  %i.agx = ptrtoint ptr %i.agw to i64
  %i.agy = sub i64 %i.agx, %i.afz
  call void @_ZdlPvm(ptr noundef nonnull %i.afx, i64 noundef %i.agy) #32
  br label %.noexc393

.noexc393:                                        ; preds = %bb.kb, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i614
  store ptr %i.agi, ptr %18, align 8, !tbaa !157
  store ptr %i.agv, ptr %i.kb, align 8, !tbaa !158
  %i.agz = getelementptr inbounds nuw [16 x i8], ptr %i.agi, i64 %i.agg ; 2 uses
  store ptr %i.agz, ptr %i.kc, align 8, !tbaa !159
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit: ; preds = %.noexc393, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i390, %bb.jr
  %.pre904 = phi ptr [ %i.agz, %.noexc393 ], [ %.pre904.pre, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i390 ], [ %.pre904.pre907, %bb.jr ] ; 7 uses
  %.pre902 = phi ptr [ %i.agv, %.noexc393 ], [ %i.afw, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i390 ], [ %.pre902.pre, %bb.jr ] ; 5 uses
  br i1 %i.ke, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit401, label %bb.kc

bb.kc:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit
  %.not.i394 = icmp eq ptr %.pre902, %.pre904
  br i1 %.not.i394, label %bb.kh, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.aha = load ptr, ptr %i.ot, align 8, !tbaa !89 ; 2 uses
  %i.ahb = load <2 x ptr>, ptr %i.os, align 8, !tbaa !155
  store <2 x ptr> %i.ahb, ptr %.pre902, align 8, !tbaa !155
  %.not.i.i.i.i.i395 = icmp eq ptr %i.aha, null
  br i1 %.not.i.i.i.i.i395, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i397, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 8 ; 3 uses
  %i.ahd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i396 = icmp eq i8 %i.ahd, 0
  br i1 %.not.i.i.i.i.i.i396, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.ahe = load i32, ptr %i.ahc, align 4, !tbaa !91
  %i.ahf = add nsw i32 %i.ahe, 1
  store i32 %i.ahf, ptr %i.ahc, align 4, !tbaa !91
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i397

bb.kg:                                            ; preds = %bb.ke
  %i.ahg = atomicrmw volatile add ptr %i.ahc, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i398 = load ptr, ptr %i.kb, align 8, !tbaa !158
  %.pre903.pre = load ptr, ptr %i.kc, align 8, !tbaa !159
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i397

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i397: ; preds = %bb.kg, %bb.kf, %bb.kd
  %.pre903 = phi ptr [ %.pre904, %bb.kd ], [ %.pre904, %bb.kf ], [ %.pre903.pre, %bb.kg ]
  %i.ahh = phi ptr [ %.pre902, %bb.kd ], [ %.pre902, %bb.kf ], [ %.pre.i398, %bb.kg ]
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 16 ; 2 uses
  store ptr %i.ahi, ptr %i.kb, align 8, !tbaa !158
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit401

bb.kh:                                            ; preds = %bb.kc
  %i.ahj = load ptr, ptr %18, align 8, !tbaa !157 ; 5 uses
  %i.ahk = ptrtoint ptr %.pre904 to i64
  %i.ahl = ptrtoint ptr %i.ahj to i64             ; 2 uses
  %i.ahm = sub i64 %i.ahk, %i.ahl                 ; 3 uses
  %i.ahn = icmp eq i64 %i.ahm, 9223372036854775792
  br i1 %i.ahn, label %.invoke, label %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i619

_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i619: ; preds = %bb.kh
  %i.aho = ashr exact i64 %i.ahm, 4               ; 3 uses
  %.sroa.speculated.i.i620 = call i64 @llvm.umax.i64(i64 %i.aho, i64 1)
  %i.ahp = add nsw i64 %.sroa.speculated.i.i620, %i.aho ; 2 uses
  %i.ahq = icmp ult i64 %i.ahp, %i.aho
  %i.ahr = call i64 @llvm.umin.i64(i64 %i.ahp, i64 576460752303423487)
  %i.ahs = select i1 %i.ahq, i64 576460752303423487, i64 %i.ahr ; 3 uses
  %.not.i.i621 = icmp ne i64 %i.ahs, 0
  call void @llvm.assume(i1 %.not.i.i621)
  %i.aht = shl nuw nsw i64 %i.ahs, 4
  %i.ahu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aht) #33
          to label %.noexc641 unwind label %.loopexit.split-lp835.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc641:                                        ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i619
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.ahm
  %i.ahw = load ptr, ptr %i.ot, align 8, !tbaa !89 ; 2 uses
  %i.ahx = load <2 x ptr>, ptr %i.os, align 8, !tbaa !155
  store <2 x ptr> %i.ahx, ptr %i.ahv, align 8, !tbaa !155
  %.not.i.i.i.i.i622 = icmp eq ptr %i.ahw, null
  br i1 %.not.i.i.i.i.i622, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i624, label %bb.ki

bb.ki:                                            ; preds = %.noexc641
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahw, i64 8 ; 3 uses
  %i.ahz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i623 = icmp eq i8 %i.ahz, 0
  br i1 %.not.i.i.i.i.i.i623, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.aia = load i32, ptr %i.ahy, align 4, !tbaa !91
  %i.aib = add nsw i32 %i.aia, 1
  store i32 %i.aib, ptr %i.ahy, align 4, !tbaa !91
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i624

bb.kk:                                            ; preds = %bb.ki
  %i.aic = atomicrmw volatile add ptr %i.ahy, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i624

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i624: ; preds = %bb.kk, %bb.kj, %.noexc641
  %.not10.i.i.i.i625 = icmp eq ptr %i.ahj, %.pre904
  br i1 %.not10.i.i.i.i625, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i637, label %.lr.ph.i.i.i.i626

.lr.ph.i.i.i.i626:                                ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i624, %.lr.ph.i.i.i.i626
  %.012.i.i.i.i627 = phi ptr [ %i.aig, %.lr.ph.i.i.i.i626 ], [ %i.ahu, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i624 ] ; 2 uses
  %.0911.i.i.i.i628 = phi ptr [ %i.aif, %.lr.ph.i.i.i.i626 ], [ %i.ahj, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i624 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.aid = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i628, i64 8
  %i.aie = load <2 x ptr>, ptr %.0911.i.i.i.i628, align 8, !tbaa !155, !alias.scope !563
  store ptr null, ptr %i.aid, align 8, !tbaa !89, !alias.scope !563
  store <2 x ptr> %i.aie, ptr %.012.i.i.i.i627, align 8, !tbaa !155, !alias.scope !562
  store ptr null, ptr %.0911.i.i.i.i628, align 8, !tbaa !191, !alias.scope !563
  %i.aif = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i628, i64 16 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i627, i64 16 ; 2 uses
  %.not.i.i.i.i629 = icmp eq ptr %i.aif, %.pre904
  br i1 %.not.i.i.i.i629, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i637, label %.lr.ph.i.i.i.i626, !llvm.loop !8

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i637: ; preds = %.lr.ph.i.i.i.i626, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i624
  %.0.lcssa.i.i.i.i631 = phi ptr [ %i.ahu, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i624 ], [ %i.aig, %.lr.ph.i.i.i.i626 ]
  %i.aih = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i631, i64 16 ; 2 uses
  %.not.i23.i639 = icmp eq ptr %i.ahj, null
  br i1 %.not.i23.i639, label %.noexc400, label %bb.kl

bb.kl:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i637
  %i.aii = load ptr, ptr %i.kc, align 8, !tbaa !159
  %i.aij = ptrtoint ptr %i.aii to i64
  %i.aik = sub i64 %i.aij, %i.ahl
  call void @_ZdlPvm(ptr noundef nonnull %i.ahj, i64 noundef %i.aik) #32
  br label %.noexc400

.noexc400:                                        ; preds = %bb.kl, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i637
  store ptr %i.ahu, ptr %18, align 8, !tbaa !157
  store ptr %i.aih, ptr %i.kb, align 8, !tbaa !158
  %i.ail = getelementptr inbounds nuw [16 x i8], ptr %i.ahu, i64 %i.ahs ; 2 uses
  store ptr %i.ail, ptr %i.kc, align 8, !tbaa !159
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit401

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit401: ; preds = %.noexc400, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i397, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit
  %i.aim = phi ptr [ %i.ail, %.noexc400 ], [ %.pre903, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i397 ], [ %.pre904, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit ] ; 4 uses
  %i.ain = phi ptr [ %i.aih, %.noexc400 ], [ %i.ahi, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i397 ], [ %.pre902, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit ] ; 4 uses
  %.not.i402 = icmp eq ptr %i.ain, %i.aim
  br i1 %.not.i402, label %bb.kq, label %bb.km

bb.km:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit401
  %i.aio = load ptr, ptr %i.jf, align 8, !tbaa !89 ; 2 uses
  %i.aip = load <2 x ptr>, ptr %19, align 16, !tbaa !155
  store <2 x ptr> %i.aip, ptr %i.ain, align 8, !tbaa !155
  %.not.i.i.i.i.i403 = icmp eq ptr %i.aio, null
  br i1 %.not.i.i.i.i.i403, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i405, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aio, i64 8 ; 3 uses
  %i.air = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i404 = icmp eq i8 %i.air, 0
  br i1 %.not.i.i.i.i.i.i404, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.ais = load i32, ptr %i.aiq, align 4, !tbaa !91
  %i.ait = add nsw i32 %i.ais, 1
  store i32 %i.ait, ptr %i.aiq, align 4, !tbaa !91
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i405

bb.kp:                                            ; preds = %bb.kn
  %i.aiu = atomicrmw volatile add ptr %i.aiq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i406 = load ptr, ptr %i.kb, align 8, !tbaa !158
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i405

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i405: ; preds = %bb.kp, %bb.ko, %bb.km
  %i.aiv = phi ptr [ %i.ain, %bb.km ], [ %i.ain, %bb.ko ], [ %.pre.i406, %bb.kp ]
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 16 ; 2 uses
  store ptr %i.aiw, ptr %i.kb, align 8, !tbaa !158
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit409

bb.kq:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit401
  %i.aix = load ptr, ptr %18, align 8, !tbaa !157 ; 5 uses
  %i.aiy = ptrtoint ptr %i.aim to i64
  %i.aiz = ptrtoint ptr %i.aix to i64             ; 2 uses
  %i.aja = sub i64 %i.aiy, %i.aiz                 ; 3 uses
  %i.ajb = icmp eq i64 %i.aja, 9223372036854775792
  br i1 %i.ajb, label %.invoke, label %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i643

_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i643: ; preds = %bb.kq
  %i.ajc = ashr exact i64 %i.aja, 4               ; 3 uses
  %.sroa.speculated.i.i644 = call i64 @llvm.umax.i64(i64 %i.ajc, i64 1)
  %i.ajd = add nsw i64 %.sroa.speculated.i.i644, %i.ajc ; 2 uses
  %i.aje = icmp ult i64 %i.ajd, %i.ajc
  %i.ajf = call i64 @llvm.umin.i64(i64 %i.ajd, i64 576460752303423487)
  %i.ajg = select i1 %i.aje, i64 576460752303423487, i64 %i.ajf ; 3 uses
  %.not.i.i645 = icmp ne i64 %i.ajg, 0
  call void @llvm.assume(i1 %.not.i.i645)
  %i.ajh = shl nuw nsw i64 %i.ajg, 4
  %i.aji = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajh) #33
          to label %.noexc665 unwind label %.loopexit.split-lp835.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc665:                                        ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i643
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 %i.aja
  %i.ajk = load ptr, ptr %i.jf, align 8, !tbaa !89 ; 2 uses
  %i.ajl = load <2 x ptr>, ptr %19, align 16, !tbaa !155
  store <2 x ptr> %i.ajl, ptr %i.ajj, align 8, !tbaa !155
  %.not.i.i.i.i.i646 = icmp eq ptr %i.ajk, null
  br i1 %.not.i.i.i.i.i646, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i648, label %bb.kr

bb.kr:                                            ; preds = %.noexc665
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8 ; 3 uses
  %i.ajn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i647 = icmp eq i8 %i.ajn, 0
  br i1 %.not.i.i.i.i.i.i647, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.ajo = load i32, ptr %i.ajm, align 4, !tbaa !91
  %i.ajp = add nsw i32 %i.ajo, 1
  store i32 %i.ajp, ptr %i.ajm, align 4, !tbaa !91
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i648

bb.kt:                                            ; preds = %bb.kr
  %i.ajq = atomicrmw volatile add ptr %i.ajm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i648

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i648: ; preds = %bb.kt, %bb.ks, %.noexc665
  %.not10.i.i.i.i649 = icmp eq ptr %i.aix, %i.aim
  br i1 %.not10.i.i.i.i649, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i661, label %.lr.ph.i.i.i.i650

.lr.ph.i.i.i.i650:                                ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i648, %.lr.ph.i.i.i.i650
  %.012.i.i.i.i651 = phi ptr [ %i.aju, %.lr.ph.i.i.i.i650 ], [ %i.aji, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i648 ] ; 2 uses
  %.0911.i.i.i.i652 = phi ptr [ %i.ajt, %.lr.ph.i.i.i.i650 ], [ %i.aix, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i648 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.ajr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i652, i64 8
  %i.ajs = load <2 x ptr>, ptr %.0911.i.i.i.i652, align 8, !tbaa !155, !alias.scope !565
  store ptr null, ptr %i.ajr, align 8, !tbaa !89, !alias.scope !565
  store <2 x ptr> %i.ajs, ptr %.012.i.i.i.i651, align 8, !tbaa !155, !alias.scope !564
  store ptr null, ptr %.0911.i.i.i.i652, align 8, !tbaa !191, !alias.scope !565
  %i.ajt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i652, i64 16 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i651, i64 16 ; 2 uses
  %.not.i.i.i.i653 = icmp eq ptr %i.ajt, %i.aim
  br i1 %.not.i.i.i.i653, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i661, label %.lr.ph.i.i.i.i650, !llvm.loop !8

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i661: ; preds = %.lr.ph.i.i.i.i650, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i648
  %.0.lcssa.i.i.i.i655 = phi ptr [ %i.aji, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i648 ], [ %i.aju, %.lr.ph.i.i.i.i650 ]
  %i.ajv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i655, i64 16 ; 2 uses
  %.not.i23.i663 = icmp eq ptr %i.aix, null
  br i1 %.not.i23.i663, label %.noexc408, label %bb.ku

bb.ku:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i661
  %i.ajw = load ptr, ptr %i.kc, align 8, !tbaa !159
  %i.ajx = ptrtoint ptr %i.ajw to i64
  %i.ajy = sub i64 %i.ajx, %i.aiz
  call void @_ZdlPvm(ptr noundef nonnull %i.aix, i64 noundef %i.ajy) #32
  br label %.noexc408

.noexc408:                                        ; preds = %bb.ku, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i661
  store ptr %i.aji, ptr %18, align 8, !tbaa !157
  store ptr %i.ajv, ptr %i.kb, align 8, !tbaa !158
  %i.ajz = getelementptr inbounds nuw [16 x i8], ptr %i.aji, i64 %i.ajg
  store ptr %i.ajz, ptr %i.kc, align 8, !tbaa !159
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit409

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit409: ; preds = %.noexc408, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i405
  %i.aka = phi ptr [ %i.ajv, %.noexc408 ], [ %i.aiw, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i405 ] ; 8 uses
  br i1 %i.kf, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit417, label %bb.kv

bb.kv:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit409
  %i.akb = load ptr, ptr %i.kc, align 8, !tbaa !159
  %.not.i410 = icmp eq ptr %i.aka, %i.akb
  br i1 %.not.i410, label %bb.la, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.akc = load ptr, ptr %i.ov, align 8, !tbaa !89 ; 2 uses
  %i.akd = load <2 x ptr>, ptr %i.ou, align 8, !tbaa !155
  store <2 x ptr> %i.akd, ptr %i.aka, align 8, !tbaa !155
  %.not.i.i.i.i.i411 = icmp eq ptr %i.akc, null
  br i1 %.not.i.i.i.i.i411, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i413, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akc, i64 8 ; 3 uses
  %i.akf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i412 = icmp eq i8 %i.akf, 0
  br i1 %.not.i.i.i.i.i.i412, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.akg = load i32, ptr %i.ake, align 4, !tbaa !91
  %i.akh = add nsw i32 %i.akg, 1
  store i32 %i.akh, ptr %i.ake, align 4, !tbaa !91
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i413

bb.kz:                                            ; preds = %bb.kx
  %i.aki = atomicrmw volatile add ptr %i.ake, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i414 = load ptr, ptr %i.kb, align 8, !tbaa !158
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i413

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i413: ; preds = %bb.kz, %bb.ky, %bb.kw
  %i.akj = phi ptr [ %i.aka, %bb.kw ], [ %i.aka, %bb.ky ], [ %.pre.i414, %bb.kz ]
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 16 ; 2 uses
  store ptr %i.akk, ptr %i.kb, align 8, !tbaa !158
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit417

bb.la:                                            ; preds = %bb.kv
  %i.akl = load ptr, ptr %18, align 8, !tbaa !157 ; 5 uses
  %i.akm = ptrtoint ptr %i.aka to i64
  %i.akn = ptrtoint ptr %i.akl to i64             ; 2 uses
  %i.ako = sub i64 %i.akm, %i.akn                 ; 3 uses
  %i.akp = icmp eq i64 %i.ako, 9223372036854775792
  br i1 %i.akp, label %.invoke, label %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i667

_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i667: ; preds = %bb.la
  %i.akq = ashr exact i64 %i.ako, 4               ; 3 uses
  %.sroa.speculated.i.i668 = call i64 @llvm.umax.i64(i64 %i.akq, i64 1)
  %i.akr = add nsw i64 %.sroa.speculated.i.i668, %i.akq ; 2 uses
  %i.aks = icmp ult i64 %i.akr, %i.akq
  %i.akt = call i64 @llvm.umin.i64(i64 %i.akr, i64 576460752303423487)
  %i.aku = select i1 %i.aks, i64 576460752303423487, i64 %i.akt ; 3 uses
  %.not.i.i669 = icmp ne i64 %i.aku, 0
  call void @llvm.assume(i1 %.not.i.i669)
  %i.akv = shl nuw nsw i64 %i.aku, 4
  %i.akw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akv) #33
          to label %.noexc689 unwind label %.loopexit.split-lp835.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc689:                                        ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i667
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 %i.ako
  %i.aky = load ptr, ptr %i.ov, align 8, !tbaa !89 ; 2 uses
  %i.akz = load <2 x ptr>, ptr %i.ou, align 8, !tbaa !155
  store <2 x ptr> %i.akz, ptr %i.akx, align 8, !tbaa !155
  %.not.i.i.i.i.i670 = icmp eq ptr %i.aky, null
  br i1 %.not.i.i.i.i.i670, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i672, label %bb.lb

bb.lb:                                            ; preds = %.noexc689
  %i.ala = getelementptr inbounds nuw i8, ptr %i.aky, i64 8 ; 3 uses
  %i.alb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i671 = icmp eq i8 %i.alb, 0
  br i1 %.not.i.i.i.i.i.i671, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.alc = load i32, ptr %i.ala, align 4, !tbaa !91
  %i.ald = add nsw i32 %i.alc, 1
  store i32 %i.ald, ptr %i.ala, align 4, !tbaa !91
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i672

bb.ld:                                            ; preds = %bb.lb
  %i.ale = atomicrmw volatile add ptr %i.ala, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i672

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i672: ; preds = %bb.ld, %bb.lc, %.noexc689
  %.not10.i.i.i.i673 = icmp eq ptr %i.akl, %i.aka
  br i1 %.not10.i.i.i.i673, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i685, label %.lr.ph.i.i.i.i674

.lr.ph.i.i.i.i674:                                ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i672, %.lr.ph.i.i.i.i674
  %.012.i.i.i.i675 = phi ptr [ %i.ali, %.lr.ph.i.i.i.i674 ], [ %i.akw, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i672 ] ; 2 uses
  %.0911.i.i.i.i676 = phi ptr [ %i.alh, %.lr.ph.i.i.i.i674 ], [ %i.akl, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i672 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.alf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i676, i64 8
  %i.alg = load <2 x ptr>, ptr %.0911.i.i.i.i676, align 8, !tbaa !155, !alias.scope !567
  store ptr null, ptr %i.alf, align 8, !tbaa !89, !alias.scope !567
  store <2 x ptr> %i.alg, ptr %.012.i.i.i.i675, align 8, !tbaa !155, !alias.scope !566
  store ptr null, ptr %.0911.i.i.i.i676, align 8, !tbaa !191, !alias.scope !567
  %i.alh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i676, i64 16 ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i675, i64 16 ; 2 uses
  %.not.i.i.i.i677 = icmp eq ptr %i.alh, %i.aka
  br i1 %.not.i.i.i.i677, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i685, label %.lr.ph.i.i.i.i674, !llvm.loop !8

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i685: ; preds = %.lr.ph.i.i.i.i674, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i672
  %.0.lcssa.i.i.i.i679 = phi ptr [ %i.akw, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i672 ], [ %i.ali, %.lr.ph.i.i.i.i674 ]
  %i.alj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i679, i64 16 ; 2 uses
  %.not.i23.i687 = icmp eq ptr %i.akl, null
  br i1 %.not.i23.i687, label %.noexc416, label %bb.le

bb.le:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i685
  %i.alk = load ptr, ptr %i.kc, align 8, !tbaa !159
  %i.all = ptrtoint ptr %i.alk to i64
  %i.alm = sub i64 %i.all, %i.akn
  call void @_ZdlPvm(ptr noundef nonnull %i.akl, i64 noundef %i.alm) #32
  br label %.noexc416

.noexc416:                                        ; preds = %bb.le, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i685
  store ptr %i.akw, ptr %18, align 8, !tbaa !157
  store ptr %i.alj, ptr %i.kb, align 8, !tbaa !158
end_hunk_0
begin_hunk_1_@"_ZZN5osgeo4proj9operation26CoordinateOperationFactory7Private34createOperationsCompoundToCompoundERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNS0_4util8optionalINS0_6common9DataEpochEEESD_SK_RNS3_7ContextEPKNS8_11CompoundCRSESP_RSt6vectorINS6_IS7_INS1_19CoordinateOperationEEEESaIST_EEENK3$_3clERKSV_SZ_":bb.a
  %.0.lcssa = phi double [ %.1.lcssa, %._crit_edge ], [ %.0152, %bb.b ] ; 4 uses
  %i.m = fcmp ult double %.0.lcssa, 0.000000e+00
  br i1 %i.m, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit, label %bb.cd

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %1, align 8, !tbaa !154    ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %.not111143 = icmp eq ptr %i.n, %i.o
  br i1 %.not111143, label %._crit_edge, label %.lr.ph147

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %.137.lcssa = phi i64 [ %.036151, %bb.c ], [ %.642, %.loopexit ] ; 2 uses
  %.1.lcssa = phi double [ %.0152, %bb.c ], [ %.6, %.loopexit ] ; 2 uses
  br i1 %i.i, label %bb.b, label %.critedge, !llvm.loop !967

.lr.ph147:                                        ; preds = %bb.c, %.loopexit
  %.1146 = phi double [ %.6, %.loopexit ], [ %.0152, %bb.c ] ; 4 uses
  %.137145 = phi i64 [ %.642, %.loopexit ], [ %.036151, %bb.c ] ; 4 uses
  %.sroa.0108.0144 = phi ptr [ %i.hu, %.loopexit ], [ %i.n, %bb.c ] ; 5 uses
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph147
  %i.p = load ptr, ptr %.sroa.0108.0144, align 8, !tbaa !191
  %i.q = invoke noundef zeroext i1 @_ZNK5osgeo4proj9operation19CoordinateOperation25hasBallparkTransformationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  br i1 %i.q, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph147
  %i.r = load ptr, ptr %.sroa.0108.0144, align 8, !tbaa !191
  %i.s = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #36
  %i.t = load ptr, ptr @_ZN5osgeo4proj9operation32BALLPARK_VERTICAL_TRANSFORMATIONE, align 8, !tbaa !316 ; 2 uses
  %i.u = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #31
  %i.v = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull %i.t, i64 noundef 0, i64 noundef %i.u) #31
  %.not = icmp eq i64 %i.v, -1
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %2, align 8, !tbaa !154    ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %.not112138 = icmp eq ptr %i.w, %i.x
  br i1 %.not112138, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0108.0144, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.cc
  %.2141 = phi double [ %.1146, %.lr.ph ], [ %.5, %bb.cc ] ; 8 uses
  %.238140 = phi i64 [ %.137145, %.lr.ph ], [ %.541, %bb.cc ] ; 6 uses
  %.sroa.0104.0139 = phi ptr [ %i.w, %.lr.ph ], [ %i.ht, %bb.cc ] ; 5 uses
  br i1 %i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %.sroa.0104.0139, align 8, !tbaa !191
  %i.aa = invoke noundef zeroext i1 @_ZNK5osgeo4proj9operation19CoordinateOperation25hasBallparkTransformationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.z)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  br i1 %i.aa, label %bb.cc, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.ab = load ptr, ptr %.sroa.0104.0139, align 8, !tbaa !191
  %i.ac = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #36
  %i.ad = load ptr, ptr @_ZN5osgeo4proj9operation32BALLPARK_VERTICAL_TRANSFORMATIONE, align 8, !tbaa !316 ; 2 uses
  %i.ae = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #31
  %i.af = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull %i.ad, i64 noundef 0, i64 noundef %i.ae) #31
  %.not58 = icmp eq i64 %i.af, -1
  br i1 %.not58, label %bb.l, label %bb.cc

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !89  ; 17 uses
  %i.ah = load <2 x ptr>, ptr %.sroa.0108.0144, align 8, !tbaa !155
  %.not.i.i.i.i = icmp eq ptr %i.ag, null         ; 4 uses
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !91
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !91
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit

bb.o:                                             ; preds = %bb.m
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit: ; preds = %bb.l, %bb.n, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0104.0139, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !89 ; 17 uses
  %i.ap = load <2 x ptr>, ptr %.sroa.0104.0139, align 8, !tbaa !155
  %.not.i.i.i.i67 = icmp eq ptr %i.ao, null       ; 4 uses
  br i1 %.not.i.i.i.i67, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit69, label %bb.p

bb.p:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i68 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i68, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !91
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !91
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit69

bb.r:                                             ; preds = %bb.p
  %i.au = atomicrmw volatile add ptr %i.aq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit69

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit69: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit, %bb.q, %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.av = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #33
          to label %.noexc3.i unwind label %bb.y  ; 5 uses

.noexc3.i:                                        ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit69
  store ptr %i.av, ptr %5, align 8, !tbaa !157
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr %i.aw, ptr %i.d, align 8, !tbaa !159
  store <2 x ptr> %i.ah, ptr %i.av, align 8, !tbaa !155
  br i1 %.not.i.i.i.i, label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc3.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !91
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !91
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bb = atomicrmw volatile add ptr %i.ax, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t, %.noexc3.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <2 x ptr> %i.ap, ptr %i.bc, align 8, !tbaa !155
  br i1 %.not.i.i.i.i67, label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1, label %bb.v

bb.v:                                             ; preds = %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !91
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !91
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

bb.x:                                             ; preds = %bb.v
  %i.bh = atomicrmw volatile add ptr %i.bd, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1: ; preds = %bb.x, %bb.w, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr %i.bi, ptr %i.e, align 8, !tbaa !158
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !972, !nonnull !118, !align !197
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !196, !nonnull !118, !align !197
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !148
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !83
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !119
  %i.br = icmp ne i32 %i.bq, 0
  invoke void @_ZN5osgeo4proj9operation21ConcatenatedOperation21createComputeMetadataERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaISA_EEb(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.44") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext %i.br)
          to label %bb.aa unwind label %bb.bk

bb.y:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit69
  %i.bs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bt = load ptr, ptr %5, align 8, !tbaa !157   ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i4.i, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bx) #32
  br label %.body

bb.aa:                                            ; preds = %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !158 ; 7 uses
  %i.bz = load ptr, ptr %i.g, align 16, !tbaa !159
  %.not.i = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr null, ptr %i.ca, align 8, !tbaa !89
  %i.cb = load <2 x ptr>, ptr %4, align 16, !tbaa !155
  store ptr null, ptr %i.h, align 8, !tbaa !89
  store <2 x ptr> %i.cb, ptr %i.by, align 8, !tbaa !155
  store ptr null, ptr %4, align 16, !tbaa !191
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.cc, ptr %i.a, align 8, !tbaa !158
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cd = load ptr, ptr %3, align 16, !tbaa !157  ; 5 uses
  %i.ce = ptrtoint ptr %i.by to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 4 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775792
  br i1 %i.ch, label %bb.ad, label %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #34
          to label %.noexc101 unwind label %bb.bl

.noexc101:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ac
  %i.ci = ashr exact i64 %i.cg, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 576460752303423487)
  %i.cm = select i1 %i.ck, i64 576460752303423487, i64 %i.cl ; 3 uses
  %.not.i.i = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.cn = shl nuw nsw i64 %i.cm, 4
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #33
          to label %.noexc102 unwind label %bb.bl ; 5 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  %i.cq = load <2 x ptr>, ptr %4, align 16, !tbaa !155
  store ptr null, ptr %i.h, align 8, !tbaa !89
  store <2 x ptr> %i.cq, ptr %i.cp, align 8, !tbaa !155
  store ptr null, ptr %4, align 16, !tbaa !191
  %.not10.i.i.i.i = icmp eq ptr %i.cd, %i.by
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc102, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i ], [ %i.co, %.noexc102 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %i.cd, %.noexc102 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.cs = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !155, !alias.scope !974
  store ptr null, ptr %i.cr, align 8, !tbaa !89, !alias.scope !974
  store <2 x ptr> %i.cs, ptr %.012.i.i.i.i, align 8, !tbaa !155, !alias.scope !973
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !191, !alias.scope !974
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.ct, %i.by
  br i1 %.not.i.i.i.i100, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %.noexc102
  %.0.lcssa.i.i.i.i = phi ptr [ %i.co, %.noexc102 ], [ %i.cu, %.lr.ph.i.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i23.i = icmp eq ptr %i.cd, null
  br i1 %.not.i23.i, label %.noexc, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cg) #32
  br label %.noexc

.noexc:                                           ; preds = %bb.ae, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i
  store ptr %i.co, ptr %3, align 16, !tbaa !157
  store ptr %i.cv, ptr %i.a, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.cm
  store ptr %i.cw, ptr %i.g, align 16, !tbaa !159
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit: ; preds = %.noexc, %bb.ab
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !89  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 4 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 4294967297
  %i.db = trunc i64 %i.cz to i32                  ; 2 uses
  br i1 %i.da, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.cy, align 8, !tbaa !93
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 0, ptr %i.dc, align 4, !tbaa !94
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !80
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #31, !inline_history !9
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !80
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #31, !inline_history !9
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.dj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i70 = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i.i70, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dk = add nsw i32 %i.db, -1
  store i32 %i.dk, ptr %i.cy, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dl = atomicrmw volatile add ptr %i.cy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i = phi i32 [ %i.db, %bb.ai ], [ %i.dl, %bb.aj ]
  %i.dm = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dm, label %bb.ak, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit, !prof !95

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #31
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ak
  %i.dn = load ptr, ptr %5, align 8, !tbaa !157   ; 3 uses
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !158 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dn, %i.do
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.eg, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i ], [ %i.dn, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.dr, align 8, !tbaa !93
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !94
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !80
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #31, !inline_history !4
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !80
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #31, !inline_history !4
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.du, %bb.ao ], [ %i.ee, %bb.ap ]
  %i.ef = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ef, label %bb.aq, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i, !prof !95

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #31
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.am, %.lr.ph.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.eg, %i.do
  br i1 %.not.i.i.i71, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !157
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit
  %i.eh = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.dn, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.ei = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #32
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.ar
  br i1 %.not.i.i.i.i67, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit77, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.em, align 8, !tbaa !93
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !94
  %i.er = load ptr, ptr %i.ao, align 8, !tbaa !80
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #31, !inline_history !9
  %i.eu = load ptr, ptr %i.ao, align 8, !tbaa !80
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #31, !inline_history !9
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit77

bb.au:                                            ; preds = %bb.as
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i74 = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i74, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i75

bb.aw:                                            ; preds = %bb.au
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i75

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i75: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i76 = phi i32 [ %i.ep, %bb.av ], [ %i.ez, %bb.aw ]
  %i.fa = icmp eq i32 %.0.i.i.i.i.i76, 1
  br i1 %i.fa, label %bb.ax, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit77, !prof !95

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i75
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #31
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit77

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit77: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i75, %bb.ax
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit77.1, label %bb.ay

bb.ay:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit77
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ff = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i74.1 = icmp eq i8 %i.ff, 0
  br i1 %.not.i.i.i.i74.1, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
end_hunk_1
