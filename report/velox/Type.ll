inline.NumInlined: 8537
inline.NumDeleted: 3636
begin_hunk_0_@_ZN8facebook5velox3ROWESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKSt10shared_ptrIKNS0_4TypeEE:bb.a
_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.us.i.ph = phi ptr [ %i.n, %iter.check ], [ %i.w, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  %.068.i.i.i.i.i.us.i.ph = phi i64 [ %i.j, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i: ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.preheader, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i
  %.09.i.i.i.i.i.us.i = phi ptr [ %i.ak, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i ], [ %.09.i.i.i.i.i.us.i.ph, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.preheader ] ; 3 uses
  %.068.i.i.i.i.i.us.i = phi i64 [ %i.aj, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i ], [ %.068.i.i.i.i.i.us.i.ph, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.preheader ]
  store ptr %i.u, ptr %.09.i.i.i.i.i.us.i, align 8, !tbaa !123
  %5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 8
  store ptr null, ptr %5, align 8, !tbaa !99
  %i.aj = add i64 %.068.i.i.i.i.i.us.i, -1        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.us.i = icmp eq i64 %i.aj, 0
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox3ROWESt16initializer_listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKSt10shared_ptrIKNS0_4TypeEE:bb.a
_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.us.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.068.i.i.i.i.i.us.i.ph = phi i64 [ %2, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i: ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.preheader, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i
  %.09.i.i.i.i.i.us.i = phi ptr [ %i.an, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i ], [ %.09.i.i.i.i.i.us.i.ph, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.preheader ] ; 3 uses
  %.068.i.i.i.i.i.us.i = phi i64 [ %i.am, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i ], [ %.068.i.i.i.i.i.us.i.ph, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.preheader ]
  store ptr %i.y, ptr %.09.i.i.i.i.i.us.i, align 8, !tbaa !123
  %6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 8
  store ptr null, ptr %6, align 8, !tbaa !99
  %i.am = add i64 %.068.i.i.i.i.i.us.i, -1        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.us.i = icmp eq i64 %i.am, 0
end_hunk_1
