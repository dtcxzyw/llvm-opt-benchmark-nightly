inline.NumInlined: 4081
inline.NumDeleted: 1967
begin_hunk_0_@_ZN5boost7process6detail5posix22basic_environment_implIcE9_load_varERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EE:bb.a
  br i1 %.not70, label %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = shl nuw nsw i64 %i.h, 3
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !55
  store ptr %i.l, ptr %2, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.h ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5boost7process6detail5posix22basic_environment_implIcE9_load_varERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EE:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.030.042, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.am = icmp eq i64 %i.al, 0
  %.pre56 = load ptr, ptr %.sroa.030.042, align 8, !tbaa !13 ; 3 uses
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.030.042, i64 16 ; 2 uses
  %i.ao = icmp ne ptr %.pre56, %i.an
  %i.ap = load i64, ptr %i.an, align 8
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = select i1 %i.ao, i1 %i.aq, i1 false
end_hunk_1
begin_hunk_2_@_ZN5boost7process6detail5posix22basic_environment_implIcE9_load_varERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc16
  %i.as = phi ptr [ %.pre.i, %.noexc16 ], [ %.pre56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  store i8 0, ptr %i.as, align 1, !tbaa !15
  store i64 1, ptr %i.ak, align 8, !tbaa !16
  %i.at = load ptr, ptr %.sroa.030.042, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store i8 0, ptr %i.au, align 1, !tbaa !15
  %.pre = load ptr, ptr %.sroa.030.042, align 8, !tbaa !13
  br label %bb.k

bb.j:                                             ; preds = %bb.i
end_hunk_2
begin_hunk_3_@_ZN5boost7process6detail5posix22basic_environment_implIcE9_load_varERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EE:bb.a
  br label %bb.r

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.h
  %3 = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %.pre56, %bb.h ] ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %3, ptr %i.ah, align 8, !tbaa !100
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.n, align 8, !tbaa !111
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit26
end_hunk_3
begin_hunk_4_@_ZN5boost7process6detail5posix22basic_environment_implIcE9_load_varERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EE:bb.a

.noexc25:                                         ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i18
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 2 uses
  store ptr %3, ptr %i.bi, align 8, !tbaa !100
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %bb.o, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i21

end_hunk_4
