inline.NumInlined: 424
inline.NumDeleted: 218
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteryENCNvMs0_NtNtCs95DO3lnzZ3L_4moka6common11timer_wheelINtB1x_10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringE6enable0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3j_8for_each4callINtNtB2B_5boxed3BoxSINtNtB1z_5deque5DequeINtB1x_9TimerNodeB2x_EEENCINvMsj_NtB2B_3vecINtB5y_3VecB4m_E14extend_trustedBN_E0E0ECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  br i1 %i.n, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB2S_11timer_wheel9TimerNodeNtNtB2i_6string6StringEEEuNCNvMs0_B3z_INtB3z_10TimerWheelB42_E6enable0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtB2i_3vecINtB5L_3VecB2d_E14extend_trustedINtB1I_3MapBF_B4s_EE0E0E0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.loopexit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %lpad10 = landingpad { ptr, i32 }
          cleanup
  %i.p = add i64 %.sroa.6.0.copyload, %.sroa.01.0.i
  br label %bb.g

bb.f:                                             ; preds = %.noexc.i
  %lpad = landingpad { ptr, i32 }
          cleanup
  %i.q = add i64 %.sroa.6.0.copyload, %.sroa.01.0.i
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
end_hunk_0
