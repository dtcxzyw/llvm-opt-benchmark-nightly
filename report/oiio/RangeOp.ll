inline.NumInlined: 415
inline.NumDeleted: 230
begin_hunk_0_@_ZN16OpenColorIO_v2_513CreateRangeOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11RangeOpDataEENS_18TransformDirectionE:bb.a
  %3 = alloca %"class.std::shared_ptr", align 16  ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %5 = alloca %"class.std::shared_ptr.13", align 16 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.16", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_513CreateRangeOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11RangeOpDataEENS_18TransformDirectionE:bb.a
  %i.az = load <2 x ptr>, ptr %6, align 16, !tbaa !24
  store ptr null, ptr %i.ay, align 8, !tbaa !15
  store <2 x ptr> %i.az, ptr %5, align 16, !tbaa !24
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVec9push_backERKSt10shared_ptrINS_2OpEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.x unwind label %bb.ar

end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_513CreateRangeOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11RangeOpDataEENS_18TransformDirectionE:bb.a
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #18, !inline_history !52
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #18, !inline_history !52
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_513CreateRangeOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11RangeOpDataEENS_18TransformDirectionE:bb.a
  %i.bw = load ptr, ptr %.val12, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %.val12) #18, !inline_history !53
  %i.bz = load ptr, ptr %.val12, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %.val12) #18, !inline_history !53
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_17RangeOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_510OpRcPtrVec9push_backERKSt10shared_ptrINS_2OpEE
; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_17RangeOpEJRSt10shared_ptrINS0_11RangeOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !54
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19, !inline_history !57 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !10
end_hunk_4
begin_hunk_5_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_17RangeOp11combineWithERNS_10OpRcPtrVecERSt10shared_ptrIKNS_2OpEE:bb.a
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #18, !inline_history !52
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #18, !inline_history !52
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
end_hunk_5
begin_hunk_6_@llvm.experimental.noalias.scope.decl
!49 = !{!"double", !5, i64 0}
!50 = !{!"_ZTSN16OpenColorIO_v2_58BitDepthE", !5, i64 0}
!51 = !{!"_ZTSN16OpenColorIO_v2_518TransformDirectionE", !5, i64 0}
!52 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!53 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_17RangeOpELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!54 = !{!55, !56, i64 0}
!55 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_17RangeOpELN9__gnu_cxx12_Lock_policyE2EE", !56, i64 0, !16, i64 8}
!56 = !{!"p1 _ZTSN16OpenColorIO_v2_512_GLOBAL__N_17RangeOpE", !18, i64 0}
!57 = distinct !{null, null, null}
!58 = distinct !{null, null, null, null, null, null}
!59 = !{!60, !61, i64 0}
!60 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EE", !61, i64 0, !16, i64 8}
!61 = !{!"p1 _ZTSN16OpenColorIO_v2_56OpDataE", !18, i64 0}
!62 = distinct !{null, null, null, null, null, null, null, null, null, null}
!63 = !{!56, !56, i64 0}
!64 = distinct !{null, null}
!65 = !{!66, !67, i64 0}
!66 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EE", !67, i64 0, !16, i64 8}
end_hunk_6
