inline.NumInlined: 1673
inline.NumDeleted: 268
begin_hunk_0_@endless_method_name:bb.a
token_info_drop.exit:                             ; preds = %parser_yyerror.exit, %bb.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @restore_defun(ptr noundef captures(none) initializes((312, 316)) %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 48
  %i.b = getelementptr i8, ptr %1, i64 64
  %.sroa.0.0.copyload = load i16, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr i8, ptr %0, i64 328        ; 2 uses
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, -969
  %i.f = and i16 %.sroa.0.0.copyload, 968
  %i.g = or disjoint i16 %i.e, %i.f
  store i16 %i.g, ptr %i.c, align 8
  %i.h = load i32, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 312
  store i32 %i.h, ptr %i.i, align 8, !tbaa !109
  %i.j = getelementptr i8, ptr %1, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108  ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !101  ; 5 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.b, label %.sink.split.i

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !107  ; 2 uses
  %.not14.i = icmp eq ptr %i.o, null
  br i1 %.not14.i, label %bb.c, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.b, %bb.a
  %.sink16.i = phi ptr [ %i.k, %bb.a ], [ %i.o, %bb.b ]
  %i.p = getelementptr i8, ptr %i.m, i64 40
  store ptr %.sink16.i, ptr %i.p, align 8, !tbaa !102
  br label %bb.c

bb.c:                                             ; preds = %.sink.split.i, %bb.b
  %i.q = icmp sgt i32 %i.h, 0
  br i1 %i.q, label %bb.d, label %numparam_pop.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.m, i64 32       ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106
  store ptr null, ptr %i.r, align 8, !tbaa !106
  br label %numparam_pop.exit

numparam_pop.exit:                                ; preds = %bb.c, %bb.d
  %.sink.i = phi ptr [ %i.s, %bb.d ], [ null, %bb.c ]
  %i.t = getelementptr i8, ptr %i.m, i64 48
  store ptr %.sink.i, ptr %i.t, align 8, !tbaa !107
  %i.u = getelementptr i8, ptr %i.m, i64 56
  store ptr null, ptr %i.u, align 8, !tbaa !169
  tail call fastcc void @clear_block_exit(ptr noundef nonnull %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @new_scope_body(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i = phi ptr [ %2, %bb.a ], [ %i.e, %bb.d ]  ; 4 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %remove_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0.val.i = load i64, ptr %.0.i, align 8, !tbaa !69
  %i.b = and i64 %.0.val.i, 32512
  %i.c = icmp eq i64 %i.b, 4608
  br i1 %i.c, label %bb.d, label %remove_begin.exit

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %.0.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %.not8.i = icmp eq ptr %i.e, null
  br i1 %.not8.i, label %remove_begin.exit, label %bb.b, !llvm.loop !77

remove_begin.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !257
  call fastcc void @reduce_nodes(ptr noundef %0, ptr noundef nonnull %i.a)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !257  ; 4 uses
  %i.g = tail call fastcc ptr @rb_node_scope_new(ptr noundef %0, ptr noundef %1, ptr noundef %i.f, ptr noundef %3, ptr noundef %4) ; 3 uses
  %i.h = getelementptr i8, ptr %4, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !55
  %i.j = sext i32 %i.i to i64
  %i.k = load i64, ptr %i.g, align 8, !tbaa !69
  %i.l = and i64 %i.k, 32767
  %i.m = shl nsw i64 %i.j, 15
  %i.n = or disjoint i64 %i.l, %i.m
  store i64 %i.n, ptr %i.g, align 8, !tbaa !69
  %i.o = load i32, ptr %4, align 4, !tbaa !51
  %.not.i9 = icmp eq ptr %i.f, null
  br i1 %.not.i9, label %set_line_body.exit, label %bb.e

bb.e:                                             ; preds = %remove_begin.exit
  %i.p = load i64, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = lshr i32 %i.q, 8
  %i.s = and i32 %i.r, 127
  switch i32 %i.s, label %set_line_body.exit [
    i32 19, label %bb.f
    i32 21, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = sext i32 %i.o to i64
  %i.u = and i64 %i.p, 32767
  %i.v = shl nsw i64 %i.t, 15
  %i.w = or disjoint i64 %i.u, %i.v
  store i64 %i.w, ptr %i.f, align 8, !tbaa !69
  br label %set_line_body.exit

set_line_body.exit:                               ; preds = %remove_begin.exit, %bb.e, %bb.f
  ret ptr %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rescued_expr(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(none) %3, i64 %.0.val, i64 %.8.val) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i = phi ptr [ %2, %bb.a ], [ %i.d, %bb.d ]  ; 4 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %remove_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0.val.i = load i64, ptr %.0.i, align 8, !tbaa !69
  %i.a = and i64 %.0.val.i, 32512
  %i.b = icmp eq i64 %i.a, 4608
  br i1 %i.b, label %bb.d, label %remove_begin.exit

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr i8, ptr %.0.i, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %.not8.i = icmp eq ptr %i.d, null
  br i1 %.not8.i, label %remove_begin.exit, label %bb.b, !llvm.loop !77

remove_begin.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %i.e = getelementptr i8, ptr %0, i64 288        ; 2 uses
  %.val.i.i = load ptr, ptr %i.e, align 8, !tbaa !129
  %i.f = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 20, i64 noundef range(i64 32, 129) 64, i64 noundef 8) #31 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.f, i32 noundef range(i32 0, 115) 20) #31
  %i.g = getelementptr i8, ptr %i.f, i64 8
  store i64 %.0.val, ptr %i.g, align 8
  %.sroa.8.0..sroa_idx = getelementptr i8, ptr %i.f, i64 16
  store i64 %.8.val, ptr %.sroa.8.0..sroa_idx, align 8
  %sext = shl i64 %.0.val, 32
  %i.h = load i64, ptr %i.f, align 8, !tbaa !69
  %i.i = and i64 %i.h, 32767
  %i.j = ashr exact i64 %sext, 17
  %i.k = or disjoint i64 %i.i, %i.j
  store i64 %i.k, ptr %i.f, align 8, !tbaa !69
  %i.l = getelementptr i8, ptr %0, i64 296        ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !217  ; 2 uses
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !217
  %i.o = getelementptr i8, ptr %i.f, i64 24
  store i32 %i.m, ptr %i.o, align 8, !tbaa !218
  %i.p = getelementptr i8, ptr %i.f, i64 32
  %i.q = getelementptr i8, ptr %i.f, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %.0.i, ptr %i.q, align 8, !tbaa !253
  %i.r = getelementptr i8, ptr %i.f, i64 56
  store ptr null, ptr %i.r, align 8, !tbaa !254
  %i.s = load i64, ptr %3, align 4                ; 2 uses
  %.val.i.i9 = load ptr, ptr %i.e, align 8, !tbaa !129
  %i.t = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i9, i32 noundef range(i32 0, 115) 19, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.t, i32 noundef range(i32 0, 115) 19) #31
  %i.u = getelementptr i8, ptr %i.t, i64 8
  store i64 %i.s, ptr %i.u, align 8
  %.sroa.8.0..sroa_idx3 = getelementptr i8, ptr %i.t, i64 16
  store i64 %.8.val, ptr %.sroa.8.0..sroa_idx3, align 8
  %sext15 = shl i64 %i.s, 32
  %i.v = load i64, ptr %i.t, align 8, !tbaa !69
  %i.w = and i64 %i.v, 32767
  %i.x = ashr exact i64 %sext15, 17
  %i.y = or disjoint i64 %i.w, %i.x
  store i64 %i.y, ptr %i.t, align 8, !tbaa !69
  %i.z = load i32, ptr %i.l, align 8, !tbaa !217  ; 2 uses
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.l, align 8, !tbaa !217
  %i.ab = getelementptr i8, ptr %i.t, i64 24
  store i32 %i.z, ptr %i.ab, align 8, !tbaa !218
  %i.ac = getelementptr i8, ptr %i.t, i64 32
  store ptr %1, ptr %i.ac, align 8, !tbaa !224
  %i.ad = getelementptr i8, ptr %i.t, i64 40
  store ptr %i.f, ptr %i.ad, align 8, !tbaa !226
  %i.ae = getelementptr i8, ptr %i.t, i64 48
  store ptr null, ptr %i.ae, align 8, !tbaa !227
  ret ptr %i.t
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @call_uni_op(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 33, 134) %2, ptr noundef readonly captures(none) %3, ptr noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %value_expr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 3 uses
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.b, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.907)
  %i.c = getelementptr i8, ptr %0, i64 196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29   ; 2 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !51
  %i.f = icmp eq i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %value_expr.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !189
  %i.i = getelementptr i8, ptr %0, i64 368
  %i.j = load i64, ptr %i.i, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.j, ptr noundef nonnull readonly %i.b, i32 noundef %i.d, ptr noundef %i.h)
  br label %value_expr.exit

