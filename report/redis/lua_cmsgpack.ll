Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/lua_cmsgpack?download=true
inline.NumInlined: 29
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@mp_decode_to_lua_type:bb.a

bb.bl:                                            ; preds = %bb.bj
  %trunc = and i8 %i.f, -32
  switch i8 %trunc, label %bb.bq [
    i8 -32, label %bb.bm
    i8 -96, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.kq = sext i8 %i.f to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.kq) #9
  %i.kr = load ptr, ptr %1, align 8, !tbaa !21
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  store ptr %i.ks, ptr %1, align 8, !tbaa !21
  %i.kt = load i64, ptr %i.a, align 8, !tbaa !22
  %i.ku = add i64 %i.kt, -1
  store i64 %i.ku, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.bn:                                            ; preds = %bb.bl
  %i.kv = and i32 %i.g, 31
  %i.kw = zext nneg i32 %i.kv to i64              ; 3 uses
  %i.kx = load i64, ptr %i.a, align 8, !tbaa !22
  %.not = icmp ugt i64 %i.kx, %i.kw
  br i1 %.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.ky, align 8, !tbaa !23
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bn
  %i.kz = add nuw nsw i64 %i.kw, 1                ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.la, i64 noundef %i.kw) #9
  %i.lb = load ptr, ptr %1, align 8, !tbaa !21
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.kz
  store ptr %i.lc, ptr %1, align 8, !tbaa !21
  %i.ld = load i64, ptr %i.a, align 8, !tbaa !22
  %i.le = sub i64 %i.ld, %i.kz
  store i64 %i.le, ptr %i.a, align 8, !tbaa !22
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bl
  %trunc230 = and i8 %i.f, -16
  switch i8 %trunc230, label %bb.bt [
    i8 -112, label %bb.br
    i8 -128, label %bb.bs
  ]

bb.br:                                            ; preds = %bb.bq
  %i.lf = and i32 %i.g, 15
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.lh, ptr %1, align 8, !tbaa !21
  %i.li = load i64, ptr %i.a, align 8, !tbaa !22
  %i.lj = add i64 %i.li, -1
  store i64 %i.lj, ptr %i.a, align 8, !tbaa !22
  tail call void @mp_decode_to_lua_array(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.lg)
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  %i.lk = and i32 %i.g, 15
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.lm, ptr %1, align 8, !tbaa !21
  %i.ln = load i64, ptr %i.a, align 8, !tbaa !22
  %i.lo = add i64 %i.ln, -1
  store i64 %i.lo, ptr %i.a, align 8, !tbaa !22
  tail call void @mp_decode_to_lua_hash(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.ll)
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bq
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 2, ptr %i.lp, align 8, !tbaa !23
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
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %2
  %i.n = sub nuw i64 %i.h, %2                     ; 3 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
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
  %i.aa = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %4 = add nuw nsw i32 %i.aa, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.0.lcssa = phi i32 [ 1, %bb.e ], [ %4, %._crit_edge.loopexit ]
  %.0.lcssa.a = phi i32 [ 0, %bb.e ], [ %i.aa, %._crit_edge.loopexit ]
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
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.g, %bb.f, %bb.d, %bb.b
  %.029 = phi i32 [ %i.g, %bb.b ], [ %i.l, %bb.d ], [ %i.u, %bb.f ], [ %i.v, %bb.g ], [ %.0.lcssa.a, %._crit_edge ], [ %.0.lcssa, %bb.k ]
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
end_hunk_0
