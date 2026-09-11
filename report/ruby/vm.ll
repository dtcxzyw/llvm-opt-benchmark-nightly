Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/vm?download=true
inline.NumInlined: 3276
inline.NumDeleted: 575
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@check_funcall_missing:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ak = and i64 %.fr, -5
  %.not = icmp eq i64 %i.ak, 0
  br i1 %.not, label %callable_method_entry.exit.thread, label %bb.d

bb.d:                                             ; preds = %basic_obj_respond_to_missing.exit
  %i.al = icmp sgt i32 %6, 0
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.an = zext i1 %i.al to i8
  %i.ao = load i8, ptr %i.am, align 8
  %i.ap = and i8 %i.ao, -4
  %i.aq = icmp eq i64 %.fr, 36
  %spec.select = select i1 %i.aq, i8 0, i8 2
  %i.ar = or disjoint i8 %spec.select, %i.an
  %i.as = or disjoint i8 %i.ar, %i.ap
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.at = phi i8 [ %i.as, %bb.d ], [ %i.r, %.thread ]
  %i.au = phi ptr [ %i.am, %bb.d ], [ %i.n, %.thread ]
  store i8 %i.at, ptr %i.au, align 8
  %i.av = call fastcc ptr @callable_method_entry_or_negative(i64 noundef %1, i64 noundef 2913, ptr noundef nonnull %13) ; 4 uses
  %.not.i48 = icmp eq ptr %i.av, null
  br i1 %.not.i48, label %callable_method_entry.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !119 ; 2 uses
  %.not7.i = icmp eq ptr %i.ax, null
  br i1 %.not7.i, label %callable_method_entry.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load i8, ptr %i.ax, align 8
  %i.az = and i8 %i.ay, 15
  %i.ba = icmp eq i8 %i.az, 7
  br i1 %i.ba, label %callable_method_entry.exit.thread, label %callable_method_entry.exit

callable_method_entry.exit:                       ; preds = %bb.g
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !193
  %i.bc = and i64 %i.bb, 262144
  %.not46 = icmp eq i64 %i.bc, 0
  br i1 %.not46, label %bb.h, label %callable_method_entry.exit.thread

bb.h:                                             ; preds = %callable_method_entry.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.bd = add i32 %4, 1                           ; 4 uses
  %i.be = sext i32 %i.bd to i64                   ; 4 uses
  %i.bf = icmp ult i32 %i.bd, 128
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.c, align 8, !tbaa !50
  %i.bg = shl nuw nsw i64 %i.be, 3
  %i.bh = alloca i8, i64 %i.bg, align 16
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bi = icmp slt i32 %i.bd, 0
  br i1 %i.bi, label %bb.k, label %rb_alloc_tmp_buffer2.exit, !prof !200

bb.k:                                             ; preds = %bb.j
  call void @ruby_malloc_size_overflow(i64 noundef range(i64 -2147483648, 2147483648) %i.be, i64 noundef 8) #42
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.j
  %i.bj = shl nuw nsw i64 %i.be, 3
  %i.bk = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.c, i64 noundef %i.bj, i64 noundef range(i64 -2147483648, 2147483648) %i.be) #67
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %rb_alloc_tmp_buffer2.exit
  %i.bl = phi ptr [ %i.bh, %bb.i ], [ %i.bk, %rb_alloc_tmp_buffer2.exit ] ; 3 uses
  %i.bm = call i64 @rb_id2sym(i64 noundef %3) #23
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !50
  %.not47 = icmp eq ptr %5, null
  %spec.store.select = select i1 %.not47, ptr @check_funcall_missing.buf, ptr %5
  %i.bn = getelementptr i8, ptr %i.bl, i64 8
  %i.bo = sext i32 %4 to i64                      ; 2 uses
  %i.bp = icmp slt i32 %4, 0
  br i1 %i.bp, label %bb.m, label %rbimpl_size_mul_or_raise.exit, !prof !200

bb.m:                                             ; preds = %bb.l
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.bo) #42
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.l
  %.not.i49 = icmp eq i32 %4, 0
  br i1 %.not.i49, label %ruby_nonempty_memcpy.exit, label %bb.n

bb.n:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.bq = shl nuw nsw i64 %i.bo, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 %i.bn, ptr noundef nonnull readonly align 1 %spec.store.select, i64 noundef %i.bq, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.n
  %i.br = getelementptr i8, ptr %0, i64 145
  store i8 0, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %0, ptr %i.bs, align 8, !tbaa !360
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %2, ptr %i.bt, align 8, !tbaa !361
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.av, ptr %i.bu, align 8, !tbaa !362
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %3, ptr %i.bv, align 8, !tbaa !363
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 44
  store i32 %i.bd, ptr %i.bw, align 4, !tbaa !364
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr %i.bl, ptr %i.bx, align 8, !tbaa !365
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 56
  store i32 %8, ptr %i.by, align 8, !tbaa !366
  %i.bz = ptrtoint ptr %13 to i64                 ; 2 uses
  %i.ca = load i64, ptr @rb_eNoMethodError, align 8, !tbaa !50
  %i.cb = call i64 (ptr, i64, ptr, i64, ...) @rb_rescue2(ptr noundef nonnull @check_funcall_exec, i64 noundef %i.bz, ptr noundef nonnull @check_funcall_failed, i64 noundef %i.bz, i64 noundef %i.ca, i64 noundef 0) #23
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %callable_method_entry.exit.thread

callable_method_entry.exit.thread:                ; preds = %bb.g, %bb.f, %bb.e, %callable_method_entry.exit, %ruby_nonempty_memcpy.exit, %basic_obj_respond_to_missing.exit
  %.0 = phi i64 [ %7, %basic_obj_respond_to_missing.exit ], [ %7, %callable_method_entry.exit ], [ %i.cb, %ruby_nonempty_memcpy.exit ], [ %7, %bb.e ], [ %7, %bb.f ], [ %7, %bb.g ]
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
  %i.a = load i64, ptr %4, align 8, !tbaa !50     ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.57, i64 noundef 36) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.013 = phi i64 [ %1, %bb.a ], [ %i.b, %bb.b ]  ; 2 uses
  %i.c = load i64, ptr @rb_eNoMethodError, align 8, !tbaa !50
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66
  store volatile ptr %i.f, ptr %i.d, align 8, !tbaa !66
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.d, align 8, !tbaa !66 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %9 = shl nuw nsw i32 %4, 2
  %spec.select = zext nneg i32 %9 to i64
  %i.g = sext i32 %2 to i64                       ; 2 uses
  store i64 106522, ptr %8, align 8, !tbaa !50
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !285
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %1, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %spec.select, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !50
  %i.h = tail call ptr @rb_current_box() #23, !inline_history !25 ; 3 uses
  %i.i = icmp eq i64 %0, 0
  %i.j = and i64 %0, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.a

bb.a:                                             ; preds = %scope_to_ci.exit
  %i.m = inttoptr i64 %0 to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !99   ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.b, label %bb.h, !prof !200

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @uncallable_object(i64 noundef %0, i64 noundef %1) #58, !inline_history !25
  unreachable

