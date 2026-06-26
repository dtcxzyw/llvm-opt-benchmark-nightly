inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@rb_funcallv_scope:scope_to_ci.exit
  %i.ce = getelementptr i8, ptr %i.ca, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !61
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
  store i32 %2, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %.val.i31 = load ptr, ptr %i.az, align 8, !tbaa !187
  %i.ci = getelementptr i8, ptr %.val.i31, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !83
  %i.ck = load i8, ptr %i.cj, align 8
  %i.cl = and i8 %i.ck, 15
  %i.cm = icmp eq i8 %i.cl, 0
  %i.cn = icmp sgt i32 %2, 128
  %i.co = and i1 %i.cn, %i.cm
  br i1 %i.co, label %bb.aa, label %vm_call0_cc.exit, !prof !177

bb.aa:                                            ; preds = %rb_method_call_status.exit
  %i.cp = call fastcc ptr @vm_argv_ruby_array(ptr noundef %i.c, ptr noundef %3, ptr noundef %i.b, ptr noundef %i.a, i32 noundef 0), !inline_history !461 ; 0 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !7
  %.pre38 = load i32, ptr %i.a, align 4, !tbaa !7 ; 2 uses
  %.pre39 = sext i32 %.pre38 to i64
  %i.cq = sext i32 %.pre to i64
  br label %vm_call0_cc.exit

vm_call0_cc.exit:                                 ; preds = %rb_method_call_status.exit, %bb.aa
  %.pre-phi = phi i64 [ %i.g, %rb_method_call_status.exit ], [ %.pre39, %bb.aa ]
  %i.cr = phi i32 [ %2, %rb_method_call_status.exit ], [ %.pre38, %bb.aa ]
  %i.cs = phi i64 [ 0, %rb_method_call_status.exit ], [ %i.cq, %bb.aa ]
  %.0.i32 = phi ptr [ %3, %rb_method_call_status.exit ], [ %i.c, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 106522, ptr %7, align 8, !tbaa !445
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ct, align 8, !tbaa !238
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %1, ptr %i.cu, align 8, !tbaa !163
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.cs, ptr %i.cv, align 8, !tbaa !173
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.pre-phi, ptr %i.cw, align 8, !tbaa !174
  store ptr %7, ptr %6, align 8, !tbaa !225
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.cx, align 8, !tbaa !182
  store ptr %6, ptr %5, align 8, !tbaa !226
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.1.i3555, ptr %i.cy, align 8, !tbaa !233
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.da = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 136 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !441
  store i64 0, ptr %i.da, align 8, !tbaa !441
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !228
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %0, ptr %i.dc, align 8, !tbaa !229
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.cr, ptr %i.dd, align 8, !tbaa !230
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.de, i8 0, i64 12, i1 false)
  %i.df = call fastcc i64 @vm_call0_body(ptr noundef nonnull %.0..0..0..0..0..0..i, ptr noundef %5, ptr noundef %.0.i32), !inline_history !461
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !74
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
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
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
  store i64 %i.n, ptr %i.b, align 8, !tbaa !11
  %i.o = inttoptr i64 %i.n to ptr                 ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !11
  tail call void @rb_obj_freeze_inline(i64 noundef %i.n) #23
  %i.q = load i64, ptr %i.o, align 8, !tbaa !77
  %i.r = and i64 %i.q, 8192
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.o, i64 16
  br label %rb_array_const_ptr.exit

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.o, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.s, %bb.f ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  store volatile ptr %i.w, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !70
  %i.z = getelementptr i8, ptr %i.y, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !74
  %i.ab = tail call fastcc i64 @rb_call0(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %0, i64 noundef %1, i32 noundef %i.l, ptr noundef %.0.i, i32 noundef 1, i64 noundef %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.b, ptr %i.c, align 8, !tbaa !75
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !478
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.ad = load volatile i64, ptr %i.ac, align 8, !tbaa !11 ; 0 uses
  br label %bb.m

bb.h:                                             ; preds = %RARRAY_LENINT.exit
  %i.ae = icmp ugt i64 %.0.i.i, 2305843009213693951
  br i1 %i.ae, label %bb.i, label %rbimpl_size_mul_or_raise.exit, !prof !177

bb.i:                                             ; preds = %bb.h
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %.0.i.i) #42
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.h
  %i.af = shl nuw i64 %.0.i.i, 3
  %3 = and i64 %i.af, 34359738360                 ; 2 uses
  %i.ag = alloca i8, i64 %3, align 16             ; 2 uses
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.ah = getelementptr i8, ptr %i.d, i64 16
  br label %rbimpl_size_mul_or_raise.exit18

bb.k:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.ai = getelementptr i8, ptr %i.d, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27
  br label %rbimpl_size_mul_or_raise.exit18

rbimpl_size_mul_or_raise.exit18:                  ; preds = %bb.k, %bb.j
  %.0.i16 = phi ptr [ %i.ah, %bb.j ], [ %i.aj, %bb.k ]
  %.not.i19 = icmp eq i64 %.0.i.i, 0
  br i1 %.not.i19, label %ruby_nonempty_memcpy.exit, label %bb.l