value_expr.exit:                                  ; preds = %bb.a, %bb.b, %bb.c
  %i.k = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.k, align 8, !tbaa !129
  %i.l = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 37, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.l, i32 noundef range(i32 0, 115) 37) #31
  %i.m = getelementptr i8, ptr %i.l, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !57
  %i.n = load i64, ptr %i.l, align 8, !tbaa !69
  %i.o = and i64 %i.n, 32767
  %i.p = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !217  ; 2 uses
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !217
  %i.s = getelementptr i8, ptr %i.l, i64 24
  store i32 %i.q, ptr %i.s, align 8, !tbaa !218
  %i.t = getelementptr i8, ptr %i.l, i64 32
  store ptr %1, ptr %i.t, align 8, !tbaa !311
  %i.u = getelementptr i8, ptr %i.l, i64 40
  store i64 %2, ptr %i.u, align 8, !tbaa !203
  %i.v = getelementptr i8, ptr %i.l, i64 48
  store ptr null, ptr %i.v, align 8, !tbaa !312
  %i.w = load i32, ptr %3, align 4, !tbaa !51
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 15
  %i.z = or disjoint i64 %i.y, %i.o
  store i64 %i.z, ptr %i.l, align 8, !tbaa !69
  ret ptr %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @logop(ptr noundef %0, i64 noundef range(i64 148, 3570) %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly captures(none) %4, ptr noundef nonnull readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 3553
  %i.b = icmp eq i64 %1, 148
  %i.c = or i1 %i.a, %i.b
  %i.d = select i1 %i.c, i32 22, i32 23           ; 2 uses
  %i.e = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef %2) ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %value_expr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 8        ; 3 uses
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.f, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.907)
  %i.g = getelementptr i8, ptr %0, i64 196
  %i.h = load i32, ptr %i.g, align 4, !tbaa !29   ; 2 uses
  %i.i = load i32, ptr %i.f, align 4, !tbaa !51
  %i.j = icmp eq i32 %i.i, %i.h
  br i1 %i.j, label %bb.c, label %value_expr.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !189
  %i.m = getelementptr i8, ptr %0, i64 368
  %i.n = load i64, ptr %i.m, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.n, ptr noundef nonnull readonly %i.f, i32 noundef %i.h, ptr noundef %i.l)
  br label %value_expr.exit

value_expr.exit:                                  ; preds = %bb.a, %bb.b, %bb.c
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %value_expr.exit
  %.val47 = load i64, ptr %2, align 8, !tbaa !69
  %i.o = trunc i64 %.val47 to i32
  %i.p = lshr i32 %i.o, 8
  %i.q = and i32 %i.p, 127
  %i.r = icmp eq i32 %i.q, %i.d
  br i1 %i.r, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.d, %bb.e
  %.043 = phi ptr [ %i.t, %bb.e ], [ %2, %bb.d ]  ; 2 uses
  %i.s = getelementptr i8, ptr %.043, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !313  ; 4 uses
  %.not46 = icmp eq ptr %i.t, null
  br i1 %.not46, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.preheader
  %.val = load i64, ptr %i.t, align 8, !tbaa !69
  %i.u = trunc i64 %.val to i32
  %i.v = lshr i32 %i.u, 8
  %i.w = and i32 %i.v, 127
  %i.x = icmp eq i32 %i.w, %i.d
  br i1 %i.x, label %.preheader, label %.critedge, !llvm.loop !315

