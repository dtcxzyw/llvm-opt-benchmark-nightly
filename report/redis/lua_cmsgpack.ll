Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/lua_cmsgpack?download=true
inline.NumInlined: 29
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@mp_encode_lua_null
define dso_local void @mp_encode_lua_null(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !18
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre28.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !19
  br label %mp_buf_append.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 3 uses
  %or.cond.i = icmp ugt i64 %i.f, 9223372036854775805
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.f, 1
  %i.h = add nuw i64 %i.g, 2                      ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.j = call ptr @lua_getallocf(ptr noundef %0, ptr noundef nonnull %i.a) #9
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.l = call ptr %i.j(ptr noundef %i.k, ptr noundef %i.i, i64 noundef %i.f, i64 noundef %i.h) #9, !inline_history !24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  store ptr %i.l, ptr %1, align 8, !tbaa !18
  %i.m = load i64, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.n = sub i64 %i.h, %i.m
  store i64 %i.n, ptr %i.b, align 8, !tbaa !17
  br label %mp_buf_append.exit

mp_buf_append.exit:                               ; preds = %._crit_edge.i, %bb.d
  %i.o = phi i64 [ %.pre28.i, %._crit_edge.i ], [ %i.m, %bb.d ]
  %i.p = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.l, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 -64, ptr %i.r, align 1
  %i.s = load <2 x i64>, ptr %i.q, align 8, !tbaa !25
  %i.t = add <2 x i64> %i.s, <i64 1, i64 -1>
  store <2 x i64> %i.t, ptr %i.q, align 8, !tbaa !25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mp_pack(ptr noundef %0) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = tail call i32 @lua_gettop(ptr noundef %0) #9 ; 5 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.3) #9
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i32 @lua_checkstack(ptr noundef %0, i32 noundef %i.d) #9
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.4) #9
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.i = call ptr @lua_getallocf(ptr noundef %0, ptr noundef nonnull %i.c) #9
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.k = call noundef ptr %i.i(ptr noundef %i.j, ptr noundef null, i64 noundef 0, i64 noundef 24) #9, !inline_history !38 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not2728 = icmp slt i32 %i.d, 1
  br i1 %.not2728, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.029 = phi i32 [ 1, %.lr.ph ], [ %i.s, %bb.f ] ; 3 uses
  call void @luaL_checkstack(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.5) #9
  call void @lua_pushvalue(ptr noundef %0, i32 noundef %.029) #9
  call void @mp_encode_lua_type(ptr noundef %0, ptr noundef nonnull %i.k, i32 noundef 0)
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.o = load i64, ptr %i.l, align 8, !tbaa !19
  call void @lua_pushlstring(ptr noundef %0, ptr noundef %i.n, i64 noundef %i.o) #9
  %i.p = load i64, ptr %i.l, align 8, !tbaa !19
  %i.q = load i64, ptr %i.m, align 8, !tbaa !17
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !17
  store i64 0, ptr %i.l, align 8, !tbaa !19
  %i.s = add nuw i32 %.029, 1
  %exitcond.not = icmp eq i32 %.029, %i.d
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !37

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.t = phi i64 [ %i.r, %._crit_edge.loopexit ], [ 0, %bb.e ]
  %i.u = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.v = call ptr @lua_getallocf(ptr noundef %0, ptr noundef nonnull %i.b) #9
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.x = call ptr %i.v(ptr noundef %i.w, ptr noundef %i.u, i64 noundef %i.t, i64 noundef 0) #9, !inline_history !39 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.y = call ptr @lua_getallocf(ptr noundef %0, ptr noundef nonnull %i.a) #9
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.aa = call ptr %i.y(ptr noundef %i.z, ptr noundef nonnull %i.k, i64 noundef 24, i64 noundef 0) #9, !inline_history !39 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @lua_concat(ptr noundef %0, i32 noundef %i.d) #9
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  %.025 = phi i32 [ %i.f, %bb.b ], [ 1, %._crit_edge ], [ %i.h, %bb.d ]
  ret i32 %.025
}

