inline.NumInlined: 3028
inline.NumDeleted: 1097
begin_hunk_0_@llvm.memcpy.p0.p0.i64
; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox3row10CompactRow11deserializeERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EERKSt10shared_ptrIKNS0_7RowTypeEEPNS0_6memory10MemoryPoolE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.0", align 8     ; 10 uses
  %5 = alloca %"class.std::shared_ptr.11", align 16 ; 7 uses
  %6 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox3row10CompactRow11deserializeERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EERKSt10shared_ptrIKNS0_7RowTypeEEPNS0_6memory10MemoryPoolE:bb.a

.noexc8:                                          ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = ashr exact i64 %i.f, 1                   ; 3 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #28 ; 5 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !71
  %i.m = and i64 %i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.j, i8 0, i64 %i.m, i1 false), !tbaa !88
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  %7 = ptrtoint ptr %i.k to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc8, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i
  %8 = phi i64 [ 0, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %7, %.noexc8 ]
  %9 = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.j, %.noexc8 ] ; 3 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.n, %.noexc8 ]
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !242
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox3row10CompactRow11deserializeERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EERKSt10shared_ptrIKNS0_7RowTypeEEPNS0_6memory10MemoryPoolE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.not.i.i.i13 = icmp eq ptr %9, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorImSaImEED2Ev.exit14, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = ptrtoint ptr %9 to i64
  %i.bk = sub i64 %8, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %9, i64 noundef %i.bk) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit14

_ZNSt6vectorImSaImEED2Ev.exit14:                  ; preds = %bb.p, %bb.o
end_hunk_2
