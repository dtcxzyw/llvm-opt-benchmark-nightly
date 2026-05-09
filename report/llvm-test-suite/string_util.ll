inline.NumInlined: 293
inline.NumDeleted: 149
begin_hunk_0_@_ZN9benchmark19HumanReadableNumberB5cxx11EdNS_7Counter4OneKE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  store i64 0, ptr %i.c, align 8, !tbaa !15, !noalias !8
  store i8 0, ptr %i.b, align 8, !tbaa !18, !noalias !8
  %i.d = icmp eq i32 %2, 1024                     ; 2 uses
  %i.e = select i1 %i.d, double 1.024000e+03, double 1.000000e+03 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !8
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %.noexc.i unwind label %bb.ar, !noalias !8
end_hunk_0
begin_hunk_1_@_ZN9benchmark19HumanReadableNumberB5cxx11EdNS_7Counter4OneKE:bb.a

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc.i
  %.052.i.i = phi double [ %i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ %1, %.noexc.i ] ; 6 uses
  %9 = fadd double %i.e, -1.000000e+00            ; 9 uses
  %i.k = fcmp ogt double %.052.i.i, %9
  br i1 %i.k, label %.preheader.preheader.i.i, label %bb.p

end_hunk_1