bb.c:                                             ; preds = %scope_to_ci.exit
  switch i64 %0, label %bb.f [
    i64 0, label %rb_class_of.exit.i
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit.i

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit.i

bb.f:                                             ; preds = %bb.c
  %i.p = trunc i64 %0 to i1
  br i1 %i.p, label %rb_class_of.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = and i64 %0, 254
  %i.r = icmp eq i64 %i.q, 12
  %spec.select.i.i = select i1 %i.r, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i

rb_class_of.exit.i:                               ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.in.i.i = phi ptr [ %spec.select.i.i, %bb.g ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ]
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %rb_class_of.exit.i, %bb.a
  %.029.i = phi i64 [ %.0.i.i, %rb_class_of.exit.i ], [ %i.o, %bb.a ] ; 5 uses
  %.not33.i = icmp eq ptr %i.h, null
  br i1 %.not33.i, label %rb_ec_vm_ptr.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr i8, ptr %i.h, i64 128
  %i.t = load i8, ptr %i.s, align 8, !tbaa !146, !range !147, !noundef !101
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.j, label %rb_ec_vm_ptr.exit.i

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.h, align 8, !tbaa !217
  %i.w = xor i64 %i.v, %.029.i
  br label %rb_ec_vm_ptr.exit.i

rb_ec_vm_ptr.exit.i:                              ; preds = %bb.j, %bb.i, %bb.h
  %.028.i = phi i64 [ %i.w, %bb.j ], [ %.029.i, %bb.i ], [ %.029.i, %bb.h ]
  %i.x = lshr i64 %.028.i, 3
  %i.y = xor i64 %i.x, %1
  %i.z = urem i64 %i.y, 1023                      ; 2 uses
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.val.i = load ptr, ptr %i.ab, align 8, !tbaa !77, !nonnull !101, !noundef !101
  %i.ac = getelementptr i8, ptr %.val.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !102 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 1336
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.z
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !325 ; 4 uses
  %.not34.i = icmp eq ptr %i.ag, null
  br i1 %.not34.i, label %gccct_method_search.exit, label %bb.k, !prof !200

bb.k:                                             ; preds = %rb_ec_vm_ptr.exit.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val37.i = load i64, ptr %i.ah, align 8, !tbaa !209
  %i.ai = icmp eq i64 %.val37.i, %.029.i
  br i1 %i.ai, label %bb.l, label %gccct_method_search.exit, !prof !109

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %i.ag, i64 16
  %.val36.i = load ptr, ptr %i.aj, align 8, !tbaa !210 ; 3 uses
  %i.ak = load i64, ptr %.val36.i, align 8, !tbaa !193
  %i.al = and i64 %i.ak, 2097152
  %.not35.i = icmp eq i64 %i.al, 0
  br i1 %.not35.i, label %bb.m, label %gccct_method_search.exit, !prof !109

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr i8, ptr %.val36.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !223
  %i.ao = icmp eq i64 %i.an, %1
  br i1 %i.ao, label %.thread, label %gccct_method_search.exit

.thread:                                          ; preds = %bb.m
  %i.ap = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !107
  %i.ar = getelementptr i8, ptr %i.aq, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !111
  br label %bb.o

gccct_method_search.exit:                         ; preds = %rb_ec_vm_ptr.exit.i, %bb.k, %bb.l, %bb.m
  %i.at = call fastcc ptr @gccct_method_search_slowpath(ptr noundef nonnull %i.ad, i64 noundef %.029.i, i32 noundef %i.aa, ptr noundef nonnull %8), !inline_history !25 ; 3 uses
  %i.au = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !107
  %i.aw = getelementptr i8, ptr %i.av, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !111 ; 3 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %rb_method_call_status.exit.thread, label %bb.n, !prof !611

bb.n:                                             ; preds = %gccct_method_search.exit
  %.phi.trans.insert = getelementptr i8, ptr %i.at, i64 16
  %.val.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !210 ; 2 uses
  %.not.i26 = icmp eq ptr %.val.pre, null
  br i1 %.not.i26, label %rb_method_call_status.exit.thread, label %bb.o, !prof !612

bb.o:                                             ; preds = %.thread, %bb.n
  %.1.i3656 = phi ptr [ %i.ag, %.thread ], [ %i.at, %bb.n ] ; 2 uses
  %i.ay = phi i64 [ %i.as, %.thread ], [ %i.ax, %bb.n ] ; 9 uses
  %.val55 = phi ptr [ %.val36.i, %.thread ], [ %.val.pre, %bb.n ] ; 3 uses
  %i.az = getelementptr i8, ptr %.1.i3656, i64 16
  %i.ba = getelementptr i8, ptr %.val55, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !119 ; 3 uses
  %.not34.i27 = icmp eq ptr %i.bb, null
  br i1 %.not34.i27, label %rb_method_call_status.exit.thread, label %bb.p, !prof !200

bb.p:                                             ; preds = %bb.o
  %i.bc = load i8, ptr %i.bb, align 8
  %i.bd = and i8 %i.bc, 15
  switch i8 %i.bd, label %bb.t [
    i8 7, label %rb_method_call_status.exit.thread
    i8 11, label %bb.q
  ], !prof !367

bb.q:                                             ; preds = %bb.p
  %i.be = call ptr @rb_resolve_refined_method_callable(i64 noundef 4, ptr noundef nonnull readonly %.val55) ; 3 uses
  %.not35.i28 = icmp eq ptr %i.be, null
  br i1 %.not35.i28, label %rb_method_call_status.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !119 ; 3 uses
  %.not36.i = icmp eq ptr %i.bg, null
  br i1 %.not36.i, label %rb_method_call_status.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = load i8, ptr %i.bg, align 8
  %i.bi = and i8 %i.bh, 15
  %i.bj = icmp eq i8 %i.bi, 7
  br i1 %i.bj, label %rb_method_call_status.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.bk = phi ptr [ %i.bg, %bb.s ], [ %i.bb, %bb.p ]
  %.028.i29 = phi ptr [ %i.be, %bb.s ], [ %.val55, %bb.p ] ; 2 uses
  %i.bl = load i64, ptr %.028.i29, align 8, !tbaa !193
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = lshr i32 %i.bm, 16
  %i.bo = and i32 %i.bn, 3                        ; 3 uses
  %.not37.i = icmp eq i32 %i.bo, 1
  br i1 %.not37.i, label %rb_method_call_status.exit, label %bb.u, !prof !109

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr i8, ptr %i.bk, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !225
  %i.br = icmp eq i64 %i.bq, 2913
  br i1 %i.br, label %rb_method_call_status.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = icmp eq i32 %i.bo, 2
  %10 = icmp eq i32 %4, 0                         ; 2 uses
  %or.cond.i = and i1 %10, %i.bs
  br i1 %or.cond.i, label %rb_method_call_status.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = icmp eq i32 %i.bo, 3
  %or.cond3.i = and i1 %10, %i.bt
  br i1 %or.cond3.i, label %bb.x, label %rb_method_call_status.exit

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr i8, ptr %.028.i29, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !322 ; 5 uses
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = and i64 %i.bv, 7
  %i.by = icmp ne i64 %i.bx, 0
  %i.bz = or i1 %i.bw, %i.by
  br i1 %i.bz, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.x
  %i.ca = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !114
  %i.cc = and i64 %i.cb, 31
  %i.cd = icmp eq i64 %i.cc, 28
  br i1 %i.cd, label %bb.y, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.y:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ce = getelementptr i8, ptr %i.ca, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !99
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.y, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.x
  %.026.i = phi i64 [ %i.cf, %bb.y ], [ %i.bv, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.bv, %bb.x ]
  %i.cg = icmp eq i64 %i.ay, 36
  br i1 %i.cg, label %rb_method_call_status.exit.thread, label %bb.z

bb.z:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.ch = call i64 @rb_obj_is_kind_of(i64 noundef %i.ay, i64 noundef %.026.i) #23
  %.not38.not.i = icmp eq i64 %i.ch, 0
  br i1 %.not38.not.i, label %rb_method_call_status.exit.thread, label %rb_method_call_status.exit

rb_method_call_status.exit:                       ; preds = %bb.t, %bb.w, %bb.z, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 %2, ptr %i.a, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %.val.i32 = load ptr, ptr %i.az, align 8, !tbaa !210
  %i.ci = getelementptr i8, ptr %.val.i32, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !119
  %i.ck = load i8, ptr %i.cj, align 8
  %i.cl = and i8 %i.ck, 15
  %i.cm = icmp eq i8 %i.cl, 0
  %i.cn = icmp sgt i32 %2, 128
  %i.co = and i1 %i.cn, %i.cm
  br i1 %i.co, label %bb.aa, label %vm_call0_cc.exit, !prof !200

bb.aa:                                            ; preds = %rb_method_call_status.exit
  %i.cp = call fastcc ptr @vm_argv_ruby_array(ptr noundef %i.c, ptr noundef %3, ptr noundef %i.b, ptr noundef %i.a, i32 noundef 0), !inline_history !22 ; 0 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !48
  %.pre39 = load i32, ptr %i.a, align 4, !tbaa !48 ; 2 uses
  %.pre40 = sext i32 %.pre39 to i64
  %i.cq = sext i32 %.pre to i64
  br label %vm_call0_cc.exit

vm_call0_cc.exit:                                 ; preds = %rb_method_call_status.exit, %bb.aa
  %.pre-phi = phi i64 [ %i.g, %rb_method_call_status.exit ], [ %.pre40, %bb.aa ]
  %i.cr = phi i32 [ %2, %rb_method_call_status.exit ], [ %.pre39, %bb.aa ]
  %i.cs = phi i64 [ 0, %rb_method_call_status.exit ], [ %i.cq, %bb.aa ]
  %.0.i33 = phi ptr [ %3, %rb_method_call_status.exit ], [ %i.c, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 106522, ptr %7, align 8, !tbaa !351
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ct, align 8, !tbaa !251
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %1, ptr %i.cu, align 8, !tbaa !190
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.cs, ptr %i.cv, align 8, !tbaa !196
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.pre-phi, ptr %i.cw, align 8, !tbaa !197
  store ptr %7, ptr %6, align 8, !tbaa !240
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.cx, align 8, !tbaa !207
  store ptr %6, ptr %5, align 8, !tbaa !242
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.1.i3656, ptr %i.cy, align 8, !tbaa !248
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.da = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 136 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !347
  store i64 0, ptr %i.da, align 8, !tbaa !347
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !243
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %0, ptr %i.dc, align 8, !tbaa !244
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.cr, ptr %i.dd, align 8, !tbaa !245
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.de, i8 0, i64 12, i1 false)
  %i.df = call fastcc i64 @vm_call0_body(ptr noundef nonnull %.0..0..0..0..0..0..i, ptr noundef %5, ptr noundef %.0.i33), !inline_history !22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ab

rb_method_call_status.exit.thread:                ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.v, %bb.z, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %gccct_method_search.exit
  %i.dg = phi i64 [ %i.ax, %gccct_method_search.exit ], [ 36, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.ay, %bb.z ], [ %i.ay, %bb.v ], [ %i.ay, %bb.s ], [ %i.ay, %bb.r ], [ %i.ay, %bb.q ], [ %i.ay, %bb.p ], [ %i.ay, %bb.o ], [ %i.ax, %bb.n ]
  %i.dh = call fastcc i64 @rb_call0(ptr noundef nonnull %.0..0..0..0..0..0..i, i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %i.dg)
  br label %bb.ab

bb.ab:                                            ; preds = %rb_method_call_status.exit.thread, %vm_call0_cc.exit
  %.0 = phi i64 [ %i.df, %vm_call0_cc.exit ], [ %i.dh, %rb_method_call_status.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_funcallv_kw(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq i32 %4, 0
  %i.b = select i1 %.not, i32 1, i32 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !107
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !111
  %i.i = tail call fastcc i64 @rb_call0(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef range(i32 0, 5) %i.b, i64 noundef %i.h)
  ret i64 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_apply(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !114  ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !64
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.h, %bb.b ], [ %i.j, %bb.c ] ; 9 uses
  %i.k = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.k, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #57
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.l = trunc nsw i64 %.0.i.i to i32             ; 2 uses
  %i.m = icmp sgt i64 %.0.i.i, 255
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %RARRAY_LENINT.exit
  %i.n = tail call i64 @rb_ary_subseq(i64 noundef %2, i64 noundef 0, i64 noundef %.0.i.i) #23 ; 3 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !50
  %i.o = inttoptr i64 %i.n to ptr                 ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !50
  tail call void @rb_obj_freeze_inline(i64 noundef %i.n) #23
  %i.q = load i64, ptr %i.o, align 8, !tbaa !114
  %i.r = and i64 %i.q, 8192
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.o, i64 16
  br label %rb_array_const_ptr.exit

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.o, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.s, %bb.f ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !66
  store volatile ptr %i.w, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !107
  %i.z = getelementptr i8, ptr %i.y, i64 24
end_hunk_0
begin_hunk_1_@rb_binding_add_dynavars:bb.a

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ce
  br i1 %cmp.n, label %vm_set_eval_stack.exit, label %.lr.ph.i.i.preheader95

.lr.ph.i.i.preheader95:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.026.i.i.ph = phi ptr [ %i.bt, %.lr.ph.i.i.preheader ], [ %i.cg, %middle.block ]
  %.02325.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.ch, %middle.block ]
  br label %.lr.ph.i.i

bb.s:                                             ; preds = %vm_block_ep.exit.i
  call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader95, %.lr.ph.i.i
  %.026.i.i = phi ptr [ %i.cl, %.lr.ph.i.i ], [ %.026.i.i.ph, %.lr.ph.i.i.preheader95 ] ; 2 uses
  %.02325.i.i = phi i32 [ %i.cm, %.lr.ph.i.i ], [ %.02325.i.i.ph, %.lr.ph.i.i.preheader95 ]
  %i.cl = getelementptr i8, ptr %.026.i.i, i64 8  ; 2 uses
  store i64 4, ptr %.026.i.i, align 8, !tbaa !50
  %i.cm = add nuw nsw i32 %.02325.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.cm, %i.bv
  br i1 %exitcond.not.i.i, label %vm_set_eval_stack.exit, label %.lr.ph.i.i, !llvm.loop !648

vm_set_eval_stack.exit:                           ; preds = %.lr.ph.i.i, %middle.block, %.preheader.i.i
  %.0.lcssa.i.i = phi ptr [ %i.bt, %.preheader.i.i ], [ %i.cg, %middle.block ], [ %i.cl, %.lr.ph.i.i ] ; 4 uses
  %i.cn = getelementptr i8, ptr %.0.lcssa.i.i, i64 8
  store i64 0, ptr %.0.lcssa.i.i, align 8, !tbaa !50
  %i.co = getelementptr i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  store i64 %.0.i12.i, ptr %i.cn, align 8, !tbaa !50
  %i.cp = getelementptr i8, ptr %.0.lcssa.i.i, i64 24
  store i64 2004287521, ptr %i.co, align 8, !tbaa !50
  store ptr %i.bp, ptr %i.by, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.br, i64 -48
  store ptr %i.cp, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.br, i64 -40
  store ptr %.035, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.br, i64 -32
  store i64 %.0.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.br, i64 -24
  store ptr %i.co, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.br, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.by, ptr %i.bq, align 8, !tbaa !107
  %i.cq = call fastcc i64 @vm_make_env_each(ptr noundef nonnull readnone %.0..0..0..0..0..0..i, ptr noundef nonnull %i.by), !inline_history !27
  %i.cr = inttoptr i64 %i.cq to ptr               ; 3 uses
  %i.cs = getelementptr i8, ptr %1, i64 16
  %i.ct = getelementptr i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !377 ; 2 uses
  %i.cv = ptrtoint ptr %i.cu to i64               ; 3 uses
  store i64 %i.cv, ptr %i.cs, align 8, !tbaa !50
  %i.cw = icmp eq ptr %i.cu, null
  %i.cx = and i64 %i.cv, 7
  %i.cy = icmp ne i64 %i.cx, 0
  %i.cz = or i1 %i.cw, %i.cy
  br i1 %i.cz, label %rb_obj_write.exit.i, label %bb.t

bb.t:                                             ; preds = %vm_set_eval_stack.exit
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.cv) #23
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.t, %vm_set_eval_stack.exit
  %i.da = getelementptr i8, ptr %i.cr, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !378 ; 2 uses
  %i.dc = getelementptr i8, ptr %1, i64 8
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !64
  %i.dd = getelementptr i8, ptr %i.db, i64 8
  %.val.i.i48 = load i64, ptr %i.dd, align 8, !tbaa !50 ; 3 uses
  %i.de = icmp eq i64 %.val.i.i48, 0
  %i.df = and i64 %.val.i.i48, 7
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = or i1 %i.de, %i.dg
  br i1 %i.dh, label %vm_bind_update_env.exit, label %bb.u

bb.u:                                             ; preds = %rb_obj_write.exit.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %.val.i.i48) #23
  br label %vm_bind_update_env.exit

