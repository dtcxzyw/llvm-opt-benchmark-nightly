Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs?download=true
inline.NumInlined: 1970
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@js_parse_function_decl:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @emit_op_param(ptr noundef initializes((92, 104)) %0, i8 noundef zeroext range(i8 24, 28) %1, i32 noundef range(i32 -1073741824, 1073741825) %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  tail call fastcc void @emit_op_pos(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %3) #28
  %i.a = zext nneg i8 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @opcode_info, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.d = load i8, ptr %i.c, align 1, !tbaa !405
  switch i8 %i.d, label %bb.c [
    i8 0, label %bb.d
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i32 %2 to i16
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 2) #28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i64, ptr %i.f, align 8, !tbaa !121
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !128  ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  store i16 %i.e, ptr %i.n, align 1, !tbaa !89
  %i.o = add i32 %i.l, 2
  store i32 %i.o, ptr %i.k, align 8, !tbaa !128
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 8550, ptr noundef nonnull @__PRETTY_FUNCTION__.emit_op_param) #27
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @js_skip_parens(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 0, ptr %i.a, align 16, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %1, null
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %.025 = phi i32 [ 1, %bb.a ], [ %.126, %bb.n ]  ; 10 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %.2, %bb.n ]      ; 6 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !119  ; 2 uses
  switch i32 %i.d, label %bb.n [
    i32 40, label %bb.e
    i32 91, label %bb.c
    i32 123, label %bb.d
    i32 41, label %bb.h
    i32 93, label %bb.h
    i32 125, label %bb.h
    i32 160, label %bb.j
    i32 130, label %bb.k
    i32 59, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.024 = phi i8 [ 125, %bb.d ], [ 93, %bb.c ], [ 41, %bb.b ]
  %i.e = icmp samesign ugt i32 %.025, 127
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.177) #34
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.f = zext nneg i32 %.025 to i64
  %i.g = add nuw nsw i32 %.025, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  store i8 %.024, ptr %i.h, align 1, !tbaa !51
  br label %bb.n

bb.h:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.i = add nsw i32 %.025, -1                    ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !51
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %.not30 = icmp eq i32 %i.d, %i.m
  br i1 %.not30, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.167, i32 noundef %i.m) #34
  unreachable

bb.j:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %.025 to i64
  %i.o = getelementptr i8, ptr %i.a, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = zext i8 %i.q to i32
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.167, i32 noundef %i.r) #34
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.c, align 8, !tbaa !117  ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !109
  %i.u = getelementptr i8, ptr %i.t, i64 96
  %.val = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 968
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.w, 1
  %i.y = icmp eq i64 %i.s, %i.x
  %i.z = zext i1 %i.y to i32
  %spec.select = or i32 %.0, %i.z                 ; 3 uses
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load i64, ptr %1, align 8, !tbaa !46
  %i.ab = icmp eq i64 %i.s, %i.aa
  %i.ac = or i32 %spec.select, 2
  %spec.select31 = select i1 %i.ab, i32 %i.ac, i32 %spec.select
  br label %bb.n

