Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/vm?download=true
inline.NumInlined: 3276
inline.NumDeleted: 575
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@rb_vm_invokesuperforward:bb.a
  %4 = alloca %struct.rb_forwarding_call_data, align 8 ; 5 uses
  %5 = alloca %struct.rb_callinfo, align 8        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !100
  %i.d = and i8 %i.c, 2
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.b, label %stack_check.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %0) #23
  %.not4.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.b, align 8, !tbaa !100
  %i.g = or i8 %i.f, 2
  store i8 %i.g, ptr %i.b, align 8, !tbaa !100
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %0, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66
  store volatile ptr %i.i, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = call fastcc i64 @vm_caller_setup_fwd_args(ptr noundef %.0..0..0..0..0..0..i, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, ptr noundef %4, ptr noundef %5)
  %i.k = call fastcc i64 @vm_sendish(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, i64 noundef %i.j, i32 noundef 2) ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !207
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !284  ; 3 uses
  %.not = icmp eq ptr %i.m, %i.o
  br i1 %.not, label %rb_obj_write.exit, label %bb.d

bb.d:                                             ; preds = %stack_check.exit
  %i.p = load i64, ptr %i.o, align 8, !tbaa !114
  %i.q = and i64 %i.p, 1048576
  %.not15 = icmp eq i64 %i.q, 0
  br i1 %.not15, label %bb.e, label %rb_obj_write.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !155
  %i.t = ptrtoint ptr %i.o to i64                 ; 2 uses
  store i64 %i.t, ptr %i.l, align 8, !tbaa !50
  %i.u = ptrtoint ptr %i.s to i64
  call void @rb_gc_writebarrier(i64 noundef %i.u, i64 noundef %i.t) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.e, %stack_check.exit, %bb.d
  %i.v = icmp eq i64 %i.k, 36
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_obj_write.exit
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !107
  %i.y = getelementptr i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56   ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !50
  %i.ab = or i64 %i.aa, 32
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !50
  %i.ac = call i64 @rb_vm_exec(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %rb_obj_write.exit
  %.0 = phi i64 [ %i.ac, %bb.f ], [ %i.k, %rb_obj_write.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_invokeblock(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !100
  %i.c = and i8 %i.b, 2
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %stack_check.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %0) #23
  %.not4.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.a, align 8, !tbaa !100
  %i.f = or i8 %i.e, 2
  store i8 %i.f, ptr %i.a, align 8, !tbaa !100
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %0, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %bb.a, %bb.b
  %i.g = tail call fastcc i64 @vm_sendish(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef 0, i32 noundef 1) ; 2 uses
  %i.h = icmp eq i64 %i.g, 36
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stack_check.exit
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !50
  %i.n = or i64 %i.m, 32
  store i64 %i.n, ptr %i.l, align 8, !tbaa !50
  %i.o = tail call i64 @rb_vm_exec(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %stack_check.exit
  %.0 = phi i64 [ %i.o, %bb.d ], [ %i.g, %stack_check.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_objtostring(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @vm_objtostring(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_objtostring(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %rb_type.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %1, 37
  %switch.shifted = lshr i64 68720525329, %1
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.e, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i64 %1 to i1
  br i1 %i.f, label %rb_class_of.exit.i, label %bb.e

rb_type.exit:                                     ; preds = %bb.a
  %i.g = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !114
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 31                         ; 2 uses
  %i.k = icmp eq i32 %i.j, 5
  br i1 %i.k, label %check_method_basic_definition.exit.thread, label %bb.d

bb.d:                                             ; preds = %rb_type.exit
  %i.l = getelementptr i8, ptr %i.g, i64 8
  br label %rb_class_of.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = and i64 %1, 254                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 12
  %spec.select.i = select i1 %i.n, i32 20, i32 4
  %i.o = icmp eq i64 %i.m, 12
  %spec.select = select i1 %i.o, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i

switch.lookup:                                    ; preds = %bb.b
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.vm_exec_core, i64 %1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %switch.gep91 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.vm_objtostring.122, i64 %1
  %switch.load92 = load ptr, ptr %switch.gep91, align 8
  br label %rb_class_of.exit.i

rb_class_of.exit.i:                               ; preds = %switch.lookup, %bb.e, %bb.c, %bb.d
  %.0.i5254 = phi i32 [ %i.j, %bb.d ], [ %switch.ext, %switch.lookup ], [ 21, %bb.c ], [ %spec.select.i, %bb.e ]
  %.0.in.i.i = phi ptr [ %i.l, %bb.d ], [ %switch.load92, %switch.lookup ], [ @rb_cInteger, %bb.c ], [ %spec.select, %bb.e ]
  %i.p = ptrtoint ptr %0 to i64
  %.0.i5.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !50 ; 2 uses
  %i.q = getelementptr i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !207  ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val4.i = load i64, ptr %i.s, align 8, !tbaa !209
  %i.t = icmp eq i64 %.val4.i, %.0.i5.i
  br i1 %i.t, label %bb.f, label %bb.g, !prof !109

bb.f:                                             ; preds = %rb_class_of.exit.i
  %i.u = getelementptr i8, ptr %i.r, i64 16
  %.val.i = load ptr, ptr %i.u, align 8, !tbaa !210 ; 2 uses
  %i.v = load i64, ptr %.val.i, align 8, !tbaa !193
  %i.w = and i64 %i.v, 2097152
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %vm_search_method.exit, label %bb.g, !prof !109

bb.g:                                             ; preds = %bb.f, %rb_class_of.exit.i
  %i.x = tail call fastcc ptr @vm_search_method_slowpath0(i64 noundef %i.p, ptr noundef nonnull %2, i64 noundef %.0.i5.i), !inline_history !5
  %.phi.trans.insert.i = getelementptr i8, ptr %i.x, i64 16
  %.0.i.val.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !210
  br label %vm_search_method.exit

vm_search_method.exit:                            ; preds = %bb.f, %bb.g
  %.0.i.val.i = phi ptr [ %.0.i.val.pre.i, %bb.g ], [ %.val.i, %bb.f ] ; 12 uses
  switch i32 %.0.i5254, label %check_method_basic_definition.exit.thread [
    i32 20, label %bb.h
    i32 3, label %bb.j
    i32 2, label %bb.j
    i32 17, label %bb.n
    i32 18, label %bb.q
    i32 19, label %bb.t
    i32 21, label %bb.w
  ]

bb.h:                                             ; preds = %vm_search_method.exit
  %.not.i = icmp eq ptr %.0.i.val.i, null
  br i1 %.not.i, label %check_method_basic_definition.exit.thread, label %check_method_basic_definition.exit

check_method_basic_definition.exit:               ; preds = %bb.h
  %i.y = load i64, ptr %.0.i.val.i, align 8, !tbaa !193
  %i.z = and i64 %i.y, 262144
  %.not32 = icmp eq i64 %i.z, 0
  br i1 %.not32, label %check_method_basic_definition.exit.thread, label %bb.i

bb.i:                                             ; preds = %check_method_basic_definition.exit
  %i.aa = tail call i64 @rb_sym2str(i64 noundef %1) #23
  br label %check_method_basic_definition.exit.thread

bb.j:                                             ; preds = %vm_search_method.exit, %vm_search_method.exit
  %.not.i33 = icmp eq ptr %.0.i.val.i, null
  br i1 %.not.i33, label %check_method_basic_definition.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %.0.i.val.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !119 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = and i8 %i.ad, 15
  %.not4.i = icmp eq i8 %i.ae, 1
  br i1 %.not4.i, label %check_cfunc.exit, label %check_method_basic_definition.exit.thread

check_cfunc.exit:                                 ; preds = %bb.k
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %.not84 = icmp eq ptr %i.ag, @rb_mod_to_s
  br i1 %.not84, label %bb.l, label %check_method_basic_definition.exit.thread

bb.l:                                             ; preds = %check_cfunc.exit
  %i.ah = tail call i64 @rb_mod_name(i64 noundef %1) #23 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4
  br i1 %i.ai, label %bb.m, label %check_method_basic_definition.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i64 @rb_mod_to_s(i64 noundef %1) #23
  br label %check_method_basic_definition.exit.thread

bb.n:                                             ; preds = %vm_search_method.exit
  %.not.i35 = icmp eq ptr %.0.i.val.i, null
  br i1 %.not.i35, label %check_method_basic_definition.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr i8, ptr %.0.i.val.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !119 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8
  %i.an = and i8 %i.am, 15
  %.not4.i36 = icmp eq i8 %i.an, 1
  br i1 %.not4.i36, label %check_cfunc.exit38, label %check_method_basic_definition.exit.thread

check_cfunc.exit38:                               ; preds = %bb.o
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !64
  %.not83 = icmp eq ptr %i.ap, @rb_nil_to_s
  br i1 %.not83, label %bb.p, label %check_method_basic_definition.exit.thread

bb.p:                                             ; preds = %check_cfunc.exit38
  %i.aq = tail call i64 @rb_nil_to_s(i64 noundef %1) #23
  br label %check_method_basic_definition.exit.thread

bb.q:                                             ; preds = %vm_search_method.exit
  %.not.i39 = icmp eq ptr %.0.i.val.i, null
  br i1 %.not.i39, label %check_method_basic_definition.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr i8, ptr %.0.i.val.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !119 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8
  %i.au = and i8 %i.at, 15
  %.not4.i40 = icmp eq i8 %i.au, 1
  br i1 %.not4.i40, label %check_cfunc.exit42, label %check_method_basic_definition.exit.thread

check_cfunc.exit42:                               ; preds = %bb.r
  %i.av = getelementptr i8, ptr %i.as, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !64
  %.not82 = icmp eq ptr %i.aw, @rb_true_to_s
  br i1 %.not82, label %bb.s, label %check_method_basic_definition.exit.thread

bb.s:                                             ; preds = %check_cfunc.exit42
  %i.ax = tail call i64 @rb_true_to_s(i64 noundef %1) #23
  br label %check_method_basic_definition.exit.thread

bb.t:                                             ; preds = %vm_search_method.exit
  %.not.i43 = icmp eq ptr %.0.i.val.i, null
  br i1 %.not.i43, label %check_method_basic_definition.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr i8, ptr %.0.i.val.i, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !119 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8
  %i.bb = and i8 %i.ba, 15
  %.not4.i44 = icmp eq i8 %i.bb, 1
  br i1 %.not4.i44, label %check_cfunc.exit46, label %check_method_basic_definition.exit.thread

check_cfunc.exit46:                               ; preds = %bb.u
  %i.bc = getelementptr i8, ptr %i.az, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !64
  %.not81 = icmp eq ptr %i.bd, @rb_false_to_s
  br i1 %.not81, label %bb.v, label %check_method_basic_definition.exit.thread

bb.v:                                             ; preds = %check_cfunc.exit46
  %i.be = tail call i64 @rb_false_to_s(i64 noundef %1) #23
  br label %check_method_basic_definition.exit.thread

bb.w:                                             ; preds = %vm_search_method.exit
  %.not.i47 = icmp eq ptr %.0.i.val.i, null
  br i1 %.not.i47, label %check_method_basic_definition.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr i8, ptr %.0.i.val.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !119 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8
  %i.bi = and i8 %i.bh, 15
  %.not4.i48 = icmp eq i8 %i.bi, 1
  br i1 %.not4.i48, label %check_cfunc.exit50, label %check_method_basic_definition.exit.thread

check_cfunc.exit50:                               ; preds = %bb.x
  %i.bj = getelementptr i8, ptr %i.bg, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !64
  %.not = icmp eq ptr %i.bk, @rb_int_to_s
  br i1 %.not, label %bb.y, label %check_method_basic_definition.exit.thread

bb.y:                                             ; preds = %check_cfunc.exit50
  %i.bl = tail call i64 @rb_fix_to_s(i64 noundef %1) #23
  br label %check_method_basic_definition.exit.thread

check_method_basic_definition.exit.thread:        ; preds = %bb.x, %bb.w, %bb.u, %bb.t, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.j, %bb.h, %bb.i, %bb.p, %bb.s, %bb.v, %bb.y, %bb.m, %bb.l, %check_cfunc.exit50, %check_cfunc.exit46, %check_cfunc.exit42, %check_cfunc.exit38, %check_cfunc.exit, %check_method_basic_definition.exit, %vm_search_method.exit, %rb_type.exit
  %.1 = phi i64 [ %1, %rb_type.exit ], [ %i.ah, %bb.l ], [ %i.aa, %bb.i ], [ %i.bl, %bb.y ], [ %i.aq, %bb.p ], [ %i.ax, %bb.s ], [ %i.be, %bb.v ], [ %i.aj, %bb.m ], [ 36, %check_cfunc.exit50 ], [ 36, %check_cfunc.exit46 ], [ 36, %check_cfunc.exit42 ], [ 36, %check_cfunc.exit38 ], [ 36, %check_cfunc.exit ], [ 36, %check_method_basic_definition.exit ], [ 36, %vm_search_method.exit ], [ 36, %bb.u ], [ 36, %bb.h ], [ 36, %bb.k ], [ 36, %bb.o ], [ 36, %bb.r ], [ 36, %bb.j ], [ 36, %bb.n ], [ 36, %bb.q ], [ 36, %bb.t ], [ 36, %bb.w ], [ 36, %bb.x ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_opt_duparray_include_p(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %i.b = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 68), align 4, !tbaa !142
  %i.c = and i16 %i.b, 8
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !109

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_ary_includes(i64 noundef %1, i64 noundef %2) #23, !inline_history !10
  br label %vm_opt_duparray_include_p.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %2, ptr %i.a, align 8, !tbaa !50
  %i.f = tail call i64 @rb_ary_resurrect(i64 noundef %1) #23, !inline_history !10
  %i.g = call i64 @rb_vm_call_with_refinements(ptr noundef %0, i64 noundef %i.f, i64 noundef 152, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 0), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %vm_opt_duparray_include_p.exit

vm_opt_duparray_include_p.exit:                   ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_opt_newarray_max(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @vm_opt_newarray_max(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_opt_newarray_max(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 50), align 2, !tbaa !142
  %i.c = and i16 %i.b, 8
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.p, !prof !109

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.f = load i64, ptr %2, align 8, !tbaa !50     ; 2 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !50
  %.043 = add i64 %1, -1                          ; 2 uses
  %i.g = icmp sgt i64 %.043, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.o
  %.045 = phi i64 [ %.0, %bb.o ], [ %.043, %bb.c ] ; 2 uses
  %.01944 = phi ptr [ %i.h, %bb.o ], [ %2, %bb.c ]
  %i.h = getelementptr i8, ptr %.01944, i64 8     ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !50   ; 11 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.k = load i64, ptr %i.a, align 8, !tbaa !50   ; 2 uses
end_hunk_0