.critedge:                                        ; preds = %.preheader, %bb.e
  %i.y = getelementptr i8, ptr %.043, i64 40
  %i.z = getelementptr i8, ptr %0, i64 288
  %.val.i.i48 = load ptr, ptr %i.z, align 8, !tbaa !129
  %i.aa = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %switch.selectcmp.case1 = icmp eq i64 %1, 3553
  %switch.selectcmp.case2 = icmp eq i64 %1, 148
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.ab = select i1 %switch.selectcmp, i32 22, i32 23 ; 2 uses
  %i.ac = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i48, i32 noundef range(i32 0, 115) %i.ab, i64 noundef range(i64 32, 129) 64, i64 noundef 8) #31 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.ac, i32 noundef range(i32 0, 115) %i.ab) #31
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i64 16, i1 false)
  %i.ae = load i32, ptr %5, align 4, !tbaa !51
  %i.af = sext i32 %i.ae to i64
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !69
  %i.ah = and i64 %i.ag, 32767                    ; 2 uses
  %i.ai = shl nsw i64 %i.af, 15
  %i.aj = or disjoint i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.ac, align 8, !tbaa !69
  %i.ak = load i32, ptr %i.aa, align 8, !tbaa !217 ; 2 uses
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aa, align 8, !tbaa !217
  %i.am = getelementptr i8, ptr %i.ac, i64 24
  store i32 %i.ak, ptr %i.am, align 8, !tbaa !218
  %i.an = getelementptr i8, ptr %i.ac, i64 32
  store ptr %i.t, ptr %i.an, align 8, !tbaa !316
  %i.ao = getelementptr i8, ptr %i.ac, i64 40
  store ptr %3, ptr %i.ao, align 8, !tbaa !313
  %i.ap = getelementptr i8, ptr %i.ac, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, i64 16, i1 false)
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !313
  %i.aq = load i32, ptr %4, align 4, !tbaa !51
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 15
  %i.at = or disjoint i64 %i.ah, %i.as
  store i64 %i.at, ptr %i.ac, align 8, !tbaa !69
  %i.au = getelementptr i8, ptr %2, i64 16
  %i.av = getelementptr i8, ptr %5, i64 8
  %i.aw = load i64, ptr %i.av, align 4
  store i64 %i.aw, ptr %i.au, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %value_expr.exit
  %i.ax = getelementptr i8, ptr %0, i64 288
  %.val.i.i50 = load ptr, ptr %i.ax, align 8, !tbaa !129
  %i.ay = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %switch.selectcmp.case190 = icmp eq i64 %1, 3553
  %switch.selectcmp.case291 = icmp eq i64 %1, 148
  %switch.selectcmp92 = or i1 %switch.selectcmp.case190, %switch.selectcmp.case291
  %i.az = select i1 %switch.selectcmp92, i32 22, i32 23 ; 2 uses
  %i.ba = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i50, i32 noundef range(i32 0, 115) %i.az, i64 noundef range(i64 32, 129) 64, i64 noundef 8) #31 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.ba, i32 noundef range(i32 0, 115) %i.az) #31
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i64 16, i1 false)
  %i.bc = load i32, ptr %5, align 4, !tbaa !51
  %i.bd = sext i32 %i.bc to i64
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !69
  %i.bf = and i64 %i.be, 32767                    ; 2 uses
  %i.bg = shl nsw i64 %i.bd, 15
  %i.bh = or disjoint i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %i.ba, align 8, !tbaa !69
  %i.bi = load i32, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.ay, align 8, !tbaa !217
  %i.bk = getelementptr i8, ptr %i.ba, i64 24
  store i32 %i.bi, ptr %i.bk, align 8, !tbaa !218
  %i.bl = getelementptr i8, ptr %i.ba, i64 32
  store ptr %2, ptr %i.bl, align 8, !tbaa !316
  %i.bm = getelementptr i8, ptr %i.ba, i64 40
  store ptr %3, ptr %i.bm, align 8, !tbaa !313
  %i.bn = getelementptr i8, ptr %i.ba, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, i64 16, i1 false)
  %i.bo = load i32, ptr %4, align 4, !tbaa !51
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 15
  %i.br = or disjoint i64 %i.bf, %i.bq
  store i64 %i.br, ptr %i.ba, align 8, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  %.0 = phi ptr [ %2, %.critedge ], [ %i.ba, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @value_expr(ptr noundef %0, ptr noundef captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %parser_yyerror.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 3 uses
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.b, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.907)
  %i.c = getelementptr i8, ptr %0, i64 196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29   ; 2 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !51
  %i.f = icmp eq i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %parser_yyerror.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !189
  %i.i = getelementptr i8, ptr %0, i64 368
  %i.j = load i64, ptr %i.i, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.j, ptr noundef nonnull readonly %i.b, i32 noundef %i.d, ptr noundef %i.h)
  br label %parser_yyerror.exit

parser_yyerror.exit:                              ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_case3_new(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly captures(none) %3, ptr noundef readonly captures(none) %4, ptr noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 6, i64 noundef range(i64 32, 129) 80, i64 noundef 8) #31 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 6) #31
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %3, align 4, !tbaa !51
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
  store ptr %1, ptr %i.n, align 8, !tbaa !317
  %i.o = getelementptr i8, ptr %i.b, i64 40
  store ptr %2, ptr %i.o, align 8, !tbaa !319
  %i.p = getelementptr i8, ptr %i.b, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !57
  %i.q = getelementptr i8, ptr %i.b, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !57
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_in_new(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly captures(none) %4, ptr noundef readonly captures(none) %5, ptr noundef readonly captures(none) %6, ptr noundef readonly captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 8, i64 noundef range(i64 32, 129) 104, i64 noundef 8) #31 ; 12 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 8) #31
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %4, align 4, !tbaa !51
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
  store ptr %1, ptr %i.n, align 8, !tbaa !320
  %i.o = getelementptr i8, ptr %i.b, i64 40
  store ptr %2, ptr %i.o, align 8, !tbaa !322
  %i.p = getelementptr i8, ptr %i.b, i64 48
  store ptr %3, ptr %i.p, align 8, !tbaa !323
  %i.q = getelementptr i8, ptr %i.b, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !57
  %i.r = getelementptr i8, ptr %i.b, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !57
  %i.s = getelementptr i8, ptr %i.b, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !57
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_true_new(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 96, i64 noundef range(i64 32, 129) 32, i64 noundef 8) #31 ; 6 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 96) #31
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %1, align 4, !tbaa !51
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
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_false_new(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 97, i64 noundef range(i64 32, 129) 32, i64 noundef 8) #31 ; 6 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 97) #31
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %1, align 4, !tbaa !51
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
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @numparam_name(ptr noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 14
  %i.b = icmp ne i64 %i.a, 0
  %i.c = icmp ult i64 %1, 3776
  %i.d = lshr i64 %1, 4
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = add i32 %i.e, -245
  %i.g = icmp ult i32 %i.f, -9
  %.not6 = or i1 %i.b, %i.g
  %narrow.i.not = or i1 %i.c, %.not6
  br i1 %narrow.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.e, -235
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.942, i32 noundef %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_defn_new(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 80, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #31 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 80) #31
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
  store i64 %1, ptr %i.n, align 8, !tbaa !324
  %i.o = getelementptr i8, ptr %i.b, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !95
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_defs_new(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
end_hunk_0
begin_hunk_1_@rb_node_undef_new:rb_parser_ary_push_node.exit
  %i.n = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 1, ptr %i.p, align 8, !tbaa !347
  %i.q = tail call noalias nonnull dereferenceable(8) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 8) #33 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !350
  store i32 3, ptr %i.n, align 8, !tbaa !351
  %i.s = getelementptr i8, ptr %i.b, i64 32
  store ptr %i.n, ptr %i.s, align 8, !tbaa !117
  %i.t = getelementptr i8, ptr %i.b, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) @__const.ruby_yyparse.inheritance_operator_loc, i64 16, i1 false), !tbaa.struct !57
  store i64 1, ptr %i.o, align 8, !tbaa !352
  store ptr %1, ptr %i.q, align 8, !tbaa !353
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_parser_ary_push_node(ptr noundef returned captures(ret: address, provenance) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !351    ; 2 uses
  %.not = icmp eq i32 %i.a, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.575, i32 noundef %i.a) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !352  ; 6 uses
  %i.d = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !347
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.d, label %parser_ary_push.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %i.c, 0
  %i.h = shl i64 %i.c, 1
  %spec.select.i = select i1 %i.g, i64 1, i64 %i.h ; 7 uses
  %i.i = icmp slt i64 %i.c, %spec.select.i
  br i1 %i.i, label %bb.e, label %parser_ary_push.exit

