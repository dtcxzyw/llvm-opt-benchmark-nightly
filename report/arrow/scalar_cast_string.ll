inline.NumInlined: 15665
inline.NumDeleted: 2714
begin_hunk_0_@_ZN5arrow7compute8internal12_GLOBAL__N_122BinaryToBinaryCastExecINS_10BinaryTypeENS_14StringViewTypeEEENSt9enable_ifIXaasr24is_binary_view_like_typeIT0_EE5valuesr19is_base_binary_typeIT_EE5valueENS_6StatusEE4typeEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal25GetOrCopyNullBitmapBufferERKNS_9ArraySpanEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.162") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %2) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.105", align 16 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.105", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !614  ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal25GetOrCopyNullBitmapBufferERKNS_9ArraySpanEPNS_10MemoryPoolE:bb.a
_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit23: ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit18
  store ptr null, ptr %0, align 8, !tbaa !83
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load <2 x ptr>, ptr %3, align 16, !tbaa !71
  store ptr null, ptr %5, align 8, !tbaa !46
  store <2 x ptr> %i.aw, ptr %i.av, align 8, !tbaa !71
  store ptr null, ptr %3, align 16, !tbaa !783
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !46 ; 8 uses
  %.not.i.i24 = icmp eq ptr %i.ay, null
end_hunk_1
