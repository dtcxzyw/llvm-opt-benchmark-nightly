Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs?download=true
begin_hunk_0_@js_parse_regexp:bb.a
bb.p:                                             ; preds = %bb.i, %bb.i
  %i.cl = icmp sgt i32 %.04559.i, 1
  br i1 %i.cl, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.2, i32 noundef 16860, ptr noundef nonnull @__PRETTY_FUNCTION__.re_compute_register_count) #27
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cm = add nsw i32 %.04559.i, -2               ; 2 uses
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr i8, ptr %i.bv, i64 1
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !51
  br label %bb.w

bb.s:                                             ; preds = %bb.i
  %i.cp = getelementptr i8, ptr %i.bv, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !51
  %i.cr = zext i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = add nuw nsw i32 %i.cs, %i.ca
  br label %bb.w

bb.t:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %.val.i = load i16, ptr %i.cu, align 1, !tbaa !89
  %i.cv = zext i16 %.val.i to i32
  %i.cw = shl nuw nsw i32 %i.cv, 3
  %i.cx = add nuw nsw i32 %i.cw, %i.ca
  br label %bb.w

bb.u:                                             ; preds = %bb.i, %bb.i
  %i.cy = getelementptr i8, ptr %i.bv, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !51
  %i.da = load i8, ptr %i.o, align 8, !tbaa !165
  %.not51.i = icmp ult i8 %i.cz, %i.da
  br i1 %.not51.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.204) #34
  unreachable

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.o, %bb.k, %bb.j, %bb.i
  %.146.i = phi i32 [ %.04559.i, %bb.i ], [ %.04559.i, %bb.u ], [ %i.cf, %bb.j ], [ %i.ci, %bb.o ], [ %i.cm, %bb.r ], [ %.04559.i, %bb.s ], [ %.04559.i, %bb.t ], [ %i.cf, %bb.k ]
  %.1.i = phi i32 [ %.04460.i, %bb.i ], [ %.04460.i, %bb.u ], [ %.04460.i, %bb.j ], [ %.04460.i, %bb.o ], [ %.04460.i, %bb.r ], [ %.04460.i, %bb.s ], [ %.04460.i, %bb.t ], [ %i.cf, %bb.k ] ; 2 uses
  %.0.i = phi i32 [ %i.ca, %bb.i ], [ %i.ca, %bb.u ], [ %i.ca, %bb.j ], [ %i.ca, %bb.o ], [ %i.ca, %bb.r ], [ %i.ct, %bb.s ], [ %i.cx, %bb.t ], [ %i.ca, %bb.k ]
  %i.db = add nsw i32 %.0.i, %.04361.i            ; 2 uses
  %i.dc = icmp slt i32 %i.db, %i.bs
  br i1 %i.dc, label %.lr.ph.i, label %re_compute_register_count.exit.loopexit, !llvm.loop !386

re_compute_register_count.exit.loopexit:          ; preds = %bb.w
  %i.dd = trunc i32 %.1.i to i8
  br label %re_compute_register_count.exit