declare i32 @luaL_argerror(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @lua_checkstack(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @lua_concat(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @mp_decode_to_lua_array(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 555, ptr noundef nonnull @__PRETTY_FUNCTION__.mp_decode_to_lua_array) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0) #9
  tail call void @luaL_checkstack(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.8) #9
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.e, %bb.e ]
  %.013 = phi i32 [ 1, %.lr.ph ], [ %i.f, %bb.e ] ; 2 uses
  %i.c = uitofp nneg i32 %.013 to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.c) #9
  tail call void @mp_decode_to_lua_type(ptr noundef %0, ptr noundef %1)
  %i.d = load i32, ptr %i.b, align 8, !tbaa !23
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.e = add nsw i64 %.in, -1                     ; 2 uses
  %i.f = add nuw nsw i32 %.013, 1
  tail call void @lua_settable(ptr noundef %0, i32 noundef -3) #9
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @mp_decode_to_lua_type(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 66 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.d, align 8, !tbaa !23
  br label %bb.bu

bb.c:                                             ; preds = %bb.a
  tail call void @luaL_checkstack(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.9) #9
  %i.e = load ptr, ptr %1, align 8, !tbaa !21     ; 47 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9     ; 7 uses
  %i.g = zext i8 %i.f to i32                      ; 3 uses
  switch i8 %i.f, label %bb.bj [
    i8 -52, label %bb.d
    i8 -48, label %bb.g
    i8 -51, label %bb.j
    i8 -47, label %bb.m
    i8 -50, label %bb.p
    i8 -46, label %bb.s
    i8 -49, label %bb.v
    i8 -45, label %bb.y
    i8 -64, label %bb.ab
    i8 -61, label %bb.ac
    i8 -62, label %bb.ad
    i8 -54, label %bb.ae
    i8 -53, label %bb.ag
    i8 -39, label %bb.ai
    i8 -38, label %bb.an
    i8 -37, label %bb.as
    i8 -36, label %bb.ax
    i8 -35, label %bb.ba
    i8 -34, label %bb.bd
    i8 -33, label %bb.bg
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.a, align 8, !tbaa !22
  %i.i = icmp ult i64 %i.h, 2
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.j, align 8, !tbaa !23
  br label %bb.bu

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i8 %i.l to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.m) #9
  %i.n = load ptr, ptr %1, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store ptr %i.o, ptr %1, align 8, !tbaa !21
  %i.p = load i64, ptr %i.a, align 8, !tbaa !22
  %i.q = add i64 %i.p, -2
  store i64 %i.q, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.g:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.a, align 8, !tbaa !22
  %i.s = icmp ult i64 %i.r, 2
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.t, align 8, !tbaa !23
  br label %bb.bu

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9
  %i.w = sext i8 %i.v to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.w) #9
  %i.x = load ptr, ptr %1, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store ptr %i.y, ptr %1, align 8, !tbaa !21
  %i.z = load i64, ptr %i.a, align 8, !tbaa !22
  %i.aa = add i64 %i.z, -2
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.j:                                             ; preds = %bb.c
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !22
  %i.ac = icmp ult i64 %i.ab, 3
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.ad, align 8, !tbaa !23
  br label %bb.bu

bb.l:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %2 = load i8, ptr %i.ae, align 1, !tbaa !9
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 8
  %5 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %6 = load i8, ptr %5, align 1, !tbaa !9
  %i.af = zext i8 %6 to i64
  %7 = or disjoint i64 %4, %i.af
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %7) #9
  %i.ag = load ptr, ptr %1, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  store ptr %i.ah, ptr %1, align 8, !tbaa !21
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !22
  %i.aj = add i64 %i.ai, -3
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.m:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !22
  %i.al = icmp ult i64 %i.ak, 3
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.am, align 8, !tbaa !23
  br label %bb.bu

bb.o:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  %i.ap = zext i8 %i.ao to i16
  %i.aq = shl nuw i16 %i.ap, 8
  %i.ar = sext i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.ar, %i.au
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.av) #9
  %i.aw = load ptr, ptr %1, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  store ptr %i.ax, ptr %1, align 8, !tbaa !21
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !22
  %i.az = add i64 %i.ay, -3
  store i64 %i.az, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.p:                                             ; preds = %bb.c
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !22
  %i.bb = icmp ult i64 %i.ba, 5
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.bc, align 8, !tbaa !23
  br label %bb.bu