vm_bind_update_env.exit:                          ; preds = %rb_obj_write.exit.i, %bb.u
  %i.di = load ptr, ptr %i.bq, align 8, !tbaa !107
  %i.dj = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 32
  %i.dk = load atomic volatile i32, ptr %i.dj monotonic, align 8
  %i.dl = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 36
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !108
  %i.dn = xor i32 %i.dm, -1
  %i.do = and i32 %i.dk, %i.dn
  %.not.i.i.i49 = icmp eq i32 %i.do, 0
  br i1 %.not.i.i.i49, label %rb_vm_pop_frame.exit, label %bb.v, !prof !109

bb.v:                                             ; preds = %vm_bind_update_env.exit
  %i.dp = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.val.i.i.i = load ptr, ptr %i.dp, align 8, !tbaa !77
  %i.dq = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit

rb_vm_pop_frame.exit:                             ; preds = %vm_bind_update_env.exit, %bb.v
  %i.dr = getelementptr i8, ptr %i.di, i64 56
  store ptr %i.dr, ptr %i.bq, align 8, !tbaa !107
  %i.ds = getelementptr i8, ptr %i.cr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.w

bb.w:                                             ; preds = %pathobj_realpath.exit, %rb_vm_pop_frame.exit
  %.0 = phi ptr [ %i.dt, %rb_vm_pop_frame.exit ], [ null, %pathobj_realpath.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret ptr %.0
}

; Function Attrs: allocsize(1)
declare noalias nonnull ptr @rb_alloc_tmp_buffer(ptr noundef, i64 noundef) local_unnamed_addr #34