re_compute_register_count.exit:                   ; preds = %re_compute_register_count.exit.loopexit, %bb.e
  %.044.lcssa.i = phi i8 [ 0, %bb.e ], [ %i.dd, %re_compute_register_count.exit.loopexit ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.bn, i64 11
  store i8 %.044.lcssa.i, ptr %i.de, align 1, !tbaa !51
  %i.df = load ptr, ptr %0, align 8, !tbaa !109
  %i.dg = load i32, ptr %i.n, align 8, !tbaa !128
  tail call fastcc void @js_shrink_byte_array(ptr noundef %i.df, ptr noundef nonnull %i.m, i32 noundef %i.dg) #28
  %i.dh = load i64, ptr %i.m, align 8, !tbaa !121
  ret i64 %i.dh
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc noundef ptr @js_alloc_function_bytecode(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = tail call fastcc i32 @check_free_mem(ptr noundef %0, ptr noundef %i.b, i32 noundef 80) #32, !inline_history !143
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %js_mallocz.exit, label %js_mallocz.exit.thread

js_mallocz.exit:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr %i.f, ptr %i.d, align 8, !tbaa !44
  store i64 8, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.g, i8 0, i64 76, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store <2 x i64> splat (i64 7), ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store <2 x i64> splat (i64 7), ptr %i.i, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 7, ptr %i.j, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store <2 x i64> splat (i64 7), ptr %i.k, align 8, !tbaa !46
  br label %js_mallocz.exit.thread

js_mallocz.exit.thread:                           ; preds = %bb.a, %js_mallocz.exit
  %.0 = phi ptr [ %i.e, %js_mallocz.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @js_parse_call(ptr noundef %0, i32 noundef range(i32 0, 12) %1, i32 noundef range(i32 0, 4) %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !109
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.019 = phi i32 [ %1, %bb.a ], [ %.120, %bb.h ] ; 2 uses
  %.017 = phi i32 [ %2, %bb.a ], [ %.118, %bb.h ]
  %.0 = phi i32 [ 254, %bb.a ], [ %.1, %bb.h ]
  %i.d = zext nneg i32 %.019 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @parse_func_table, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef %.017) #31 ; 3 uses
  %i.h = and i32 %i.g, 255                        ; 2 uses
  %i.i = icmp eq i32 %i.h, 255
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %0, align 8, !tbaa !109   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !42
  %i.o = load i64, ptr %i.m, align 8, !tbaa !46
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -120 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.s = icmp ugt ptr %i.p, %i.r
  br i1 %i.s, label %bb.e, label %js_parse_pop_val.exit, !prof !67

bb.e:                                             ; preds = %bb.d
  store ptr %i.p, ptr %i.q, align 8, !tbaa !42
  br label %js_parse_pop_val.exit

js_parse_pop_val.exit:                            ; preds = %bb.d, %bb.e
  %i.t = trunc i64 %i.o to i32                    ; 2 uses
  %i.u = lshr i32 %i.t, 1
  %i.v = and i32 %i.u, 255
  %i.w = lshr i32 %i.t, 9
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.x = shl nuw nsw i32 %.019, 9
  %i.y = shl nuw nsw i32 %i.h, 1
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !109   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42
  %.not.i = icmp ugt ptr %i.ad, %i.af
  br i1 %.not.i, label %js_parse_push_val.exit, label %bb.g, !prof !69

bb.g:                                             ; preds = %bb.f
  %i.ag = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.aa) #28
  %.pre.i = load ptr, ptr %i.ac, align 8, !tbaa !42
  br label %js_parse_push_val.exit

js_parse_push_val.exit:                           ; preds = %bb.f, %bb.g
  %i.ah = phi ptr [ %.pre.i, %bb.g ], [ %i.ad, %bb.f ]
  %.0.i = phi i64 [ %i.ag, %bb.g ], [ %i.aa, %bb.f ]
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 2 uses
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !42
  store i64 %.0.i, ptr %i.ai, align 8, !tbaa !46
  %i.aj = lshr i32 %i.g, 8
  %i.ak = ashr i32 %i.g, 16
  br label %bb.h

bb.h:                                             ; preds = %js_parse_push_val.exit, %js_parse_pop_val.exit
  %.120.in = phi i32 [ %i.w, %js_parse_pop_val.exit ], [ %i.aj, %js_parse_push_val.exit ]
  %.118 = phi i32 [ -1, %js_parse_pop_val.exit ], [ %i.ak, %js_parse_push_val.exit ]
  %.1 = phi i32 [ %i.v, %js_parse_pop_val.exit ], [ 254, %js_parse_push_val.exit ]
  %.120 = and i32 %.120.in, 255
  br label %bb.b

bb.i:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @js_parse_error(ptr noundef %0, ptr noundef %1, ...) unnamed_addr #24 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  call fastcc void @js_vsnprintf(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef %1, ptr noundef %2) #28
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @longjmp(ptr noundef nonnull %i.b, i32 noundef 1) #27
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal range(i32 255, -65024) i32 @js_parse_expr_comma(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 254, label %bb.c
    i32 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #27
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.k
  %.018 = phi i32 [ %2, %bb.a ], [ %i.ag, %bb.k ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.a ], [ 2, %bb.k ]        ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, -280375465082881
  store i64 %i.c, ptr %i.a, align 8
  %i.d = load ptr, ptr %0, align 8, !tbaa !109    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %.not.i = icmp ugt ptr %i.f, %i.h
  br i1 %.not.i, label %js_parse_push_val.exit, label %bb.d, !prof !69

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %.0) #28
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !42
  %.pre = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit

js_parse_push_val.exit:                           ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %.pre, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.f, %bb.c ]
  %.0.i = phi i64 [ %i.i, %bb.d ], [ %.0, %bb.c ]
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  store ptr %i.l, ptr %i.e, align 8, !tbaa !42
  store i64 %.0.i, ptr %i.l, align 8, !tbaa !46
  %i.m = shl i32 %.018, 1
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  %.not.i25 = icmp ugt ptr %i.p, %i.r
  br i1 %.not.i25, label %js_parse_push_val.exit28, label %bb.e, !prof !69

bb.e:                                             ; preds = %js_parse_push_val.exit
  %i.s = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.n) #28
  %.pre.i26 = load ptr, ptr %i.o, align 8, !tbaa !42
  br label %js_parse_push_val.exit28

