inline.NumInlined: 282
inline.NumDeleted: 144
begin_hunk_0_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  br i1 %or.cond129.i.a, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit48.thread.i

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.val.i = load ptr, ptr %6, align 8             ; 3 uses
  %.val17.i = load i64, ptr %i.cn, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %i.co, ptr %1, align 16, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.co, ptr noundef nonnull align 1 dereferenceable(5) @.str.19, i64 5, i1 false)
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  store i64 4, ptr %i.ex, align 8, !tbaa !24
  store i8 0, ptr %i.ey, align 4, !tbaa !15
  store i64 4096, ptr %i.ez, align 16, !tbaa !59
  %i.hd = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val17.i
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = ptrtoint ptr %.val.i to i64
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, %bb.an
  %indvars.iv.i.i = phi i64 [ 0, %bb.an ], [ %indvars.iv.next.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i ] ; 2 uses
  %.01221.i.i = phi i64 [ 0, %bb.an ], [ %.1.i50.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i ] ; 6 uses
  %i.hg = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv.i.i ; 3 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !10 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  br i1 %i.hk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread18.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not3339.i.i.i.i = icmp ult i64 %.val17.i, %i.hj
  br i1 %.not3339.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ap
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %.val17.i, %.lr.ph.i.i.i.i ], [ %i.hs, %bb.ar ]
  %.02840.i.i.i.i = phi ptr [ %.val.i, %.lr.ph.i.i.i.i ], [ %i.hq, %bb.ar ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.041.i.i.i.i, %invariant.op ; 2 uses
  %i.hn = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.hn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 13
  br i1 %exitcond.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i151.12.i.i, label %bb.ao, !llvm.loop !63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i151.12.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i
  %.pre.i = load i64, ptr %0, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.hy = or i64 %.pre.i, %.1.i50.i
  store i64 %i.hy, ptr %0, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

end_hunk_4
begin_hunk_5_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f
end_hunk_5
begin_hunk_6_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #23 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #22
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
end_hunk_6
