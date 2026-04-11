inline.NumInlined: 6739
inline.NumDeleted: 2920
begin_hunk_0_@_ZN8facebook5velox9functions7TDigestISaIdEE3addERSt6vectorIsSaIsEEdl:bb.a

bb.g:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %6 = load <2 x double>, ptr %i.j, align 8, !tbaa !85 ; 3 uses
  %7 = insertelement <2 x double> %6, double %2, i64 0 ; 2 uses
  %8 = insertelement <2 x double> %6, double %2, i64 1
  %9 = fcmp olt <2 x double> %7, %8
  %10 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = select <2 x i1> %9, <2 x double> %10, <2 x double> %6
  store <2 x double> %11, ptr %i.j, align 8, !tbaa !85
  %i.k = uitofp nneg i64 %3 to double             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !198  ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions7TDigestISaIdEE18serializedByteSizeEv:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43, !noalias !234
  store i32 %i.b, ptr %1, align 16, !tbaa !37, !alias.scope !237, !noalias !234
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.j, ptr %i.k, align 16, !tbaa !37, !alias.scope !237, !noalias !234
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.127, i64 11, i64 65, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43, !noalias !234
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions7TDigestISaIdEE18serializedByteSizeEvE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.127) #47
          to label %bb.c unwind label %bb.d

end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions7TDigestISaIdEE9serializeEPc:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43, !noalias !240
  store i32 %i.b, ptr %7, align 16, !tbaa !37, !alias.scope !243, !noalias !240
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.j, ptr %i.k, align 16, !tbaa !37, !alias.scope !243, !noalias !240
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.127, i64 11, i64 65, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43, !noalias !240
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions7TDigestISaIdEE9serializeEPcE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.127) #47
          to label %bb.c unwind label %bb.d

end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions7TDigestISaIdEE9serializeEPc:bb.a
  store i8 0, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load double, ptr %i.t, align 8, !tbaa !246
  store double %i.u, ptr %i.s, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load double, ptr %i.w, align 8, !tbaa !247
  store double %i.x, ptr %i.v, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.z = load i32, ptr %i.a, align 4, !tbaa !184  ; 5 uses
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox9functions7TDigestISaIdEE9mergeImplILb1EEEvdPKdS7_i:bb.a
  %i.ew = load double, ptr %i.eu, align 8, !tbaa !85 ; 2 uses
  %i.ex = fcmp olt double %i.ev, %i.ew
  %i.ey = select i1 %i.ex, double %i.ev, double %i.ew
  store double %i.ey, ptr %i.eu, align 8, !tbaa !246
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %i.es, i64 -8
  %i.fb = load double, ptr %i.ez, align 8, !tbaa !85 ; 2 uses
  %i.fc = load double, ptr %i.fa, align 8, !tbaa !85 ; 2 uses
  %i.fd = fcmp olt double %i.fb, %i.fc
  %i.fe = select i1 %i.fd, double %i.fc, double %i.fb
  store double %i.fe, ptr %i.ez, align 8, !tbaa !247
  ret void
}

end_hunk_4
begin_hunk_5_@_ZN8facebook5velox9functions7TDigestISaIdEE9mergeImplILb0EEEvdPKdS7_i:bb.a
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !85 ; 2 uses
  %i.dy = fcmp olt double %i.dw, %i.dx
  %i.dz = select i1 %i.dy, double %i.dw, double %i.dx
  store double %i.dz, ptr %i.dv, align 8, !tbaa !246
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load double, ptr %i.ea, align 8, !tbaa !85 ; 2 uses
  %i.ed = load double, ptr %i.eb, align 8, !tbaa !85 ; 2 uses
  %i.ee = fcmp olt double %i.ec, %i.ed
  %i.ef = select i1 %i.ee, double %i.ed, double %i.ec
  store double %i.ef, ptr %i.ea, align 8, !tbaa !247
  ret void
}

end_hunk_5
begin_hunk_6_@bcmp
!231 = !{!232}
!232 = distinct !{!232, !233, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKiELi2ELi0ELy19EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!233 = distinct !{!233, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKiELi2ELi0ELy19EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!234 = !{!235}
!235 = distinct !{!235, !236, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!236 = distinct !{!236, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!239 = distinct !{!239, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!242 = distinct !{!242, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!245 = distinct !{!245, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!246 = !{!185, !73, i64 64}
!247 = !{!185, !73, i64 72}
!248 = !{!249}
!249 = distinct !{!249, !250, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!250 = distinct !{!250, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
end_hunk_6
