inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@vm_respond_to:bb.a
  br label %bb.o

bb.o:                                             ; preds = %RARRAY_AREF.exit.thread, %RCLASS_SINGLETON_P.exit39.thread, %rb_num2int_inline.exit, %RARRAY_AREF.exit, %bb.g, %rb_ruby_verbose_ptr.exit, %bb.d
  %.032.a = phi i32 [ 1, %bb.d ], [ 1, %rb_ruby_verbose_ptr.exit ], [ 2, %bb.g ], [ 1, %RARRAY_AREF.exit ], [ 1, %rb_num2int_inline.exit ], [ 1, %RCLASS_SINGLETON_P.exit39.thread ], [ 1, %RARRAY_AREF.exit.thread ] ; 2 uses
  %i.bn = getelementptr i8, ptr %0, i64 136       ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
end_hunk_0
begin_hunk_1_@vm_respond_to:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 0, ptr %i.bv, align 8, !tbaa !173
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 32
  %9 = zext nneg i32 %.032.a to i64
  store i64 %9, ptr %i.bw, align 8, !tbaa !174
  store ptr %7, ptr %6, align 8, !tbaa !225
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.bx, align 8, !tbaa !182
end_hunk_1
begin_hunk_2_@rb_f_eval:bb.a

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ 4, %.preheader ] ; 4 uses
  %.286.i.a = phi i32 [ 2, %bb.b ], [ 1, %.preheader ] ; 4 uses
  %i.i = icmp samesign ult i32 %.286.i.a, %0
  br i1 %i.i, label %bb.e, label %bb.d

end_hunk_2
begin_hunk_3_@rb_f_eval:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %3 = zext nneg i32 %.286.i.a to i64
  %i.j = getelementptr [8 x i8], ptr %1, i64 %3
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  store i64 %i.k, ptr %i.c, align 8, !tbaa !11
  %i.l = add nuw nsw i32 %.286.i.a, 1
end_hunk_3
begin_hunk_4_@rb_vm_check_redefinition_opt_method:bb.a
  br i1 %i.bz, label %select.unfold, label %vm_redefinition_check_flag.exit

select.unfold:                                    ; preds = %bb.t, %bb.s, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i20.ph.a = phi i32 [ 2048, %bb.s ], [ 1024, %bb.r ], [ 512, %bb.q ], [ 256, %bb.p ], [ 64, %bb.o ], [ 16, %bb.n ], [ 8, %bb.m ], [ 4, %bb.l ], [ 2, %bb.k ], [ 1, %bb.j ], [ 4096, %bb.t ] ; 3 uses
  %i.ca = getelementptr i8, ptr %0, i64 32
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !201
  %i.cc = call ptr @rb_class2name(i64 noundef %i.cb) #24
end_hunk_4
begin_hunk_5_@rb_vm_check_redefinition_opt_method:bb.a
  %i.cj = load i64, ptr %i.b, align 8, !tbaa !11
  %i.ck = getelementptr [2 x i8], ptr @ruby_vm_redefined_flag, i64 %i.cj ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !120
  %2 = trunc nuw nsw i32 %.0.i20.ph.a to i16
  %i.cm = or i16 %i.cl, %2
  store i16 %i.cm, ptr %i.ck, align 2, !tbaa !120
  br label %vm_redefinition_check_flag.exit

end_hunk_5
begin_hunk_6_@rb_call0:bb.a
scope_to_ci.exit:                                 ; preds = %bb.a, %scope_to_ci.exit.fold.split, %.thread100, %bb.b, %bb.c
  %i.e = phi i1 [ true, %bb.a ], [ false, %.thread100 ], [ false, %bb.b ], [ false, %bb.c ], [ true, %scope_to_ci.exit.fold.split ]
  %i.f = phi i32 [ 0, %bb.a ], [ 0, %.thread100 ], [ 0, %bb.b ], [ 8, %bb.c ], [ 0, %scope_to_ci.exit.fold.split ]
  %11 = phi i1 [ true, %bb.a ], [ true, %.thread100 ], [ false, %bb.b ], [ false, %bb.c ], [ false, %scope_to_ci.exit.fold.split ] ; 2 uses
  %.06097 = phi i32 [ 1, %bb.a ], [ 1, %.thread100 ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %scope_to_ci.exit.fold.split ] ; 4 uses
  %.0.i = phi i64 [ 0, %bb.a ], [ 4, %.thread100 ], [ 4, %bb.b ], [ 8, %bb.c ], [ 0, %scope_to_ci.exit.fold.split ]
  %i.g = sext i32 %3 to i64                       ; 2 uses
end_hunk_6
begin_hunk_7_@rb_call0:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %3, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %12 = select i1 %11, i32 64, i32 0              ; 2 uses
  store i32 %12, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.de = getelementptr i8, ptr %.1.i, i64 16
end_hunk_7
begin_hunk_8_@rb_call0:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %i.dn, ptr %i.ea, align 8, !tbaa !230
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 36
  %13 = zext i1 %11 to i8
  store i8 %13, ptr %i.eb, align 4, !tbaa !231
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ec, i8 0, i64 11, i1 false)
  %i.ed = call fastcc i64 @vm_call0_body(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %.0.i94), !inline_history !461
end_hunk_8
