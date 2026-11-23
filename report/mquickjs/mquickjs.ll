Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs?download=true
inline.NumInlined: 1970
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@emit_return:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph33, %bb.f
  %.01931 = phi i64 [ %.01927, %.lr.ph33 ], [ %.019, %bb.f ]
  %.030 = phi i32 [ 0, %.lr.ph33 ], [ %.1, %bb.f ]
  %.02029 = phi i32 [ %1, %.lr.ph33 ], [ %.2, %bb.f ] ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !109
  %i.d = trunc i64 %.01931 to i32
  %i.e = ashr i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !173
  %i.j = trunc i64 %i.i to i32
  %i.k = ashr i32 %i.j, 1
  %i.l = add i32 %i.k, %.030                      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !174
  %i.o = and i64 %i.n, 2147483648
  %.not25 = icmp eq i64 %i.o, 0
  br i1 %.not25, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not24 = icmp eq i32 %.02029, 0
  br i1 %.not24, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.b, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 4, i32 noundef %i.p) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = icmp sgt i32 %i.l, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.01826 = phi i32 [ %i.s, %.lr.ph ], [ 0, %bb.e ]
  %i.r = load i32, ptr %i.b, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 14, i32 noundef %i.r) #28
  %i.s = add nuw nsw i32 %.01826, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !407

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  tail call fastcc void @emit_goto(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull %i.m) #28
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.b
  %.2 = phi i32 [ %.02029, %bb.b ], [ 1, %._crit_edge ] ; 2 uses
  %.1 = phi i32 [ %i.l, %bb.b ], [ 0, %._crit_edge ]
  %.019 = load i64, ptr %i.g, align 8, !tbaa !46  ; 2 uses
  %.not = icmp eq i64 %.019, 7
  br i1 %.not, label %._crit_edge34, label %bb.b, !llvm.loop !408

._crit_edge34:                                    ; preds = %bb.f, %bb.a
  %.020.lcssa = phi i32 [ %1, %bb.a ], [ %.2, %bb.f ]
  %.not22 = icmp eq i32 %.020.lcssa, 0
  %i.t = select i1 %.not22, i8 29, i8 28
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext %i.t, i32 noundef %2) #28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @js_parse_expect_semi(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119
  switch i32 %i.b, label %bb.b [
    i32 59, label %bb.d
    i32 160, label %bb.e
    i32 125, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %.mask = and i64 %i.d, 255
  %.not6 = icmp eq i64 %.mask, 0
  br i1 %.not6, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.167, i32 noundef 59) #34
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.b, %bb.d
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @js_parse_var(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.b, align 8, !tbaa !119
  %.not19 = icmp eq i32 %i.d, 130
  br i1 %.not19, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = xor i32 %1, 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.191) #34
  unreachable

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.g = load i32, ptr %i.c, align 4, !tbaa !168
  %i.h = load i64, ptr %i.e, align 8, !tbaa !117  ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !109
  %i.j = getelementptr i8, ptr %i.i, i64 96
  %.val = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 968
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 1
  %i.n = icmp eq i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.192) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = call fastcc i32 @define_var(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef %i.h) #28
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  %i.p = load i32, ptr %i.b, align 8, !tbaa !119  ; 2 uses
  %i.q = icmp eq i32 %i.p, 61
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  tail call fastcc void @js_parse_call(ptr noundef nonnull %0, i32 noundef 1, i32 noundef range(i32 0, 2) %i.f) #28, !inline_history !20
  %i.r = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.r, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 45, i32 51
  %switch.selectcmp6.i = icmp eq i32 %i.r, 0
  %switch.select7.i = select i1 %switch.selectcmp6.i, i32 47, i32 %switch.select.i
  tail call fastcc void @emit_var(ptr noundef nonnull %0, i32 noundef %switch.select7.i, i32 noundef range(i32 -65536, -2147483648) %i.o, i32 noundef %i.g) #28
  %.pr = load i32, ptr %i.b, align 8, !tbaa !119
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi i32 [ %.pr, %bb.e ], [ %i.p, %bb.d ]
  %.not18 = icmp eq i32 %i.s, 44
  br i1 %.not18, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  %i.t = load i32, ptr %i.b, align 8, !tbaa !119
  %.not = icmp eq i32 %i.t, 130
  br i1 %.not, label %bb.b, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @set_eval_ret_undefined(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !125
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 4, i32 noundef %i.e) #28
  %i.f = load i32, ptr %i.a, align 4, !tbaa !125
  %i.g = load i32, ptr %i.d, align 4, !tbaa !126
  tail call fastcc void @emit_var(ptr noundef nonnull %0, i32 noundef 45, i32 noundef %i.f, i32 noundef %i.g) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @js_parse_expr_paren(ptr noundef %0) unnamed_addr #4 {