declare void @rb_node_init(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @rb_ruby_ast_new(ptr noundef) local_unnamed_addr #4

declare ptr @rb_iseq_new(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @rb_iseq_new_top(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_invoke_proc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.c, %bb.a
  %.tr.i = phi ptr [ %1, %bb.a ], [ %i.f, %bb.c ] ; 3 uses
  %i.a = getelementptr i8, ptr %.tr.i, i64 24
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !357
  switch i32 %.val.i, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 3, label %bb.c
    i32 2, label %vm_block_self.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i, %tailrecurse.i
  %i.b = load i64, ptr %.tr.i, align 8, !tbaa !64
  br label %vm_block_self.exit

bb.c:                                             ; preds = %tailrecurse.i
  %i.c = load i64, ptr %.tr.i, align 8, !tbaa !64
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !355
  br label %tailrecurse.i

bb.d:                                             ; preds = %tailrecurse.i
  unreachable

vm_block_self.exit:                               ; preds = %tailrecurse.i, %bb.b
  %.0.i = phi i64 [ %i.b, %bb.b ], [ 36, %tailrecurse.i ] ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 1
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %vm_block_self.exit
  %i.j = tail call fastcc i64 @vm_invoke_bmethod(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %.0.i, i32 noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5, ptr noundef null)
  br label %bb.g

bb.f:                                             ; preds = %vm_block_self.exit
  %i.k = tail call fastcc i64 @vm_invoke_proc(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %.0.i, i32 noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i64 [ %i.j, %bb.e ], [ %i.k, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_invoke_bmethod(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6, ptr noundef %7) unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.rb_calling_info, align 8    ; 9 uses
  %9 = alloca %struct.rb_callinfo, align 8        ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %block_proc_is_lambda.exit, %bb.a
  %.039.i = phi i32 [ 1, %bb.a ], [ %i.fr, %block_proc_is_lambda.exit ] ; 2 uses
  %.037.i = phi ptr [ %1, %bb.a ], [ %i.ft, %block_proc_is_lambda.exit ] ; 7 uses
  %i.d = getelementptr i8, ptr %.037.i, i64 24
  %.037.i.val = load i32, ptr %i.d, align 8, !tbaa !357
  switch i32 %.037.i.val, label %bb.ab [
    i32 0, label %bb.c
    i32 1, label %bb.r
    i32 2, label %bb.x
    i32 3, label %block_proc_is_lambda.exit
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %3, ptr %i.a, align 4, !tbaa !48
  %i.e = getelementptr i8, ptr %.037.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 4 uses
  %10 = shl nuw nsw i32 %.039.i, 8
  %11 = or disjoint i32 %10, 572653569
  %12 = zext nneg i32 %11 to i64                  ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107  ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8        ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %.not45.i.i = icmp eq i32 %5, 0
  %i.k = select i1 %.not45.i.i, i32 0, i32 64
  store i32 %i.k, ptr %i.b, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.l = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !100
  %i.n = and i8 %i.m, 2
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %bb.d, label %stack_check.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %0) #23
  %.not4.i = icmp eq i32 %i.o, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.l, align 8, !tbaa !100
  %i.q = or i8 %i.p, 2
  store i8 %i.q, ptr %i.l, align 8, !tbaa !100
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %0, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %bb.c, %bb.d
  %i.r = icmp sgt i32 %3, 128
  br i1 %i.r, label %bb.f, label %bb.g, !prof !200

bb.f:                                             ; preds = %stack_check.exit
  %i.s = call fastcc ptr @vm_argv_ruby_array(ptr noundef %i.c, ptr noundef %4, ptr noundef %i.b, ptr noundef %i.a, i32 noundef %5) ; 0 uses
  %.pre44 = load i32, ptr %i.a, align 4, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %stack_check.exit
  %i.t = phi i32 [ %.pre44, %bb.f ], [ %3, %stack_check.exit ] ; 5 uses
  %.043.i.i = phi ptr [ %i.c, %bb.f ], [ %4, %stack_check.exit ]
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !110
  %i.v = add i32 %i.t, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 56
  %.not46.i.i = icmp ugt ptr %i.h, %i.y
  br i1 %.not46.i.i, label %bb.i, label %bb.h, !prof !109

bb.h:                                             ; preds = %bb.g
  call fastcc void @vm_stackoverflow() #58
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not47.i.i = icmp eq ptr %7, null              ; 2 uses
  br i1 %.not47.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %2, ptr %i.j, align 8, !tbaa !50
  %i.z = getelementptr i8, ptr %i.j, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i44.i = phi ptr [ %i.z, %bb.j ], [ %i.j, %bb.i ] ; 3 uses
  %i.aa = sext i32 %i.t to i64                    ; 3 uses
  %i.ab = getelementptr [8 x i8], ptr %.0.i44.i, i64 %i.aa
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !110
  %i.ac = icmp slt i32 %i.t, 0
  br i1 %i.ac, label %bb.l, label %rbimpl_size_mul_or_raise.exit, !prof !200

bb.l:                                             ; preds = %bb.k
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.aa) #42
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.k
  %.not.i9 = icmp eq i32 %i.t, 0
  br i1 %.not.i9, label %ruby_nonempty_memcpy.exit, label %bb.m

bb.m:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.ad = shl nuw nsw i64 %i.aa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0.i44.i, ptr noundef nonnull readonly align 1 %.043.i.i, i64 noundef %i.ad, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.m
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !48  ; 2 uses
  %i.af = xor i32 %.039.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 %i.t, ptr %i.ag, align 8, !tbaa !245
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %6, ptr %i.ah, align 8, !tbaa !243
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.aj = trunc i32 %i.ae to i8
  %i.ak = lshr i8 %i.aj, 6
  %i.al = and i8 %i.ak, 1
  store i8 %i.al, ptr %i.ai, align 4, !tbaa !246
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 36, ptr %i.am, align 8, !tbaa !244
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.an, align 8, !tbaa !416
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i64 106522, ptr %9, align 8, !tbaa !351
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ar = sext i32 %i.ae to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !196
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 0, ptr %i.as, align 8, !tbaa !197
  %i.at = call fastcc i32 @vm_callee_setup_block_arg(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %i.f, ptr noundef nonnull %.0.i44.i, i32 noundef range(i32 0, 2) %i.af) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  store ptr %i.j, ptr %i.i, align 8, !tbaa !110
  %i.au = getelementptr i8, ptr %.037.i, i64 8
  %.037.i.val7 = load ptr, ptr %i.au, align 8, !tbaa !230 ; 2 uses
  %i.av = getelementptr i8, ptr %i.f, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !158 ; 6 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 20
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !212 ; 4 uses
  %i.az = getelementptr i8, ptr %i.aw, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !177 ; 2 uses
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !107 ; 13 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !110 ; 2 uses
  br i1 %.not47.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.be = sext i32 %i.ay to i64
  %i.bf = getelementptr [8 x i8], ptr %i.bd, i64 %i.be ; 5 uses
  %i.bg = getelementptr i8, ptr %i.aw, i64 240
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !211
  %i.bi = sub i32 %i.bh, %i.ay                    ; 5 uses
  %i.bj = getelementptr i8, ptr %i.aw, i64 264
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !308
  %i.bl = getelementptr i8, ptr %i.bb, i64 -56    ; 3 uses
  %i.bm = add i32 %i.bk, %i.bi
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr [8 x i8], ptr %i.bf, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 56
  %.not.i.i11.a = icmp ugt ptr %i.bl, %i.bp
  br i1 %.not.i.i11.a, label %.preheader.i.i, label %bb.o, !prof !109

.preheader.i.i:                                   ; preds = %bb.n
  %i.bq = icmp sgt i32 %i.bi, 0
  br i1 %i.bq, label %.lr.ph.i.i.preheader, label %invoke_block.exit

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.br = zext nneg i32 %i.bi to i64              ; 2 uses
  %min.iters.check73 = icmp ult i32 %i.bi, 4
  br i1 %min.iters.check73, label %.lr.ph.i.i.preheader84, label %vector.ph74

vector.ph74:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec75 = and i64 %i.br, 2147483644            ; 4 uses
  %i.bs = shl nuw nsw i64 %n.vec75, 3
  %i.bt = getelementptr i8, ptr %i.bf, i64 %i.bs  ; 2 uses
  %i.bu = trunc nuw nsw i64 %n.vec75 to i32
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph74
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next79, %vector.body76 ] ; 2 uses
  %i.bv = shl i64 %index77, 3
  %next.gep78 = getelementptr i8, ptr %i.bf, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep78, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep78, align 8, !tbaa !50
  store <2 x i64> splat (i64 4), ptr %i.bw, align 8, !tbaa !50
  %index.next79 = add nuw i64 %index77, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next79, %n.vec75
  br i1 %i.bx, label %middle.block80, label %vector.body76, !llvm.loop !655

middle.block80:                                   ; preds = %vector.body76
  %cmp.n81 = icmp eq i64 %n.vec75, %i.br
  br i1 %cmp.n81, label %invoke_block.exit, label %.lr.ph.i.i.preheader84

.lr.ph.i.i.preheader84:                           ; preds = %.lr.ph.i.i.preheader, %middle.block80
  %.026.i.i.ph = phi ptr [ %i.bf, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block80 ]
  %.02325.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bu, %middle.block80 ]
  br label %.lr.ph.i.i

bb.o:                                             ; preds = %bb.n
  call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader84, %.lr.ph.i.i
  %.026.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %.026.i.i.ph, %.lr.ph.i.i.preheader84 ] ; 2 uses
  %.02325.i.i = phi i32 [ %i.bz, %.lr.ph.i.i ], [ %.02325.i.i.ph, %.lr.ph.i.i.preheader84 ]
  %i.by = getelementptr i8, ptr %.026.i.i, i64 8  ; 2 uses
  store i64 4, ptr %.026.i.i, align 8, !tbaa !50
  %i.bz = add nuw nsw i32 %.02325.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bz, %i.bi
  br i1 %exitcond.not.i.i, label %invoke_block.exit, label %.lr.ph.i.i, !llvm.loop !656

invoke_block.exit:                                ; preds = %.lr.ph.i.i, %middle.block80, %.preheader.i.i
  %.0.lcssa.i.i = phi ptr [ %i.bf, %.preheader.i.i ], [ %i.bt, %middle.block80 ], [ %i.by, %.lr.ph.i.i ] ; 4 uses
  %i.ca = sext i32 %i.at to i64
  %i.cb = getelementptr [8 x i8], ptr %i.ba, i64 %i.ca
  %i.cc = ptrtoint ptr %.037.i.val7 to i64
  %i.cd = or i64 %i.cc, 1
  %i.ce = or disjoint i64 %12, 32
  %i.cf = getelementptr i8, ptr %.0.lcssa.i.i, i64 8
  store i64 0, ptr %.0.lcssa.i.i, align 8, !tbaa !50
  %i.cg = getelementptr i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  store i64 %i.cd, ptr %i.cf, align 8, !tbaa !50
  %i.ch = getelementptr i8, ptr %.0.lcssa.i.i, i64 24
  store i64 %i.ce, ptr %i.cg, align 8, !tbaa !50
  store ptr %i.cb, ptr %i.bl, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.bb, i64 -48
  store ptr %i.ch, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.bb, i64 -40
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.bb, i64 -32
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.bb, i64 -24
  store ptr %i.cg, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.bb, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.bl, ptr %i.g, align 8, !tbaa !107
  br label %invoke_iseq_block_from_c.exit.i

bb.p:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.ci = getelementptr i8, ptr %i.bd, i64 8
  %i.cj = sext i32 %i.ay to i64
  %i.ck = getelementptr [8 x i8], ptr %i.ci, i64 %i.cj ; 5 uses
  %i.cl = getelementptr i8, ptr %i.aw, i64 240
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !211
  %i.cn = sub i32 %i.cm, %i.ay                    ; 5 uses
  %i.co = getelementptr i8, ptr %i.aw, i64 264
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !308
  %i.cq = getelementptr i8, ptr %i.bb, i64 -56    ; 3 uses
  %i.cr = add i32 %i.cp, %i.cn
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr [8 x i8], ptr %i.ck, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 56
  %.not.i.i12 = icmp ugt ptr %i.cq, %i.cu
  br i1 %.not.i.i12, label %.preheader.i.i13, label %bb.q, !prof !109

.preheader.i.i13:                                 ; preds = %bb.p
  %i.cv = icmp sgt i32 %i.cn, 0
  br i1 %i.cv, label %.lr.ph.i.i20.preheader, label %invoke_bmethod.exit

.lr.ph.i.i20.preheader:                           ; preds = %.preheader.i.i13
  %i.cw = zext nneg i32 %i.cn to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.cn, 4
  br i1 %min.iters.check, label %.lr.ph.i.i20.preheader85, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i20.preheader
  %n.vec = and i64 %i.cw, 2147483644              ; 4 uses
  %i.cx = shl nuw nsw i64 %n.vec, 3
  %i.cy = getelementptr i8, ptr %i.ck, i64 %i.cx  ; 2 uses
  %i.cz = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ck, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !50
  store <2 x i64> splat (i64 4), ptr %i.db, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !657

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cw
  br i1 %cmp.n, label %invoke_bmethod.exit, label %.lr.ph.i.i20.preheader85

.lr.ph.i.i20.preheader85:                         ; preds = %.lr.ph.i.i20.preheader, %middle.block
  %.026.i.i21.ph = phi ptr [ %i.ck, %.lr.ph.i.i20.preheader ], [ %i.cy, %middle.block ]
  %.02325.i.i22.ph = phi i32 [ 0, %.lr.ph.i.i20.preheader ], [ %i.cz, %middle.block ]
  br label %.lr.ph.i.i20

bb.q:                                             ; preds = %bb.p
  call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i.i20:                                     ; preds = %.lr.ph.i.i20.preheader85, %.lr.ph.i.i20
  %.026.i.i21 = phi ptr [ %i.dd, %.lr.ph.i.i20 ], [ %.026.i.i21.ph, %.lr.ph.i.i20.preheader85 ] ; 2 uses
  %.02325.i.i22 = phi i32 [ %i.de, %.lr.ph.i.i20 ], [ %.02325.i.i22.ph, %.lr.ph.i.i20.preheader85 ]
  %i.dd = getelementptr i8, ptr %.026.i.i21, i64 8 ; 2 uses
  store i64 4, ptr %.026.i.i21, align 8, !tbaa !50
  %i.de = add nuw nsw i32 %.02325.i.i22, 1        ; 2 uses
  %exitcond.not.i.i23 = icmp eq i32 %i.de, %i.cn
  br i1 %exitcond.not.i.i23, label %invoke_bmethod.exit, label %.lr.ph.i.i20, !llvm.loop !658

invoke_bmethod.exit:                              ; preds = %.lr.ph.i.i20, %middle.block, %.preheader.i.i13
  %.0.lcssa.i.i14 = phi ptr [ %i.ck, %.preheader.i.i13 ], [ %i.cy, %middle.block ], [ %i.dd, %.lr.ph.i.i20 ] ; 4 uses
  %i.df = sext i32 %i.at to i64
  %i.dg = getelementptr [8 x i8], ptr %i.ba, i64 %i.df
  %i.dh = ptrtoint ptr %7 to i64
  %i.di = ptrtoint ptr %.037.i.val7 to i64
  %i.dj = or i64 %i.di, 1
  %i.dk = or disjoint i64 %12, 64
  %i.dl = getelementptr i8, ptr %.0.lcssa.i.i14, i64 8
  store i64 %i.dh, ptr %.0.lcssa.i.i14, align 8, !tbaa !50
  %i.dm = getelementptr i8, ptr %.0.lcssa.i.i14, i64 16 ; 2 uses
  store i64 %i.dj, ptr %i.dl, align 8, !tbaa !50
  %i.dn = getelementptr i8, ptr %.0.lcssa.i.i14, i64 24
  store i64 %i.dk, ptr %i.dm, align 8, !tbaa !50
  store ptr %i.dg, ptr %i.cq, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i.i15 = getelementptr i8, ptr %i.bb, i64 -48
  store ptr %i.dn, ptr %.sroa.2.0..sroa_idx.i.i15, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i.i16 = getelementptr i8, ptr %i.bb, i64 -40
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx.i.i16, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i.i17 = getelementptr i8, ptr %i.bb, i64 -32
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i.i17, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i.i18 = getelementptr i8, ptr %i.bb, i64 -24 ; 2 uses
  store ptr %i.dm, ptr %.sroa.5.0..sroa_idx.i.i18, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i.i19 = getelementptr i8, ptr %i.bb, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i19, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.cq, ptr %i.g, align 8, !tbaa !107
  %i.do = load ptr, ptr %.sroa.5.0..sroa_idx.i.i18, align 8, !tbaa !56 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !50
  %i.dq = or i64 %i.dp, 32
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !50
  br label %invoke_iseq_block_from_c.exit.i

invoke_iseq_block_from_c.exit.i:                  ; preds = %invoke_bmethod.exit, %invoke_block.exit
  %i.dr = call i64 @rb_vm_exec(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %invoke_block_from_c_proc.exit

bb.r:                                             ; preds = %bb.b
  %i.ds = icmp eq i32 %5, 1
  br i1 %i.ds, label %bb.s, label %.split.i

.split.i:                                         ; preds = %bb.r
  %i.dt = tail call fastcc i64 @vm_yield_with_cfunc(ptr noundef %0, ptr noundef nonnull %.037.i, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6, ptr noundef %7)
  br label %invoke_block_from_c_proc.exit

bb.s:                                             ; preds = %bb.r
  %i.du = add i32 %3, -1                          ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr [8 x i8], ptr %4, i64 %i.dv ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !50 ; 5 uses
  %i.dy = icmp eq i64 %i.dx, 0
  %i.dz = and i64 %i.dx, 7
  %i.ea = icmp ne i64 %i.dz, 0
  %i.eb = or i1 %i.dy, %i.ea
  br i1 %i.eb, label %rbimpl_RB_TYPE_P_fastpath.exit.i.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.s
  %i.ec = inttoptr i64 %i.dx to ptr
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !114 ; 2 uses
  %i.ee = and i64 %i.ed, 31
  %i.ef = icmp eq i64 %i.ee, 8
  br i1 %i.ef, label %bb.t, label %rbimpl_RB_TYPE_P_fastpath.exit.i.thread

rbimpl_RB_TYPE_P_fastpath.exit.i.thread:          ; preds = %bb.s, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.eg = tail call i64 @rb_to_hash_type(i64 noundef %i.dx) #23 ; 2 uses
  %.phi.trans.insert = inttoptr i64 %i.eg to ptr
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !114
  br label %bb.t

bb.t:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.thread, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.eh = phi i64 [ %i.ed, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %rbimpl_RB_TYPE_P_fastpath.exit.i.thread ] ; 2 uses
  %.0.i = phi i64 [ %i.dx, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.eg, %rbimpl_RB_TYPE_P_fastpath.exit.i.thread ] ; 2 uses
  %i.ei = and i64 %i.eh, 32768
  %.not.i.i.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ej = lshr i64 %i.eh, 16
  %i.ek = and i64 %i.ej, 15
  br label %RHASH_EMPTY_P.exit

bb.v:                                             ; preds = %bb.t
  %i.el = add i64 %.0.i, 24
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = getelementptr i8, ptr %i.em, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !301
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.u, %bb.v
  %.0.i.i24.a = phi i64 [ %i.ek, %bb.u ], [ %i.eo, %bb.v ]
  %i.ep = icmp eq i64 %.0.i.i24.a, 0
  br i1 %i.ep, label %.split42.i, label %bb.w

bb.w:                                             ; preds = %RHASH_EMPTY_P.exit
  %i.eq = tail call i64 @rb_hash_dup(i64 noundef %.0.i) #23
  store i64 %i.eq, ptr %i.dw, align 8, !tbaa !50
  br label %.split42.i

.split42.i:                                       ; preds = %RHASH_EMPTY_P.exit, %bb.w
  %.040.i = phi i32 [ %3, %bb.w ], [ %i.du, %RHASH_EMPTY_P.exit ]
  %i.er = tail call fastcc i64 @vm_yield_with_cfunc(ptr noundef %0, ptr noundef nonnull %.037.i, i64 noundef %2, i32 noundef %.040.i, ptr noundef nonnull %4, i32 noundef 1, i64 noundef %6, ptr noundef %7)
  br label %invoke_block_from_c_proc.exit

bb.x:                                             ; preds = %bb.b
  %i.es = load i64, ptr %.037.i, align 8, !tbaa !64
  %i.et = tail call i64 @rb_sym2id(i64 noundef %i.es) #23
  %i.eu = icmp eq i64 %6, 0
  br i1 %i.eu, label %vm_yield_with_symbol.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ev = and i64 %6, 3
  switch i64 %i.ev, label %bb.z [
    i64 1, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
    i64 3, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
  ]

bb.z:                                             ; preds = %bb.y
  %i.ew = and i64 %6, 255
  %i.ex = icmp eq i64 %i.ew, 12
  br i1 %i.ex, label %vm_block_handler_type.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ey = and i64 %6, 7
  %.not.i.i26 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i26, label %RB_SYMBOL_P.exit.i.i.i, label %vm_yield_with_symbol.exit

RB_SYMBOL_P.exit.i.i.i:                           ; preds = %bb.aa
  %i.ez = inttoptr i64 %6 to ptr
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !114
  %.fr10.i.i.i = freeze i64 %i.fa
  %i.fb = and i64 %.fr10.i.i.i, 31
  %i.fc = icmp eq i64 %i.fb, 20
  br i1 %i.fc, label %vm_block_handler_type.exit.i.i, label %vm_yield_with_symbol.exit

RB_SYMBOL_P.exit.thread7.fold.split.i.i.i:        ; preds = %bb.y, %bb.y
  %i.fd = and i64 %6, -4
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = load i64, ptr @rb_cProc, align 8, !tbaa !50
  %i.fg = tail call i64 @rb_vm_make_proc_lambda(ptr noundef readnone %0, ptr noundef %i.fe, i64 noundef %i.ff, i8 noundef signext 0), !inline_history !1
  br label %vm_yield_with_symbol.exit

vm_block_handler_type.exit.i.i:                   ; preds = %RB_SYMBOL_P.exit.i.i.i, %bb.z
  %i.fh = tail call i64 @rb_sym_to_proc(i64 noundef %6) #23
  br label %vm_yield_with_symbol.exit

vm_yield_with_symbol.exit:                        ; preds = %bb.x, %bb.aa, %RB_SYMBOL_P.exit.i.i.i, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i, %vm_block_handler_type.exit.i.i
  %.0.i.i25 = phi i64 [ 4, %bb.x ], [ %i.fg, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i ], [ %i.fh, %vm_block_handler_type.exit.i.i ], [ %6, %bb.aa ], [ %6, %RB_SYMBOL_P.exit.i.i.i ]
  %i.fi = tail call i64 @rb_sym_proc_call(i64 noundef %i.et, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %.0.i.i25) #23
  br label %invoke_block_from_c_proc.exit

block_proc_is_lambda.exit:                        ; preds = %bb.b
  %i.fj = load i64, ptr %.037.i, align 8, !tbaa !64 ; 2 uses
  %.not.i27 = icmp ne i64 %i.fj, 0
  tail call void @llvm.assume(i1 %.not.i27)
  %i.fk = inttoptr i64 %i.fj to ptr               ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !404
  %i.fn = getelementptr i8, ptr %i.fm, i64 32
  %i.fo = load i8, ptr %i.fn, align 8
  %i.fp = lshr i8 %i.fo, 1
  %i.fq = and i8 %i.fp, 1
  %i.fr = zext nneg i8 %i.fq to i32
  %i.fs = getelementptr i8, ptr %i.fk, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !355
  br label %bb.b

bb.ab:                                            ; preds = %bb.b
  unreachable

invoke_block_from_c_proc.exit:                    ; preds = %invoke_iseq_block_from_c.exit.i, %.split.i, %.split42.i, %vm_yield_with_symbol.exit
  %.038.i = phi i64 [ %i.dr, %invoke_iseq_block_from_c.exit.i ], [ %i.fi, %vm_yield_with_symbol.exit ], [ %i.dt, %.split.i ], [ %i.er, %.split42.i ]
  ret i64 %.038.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_invoke_proc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6) unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.rb_calling_info, align 8    ; 9 uses
  %8 = alloca %struct.rb_callinfo, align 8        ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %block_proc_is_lambda.exit, %bb.a
  %.pn = phi ptr [ %1, %bb.a ], [ %i.ea, %block_proc_is_lambda.exit ] ; 8 uses
  %i.d = getelementptr i8, ptr %.pn, i64 24
  %.037.i.val = load i32, ptr %i.d, align 8, !tbaa !357
  switch i32 %.037.i.val, label %bb.w [
    i32 0, label %bb.c
    i32 1, label %bb.m
    i32 2, label %bb.s
    i32 3, label %block_proc_is_lambda.exit
  ]

bb.c:                                             ; preds = %bb.b
  %.039.i.in.in.in.in.le = getelementptr i8, ptr %.pn, i64 32
  %.039.i.in.in.in.le = load i8, ptr %.039.i.in.in.in.in.le, align 8
  %.039.i.in.in.le = lshr i8 %.039.i.in.in.in.le, 1
  %.039.i.in.le = and i8 %.039.i.in.in.le, 1
  %.039.i.le = zext nneg i8 %.039.i.in.le to i32  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %3, ptr %i.a, align 4, !tbaa !48
  %i.e = getelementptr i8, ptr %.pn, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 3 uses
  %9 = shl nuw nsw i32 %.039.i.le, 8
  %i.g = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107  ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8        ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %.not45.i.i = icmp eq i32 %5, 0
  %i.k = select i1 %.not45.i.i, i32 0, i32 64
  store i32 %i.k, ptr %i.b, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.l = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !100
  %i.n = and i8 %i.m, 2
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %bb.d, label %stack_check.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %0) #23
  %.not4.i = icmp eq i32 %i.o, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.l, align 8, !tbaa !100
  %i.q = or i8 %i.p, 2
  store i8 %i.q, ptr %i.l, align 8, !tbaa !100
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %0, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %bb.c, %bb.d
  %i.r = icmp sgt i32 %3, 128
  br i1 %i.r, label %bb.f, label %bb.g, !prof !200