bb.r:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = tail call i32 @llvm.bswap.i32(i32 %i.be)
  %i.bg = zext i32 %i.bf to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.bg) #9
  %i.bh = load ptr, ptr %1, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 5
  store ptr %i.bi, ptr %1, align 8, !tbaa !21
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !22
  %i.bk = add i64 %i.bj, -5
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.s:                                             ; preds = %bb.c
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !22
  %i.bm = icmp ult i64 %i.bl, 5
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.bn, align 8, !tbaa !23
  br label %bb.bu

bb.u:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bp = load i32, ptr %i.bo, align 1
  %i.bq = tail call i32 @llvm.bswap.i32(i32 %i.bp)
  %i.br = sext i32 %i.bq to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.br) #9
  %i.bs = load ptr, ptr %1, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 5
  store ptr %i.bt, ptr %1, align 8, !tbaa !21
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !22
  %i.bv = add i64 %i.bu, -5
  store i64 %i.bv, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.v:                                             ; preds = %bb.c
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !22
  %i.bx = icmp ult i64 %i.bw, 9
  br i1 %i.bx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.by, align 8, !tbaa !23
  br label %bb.bu

bb.x:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %8 = load i8, ptr %i.bz, align 1, !tbaa !9
  %9 = zext i8 %8 to i64
  %10 = shl nuw i64 %9, 56
  %11 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 48
  %15 = or disjoint i64 %14, %10
  %16 = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !9
  %18 = zext i8 %17 to i64
  %19 = shl nuw nsw i64 %18, 40
  %20 = or disjoint i64 %15, %19
  %21 = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %22 = load i8, ptr %21, align 1, !tbaa !9
  %23 = zext i8 %22 to i64
  %24 = shl nuw nsw i64 %23, 32
  %25 = or disjoint i64 %20, %24
  %26 = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = zext i8 %27 to i64
  %29 = shl nuw nsw i64 %28, 24
  %30 = or disjoint i64 %25, %29
  %31 = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %32 = load i8, ptr %31, align 1, !tbaa !9
  %33 = zext i8 %32 to i64
  %34 = shl nuw nsw i64 %33, 16
  %35 = or disjoint i64 %30, %34
  %36 = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %37 = load i8, ptr %36, align 1, !tbaa !9
  %38 = zext i8 %37 to i64
  %39 = shl nuw nsw i64 %38, 8
  %40 = or i64 %35, %39
  %41 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %42 = load i8, ptr %41, align 1, !tbaa !9
  %43 = zext i8 %42 to i64
  %44 = or i64 %40, %43
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %44) #9
  %i.ca = load ptr, ptr %1, align 8, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  store ptr %i.cb, ptr %1, align 8, !tbaa !21
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !22
  %i.cd = add i64 %i.cc, -9
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.y:                                             ; preds = %bb.c
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !22
  %i.cf = icmp ult i64 %i.ce, 9
  br i1 %i.cf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.cg, align 8, !tbaa !23
  br label %bb.bu

bb.aa:                                            ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %45 = load i8, ptr %i.ch, align 1, !tbaa !9
  %46 = zext i8 %45 to i64
  %47 = shl nuw i64 %46, 56
  %48 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !9
  %50 = zext i8 %49 to i64
  %51 = shl nuw nsw i64 %50, 48
  %52 = or disjoint i64 %51, %47
  %53 = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %54 = load i8, ptr %53, align 1, !tbaa !9
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 40
  %57 = or disjoint i64 %52, %56
  %58 = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %59 = load i8, ptr %58, align 1, !tbaa !9
  %60 = zext i8 %59 to i64
  %61 = shl nuw nsw i64 %60, 32
  %62 = or disjoint i64 %57, %61
  %63 = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %64 = load i8, ptr %63, align 1, !tbaa !9
  %65 = zext i8 %64 to i64
  %66 = shl nuw nsw i64 %65, 24
  %67 = or disjoint i64 %62, %66
  %68 = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %69 = load i8, ptr %68, align 1, !tbaa !9
  %70 = zext i8 %69 to i64
  %71 = shl nuw nsw i64 %70, 16
  %72 = or disjoint i64 %67, %71
  %73 = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %74 = load i8, ptr %73, align 1, !tbaa !9
  %75 = zext i8 %74 to i64
  %76 = shl nuw nsw i64 %75, 8
  %77 = or i64 %72, %76
  %78 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %79 = load i8, ptr %78, align 1, !tbaa !9
  %80 = zext i8 %79 to i64
  %81 = or i64 %77, %80
  %i.ci = sitofp i64 %81 to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.ci) #9
  %i.cj = load ptr, ptr %1, align 8, !tbaa !21
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 9
  store ptr %i.ck, ptr %1, align 8, !tbaa !21
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !22
  %i.cm = add i64 %i.cl, -9
  store i64 %i.cm, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.ab:                                            ; preds = %bb.c
  tail call void @lua_pushnil(ptr noundef %0) #9
  %i.cn = load ptr, ptr %1, align 8, !tbaa !21
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store ptr %i.co, ptr %1, align 8, !tbaa !21
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !22
  %i.cq = add i64 %i.cp, -1
  store i64 %i.cq, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.ac:                                            ; preds = %bb.c
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef 1) #9
  %i.cr = load ptr, ptr %1, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store ptr %i.cs, ptr %1, align 8, !tbaa !21
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !22
  %i.cu = add i64 %i.ct, -1
  store i64 %i.cu, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.ad:                                            ; preds = %bb.c
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef 0) #9
  %i.cv = load ptr, ptr %1, align 8, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store ptr %i.cw, ptr %1, align 8, !tbaa !21
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !22
  %i.cy = add i64 %i.cx, -1
  store i64 %i.cy, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.ae:                                            ; preds = %bb.c
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !22
  %i.da = icmp ult i64 %i.cz, 5
  br i1 %i.da, label %bb.af, label %.lr.ph.i