bb.m:                                             ; preds = %bb.b
  %i.ad = icmp eq i32 %.025, 2
  %i.ae = or i32 %.0, 4
  %spec.select33 = select i1 %i.ad, i32 %i.ae, i32 %.0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.h, %bb.g, %bb.b
  %.126 = phi i32 [ %.025, %bb.b ], [ %i.g, %bb.g ], [ %i.i, %bb.h ], [ %.025, %bb.l ], [ %.025, %bb.m ], [ %.025, %bb.k ] ; 2 uses
  %.2 = phi i32 [ %.0, %bb.b ], [ %.0, %bb.g ], [ %.0, %bb.h ], [ %spec.select31, %bb.l ], [ %spec.select33, %bb.m ], [ %spec.select, %bb.k ] ; 2 uses
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  %i.af = icmp slt i32 %.126, 2
  br i1 %i.af, label %bb.o, label %bb.b

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.2
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i32 -65536, -2147483648) i32 @define_var(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 65280
  %.not = icmp eq i64 %i.c, 0
  %i.d = getelementptr i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !120  ; 2 uses
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 4 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !100
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  %i.n = load i16, ptr %i.m, align 2, !tbaa !127  ; 2 uses
  %.not.i.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.i, label %find_ext_var.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext i16 %i.n to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !46
  %i.q = icmp eq i64 %i.p, %2
  br i1 %i.q, label %find_ext_var.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %find_ext_var.exit.thread, label %.lr.ph.i.i, !llvm.loop !14

find_ext_var.exit.thread:                         ; preds = %bb.c, %bb.b
  %i.r = tail call fastcc range(i32 -1, 65535) i32 @add_func_ext_var(ptr noundef %0, i64 noundef %i.e, i64 noundef %2, i32 noundef 196609) #28
  br label %bb.f

find_ext_var.exit:                                ; preds = %.lr.ph.i.i
  %i.s = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.t = shl nuw i64 %indvars.iv.i.i, 1
  %i.u = and i64 %i.t, 4294967294
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 393218, ptr %i.w, align 8, !tbaa !46
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.g, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = lshr i32 %i.y, 7
  %i.aa = and i32 %i.z, 65535                     ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !98
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !124 ; 2 uses
  %.not.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i, label %find_var.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext i16 %i.ah to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !46
  %i.ak = icmp eq i64 %i.aj, %2
  br i1 %i.ak, label %find_var.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %find_var.exit.thread, label %.lr.ph.i, !llvm.loop !13

find_var.exit:                                    ; preds = %.lr.ph.i
  %i.al = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.am = icmp sle i32 %i.aa, %i.al               ; 2 uses
  %i.an = select i1 %i.am, i32 %i.aa, i32 0
  %spec.select = sub nsw i32 %i.al, %i.an
  %spec.select30 = zext i1 %i.am to i32
  br label %bb.f

find_var.exit.thread:                             ; preds = %bb.e, %bb.d
  %i.ao = tail call fastcc i32 @add_var(ptr noundef %0, i64 noundef %2) #28
  %i.ap = sub nsw i32 %i.ao, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %find_var.exit, %find_var.exit.thread, %find_ext_var.exit.thread, %find_ext_var.exit
  %.2 = phi i32 [ %i.s, %find_ext_var.exit ], [ %i.r, %find_ext_var.exit.thread ], [ %i.ap, %find_var.exit.thread ], [ %spec.select, %find_var.exit ]
  %.1 = phi i32 [ 2, %find_ext_var.exit ], [ 2, %find_ext_var.exit.thread ], [ 1, %find_var.exit.thread ], [ %spec.select30, %find_var.exit ]
  store i32 %.1, ptr %1, align 4, !tbaa !45
  ret i32 %.2
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i32 -1, 65535) i32 @add_var(ptr noundef %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.JSGCRef, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.d = icmp eq i16 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.178) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !120
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !39
  store ptr %2, ptr %i.i, align 8, !tbaa !36
  store i64 %1, ptr %2, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !98
  %i.n = call i16 @llvm.umax.i16(i16 %i.c, i16 3)
  %i.o = zext i16 %i.n to i32
  %i.p = add nuw nsw i32 %i.o, 1
  %i.q = call fastcc noundef i64 @js_resize_value_array2(ptr noundef %i.h, i64 noundef %i.m, i32 noundef %i.p, i32 noundef 0) #28, !inline_history !6 ; 3 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !40
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.t = load ptr, ptr %0, align 8, !tbaa !109
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  store ptr %i.s, ptr %i.u, align 8, !tbaa !36
  %.not = icmp eq i64 %i.q, 15
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.218) #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.a, align 8, !tbaa !120
  %i.w = add i64 %i.v, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i64 %i.q, ptr %i.y, align 8, !tbaa !98
  %i.z = add i64 %i.q, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i16, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  %i.ad = add i16 %i.ac, 1                        ; 2 uses
  store i16 %i.ad, ptr %i.b, align 8, !tbaa !124
  %i.ae = zext i16 %i.ac to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  store i64 %i.r, ptr %i.af, align 8, !tbaa !46
  %i.ag = zext i16 %i.ad to i32
  %i.ah = add nsw i32 %i.ag, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i32 %i.ah
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i32 -1, 65535) i32 @add_func_ext_var(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 196608, 196610) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.JSGCRef, align 8            ; 6 uses
  %5 = alloca %struct.JSGCRef, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  %i.d = load i16, ptr %i.c, align 2, !tbaa !127  ; 2 uses
  %i.e = icmp eq i16 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef %0, ptr noundef nonnull @.str.179) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !39
  store i64 %1, ptr %5, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.j, align 8, !tbaa !39
  store ptr %4, ptr %i.g, align 8, !tbaa !36
  store i64 %2, ptr %4, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !100
  %i.m = call i16 @llvm.umax.i16(i16 %i.d, i16 1)
  %i.n = zext i16 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = add nuw nsw i32 %i.o, 2
  %i.q = call fastcc noundef i64 @js_resize_value_array2(ptr noundef %i.f, i64 noundef %i.l, i32 noundef %i.p, i32 noundef 0) #28, !inline_history !6 ; 3 uses
  %i.r = load i64, ptr %4, align 8, !tbaa !40
  %i.s = load ptr, ptr %0, align 8, !tbaa !109
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load i64, ptr %5, align 8, !tbaa !40
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !39
  store ptr %i.v, ptr %i.t, align 8, !tbaa !36
  %.not = icmp eq i64 %i.q, 15
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.218) #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = add i64 %i.u, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i64 %i.q, ptr %i.y, align 8, !tbaa !100
  %i.z = add i64 %i.q, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 50 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !127 ; 2 uses
  %i.ae = zext i16 %i.ad to i64
  %.idx = shl nuw nsw i64 %i.ae, 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx ; 2 uses
  store i64 %i.r, ptr %i.af, align 8, !tbaa !46
  %i.ag = shl nuw nsw i32 %3, 1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !46
  %i.aj = add i16 %i.ad, 1                        ; 2 uses
  store i16 %i.aj, ptr %i.ac, align 2, !tbaa !127
  %i.ak = zext i16 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i32 %i.al
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc noundef nonnull ptr @push_break_entry(ptr noundef %0, i64 noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i64 noundef range(i64 -2147483648, 2147483648) %3, i32 noundef range(i32 0, 3) %4) unnamed_addr #4 {
end_hunk_0
