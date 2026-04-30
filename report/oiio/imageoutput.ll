inline.NumInlined: 3702
inline.NumDeleted: 1236
begin_hunk_0_@_ZN11OpenImageIO4v3_111ImageOutput19ioproxy_use_or_openENS0_17basic_string_viewIcSt11char_traitsIcEEE:bb.a
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_EE5resetEPS3_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #42 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !75
  store ptr %i.f, ptr %2, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_111ImageOutput19ioproxy_use_or_openENS0_17basic_string_viewIcSt11char_traitsIcEEE:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38   ; 3 uses
  store ptr %i.e, ptr %i.k, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_EE5resetEPS3_.exit, label %_ZNKSt14default_deleteIN11OpenImageIO4v3_110Filesystem7IOProxyEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN11OpenImageIO4v3_110Filesystem7IOProxyEEclEPS3_.exit.i.i: ; preds = %bb.c
  %3 = load ptr, ptr %i.l, align 8, !tbaa !40
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8
  call void %5(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.l) #2, !inline_history !204
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_EE5resetEPS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_111ImageOutput19ioproxy_use_or_openENS0_17basic_string_viewIcSt11char_traitsIcEEE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 152) #40
  resume { ptr, i32 } %i.m

_ZNSt10unique_ptrIN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_EE5resetEPS3_.exit: ; preds = %_ZNKSt14default_deleteIN11OpenImageIO4v3_110Filesystem7IOProxyEEclEPS3_.exit.i.i, %bb.c
  %.pr = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %.not9 = icmp eq ptr %.pr, null
  br i1 %.not9, label %bb.e, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_EE5resetEPS3_.exit.thread

_ZNSt10unique_ptrIN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_EE5resetEPS3_.exit.thread: ; preds = %bb.a, %_ZNSt10unique_ptrIN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_EE5resetEPS3_.exit
  %6 = phi ptr [ %.pr, %_ZNSt10unique_ptrIN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_EE5resetEPS3_.exit ], [ %i.d, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !201
  %.not10 = icmp eq i32 %i.o, 119
end_hunk_2