bb.af:                                            ; preds = %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.db, align 8, !tbaa !23
  br label %bb.bu

.lr.ph.i:                                         ; preds = %bb.ae
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.dd = load i32, ptr %i.dc, align 1
  %.2.insert.insert253 = tail call i32 @llvm.bswap.i32(i32 %i.dd)
  %i.de = bitcast i32 %.2.insert.insert253 to float
  %i.df = fpext float %i.de to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.df) #9
  %i.dg = load ptr, ptr %1, align 8, !tbaa !21
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 5
  store ptr %i.dh, ptr %1, align 8, !tbaa !21
  %i.di = load i64, ptr %i.a, align 8, !tbaa !22
  %i.dj = add i64 %i.di, -5
  store i64 %i.dj, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.ag:                                            ; preds = %bb.c
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !22
  %i.dl = icmp ult i64 %i.dk, 9
  br i1 %i.dl, label %bb.ah, label %.lr.ph.i223

bb.ah:                                            ; preds = %bb.ag
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.dm, align 8, !tbaa !23
  br label %bb.bu

.lr.ph.i223:                                      ; preds = %bb.ag
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.do = load i64, ptr %i.dn, align 1
  %.4.insert.insert = tail call i64 @llvm.bswap.i64(i64 %i.do)
  %i.dp = bitcast i64 %.4.insert.insert to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.dp) #9
  %i.dq = load ptr, ptr %1, align 8, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 9
  store ptr %i.dr, ptr %1, align 8, !tbaa !21
  %i.ds = load i64, ptr %i.a, align 8, !tbaa !22
  %i.dt = add i64 %i.ds, -9
  store i64 %i.dt, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.ai:                                            ; preds = %bb.c
  %i.du = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.dv = icmp ult i64 %i.du, 2
  br i1 %i.dv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.dw, align 8, !tbaa !23
  br label %bb.bu

bb.ak:                                            ; preds = %bb.ai
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !9
  %i.dz = zext i8 %i.dy to i64                    ; 2 uses
  %i.ea = add nuw nsw i64 %i.dz, 2                ; 3 uses
  %i.eb = icmp ult i64 %i.du, %i.ea
  br i1 %i.eb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.ec, align 8, !tbaa !23
  br label %bb.bu

bb.am:                                            ; preds = %bb.ak
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.ed, i64 noundef %i.dz) #9
  %i.ee = load ptr, ptr %1, align 8, !tbaa !21
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ea
  store ptr %i.ef, ptr %1, align 8, !tbaa !21
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !22
  %i.eh = sub i64 %i.eg, %i.ea
  store i64 %i.eh, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.an:                                            ; preds = %bb.c
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.ej = icmp ult i64 %i.ei, 3
  br i1 %i.ej, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.ek, align 8, !tbaa !23
  br label %bb.bu