js_parse_push_val.exit28:                         ; preds = %js_parse_push_val.exit, %bb.e
  %i.t = phi ptr [ %.pre.i26, %bb.e ], [ %i.p, %js_parse_push_val.exit ]
  %.0.i27 = phi i64 [ %i.s, %bb.e ], [ %i.n, %js_parse_push_val.exit ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 2 uses
  store ptr %i.u, ptr %i.o, align 8, !tbaa !42
  store i64 %.0.i27, ptr %i.u, align 8, !tbaa !46
  %i.v = shl i32 %.018, 16
  %i.w = or disjoint i32 %i.v, 256
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %.val24 = load ptr, ptr %0, align 8, !tbaa !109 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val24, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !46
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -120
  %i.ac = getelementptr inbounds nuw i8, ptr %.val24, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  %i.ae = icmp ugt ptr %i.ab, %i.ad
  %i.af = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ag = ashr i32 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !42
  %i.ai = load i64, ptr %i.z, align 8, !tbaa !46
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 -112 ; 2 uses
  %i.ak = icmp ugt ptr %i.aj, %i.ad
  %or.cond = select i1 %i.ae, i1 true, i1 %i.ak, !prof !130
  br i1 %or.cond, label %js_parse_pop_val.exit.thread, label %js_parse_pop_val.exit29, !prof !130

js_parse_pop_val.exit.thread:                     ; preds = %bb.f
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !42
  br label %js_parse_pop_val.exit29

js_parse_pop_val.exit29:                          ; preds = %bb.f, %js_parse_pop_val.exit.thread
  %i.al = and i64 %i.ai, 4294967294
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %js_parse_pop_val.exit29
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 -1, ptr %i.am, align 4, !tbaa !132
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %js_parse_pop_val.exit29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !119
  %.not20 = icmp eq i32 %i.ao, 44
  br i1 %.not20, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = and i64 %i.aq, 280375465082880
  %.not21 = icmp eq i64 %i.ar, 0
  br i1 %.not21, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.at = load i32, ptr %i.as, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 13, i32 noundef %i.at) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  br label %bb.c

bb.l:                                             ; preds = %bb.h
  %i.au = and i32 %i.af, 4
  %.not22 = icmp eq i32 %i.au, 0
  br i1 %.not22, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = and i64 %i.aw, 280375465082880
  %.not23 = icmp eq i64 %i.ax, 0
  br i1 %.not23, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 13, i32 noundef %i.az) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n, %js_parse_push_val.exit28
  %.019 = phi i32 [ %i.w, %js_parse_push_val.exit28 ], [ 255, %bb.n ], [ 255, %bb.m ], [ 255, %bb.l ]
  ret i32 %.019
}