bb.e:                                             ; preds = %bb.d
  store i64 %spec.select.i, ptr %i.d, align 8, !tbaa !347
  %i.j = getelementptr i8, ptr %0, i64 8          ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !350
  %i.l = shl i64 %spec.select.i, 3
  %i.m = tail call nonnull ptr @ruby_xrealloc(ptr noundef %i.k, i64 noundef %i.l) #37
  store ptr %i.m, ptr %i.j, align 8, !tbaa !350
  %i.n = load i64, ptr %i.b, align 8, !tbaa !352  ; 8 uses
  %i.o = icmp slt i64 %i.n, %spec.select.i
  br i1 %i.o, label %.lr.ph.i.i.preheader, label %parser_ary_push.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.p = sub i64 %spec.select.i, %i.n
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !350
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %.01.i.i.prol
  store ptr null, ptr %i.r, align 8, !tbaa !353
  %i.s = add nsw i64 %.01.i.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !354

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi i64 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.s, %.lr.ph.i.i.prol ]
  %i.t = sub i64 %i.n, %spec.select.i
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %parser_ary_push.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !350
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %.01.i.i
  store ptr null, ptr %i.w, align 8, !tbaa !353
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !350
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %.01.i.i
  %i.z = getelementptr i8, ptr %i.y, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !353
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !350
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %.01.i.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store ptr null, ptr %i.ac, align 8, !tbaa !353
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !350
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %.01.i.i
  %i.af = getelementptr i8, ptr %i.ae, i64 24
  store ptr null, ptr %i.af, align 8, !tbaa !353
  %i.ag = add nsw i64 %.01.i.i, 4                 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ag, %spec.select.i
  br i1 %exitcond.not.i.i.3, label %parser_ary_push.exit, label %.lr.ph.i.i, !llvm.loop !355

parser_ary_push.exit:                             ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.c, %bb.d, %bb.e
  %i.ah = phi i64 [ %i.c, %bb.c ], [ %i.n, %bb.e ], [ %i.c, %bb.d ], [ %i.n, %.lr.ph.i.i ], [ %i.n, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !350
  %i.ak = add i64 %i.ah, 1
  store i64 %i.ak, ptr %i.b, align 8, !tbaa !352
  %i.al = getelementptr [8 x i8], ptr %i.aj, i64 %i.ah
  store ptr %1, ptr %i.al, align 8, !tbaa !353
  ret ptr %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_dot2_new(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly captures(none) %3, ptr noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 90, i64 noundef range(i64 32, 129) 64, i64 noundef 8) #31 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 90) #31
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %3, align 4, !tbaa !51
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
  store ptr %1, ptr %i.n, align 8, !tbaa !356
  %i.o = getelementptr i8, ptr %i.b, i64 40
  store ptr %2, ptr %i.o, align 8, !tbaa !358
  %i.p = getelementptr i8, ptr %i.b, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !57
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_dot3_new(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly captures(none) %3, ptr noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 91, i64 noundef range(i64 32, 129) 64, i64 noundef 8) #31 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 91) #31
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %3, align 4, !tbaa !51
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
  store ptr %1, ptr %i.n, align 8, !tbaa !356
  %i.o = getelementptr i8, ptr %i.b, i64 40
  store ptr %2, ptr %i.o, align 8, !tbaa !358
  %i.p = getelementptr i8, ptr %i.b, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !57
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @new_nil_at(ptr noundef captures(none) %0, i64 %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 95, i64 noundef range(i64 32, 129) 32, i64 noundef 8) #31 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 95) #31
  %i.c = getelementptr i8, ptr %i.b, i64 8
  store i64 %.0.val, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.b, i64 16
  store i64 %.0.val, ptr %.sroa.5.0..sroa_idx, align 8
  %sext = shl i64 %.0.val, 32
  %i.d = load i64, ptr %i.b, align 8, !tbaa !69
  %i.e = and i64 %i.d, 32767
  %i.f = ashr exact i64 %sext, 17
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.b, align 8, !tbaa !69
  %i.h = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !217  ; 2 uses
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !217
  %i.k = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.i, ptr %i.k, align 8, !tbaa !218
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @call_bin_op(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef readonly captures(none) %4, ptr noundef nonnull readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %value_expr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 3 uses
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.b, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.907)
  %i.c = getelementptr i8, ptr %0, i64 196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29   ; 2 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !51
  %i.f = icmp eq i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %value_expr.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !189
  %i.i = getelementptr i8, ptr %0, i64 368
  %i.j = load i64, ptr %i.i, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.j, ptr noundef nonnull readonly %i.b, i32 noundef %i.d, ptr noundef %i.h)
  br label %value_expr.exit

value_expr.exit:                                  ; preds = %bb.a, %bb.b, %bb.c
  %i.k = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef %3) ; 2 uses
  %.not.i13 = icmp eq ptr %i.k, null
  br i1 %.not.i13, label %value_expr.exit15, label %bb.d

bb.d:                                             ; preds = %value_expr.exit
  %i.l = getelementptr i8, ptr %i.k, i64 8        ; 3 uses
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.l, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.907)
  %i.m = getelementptr i8, ptr %0, i64 196
  %i.n = load i32, ptr %i.m, align 4, !tbaa !29   ; 2 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !51
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %bb.e, label %value_expr.exit15

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !189
  %i.s = getelementptr i8, ptr %0, i64 368
  %i.t = load i64, ptr %i.s, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.t, ptr noundef nonnull readonly %i.l, i32 noundef %i.n, ptr noundef %i.r)
  br label %value_expr.exit15

value_expr.exit15:                                ; preds = %value_expr.exit, %bb.d, %bb.e
  %i.u = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 288        ; 2 uses
  %.val.i.i = load ptr, ptr %i.v, align 8, !tbaa !129
  %i.w = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.w, i32 noundef range(i32 0, 115) 43) #31
  %i.x = getelementptr i8, ptr %i.w, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !57
  %i.y = load i32, ptr %i.u, align 4, !tbaa !51
  %i.z = sext i32 %i.y to i64
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !69
  %i.ab = and i64 %i.aa, 32767
  %i.ac = shl nsw i64 %i.z, 15
  %i.ad = or disjoint i64 %i.ab, %i.ac
  store i64 %i.ad, ptr %i.w, align 8, !tbaa !69
  %i.ae = getelementptr i8, ptr %0, i64 296       ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !217 ; 2 uses
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !217
  %i.ah = getelementptr i8, ptr %i.w, i64 24
  store i32 %i.af, ptr %i.ah, align 8, !tbaa !218
  %i.ai = getelementptr i8, ptr %i.w, i64 32
  store ptr %3, ptr %i.ai, align 8, !tbaa !184
  %i.aj = getelementptr i8, ptr %i.w, i64 40
  store i64 1, ptr %i.aj, align 8, !tbaa !15
  %i.ak = getelementptr i8, ptr %i.w, i64 48
  store ptr null, ptr %i.ak, align 8, !tbaa !186
  %.val.i.i16 = load ptr, ptr %i.v, align 8, !tbaa !129
  %i.al = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i16, i32 noundef range(i32 0, 115) 37, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.al, i32 noundef range(i32 0, 115) 37) #31
  %i.am = getelementptr i8, ptr %i.al, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !57
  %i.an = load i64, ptr %i.al, align 8, !tbaa !69
  %i.ao = and i64 %i.an, 32767
  %i.ap = load i32, ptr %i.ae, align 8, !tbaa !217 ; 2 uses
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !217
  %i.ar = getelementptr i8, ptr %i.al, i64 24
  store i32 %i.ap, ptr %i.ar, align 8, !tbaa !218
  %i.as = getelementptr i8, ptr %i.al, i64 32
  store ptr %1, ptr %i.as, align 8, !tbaa !311
  %i.at = getelementptr i8, ptr %i.al, i64 40
  store i64 %2, ptr %i.at, align 8, !tbaa !203
  %i.au = getelementptr i8, ptr %i.al, i64 48
  store ptr %i.w, ptr %i.au, align 8, !tbaa !312
  %i.av = load i32, ptr %4, align 4, !tbaa !51
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 15
  %i.ay = or disjoint i64 %i.ax, %i.ao
  store i64 %i.ay, ptr %i.al, align 8, !tbaa !69
  ret ptr %i.al
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @match_op(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %.0.val, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.reg_named_capture_assign_t, align 8 ; 8 uses
  %i.a = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %value_expr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 3 uses
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.b, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.907)
  %i.c = getelementptr i8, ptr %0, i64 196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29   ; 2 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !51
  %i.f = icmp eq i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %value_expr.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !189
  %i.i = getelementptr i8, ptr %0, i64 368
  %i.j = load i64, ptr %i.i, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.j, ptr noundef nonnull readonly %i.b, i32 noundef %i.d, ptr noundef %i.h)
  br label %value_expr.exit