bb.ap:                                            ; preds = %bb.an
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %82 = load i8, ptr %i.el, align 1, !tbaa !9
  %83 = zext i8 %82 to i64
  %84 = shl nuw nsw i64 %83, 8
  %85 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %86 = load i8, ptr %85, align 1, !tbaa !9
  %i.em = zext i8 %86 to i64
  %87 = or disjoint i64 %84, %i.em                ; 2 uses
  %i.en = add nuw nsw i64 %87, 3                  ; 3 uses
  %i.eo = icmp ult i64 %i.ei, %i.en
  br i1 %i.eo, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.ep, align 8, !tbaa !23
  br label %bb.bu

bb.ar:                                            ; preds = %bb.ap
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.eq, i64 noundef %87) #9
  %i.er = load ptr, ptr %1, align 8, !tbaa !21
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.en
  store ptr %i.es, ptr %1, align 8, !tbaa !21
  %i.et = load i64, ptr %i.a, align 8, !tbaa !22
  %i.eu = sub i64 %i.et, %i.en
  store i64 %i.eu, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.as:                                            ; preds = %bb.c
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.ew = icmp ult i64 %i.ev, 5
  br i1 %i.ew, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.ex, align 8, !tbaa !23
  br label %bb.bu

bb.au:                                            ; preds = %bb.as
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.ez = load i32, ptr %i.ey, align 1
  %i.fa = tail call i32 @llvm.bswap.i32(i32 %i.ez)
  %i.fb = zext i32 %i.fa to i64                   ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 2 uses
  store ptr %i.fc, ptr %1, align 8, !tbaa !21
  %i.fd = add i64 %i.ev, -5                       ; 2 uses
  store i64 %i.fd, ptr %i.a, align 8, !tbaa !22
  %i.fe = icmp ult i64 %i.fd, %i.fb
  br i1 %i.fe, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.ff, align 8, !tbaa !23
  br label %bb.bu

bb.aw:                                            ; preds = %bb.au
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.fc, i64 noundef %i.fb) #9
  %i.fg = load ptr, ptr %1, align 8, !tbaa !21
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fb
  store ptr %i.fh, ptr %1, align 8, !tbaa !21
  %i.fi = load i64, ptr %i.a, align 8, !tbaa !22
  %i.fj = sub i64 %i.fi, %i.fb
  store i64 %i.fj, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.ax:                                            ; preds = %bb.c
  %i.fk = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.fl = icmp ult i64 %i.fk, 3
  br i1 %i.fl, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.fm, align 8, !tbaa !23
  br label %bb.bu

bb.az:                                            ; preds = %bb.ax
  %i.fn = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %88 = load i8, ptr %i.fn, align 1, !tbaa !9
  %89 = zext i8 %88 to i64
  %90 = shl nuw nsw i64 %89, 8
  %91 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %92 = load i8, ptr %91, align 1, !tbaa !9
  %i.fo = zext i8 %92 to i64
  %93 = or disjoint i64 %90, %i.fo
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  store ptr %i.fp, ptr %1, align 8, !tbaa !21
  %i.fq = add i64 %i.fk, -3
  store i64 %i.fq, ptr %i.a, align 8, !tbaa !22
  tail call void @mp_decode_to_lua_array(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %93)
  br label %bb.bu

bb.ba:                                            ; preds = %bb.c
  %i.fr = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.fs = icmp ult i64 %i.fr, 5
  br i1 %i.fs, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.ft, align 8, !tbaa !23
  br label %bb.bu

bb.bc:                                            ; preds = %bb.ba
  %i.fu = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.fv = load i32, ptr %i.fu, align 1
  %i.fw = tail call i32 @llvm.bswap.i32(i32 %i.fv)
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  store ptr %i.fy, ptr %1, align 8, !tbaa !21
  %i.fz = add i64 %i.fr, -5
  store i64 %i.fz, ptr %i.a, align 8, !tbaa !22
  tail call void @mp_decode_to_lua_array(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.fx)
  br label %bb.bu

bb.bd:                                            ; preds = %bb.c
  %i.ga = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.gb = icmp ult i64 %i.ga, 3
  br i1 %i.gb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.gc, align 8, !tbaa !23
  br label %bb.bu

