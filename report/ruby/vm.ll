inline.NumInlined: 3274
inline.NumDeleted: 574
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@rb_mod_public_method
define internal noundef i64 @rb_mod_public_method(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) #2 {
bb.a:
  %i.a = tail call i64 @rb_singleton_class(i64 noundef %2) #23
  tail call fastcc void @set_method_visibility(i64 noundef %i.a, i32 noundef %0, ptr noundef %1, i32 noundef 1)
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_mod_private_method(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) #2 {
bb.a:
  %i.a = tail call i64 @rb_singleton_class(i64 noundef %2) #23
  tail call fastcc void @set_method_visibility(i64 noundef %i.a, i32 noundef %0, ptr noundef %1, i32 noundef 2)
  ret i64 %2
}

declare i64 @rb_singleton_class(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
define hidden i64 @rb_vm_top_self() local_unnamed_addr #19 {
bb.a:
  %i.a = tail call ptr @rb_current_box() #23
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !448
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @top_public(i32 noundef %0, ptr noundef %1, i64 %2) #2 {
bb.a:
  %i.a = tail call i64 @rb_top_main_class(ptr noundef nonnull @.str.18) #23
  %i.b = tail call fastcc i64 @set_visibility(i32 noundef %0, ptr noundef %1, i64 noundef %i.a, i32 noundef 1)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @top_private(i32 noundef %0, ptr noundef %1, i64 %2) #2 {
bb.a:
  %i.a = tail call i64 @rb_top_main_class(ptr noundef nonnull @.str.20) #23
  %i.b = tail call fastcc i64 @set_visibility(i32 noundef %0, ptr noundef %1, i64 noundef %i.a, i32 noundef 2)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @top_ruby2_keywords(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #2 {
bb.a:
  %i.a = tail call i64 @rb_top_main_class(ptr noundef nonnull @.str.22) #23
  %i.b = tail call i64 @rb_mod_ruby2_keywords(i32 noundef %0, ptr noundef %1, i64 noundef %i.a) ; 0 uses
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_call0(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 4 uses
  %7 = alloca %struct.rb_calling_info, align 8    ; 10 uses
  %8 = alloca %struct.rb_call_data, align 8       ; 5 uses
  %9 = alloca %struct.rb_callinfo, align 8        ; 8 uses
  %10 = alloca %struct.rb_callcache, align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i64 3190810, ptr %10, align 8, !tbaa !442
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 36, ptr %i.d, align 8, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %5, ptr %i.e, align 8, !tbaa !187
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @vm_call_general, ptr %i.f, align 8, !tbaa !234
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 0, ptr %i.g, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %3, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.h = icmp ne i32 %6, 0                        ; 2 uses
  %i.i = select i1 %i.h, i32 64, i32 0            ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.j = getelementptr i8, ptr %5, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 15
  %i.n = icmp eq i8 %i.m, 0
  %i.o = icmp sgt i32 %3, 128
  %i.p = and i1 %i.o, %i.n
  br i1 %i.p, label %bb.b, label %vm_call0_cc.exit, !prof !177

bb.b:                                             ; preds = %bb.a
  %i.q = call fastcc ptr @vm_argv_ruby_array(ptr noundef %i.c, ptr noundef %4, ptr noundef %i.b, ptr noundef %i.a, i32 noundef %6), !inline_history !461 ; 0 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !7
  %.pre6 = load i32, ptr %i.a, align 4, !tbaa !7
  br label %vm_call0_cc.exit

vm_call0_cc.exit:                                 ; preds = %bb.a, %bb.b
  %i.r = phi i32 [ %.pre6, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.s = phi i32 [ %.pre, %bb.b ], [ %i.i, %bb.a ]
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %4, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 106522, ptr %9, align 8, !tbaa !445
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !238
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %2, ptr %i.u, align 8, !tbaa !163
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.w = sext i32 %i.s to i64
  store i64 %i.w, ptr %i.v, align 8, !tbaa !173
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.y = sext i32 %i.r to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !174
  store ptr %9, ptr %8, align 8, !tbaa !225
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !182
  store ptr %8, ptr %7, align 8, !tbaa !226
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %10, ptr %i.aa, align 8, !tbaa !233
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ac = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !441
  store i64 0, ptr %i.ac, align 8, !tbaa !441
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !228
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %1, ptr %i.ae, align 8, !tbaa !229
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %i.r, ptr %i.af, align 8, !tbaa !230
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.ah = zext i1 %i.h to i8
  store i8 %i.ah, ptr %i.ag, align 4, !tbaa !231
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ai, i8 0, i64 11, i1 false)
  %i.aj = call fastcc i64 @vm_call0_body(ptr noundef %0, ptr noundef %7, ptr noundef %.0.i), !inline_history !461
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  ret i64 %i.aj
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_call_with_refinements(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 4 uses
  %6 = alloca %struct.rb_calling_info, align 8    ; 10 uses
  %7 = alloca %struct.rb_call_data, align 8       ; 5 uses
  %8 = alloca %struct.rb_callinfo, align 8        ; 8 uses
  %9 = alloca %struct.rb_callcache, align 8       ; 8 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = icmp eq i64 %1, 0
  %i.f = and i64 %1, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %1 to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 8
  br label %rb_class_of.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %1, label %bb.f [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.c
  %i.k = trunc i64 %1 to i1
  br i1 %i.k, label %rb_class_of.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = and i64 %1, 254
  %i.m = icmp eq i64 %i.l, 12
  %spec.select.i = select i1 %i.m, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.j, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i, %bb.g ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !11 ; 2 uses
  %i.n = tail call fastcc ptr @callable_method_entry_or_negative(i64 noundef %.0.i, i64 noundef %2, ptr noundef null) ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %rb_callable_method_entry_with_refinements.exit.thread, label %bb.h

bb.h:                                             ; preds = %rb_class_of.exit
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !83   ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not7.i.i.i, label %rb_callable_method_entry_with_refinements.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load i8, ptr %i.p, align 8
  %i.r = and i8 %i.q, 15
  switch i8 %i.r, label %rb_callable_method_entry_with_refinements.exit.thread18 [
    i8 7, label %rb_callable_method_entry_with_refinements.exit.thread
    i8 11, label %rb_callable_method_entry_with_refinements.exit
  ], !prof !219

rb_callable_method_entry_with_refinements.exit:   ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.s = call fastcc ptr @method_entry_resolve_refinement(i64 noundef %.0.i, i64 noundef %2, i32 noundef 1, ptr noundef nonnull %i.d)
  %i.t = load i64, ptr %i.d, align 8, !tbaa !11
  %i.u = call fastcc ptr @prepare_callable_method_entry(i64 noundef %i.t, i64 noundef %2, ptr noundef %i.s, i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %rb_callable_method_entry_with_refinements.exit.thread, label %rb_callable_method_entry_with_refinements.exit.thread18

rb_callable_method_entry_with_refinements.exit.thread18: ; preds = %bb.i, %rb_callable_method_entry_with_refinements.exit
  %.0.i.i.i21 = phi ptr [ %i.u, %rb_callable_method_entry_with_refinements.exit ], [ %i.n, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i64 3190810, ptr %9, align 8, !tbaa !442
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 36, ptr %i.v, align 8, !tbaa !185
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %.0.i.i.i21, ptr %i.w, align 8, !tbaa !187
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr @vm_call_general, ptr %i.x, align 8, !tbaa !234
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 0, ptr %i.y, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i32 %3, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.z = icmp ne i32 %5, 0                        ; 2 uses
  %i.aa = select i1 %i.z, i32 64, i32 0           ; 2 uses
  store i32 %i.aa, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %10 = getelementptr i8, ptr %.0.i.i.i21, i64 16
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = load i8, ptr %11, align 8
  %i.ab = and i8 %12, 15
  %i.ac = icmp eq i8 %i.ab, 0
  %i.ad = icmp sgt i32 %3, 128
  %i.ae = and i1 %i.ad, %i.ac
  br i1 %i.ae, label %bb.j, label %vm_call0_cc.exit, !prof !177

bb.j:                                             ; preds = %rb_callable_method_entry_with_refinements.exit.thread18
  %i.af = call fastcc ptr @vm_argv_ruby_array(ptr noundef %i.c, ptr noundef %4, ptr noundef %i.b, ptr noundef %i.a, i32 noundef %5), !inline_history !462 ; 0 uses
  %.pre23 = load i32, ptr %i.b, align 4, !tbaa !7
  %.pre24 = load i32, ptr %i.a, align 4, !tbaa !7
  br label %vm_call0_cc.exit

vm_call0_cc.exit:                                 ; preds = %rb_callable_method_entry_with_refinements.exit.thread18, %bb.j
  %i.ag = phi i32 [ %.pre24, %bb.j ], [ %3, %rb_callable_method_entry_with_refinements.exit.thread18 ] ; 2 uses
  %i.ah = phi i32 [ %.pre23, %bb.j ], [ %i.aa, %rb_callable_method_entry_with_refinements.exit.thread18 ]
  %.0.i15 = phi ptr [ %i.c, %bb.j ], [ %4, %rb_callable_method_entry_with_refinements.exit.thread18 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 106522, ptr %8, align 8, !tbaa !445
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !238
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %2, ptr %i.aj, align 8, !tbaa !163
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.al = sext i32 %i.ah to i64
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !173
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.an = sext i32 %i.ag to i64
  store i64 %i.an, ptr %i.am, align 8, !tbaa !174
  store ptr %8, ptr %7, align 8, !tbaa !225
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !182
  store ptr %7, ptr %6, align 8, !tbaa !226
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %9, ptr %i.ap, align 8, !tbaa !233
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ar = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !441
  store i64 0, ptr %i.ar, align 8, !tbaa !441
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !228
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %1, ptr %i.at, align 8, !tbaa !229
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.ag, ptr %i.au, align 8, !tbaa !230
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.aw = zext i1 %i.z to i8
  store i8 %i.aw, ptr %i.av, align 4, !tbaa !231
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ax, i8 0, i64 11, i1 false)
  %i.ay = call fastcc i64 @vm_call0_body(ptr noundef %0, ptr noundef %6, ptr noundef %.0.i15), !inline_history !462
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.k

rb_callable_method_entry_with_refinements.exit.thread: ; preds = %bb.h, %rb_class_of.exit, %bb.i, %rb_callable_method_entry_with_refinements.exit
  %i.az = call fastcc i64 @rb_funcallv_scope(i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef 1), !inline_history !286
  br label %bb.k

bb.k:                                             ; preds = %rb_callable_method_entry_with_refinements.exit.thread, %vm_call0_cc.exit
  %.0 = phi i64 [ %i.ay, %vm_call0_cc.exit ], [ %i.az, %rb_callable_method_entry_with_refinements.exit.thread ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_call_kw(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 4 uses
  %7 = alloca %struct.rb_calling_info, align 8    ; 10 uses
  %8 = alloca %struct.rb_call_data, align 8       ; 5 uses
  %9 = alloca %struct.rb_callinfo, align 8        ; 8 uses
  %10 = alloca %struct.rb_callcache, align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i64 3190810, ptr %10, align 8, !tbaa !442
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 36, ptr %i.d, align 8, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %5, ptr %i.e, align 8, !tbaa !187
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @vm_call_general, ptr %i.f, align 8, !tbaa !234
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 0, ptr %i.g, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %3, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.h = icmp ne i32 %6, 0                        ; 2 uses
  %i.i = select i1 %i.h, i32 64, i32 0            ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.j = getelementptr i8, ptr %5, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 15
  %i.n = icmp eq i8 %i.m, 0
  %i.o = icmp sgt i32 %3, 128
  %i.p = and i1 %i.o, %i.n
  br i1 %i.p, label %bb.b, label %vm_call0_cc.exit, !prof !177

bb.b:                                             ; preds = %bb.a
  %i.q = call fastcc ptr @vm_argv_ruby_array(ptr noundef %i.c, ptr noundef %4, ptr noundef %i.b, ptr noundef %i.a, i32 noundef %6), !inline_history !462 ; 0 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !7
  %.pre6 = load i32, ptr %i.a, align 4, !tbaa !7
  br label %vm_call0_cc.exit

vm_call0_cc.exit:                                 ; preds = %bb.a, %bb.b
  %i.r = phi i32 [ %.pre6, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.s = phi i32 [ %.pre, %bb.b ], [ %i.i, %bb.a ]
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %4, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 106522, ptr %9, align 8, !tbaa !445
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !238
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %2, ptr %i.u, align 8, !tbaa !163
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.w = sext i32 %i.s to i64
  store i64 %i.w, ptr %i.v, align 8, !tbaa !173
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.y = sext i32 %i.r to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !174
  store ptr %9, ptr %8, align 8, !tbaa !225
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !182
  store ptr %8, ptr %7, align 8, !tbaa !226
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %10, ptr %i.aa, align 8, !tbaa !233
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ac = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !441
  store i64 0, ptr %i.ac, align 8, !tbaa !441
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !228
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %1, ptr %i.ae, align 8, !tbaa !229
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %i.r, ptr %i.af, align 8, !tbaa !230
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.ah = zext i1 %i.h to i8
  store i8 %i.ah, ptr %i.ag, align 4, !tbaa !231
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ai, i8 0, i64 11, i1 false)
  %i.aj = call fastcc i64 @vm_call0_body(ptr noundef %0, ptr noundef %7, ptr noundef %.0.i), !inline_history !462
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  ret i64 %i.aj
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_call_super_kw(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  store volatile ptr %i.e, ptr %i.c, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.c, align 8, !tbaa !28 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !15 ; 7 uses
  %.val.i.i.i = load i64, ptr %.val.i.i, align 8, !tbaa !11 ; 2 uses
  %i.i = and i64 %.val.i.i.i, 2147418113          ; 2 uses
  switch i64 %i.i, label %bb.b [
    i64 1145307137, label %pass_passed_block_handler.exit
    i64 858980353, label %pass_passed_block_handler.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = and i64 %.val.i.i.i, 2
  %.not5.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not5.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %VM_CF_LEP.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %.val.i.i, %bb.b ]
  %i.k = getelementptr i8, ptr %.06.i.i.i.i.i, i64 -8
  %.0.val3.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !11
  %i.l = and i64 %.0.val3.i.i.i.i.i, -4
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %.0.val.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !11 ; 2 uses
  %i.n = and i64 %.0.val.i.i.i.i.i, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %VM_CF_LEP.exit.loopexit.i.i.i, !llvm.loop !13

VM_CF_LEP.exit.loopexit.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i = and i64 %.0.val.i.i.i.i.i, 2147418113
  br label %VM_CF_LEP.exit.i.i.i

end_hunk_0
begin_hunk_1_@rb_check_funcall_with_hook_kw:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 8
  br label %rb_class_of.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.c
  %i.h = trunc i64 %0 to i1
  br i1 %i.h, label %rb_class_of.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = and i64 %0, 254
  %i.j = icmp eq i64 %i.i, 12
  %spec.select.i = select i1 %i.j, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.g, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i, %bb.g ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28
  store volatile ptr %i.l, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = tail call fastcc range(i32 -1, 2) i32 @vm_respond_to(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %.0.i, i64 noundef %0, i64 noundef %1, i32 noundef 1), !inline_history !463 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_class_of.exit
  tail call void %4(i32 noundef 0, i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %5) #23
  br label %bb.y

bb.i:                                             ; preds = %rb_class_of.exit
  br i1 %i.e, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = inttoptr i64 %0 to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 8
  br label %rb_class_of.exit.i

bb.k:                                             ; preds = %bb.i
  switch i64 %0, label %bb.n [
    i64 0, label %rb_class_of.exit.i
    i64 4, label %bb.l
    i64 20, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  br label %rb_class_of.exit.i

bb.m:                                             ; preds = %bb.k
  br label %rb_class_of.exit.i

bb.n:                                             ; preds = %bb.k
  %i.p = trunc i64 %0 to i1
  br i1 %i.p, label %rb_class_of.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = and i64 %0, 254
  %i.r = icmp eq i64 %i.q, 12
  %spec.select.i.i = select i1 %i.r, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i

rb_class_of.exit.i:                               ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.0.in.i.i = phi ptr [ %i.o, %bb.j ], [ @rb_cNilClass, %bb.l ], [ @rb_cTrueClass, %bb.m ], [ @rb_cFalseClass, %bb.k ], [ @rb_cInteger, %bb.n ], [ %spec.select.i.i, %bb.o ]
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %rb_class_of.exit.i
  tail call fastcc void @uncallable_object(i64 noundef %0, i64 noundef %1) #58
  unreachable

bb.q:                                             ; preds = %rb_class_of.exit.i
  %i.s = tail call fastcc ptr @callable_method_entry_or_negative(i64 noundef %.0.i.i, i64 noundef %1, ptr noundef null) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %rb_search_method_entry.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !83   ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not7.i.i.i, label %rb_search_method_entry.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.v = load i8, ptr %i.u, align 8
  %i.w = and i8 %i.v, 15
  switch i8 %i.w, label %check_funcall_callable.exit [
    i8 7, label %rb_search_method_entry.exit.thread
    i8 11, label %bb.t
  ], !prof !464

bb.t:                                             ; preds = %bb.s
  %i.x = tail call ptr @rb_resolve_refined_method_callable(i64 noundef 4, ptr noundef nonnull readonly %i.s) ; 2 uses
  %.not35.i.i = icmp eq ptr %i.x, null
  br i1 %.not35.i.i, label %rb_search_method_entry.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83   ; 2 uses
  %.not36.i.i = icmp eq ptr %i.z, null
  br i1 %.not36.i.i, label %rb_search_method_entry.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = and i8 %i.aa, 15
  %i.ac = icmp eq i8 %i.ab, 7
  br i1 %i.ac, label %rb_search_method_entry.exit.thread, label %check_funcall_callable.exit

rb_search_method_entry.exit.thread:               ; preds = %bb.s, %bb.r, %bb.q, %bb.v, %bb.u, %bb.t
  %i.ad = tail call fastcc i64 @check_funcall_missing(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %.0.i, i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.m, i64 noundef 36, i32 noundef %6) ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 36
  %i.af = zext i1 %i.ae to i32
  tail call void %4(i32 noundef %i.af, i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %5) #23
  br label %bb.y

check_funcall_callable.exit:                      ; preds = %bb.s, %bb.v
  %i.ag = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 144 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !63
  %i.ai = and i8 %i.ah, 2
  %.not.i48 = icmp eq i8 %i.ai, 0
  br i1 %.not.i48, label %bb.w, label %stack_check.exit

bb.w:                                             ; preds = %check_funcall_callable.exit
  %i.aj = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %.0..0..0..0..0..0..i) #23
  %.not4.i = icmp eq i32 %i.aj, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = load i8, ptr %i.ag, align 8, !tbaa !63
  %i.al = or i8 %i.ak, 2
  store i8 %i.al, ptr %i.ag, align 8, !tbaa !63
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %.0..0..0..0..0..0..i, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %check_funcall_callable.exit, %bb.w
  tail call void %4(i32 noundef 1, i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %5) #23
  %i.am = tail call i64 @rb_vm_call_kw(ptr noundef nonnull %.0..0..0..0..0..0..i, i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %i.s, i32 noundef %6)
  br label %bb.y

bb.y:                                             ; preds = %stack_check.exit, %rb_search_method_entry.exit.thread, %bb.h
  %.0 = phi i64 [ %i.am, %stack_check.exit ], [ %i.ad, %rb_search_method_entry.exit.thread ], [ 36, %bb.h ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @check_funcall_missing(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6, i64 noundef %7, i32 noundef %8) unnamed_addr #2 {
bb.a:
  %9 = alloca %struct.rb_calling_info, align 8    ; 9 uses
  %10 = alloca %struct.rb_call_data, align 8      ; 5 uses
  %11 = alloca %struct.rb_callinfo, align 8       ; 8 uses
  %12 = alloca %struct.rb_callcache, align 8      ; 8 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [2 x i64], align 16               ; 6 uses
  %13 = alloca %struct.rescue_funcall_args, align 8 ; 13 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.d = tail call i64 @rb_id2sym(i64 noundef %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.e = call fastcc ptr @callable_method_entry_or_negative(i64 noundef %1, i64 noundef 158, ptr noundef nonnull %i.a) ; 4 uses
  %.not.i51 = icmp eq ptr %i.e, null
  br i1 %.not.i51, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83   ; 2 uses
  %.not7.i52 = icmp eq ptr %i.g, null
  br i1 %.not7.i52, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 15
  %i.j = icmp eq i8 %i.i, 7
  br i1 %i.j, label %.thread, label %callable_method_entry.exit54

callable_method_entry.exit54:                     ; preds = %bb.c
  %i.k = load i64, ptr %i.e, align 8, !tbaa !170
  %i.l = and i64 %i.k, 262144
  %.not9.i = icmp eq i64 %i.l, 0
  br i1 %.not9.i, label %basic_obj_respond_to_missing.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a, %callable_method_entry.exit54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.m = icmp sgt i32 %6, 0
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.o = zext i1 %i.m to i8
  %14 = load i8, ptr %i.n, align 8
  %15 = and i8 %14, -4
  %16 = or disjoint i8 %15, %i.o
  br label %bb.e

basic_obj_respond_to_missing.exit:                ; preds = %callable_method_entry.exit54
  store i64 %i.d, ptr %i.b, align 16, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 20, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store i64 3190810, ptr %12, align 8, !tbaa !442
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 36, ptr %i.s, align 8, !tbaa !185
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.e, ptr %i.t, align 8, !tbaa !187
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr @vm_call_general, ptr %i.u, align 8, !tbaa !234
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 0, ptr %i.v, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i64 106522, ptr %11, align 8, !tbaa !445
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !238
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 158, ptr %i.x, align 8, !tbaa !163
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 0, ptr %i.y, align 8, !tbaa !173
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 2, ptr %i.z, align 8, !tbaa !174
  store ptr %11, ptr %10, align 8, !tbaa !225
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !182
  store ptr %10, ptr %9, align 8, !tbaa !226
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %12, ptr %i.ab, align 8, !tbaa !233
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.q, align 8, !tbaa !441
  store i64 0, ptr %i.ac, align 8, !tbaa !228
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %2, ptr %i.ad, align 8, !tbaa !229
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 2, ptr %i.ae, align 8, !tbaa !230
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.af, i8 0, i64 12, i1 false)
  %i.ag = call fastcc i64 @vm_call0_body(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %i.b), !inline_history !447
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.fr = freeze i64 %i.ag                         ; 2 uses
  store i64 %i.r, ptr %i.q, align 8, !tbaa !441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ah = and i64 %.fr, -5
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %callable_method_entry.exit.thread, label %bb.d

bb.d:                                             ; preds = %basic_obj_respond_to_missing.exit
  %i.ai = icmp sgt i32 %6, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.ak = zext i1 %i.ai to i8
  %17 = load i8, ptr %i.aj, align 8
  %18 = and i8 %17, -4
  %i.al = icmp eq i64 %.fr, 36
  %spec.select = select i1 %i.al, i8 0, i8 2
  %19 = or disjoint i8 %spec.select, %i.ak
  %i.am = or disjoint i8 %19, %18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.an = phi i8 [ %i.am, %bb.d ], [ %16, %.thread ]
  %i.ao = phi ptr [ %i.aj, %bb.d ], [ %i.n, %.thread ]
  store i8 %i.an, ptr %i.ao, align 8
  %i.ap = call fastcc ptr @callable_method_entry_or_negative(i64 noundef %1, i64 noundef 2913, ptr noundef nonnull %13) ; 4 uses
  %.not.i48 = icmp eq ptr %i.ap, null
  br i1 %.not.i48, label %callable_method_entry.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83 ; 2 uses
  %.not7.i = icmp eq ptr %i.ar, null
  br i1 %.not7.i, label %callable_method_entry.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = and i8 %i.as, 15
  %i.au = icmp eq i8 %i.at, 7
  br i1 %i.au, label %callable_method_entry.exit.thread, label %callable_method_entry.exit

callable_method_entry.exit:                       ; preds = %bb.g
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !170
  %i.aw = and i64 %i.av, 262144
  %.not46 = icmp eq i64 %i.aw, 0
  br i1 %.not46, label %bb.h, label %callable_method_entry.exit.thread

bb.h:                                             ; preds = %callable_method_entry.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.ax = add i32 %4, 1                           ; 4 uses
  %i.ay = sext i32 %i.ax to i64                   ; 4 uses
  %i.az = icmp ult i32 %i.ax, 128
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.c, align 8, !tbaa !11
  %i.ba = shl nuw nsw i64 %i.ay, 3
  %i.bb = alloca i8, i64 %i.ba, align 16
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bc = icmp slt i32 %i.ax, 0
  br i1 %i.bc, label %bb.k, label %rb_alloc_tmp_buffer2.exit, !prof !177

bb.k:                                             ; preds = %bb.j
  call void @ruby_malloc_size_overflow(i64 noundef range(i64 -2147483648, 2147483648) %i.ay, i64 noundef 8) #42
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.j
  %i.bd = shl nuw nsw i64 %i.ay, 3
  %i.be = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.c, i64 noundef %i.bd, i64 noundef range(i64 -2147483648, 2147483648) %i.ay) #67
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %rb_alloc_tmp_buffer2.exit
  %i.bf = phi ptr [ %i.bb, %bb.i ], [ %i.be, %rb_alloc_tmp_buffer2.exit ] ; 3 uses
  %i.bg = call i64 @rb_id2sym(i64 noundef %3) #23
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !11
  %.not47 = icmp eq ptr %5, null
  %spec.store.select = select i1 %.not47, ptr @check_funcall_missing.buf, ptr %5
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  %i.bi = sext i32 %4 to i64                      ; 2 uses
  %i.bj = icmp slt i32 %4, 0
  br i1 %i.bj, label %bb.m, label %rbimpl_size_mul_or_raise.exit, !prof !177

bb.m:                                             ; preds = %bb.l
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.bi) #42
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.l
  %.not.i49 = icmp eq i32 %4, 0
  br i1 %.not.i49, label %ruby_nonempty_memcpy.exit, label %bb.n

bb.n:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.bk = shl nuw nsw i64 %i.bi, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bh, ptr noundef nonnull readonly align 1 %spec.store.select, i64 noundef %i.bk, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.n
  %i.bl = getelementptr i8, ptr %0, i64 145
  store i8 0, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %0, ptr %i.bm, align 8, !tbaa !466
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %2, ptr %i.bn, align 8, !tbaa !468
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.ap, ptr %i.bo, align 8, !tbaa !469
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %3, ptr %i.bp, align 8, !tbaa !470
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 44
  store i32 %i.ax, ptr %i.bq, align 4, !tbaa !471
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr %i.bf, ptr %i.br, align 8, !tbaa !472
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 56
  store i32 %8, ptr %i.bs, align 8, !tbaa !473
  %i.bt = ptrtoint ptr %13 to i64                 ; 2 uses
  %i.bu = load i64, ptr @rb_eNoMethodError, align 8, !tbaa !11
  %i.bv = call i64 (ptr, i64, ptr, i64, ...) @rb_rescue2(ptr noundef nonnull @check_funcall_exec, i64 noundef %i.bt, ptr noundef nonnull @check_funcall_failed, i64 noundef %i.bt, i64 noundef %i.bu, i64 noundef 0) #23
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %callable_method_entry.exit.thread

callable_method_entry.exit.thread:                ; preds = %bb.g, %bb.f, %bb.e, %callable_method_entry.exit, %ruby_nonempty_memcpy.exit, %basic_obj_respond_to_missing.exit
  %.0 = phi i64 [ %7, %basic_obj_respond_to_missing.exit ], [ %7, %callable_method_entry.exit ], [ %i.bv, %ruby_nonempty_memcpy.exit ], [ %7, %bb.e ], [ %7, %bb.f ], [ %7, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden noundef ptr @rb_type_str(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i32 %0, 31
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.rb_type_str, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_make_no_method_exception(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.57, i64 noundef 36) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.013 = phi i64 [ %1, %bb.a ], [ %i.b, %bb.b ]  ; 2 uses
  %i.c = load i64, ptr @rb_eNoMethodError, align 8, !tbaa !11
  %i.d = icmp eq i64 %0, %i.c
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add i32 %3, -1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr i8, ptr %4, i64 8
  %i.h = tail call i64 @rb_ary_new_from_values(i64 noundef %i.f, ptr noundef %i.g) #23
  %i.i = tail call i64 @rb_nomethod_err_new(i64 noundef %.013, i64 noundef %2, i64 noundef %i.a, i64 noundef %i.h, i32 noundef %5) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i64 @rb_name_err_new(i64 noundef %.013, i64 noundef %2, i64 noundef %i.a) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  ret i64 %.0
}

declare i64 @rb_fstring_new(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_new_from_values(i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_nomethod_err_new(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @rb_name_err_new(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @rb_funcallv_scope(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #11 {
scope_to_ci.exit:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 4 uses
  %5 = alloca %struct.rb_calling_info, align 8    ; 9 uses
  %6 = alloca %struct.rb_call_data, align 8       ; 5 uses
  %7 = alloca %struct.rb_callinfo, align 8        ; 8 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %struct.rb_callinfo, align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  store volatile ptr %i.f, ptr %i.d, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.d, align 8, !tbaa !28 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %cond.not = icmp eq i32 %4, 0                   ; 3 uses
  %spec.select = select i1 %cond.not, i64 0, i64 4
  %i.g = sext i32 %2 to i64                       ; 2 uses
  store i64 106522, ptr %8, align 8, !tbaa !11
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !282
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %1, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %spec.select, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !11
  %i.h = tail call ptr @rb_current_box() #23, !inline_history !474 ; 3 uses
  %i.i = icmp eq i64 %0, 0
  %i.j = and i64 %0, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.a

end_hunk_1
begin_hunk_2_@vm_ci_new_runtime_:bb.a
  %i.y = zext i32 %2 to i64
  %i.z = getelementptr i8, ptr %i.u, i64 32
  store i64 %i.y, ptr %i.z, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.aa = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %bb.g, label %rb_vm_lock_enter.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #23
  br label %rb_vm_lock_enter.exit.i.i

rb_vm_lock_enter.exit.i.i:                        ; preds = %bb.g, %bb.f
  %i.ab = getelementptr i8, ptr %i.o, i64 1280
  %i.ac = ptrtoint ptr %i.a to i64
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !241
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %rb_vm_lock_enter.exit.i.i
  %i.ae = call i32 @rb_st_update(ptr noundef %i.ad, i64 noundef %i.t, ptr noundef nonnull @ci_lookup_i, i64 noundef %i.ac) #23 ; 0 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !240 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %bb.i, !llvm.loop !258

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i14.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i14.i.i, label %bb.j, label %rb_vm_ci_lookup.exit.i

bb.j:                                             ; preds = %bb.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #23
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !240
  br label %rb_vm_ci_lookup.exit.i

rb_vm_ci_lookup.exit.i:                           ; preds = %bb.j, %bb.i
  %i.ai = phi ptr [ %i.af, %bb.i ], [ %.pre.i.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %vm_ci_new_.exit

vm_ci_new_.exit:                                  ; preds = %bb.c, %rb_vm_ci_lookup.exit.i
  %.0.i = phi ptr [ %i.ai, %rb_vm_ci_lookup.exit.i ], [ %i.n, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_forwardable(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val15 = load ptr, ptr %i.c, align 8, !tbaa !187 ; 2 uses
  %i.d = getelementptr i8, ptr %.val15, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  %.val17 = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr i8, ptr %.val17, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !191  ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 240
  %i.l = load i32, ptr %i.k, align 8, !tbaa !190
  %i.m = load ptr, ptr %2, align 8, !tbaa !226
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !225  ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 3 uses
  %.not.i.i = trunc i64 %i.o to i1
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 1
  %i.r = and i32 %i.q, 32767
  br label %vm_ci_argc.exit20

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr i8, ptr %i.n, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !174
  %i.u = trunc i64 %i.t to i32
  br label %vm_ci_argc.exit20

vm_ci_argc.exit20:                                ; preds = %bb.b, %bb.c
  %.pn = phi i32 [ %i.r, %bb.b ], [ %i.u, %bb.c ]
  %i.v = add i32 %.pn, %i.j
  %i.w = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !73   ; 2 uses
  store i64 %i.o, ptr %i.x, align 8, !tbaa !11
  %.val16 = load ptr, ptr %i.f, align 8, !tbaa !27 ; 2 uses
  %i.y = getelementptr i8, ptr %2, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !230
  %i.aa = sext i32 %i.z to i64
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr [8 x i8], ptr %i.x, i64 %i.ab ; 2 uses
  %i.ad = sext i32 %i.v to i64
  %i.ae = getelementptr [8 x i8], ptr %i.ac, i64 %i.ad ; 5 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 -8
  store ptr %i.af, ptr %i.w, align 8, !tbaa !73
  %i.ag = getelementptr i8, ptr %2, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !229
  %i.ai = getelementptr i8, ptr %2, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !228
  %i.ak = getelementptr i8, ptr %.val16, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !124 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !147
  %i.ao = sub i32 %i.l, %i.j                      ; 5 uses
  %i.ap = getelementptr i8, ptr %i.al, i64 264
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !355
  %i.ar = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !70 ; 6 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -56    ; 3 uses
  %i.au = add i32 %i.aq, %i.ao
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr [8 x i8], ptr %i.ae, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 56
  %.not.i = icmp ugt ptr %i.at, %i.ax
  br i1 %.not.i, label %.preheader.i, label %bb.d, !prof !72

.preheader.i:                                     ; preds = %vm_ci_argc.exit20
  %i.ay = icmp sgt i32 %i.ao, 0
  br i1 %i.ay, label %.lr.ph.i.preheader, label %vm_push_frame.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.az = zext nneg i32 %i.ao to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ao, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.az, 2147483644              ; 4 uses
  %i.ba = shl nuw nsw i64 %n.vec, 3
  %i.bb = getelementptr i8, ptr %i.ae, i64 %i.ba  ; 2 uses
  %i.bc = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.be, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !744

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.az
  br i1 %cmp.n, label %vm_push_frame.exit, label %.lr.ph.i.preheader24

.lr.ph.i.preheader24:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.026.i.ph = phi ptr [ %i.ae, %.lr.ph.i.preheader ], [ %i.bb, %middle.block ]
  %.02325.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i

bb.d:                                             ; preds = %vm_ci_argc.exit20
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader24, %.lr.ph.i
  %.026.i = phi ptr [ %i.bg, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader24 ] ; 2 uses
  %.02325.i = phi i32 [ %i.bh, %.lr.ph.i ], [ %.02325.i.ph, %.lr.ph.i.preheader24 ]
  %i.bg = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  store i64 4, ptr %.026.i, align 8, !tbaa !11
  %i.bh = add nuw nsw i32 %.02325.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bh, %i.ao
  br i1 %exitcond.not.i, label %vm_push_frame.exit, label %.lr.ph.i, !llvm.loop !745

vm_push_frame.exit:                               ; preds = %.lr.ph.i, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %i.ae, %.preheader.i ], [ %i.bb, %middle.block ], [ %i.bg, %.lr.ph.i ] ; 4 uses
  %i.bi = ptrtoint ptr %.val15 to i64
  %i.bj = getelementptr i8, ptr %.0.lcssa.i, i64 8
  store i64 %i.bi, ptr %.0.lcssa.i, align 8, !tbaa !11
  %i.bk = getelementptr i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  store i64 %i.aj, ptr %i.bj, align 8, !tbaa !11
  %i.bl = getelementptr i8, ptr %.0.lcssa.i, i64 24
  store i64 286326787, ptr %i.bk, align 8, !tbaa !11
  store ptr %i.an, ptr %i.at, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.as, i64 -48
  store ptr %i.bl, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.as, i64 -40
  store ptr %.val16, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.as, i64 -32
  store i64 %i.ah, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.as, i64 -24
  store ptr %i.bk, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.as, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !70
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @setup_parameters_complex(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 3 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %6 = alloca %struct.args_info, align 8          ; 44 uses
  %i.c = getelementptr i8, ptr %1, i64 16         ; 22 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124  ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16       ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !175  ; 2 uses
  %i.h = getelementptr i8, ptr %i.d, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !746  ; 2 uses
  %i.j = add i32 %i.i, %i.g                       ; 16 uses
  %i.k = load i16, ptr %i.e, align 8
  %i.l = and i16 %i.k, 4
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.d, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !714
  %i.p = add i32 %i.o, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi i32 [ %i.p, %bb.b ], [ -1, %bb.a ]   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.r = ptrtoint ptr %3 to i64                   ; 2 uses
  %.not.i.i = trunc i64 %i.r to i1                ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = trunc i64 %i.r to i32
  %i.t = lshr i32 %i.s, 16
  br label %vm_ci_flag.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %3, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !173
  %i.w = trunc i64 %i.v to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i468 = phi i32 [ %i.t, %bb.d ], [ %i.w, %bb.e ] ; 9 uses
  store i32 %.0.i468, ptr %i.b, align 4, !tbaa !7
  %i.x = and i32 %.0.i468, 2144                   ; 5 uses
  %.not = icmp ne i32 %i.x, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.y = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.aa = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.ac = getelementptr i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !233 ; 2 uses
  %.not372 = icmp eq ptr %i.ad, null
  br i1 %.not372, label %bb.g, label %bb.f

bb.f:                                             ; preds = %vm_ci_flag.exit
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %.val = load ptr, ptr %i.ae, align 8, !tbaa !187
  br label %bb.g

bb.g:                                             ; preds = %vm_ci_flag.exit, %bb.f
  %i.af = phi ptr [ %.val, %bb.f ], [ null, %vm_ci_flag.exit ] ; 6 uses
  %i.ag = getelementptr i8, ptr %2, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !230 ; 8 uses
  %i.ai = getelementptr i8, ptr %i.d, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !191 ; 2 uses
  %i.ak = icmp ult i32 %i.ah, %i.aj
  %i.al = zext i32 %i.ah to i64                   ; 5 uses
  br i1 %i.ak, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %wide.trip.count = zext i32 %i.aj to i64        ; 4 uses
  %i.am = sub nsw i64 %wide.trip.count, %i.al     ; 3 uses
  %min.iters.check = icmp ult i64 %i.am, 4
  br i1 %min.iters.check, label %.lr.ph.preheader943, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.am, -4                      ; 3 uses
  %i.an = add nsw i64 %n.vec, %i.al
  %invariant.gep = getelementptr [8 x i8], ptr %4, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ao = getelementptr i8, ptr %gep, i64 16
  store <2 x i64> splat (i64 4), ptr %gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.ao, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !747

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader943

.lr.ph.preheader943:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.al, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader943, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader943 ] ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  store i64 4, ptr %i.aq, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !748

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.g
  %.pre-phi = phi i64 [ %i.al, %bb.g ], [ %wide.trip.count, %middle.block ], [ %wide.trip.count, %.lr.ph ]
  %i.ar = getelementptr [8 x i8], ptr %4, i64 %.pre-phi
  store ptr %i.ar, ptr %i.aa, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 32 uses
  store i32 %i.ah, ptr %i.as, align 8, !tbaa !749
  store ptr %4, ptr %6, align 8, !tbaa !751
  %i.at = and i32 %.0.i468, 4096
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 21 uses
  store i32 %i.at, ptr %i.au, align 8, !tbaa !752
  %i.av = load i16, ptr %i.e, align 8             ; 4 uses
  %i.aw = and i16 %i.av, 1024
  %.not373 = icmp eq i16 %i.aw, 0
  br i1 %.not373, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread, label %bb.h, !prof !72

bb.h:                                             ; preds = %._crit_edge
  %i.ax = and i32 %.0.i468, 1
  %.not374 = icmp eq i32 %i.ax, 0
  br i1 %.not374, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %7 = load i32, ptr %i.f, align 8, !tbaa !175
  %.not375 = icmp eq i32 %i.x, 0                  ; 2 uses
  %i.ay = select i1 %.not375, i32 1, i32 2
  %i.az = add i32 %7, %i.ay
  %i.ba = icmp eq i32 %i.ah, %i.az
  %i.bb = and i16 %i.av, 522
  %i.bc = icmp eq i16 %i.bb, 0
  %or.cond447 = and i1 %i.bc, %i.ba
  br i1 %or.cond447, label %bb.j, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread

bb.j:                                             ; preds = %bb.i
  br i1 %.not375, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = and i16 %i.av, 48
  %or.cond448 = icmp eq i16 %i.bd, 0
  br i1 %or.cond448, label %bb.l, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread.sink.split

bb.l:                                             ; preds = %bb.k
  %i.be = and i32 %.0.i468, 64
  %.not384 = icmp eq i32 %i.be, 0
  br i1 %.not384, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = add i32 %i.ah, -1
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [8 x i8], ptr %4, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !11 ; 5 uses
  %i.bj = icmp eq i64 %i.bi, 4
  br i1 %i.bj, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = icmp eq i64 %i.bi, 0
  %i.bl = and i64 %i.bi, 7
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = or i1 %i.bk, %i.bm
  br i1 %i.bn, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread, label %rbimpl_RB_TYPE_P_fastpath.exit466

rbimpl_RB_TYPE_P_fastpath.exit466:                ; preds = %bb.n
  %i.bo = inttoptr i64 %i.bi to ptr
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !77 ; 3 uses
  %i.bq = and i64 %i.bp, 31
  %i.br = icmp eq i64 %i.bq, 8
  br i1 %i.br, label %bb.o, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit466
  %i.bs = and i64 %i.bp, 32768
  %.not.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = lshr i64 %i.bp, 16
  %i.bu = and i64 %i.bt, 15
  br label %RHASH_EMPTY_P.exit

bb.q:                                             ; preds = %bb.o
  %i.bv = add i64 %i.bi, 24
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.p, %bb.q
  %.0.i.i = phi i64 [ %i.bu, %bb.p ], [ %i.by, %bb.q ]
  %i.bz = icmp eq i64 %.0.i.i, 0
  br i1 %i.bz, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread.sink.split, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread

bb.r:                                             ; preds = %bb.j
  %i.ca = and i16 %i.av, 304
  %or.cond450 = icmp eq i16 %i.ca, 0
  br i1 %or.cond450, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %i.au, align 8, !tbaa !752
  br label %.thread

rbimpl_RB_TYPE_P_fastpath.exit466.thread.sink.split: ; preds = %bb.m, %RHASH_EMPTY_P.exit, %bb.k
  store i32 1, ptr %i.au, align 8, !tbaa !752
  br label %rbimpl_RB_TYPE_P_fastpath.exit466.thread

rbimpl_RB_TYPE_P_fastpath.exit466.thread:         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit466.thread.sink.split, %bb.n, %rbimpl_RB_TYPE_P_fastpath.exit466, %RHASH_EMPTY_P.exit, %bb.h, %bb.i, %bb.l, %._crit_edge
  %i.cb = and i32 %.0.i468, 32
  %.not385 = icmp eq i32 %i.cb, 0
  br i1 %.not385, label %.thread, label %bb.t

bb.t:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit466.thread
  br i1 %.not.i.i, label %vm_ci_kwarg.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = getelementptr i8, ptr %3, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !238
  br label %vm_ci_kwarg.exit

vm_ci_kwarg.exit:                                 ; preds = %bb.t, %bb.u
  %.0.i470 = phi ptr [ %i.cd, %bb.u ], [ null, %bb.t ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %.0.i470, ptr %i.ce, align 8, !tbaa !753
  %i.cf = load i16, ptr %i.e, align 8
  %i.cg = and i16 %i.cf, 16
  %.not386 = icmp eq i16 %i.cg, 0
  br i1 %.not386, label %bb.y, label %bb.v

bb.v:                                             ; preds = %vm_ci_kwarg.exit
  %i.ch = load i32, ptr %.0.i470, align 8, !tbaa !7 ; 4 uses
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = icmp slt i32 %i.ch, 0
  br i1 %i.cj, label %bb.w, label %rbimpl_size_mul_or_raise.exit471, !prof !177

bb.w:                                             ; preds = %bb.v
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.ci) #42
  unreachable

rbimpl_size_mul_or_raise.exit471:                 ; preds = %bb.v
  %i.ck = shl nuw nsw i64 %i.ci, 3                ; 2 uses
  %i.cl = alloca i8, i64 %i.ck, align 16          ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !754
  %i.cn = sub i32 %i.ah, %i.ch                    ; 4 uses
  store i32 %i.cn, ptr %i.as, align 8, !tbaa !749
  %.not.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.x

bb.x:                                             ; preds = %rbimpl_size_mul_or_raise.exit471
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [8 x i8], ptr %4, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 %i.cl, ptr noundef nonnull readonly align 1 %i.cp, i64 noundef %i.ck, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

bb.y:                                             ; preds = %vm_ci_kwarg.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr null, ptr %i.cq, align 8, !tbaa !754
  %i.cr = getelementptr i8, ptr %.0.i470, i64 8
  %i.cs = load i32, ptr %.0.i470, align 8, !tbaa !7 ; 4 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = tail call i64 @rb_hash_new_with_size(i64 noundef %i.ct) #23 ; 2 uses
  %i.cv = sub i32 %i.ah, %i.cs                    ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr %4, i64 %i.cw ; 2 uses
  %i.cy = add i32 %i.cv, 1                        ; 2 uses
  store i32 %i.cy, ptr %i.as, align 8, !tbaa !749
  %i.cz = icmp sgt i32 %i.cs, 0
  br i1 %i.cz, label %.lr.ph.preheader.i, label %args_kw_argv_to_hash.exit

.lr.ph.preheader.i:                               ; preds = %bb.y
  %wide.trip.count.i = zext nneg i32 %i.cs to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.da = getelementptr [8 x i8], ptr %i.cr, i64 %indvars.iv.i
  %i.db = load i64, ptr %i.da, align 8, !tbaa !11
  %i.dc = getelementptr [8 x i8], ptr %i.cx, i64 %indvars.iv.i
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !11
  %i.de = tail call i64 @rb_hash_aset(i64 noundef %i.cu, i64 noundef %i.db, i64 noundef %i.dd) #23 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %args_kw_argv_to_hash.exit, label %.lr.ph.i, !llvm.loop !755

args_kw_argv_to_hash.exit:                        ; preds = %.lr.ph.i, %bb.y
  store i64 %i.cu, ptr %i.cx, align 8, !tbaa !11
  br label %ruby_nonempty_memcpy.exit

.thread:                                          ; preds = %bb.s, %bb.r, %rbimpl_RB_TYPE_P_fastpath.exit466.thread
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.x, %rbimpl_size_mul_or_raise.exit471, %args_kw_argv_to_hash.exit, %.thread
  %.0653 = phi i32 [ %i.x, %.thread ], [ 2144, %args_kw_argv_to_hash.exit ], [ %i.x, %rbimpl_size_mul_or_raise.exit471 ], [ %i.x, %bb.x ] ; 14 uses
  %i.dg = phi i32 [ %i.ah, %.thread ], [ %i.cy, %args_kw_argv_to_hash.exit ], [ %i.cn, %rbimpl_size_mul_or_raise.exit471 ], [ %i.cn, %bb.x ] ; 13 uses
  %i.dh = and i32 %.0.i468, 65
  %or.cond451.not = icmp eq i32 %i.dh, 65
  br i1 %or.cond451.not, label %bb.z, label %bb.bg

bb.z:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !756
  %i.dj = add i32 %i.dg, -1
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr [8 x i8], ptr %4, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !11 ; 7 uses
  %i.dn = add i32 %i.dg, -2                       ; 3 uses
  store i32 %i.dn, ptr %i.as, align 8, !tbaa !749
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr [8 x i8], ptr %4, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 8 uses
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !757
  %i.ds = icmp eq i64 %i.dm, 4
  br i1 %i.ds, label %ignore_keyword_hash_p.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = icmp eq i64 %i.dm, 0
  %i.du = and i64 %i.dm, 7
  %i.dv = icmp ne i64 %i.du, 0
  %i.dw = or i1 %i.dt, %i.dv
  br i1 %i.dw, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.aa
  %i.dx = inttoptr i64 %i.dm to ptr
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !77 ; 3 uses
  %i.dz = and i64 %i.dy, 31
  %i.ea = icmp eq i64 %i.dz, 8
  br i1 %i.ea, label %bb.ab, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
end_hunk_2