value_expr.exit:                                  ; preds = %bb.a, %bb.b, %bb.c
  %i.k = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef %2) ; 2 uses
  %.not.i52 = icmp eq ptr %i.k, null
  br i1 %.not.i52, label %value_expr.exit54, label %bb.d

bb.d:                                             ; preds = %value_expr.exit
  %i.l = getelementptr i8, ptr %i.k, i64 8        ; 3 uses
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.l, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.907)
  %i.m = getelementptr i8, ptr %0, i64 196
  %i.n = load i32, ptr %i.m, align 4, !tbaa !29   ; 2 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !51
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %bb.e, label %value_expr.exit54

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !189
  %i.s = getelementptr i8, ptr %0, i64 368
  %i.t = load i64, ptr %i.s, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.t, ptr noundef nonnull readonly %i.l, i32 noundef %i.n, ptr noundef %i.r)
  br label %value_expr.exit54

value_expr.exit54:                                ; preds = %value_expr.exit, %bb.d, %bb.e
  %.not.i55 = icmp eq ptr %1, null
  br i1 %.not.i55, label %last_expr_once_body.exit.thread, label %bb.f

bb.f:                                             ; preds = %value_expr.exit54
  %.val.i = load i64, ptr %1, align 8, !tbaa !69  ; 2 uses
  %i.u = and i64 %.val.i, 32512
  %i.v = icmp eq i64 %i.u, 17920
  br i1 %i.v, label %last_expr_once_body.exit, label %last_expr_once_body.exit.thread3

last_expr_once_body.exit:                         ; preds = %bb.f
  %i.w = getelementptr i8, ptr %1, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !201  ; 3 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %last_expr_once_body.exit.thread, label %last_expr_once_body.exit.last_expr_once_body.exit.thread3_crit_edge

last_expr_once_body.exit.last_expr_once_body.exit.thread3_crit_edge: ; preds = %last_expr_once_body.exit
  %.pre = load i64, ptr %i.x, align 8, !tbaa !69
  br label %last_expr_once_body.exit.thread3

last_expr_once_body.exit.thread3:                 ; preds = %last_expr_once_body.exit.last_expr_once_body.exit.thread3_crit_edge, %bb.f
  %i.y = phi i64 [ %.pre, %last_expr_once_body.exit.last_expr_once_body.exit.thread3_crit_edge ], [ %.val.i, %bb.f ]
  %.0.i566 = phi ptr [ %i.x, %last_expr_once_body.exit.last_expr_once_body.exit.thread3_crit_edge ], [ %1, %bb.f ]
  %i.z = trunc i64 %i.y to i32
  %i.aa = lshr i32 %i.z, 8
  %i.ab = and i32 %i.aa, 127
  switch i32 %i.ab, label %last_expr_once_body.exit.thread [
    i32 69, label %bb.g
    i32 68, label %bb.h
  ]

bb.g:                                             ; preds = %last_expr_once_body.exit.thread3
  %i.ac = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.ac, align 8, !tbaa !129
  %i.ad = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 57, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.ad, i32 noundef range(i32 0, 115) 57) #31
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !69
  %i.ag = and i64 %i.af, 32767
  %i.ah = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !217 ; 2 uses
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !217
  %i.ak = getelementptr i8, ptr %i.ad, i64 24
  store i32 %i.ai, ptr %i.ak, align 8, !tbaa !218
  %i.al = getelementptr i8, ptr %i.ad, i64 32
  store ptr %1, ptr %i.al, align 8, !tbaa !359
  %i.am = getelementptr i8, ptr %i.ad, i64 40
  store ptr %2, ptr %i.am, align 8, !tbaa !361
  %i.an = getelementptr i8, ptr %i.ad, i64 48
  store ptr null, ptr %i.an, align 8, !tbaa !362
  %i.ao = sext i32 %.0.val to i64
  %i.ap = shl nsw i64 %i.ao, 15
  %i.aq = or disjoint i64 %i.ag, %i.ap
  store i64 %i.aq, ptr %i.ad, align 8, !tbaa !69
  br label %bb.m

