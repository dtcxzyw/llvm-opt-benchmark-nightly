inline.NumInlined: 1673
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@pop_end_expect_token_locations:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !424
  tail call void @ruby_xfree(ptr noundef nonnull %i.b) #31
  store ptr %i.d, ptr %i.a, align 8, !tbaa !423
  tail call fastcc void @debug_end_expect_token_locations(ptr noundef nonnull %0, ptr noundef nonnull @.str.583)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @parser_compile_error(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ...) unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = getelementptr i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !56
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !188
  %i.f = getelementptr i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = add i64 %i.j, 2147483648
  %.not.i = icmp ult i64 %i.k, 4294967296
  br i1 %.not.i, label %rb_long2int_inline.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_out_of_int(i64 noundef %i.j) #32
  unreachable

rb_long2int_inline.exit:                          ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 196
  %i.m = trunc nsw i64 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %rb_long2int_inline.exit, %bb.b
  %.014.in = phi ptr [ %i.a, %bb.b ], [ %i.l, %rb_long2int_inline.exit ]
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.m, %rb_long2int_inline.exit ]
  %.014 = load i32, ptr %.014.in, align 4, !tbaa !7
  %i.n = getelementptr i8, ptr %0, i64 256
  %i.o = load i64, ptr %i.n, align 8, !tbaa !193
  %i.p = tail call i64 @rb_io_flush(i64 noundef %i.o) #31 ; 0 uses
  %i.q = getelementptr i8, ptr %0, i64 360        ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = or i32 %i.r, 512
  store i32 %i.s, ptr %i.q, align 8
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.t = getelementptr i8, ptr %0, i64 368        ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !190
  %i.v = getelementptr i8, ptr %0, i64 208
  %i.w = load i64, ptr %i.v, align 8, !tbaa !427
  %i.x = getelementptr i8, ptr %0, i64 216
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !176
  %i.z = call i64 @rb_syntax_error_append(i64 noundef %i.u, i64 noundef %i.w, i32 noundef %.014, i32 noundef %.0, ptr noundef %i.y, ptr noundef %2, ptr noundef nonnull %3) #31
  store i64 %i.z, ptr %i.t, align 8, !tbaa !190
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @mark_lvar_used(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr null, ptr %i.a, align 8, !tbaa !26
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %local_id_ref.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !69
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 8
  %i.e = and i32 %i.d, 127
  switch i32 %i.e, label %local_id_ref.exit.thread [
    i32 25, label %bb.c
    i32 26, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !266  ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101  ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !147  ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !198  ; 2 uses
  %i.m = getelementptr i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !199  ; 2 uses
  %.not58.i = icmp eq ptr %i.k, null
  br i1 %.not58.i, label %.critedge37.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %.02961.i = phi ptr [ %.1.i, %bb.f ], [ %i.n, %bb.c ] ; 3 uses
  %.03060.i = phi ptr [ %i.s, %bb.f ], [ %i.l, %bb.c ] ; 2 uses
  %.03159.i = phi ptr [ %i.p, %bb.f ], [ %i.k, %bb.c ] ; 2 uses
  %i.o = getelementptr i8, ptr %.03159.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !148  ; 4 uses
  %i.q = icmp ult ptr %i.p, inttoptr (i64 2 to ptr)
  br i1 %i.q, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr i8, ptr %.03060.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !148  ; 2 uses
  %.not36.i = icmp eq ptr %.02961.i, null
  br i1 %.not36.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %.02961.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !148
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i = phi ptr [ %i.u, %bb.e ], [ null, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.critedge37.i, label %.lr.ph.i, !llvm.loop !386

.critedge.i:                                      ; preds = %.lr.ph.i
  %.not64.i = icmp eq ptr %i.p, inttoptr (i64 1 to ptr)
  br i1 %.not64.i, label %bb.g, label %.critedge37.i

bb.g:                                             ; preds = %.critedge.i
  %i.v = getelementptr i8, ptr %0, i64 352
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !68
  %i.x = tail call i32 @rb_local_defined(i64 noundef %i.g, ptr noundef %i.w) #31 ; 0 uses
  br label %local_id_ref.exit.thread

.critedge37.i:                                    ; preds = %bb.f, %.critedge.i, %bb.c
  %.03156.i = phi ptr [ %.03159.i, %.critedge.i ], [ null, %bb.c ], [ null, %bb.f ] ; 3 uses
  %.03054.i = phi ptr [ %.03060.i, %.critedge.i ], [ %i.l, %bb.c ], [ %i.s, %bb.f ] ; 3 uses
  %.02952.i = phi ptr [ %.02961.i, %.critedge.i ], [ %i.n, %bb.c ], [ %.1.i, %bb.f ] ; 2 uses
  %i.y = icmp ult ptr %.03054.i, inttoptr (i64 2 to ptr)
  br i1 %i.y, label %vtable_included.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge37.i
  %i.z = getelementptr i8, ptr %.03054.i, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !195 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i, label %vtable_included.exit.thread.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ac = load ptr, ptr %.03054.i, align 8, !tbaa !197
  %i.ad = zext nneg i32 %i.aa to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !11
  %i.ag = icmp eq i64 %i.af, %i.g
  br i1 %i.ag, label %local_id_ref.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.ad
  br i1 %exitcond.not.i.i, label %vtable_included.exit.thread.i, label %bb.h, !llvm.loop !214

vtable_included.exit.thread.i:                    ; preds = %bb.i, %.preheader.i.i, %.critedge37.i
  %i.ah = icmp ult ptr %.03156.i, inttoptr (i64 2 to ptr)
  br i1 %i.ah, label %local_id_ref.exit.thread, label %.preheader.i38.i

.preheader.i38.i:                                 ; preds = %vtable_included.exit.thread.i
  %i.ai = getelementptr i8, ptr %.03156.i, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !195 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i40.i, label %local_id_ref.exit.thread

.lr.ph.i40.i:                                     ; preds = %.preheader.i38.i
  %i.al = load ptr, ptr %.03156.i, align 8, !tbaa !197
  %i.am = zext nneg i32 %i.aj to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i40.i
  %indvars.iv73.i = phi i64 [ %indvars.iv.next74.i, %bb.k ], [ 0, %.lr.ph.i40.i ] ; 3 uses
  %i.an = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv73.i
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !11
  %i.ap = icmp eq i64 %i.ao, %i.g
  br i1 %i.ap, label %vtable_included.exit43.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond.not.i42.i = icmp eq i64 %indvars.iv.next74.i, %i.am
  br i1 %exitcond.not.i42.i, label %local_id_ref.exit.thread, label %bb.j, !llvm.loop !214

vtable_included.exit43.i:                         ; preds = %bb.j
  %.not13 = icmp eq ptr %.02952.i, null
  br i1 %.not13, label %local_id_ref.exit.thread, label %local_id_ref.exit

local_id_ref.exit:                                ; preds = %vtable_included.exit43.i
  %i.aq = load ptr, ptr %.02952.i, align 8, !tbaa !197
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv73.i ; 3 uses
  %.not42 = icmp eq ptr %i.ar, null
  br i1 %.not42, label %local_id_ref.exit.thread, label %bb.l

bb.l:                                             ; preds = %local_id_ref.exit
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11
  %i.at = or i64 %i.as, -9223372036854775808
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !11
  br label %local_id_ref.exit.thread

bb.m:                                             ; preds = %bb.b
  %i.au = getelementptr i8, ptr %1, i64 32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !268
  %i.aw = call i32 @rb_parser_dvar_defined_ref(ptr noundef %0, i64 noundef %i.av, ptr noundef nonnull %i.a)
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.az = icmp ne ptr %i.ay, null
  %or.cond3 = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond3, label %bb.n, label %local_id_ref.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !11
  %i.bb = or i64 %i.ba, -9223372036854775808
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !11
  br label %local_id_ref.exit.thread

local_id_ref.exit.thread:                         ; preds = %bb.h, %bb.k, %vtable_included.exit43.i, %bb.g, %.preheader.i38.i, %vtable_included.exit.thread.i, %bb.b, %bb.l, %local_id_ref.exit, %bb.n, %bb.m, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @new_kw_arg(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 74, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #31 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 74) #31
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %2, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !69
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !69
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !217  ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !217
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !218
  %i.n = getelementptr i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !407
  %i.o = getelementptr i8, ptr %i.b, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !409
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_opt_arg_new(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 73, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #31 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 73) #31
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %2, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !69
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !69
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !217  ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !217
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !218
  %i.n = getelementptr i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !428
  %i.o = getelementptr i8, ptr %i.b, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !150
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @new_bv(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 171
  %i.c = and i64 %1, 14
  %i.d = icmp eq i64 %i.c, 0
  %i.e = and i1 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @rb_id2str(i64 noundef %1) #31
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.901, i64 noundef %i.f)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.g = tail call fastcc i32 @shadowing_lvar_0(ptr noundef %0, i64 noundef %1)
  %.not11 = icmp eq i32 %i.g, 0
  br i1 %.not11, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @local_var(ptr noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr null, ptr %i.a, align 8, !tbaa !26
  %i.h = call i32 @rb_parser_dvar_defined_ref(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a)
  %i.i = icmp ne i32 %i.h, 0
  %i.j = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.k = icmp ne ptr %i.j, null
  %or.cond = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !11
  %i.m = or i64 %i.l, -9223372036854775808
  store i64 %i.m, ptr %i.j, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.a, %bb.g, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @dyna_push(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168        ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.d = tail call noalias nonnull dereferenceable(24) ptr @ruby_xmalloc(i64 noundef 24) #34 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !195
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 8, ptr %i.f, align 4, !tbaa !196
  %i.g = tail call noalias nonnull dereferenceable(64) ptr @ruby_xmalloc2(i64 noundef 8, i64 noundef 8) #33
  store ptr %i.g, ptr %i.d, align 8, !tbaa !197
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %i.h, align 8, !tbaa !148
  %i.i = getelementptr i8, ptr %0, i64 360        ; 3 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 32
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %vtable_alloc_gen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.939, i32 noundef 15144, ptr noundef nonnull %i.d)
  br label %vtable_alloc_gen.exit

vtable_alloc_gen.exit:                            ; preds = %bb.a, %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  store ptr %i.d, ptr %i.l, align 8, !tbaa !198
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !147
  %i.o = tail call noalias nonnull dereferenceable(24) ptr @ruby_xmalloc(i64 noundef 24) #34 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 0, ptr %i.p, align 8, !tbaa !195
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 8, ptr %i.q, align 4, !tbaa !196
  %i.r = tail call noalias nonnull dereferenceable(64) ptr @ruby_xmalloc2(i64 noundef 8, i64 noundef 8) #33
  store ptr %i.r, ptr %i.o, align 8, !tbaa !197
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.n, ptr %i.s, align 8, !tbaa !148
  %i.t = load i32, ptr %i.i, align 8
  %i.u = and i32 %i.t, 32
  %.not.i11 = icmp eq i32 %i.u, 0
  br i1 %.not.i11, label %vtable_alloc_gen.exit12, label %bb.c

bb.c:                                             ; preds = %vtable_alloc_gen.exit
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.939, i32 noundef 15145, ptr noundef nonnull %i.o)
  br label %vtable_alloc_gen.exit12

vtable_alloc_gen.exit12:                          ; preds = %vtable_alloc_gen.exit, %bb.c
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  store ptr %i.o, ptr %i.w, align 8, !tbaa !147
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !199  ; 2 uses
  %.not = icmp eq ptr %i.y, null
end_hunk_0
begin_hunk_1_@numparam_nested_p:bb.a
  %i.g = icmp ne ptr %i.d, null                   ; 3 uses
  %i.h = icmp ne ptr %i.f, null
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.b, label %parser_show_error_line.exit

bb.b:                                             ; preds = %bb.a
  %i.i = select i1 %i.g, ptr %i.d, ptr %i.f       ; 3 uses
  %i.j = select i1 %i.g, ptr @.str.874, ptr @.str.875
  %i.k = getelementptr i8, ptr %0, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %nd_line.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.i, align 8, !tbaa !69
  %i.n = lshr i64 %i.m, 15
  %i.o = trunc i64 %i.n to i32
  br label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.o, %bb.c ], [ -1, %bb.b ]
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.873, ptr noundef nonnull %i.j, ptr noundef %i.l, i32 noundef %.0.i)
  %i.p = getelementptr i8, ptr %i.i, i64 8        ; 3 uses
  %i.q = getelementptr i8, ptr %0, i64 196
  %i.r = load i32, ptr %i.q, align 4, !tbaa !29   ; 2 uses
  %.not.i15 = icmp eq ptr %i.p, null
  br i1 %.not.i15, label %parser_show_error_line.exit, label %bb.d

bb.d:                                             ; preds = %nd_line.exit
  %i.s = load i32, ptr %i.p, align 4, !tbaa !51
  %i.t = icmp eq i32 %i.s, %i.r
  br i1 %i.t, label %bb.e, label %parser_show_error_line.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !189
  %i.w = getelementptr i8, ptr %0, i64 368
  %i.x = load i64, ptr %i.w, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.x, ptr noundef nonnull readonly %i.p, i32 noundef %i.r, ptr noundef %i.v)
  br label %parser_show_error_line.exit

parser_show_error_line.exit:                      ; preds = %bb.e, %bb.d, %nd_line.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %nd_line.exit ], [ 1, %bb.d ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @it_used_p(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !169  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %parser_show_error_line.exit, label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.g = load i64, ptr %i.d, align 8, !tbaa !69
  %i.h = lshr i64 %i.g, 15
  %i.i = trunc i64 %i.h to i32
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.876, ptr noundef %i.f, i32 noundef %i.i)
  %i.j = getelementptr i8, ptr %i.d, i64 8        ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 196
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29   ; 2 uses
  %.not.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i8, label %parser_show_error_line.exit, label %bb.b

bb.b:                                             ; preds = %nd_line.exit
  %i.m = load i32, ptr %i.j, align 8, !tbaa !51
  %i.n = icmp eq i32 %i.m, %i.l
  br i1 %i.n, label %bb.c, label %parser_show_error_line.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !189
  %i.q = getelementptr i8, ptr %0, i64 368
  %i.r = load i64, ptr %i.q, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.r, ptr noundef nonnull readonly %i.j, i32 noundef %i.l, ptr noundef %i.p)
  br label %parser_show_error_line.exit

parser_show_error_line.exit:                      ; preds = %bb.c, %bb.b, %nd_line.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %nd_line.exit ], [ 1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @local_id_ref(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !198  ; 2 uses
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !199  ; 2 uses
  %.not58 = icmp eq ptr %i.d, null
  br i1 %.not58, label %.critedge37, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.02961 = phi ptr [ %.1, %bb.d ], [ %i.g, %bb.a ] ; 3 uses
  %.03060 = phi ptr [ %i.l, %bb.d ], [ %i.e, %bb.a ] ; 2 uses
  %.03159 = phi ptr [ %i.i, %bb.d ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = getelementptr i8, ptr %.03159, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !148  ; 4 uses
  %i.j = icmp ult ptr %i.i, inttoptr (i64 2 to ptr)
  br i1 %i.j, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %.03060, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !148  ; 2 uses
  %.not36 = icmp eq ptr %.02961, null
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.02961, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !148
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge37, label %.lr.ph, !llvm.loop !386

.critedge:                                        ; preds = %.lr.ph
  %.not64 = icmp eq ptr %i.i, inttoptr (i64 1 to ptr)
  br i1 %.not64, label %bb.e, label %.critedge37

bb.e:                                             ; preds = %.critedge
  %i.o = getelementptr i8, ptr %0, i64 352
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.q = tail call i32 @rb_local_defined(i64 noundef %1, ptr noundef %i.p) #31
  br label %vtable_included.exit

.critedge37:                                      ; preds = %bb.d, %bb.a, %.critedge
  %.03156 = phi ptr [ %.03159, %.critedge ], [ null, %bb.a ], [ null, %bb.d ] ; 3 uses
  %.03054 = phi ptr [ %.03060, %.critedge ], [ %i.e, %bb.a ], [ %i.l, %bb.d ] ; 3 uses
  %.02952 = phi ptr [ %.02961, %.critedge ], [ %i.g, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.r = icmp ult ptr %.03054, inttoptr (i64 2 to ptr)
  br i1 %i.r, label %vtable_included.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge37
  %i.s = getelementptr i8, ptr %.03054, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !195  ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i, label %vtable_included.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.v = load ptr, ptr %.03054, align 8, !tbaa !197
  %i.w = zext nneg i32 %i.t to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11
  %i.z = icmp eq i64 %i.y, %1
  br i1 %i.z, label %vtable_included.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.w
  br i1 %exitcond.not.i, label %vtable_included.exit.thread, label %bb.f, !llvm.loop !214

vtable_included.exit.thread:                      ; preds = %bb.g, %.preheader.i, %.critedge37
  %i.aa = icmp ult ptr %.03156, inttoptr (i64 2 to ptr)
  br i1 %i.aa, label %vtable_included.exit, label %.preheader.i38

.preheader.i38:                                   ; preds = %vtable_included.exit.thread
  %i.ab = getelementptr i8, ptr %.03156, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i40, label %vtable_included.exit

.lr.ph.i40:                                       ; preds = %.preheader.i38
  %i.ae = load ptr, ptr %.03156, align 8, !tbaa !197
  %i.af = zext nneg i32 %i.ac to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i40
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %bb.i ], [ 0, %.lr.ph.i40 ] ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv73
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11
  %i.ai = icmp eq i64 %i.ah, %1
  br i1 %i.ai, label %vtable_included.exit43, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %indvars.iv.next74, %i.af
  br i1 %exitcond.not.i42, label %vtable_included.exit, label %bb.h, !llvm.loop !214

vtable_included.exit43:                           ; preds = %bb.h
  %i.aj = icmp ne ptr %.02952, null
  %i.ak = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.ak, %i.aj
  br i1 %or.cond3, label %bb.j, label %vtable_included.exit

bb.j:                                             ; preds = %vtable_included.exit43
  %i.al = load ptr, ptr %.02952, align 8, !tbaa !197
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv73
  store ptr %i.am, ptr %2, align 8, !tbaa !26
  br label %vtable_included.exit

vtable_included.exit:                             ; preds = %bb.f, %bb.i, %vtable_included.exit43, %bb.j, %vtable_included.exit.thread, %.preheader.i38, %bb.e
  %.0 = phi i32 [ %i.q, %bb.e ], [ 0, %bb.i ], [ 1, %vtable_included.exit43 ], [ 1, %bb.j ], [ 0, %vtable_included.exit.thread ], [ 0, %.preheader.i38 ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @parser_numbered_param(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !198  ; 7 uses
  %switch = icmp ult ptr %i.d, inttoptr (i64 2 to ptr)
  br i1 %switch, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !148
  %switch23 = icmp ult ptr %i.f, inttoptr (i64 2 to ptr)
  br i1 %switch23, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 312        ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !109  ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.870)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp slt i32 %i.h, %1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %1, ptr %i.g, align 8, !tbaa !109
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = getelementptr i8, ptr %i.d, i64 8        ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !195  ; 2 uses
  %i.m = icmp sgt i32 %1, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.n = getelementptr i8, ptr %0, i64 360
  %i.o = getelementptr i8, ptr %i.d, i64 12       ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %vtable_add_gen.exit
  %i.p = phi i32 [ %i.l, %.lr.ph ], [ %i.ae, %vtable_add_gen.exit ] ; 2 uses
  %i.q = shl i32 %i.p, 4
  %i.r = add i32 %i.q, 3777
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = load i32, ptr %i.n, align 8
  %i.u = and i32 %i.t, 32
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @rb_id2name(i64 noundef %i.s) #31
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.878, i32 noundef 10284, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.d, ptr noundef %i.v)
  %.pre = load i32, ptr %i.k, align 8, !tbaa !195
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = phi i32 [ %.pre, %bb.j ], [ %i.p, %bb.i ] ; 3 uses
  %i.x = load i32, ptr %i.o, align 4, !tbaa !196
  %i.y = icmp eq i32 %i.w, %i.x
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !197 ; 2 uses
  br i1 %i.y, label %bb.l, label %vtable_add_gen.exit

bb.l:                                             ; preds = %bb.k
  %i.z = shl i32 %i.w, 1                          ; 2 uses
  store i32 %i.z, ptr %i.o, align 4, !tbaa !196
  %i.aa = sext i32 %i.z to i64
  %i.ab = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre.i, i64 noundef %i.aa, i64 noundef 8) #38 ; 2 uses
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !197
  %.pre21.i = load i32, ptr %i.k, align 8, !tbaa !195
  br label %vtable_add_gen.exit

vtable_add_gen.exit:                              ; preds = %bb.l, %bb.k
  %i.ac = phi i32 [ %.pre21.i, %bb.l ], [ %i.w, %bb.k ] ; 2 uses
  %i.ad = phi ptr [ %i.ab, %bb.l ], [ %.pre.i, %bb.k ]
  %i.ae = add i32 %i.ac, 1                        ; 3 uses
  store i32 %i.ae, ptr %i.k, align 8, !tbaa !195
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr [8 x i8], ptr %i.ad, i64 %i.af
  store i64 %i.s, ptr %i.ag, align 8, !tbaa !11
  %i.ah = icmp sgt i32 %1, %i.ae
  br i1 %i.ah, label %bb.i, label %.loopexit, !llvm.loop !650

.loopexit:                                        ; preds = %vtable_add_gen.exit, %bb.h, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.b ], [ true, %bb.h ], [ true, %vtable_add_gen.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @numparam_used_p(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %parser_show_error_line.exit, label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.g = load i64, ptr %i.d, align 8, !tbaa !69
  %i.h = lshr i64 %i.g, 15
  %i.i = trunc i64 %i.h to i32
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.877, ptr noundef %i.f, i32 noundef %i.i)
  %i.j = getelementptr i8, ptr %i.d, i64 8        ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 196
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29   ; 2 uses
  %.not.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i8, label %parser_show_error_line.exit, label %bb.b

bb.b:                                             ; preds = %nd_line.exit
  %i.m = load i32, ptr %i.j, align 8, !tbaa !51
  %i.n = icmp eq i32 %i.m, %i.l
  br i1 %i.n, label %bb.c, label %parser_show_error_line.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !189
  %i.q = getelementptr i8, ptr %0, i64 368
  %i.r = load i64, ptr %i.q, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.r, ptr noundef nonnull readonly %i.j, i32 noundef %i.l, ptr noundef %i.p)
  br label %parser_show_error_line.exit

parser_show_error_line.exit:                      ; preds = %bb.c, %bb.b, %nd_line.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %nd_line.exit ], [ 1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vtable_add_gen(ptr nofree noundef captures(none) %0, i32 noundef range(i32 10284, 14995) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 360
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @rb_id2name(i64 noundef %4) #31
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.878, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef nonnull %0, ptr noundef nonnull @.str.879, ptr noundef %3)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %3, i64 8          ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !195  ; 3 uses
  %i.h = getelementptr i8, ptr %3, i64 12         ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !196
  %i.j = icmp eq i32 %i.g, %i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !197   ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = shl i32 %i.g, 1                          ; 2 uses
  store i32 %i.k, ptr %i.h, align 4, !tbaa !196
  %i.l = sext i32 %i.k to i64
  %i.m = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre, i64 noundef %i.l, i64 noundef 8) #38 ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !197
  %.pre21 = load i32, ptr %i.f, align 8, !tbaa !195
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i32 [ %.pre21, %bb.f ], [ %i.g, %bb.e ] ; 2 uses
  %i.o = phi ptr [ %i.m, %bb.f ], [ %.pre, %bb.e ]
  %i.p = add i32 %i.n, 1
  store i32 %i.p, ptr %i.f, align 8, !tbaa !195
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr [8 x i8], ptr %i.o, i64 %i.q
  store i64 %4, ptr %i.r, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
end_hunk_1
