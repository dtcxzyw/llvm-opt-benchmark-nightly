inline.NumInlined: 101
inline.NumDeleted: 70
begin_hunk_0_@_ZN4geos9operation8distance30ConnectedElementLocationFilter9filter_roEPKNS_4geom8GeometryE:bb.a
  br i1 %i.d, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEEvDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
end_hunk_0
begin_hunk_1_@_ZN4geos9operation8distance30ConnectedElementLocationFilter9filter_roEPKNS_4geom8GeometryE:bb.a
_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %_ZNKSt9type_infoeqERKS_.exit16.thread30.thread, %_ZNKSt9type_infoeqERKS_.exit12.thread27.thread, %_ZNKSt9type_infoeqERKS_.exit.thread24.thread, %_ZNKSt9type_infoeqERKS_.exit16.thread30, %_ZNKSt9type_infoeqERKS_.exit12.thread27, %_ZNKSt9type_infoeqERKS_.exit.thread24, %bb.b, %_ZNKSt9type_infoeqERKS_.exit20, %_ZNKSt9type_infoeqERKS_.exit16, %_ZNKSt9type_infoeqERKS_.exit12, %_ZNKSt9type_infoeqERKS_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #14 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.d unwind label %bb.j
end_hunk_1
begin_hunk_2_@_ZN4geos9operation8distance30ConnectedElementLocationFilter9filter_rwEPNS_4geom8GeometryE:bb.a
  br i1 %i.d, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEEvDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
end_hunk_2
begin_hunk_3_@_ZN4geos9operation8distance30ConnectedElementLocationFilter9filter_rwEPNS_4geom8GeometryE:bb.a
_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %_ZNKSt9type_infoeqERKS_.exit16.thread30.thread, %_ZNKSt9type_infoeqERKS_.exit12.thread27.thread, %_ZNKSt9type_infoeqERKS_.exit.thread24.thread, %_ZNKSt9type_infoeqERKS_.exit16.thread30, %_ZNKSt9type_infoeqERKS_.exit12.thread27, %_ZNKSt9type_infoeqERKS_.exit.thread24, %bb.b, %_ZNKSt9type_infoeqERKS_.exit20, %_ZNKSt9type_infoeqERKS_.exit16, %_ZNKSt9type_infoeqERKS_.exit12, %_ZNKSt9type_infoeqERKS_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #14 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.d unwind label %bb.j
end_hunk_3