bb.f:                                             ; preds = %stack_check.exit
  %i.s = call fastcc ptr @vm_argv_ruby_array(ptr noundef %i.c, ptr noundef %4, ptr noundef %i.b, ptr noundef %i.a, i32 noundef %5) ; 0 uses
  %.pre29 = load i32, ptr %i.a, align 4, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %stack_check.exit
  %i.t = phi i32 [ %.pre29, %bb.f ], [ %3, %stack_check.exit ] ; 5 uses
  %.043.i.i = phi ptr [ %i.c, %bb.f ], [ %4, %stack_check.exit ]
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !110
  %i.v = add i32 %i.t, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 56
  %.not46.i.i = icmp ugt ptr %i.h, %i.y
  br i1 %.not46.i.i, label %bb.i, label %bb.h, !prof !109

bb.h:                                             ; preds = %bb.g
  call fastcc void @vm_stackoverflow() #58
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = sext i32 %i.t to i64                     ; 3 uses
  %i.aa = getelementptr [8 x i8], ptr %i.j, i64 %i.z
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !110
  %i.ab = icmp slt i32 %i.t, 0
  br i1 %i.ab, label %bb.j, label %rbimpl_size_mul_or_raise.exit, !prof !200

bb.j:                                             ; preds = %bb.i
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.z) #42
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.i
  %.not.i8 = icmp eq i32 %i.t, 0
  br i1 %.not.i8, label %ruby_nonempty_memcpy.exit, label %bb.k

bb.k:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.ac = shl nuw nsw i64 %i.z, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.j, ptr noundef nonnull readonly align 1 %.043.i.i, i64 noundef %i.ac, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.k
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !48  ; 2 uses
  %10 = xor i32 %.039.i.le, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %i.t, ptr %i.ae, align 8, !tbaa !245
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %6, ptr %i.af, align 8, !tbaa !243
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.ah = trunc i32 %i.ad to i8
  %i.ai = lshr i8 %i.ah, 6
  %i.aj = and i8 %i.ai, 1
  store i8 %i.aj, ptr %i.ag, align 4, !tbaa !246
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 36, ptr %i.ak, align 8, !tbaa !244
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.al, align 8, !tbaa !416
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i64 106522, ptr %8, align 8, !tbaa !351
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ap = sext i32 %i.ad to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !196
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 0, ptr %i.aq, align 8, !tbaa !197
  %i.ar = call fastcc i32 @vm_callee_setup_block_arg(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %i.f, ptr noundef nonnull %i.j, i32 noundef range(i32 0, 2) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  store ptr %i.j, ptr %i.i, align 8, !tbaa !110
  %i.as = getelementptr i8, ptr %.pn, i64 8
  %.037.i.val7 = load ptr, ptr %i.as, align 8, !tbaa !230
  %i.at = getelementptr i8, ptr %i.f, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !158 ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !212 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.au, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !177
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !107 ; 7 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !110
  %i.bc = sext i32 %i.aw to i64
  %i.bd = getelementptr [8 x i8], ptr %i.bb, i64 %i.bc ; 5 uses
  %i.be = getelementptr i8, ptr %i.au, i64 240
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !211
  %i.bg = sub i32 %i.bf, %i.aw                    ; 5 uses
  %i.bh = getelementptr i8, ptr %i.au, i64 264
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !308
  %i.bj = getelementptr i8, ptr %i.az, i64 -56    ; 3 uses
  %i.bk = add i32 %i.bi, %i.bg
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [8 x i8], ptr %i.bd, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 56
  %.not.i.i10 = icmp ugt ptr %i.bj, %i.bn
  br i1 %.not.i.i10, label %.preheader.i.i, label %bb.l, !prof !109

.preheader.i.i:                                   ; preds = %ruby_nonempty_memcpy.exit
  %i.bo = icmp sgt i32 %i.bg, 0
  br i1 %i.bo, label %.lr.ph.i.i.preheader, label %invoke_block.exit

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.bp = zext nneg i32 %i.bg to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.bg, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.bp, 2147483644              ; 4 uses
  %i.bq = shl nuw nsw i64 %n.vec, 3
  %i.br = getelementptr i8, ptr %i.bd, i64 %i.bq  ; 2 uses
  %i.bs = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !50
  store <2 x i64> splat (i64 4), ptr %i.bu, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !659

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bp
  br i1 %cmp.n, label %invoke_block.exit, label %.lr.ph.i.i.preheader52

.lr.ph.i.i.preheader52:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.026.i.i.ph = phi ptr [ %i.bd, %.lr.ph.i.i.preheader ], [ %i.br, %middle.block ]
  %.02325.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i.i

bb.l:                                             ; preds = %ruby_nonempty_memcpy.exit
  call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader52, %.lr.ph.i.i
  %.026.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %.026.i.i.ph, %.lr.ph.i.i.preheader52 ] ; 2 uses
  %.02325.i.i = phi i32 [ %i.bx, %.lr.ph.i.i ], [ %.02325.i.i.ph, %.lr.ph.i.i.preheader52 ]
  %i.bw = getelementptr i8, ptr %.026.i.i, i64 8  ; 2 uses
  store i64 4, ptr %.026.i.i, align 8, !tbaa !50
  %i.bx = add nuw nsw i32 %.02325.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bx, %i.bg
  br i1 %exitcond.not.i.i, label %invoke_block.exit, label %.lr.ph.i.i, !llvm.loop !660