bb.l:                                             ; preds = %rbimpl_size_mul_or_raise.exit18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 %i.ag, ptr noundef nonnull readonly align 1 %.0.i16, i64 noundef %3, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit18, %bb.l
  %i.ak = call fastcc i64 @rb_funcallv_scope(i64 noundef %0, i64 noundef %1, i32 noundef %i.l, ptr noundef nonnull %i.ag, i32 noundef 1), !inline_history !286
  br label %bb.m

bb.m:                                             ; preds = %ruby_nonempty_memcpy.exit, %rb_array_const_ptr.exit
  %.0 = phi i64 [ %i.ab, %rb_array_const_ptr.exit ], [ %i.ak, %ruby_nonempty_memcpy.exit ]
  ret i64 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i32 @RARRAY_LENINT(i64 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 15
  %i.e = and i64 %i.d, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 3 uses
  %i.h = add i64 %.0.i, 2147483648
  %.not.i1 = icmp ult i64 %i.h, 4294967296
  br i1 %.not.i1, label %rb_long2int_inline.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit
  tail call void @rb_out_of_int(i64 noundef %.0.i) #57
  unreachable

rb_long2int_inline.exit:                          ; preds = %rb_array_len.exit
  %i.i = trunc nsw i64 %.0.i to i32
  ret i32 %i.i
}

declare i64 @rb_ary_subseq(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @rb_obj_freeze_inline(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_funcall(i64 noundef %0, i64 noundef %1, i32 noundef %2, ...) local_unnamed_addr #2 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %rbimpl_size_mul_or_raise.exit, label %bb.l

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.b = zext nneg i32 %2 to i64                  ; 3 uses
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = alloca i8, i64 %i.c, align 16            ; 4 uses
  %.promoted = load i32, ptr %3, align 16         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 16             ; 3 uses
  %.promoted14 = load ptr, ptr %i.e, align 8      ; 2 uses
  %xtraiter = and i64 %i.b, 1
  %i.h = icmp eq i32 %2, 1
  br i1 %i.h, label %.epil.preheader, label %rbimpl_size_mul_or_raise.exit.new

rbimpl_size_mul_or_raise.exit.new:                ; preds = %rbimpl_size_mul_or_raise.exit
  %unroll_iter = and i64 %i.b, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %rbimpl_size_mul_or_raise.exit.new
  %i.i = phi ptr [ %.promoted14, %rbimpl_size_mul_or_raise.exit.new ], [ %i.z, %bb.h ] ; 3 uses
  %.013 = phi i64 [ 0, %rbimpl_size_mul_or_raise.exit.new ], [ %i.af, %bb.h ] ; 3 uses
  %i.j = phi i32 [ %.promoted, %rbimpl_size_mul_or_raise.exit.new ], [ %i.aa, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %rbimpl_size_mul_or_raise.exit.new ], [ %niter.next.1, %bb.h ]
  %i.k = icmp ult i32 %i.j, 41
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr i8, ptr %i.g, i64 %i.l
  %i.n = add nuw nsw i32 %i.j, 8                  ; 2 uses
  store i32 %i.n, ptr %3, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.i, %bb.c ], [ %i.o, %bb.d ] ; 3 uses
  %i.q = phi i32 [ %i.n, %bb.c ], [ %i.j, %bb.d ] ; 4 uses
  %i.r = phi ptr [ %i.m, %bb.c ], [ %i.i, %bb.d ]
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11
  %i.t = getelementptr [8 x i8], ptr %i.d, i64 %.013
  store i64 %i.s, ptr %i.t, align 16, !tbaa !11
  %i.u = icmp ult i32 %i.q, 41
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.p, i64 8        ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = zext nneg i32 %i.q to i64
  %i.x = getelementptr i8, ptr %i.g, i64 %i.w
  %i.y = add nuw nsw i32 %i.q, 8                  ; 2 uses
  store i32 %i.y, ptr %3, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = phi ptr [ %i.p, %bb.g ], [ %i.v, %bb.f ] ; 2 uses
  %i.aa = phi i32 [ %i.y, %bb.g ], [ %i.q, %bb.f ] ; 2 uses
  %i.ab = phi ptr [ %i.x, %bb.g ], [ %i.p, %bb.f ]
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr [8 x i8], ptr %i.d, i64 %.013
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !11
  %i.af = add nuw nsw i64 %.013, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.b, !llvm.loop !479

.unr-lcssa:                                       ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.k, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %rbimpl_size_mul_or_raise.exit
  %.epil.init = phi ptr [ %.promoted14, %rbimpl_size_mul_or_raise.exit ], [ %i.z, %.unr-lcssa ] ; 2 uses
  %.013.epil.init = phi i64 [ 0, %rbimpl_size_mul_or_raise.exit ], [ %i.af, %.unr-lcssa ]
  %.epil.init18 = phi i32 [ %.promoted, %rbimpl_size_mul_or_raise.exit ], [ %i.aa, %.unr-lcssa ] ; 3 uses
  %lcmp.mod19 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod19)
  %i.ag = icmp ult i32 %.epil.init18, 41
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.epil.preheader
  %i.ah = getelementptr i8, ptr %.epil.init, i64 8
  store ptr %i.ah, ptr %i.e, align 8
  br label %.epilog-lcssa