bb.bf:                                            ; preds = %bb.bd
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %94 = load i8, ptr %i.gd, align 1, !tbaa !9
  %95 = zext i8 %94 to i64
  %96 = shl nuw nsw i64 %95, 8
  %97 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %98 = load i8, ptr %97, align 1, !tbaa !9
  %i.ge = zext i8 %98 to i64
  %99 = or disjoint i64 %96, %i.ge
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  store ptr %i.gf, ptr %1, align 8, !tbaa !21
  %i.gg = add i64 %i.ga, -3
  store i64 %i.gg, ptr %i.a, align 8, !tbaa !22
  tail call void @mp_decode_to_lua_hash(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %99)
  br label %bb.bu

bb.bg:                                            ; preds = %bb.c
  %i.gh = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.gi = icmp ult i64 %i.gh, 5
  br i1 %i.gi, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.gj, align 8, !tbaa !23
  br label %bb.bu

bb.bi:                                            ; preds = %bb.bg
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.gl = load i32, ptr %i.gk, align 1
  %i.gm = tail call i32 @llvm.bswap.i32(i32 %i.gl)
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  store ptr %i.go, ptr %1, align 8, !tbaa !21
  %i.gp = add i64 %i.gh, -5
  store i64 %i.gp, ptr %i.a, align 8, !tbaa !22
  tail call void @mp_decode_to_lua_hash(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.gn)
  br label %bb.bu

bb.bj:                                            ; preds = %bb.c
  %i.gq = icmp sgt i8 %i.f, -1
  br i1 %i.gq, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.gr = zext nneg i8 %i.f to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.gr) #9
  %i.gs = load ptr, ptr %1, align 8, !tbaa !21
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  store ptr %i.gt, ptr %1, align 8, !tbaa !21
  %i.gu = load i64, ptr %i.a, align 8, !tbaa !22
  %i.gv = add i64 %i.gu, -1
  store i64 %i.gv, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.bl:                                            ; preds = %bb.bj
  %trunc = and i8 %i.f, -32
  switch i8 %trunc, label %bb.bq [
    i8 -32, label %bb.bm
    i8 -96, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.gw = sext i8 %i.f to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.gw) #9
  %i.gx = load ptr, ptr %1, align 8, !tbaa !21
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  store ptr %i.gy, ptr %1, align 8, !tbaa !21
  %i.gz = load i64, ptr %i.a, align 8, !tbaa !22
  %i.ha = add i64 %i.gz, -1
  store i64 %i.ha, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.bn:                                            ; preds = %bb.bl
  %i.hb = and i32 %i.g, 31
  %i.hc = zext nneg i32 %i.hb to i64              ; 3 uses
  %i.hd = load i64, ptr %i.a, align 8, !tbaa !22
  %.not = icmp ugt i64 %i.hd, %i.hc
  br i1 %.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.he, align 8, !tbaa !23
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bn
  %i.hf = add nuw nsw i64 %i.hc, 1                ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.hg, i64 noundef %i.hc) #9
  %i.hh = load ptr, ptr %1, align 8, !tbaa !21
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hf
  store ptr %i.hi, ptr %1, align 8, !tbaa !21
  %i.hj = load i64, ptr %i.a, align 8, !tbaa !22
  %i.hk = sub i64 %i.hj, %i.hf
  store i64 %i.hk, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bl
  %trunc230 = and i8 %i.f, -16
  switch i8 %trunc230, label %bb.bt [
    i8 -112, label %bb.br
    i8 -128, label %bb.bs
  ]

bb.br:                                            ; preds = %bb.bq
  %i.hl = and i32 %i.g, 15
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.hn, ptr %1, align 8, !tbaa !21
  %i.ho = load i64, ptr %i.a, align 8, !tbaa !22
  %i.hp = add i64 %i.ho, -1
  store i64 %i.hp, ptr %i.a, align 8, !tbaa !22
  tail call void @mp_decode_to_lua_array(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.hm)
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  %i.hq = and i32 %i.g, 15
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.hs, ptr %1, align 8, !tbaa !21
  %i.ht = load i64, ptr %i.a, align 8, !tbaa !22
  %i.hu = add i64 %i.ht, -1
  store i64 %i.hu, ptr %i.a, align 8, !tbaa !22
  tail call void @mp_decode_to_lua_hash(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.hr)
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bq
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 2, ptr %i.hv, align 8, !tbaa !23
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bo, %bb.bp, %bb.av, %bb.aw, %bb.aq, %bb.ar, %bb.al, %bb.am, %bb.bk, %bb.bs, %bb.bt, %bb.br, %bb.bm, %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.bc, %bb.bb, %bb.az, %bb.ay, %bb.at, %bb.ao, %bb.aj, %.lr.ph.i223, %bb.ah, %.lr.ph.i, %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.u, %bb.t, %bb.r, %bb.q, %bb.o, %bb.n, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e, %bb.b
  ret void
}

