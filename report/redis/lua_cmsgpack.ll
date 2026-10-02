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
  %i.e = load ptr, ptr %1, align 8, !tbaa !21     ; 33 uses
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
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !9
  %i.ak = zext i8 %i.aj to i64
  %i.al = or disjoint i64 %i.ah, %i.ak
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.al) #9
  %i.am = load ptr, ptr %1, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  store ptr %i.an, ptr %1, align 8, !tbaa !21
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !22
  %i.ap = add i64 %i.ao, -3
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.m:                                             ; preds = %bb.c
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !22
  %i.ar = icmp ult i64 %i.aq, 3
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.as, align 8, !tbaa !23
  br label %bb.bu

bb.o:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !9
  %i.av = zext i8 %i.au to i16
  %i.aw = shl nuw i16 %i.av, 8
  %i.ax = sext i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = zext i8 %i.az to i64
  %i.bb = or disjoint i64 %i.ax, %i.ba
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.bb) #9
  %i.bc = load ptr, ptr %1, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  store ptr %i.bd, ptr %1, align 8, !tbaa !21
  %i.be = load i64, ptr %i.a, align 8, !tbaa !22
  %i.bf = add i64 %i.be, -3
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.p:                                             ; preds = %bb.c
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !22
  %i.bh = icmp ult i64 %i.bg, 5
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.bi, align 8, !tbaa !23
  br label %bb.bu

bb.r:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bk = load i32, ptr %i.bj, align 1
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  %i.bm = zext i32 %i.bl to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.bm) #9
  %i.bn = load ptr, ptr %1, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 5
  store ptr %i.bo, ptr %1, align 8, !tbaa !21
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !22
  %i.bq = add i64 %i.bp, -5
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.s:                                             ; preds = %bb.c
  %i.br = load i64, ptr %i.a, align 8, !tbaa !22
  %i.bs = icmp ult i64 %i.br, 5
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.bt, align 8, !tbaa !23
  br label %bb.bu

bb.u:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.bx = sext i32 %i.bw to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.bx) #9
  %i.by = load ptr, ptr %1, align 8, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 5
  store ptr %i.bz, ptr %1, align 8, !tbaa !21
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !22
  %i.cb = add i64 %i.ca, -5
  store i64 %i.cb, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.v:                                             ; preds = %bb.c
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !22
  %i.cd = icmp ult i64 %i.cc, 9
  br i1 %i.cd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.ce, align 8, !tbaa !23
  br label %bb.bu

bb.x:                                             ; preds = %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %2 = load i64, ptr %i.cf, align 1
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %3) #9
  %i.cg = load ptr, ptr %1, align 8, !tbaa !21
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 9
  store ptr %i.ch, ptr %1, align 8, !tbaa !21
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !22
  %i.cj = add i64 %i.ci, -9
  store i64 %i.cj, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.y:                                             ; preds = %bb.c
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !22
  %i.cl = icmp ult i64 %i.ck, 9
  br i1 %i.cl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.cm, align 8, !tbaa !23
  br label %bb.bu

bb.aa:                                            ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %4 = load i64, ptr %i.cn, align 1
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %i.co = sitofp i64 %5 to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.co) #9
  %i.cp = load ptr, ptr %1, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 9
  store ptr %i.cq, ptr %1, align 8, !tbaa !21
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !22
  %i.cs = add i64 %i.cr, -9
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.ab:                                            ; preds = %bb.c
  tail call void @lua_pushnil(ptr noundef %0) #9
  %i.ct = load ptr, ptr %1, align 8, !tbaa !21
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store ptr %i.cu, ptr %1, align 8, !tbaa !21
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !22
  %i.cw = add i64 %i.cv, -1
  store i64 %i.cw, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.ac:                                            ; preds = %bb.c
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef 1) #9
  %i.cx = load ptr, ptr %1, align 8, !tbaa !21
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store ptr %i.cy, ptr %1, align 8, !tbaa !21
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !22
  %i.da = add i64 %i.cz, -1
  store i64 %i.da, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.ad:                                            ; preds = %bb.c
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef 0) #9
  %i.db = load ptr, ptr %1, align 8, !tbaa !21
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store ptr %i.dc, ptr %1, align 8, !tbaa !21
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !22
  %i.de = add i64 %i.dd, -1
  store i64 %i.de, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.ae:                                            ; preds = %bb.c
  %i.df = load i64, ptr %i.a, align 8, !tbaa !22
  %i.dg = icmp ult i64 %i.df, 5
  br i1 %i.dg, label %bb.af, label %.lr.ph.i

bb.af:                                            ; preds = %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.dh, align 8, !tbaa !23
  br label %bb.bu

