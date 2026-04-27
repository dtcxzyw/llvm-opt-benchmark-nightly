inline.NumInlined: 305
inline.NumDeleted: 163
begin_hunk_0_@_ZNK5arrow7compute8Ordering12IsSuborderOfERKS1_:bb.a
bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.af = phi ptr [ %i.b, %.lr.ph ], [ %i.aa, %bb.e ]
  %.0913 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.e ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.af, i64 %.0913 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !70
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.ah, i64 %.0913 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i8 1, ptr %i.a, align 1, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
end_hunk_0
begin_hunk_1_@_ZNK5arrow7compute8Ordering8ToStringB5cxx11Ev:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !59     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e
end_hunk_1
begin_hunk_2_@_ZNK5arrow7compute8Ordering8ToStringB5cxx11Ev:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZNK5arrow7compute7SortKey8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(44) %i.c)
          to label %bb.b unwind label %.loopexit.split-lp30
end_hunk_2