; Function Attrs: nounwind optsize uwtable
define internal range(i32 255, -64512) i32 @js_parse_assign_expr(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  switch i32 %1, label %bb.b [
    i32 254, label %bb.c
    i32 0, label %bb.n
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = shl i32 %2, 1
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %.not.i = icmp ugt ptr %i.h, %i.j
  br i1 %.not.i, label %js_parse_push_val.exit, label %bb.d, !prof !69

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.e) #28
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !42
  br label %js_parse_push_val.exit

js_parse_push_val.exit:                           ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %.pre.i, %bb.d ], [ %i.h, %bb.c ]
  %.0.i = phi i64 [ %i.k, %bb.d ], [ %i.e, %bb.c ]
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  store ptr %i.m, ptr %i.g, align 8, !tbaa !42
  store i64 %.0.i, ptr %i.m, align 8, !tbaa !46
  %i.n = shl i32 %2, 16
  %i.o = or disjoint i32 %i.n, 513
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %.val49 = load ptr, ptr %0, align 8, !tbaa !109 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val49, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.r, ptr %i.p, align 8, !tbaa !42
  %i.s = load i64, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 -120 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val49, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.w = icmp ugt ptr %i.t, %i.v
  br i1 %i.w, label %bb.f, label %js_parse_pop_val.exit, !prof !67

bb.f:                                             ; preds = %bb.e
  store ptr %i.t, ptr %i.u, align 8, !tbaa !42
  br label %js_parse_pop_val.exit

js_parse_pop_val.exit:                            ; preds = %bb.e, %bb.f
  %i.x = trunc i64 %i.s to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !119  ; 4 uses
  %i.aa = icmp eq i32 %i.z, 61
  %i.ab = add i32 %i.z, -132
  %or.cond = icmp ult i32 %i.ab, 11
  %or.cond43 = or i1 %i.aa, %or.cond
  br i1 %or.cond43, label %bb.g, label %bb.r

bb.g:                                             ; preds = %js_parse_pop_val.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !168
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  %i.ae = icmp ne i32 %i.z, 61
  %i.af = zext i1 %i.ae to i32
  call fastcc void @get_lvalue(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, i32 noundef %i.af) #28
  %i.ag = shl nuw nsw i32 %i.z, 1
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !109   ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42
  %.not.i50 = icmp ugt ptr %i.ak, %i.am
  br i1 %.not.i50, label %js_parse_push_val.exit53, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  %i.an = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.ah) #28
  %.pre.i51 = load ptr, ptr %i.aj, align 8, !tbaa !42
  %.pre = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit53

js_parse_push_val.exit53:                         ; preds = %bb.g, %bb.h
  %i.ao = phi ptr [ %.pre, %bb.h ], [ %i.ai, %bb.g ] ; 3 uses
  %i.ap = phi ptr [ %.pre.i51, %bb.h ], [ %i.ak, %bb.g ]
  %.0.i52 = phi i64 [ %i.an, %bb.h ], [ %i.ah, %bb.g ]
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 2 uses
  store ptr %i.aq, ptr %i.aj, align 8, !tbaa !42
  store i64 %.0.i52, ptr %i.aq, align 8, !tbaa !46
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !45
  %i.as = shl i32 %i.ar, 1
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42
  %.not.i54 = icmp ugt ptr %i.av, %i.ax
  br i1 %.not.i54, label %js_parse_push_val.exit57, label %bb.i, !prof !69

bb.i:                                             ; preds = %js_parse_push_val.exit53
  %i.ay = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.at) #28
  %.pre.i55 = load ptr, ptr %i.au, align 8, !tbaa !42
  %.pre85 = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit57

js_parse_push_val.exit57:                         ; preds = %js_parse_push_val.exit53, %bb.i
  %i.az = phi ptr [ %.pre85, %bb.i ], [ %i.ao, %js_parse_push_val.exit53 ] ; 3 uses
  %i.ba = phi ptr [ %.pre.i55, %bb.i ], [ %i.av, %js_parse_push_val.exit53 ]
  %.0.i56 = phi i64 [ %i.ay, %bb.i ], [ %i.at, %js_parse_push_val.exit53 ]
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8 ; 2 uses
  store ptr %i.bb, ptr %i.au, align 8, !tbaa !42
  store i64 %.0.i56, ptr %i.bb, align 8, !tbaa !46
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !45
  %i.bd = shl i32 %i.bc, 1
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !42 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !42
  %.not.i58 = icmp ugt ptr %i.bg, %i.bi
  br i1 %.not.i58, label %js_parse_push_val.exit61, label %bb.j, !prof !69