bb.j:                                             ; preds = %.epil.preheader
  %i.ai = zext nneg i32 %.epil.init18 to i64
  %i.aj = getelementptr i8, ptr %i.g, i64 %i.ai
  %i.ak = add nuw nsw i32 %.epil.init18, 8
  store i32 %i.ak, ptr %3, align 16
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %bb.j, %bb.i
  %i.al = phi ptr [ %i.aj, %bb.j ], [ %.epil.init, %bb.i ]
  %i.am = load i64, ptr %i.al, align 8, !tbaa !11
  %i.an = getelementptr [8 x i8], ptr %i.d, i64 %.013.epil.init
  store i64 %i.am, ptr %i.an, align 8, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %.unr-lcssa, %.epilog-lcssa
  call void @llvm.va_end.p0(ptr nonnull %3)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.010 = phi ptr [ %i.d, %bb.k ], [ null, %bb.a ]
  %i.ao = call fastcc i64 @rb_funcallv_scope(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %.010, i32 noundef 1), !inline_history !286
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %i.ao
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #21

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_check_funcall_basic_kw(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

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
end_hunk_0
begin_hunk_1_@vm_call_iseq_setup_normal_0start_3params_4locals:bb.a
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.ak, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.aj, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !70
  ret i64 36

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_3params_5locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !187 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !27 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !230
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 7 uses
  %i.n = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !73
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !124  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !355
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = add i32 %i.s, 2
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.z
  br i1 %.not.i, label %.lr.ph.i.preheader, label %bb.b, !prof !72

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !147
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !228
  %i.ae = getelementptr i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !229
  %i.ag = getelementptr i8, ptr %i.m, i64 32
  store i64 4, ptr %i.n, align 8, !tbaa !11
  %i.ah = getelementptr i8, ptr %i.m, i64 40
  store i64 4, ptr %i.ag, align 8, !tbaa !11
  %i.ai = ptrtoint ptr %.val to i64
  %i.aj = getelementptr i8, ptr %i.m, i64 48
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !11
  %i.ak = getelementptr i8, ptr %i.m, i64 56      ; 2 uses
  store i64 %i.ad, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr i8, ptr %i.m, i64 64
  store i64 286326787, ptr %i.ak, align 8, !tbaa !11
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.al, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.ak, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !70
  ret i64 36

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable
}