bb.h:                                             ; preds = %last_expr_once_body.exit.thread3
  %i.ar = tail call i64 @rb_node_regx_string_val(ptr noundef nonnull %.0.i566) #31 ; 3 uses
  %i.as = icmp eq i64 %i.ar, 4
  br i1 %i.as, label %last_expr_once_body.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr i8, ptr %0, i64 288
  %.val.i.i57 = load ptr, ptr %i.at, align 8, !tbaa !129
  %i.au = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i57, i32 noundef range(i32 0, 115) 57, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 11 uses
  tail call void @rb_node_init(ptr noundef %i.au, i32 noundef range(i32 0, 115) 57) #31
  %i.av = getelementptr i8, ptr %i.au, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %i.aw = load i32, ptr %3, align 4, !tbaa !51
  %i.ax = sext i32 %i.aw to i64
  %i.ay = load i64, ptr %i.au, align 8, !tbaa !69
  %i.az = and i64 %i.ay, 32767
  %i.ba = shl nsw i64 %i.ax, 15
  %i.bb = or disjoint i64 %i.az, %i.ba
  store i64 %i.bb, ptr %i.au, align 8, !tbaa !69
  %i.bc = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !217 ; 2 uses
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !217
  %i.bf = getelementptr i8, ptr %i.au, i64 24
  store i32 %i.bd, ptr %i.bf, align 8, !tbaa !218
  %i.bg = getelementptr i8, ptr %i.au, i64 32
  store ptr %1, ptr %i.bg, align 8, !tbaa !359
  %i.bh = getelementptr i8, ptr %i.au, i64 40
  store ptr %2, ptr %i.bh, align 8, !tbaa !361
  %i.bi = getelementptr i8, ptr %i.au, i64 48     ; 2 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !362
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %0, ptr %4, align 8, !tbaa !363
  %i.bj = tail call ptr @rb_enc_get(i64 noundef %i.ar) #31
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !366
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !367
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %3, ptr %i.bm, align 8, !tbaa !368
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr @assignable, ptr %i.bn, align 8, !tbaa !369
  %i.bo = inttoptr i64 %i.ar to ptr
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !370
  %i.br = call i32 @onig_foreach_name(ptr noundef %i.bq, ptr noundef nonnull @reg_named_capture_assign_iter, ptr noundef nonnull %4) #31 ; 0 uses
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !367 ; 2 uses
  %.not.i58 = icmp eq ptr %i.bs, null
  br i1 %.not.i58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !71
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i59 = phi ptr [ %i.bu, %bb.j ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  store ptr %.0.i59, ptr %i.bi, align 8, !tbaa !362
  %i.bv = sext i32 %.0.val to i64
  %i.bw = load i64, ptr %i.au, align 8, !tbaa !69
  %i.bx = and i64 %i.bw, 32767
  %i.by = shl nsw i64 %i.bv, 15
  %i.bz = or disjoint i64 %i.bx, %i.by
  store i64 %i.bz, ptr %i.au, align 8, !tbaa !69
  br label %bb.m

last_expr_once_body.exit.thread:                  ; preds = %bb.h, %value_expr.exit54, %last_expr_once_body.exit.thread3, %last_expr_once_body.exit
  %.not.i60 = icmp eq ptr %2, null
  br i1 %.not.i60, label %last_expr_once_body.exit63.thread, label %bb.l

bb.l:                                             ; preds = %last_expr_once_body.exit.thread
  %.val.i61 = load i64, ptr %2, align 8, !tbaa !69 ; 2 uses
  %i.ca = and i64 %.val.i61, 32512
  %i.cb = icmp eq i64 %i.ca, 17920
  br i1 %i.cb, label %last_expr_once_body.exit63, label %last_expr_once_body.exit63.thread10

last_expr_once_body.exit63:                       ; preds = %bb.l
  %i.cc = getelementptr i8, ptr %2, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !201 ; 2 uses
  %.not51 = icmp eq ptr %i.cd, null
  br i1 %.not51, label %last_expr_once_body.exit63.thread, label %last_expr_once_body.exit63.last_expr_once_body.exit63.thread10_crit_edge

last_expr_once_body.exit63.last_expr_once_body.exit63.thread10_crit_edge: ; preds = %last_expr_once_body.exit63
  %.pre16 = load i64, ptr %i.cd, align 8, !tbaa !69
  br label %last_expr_once_body.exit63.thread10

last_expr_once_body.exit63.thread10:              ; preds = %last_expr_once_body.exit63.last_expr_once_body.exit63.thread10_crit_edge, %bb.l
  %i.ce = phi i64 [ %.pre16, %last_expr_once_body.exit63.last_expr_once_body.exit63.thread10_crit_edge ], [ %.val.i61, %bb.l ]
  %i.cf = and i64 %i.ce, 32512
  %cond.not = icmp eq i64 %i.cf, 17664
  br i1 %cond.not, label %.thread14, label %last_expr_once_body.exit63.thread

.thread14:                                        ; preds = %last_expr_once_body.exit63.thread10
  %i.cg = getelementptr i8, ptr %0, i64 288
  %.val.i.i64 = load ptr, ptr %i.cg, align 8, !tbaa !129
  %i.ch = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i64, i32 noundef range(i32 0, 115) 58, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #31 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.ch, i32 noundef range(i32 0, 115) 58) #31
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %i.cj = load i32, ptr %3, align 4, !tbaa !51
  %i.ck = sext i32 %i.cj to i64
  %i.cl = load i64, ptr %i.ch, align 8, !tbaa !69
  %i.cm = and i64 %i.cl, 32767
  %i.cn = shl nsw i64 %i.ck, 15
  %i.co = or disjoint i64 %i.cm, %i.cn
  store i64 %i.co, ptr %i.ch, align 8, !tbaa !69
  %i.cp = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !217 ; 2 uses
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !217
  %i.cs = getelementptr i8, ptr %i.ch, i64 24
  store i32 %i.cq, ptr %i.cs, align 8, !tbaa !218
  %i.ct = getelementptr i8, ptr %i.ch, i64 32
  store ptr %2, ptr %i.ct, align 8, !tbaa !373
  %i.cu = getelementptr i8, ptr %i.ch, i64 40
  store ptr %1, ptr %i.cu, align 8, !tbaa !375
  br label %bb.m

last_expr_once_body.exit63.thread:                ; preds = %last_expr_once_body.exit.thread, %last_expr_once_body.exit63.thread10, %last_expr_once_body.exit63
  %i.cv = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.cw = getelementptr i8, ptr %0, i64 288       ; 2 uses
end_hunk_1
begin_hunk_2_@cond0:bb.a

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %0, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !86
  %i.w = getelementptr i8, ptr %0, i64 196
  %i.x = load i32, ptr %i.w, align 4, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef %i.v, i32 noundef %i.x, ptr noundef nonnull @.str.918) #31
  br label %common.ret107

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %0, i64 200
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !86
  %i.aa = getelementptr i8, ptr %0, i64 196
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef %i.z, i32 noundef %i.ab, ptr noundef nonnull @.str.919) #31
  br label %common.ret107

bb.h:                                             ; preds = %assign_in_cond.exit
  %i.ac = getelementptr i8, ptr %0, i64 200
  %.val85 = load ptr, ptr %i.ac, align 8, !tbaa !86 ; 4 uses
  %i.ad = load i8, ptr %.val85, align 1
  %.not.i87 = icmp eq i8 %i.ad, 45
  br i1 %.not.i87, label %sub_1.i, label %e_option_supplied.exit.thread

sub_1.i:                                          ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.val85, i64 1
  %i.af = load i8, ptr %i.ae, align 1
  %.not1.i = icmp eq i8 %i.af, 101
  br i1 %.not1.i, label %e_option_supplied.exit, label %e_option_supplied.exit.thread

e_option_supplied.exit:                           ; preds = %sub_1.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.val85, i64 2
  %i.ah = load i8, ptr %i.ag, align 1
  %.not97 = icmp eq i8 %i.ah, 0
  br i1 %.not97, label %bb.j, label %e_option_supplied.exit.thread

e_option_supplied.exit.thread:                    ; preds = %sub_1.i, %bb.h, %e_option_supplied.exit
  switch i32 %2, label %bb.j [
    i32 2, label %bb.i
    i32 1, label %.sink.split
  ]

bb.i:                                             ; preds = %e_option_supplied.exit.thread
  br label %.sink.split

.sink.split:                                      ; preds = %e_option_supplied.exit.thread, %bb.i
  %.str.921.sink = phi ptr [ @.str.921, %bb.i ], [ @.str.920, %e_option_supplied.exit.thread ]
  %i.ai = getelementptr i8, ptr %0, i64 196
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef nonnull %.val85, i32 noundef %i.aj, ptr noundef nonnull %.str.921.sink) #31
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %e_option_supplied.exit.thread, %e_option_supplied.exit
  %i.ak = tail call i64 @rb_node_set_type(ptr noundef nonnull %i.g, i32 noundef 56) #31 ; 0 uses
  br label %common.ret107