bb.j:                                             ; preds = %js_parse_push_val.exit57
  %i.bj = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.be) #28
  %.pre.i59 = load ptr, ptr %i.bf, align 8, !tbaa !42
  %.pre86 = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit61

js_parse_push_val.exit61:                         ; preds = %js_parse_push_val.exit57, %bb.j
  %i.bk = phi ptr [ %.pre86, %bb.j ], [ %i.az, %js_parse_push_val.exit57 ] ; 3 uses
  %i.bl = phi ptr [ %.pre.i59, %bb.j ], [ %i.bg, %js_parse_push_val.exit57 ]
  %.0.i60 = phi i64 [ %i.bj, %bb.j ], [ %i.be, %js_parse_push_val.exit57 ]
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8 ; 2 uses
  store ptr %i.bm, ptr %i.bf, align 8, !tbaa !42
  store i64 %.0.i60, ptr %i.bm, align 8, !tbaa !46
  %i.bn = shl i64 %i.s, 32
  %sext = ashr exact i64 %i.bn, 32
  %i.bo = and i64 %sext, -2                       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !42 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !42
  %.not.i62 = icmp ugt ptr %i.bq, %i.bs
  br i1 %.not.i62, label %js_parse_push_val.exit65, label %bb.k, !prof !69

bb.k:                                             ; preds = %js_parse_push_val.exit61
  %i.bt = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.bo) #28
  %.pre.i63 = load ptr, ptr %i.bp, align 8, !tbaa !42
  %.pre87 = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit65

js_parse_push_val.exit65:                         ; preds = %js_parse_push_val.exit61, %bb.k
  %i.bu = phi ptr [ %.pre87, %bb.k ], [ %i.bk, %js_parse_push_val.exit61 ] ; 3 uses
  %i.bv = phi ptr [ %.pre.i63, %bb.k ], [ %i.bq, %js_parse_push_val.exit61 ]
  %.0.i64 = phi i64 [ %i.bt, %bb.k ], [ %i.bo, %js_parse_push_val.exit61 ]
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 2 uses
  store ptr %i.bw, ptr %i.bp, align 8, !tbaa !42
  store i64 %.0.i64, ptr %i.bw, align 8, !tbaa !46
  %i.bx = shl i32 %i.ad, 1
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !42 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !42
  %.not.i66 = icmp ugt ptr %i.ca, %i.cc
  br i1 %.not.i66, label %js_parse_push_val.exit69, label %bb.l, !prof !69

bb.l:                                             ; preds = %js_parse_push_val.exit65
  %i.cd = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.by) #28
  %.pre.i67 = load ptr, ptr %i.bz, align 8, !tbaa !42
  %.pre88 = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit69

js_parse_push_val.exit69:                         ; preds = %js_parse_push_val.exit65, %bb.l
  %i.ce = phi ptr [ %.pre88, %bb.l ], [ %i.bu, %js_parse_push_val.exit65 ] ; 2 uses
  %i.cf = phi ptr [ %.pre.i67, %bb.l ], [ %i.ca, %js_parse_push_val.exit65 ]
  %.0.i68 = phi i64 [ %i.cd, %bb.l ], [ %i.by, %js_parse_push_val.exit65 ]
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8 ; 2 uses
  store ptr %i.cg, ptr %i.bz, align 8, !tbaa !42
  store i64 %.0.i68, ptr %i.cg, align 8, !tbaa !46
  %i.ch = load i32, ptr %i.c, align 4, !tbaa !45
  %i.ci = shl i32 %i.ch, 1
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !42 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !42
  %.not.i70 = icmp ugt ptr %i.cl, %i.cn
  br i1 %.not.i70, label %js_parse_push_val.exit73, label %bb.m, !prof !69
end_hunk_0
