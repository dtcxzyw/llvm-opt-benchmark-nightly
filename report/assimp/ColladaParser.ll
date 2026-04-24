inline.NumInlined: 6572
inline.NumDeleted: 2480
begin_hunk_0_@_ZN6Assimp7Collada9Animation41CombineSingleChannelAnimationsRecursivelyEPS1_:bb.a
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %3 = trunc nuw i8 %.1 to i1
  br i1 %3, label %._crit_edge.thread, label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %.051 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit ]
  %.sroa.036.050 = phi ptr [ %i.g, %.lr.ph ], [ %i.aq, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.036.050, align 8    ; 4 uses
  %i.l = load i64, ptr %i.j, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp7Collada9Animation41CombineSingleChannelAnimationsRecursivelyEPS1_:bb.a
          to label %bb.e unwind label %bb.d

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %4 = trunc nuw i8 %.051 to i1
  br i1 %4, label %bb.f, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
end_hunk_1
begin_hunk_2_@_ZN6Assimp7Collada9Animation41CombineSingleChannelAnimationsRecursivelyEPS1_:bb.a
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit unwind label %bb.d ; 0 uses

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit: ; preds = %bb.f, %bb.e, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %.1 = phi i8 [ 0, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit ], [ 1, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.036.050, i64 8 ; 3 uses
  %i.ar = load ptr, ptr %i.h, align 8
  %.not = icmp eq ptr %i.aq, %i.ar
end_hunk_2