bb.k:                                             ; preds = %assign_in_cond.exit
  %i.al = getelementptr i8, ptr %0, i64 200
  %.val = load ptr, ptr %i.al, align 8, !tbaa !86 ; 4 uses
  %i.am = load i8, ptr %.val, align 1
  %.not.i88 = icmp eq i8 %i.am, 45
  br i1 %.not.i88, label %sub_1.i89, label %e_option_supplied.exit92.thread

sub_1.i89:                                        ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.ao = load i8, ptr %i.an, align 1
  %.not1.i90 = icmp eq i8 %i.ao, 101
  br i1 %.not1.i90, label %e_option_supplied.exit92, label %e_option_supplied.exit92.thread

e_option_supplied.exit92:                         ; preds = %sub_1.i89
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %i.aq = load i8, ptr %i.ap, align 1
  %.not96 = icmp eq i8 %i.aq, 0
  br i1 %.not96, label %bb.m, label %e_option_supplied.exit92.thread

e_option_supplied.exit92.thread:                  ; preds = %sub_1.i89, %bb.k, %e_option_supplied.exit92
  switch i32 %2, label %bb.m [
    i32 2, label %bb.l
    i32 1, label %.sink.split104
  ]

bb.l:                                             ; preds = %e_option_supplied.exit92.thread
  br label %.sink.split104

.sink.split104:                                   ; preds = %e_option_supplied.exit92.thread, %bb.l
  %.str.921.sink105 = phi ptr [ @.str.921, %bb.l ], [ @.str.920, %e_option_supplied.exit92.thread ]
  %i.ar = getelementptr i8, ptr %0, i64 196
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef nonnull %.val, i32 noundef %i.as, ptr noundef nonnull %.str.921.sink105) #31
  br label %bb.m

bb.m:                                             ; preds = %.sink.split104, %e_option_supplied.exit92.thread, %e_option_supplied.exit92
  %i.at = tail call fastcc ptr @rb_node_gvar_new(ptr noundef nonnull %0, i64 noundef 3959, ptr noundef %3)
  %i.au = tail call fastcc ptr @rb_node_match2_new(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef %i.at, ptr noundef %3)
  br label %common.ret107

bb.n:                                             ; preds = %assign_in_cond.exit
  %i.av = getelementptr i8, ptr %i.g, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !222 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 32     ; 2 uses
  %i.ay = icmp eq ptr %i.g, %i.aw
  %spec.select = and i1 %4, %i.ay
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !257
  %i.ba = tail call fastcc ptr @cond0(ptr noundef %0, ptr noundef %i.az, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %spec.select)
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !257
  br label %common.ret107

bb.o:                                             ; preds = %assign_in_cond.exit, %assign_in_cond.exit
  %i.bb = getelementptr i8, ptr %i.g, i64 32      ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !316
  %i.bd = tail call fastcc ptr @cond0(ptr noundef %0, ptr noundef %i.bc, i32 noundef 1, ptr noundef %3, i1 noundef zeroext true)
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !316
  %i.be = getelementptr i8, ptr %i.g, i64 40      ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !313
  %i.bg = tail call fastcc ptr @cond0(ptr noundef %0, ptr noundef %i.bf, i32 noundef 1, ptr noundef %3, i1 noundef zeroext true)
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !313
  br label %common.ret107

bb.p:                                             ; preds = %assign_in_cond.exit, %assign_in_cond.exit
  br i1 %4, label %bb.q, label %common.ret107

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr i8, ptr %i.g, i64 32      ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !356
  %i.bj = tail call fastcc ptr @range_op(ptr noundef %0, ptr noundef %i.bi, ptr noundef %3)
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !356
  %i.bk = getelementptr i8, ptr %i.g, i64 40      ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !358
  %i.bm = tail call fastcc ptr @range_op(ptr noundef %0, ptr noundef %i.bl, ptr noundef %3)
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !358
  %i.bn = load i64, ptr %i.g, align 8, !tbaa !69
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = lshr i32 %i.bo, 8
  %i.bq = and i32 %i.bp, 127
  switch i32 %i.bq, label %common.ret107 [
    i32 90, label %bb.r
    i32 91, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.br = tail call i64 @rb_node_set_type(ptr noundef nonnull %i.g, i32 noundef 92) #31 ; 0 uses
  br label %common.ret107

bb.s:                                             ; preds = %bb.q
  %i.bs = tail call i64 @rb_node_set_type(ptr noundef nonnull %i.g, i32 noundef 93) #31 ; 0 uses
  br label %common.ret107

bb.t:                                             ; preds = %assign_in_cond.exit, %assign_in_cond.exit
  switch i32 %2, label %common.ret107 [
    i32 2, label %bb.v
    i32 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr i8, ptr %0, i64 200
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !86
  %i.bv = getelementptr i8, ptr %0, i64 196
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.bu, i32 noundef %i.bw, ptr noundef nonnull @.str.922) #31
  br label %common.ret107

bb.v:                                             ; preds = %bb.t
  %i.bx = getelementptr i8, ptr %0, i64 200
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !86
  %i.bz = getelementptr i8, ptr %0, i64 196
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.by, i32 noundef %i.ca, ptr noundef nonnull @.str.923) #31
  br label %common.ret107

bb.w:                                             ; preds = %assign_in_cond.exit, %assign_in_cond.exit, %assign_in_cond.exit, %assign_in_cond.exit, %assign_in_cond.exit, %assign_in_cond.exit
  switch i32 %2, label %common.ret107 [
    i32 2, label %bb.y
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr i8, ptr %0, i64 200
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !86
  %i.cd = getelementptr i8, ptr %0, i64 196
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.cc, i32 noundef %i.ce, ptr noundef nonnull @.str.924) #31
  br label %common.ret107

bb.y:                                             ; preds = %bb.w
  %i.cf = getelementptr i8, ptr %0, i64 200
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !86
  %i.ch = getelementptr i8, ptr %0, i64 196
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.cg, i32 noundef %i.ci, ptr noundef nonnull @.str.925) #31
  br label %common.ret107
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @range_op(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !69
  %i.c = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef nonnull %1) ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %value_expr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.c, i64 8        ; 3 uses
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.d, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.907)
  %i.e = getelementptr i8, ptr %0, i64 196
  %i.f = load i32, ptr %i.e, align 4, !tbaa !29   ; 2 uses
  %i.g = load i32, ptr %i.d, align 4, !tbaa !51
  %i.h = icmp eq i32 %i.g, %i.f
  br i1 %i.h, label %bb.d, label %value_expr.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !189
  %i.k = getelementptr i8, ptr %0, i64 368
  %i.l = load i64, ptr %i.k, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.l, ptr noundef nonnull readonly %i.d, i32 noundef %i.f, ptr noundef %i.j)
  br label %value_expr.exit

