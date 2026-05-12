inline.NumInlined: 230
inline.NumDeleted: 93
begin_hunk_0_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !26     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !32
end_hunk_0
begin_hunk_1_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
  %i.q = and i64 %i.o, -4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %i.q, i1 false), !tbaa !4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.m
  %.pre = load ptr, ptr %1, align 8, !tbaa !26
  %i.s = ptrtoint ptr %i.r to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc178, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %11 = phi ptr [ %i.d, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %.pre, %.noexc178 ]
  %.sroa.15298.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.s, %.noexc178 ] ; 2 uses
  %.sroa.0289.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.p, %.noexc178 ] ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %11 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 24
  %i.z = trunc i64 %i.y to i32
end_hunk_1
begin_hunk_2_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a

._crit_edge.us:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
  %indvars.iv.next396 = add nuw nsw i64 %indvars.iv395, 1 ; 2 uses
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.be = load ptr, ptr %1, align 8, !tbaa !26
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
end_hunk_2
begin_hunk_3_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit246

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179: ; preds = %._crit_edge.us, %.preheader318.lr.ph, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit188, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179
end_hunk_3
begin_hunk_4_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
  %.sroa.15.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i190 ], [ %i.dw, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199.loopexit ] ; 2 uses
  store i32 %3, ptr %.sroa.0266.0, align 4, !tbaa !4
  %i.dx = icmp sgt i32 %5, 0
  br i1 %i.dx, label %.preheader317, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199..loopexit306_crit_edge

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199..loopexit306_crit_edge: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199
  %.pre433 = load ptr, ptr %i.t, align 8, !tbaa !33
  %.pre435 = load ptr, ptr %1, align 8, !tbaa !26
  br label %.loopexit306

.preheader317:                                    ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199
  br i1 %i.br, label %.lr.ph349.preheader, label %._crit_edge
end_hunk_4
begin_hunk_5_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
  %.0155.lcssa = phi i32 [ 0, %.preheader317 ], [ %i.eh, %middle.block550 ], [ %i.eq, %.lr.ph349 ]
  %i.ei = sub nsw i32 %.0155.lcssa, %5            ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  %.pre434 = load ptr, ptr %i.t, align 8, !tbaa !33 ; 3 uses
  %.pre436 = load ptr, ptr %1, align 8, !tbaa !26 ; 4 uses
  br i1 %i.ej, label %bb.n, label %.loopexit306

bb.m:                                             ; preds = %bb.i
end_hunk_5
begin_hunk_6_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !4
  %i.ev = sub nsw i32 %i.eu, %i.ei
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !4
  %i.ew = ptrtoint ptr %.pre434 to i64
  %i.ex = ptrtoint ptr %.pre436 to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = sdiv exact i64 %i.ey, 24
  %i.fa = trunc i64 %i.ez to i32
end_hunk_6
begin_hunk_7_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
  br label %.preheader305

.preheader305:                                    ; preds = %.preheader305.lr.ph, %bb.am
  %.pre431432 = phi ptr [ %.pre436, %.preheader305.lr.ph ], [ %.pre431433, %bb.am ]
  %indvars.iv413 = phi i64 [ 0, %.preheader305.lr.ph ], [ %indvars.iv.next414, %bb.am ] ; 4 uses
  br i1 %i.br, label %.lr.ph352, label %._crit_edge353

end_hunk_7
begin_hunk_8_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

.loopexit306:                                     ; preds = %bb.am, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199..loopexit306_crit_edge, %bb.n, %._crit_edge
  %i.jy = phi ptr [ %.pre435, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199..loopexit306_crit_edge ], [ %.pre436, %._crit_edge ], [ %.pre436, %bb.n ], [ %.pre431433, %bb.am ]
  %i.jz = phi ptr [ %.pre433, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199..loopexit306_crit_edge ], [ %.pre434, %._crit_edge ], [ %.pre434, %bb.n ], [ %i.jn, %bb.am ]
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = ptrtoint ptr %i.jy to i64
  %i.kc = sub i64 %i.ka, %i.kb
end_hunk_8