declare i64 @rb_ary_hidden_new(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @argument_kw_error(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @rb_keyword_error_new(ptr noundef %3, i64 noundef %4) #23
  tail call fastcc void @raise_argument_error(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.a) #58
  unreachable
}

declare i64 @rb_hash_new() local_unnamed_addr #4

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @make_unknown_kw_hash(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @rb_ary_hidden_new(i64 noundef 1) #23 ; 2 uses
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.c = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = icmp eq i64 %i.d, 36
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  %i.h = tail call i64 @rb_ary_push(i64 noundef %i.a, i64 noundef %i.g) #23 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !785

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret i64 %i.a
}

declare i64 @rb_keyword_error_new(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_new_with_size(i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_pop(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @flatten_rest_args(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !757
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 16
  %i.h = lshr i64 %i.e, 15
  %i.i = and i64 %i.h, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = getelementptr i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i24 = phi ptr [ %i.g, %bb.b ], [ %i.k, %bb.c ] ; 7 uses
  %.0.i.i = phi i64 [ %i.i, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %.0.i2430 = ptrtoaddr ptr %.0.i24 to i64
  %i.n = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !749  ; 9 uses
  %i.p = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.p, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #57
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.q = trunc nsw i64 %.0.i.i to i32
  %i.r = add i32 %i.q, -1                         ; 5 uses
  %i.s = add i32 %i.r, %i.o
  store i32 %i.s, ptr %i.n, align 8, !tbaa !749
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %RARRAY_LENINT.exit
  %i.t = getelementptr i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  %4 = shl nsw i64 %.0.i.i, 3
  %5 = getelementptr i8, ptr %i.w, i64 %4
  %i.x = getelementptr i8, ptr %5, i64 56
  %.not22 = icmp ugt ptr %i.u, %i.x
  br i1 %.not22, label %.preheader, label %bb.f, !prof !72

.preheader:                                       ; preds = %bb.e
  %i.y = icmp sgt i32 %i.r, 0
  br i1 %i.y, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.r, 16
  br i1 %min.iters.check, label %.lr.ph.preheader33, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.z = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.aa = trunc nsw i64 %i.z to i32
  %i.ab = add i32 %i.o, %i.aa
  %i.ac = icmp slt i32 %i.ab, %i.o
  %i.ad = icmp ugt i64 %i.z, 4294967295
  %i.ae = or i1 %i.ac, %i.ad
  br i1 %i.ae, label %.lr.ph.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.af = sext i32 %i.o to i64
  %i.ag = shl nsw i64 %i.af, 3
  %i.ah = add i64 %i.ag, %i.a
  %i.ai = sub i64 %i.ah, %.0.i2430
  %diff.check = icmp ult i64 %i.ai, 32
  br i1 %diff.check, label %.lr.ph.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.aj = trunc nuw nsw i64 %n.vec to i32
  %i.ak = add i32 %i.o, %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = trunc i64 %index to i32
  %i.am = add i32 %i.o, %i.al
  %i.an = getelementptr [8 x i8], ptr %.0.i24, i64 %index ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %wide.load = load <2 x i64>, ptr %i.an, align 8, !tbaa !11
  %wide.load31 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !11
  %i.ap = sext i32 %i.am to i64
  %i.aq = getelementptr [8 x i8], ptr %2, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  store <2 x i64> %wide.load, ptr %i.aq, align 8, !tbaa !11
  store <2 x i64> %wide.load31, ptr %i.ar, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !786

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader33

.lr.ph.preheader33:                               ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.02026.ph = phi i32 [ %i.o, %vector.memcheck ], [ %i.o, %vector.scevcheck ], [ %i.o, %.lr.ph.preheader ], [ %i.ak, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader33, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader33 ] ; 2 uses
  %.02026.prol = phi i32 [ %i.ax, %.lr.ph.prol ], [ %.02026.ph, %.lr.ph.preheader33 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader33 ]
  %i.at = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv.prol
  %i.au = load i64, ptr %i.at, align 8, !tbaa !11
  %i.av = sext i32 %.02026.prol to i64
  %i.aw = getelementptr [8 x i8], ptr %2, i64 %i.av
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !11
  %i.ax = add i32 %.02026.prol, 1                 ; 2 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !787

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader33
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader33 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02026.unr = phi i32 [ %.02026.ph, %.lr.ph.preheader33 ], [ %i.ax, %.lr.ph.prol ]
  %i.ay = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.02026 = phi i32 [ %i.bw, %.lr.ph ], [ %.02026.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ba = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !11
  %i.bc = sext i32 %.02026 to i64
  %i.bd = getelementptr [8 x i8], ptr %2, i64 %i.bc
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !11
  %i.be = add i32 %.02026, 1
  %i.bf = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr [8 x i8], ptr %2, i64 %i.bi
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !11
  %i.bk = add i32 %.02026, 2
  %i.bl = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = sext i32 %i.bk to i64
  %i.bp = getelementptr [8 x i8], ptr %2, i64 %i.bo
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !11
  %i.bq = add i32 %.02026, 3
  %i.br = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv
  %i.bs = getelementptr i8, ptr %i.br, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11
  %i.bu = sext i32 %i.bq to i64
  %i.bv = getelementptr [8 x i8], ptr %2, i64 %i.bu
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !11
  %i.bw = add i32 %.02026, 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !788

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader, %RARRAY_LENINT.exit
  store i64 0, ptr %i.b, align 8, !tbaa !757
  %i.bx = load i32, ptr %3, align 4, !tbaa !7
  %i.by = and i32 %i.bx, -2
  store i32 %i.by, ptr %3, align 4, !tbaa !7
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @RARRAY_ASET(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = tail call ptr @rb_ary_ptr_use_start(i64 noundef %0) #23
  %i.b = getelementptr [8 x i8], ptr %i.a, i64 %1
  store i64 %2, ptr %i.b, align 8, !tbaa !11
  %i.c = icmp eq i64 %2, 0
  %i.d = and i64 %2, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rb_obj_write.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %2) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.a, %bb.b
  tail call void @rb_ary_ptr_use_end(i64 noundef %0) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @args_setup_kw_parameters_from_kwsplat(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i1 noundef zeroext %5) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !720  ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !726  ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !725  ; 3 uses
  %i.i = load i32, ptr %i.d, align 8, !tbaa !723  ; 4 uses
  %i.j = getelementptr i8, ptr %i.d, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !731
  %i.l = inttoptr i64 %3 to ptr                   ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77   ; 2 uses
  %i.n = and i64 %i.m, 32768
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = lshr i64 %i.m, 16
  %i.p = and i64 %i.o, 15
  br label %RHASH_SIZE.exit

bb.c:                                             ; preds = %bb.a
  %i.q = add i64 %3, 24
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !315
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.p, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %i.u = icmp sgt i32 %i.h, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %RHASH_SIZE.exit
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.0128 = phi i64 [ 0, %.lr.ph.preheader ], [ %.2, %bb.k ] ; 3 uses
  %.0111126 = phi i64 [ %.0.i, %.lr.ph.preheader ], [ %.1112, %bb.k ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11
  %i.x = tail call i64 @rb_id2sym(i64 noundef %i.w) #23 ; 3 uses
end_hunk_1
begin_hunk_2_@args_setup_kw_parameters_from_kwsplat:bb.a
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load i16, ptr %i.bo, align 8
  %i.bq = and i16 %i.bp, 32
  %.not119 = icmp eq i16 %i.bq, 0
  br i1 %.not119, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge138
  %i.br = add i32 %i.i, 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr %4, i64 %i.bs
  store i64 %3, ptr %i.bt, align 8, !tbaa !11
  br label %bb.ai

bb.ab:                                            ; preds = %._crit_edge138
  br i1 %5, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not120 = icmp eq i64 %.2113.lcssa, 0
  br i1 %.not120, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = tail call i64 @rb_hash_dup(i64 noundef %3) #23
  tail call fastcc void @args_setup_kw_parameters_from_kwsplat(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %i.bu, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ab
  %i.bv = load i64, ptr %i.l, align 8, !tbaa !77  ; 2 uses
  %i.bw = and i64 %i.bv, 32768
  %.not.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bx = lshr i64 %i.bv, 16
  %i.by = and i64 %i.bx, 15
  br label %RHASH_EMPTY_P.exit

bb.ag:                                            ; preds = %bb.ae
  %i.bz = add i64 %3, 24
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.af, %bb.ag
  %.0.i.i = phi i64 [ %i.by, %bb.af ], [ %i.cc, %bb.ag ]
  %i.cd = icmp eq i64 %.0.i.i, 0
  br i1 %i.cd, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %RHASH_EMPTY_P.exit
  %i.ce = tail call i64 @rb_hash_keys(i64 noundef %3) #23
  tail call fastcc void @argument_kw_error(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str.155, i64 noundef %i.ce) #58
  unreachable

bb.ai:                                            ; preds = %bb.ad, %bb.ac, %RHASH_EMPTY_P.exit, %bb.aa
  %i.cf = icmp eq i64 %.0114.lcssa, 4
  %.3117 = select i1 %i.cf, i64 %.0109.lcssa, i64 %.0114.lcssa
  %i.cg = sext i32 %i.i to i64
  %i.ch = getelementptr [8 x i8], ptr %4, i64 %i.cg
  store i64 %.3117, ptr %i.ch, align 8, !tbaa !11
  ret void
}

declare i64 @rb_hash_keys(i64 noundef) local_unnamed_addr #4

declare i64 @rb_to_hash_type(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_dup(i64 noundef) local_unnamed_addr #4

declare ptr @rb_ary_ptr_use_start(i64 noundef) local_unnamed_addr #4

declare void @rb_ary_ptr_use_end(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_resize(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_unshift(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_behead(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_delete_entry(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_lookup2(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal i64 @vm_call_cfunc_only_splat(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 4 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr i8, ptr %i.b, i64 -8       ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %i.f = inttoptr i64 %i.e to ptr                 ; 7 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77   ; 3 uses
  %i.h = and i64 %i.g, 8192
  %.not.i.i = icmp eq i64 %i.h, 0                 ; 4 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.g, 15
  %i.j = and i64 %i.i, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.f, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.j, %bb.b ], [ %i.l, %bb.c ] ; 4 uses
  %i.m = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.m, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #57
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.n = icmp sgt i64 %.0.i.i, 0
  br i1 %i.n, label %bb.e, label %.split18

bb.e:                                             ; preds = %RARRAY_LENINT.exit
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.f, i64 16
  br label %rb_array_const_ptr.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.f, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.f, %bb.g
  %.0.i19 = phi ptr [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %i.r = getelementptr [8 x i8], ptr %.0.i19, i64 %.0.i.i
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11   ; 4 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = and i64 %i.t, 7
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %.split18, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %rb_array_const_ptr.exit
  %i.y = inttoptr i64 %i.t to ptr
  %i.z = load i64, ptr %i.y, align 8, !tbaa !77   ; 3 uses
  %i.aa = and i64 %i.z, 8223
  %or.cond.not = icmp eq i64 %i.aa, 8200
  br i1 %or.cond.not, label %bb.p, label %.split18, !prof !774

.split18:                                         ; preds = %rb_array_const_ptr.exit, %rbimpl_RB_TYPE_P_fastpath.exit, %RARRAY_LENINT.exit
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.split18
  %i.ab = lshr i64 %i.g, 15
  %i.ac = and i64 %i.ab, 127
  br label %rb_array_len.exit.i.i

bb.i:                                             ; preds = %.split18
  %i.ad = getelementptr i8, ptr %i.f, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !27
  br label %rb_array_len.exit.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i64 [ %i.ac, %bb.h ], [ %i.ae, %bb.i ] ; 12 uses
  %i.af = add i64 %.0.i.i.i, 2147483648
  %.not.i1.i.i = icmp ult i64 %i.af, 4294967296
  br i1 %.not.i1.i.i, label %RARRAY_LENINT.exit.i, label %bb.j

bb.j:                                             ; preds = %rb_array_len.exit.i.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i.i) #57
  unreachable

RARRAY_LENINT.exit.i:                             ; preds = %rb_array_len.exit.i.i
  %i.ag = trunc nsw i64 %.0.i.i.i to i32
  %i.ah = icmp sgt i64 %.0.i.i.i, 128
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !177

bb.k:                                             ; preds = %RARRAY_LENINT.exit.i
  %i.ai = tail call i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %vm_call_cfunc_array_argv.exit

bb.l:                                             ; preds = %RARRAY_LENINT.exit.i
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %i.f, i64 16
  br label %rb_array_const_ptr.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ak = getelementptr i8, ptr %i.f, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit.i

rb_array_const_ptr.exit.i:                        ; preds = %bb.n, %bb.m
  %.0.i.i20 = phi ptr [ %i.aj, %bb.m ], [ %i.al, %bb.n ] ; 11 uses
  %.0.i.i2027 = ptrtoaddr ptr %.0.i.i20 to i64
  %i.am = getelementptr i8, ptr %2, i64 36
  store i8 0, ptr %i.am, align 4, !tbaa !231
  %i.an = getelementptr i8, ptr %i.b, i64 -16     ; 6 uses
  %3 = shl nsw i64 %.0.i.i.i, 3
  %4 = getelementptr i8, ptr %i.b, i64 %3
  %i.ao = getelementptr i8, ptr %4, i64 56
  %.not.i21 = icmp ugt ptr %1, %i.ao
  br i1 %.not.i21, label %.preheader.i, label %bb.o, !prof !72

.preheader.i:                                     ; preds = %rb_array_const_ptr.exit.i
  %i.ap = icmp sgt i64 %.0.i.i.i, 0
  br i1 %i.ap, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %min.iters.check = icmp ult i64 %.0.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.aq = add i64 %i.c, -8
  %i.ar = sub i64 %i.aq, %.0.i.i2027
  %diff.check = icmp ult i64 %i.ar, 32
  br i1 %diff.check, label %.lr.ph.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i, 9223372036854775804 ; 4 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.an, i64 %i.as  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.au ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %.0.i.i20, i64 %index ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %wide.load = load <2 x i64>, ptr %i.av, align 8, !tbaa !11
  %wide.load28 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !11
  %i.ax = getelementptr i8, ptr %next.gep, i64 8
  %i.ay = getelementptr i8, ptr %next.gep, i64 24
  store <2 x i64> %wide.load, ptr %i.ax, align 8, !tbaa !11
  store <2 x i64> %wide.load28, ptr %i.ay, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !792

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader30

.lr.ph.i.preheader30:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.03136.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %i.ba = sub nsw i64 %.0.i.i.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.ba, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader30, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader30 ] ; 2 uses
  %.03136.i.prol = phi ptr [ %i.bd, %.lr.ph.i.prol ], [ %.03136.i.ph, %.lr.ph.i.preheader30 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader30 ]
  %i.bb = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i.prol
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11
  %i.bd = getelementptr i8, ptr %.03136.i.prol, i64 8 ; 4 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !11
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !793

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader30
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader30 ], [ %i.bd, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader30 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.03136.i.unr = phi ptr [ %.03136.i.ph, %.lr.ph.i.preheader30 ], [ %i.bd, %.lr.ph.i.prol ]
  %i.be = sub nsw i64 %indvars.iv.i.ph, %.0.i.i.i
  %i.bf = icmp ugt i64 %i.be, -8
  br i1 %i.bf, label %._crit_edge.i, label %.lr.ph.i

bb.o:                                             ; preds = %rb_array_const_ptr.exit.i
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.03136.i = phi ptr [ %i.ck, %.lr.ph.i ], [ %.03136.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %i.bg = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11
  %i.bi = getelementptr i8, ptr %.03136.i, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !11
  %i.bj = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !11
  %i.bm = getelementptr i8, ptr %.03136.i, i64 16
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !11
  %i.bn = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11
  %i.bq = getelementptr i8, ptr %.03136.i, i64 24
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !11
  %i.br = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.bs = getelementptr i8, ptr %i.br, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11
  %i.bu = getelementptr i8, ptr %.03136.i, i64 32
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !11
  %i.bv = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !11
  %i.by = getelementptr i8, ptr %.03136.i, i64 40
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !11
  %i.bz = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !11
  %i.cc = getelementptr i8, ptr %.03136.i, i64 48
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !11
  %i.cd = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 48
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !11
  %i.cg = getelementptr i8, ptr %.03136.i, i64 56
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !11
  %i.ch = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 56
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !11
  %i.ck = getelementptr i8, ptr %.03136.i, i64 64 ; 3 uses
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !11
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %.0.i.i.i
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !794

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.preheader.i
  %.031.lcssa.i = phi ptr [ %i.an, %.preheader.i ], [ %i.at, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ck, %.lr.ph.i ]
  %i.cl = getelementptr i8, ptr %.031.lcssa.i, i64 8
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !73
  %i.cm = tail call fastcc i64 @vm_call_cfunc_with_frame_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.ag, ptr noundef nonnull %i.d, ptr noundef %i.an)
  br label %vm_call_cfunc_array_argv.exit

bb.p:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cn = and i64 %i.z, 32768
  %.not.i.i.i23 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i23, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.co = lshr i64 %i.z, 16
  %i.cp = and i64 %i.co, 15
  br label %RHASH_EMPTY_P.exit

bb.r:                                             ; preds = %bb.p
  %i.cq = add i64 %i.t, 24
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.q, %bb.r
  %.0.i.i24 = phi i64 [ %i.cp, %bb.q ], [ %i.ct, %bb.r ]
  %i.cu = icmp eq i64 %.0.i.i24, 0
  br i1 %i.cu, label %.split, label %bb.s

bb.s:                                             ; preds = %RHASH_EMPTY_P.exit
  %i.cv = tail call i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %vm_call_cfunc_array_argv.exit

.split:                                           ; preds = %RHASH_EMPTY_P.exit
  %i.cw = tail call fastcc i64 @vm_call_cfunc_array_argv(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %vm_call_cfunc_array_argv.exit

vm_call_cfunc_array_argv.exit:                    ; preds = %._crit_edge.i, %bb.k, %.split, %bb.s
  %.017 = phi i64 [ %i.cv, %bb.s ], [ %i.cw, %.split ], [ %i.ai, %bb.k ], [ %i.cm, %._crit_edge.i ]
  ret i64 %.017
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal i64 @vm_call_cfunc_only_splat_kw(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 5 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr i8, ptr %i.b, i64 -8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 5 uses
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.e, 0
  %i.h = and i64 %i.e, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.b
  %i.k = inttoptr i64 %i.e to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !77   ; 3 uses
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 8
  br i1 %i.n, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.o = and i64 %i.l, 32768
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = lshr i64 %i.l, 16
  %i.q = and i64 %i.p, 15
  br label %RHASH_EMPTY_P.exit

bb.e:                                             ; preds = %bb.c
  %i.r = add i64 %i.e, 24
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.q, %bb.d ], [ %i.u, %bb.e ]
  %i.v = icmp eq i64 %.0.i.i, 0
  br i1 %i.v, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.f:                                             ; preds = %RHASH_EMPTY_P.exit, %bb.a
  %i.w = getelementptr i8, ptr %i.b, i64 -16      ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  %i.y = inttoptr i64 %i.x to ptr                 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !77   ; 2 uses
  %i.aa = and i64 %i.z, 8192
  %.not.i.i.i11 = icmp eq i64 %i.aa, 0            ; 2 uses
  br i1 %.not.i.i.i11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = lshr i64 %i.z, 15
  %i.ac = and i64 %i.ab, 127
  br label %rb_array_len.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.y, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !27
  br label %rb_array_len.exit.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i64 [ %i.ac, %bb.g ], [ %i.ae, %bb.h ] ; 12 uses
  %i.af = add i64 %.0.i.i.i, 2147483648
  %.not.i1.i.i = icmp ult i64 %i.af, 4294967296
  br i1 %.not.i1.i.i, label %RARRAY_LENINT.exit.i, label %bb.i

bb.i:                                             ; preds = %rb_array_len.exit.i.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i.i) #57
  unreachable

RARRAY_LENINT.exit.i:                             ; preds = %rb_array_len.exit.i.i
  %i.ag = trunc nsw i64 %.0.i.i.i to i32
  %i.ah = icmp sgt i64 %.0.i.i.i, 128
  br i1 %i.ah, label %bb.j, label %bb.k, !prof !177

bb.j:                                             ; preds = %RARRAY_LENINT.exit.i
  %i.ai = tail call i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %vm_call_cfunc_array_argv.exit

bb.k:                                             ; preds = %RARRAY_LENINT.exit.i
  br i1 %.not.i.i.i11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %i.y, i64 16
  br label %rb_array_const_ptr.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %i.y, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit.i

rb_array_const_ptr.exit.i:                        ; preds = %bb.m, %bb.l
  %.0.i.i12 = phi ptr [ %i.aj, %bb.l ], [ %i.al, %bb.m ] ; 11 uses
  %.0.i.i1217 = ptrtoaddr ptr %.0.i.i12 to i64
  %i.am = getelementptr i8, ptr %2, i64 36
  store i8 0, ptr %i.am, align 4, !tbaa !231
  %i.an = getelementptr i8, ptr %i.b, i64 -24     ; 6 uses
  %3 = shl nsw i64 %.0.i.i.i, 3
  %4 = getelementptr i8, ptr %i.b, i64 %3
  %i.ao = getelementptr i8, ptr %4, i64 56
  %.not.i = icmp ugt ptr %1, %i.ao
  br i1 %.not.i, label %.preheader.i, label %bb.n, !prof !72

.preheader.i:                                     ; preds = %rb_array_const_ptr.exit.i
  %i.ap = icmp sgt i64 %.0.i.i.i, 0
  br i1 %i.ap, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %min.iters.check = icmp ult i64 %.0.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.aq = add i64 %i.c, -16
  %i.ar = sub i64 %i.aq, %.0.i.i1217
  %diff.check = icmp ult i64 %i.ar, 32
  br i1 %diff.check, label %.lr.ph.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i, 9223372036854775804 ; 4 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.an, i64 %i.as  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.au ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %.0.i.i12, i64 %index ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %wide.load = load <2 x i64>, ptr %i.av, align 8, !tbaa !11
  %wide.load18 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !11
  %i.ax = getelementptr i8, ptr %next.gep, i64 8
  %i.ay = getelementptr i8, ptr %next.gep, i64 24
  store <2 x i64> %wide.load, ptr %i.ax, align 8, !tbaa !11
  store <2 x i64> %wide.load18, ptr %i.ay, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !795

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader20

.lr.ph.i.preheader20:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.03136.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %i.ba = sub nsw i64 %.0.i.i.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.ba, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader20, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader20 ] ; 2 uses
  %.03136.i.prol = phi ptr [ %i.bd, %.lr.ph.i.prol ], [ %.03136.i.ph, %.lr.ph.i.preheader20 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader20 ]
  %i.bb = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i.prol
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11
  %i.bd = getelementptr i8, ptr %.03136.i.prol, i64 8 ; 4 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !11
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !796

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader20
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader20 ], [ %i.bd, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader20 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.03136.i.unr = phi ptr [ %.03136.i.ph, %.lr.ph.i.preheader20 ], [ %i.bd, %.lr.ph.i.prol ]
  %i.be = sub nsw i64 %indvars.iv.i.ph, %.0.i.i.i
  %i.bf = icmp ugt i64 %i.be, -8
  br i1 %i.bf, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %rb_array_const_ptr.exit.i
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.03136.i = phi ptr [ %i.ck, %.lr.ph.i ], [ %.03136.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %i.bg = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11
  %i.bi = getelementptr i8, ptr %.03136.i, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !11
  %i.bj = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !11
  %i.bm = getelementptr i8, ptr %.03136.i, i64 16
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !11
  %i.bn = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11
  %i.bq = getelementptr i8, ptr %.03136.i, i64 24
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !11
  %i.br = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.bs = getelementptr i8, ptr %i.br, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11
  %i.bu = getelementptr i8, ptr %.03136.i, i64 32
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !11
  %i.bv = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !11
  %i.by = getelementptr i8, ptr %.03136.i, i64 40
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !11
  %i.bz = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !11
  %i.cc = getelementptr i8, ptr %.03136.i, i64 48
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !11
  %i.cd = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 48
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !11
  %i.cg = getelementptr i8, ptr %.03136.i, i64 56
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !11
  %i.ch = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 56
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !11
  %i.ck = getelementptr i8, ptr %.03136.i, i64 64 ; 3 uses
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !11
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %.0.i.i.i
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !797

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.preheader.i
  %.031.lcssa.i = phi ptr [ %i.an, %.preheader.i ], [ %i.at, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ck, %.lr.ph.i ]
  %i.cl = getelementptr i8, ptr %.031.lcssa.i, i64 8
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !73
  %i.cm = tail call fastcc i64 @vm_call_cfunc_with_frame_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.ag, ptr noundef nonnull %i.w, ptr noundef %i.an)
  br label %vm_call_cfunc_array_argv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b, %RHASH_EMPTY_P.exit, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cn = tail call i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %vm_call_cfunc_array_argv.exit

vm_call_cfunc_array_argv.exit:                    ; preds = %._crit_edge.i, %bb.j, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.0 = phi i64 [ %i.cn, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.ai, %bb.j ], [ %i.cm, %._crit_edge.i ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !226
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 4 uses
  tail call fastcc void @CALLER_SETUP_ARG(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %i.b, i32 noundef -3)
  %i.c = getelementptr i8, ptr %2, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !573  ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @RARRAY_LENINT(i64 noundef %i.d)
  %i.f = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.f, i64 16
  br label %rb_array_const_ptr.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.f, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.i, %bb.c ], [ %i.k, %bb.d ]
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.n = getelementptr i8, ptr %i.m, i64 -16
  %i.o = tail call fastcc i64 @vm_call_cfunc_with_frame_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.e, ptr noundef %.0.i, ptr noundef %i.n)
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !233
  %i.r = ptrtoint ptr %i.b to i64                 ; 4 uses
  %.not.i.i.i = trunc i64 %i.r to i1              ; 2 uses
  br i1 %.not.i.i.i, label %vm_ci_flag.exit.i, label %vm_ci_flag.exit.thread.i

vm_ci_flag.exit.i:                                ; preds = %bb.e
  %i.s = and i64 %i.r, 65536
  %.not.i23 = icmp eq i64 %i.s, 0
  br i1 %.not.i23, label %bb.f, label %CC_SET_FASTPATH.exit

vm_ci_flag.exit.thread.i:                         ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.b, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !173, !alias.scope !798 ; 2 uses
  %i.v = and i64 %i.u, 1
  %.not6.i = icmp eq i64 %i.v, 0
  br i1 %.not6.i, label %.thread.i, label %CC_SET_FASTPATH.exit

bb.f:                                             ; preds = %vm_ci_flag.exit.i
  %i.w = trunc i64 %i.r to i32
  %i.x = lshr i32 %i.w, 16
  br label %rb_splat_or_kwargs_p.exit

.thread.i:                                        ; preds = %vm_ci_flag.exit.thread.i
  %i.y = trunc i64 %i.u to i32
end_hunk_2
