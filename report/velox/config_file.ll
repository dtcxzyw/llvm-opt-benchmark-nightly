begin_hunk_0
_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ag, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ai = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ai, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 14 uses
  %.1.in.v.i.i.i = select i1 %i.ai, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !41 ; 2 uses
end_hunk_0
begin_hunk_1
  %i.aq = load i8, ptr %i.aa, align 1, !tbaa !23
  %i.ar = sext i8 %i.aq to i32
  %i.as = ptrtoint ptr %i.ap to i64
  %invariant.op = sub i64 1, %i.z
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %bb.o, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %i.am, %.lr.ph.i.i ], [ %i.ay, %bb.o ]
  %.02840.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %i.aw, %bb.o ]
  %i.at = add i64 %.041.i.i, %invariant.op        ; 2 uses
  %.not34.i.i.a = icmp eq i64 %i.at, 0
  br i1 %.not34.i.i.a, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  %10 = call ptr @memchr(ptr noundef %.02840.i.i, i32 noundef %i.ar, i64 noundef %i.at) #26 ; 4 uses
  %.not34.i.i = icmp eq ptr %10, null
  br i1 %.not34.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %10, ptr nonnull %i.aa, i64 %i.z)
  %i.au = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.au, label %bb.n, label %bb.o
end_hunk_1
begin_hunk_2
          cleanup
  br label %bb.an

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit.thread: ; preds = %bb.o, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, %bb.n, %bb.m, %bb.l, %.sink.split.i.i, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit
  %.08.lcssa.i.i.i75 = phi ptr [ %.19.i.i.i, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit ], [ %i.y, %.sink.split.i.i ], [ %.19.i.i.i, %bb.n ], [ %.19.i.i.i, %bb.l ], [ %.19.i.i.i, %bb.m ], [ %.19.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a ], [ %.19.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %.19.i.i.i, %bb.o ] ; 3 uses
  %.014 = phi i1 [ false, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit ], [ false, %.sink.split.i.i ], [ %i.av, %bb.n ], [ false, %bb.l ], [ false, %bb.m ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ false, %bb.o ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !33
  %i.bd = icmp eq ptr %.08.lcssa.i.i.i75, %i.bc
  br i1 %i.bd, label %bb.w, label %bb.r

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit.thread.thread: ; preds = %bb.k
end_hunk_2
begin_hunk_3

bb.r:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit.thread.thread, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit.thread
  %.014115 = phi i1 [ true, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit.thread.thread ], [ %.014, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit.thread ] ; 2 uses
  %.08.lcssa.i.i.i74112 = phi ptr [ %.19.i.i.i, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit.thread.thread ], [ %.08.lcssa.i.i.i75, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit.thread ]
  %i.bh = call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i74112) #27 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !51 ; 2 uses
end_hunk_3
begin_hunk_4
  %i.bq = load i8, ptr %i.bj, align 1, !tbaa !23
  %i.br = sext i8 %i.bq to i32
  %i.bs = ptrtoint ptr %i.bp to i64
  %invariant.op123 = sub i64 1, %i.bl
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i35

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i35:   ; preds = %bb.v, %.lr.ph.i.i34
  %.041.i.i36 = phi i64 [ %i.bm, %.lr.ph.i.i34 ], [ %i.bz, %bb.v ]
  %.02840.i.i37 = phi ptr [ %i.bo, %.lr.ph.i.i34 ], [ %i.bx, %bb.v ]
  %i.bt = add i64 %.041.i.i36, %invariant.op123   ; 2 uses
  %.not34.i.i39 = icmp eq i64 %i.bt, 0
  br i1 %.not34.i.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit43, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i39

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i39:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i35
  %11 = call ptr @memchr(ptr noundef %.02840.i.i37, i32 noundef %i.br, i64 noundef %i.bt) #26 ; 4 uses
  %.not34.i.i40 = icmp eq ptr %11, null
  br i1 %.not34.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit43, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i40

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i40: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i39
  %bcmp.i.i41 = call i32 @bcmp(ptr nonnull %11, ptr nonnull %i.bj, i64 %i.bl)
  %i.bu = icmp eq i32 %bcmp.i.i41, 0
  br i1 %i.bu, label %bb.u, label %bb.v
end_hunk_4
begin_hunk_5
  %.not33.i.i42 = icmp ult i64 %i.bz, %i.bl
  br i1 %.not33.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit43, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i35, !llvm.loop !58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit43: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i35, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i39, %bb.v, %bb.s, %bb.t
  br i1 %.014115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit43.thread, label %bb.am

bb.w:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit.thread
  br i1 %.014, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit43.thread, label %bb.am

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit43.thread: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit.thread.thread, %bb.u, %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit43, %bb.w
  %.sroa.065.075 = phi ptr [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit43 ], [ %.08.lcssa.i.i.i75, %bb.w ], [ %i.bh, %bb.r ], [ %i.bh, %bb.u ], [ %.19.i.i.i, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit.thread.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
end_hunk_5
begin_hunk_6
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !23
  %i.az = sext i8 %i.ay to i32
  %i.ba = ptrtoint ptr %i.ax to i64
  %invariant.op = sub i64 1, %i.as
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %bb.h, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %i.au, %.lr.ph.i.i ], [ %i.bf, %bb.h ]
  %.02840.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.bd, %bb.h ]
  %i.bb = add i64 %.041.i.i, %invariant.op        ; 2 uses
  %.not34.i.i.a = icmp eq i64 %i.bb, 0
  br i1 %.not34.i.i.a, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  %2 = tail call ptr @memchr(ptr noundef %.02840.i.i, i32 noundef %i.az, i64 noundef %i.bb) #26 ; 4 uses
  %.not34.i.i = icmp eq ptr %2, null
  br i1 %.not34.i.i, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %2, ptr nonnull %i.aq, i64 %i.as)
  %i.bc = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit, label %bb.h
end_hunk_6
begin_hunk_7
  %i.bg = icmp eq ptr %2, %i.aw
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread30, label %.critedge

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.h, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, %bb.g, %bb.f, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread30: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit, %.critedge
end_hunk_7