.lr.ph.i:                                         ; preds = %bb.ae
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.dj = load i32, ptr %i.di, align 1
  %.2.insert.insert253 = tail call i32 @llvm.bswap.i32(i32 %i.dj)
  %i.dk = bitcast i32 %.2.insert.insert253 to float
  %i.dl = fpext float %i.dk to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.dl) #9
  %i.dm = load ptr, ptr %1, align 8, !tbaa !21
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 5
  store ptr %i.dn, ptr %1, align 8, !tbaa !21
  %i.do = load i64, ptr %i.a, align 8, !tbaa !22
  %i.dp = add i64 %i.do, -5
  store i64 %i.dp, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.ag:                                            ; preds = %bb.c
  %i.dq = load i64, ptr %i.a, align 8, !tbaa !22
  %i.dr = icmp ult i64 %i.dq, 9
  br i1 %i.dr, label %bb.ah, label %.lr.ph.i223

bb.ah:                                            ; preds = %bb.ag
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.ds, align 8, !tbaa !23
  br label %bb.bu

.lr.ph.i223:                                      ; preds = %bb.ag
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.du = load i64, ptr %i.dt, align 1
  %.4.insert.insert = tail call i64 @llvm.bswap.i64(i64 %i.du)
  %i.dv = bitcast i64 %.4.insert.insert to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.dv) #9
  %i.dw = load ptr, ptr %1, align 8, !tbaa !21
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 9
  store ptr %i.dx, ptr %1, align 8, !tbaa !21
  %i.dy = load i64, ptr %i.a, align 8, !tbaa !22
  %i.dz = add i64 %i.dy, -9
  store i64 %i.dz, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.ai:                                            ; preds = %bb.c
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.eb = icmp ult i64 %i.ea, 2
  br i1 %i.eb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.ec, align 8, !tbaa !23
  br label %bb.bu

bb.ak:                                            ; preds = %bb.ai
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !9
  %i.ef = zext i8 %i.ee to i64                    ; 2 uses
  %i.eg = add nuw nsw i64 %i.ef, 2                ; 3 uses
  %i.eh = icmp ult i64 %i.ea, %i.eg
  br i1 %i.eh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.ei, align 8, !tbaa !23
  br label %bb.bu

bb.am:                                            ; preds = %bb.ak
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.ej, i64 noundef %i.ef) #9
  %i.ek = load ptr, ptr %1, align 8, !tbaa !21
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.eg
  store ptr %i.el, ptr %1, align 8, !tbaa !21
  %i.em = load i64, ptr %i.a, align 8, !tbaa !22
  %i.en = sub i64 %i.em, %i.eg
  store i64 %i.en, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.an:                                            ; preds = %bb.c
  %i.eo = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.ep = icmp ult i64 %i.eo, 3
  br i1 %i.ep, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.eq, align 8, !tbaa !23
  br label %bb.bu

bb.ap:                                            ; preds = %bb.an
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !9
  %i.et = zext i8 %i.es to i64
  %i.eu = shl nuw nsw i64 %i.et, 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !9
  %i.ex = zext i8 %i.ew to i64
  %i.ey = or disjoint i64 %i.eu, %i.ex            ; 2 uses
  %i.ez = add nuw nsw i64 %i.ey, 3                ; 3 uses
  %i.fa = icmp ult i64 %i.eo, %i.ez
  br i1 %i.fa, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.fb, align 8, !tbaa !23
  br label %bb.bu

bb.ar:                                            ; preds = %bb.ap
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.fc, i64 noundef %i.ey) #9
  %i.fd = load ptr, ptr %1, align 8, !tbaa !21
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ez
  store ptr %i.fe, ptr %1, align 8, !tbaa !21
  %i.ff = load i64, ptr %i.a, align 8, !tbaa !22
  %i.fg = sub i64 %i.ff, %i.ez
  store i64 %i.fg, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.as:                                            ; preds = %bb.c
  %i.fh = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.fi = icmp ult i64 %i.fh, 5
  br i1 %i.fi, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.fj, align 8, !tbaa !23
  br label %bb.bu

bb.au:                                            ; preds = %bb.as
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.fl = load i32, ptr %i.fk, align 1
  %i.fm = tail call i32 @llvm.bswap.i32(i32 %i.fl)
  %i.fn = zext i32 %i.fm to i64                   ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 2 uses
  store ptr %i.fo, ptr %1, align 8, !tbaa !21
  %i.fp = add i64 %i.fh, -5                       ; 2 uses
  store i64 %i.fp, ptr %i.a, align 8, !tbaa !22
  %i.fq = icmp ult i64 %i.fp, %i.fn
  br i1 %i.fq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.fr, align 8, !tbaa !23
  br label %bb.bu

bb.aw:                                            ; preds = %bb.au
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.fo, i64 noundef %i.fn) #9
  %i.fs = load ptr, ptr %1, align 8, !tbaa !21
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fn
  store ptr %i.ft, ptr %1, align 8, !tbaa !21
  %i.fu = load i64, ptr %i.a, align 8, !tbaa !22
  %i.fv = sub i64 %i.fu, %i.fn
  store i64 %i.fv, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.ax:                                            ; preds = %bb.c
  %i.fw = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
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
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

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