value_expr.exit:                                  ; preds = %bb.b, %bb.c, %bb.d
  %i.m = and i64 %i.b, 32512
  %i.n = icmp eq i64 %i.m, 15104
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %value_expr.exit
  %i.o = getelementptr i8, ptr %0, i64 200
  %.val = load ptr, ptr %i.o, align 8, !tbaa !86  ; 4 uses
  %i.p = load i8, ptr %.val, align 1
  %.not.i21 = icmp eq i8 %i.p, 45
  br i1 %.not.i21, label %sub_1.i, label %nd_line.exit

sub_1.i:                                          ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %.not1.i = icmp eq i8 %i.r, 101
  br i1 %.not1.i, label %e_option_supplied.exit, label %nd_line.exit

e_option_supplied.exit:                           ; preds = %sub_1.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.f, label %nd_line.exit

nd_line.exit:                                     ; preds = %sub_1.i, %bb.e, %e_option_supplied.exit
  %i.u = load i64, ptr %1, align 8, !tbaa !69
  %i.v = lshr i64 %i.u, 15
  %i.w = trunc i64 %i.v to i32
  tail call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef nonnull %.val, i32 noundef %i.w, ptr noundef nonnull @.str.928) #31
  br label %bb.f

bb.f:                                             ; preds = %nd_line.exit, %e_option_supplied.exit
  %.pr.i = load i64, ptr @range_op.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.x = tail call i64 @rb_intern2(ptr noundef nonnull @.str.929, i64 noundef 2) #31 ; 3 uses
  store i64 %i.x, ptr @range_op.rbimpl_id, align 8, !tbaa !11
  %.not.i24 = icmp eq i64 %i.x, 0
  br i1 %.not.i24, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !529

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.f
  %.lcssa.i = phi i64 [ %.pr.i, %bb.f ], [ %i.x, %.lr.ph.i ]
  %i.y = getelementptr i8, ptr %0, i64 288        ; 3 uses
  %.val.i.i = load ptr, ptr %i.y, align 8, !tbaa !129
  %i.z = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 50, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #31 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.z, i32 noundef range(i32 0, 115) 50) #31
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.ab = load i32, ptr %2, align 4, !tbaa !51
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !69
  %i.ae = and i64 %i.ad, 32767
  %i.af = shl nsw i64 %i.ac, 15
  %i.ag = or disjoint i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.z, align 8, !tbaa !69
  %i.ah = getelementptr i8, ptr %0, i64 296       ; 6 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !217 ; 2 uses
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !217
  %i.ak = getelementptr i8, ptr %i.z, i64 24
  store i32 %i.ai, ptr %i.ak, align 8, !tbaa !218
  %i.al = getelementptr i8, ptr %i.z, i64 32
  store i64 %.lcssa.i, ptr %i.al, align 8, !tbaa !454
  %.val.i.i25 = load ptr, ptr %i.y, align 8, !tbaa !129
  %i.am = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i25, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.am, i32 noundef range(i32 0, 115) 43) #31
  %i.an = getelementptr i8, ptr %i.am, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.ao = load i32, ptr %2, align 4, !tbaa !51
  %i.ap = sext i32 %i.ao to i64
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !69
  %i.ar = and i64 %i.aq, 32767
  %i.as = shl nsw i64 %i.ap, 15
  %i.at = or disjoint i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.am, align 8, !tbaa !69
  %i.au = load i32, ptr %i.ah, align 8, !tbaa !217 ; 2 uses
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.ah, align 8, !tbaa !217
  %i.aw = getelementptr i8, ptr %i.am, i64 24
  store i32 %i.au, ptr %i.aw, align 8, !tbaa !218
  %i.ax = getelementptr i8, ptr %i.am, i64 32
  store ptr %i.z, ptr %i.ax, align 8, !tbaa !184
  %i.ay = getelementptr i8, ptr %i.am, i64 40
  store i64 1, ptr %i.ay, align 8, !tbaa !15
  %i.az = getelementptr i8, ptr %i.am, i64 48
  store ptr null, ptr %i.az, align 8, !tbaa !186
  %.val.i.i26 = load ptr, ptr %i.y, align 8, !tbaa !129
  %i.ba = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i26, i32 noundef range(i32 0, 115) 36, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.ba, i32 noundef range(i32 0, 115) 36) #31
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.bc = load i32, ptr %2, align 4, !tbaa !51
  %i.bd = sext i32 %i.bc to i64
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !69
  %i.bf = and i64 %i.be, 32767
  %i.bg = shl nsw i64 %i.bd, 15
  %i.bh = or disjoint i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %i.ba, align 8, !tbaa !69
  %i.bi = load i32, ptr %i.ah, align 8, !tbaa !217 ; 2 uses
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.ah, align 8, !tbaa !217
  %i.bk = getelementptr i8, ptr %i.ba, i64 24
  store i32 %i.bi, ptr %i.bk, align 8, !tbaa !218
  %i.bl = getelementptr i8, ptr %i.ba, i64 32
  store ptr %1, ptr %i.bl, align 8, !tbaa !284
  %i.bm = getelementptr i8, ptr %i.ba, i64 40
  store i64 140, ptr %i.bm, align 8, !tbaa !286
  %i.bn = getelementptr i8, ptr %i.ba, i64 48
  store ptr %i.am, ptr %i.bn, align 8, !tbaa !287
  br label %bb.h

bb.g:                                             ; preds = %value_expr.exit
  %i.bo = tail call fastcc ptr @cond0(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef %2, i1 noundef zeroext true)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %rbimpl_intern_const.exit
  %.0 = phi ptr [ %i.bo, %bb.g ], [ %i.ba, %rbimpl_intern_const.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @is_static_content(ptr noundef readonly captures(address_is_null) %0) unnamed_addr #27 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !69
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 127
  switch i32 %i.d, label %.loopexit [
    i32 45, label %bb.c
    i32 43, label %.preheader
    i32 101, label %.loopexit12
    i32 68, label %.loopexit12
    i32 109, label %.loopexit12
    i32 110, label %.loopexit12
    i32 111, label %.loopexit12
    i32 59, label %.loopexit12
    i32 60, label %.loopexit12
    i32 61, label %.loopexit12
    i32 62, label %.loopexit12
    i32 63, label %.loopexit12
    i32 95, label %.loopexit12
    i32 96, label %.loopexit12
    i32 97, label %.loopexit12
    i32 44, label %.loopexit12
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %.loopexit12, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
  %.1.ph = phi ptr [ %0, %bb.b ], [ %i.f, %bb.c ]
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.e
  %.1 = phi ptr [ %i.k, %bb.e ], [ %.1.ph, %.preheader ] ; 2 uses
  %i.g = getelementptr i8, ptr %.1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.i = tail call fastcc i32 @is_static_content(ptr noundef %i.h)
  %.not10 = icmp eq i32 %i.i, 0
  br i1 %.not10, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %.1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !186  ; 2 uses
  %.not11 = icmp eq ptr %i.k, null
  br i1 %.not11, label %.loopexit12, label %bb.d, !llvm.loop !668

.loopexit12:                                      ; preds = %bb.e, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.c
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a, %.loopexit12
end_hunk_2