invoke_block.exit:                                ; preds = %.lr.ph.i.i, %middle.block, %.preheader.i.i
  %.0.lcssa.i.i = phi ptr [ %i.bd, %.preheader.i.i ], [ %i.br, %middle.block ], [ %i.bw, %.lr.ph.i.i ] ; 4 uses
  %i.by = sext i32 %i.ar to i64
  %i.bz = getelementptr [8 x i8], ptr %i.ay, i64 %i.by
  %i.ca = ptrtoint ptr %.037.i.val7 to i64
  %i.cb = or i64 %i.ca, 1
  %11 = or disjoint i32 %9, 572653601
  %12 = zext nneg i32 %11 to i64
  %i.cc = getelementptr i8, ptr %.0.lcssa.i.i, i64 8
  store i64 0, ptr %.0.lcssa.i.i, align 8, !tbaa !50
  %i.cd = getelementptr i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !50
  %i.ce = getelementptr i8, ptr %.0.lcssa.i.i, i64 24
  store i64 %12, ptr %i.cd, align 8, !tbaa !50
  store ptr %i.bz, ptr %i.bj, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.az, i64 -48
  store ptr %i.ce, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.az, i64 -40
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.az, i64 -32
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.az, i64 -24
  store ptr %i.cd, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.az, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.bj, ptr %i.g, align 8, !tbaa !107
  %i.cf = call i64 @rb_vm_exec(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %invoke_block_from_c_proc.exit

bb.m:                                             ; preds = %bb.b
  %i.cg = icmp eq i32 %5, 1
  br i1 %i.cg, label %bb.n, label %.split.i

.split.i:                                         ; preds = %bb.m
  %i.ch = tail call fastcc i64 @vm_yield_with_cfunc(ptr noundef %0, ptr noundef nonnull %.pn, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6, ptr noundef null)
  br label %invoke_block_from_c_proc.exit

bb.n:                                             ; preds = %bb.m
  %i.ci = add i32 %3, -1                          ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr [8 x i8], ptr %4, i64 %i.cj ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !50 ; 5 uses
  %i.cm = icmp eq i64 %i.cl, 0
  %i.cn = and i64 %i.cl, 7
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = or i1 %i.cm, %i.co
  br i1 %i.cp, label %rbimpl_RB_TYPE_P_fastpath.exit.i.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.n
  %i.cq = inttoptr i64 %i.cl to ptr
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !114 ; 2 uses
  %i.cs = and i64 %i.cr, 31
  %i.ct = icmp eq i64 %i.cs, 8
  br i1 %i.ct, label %bb.o, label %rbimpl_RB_TYPE_P_fastpath.exit.i.thread

rbimpl_RB_TYPE_P_fastpath.exit.i.thread:          ; preds = %bb.n, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.cu = tail call i64 @rb_to_hash_type(i64 noundef %i.cl) #23 ; 2 uses
  %.phi.trans.insert = inttoptr i64 %i.cu to ptr
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !114
  br label %bb.o

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.thread, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.cv = phi i64 [ %i.cr, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %rbimpl_RB_TYPE_P_fastpath.exit.i.thread ] ; 2 uses
  %.0.i = phi i64 [ %i.cl, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.cu, %rbimpl_RB_TYPE_P_fastpath.exit.i.thread ] ; 2 uses
  %i.cw = and i64 %i.cv, 32768
  %.not.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cx = lshr i64 %i.cv, 16
  %i.cy = and i64 %i.cx, 15
  br label %RHASH_EMPTY_P.exit

bb.q:                                             ; preds = %bb.o
  %i.cz = add i64 %.0.i, 24
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !301
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.p, %bb.q
  %.0.i.i11.a = phi i64 [ %i.cy, %bb.p ], [ %i.dc, %bb.q ]
  %i.dd = icmp eq i64 %.0.i.i11.a, 0
  br i1 %i.dd, label %.split42.i, label %bb.r

bb.r:                                             ; preds = %RHASH_EMPTY_P.exit
  %i.de = tail call i64 @rb_hash_dup(i64 noundef %.0.i) #23
  store i64 %i.de, ptr %i.ck, align 8, !tbaa !50
  br label %.split42.i

.split42.i:                                       ; preds = %RHASH_EMPTY_P.exit, %bb.r
  %.040.i = phi i32 [ %3, %bb.r ], [ %i.ci, %RHASH_EMPTY_P.exit ]
  %i.df = tail call fastcc i64 @vm_yield_with_cfunc(ptr noundef %0, ptr noundef nonnull %.pn, i64 noundef %2, i32 noundef %.040.i, ptr noundef nonnull %4, i32 noundef 1, i64 noundef %6, ptr noundef null)
  br label %invoke_block_from_c_proc.exit

bb.s:                                             ; preds = %bb.b
  %i.dg = load i64, ptr %.pn, align 8, !tbaa !64
  %i.dh = tail call i64 @rb_sym2id(i64 noundef %i.dg) #23
  %i.di = icmp eq i64 %6, 0
  br i1 %i.di, label %vm_yield_with_symbol.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = and i64 %6, 3
  switch i64 %i.dj, label %bb.u [
    i64 1, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
    i64 3, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
  ]

bb.u:                                             ; preds = %bb.t
  %i.dk = and i64 %6, 255
  %i.dl = icmp eq i64 %i.dk, 12
  br i1 %i.dl, label %vm_block_handler_type.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = and i64 %6, 7
  %.not.i.i13 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i13, label %RB_SYMBOL_P.exit.i.i.i, label %vm_yield_with_symbol.exit

RB_SYMBOL_P.exit.i.i.i:                           ; preds = %bb.v
  %i.dn = inttoptr i64 %6 to ptr
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !114
  %.fr10.i.i.i = freeze i64 %i.do
  %i.dp = and i64 %.fr10.i.i.i, 31
  %i.dq = icmp eq i64 %i.dp, 20
  br i1 %i.dq, label %vm_block_handler_type.exit.i.i, label %vm_yield_with_symbol.exit

RB_SYMBOL_P.exit.thread7.fold.split.i.i.i:        ; preds = %bb.t, %bb.t
  %i.dr = and i64 %6, -4
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load i64, ptr @rb_cProc, align 8, !tbaa !50
  %i.du = tail call i64 @rb_vm_make_proc_lambda(ptr noundef readnone %0, ptr noundef %i.ds, i64 noundef %i.dt, i8 noundef signext 0), !inline_history !1
  br label %vm_yield_with_symbol.exit

vm_block_handler_type.exit.i.i:                   ; preds = %RB_SYMBOL_P.exit.i.i.i, %bb.u
  %i.dv = tail call i64 @rb_sym_to_proc(i64 noundef %6) #23
  br label %vm_yield_with_symbol.exit

vm_yield_with_symbol.exit:                        ; preds = %bb.s, %bb.v, %RB_SYMBOL_P.exit.i.i.i, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i, %vm_block_handler_type.exit.i.i
  %.0.i.i12 = phi i64 [ 4, %bb.s ], [ %i.du, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i ], [ %i.dv, %vm_block_handler_type.exit.i.i ], [ %6, %bb.v ], [ %6, %RB_SYMBOL_P.exit.i.i.i ]
  %i.dw = tail call i64 @rb_sym_proc_call(i64 noundef %i.dh, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %.0.i.i12) #23
  br label %invoke_block_from_c_proc.exit

block_proc_is_lambda.exit:                        ; preds = %bb.b
  %i.dx = load i64, ptr %.pn, align 8, !tbaa !64  ; 2 uses
  %.not.i14 = icmp ne i64 %i.dx, 0
  tail call void @llvm.assume(i1 %.not.i14)
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = getelementptr i8, ptr %i.dy, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !404
  br label %bb.b

bb.w:                                             ; preds = %bb.b
  unreachable

invoke_block_from_c_proc.exit:                    ; preds = %invoke_block.exit, %.split.i, %.split42.i, %vm_yield_with_symbol.exit
  %.038.i = phi i64 [ %i.cf, %invoke_block.exit ], [ %i.dw, %vm_yield_with_symbol.exit ], [ %i.ch, %.split.i ], [ %i.df, %.split42.i ]
  ret i64 %.038.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_invoke_proc_with_self(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i64 @vm_invoke_bmethod(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6, ptr noundef null)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc i64 @vm_invoke_proc(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_vm_svar_lep(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.010 = phi ptr [ %1, %bb.a ], [ %i.n, %bb.e ]  ; 6 uses
  %i.b = load ptr, ptr %.010, align 8, !tbaa !176
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.010, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.g = getelementptr i8, ptr %.010, i64 32
  %.010.val12 = load ptr, ptr %i.g, align 8, !tbaa !56
  %.010.val12.val = load i64, ptr %.010.val12, align 8, !tbaa !50
  %i.h = and i64 %.010.val12.val, 2147418113
  %i.i = icmp eq i64 %i.h, 1717960705
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.j = getelementptr i8, ptr %.010, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !155
end_hunk_1
begin_hunk_2_@env_copy:bb.a
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cp = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !50
  %i.cq = tail call i64 @rb_exc_new_str(i64 noundef %i.cp, i64 noundef %i.cm) #23
  tail call void @rb_exc_raise(i64 noundef %i.cq) #42
  unreachable

.thread:                                          ; preds = %bb.q, %rb_ractor_shareable_p.exit
  %i.cr = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv
  store i64 %i.cb, ptr %i.cr, align 8, !tbaa !50
  tail call void @rb_gc_writebarrier(i64 noundef %i.n, i64 noundef %i.cb) #23
  br label %rb_obj_write.exit83

rb_obj_write.exit83:                              ; preds = %.thread87, %.thread
  %i.cs = tail call i64 @rb_ary_delete_at(i64 noundef %1, i64 noundef %indvars.iv101) #23 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %NUM2ID.exit, %rb_obj_write.exit83
  %indvars.iv.next102 = add nsw i64 %indvars.iv101, -1
  %i.ct = icmp sgt i64 %indvars.iv101, 0
  br i1 %i.ct, label %bb.h, label %.loopexit88.loopexit, !llvm.loop !908

.loopexit88.loopexit:                             ; preds = %.loopexit
  %.val.pre = load i64, ptr %0, align 8, !tbaa !50
  br label %.loopexit88

.loopexit88:                                      ; preds = %.loopexit88.loopexit, %RARRAY_LENINT.exit, %rb_obj_write.exit
  %.val = phi i64 [ %.val.pre, %.loopexit88.loopexit ], [ %i.aj, %RARRAY_LENINT.exit ], [ %i.aj, %rb_obj_write.exit ]
  %i.cu = and i64 %.val, 2
  %.not74 = icmp eq i64 %i.cu, 0
  br i1 %.not74, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.loopexit88
  %i.cv = getelementptr i8, ptr %i.b, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !378
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  %.val77 = load i64, ptr %i.cx, align 8, !tbaa !50
  %i.cy = and i64 %.val77, -4
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = tail call fastcc ptr @env_copy(ptr noundef %i.cz, i64 noundef %1) ; 3 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !378
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = or i64 %i.dd, 1
  %i.df = getelementptr i8, ptr %i.j, i64 -8
  store i64 %i.de, ptr %i.df, align 8, !tbaa !50
  %i.dg = icmp eq ptr %i.da, null
  br i1 %i.dg, label %rb_obj_written.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = ptrtoint ptr %i.da to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.n, i64 noundef %i.dh) #23
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.v, %bb.w
  %i.di = load i64, ptr %i.j, align 8, !tbaa !50
  %i.dj = and i64 %i.di, -3
  store i64 %i.dj, ptr %i.j, align 8, !tbaa !50
  br label %bb.y

bb.x:                                             ; preds = %.loopexit88
  %i.dk = getelementptr i8, ptr %i.j, i64 -8
  store i64 0, ptr %i.dk, align 8, !tbaa !50
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %rb_obj_written.exit
  %i.dl = tail call i64 @rb_obj_set_shareable(i64 noundef %i.n) #23 ; 0 uses
  ret ptr %i.o
}

declare i64 @rb_ary_delete_at(i64 noundef, i64 noundef) local_unnamed_addr #4

declare zeroext i1 @rb_ractor_shareable_p_continue(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @invoke_block_from_c_bh(ptr noundef %0, i64 noundef range(i64 1, 0) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5, ptr noundef %6, i32 noundef range(i32 0, 2) %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #2 {
bb.a:
  %9 = alloca %struct.rb_calling_info, align 8    ; 9 uses
  %10 = alloca %struct.rb_callinfo, align 8       ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 4 uses
  %i.d = icmp eq i32 %8, 0
  br i1 %i.d, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.split.us.backedge
  %.028.us = phi i32 [ %i.x, %.split.us.backedge ], [ %7, %bb.a ]
  %.027.us = phi i64 [ %.027.us.be, %.split.us.backedge ], [ %1, %bb.a ] ; 10 uses
  %i.e = and i64 %.027.us, 3
  switch i64 %i.e, label %bb.b [
    i64 1, label %.split48.us
    i64 3, label %.split51.us
  ]

bb.b:                                             ; preds = %.split.us
  %i.f = and i64 %.027.us, 255
  %i.g = icmp eq i64 %i.f, 12
  br i1 %i.g, label %vm_block_handler_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %.027.us, 0                  ; 2 uses
  %i.i = and i64 %.027.us, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %RB_SYMBOL_P.exit.i.us

RB_SYMBOL_P.exit.i.us:                            ; preds = %bb.c
  %i.l = inttoptr i64 %.027.us to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !114
  %.fr10.i.us = freeze i64 %i.m
  %i.n = and i64 %.fr10.i.us, 31
  %i.o = icmp eq i64 %i.n, 20
  br i1 %i.o, label %vm_block_handler_type.exit, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.p = xor i1 %i.h, true
  tail call void @llvm.assume(i1 %i.p)
  br label %.thread

.thread:                                          ; preds = %bb.d, %RB_SYMBOL_P.exit.i.us
  %i.q = inttoptr i64 %.027.us to ptr             ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !404
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %i.u = load i8, ptr %i.t, align 8
  %i.v = lshr i8 %i.u, 1
  %i.w = and i8 %i.v, 1
  %i.x = zext nneg i8 %i.w to i32
  %i.y = getelementptr i8, ptr %i.q, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !355  ; 5 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %.val.i.us = load i32, ptr %i.aa, align 8, !tbaa !357
  switch i32 %.val.i.us, label %.split55.us [
    i32 0, label %bb.h
    i32 1, label %bb.g
    i32 2, label %bb.f
    i32 3, label %bb.e
  ]

bb.e:                                             ; preds = %.thread
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !64
  br label %.split.us.backedge

bb.f:                                             ; preds = %.thread
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !64
  br label %.split.us.backedge

bb.g:                                             ; preds = %.thread
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = or i64 %i.ad, 3
  br label %.split.us.backedge

bb.h:                                             ; preds = %.thread
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = or i64 %i.af, 1
  br label %.split.us.backedge

.split.us.backedge:                               ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.027.us.be = phi i64 [ %i.ab, %bb.e ], [ %i.ag, %bb.h ], [ %i.ae, %bb.g ], [ %i.ac, %bb.f ]
  br label %.split.us

.split:                                           ; preds = %bb.a, %.split.backedge
  %.027 = phi i64 [ %.027.be, %.split.backedge ], [ %1, %bb.a ] ; 9 uses
  %i.ah = and i64 %.027, 3
  switch i64 %i.ah, label %bb.i [
    i64 1, label %.split48.us
    i64 3, label %.split51.us
  ]

bb.i:                                             ; preds = %.split
  %i.ai = and i64 %.027, 255
  %i.aj = icmp eq i64 %i.ai, 12
  br i1 %i.aj, label %vm_block_handler_type.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp eq i64 %.027, 0
  %i.al = and i64 %.027, 7
  %i.am = icmp ne i64 %i.al, 0
  %i.an = or i1 %i.ak, %i.am
  %.pre70 = inttoptr i64 %.027 to ptr             ; 2 uses
  br i1 %i.an, label %block_proc_is_lambda.exit, label %RB_SYMBOL_P.exit.i

RB_SYMBOL_P.exit.i:                               ; preds = %bb.j
  %i.ao = load i64, ptr %.pre70, align 8, !tbaa !114
  %.fr10.i = freeze i64 %i.ao
  %i.ap = and i64 %.fr10.i, 31
  %i.aq = icmp eq i64 %i.ap, 20
  br i1 %i.aq, label %vm_block_handler_type.exit, label %block_proc_is_lambda.exit

.split48.us:                                      ; preds = %.split, %.split.us
  %.us-phi = phi i32 [ %.028.us, %.split.us ], [ %7, %.split ] ; 2 uses
  %.us-phi49 = phi i64 [ %.027.us, %.split.us ], [ %.027, %.split ]
  %i.ar = and i64 %.us-phi49, -4
  %i.as = inttoptr i64 %i.ar to ptr               ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %2, ptr %i.a, align 4, !tbaa !48
  %i.au = getelementptr i8, ptr %i.as, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !64 ; 3 uses
  %11 = shl nuw nsw i32 %.us-phi, 8
  %i.aw = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !107 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8      ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !110 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %.not45.i = icmp eq i32 %4, 0
  %i.ba = select i1 %.not45.i, i32 0, i32 64
  store i32 %i.ba, ptr %i.b, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.bb = getelementptr i8, ptr %0, i64 144       ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !100
  %i.bd = and i8 %i.bc, 2
  %.not.i29.a = icmp eq i8 %i.bd, 0
  br i1 %.not.i29.a, label %bb.k, label %stack_check.exit

bb.k:                                             ; preds = %.split48.us
  %i.be = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %0) #23
  %.not4.i = icmp eq i32 %i.be, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load i8, ptr %i.bb, align 8, !tbaa !100
  %i.bg = or i8 %i.bf, 2
  store i8 %i.bg, ptr %i.bb, align 8, !tbaa !100
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %0, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %.split48.us, %bb.k
  %i.bh = icmp sgt i32 %2, 128
  br i1 %i.bh, label %bb.m, label %bb.n, !prof !200

bb.m:                                             ; preds = %stack_check.exit
  %i.bi = call fastcc ptr @vm_argv_ruby_array(ptr noundef %i.c, ptr noundef %3, ptr noundef %i.b, ptr noundef %i.a, i32 noundef %4) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !48
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %stack_check.exit
  %i.bj = phi i32 [ %.pre, %bb.m ], [ %2, %stack_check.exit ] ; 5 uses
  %.043.i = phi ptr [ %i.c, %bb.m ], [ %3, %stack_check.exit ]
  %i.bk = load ptr, ptr %i.ay, align 8, !tbaa !110
  %i.bl = add i32 %i.bj, 1
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr [8 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 56
  %.not46.i = icmp ugt ptr %i.ax, %i.bo
  br i1 %.not46.i, label %invoke_iseq_block_from_c.exit, label %bb.o, !prof !109

bb.o:                                             ; preds = %bb.n
  call fastcc void @vm_stackoverflow() #58
  unreachable

invoke_iseq_block_from_c.exit:                    ; preds = %bb.n
  %i.bp = sext i32 %i.bj to i64                   ; 3 uses
  %i.bq = getelementptr [8 x i8], ptr %i.az, i64 %i.bp
  store ptr %i.bq, ptr %i.ay, align 8, !tbaa !110
  %i.br = icmp slt i32 %i.bj, 0
  br i1 %i.br, label %bb.p, label %rbimpl_size_mul_or_raise.exit, !prof !200

bb.p:                                             ; preds = %invoke_iseq_block_from_c.exit
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.bp) #42
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %invoke_iseq_block_from_c.exit
  %.not.i30 = icmp eq i32 %i.bj, 0
  br i1 %.not.i30, label %ruby_nonempty_memcpy.exit, label %bb.q

bb.q:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.bs = shl nuw nsw i64 %i.bp, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.az, ptr noundef nonnull readonly align 1 %.043.i, i64 noundef %i.bs, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.q
  %i.bt = load i32, ptr %i.b, align 4, !tbaa !48  ; 2 uses
  %i.bu = xor i32 %.us-phi, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %i.bj, ptr %i.bv, align 8, !tbaa !245
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %5, ptr %i.bw, align 8, !tbaa !243
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.by = trunc i32 %i.bt to i8
  %i.bz = lshr i8 %i.by, 6
  %i.ca = and i8 %i.bz, 1
  store i8 %i.ca, ptr %i.bx, align 4, !tbaa !246
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 36, ptr %i.cb, align 8, !tbaa !244
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.cc, align 8, !tbaa !416
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.cd, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i64 106522, ptr %10, align 8, !tbaa !351
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cg = sext i32 %i.bt to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !196
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 0, ptr %i.ch, align 8, !tbaa !197
  %i.ci = call fastcc i32 @vm_callee_setup_block_arg(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %i.av, ptr noundef nonnull %i.az, i32 noundef range(i32 0, 2) %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !110
  %i.cj = getelementptr i8, ptr %i.as, i64 8
  %.val = load ptr, ptr %i.cj, align 8, !tbaa !230
  %i.ck = getelementptr i8, ptr %i.av, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !158 ; 4 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 20
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !212 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cl, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !177
  %i.cq = load ptr, ptr %i.aw, align 8, !tbaa !107 ; 7 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !110
  %i.ct = sext i32 %i.cn to i64
  %i.cu = getelementptr [8 x i8], ptr %i.cs, i64 %i.ct ; 5 uses
  %i.cv = getelementptr i8, ptr %i.cl, i64 240
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !211
  %i.cx = sub i32 %i.cw, %i.cn                    ; 5 uses
  %i.cy = getelementptr i8, ptr %i.cl, i64 264
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !308
  %i.da = getelementptr i8, ptr %i.cq, i64 -56    ; 3 uses
  %i.db = add i32 %i.cz, %i.cx
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr [8 x i8], ptr %i.cu, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 56
  %.not.i.i = icmp ugt ptr %i.da, %i.de
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.r, !prof !109

.preheader.i.i:                                   ; preds = %ruby_nonempty_memcpy.exit
  %i.df = icmp sgt i32 %i.cx, 0
  br i1 %i.df, label %.lr.ph.i.i.preheader, label %invoke_block.exit

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.dg = zext nneg i32 %i.cx to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.cx, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader104, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.dg, 2147483644              ; 4 uses
  %i.dh = shl nuw nsw i64 %n.vec, 3
  %i.di = getelementptr i8, ptr %i.cu, i64 %i.dh  ; 2 uses
  %i.dj = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.cu, i64 %i.dk ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !50
  store <2 x i64> splat (i64 4), ptr %i.dl, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !910

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br i1 %cmp.n, label %invoke_block.exit, label %.lr.ph.i.i.preheader104

.lr.ph.i.i.preheader104:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.026.i.i.ph = phi ptr [ %i.cu, %.lr.ph.i.i.preheader ], [ %i.di, %middle.block ]
  %.02325.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.dj, %middle.block ]
  br label %.lr.ph.i.i

bb.r:                                             ; preds = %ruby_nonempty_memcpy.exit
  call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader104, %.lr.ph.i.i
  %.026.i.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.026.i.i.ph, %.lr.ph.i.i.preheader104 ] ; 2 uses
  %.02325.i.i = phi i32 [ %i.do, %.lr.ph.i.i ], [ %.02325.i.i.ph, %.lr.ph.i.i.preheader104 ]
  %i.dn = getelementptr i8, ptr %.026.i.i, i64 8  ; 2 uses
  store i64 4, ptr %.026.i.i, align 8, !tbaa !50
  %i.do = add nuw nsw i32 %.02325.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.do, %i.cx
  br i1 %exitcond.not.i.i, label %invoke_block.exit, label %.lr.ph.i.i, !llvm.loop !911

invoke_block.exit:                                ; preds = %.lr.ph.i.i, %middle.block, %.preheader.i.i
  %.0.lcssa.i.i = phi ptr [ %i.cu, %.preheader.i.i ], [ %i.di, %middle.block ], [ %i.dn, %.lr.ph.i.i ] ; 4 uses
  %i.dp = sext i32 %i.ci to i64
  %i.dq = getelementptr [8 x i8], ptr %i.cp, i64 %i.dp
  %i.dr = ptrtoint ptr %6 to i64
  %i.ds = ptrtoint ptr %.val to i64
  %i.dt = or i64 %i.ds, 1
  %12 = or i32 %11, 572653601
  %13 = zext nneg i32 %12 to i64
  %i.du = getelementptr i8, ptr %.0.lcssa.i.i, i64 8
  store i64 %i.dr, ptr %.0.lcssa.i.i, align 8, !tbaa !50
  %i.dv = getelementptr i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !50
  %i.dw = getelementptr i8, ptr %.0.lcssa.i.i, i64 24
  store i64 %13, ptr %i.dv, align 8, !tbaa !50
  store ptr %i.dq, ptr %i.da, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.cq, i64 -48
  store ptr %i.dw, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.cq, i64 -40
  store ptr %i.av, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.cq, i64 -32
  store i64 %i.at, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.cq, i64 -24
  store ptr %i.dv, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.cq, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.da, ptr %i.aw, align 8, !tbaa !107
  %i.dx = call i64 @rb_vm_exec(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.z

.split51.us:                                      ; preds = %.split, %.split.us
  %.us-phi52.a = phi i64 [ %.027.us, %.split.us ], [ %.027, %.split ]
  %i.dy = and i64 %.us-phi52.a, -4
  %i.dz = inttoptr i64 %i.dy to ptr               ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !229
  %i.eb = tail call fastcc i64 @vm_yield_with_cfunc(ptr noundef %0, ptr noundef nonnull %i.dz, i64 noundef %i.ea, i32 noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5, ptr noundef null)
  br label %bb.z

vm_block_handler_type.exit:                       ; preds = %bb.i, %RB_SYMBOL_P.exit.i, %bb.b, %RB_SYMBOL_P.exit.i.us
  %.us-phi53 = phi i64 [ %.027.us, %bb.b ], [ %.027.us, %RB_SYMBOL_P.exit.i.us ], [ %.027, %RB_SYMBOL_P.exit.i ], [ %.027, %bb.i ]
  %i.ec = tail call i64 @rb_sym2id(i64 noundef %.us-phi53) #23
  %i.ed = icmp eq i64 %5, 0
  br i1 %i.ed, label %vm_yield_with_symbol.exit, label %bb.s

bb.s:                                             ; preds = %vm_block_handler_type.exit
  %i.ee = and i64 %5, 3
  switch i64 %i.ee, label %bb.t [
    i64 1, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
    i64 3, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
  ]

bb.t:                                             ; preds = %bb.s
  %i.ef = and i64 %5, 255
  %i.eg = icmp eq i64 %i.ef, 12
  br i1 %i.eg, label %vm_block_handler_type.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eh = and i64 %5, 7
  %.not.i.i32 = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i32, label %RB_SYMBOL_P.exit.i.i.i, label %vm_yield_with_symbol.exit

RB_SYMBOL_P.exit.i.i.i:                           ; preds = %bb.u
  %i.ei = inttoptr i64 %5 to ptr
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !114
  %.fr10.i.i.i = freeze i64 %i.ej
  %i.ek = and i64 %.fr10.i.i.i, 31
  %i.el = icmp eq i64 %i.ek, 20
  br i1 %i.el, label %vm_block_handler_type.exit.i.i, label %vm_yield_with_symbol.exit

RB_SYMBOL_P.exit.thread7.fold.split.i.i.i:        ; preds = %bb.s, %bb.s
  %i.em = and i64 %5, -4
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = load i64, ptr @rb_cProc, align 8, !tbaa !50
  %i.ep = tail call i64 @rb_vm_make_proc_lambda(ptr noundef readnone %0, ptr noundef %i.en, i64 noundef %i.eo, i8 noundef signext 0), !inline_history !1
  br label %vm_yield_with_symbol.exit

vm_block_handler_type.exit.i.i:                   ; preds = %RB_SYMBOL_P.exit.i.i.i, %bb.t
  %i.eq = tail call i64 @rb_sym_to_proc(i64 noundef %5) #23
  br label %vm_yield_with_symbol.exit

vm_yield_with_symbol.exit:                        ; preds = %vm_block_handler_type.exit, %bb.u, %RB_SYMBOL_P.exit.i.i.i, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i, %vm_block_handler_type.exit.i.i
  %.0.i.i = phi i64 [ 4, %vm_block_handler_type.exit ], [ %i.ep, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i ], [ %i.eq, %vm_block_handler_type.exit.i.i ], [ %5, %bb.u ], [ %5, %RB_SYMBOL_P.exit.i.i.i ]
  %i.er = tail call i64 @rb_sym_proc_call(i64 noundef %i.ec, i32 noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %.0.i.i) #23
  br label %bb.z

block_proc_is_lambda.exit:                        ; preds = %bb.j, %RB_SYMBOL_P.exit.i
  %i.es = getelementptr i8, ptr %.pre70, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !355 ; 5 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 24
  %.val.i = load i32, ptr %i.eu, align 8, !tbaa !357
  switch i32 %.val.i, label %.split55.us [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %bb.y
  ]

bb.v:                                             ; preds = %block_proc_is_lambda.exit
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = or i64 %i.ev, 1
  br label %.split.backedge

.split.backedge:                                  ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %.027.be = phi i64 [ %i.fa, %bb.y ], [ %i.ew, %bb.v ], [ %i.ey, %bb.w ], [ %i.ez, %bb.x ]
  br label %.split

bb.w:                                             ; preds = %block_proc_is_lambda.exit
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = or i64 %i.ex, 3
  br label %.split.backedge

bb.x:                                             ; preds = %block_proc_is_lambda.exit
  %i.ez = load i64, ptr %i.et, align 8, !tbaa !64
  br label %.split.backedge

bb.y:                                             ; preds = %block_proc_is_lambda.exit
  %i.fa = load i64, ptr %i.et, align 8, !tbaa !64
  br label %.split.backedge

.split55.us:                                      ; preds = %block_proc_is_lambda.exit, %.thread
  unreachable

bb.z:                                             ; preds = %vm_yield_with_symbol.exit, %.split51.us, %invoke_block.exit
  %.0 = phi i64 [ %i.dx, %invoke_block.exit ], [ %i.eb, %.split51.us ], [ %i.er, %vm_yield_with_symbol.exit ]
  ret i64 %.0
}

declare i64 @rb_exc_new_cstr(i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_iv_set(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @vm_exec_handle_exception(ptr noundef %0, i32 noundef range(i32 1, 0) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  %3 = alloca %struct.rb_trace_arg_struct, align 8 ; 12 uses
  %i.a = inttoptr i64 %2 to ptr                   ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.l = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 36         ; 3 uses
  %i.n = getelementptr i8, ptr %i.a, i64 24       ; 4 uses
  %i.o = getelementptr i8, ptr %i.a, i64 32
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !107
  br label %bb.b

bb.b:                                             ; preds = %bb.bh, %bb.a
  %.pre = phi ptr [ %.pre.pre, %bb.a ], [ %i.km, %bb.bh ]
  %.0196 = phi i32 [ %1, %bb.a ], [ %.1197304317, %bb.bh ] ; 8 uses
  br label %bb.c

bb.c:                                             ; preds = %rb_vm_pop_frame.exit, %bb.b
  %i.p = phi ptr [ %i.at, %rb_vm_pop_frame.exit ], [ %.pre, %bb.b ] ; 32 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !176  ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !155  ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.v = getelementptr i8, ptr %i.p, i64 32
  %.val256 = load ptr, ptr %i.v, align 8, !tbaa !56
  %.val256.val = load i64, ptr %.val256, align 8, !tbaa !50
  %i.w = and i64 %.val256.val, 2147418113
  %i.x = icmp eq i64 %i.w, 1431633921
  br i1 %i.x, label %rb_ec_hooks.exit, label %bb.f, !prof !200

rb_ec_hooks.exit:                                 ; preds = %.critedge
  %.val255 = load ptr, ptr %i.c, align 8, !tbaa !77, !nonnull !101, !noundef !101
  %i.y = getelementptr i8, ptr %.val255, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !274  ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !389
  %i.ac = and i32 %i.ab, 64
  %.not252 = icmp eq i32 %i.ac, 0
  br i1 %.not252, label %bb.f, label %bb.e, !prof !109

bb.e:                                             ; preds = %rb_ec_hooks.exit
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  %i.ae = getelementptr i8, ptr %i.p, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !111
  %i.ag = call ptr @rb_vm_frame_method_entry(ptr noundef nonnull %i.p) ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !119
  %i.aj = getelementptr i8, ptr %i.ai, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !225
  %i.al = getelementptr i8, ptr %i.ag, i64 24
  %i.am = load <2 x i64>, ptr %i.al, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 64, ptr %3, align 8, !tbaa !391
  store ptr %0, ptr %i.d, align 8, !tbaa !392
  store ptr %i.p, ptr %i.e, align 8, !tbaa !393
  store i64 %i.af, ptr %i.f, align 8, !tbaa !394
  store i64 %i.ak, ptr %i.g, align 8, !tbaa !395
  store <2 x i64> %i.am, ptr %i.h, align 8, !tbaa !50
  store i64 4, ptr %i.i, align 8, !tbaa !396
  store i64 36, ptr %i.j, align 8, !tbaa !397
  store i32 0, ptr %i.k, align 8, !tbaa !398
  call void @rb_exec_event_hooks(ptr noundef nonnull %3, ptr noundef %i.ad, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
end_hunk_2