bb.a:
  tail call fastcc void @js_parse_expect(ptr noundef %0, i32 noundef 40) #28
  tail call fastcc void @js_parse_call(ptr noundef %0, i32 noundef 0, i32 noundef 0) #28, !inline_history !19
  tail call fastcc void @js_parse_expect(ptr noundef %0, i32 noundef 41) #28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @js_parse_skip_parens_token(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !168
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = load i32, ptr %i.a, align 8, !tbaa !119
  %i.g = tail call fastcc i32 @is_regexp_allowed(i32 noundef %i.f) #28
  %i.h = tail call fastcc i32 @js_skip_parens(ptr noundef %0, ptr noundef null) #28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.c, ptr %i.i, align 8, !tbaa !116
  %1 = load i64, ptr %i.d, align 8
  %2 = and i64 %i.e, 255
  %3 = and i64 %1, -256
  %4 = or disjoint i64 %3, %2
  store i64 %4, ptr %i.d, align 8
  %.not.i.not.not = icmp eq i32 %i.g, 0
  %i.j = select i1 %.not.i.not.not, i32 41, i32 32
  store i32 %i.j, ptr %i.a, align 8, !tbaa !119
  tail call fastcc void @next_token(ptr noundef %0) #28
  ret i32 %i.h
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @js_skip_expr(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119
  switch i32 %i.b, label %bb.f [
    i32 41, label %bb.c
    i32 59, label %bb.d
    i32 160, label %bb.d
    i32 40, label %bb.e
    i32 91, label %bb.e
    i32 123, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.b, %bb.b
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.167, i32 noundef 41) #34
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.c = tail call fastcc i32 @js_skip_parens(ptr noundef nonnull %0, ptr noundef null) #28 ; 0 uses
  br label %.backedge

bb.f:                                             ; preds = %bb.b
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.e
  br label %bb.b
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @emit_break(ptr noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.JSGCRef, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.03646 = load i64, ptr %i.a, align 8, !tbaa !46 ; 2 uses
  %.not47 = icmp eq i64 %.03646, 7
  br i1 %.not47, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.a
  %.not39 = icmp eq i32 %2, 0
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !109
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph51, %bb.j
  %i.d = phi ptr [ %.pre, %.lr.ph51 ], [ %i.aq, %bb.j ] ; 2 uses
  %.03649 = phi i64 [ %.03646, %.lr.ph51 ], [ %.036, %bb.j ]
  %.03748 = phi i64 [ %1, %.lr.ph51 ], [ %i.ao, %bb.j ] ; 3 uses
  %i.e = trunc i64 %.03649 to i32
  %i.f = ashr i32 %i.e, 1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !176
  %i.k = icmp eq i64 %i.j, -2
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !173
  %i.n = and i64 %i.m, 4294967294
  %i.o = icmp eq i64 %i.n, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi i1 [ false, %bb.b ], [ %i.o, %bb.c ]
  %i.q = icmp ne i64 %.03748, 7
  %or.cond = select i1 %i.q, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !171
  %i.t = icmp eq i64 %i.s, %.03748
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.0 = select i1 %.not39, ptr %i.u, ptr %i.i     ; 2 uses
  %i.v = load i64, ptr %.0, align 8, !tbaa !46
  %i.w = and i64 %i.v, 2147483648
  %.not42 = icmp eq i64 %i.w, 0
  br i1 %.not42, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call fastcc void @emit_goto(ptr noundef nonnull %0, i32 noundef 54, ptr noundef nonnull %.0) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36
  store ptr %i.y, ptr %i.b, align 8, !tbaa !39
  store ptr %3, ptr %i.x, align 8, !tbaa !36
  store i64 %.03748, ptr %3, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !173
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.03545 = phi i32 [ %i.ae, %.lr.ph ], [ 0, %bb.h ]
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !126
  call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 13, i32 noundef %i.ad) #28
  %i.ae = add nuw nsw i32 %.03545, 1              ; 2 uses
  %i.af = load i64, ptr %i.z, align 8, !tbaa !173
  %i.ag = trunc i64 %i.af to i32
  %i.ah = ashr i32 %i.ag, 1
  %i.ai = icmp slt i32 %i.ae, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !409

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !174
  %i.al = and i64 %i.ak, 2147483648
  %.not43 = icmp eq i64 %i.al, 0
  br i1 %.not43, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.am = load i32, ptr %i.c, align 4, !tbaa !126
  call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 4, i32 noundef %i.am) #28
  call fastcc void @emit_goto(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull %i.aj) #28
  %i.an = load i32, ptr %i.c, align 4, !tbaa !126
  call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 13, i32 noundef %i.an) #28
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.ao = load i64, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.aq = load ptr, ptr %0, align 8, !tbaa !109   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !36
  %.036 = load i64, ptr %i.h, align 8, !tbaa !46  ; 2 uses
  %.not = icmp eq i64 %.036, 7
  br i1 %.not, label %._crit_edge52, label %bb.b, !llvm.loop !410

._crit_edge52:                                    ; preds = %bb.j, %bb.a
  %.037.lcssa = phi i64 [ %1, %bb.a ], [ %i.ao, %bb.j ]
  %i.as = icmp eq i64 %.037.lcssa, 7
  br i1 %i.as, label %bb.k, label %bb.n

bb.k:                                             ; preds = %._crit_edge52
  %.not38 = icmp eq i32 %2, 0
  br i1 %.not38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.193) #34
  unreachable

bb.m:                                             ; preds = %bb.k
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.194) #34
  unreachable

bb.n:                                             ; preds = %._crit_edge52
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.195) #34
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @re_emit_op_u32(ptr noundef %0, i32 noundef range(i32 13, 36) %1, i32 noundef range(i32 -11, 7) %2) unnamed_addr #4 {
bb.a:
  %i.a = trunc nuw nsw i32 %1 to i8
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 1) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !121
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !128
  %i.j = zext i32 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  store i8 %i.a, ptr %i.k, align 1, !tbaa !51
  %i.l = load i32, ptr %i.g, align 8, !tbaa !128
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 4) #28
  %i.m = load i64, ptr %i.b, align 8, !tbaa !121
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.r = zext i32 %i.q to i64
end_hunk_0