declare void @lua_settable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @mp_decode_to_lua_hash(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 569, ptr noundef nonnull @__PRETTY_FUNCTION__.mp_decode_to_lua_hash) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0) #9
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.c, %bb.f ]
  %i.c = add nsw i64 %.in, -1                     ; 2 uses
  tail call void @mp_decode_to_lua_type(ptr noundef %0, ptr noundef %1)
  %i.d = load i32, ptr %i.b, align 8, !tbaa !23
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  tail call void @mp_decode_to_lua_type(ptr noundef %0, ptr noundef nonnull %1)
  %i.e = load i32, ptr %i.b, align 8, !tbaa !23
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  tail call void @lua_settable(ptr noundef %0, i32 noundef -3) #9
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.f, %bb.d, %bb.e, %bb.c
  ret void
}

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @lua_pushboolean(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @mp_unpack_full(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.mp_cur, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.b = or i64 %2, %1                            ; 2 uses
  %spec.select = icmp eq i64 %i.b, 0              ; 2 uses
  %i.c = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #9
  %or.cond.not = icmp sgt i64 %i.b, -1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %2 to i32
  %i.e = load i64, ptr %i.a, align 8, !tbaa !25
  %i.f = trunc i64 %i.e to i32
  %i.g = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %i.d, i32 noundef %i.f) #9
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.i = icmp ugt i64 %2, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = trunc i64 %2 to i32
  %i.k = trunc i64 %i.h to i32
  %i.l = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %i.j, i32 noundef %i.k) #9
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %spec.select37 = select i1 %spec.select, i64 2147483647, i64 %1 ; 2 uses
end_hunk_0
begin_hunk_1_@mp_unpack_full:bb.a
  store i64 %i.n, ptr %i.o, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 0, ptr %i.p, align 8, !tbaa !23
  %i.q = icmp ne i64 %i.n, 0
  %i.r = icmp sgt i64 %spec.select37, 0
  %i.s = and i1 %i.q, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.e ]
  call void @mp_decode_to_lua_type(ptr noundef %0, ptr noundef nonnull %3)
  %i.t = load i32, ptr %i.p, align 8, !tbaa !23
  switch i32 %i.t, label %bb.h [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.u = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.12) #9
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.v = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.13) #9
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.w = load i64, ptr %i.o, align 8, !tbaa !22   ; 2 uses
  %i.x = icmp ne i64 %i.w, 0
  %i.y = icmp sgt i64 %spec.select37, %indvars.iv.next
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !42

._crit_edge.loopexit:                             ; preds = %bb.h
  %i.aa = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.0.lcssa = phi i32 [ 0, %bb.e ], [ %i.aa, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i64 [ %i.n, %bb.e ], [ %i.w, %._crit_edge.loopexit ]
  br i1 %spec.select, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !25
  %i.ac = sub i64 %i.ab, %.lcssa                  ; 2 uses
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @abort() #10
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @luaL_checkstack(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.14) #9
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !22
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = select i1 %i.af, i64 -1, i64 %i.ac
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ag) #9
  call void @lua_insert(ptr noundef %0, i32 noundef 2) #9
  %i.ah = add nuw nsw i32 %.0.lcssa, 1
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.g, %bb.f, %bb.d, %bb.b
  %.029 = phi i32 [ %i.g, %bb.b ], [ %i.l, %bb.d ], [ %i.u, %bb.f ], [ %i.v, %bb.g ], [ %.0.lcssa, %._crit_edge ], [ %i.ah, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.029
}

declare ptr @luaL_checklstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @luaL_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @lua_insert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @mp_unpack(ptr noundef %0) #2 {
bb.a:
  %i.a = tail call i32 @mp_unpack_full(ptr noundef %0, i64 noundef 0, i64 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mp_unpack_one(ptr noundef %0) #2 {
bb.a:
  %i.a = tail call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 2, i64 noundef 0) #9
  %i.b = tail call i32 @lua_gettop(ptr noundef %0) #9
  %i.c = sub i32 0, %i.b
  tail call void @lua_settop(ptr noundef %0, i32 noundef %i.c) #9
  %i.d = tail call i32 @mp_unpack_full(ptr noundef %0, i64 noundef 1, i64 noundef %i.a)
  ret i32 %i.d
}

declare i64 @luaL_optinteger(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @mp_unpack_limit(ptr noundef %0) #2 {
bb.a:
  %i.a = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 2) #9
  %i.b = tail call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef 0) #9
  %i.c = tail call i32 @lua_gettop(ptr noundef %0) #9
  %i.d = sub i32 0, %i.c
  tail call void @lua_settop(ptr noundef %0, i32 noundef %i.d) #9
  %i.e = tail call i32 @mp_unpack_full(ptr noundef %0, i64 noundef %i.a, i64 noundef %i.b)
  ret i32 %i.e
}

declare i64 @luaL_checkinteger(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @mp_safe(ptr noundef %0) #2 {
bb.a:
  %i.a = tail call i32 @lua_gettop(ptr noundef %0) #9
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -10003) #9
  tail call void @lua_insert(ptr noundef %0, i32 noundef 1) #9
  %i.b = tail call i32 @lua_pcall(ptr noundef %0, i32 noundef %i.a, i32 noundef -1, i32 noundef 0) #9
  %i.c = tail call i32 @lua_gettop(ptr noundef %0) #9
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @lua_pushnil(ptr noundef %0) #9
  tail call void @lua_insert(ptr noundef %0, i32 noundef -2) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 2, %bb.b ], [ %i.c, %bb.a ]
  ret i32 %.0
}

declare i32 @lua_pcall(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @luaopen_create(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0) #9
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @mp_pack, i32 noundef 0) #9
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.15) #9
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @mp_unpack, i32 noundef 0) #9
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.16) #9
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @mp_unpack_one, i32 noundef 0) #9
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.17) #9
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @mp_unpack_limit, i32 noundef 0) #9
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.18) #9
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.19, i64 noundef 8) #9
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.20) #9
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.21, i64 noundef 18) #9
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.22) #9
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.23, i64 noundef 40) #9
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.24) #9
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.25, i64 noundef 36) #9
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.26) #9
  ret i32 1
}

declare void @lua_pushcclosure(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @luaopen_cmsgpack(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @luaopen_create(ptr noundef %0) ; 0 uses
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #9
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -10002, ptr noundef nonnull @.str.19) #9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @luaopen_cmsgpack_safe(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @luaopen_create(ptr noundef %0) ; 0 uses
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #9
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -10002, ptr noundef nonnull @.str.19) #9
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.15) #9
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @mp_safe, i32 noundef 1) #9
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.15) #9
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.16) #9
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @mp_safe, i32 noundef 1) #9
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.16) #9
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.17) #9
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @mp_safe, i32 noundef 1) #9
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.17) #9
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.18) #9
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @mp_safe, i32 noundef 1) #9
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.18) #9
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #9
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -10002, ptr noundef nonnull @.str.27) #9
  ret i32 1
}

declare void @lua_getfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { memory(none) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !10}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{ptr @mp_realloc}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"mp_buf", !14, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!16, !15, i64 16}
!18 = !{!16, !14, i64 0}
!19 = !{!16, !15, i64 8}
!20 = !{!"mp_cur", !14, i64 0, !15, i64 8, !7, i64 16}
!21 = !{!20, !14, i64 0}
!22 = !{!20, !15, i64 8}
!23 = !{!20, !7, i64 16}
!24 = !{ptr @mp_buf_append, ptr @mp_realloc}
!25 = !{!15, !15, i64 0}
!26 = distinct !{!26, !28}
!27 = distinct !{!27, !10}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{ptr @mp_encode_lua_bool, ptr @mp_buf_append, ptr @mp_realloc}
!30 = !{ptr @mp_encode_lua_table}
!31 = !{ptr @mp_encode_lua_table_as_array, ptr @mp_encode_lua_table}
!32 = !{ptr @mp_encode_lua_null, ptr @mp_buf_append, ptr @mp_realloc}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = !{ptr @mp_encode_lua_table_as_array}
!37 = distinct !{!37, !10}
!38 = !{ptr @mp_buf_new, ptr @mp_realloc}
!39 = !{ptr @mp_buf_free, ptr @mp_realloc}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
end_hunk_1
