Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/lua_cjson?download=true
inline.NumInlined: 83
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@json_append_string:bb.a
  %i.w = load ptr, ptr %1, align 8, !tbaa !18
  %i.x = load i64, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.h, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  store i8 %i.s, ptr %i.z, align 1, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aa = add nuw i64 %.016, 1                    ; 2 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !24
  %i.ac = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.g, %strbuf_ensure_empty_length.exit
  %i.ad = load ptr, ptr %1, align 8, !tbaa !18
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !17  ; 2 uses
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.h, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  store i8 34, ptr %i.ag, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @json_append_number(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef range(i32 -2, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call double @lua_tonumber(ptr noundef %0, i32 noundef %3) #12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1336
  %i.c = load i32, ptr %i.b, align 8, !tbaa !45
  switch i32 %i.c, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call double @llvm.fabs.f64(double %i.a)
  %or.cond = fcmp ueq double %i.d, +inf
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 1344
  %.val = load i32, ptr %i.e, align 8, !tbaa !16
  %.not.i = icmp eq i32 %.val, 0
  br i1 %.not.i, label %bb.d, label %json_encode_exception.exit

bb.d:                                             ; preds = %bb.c
  tail call void @strbuf_free(ptr noundef %2) #12
  br label %json_encode_exception.exit

json_encode_exception.exit:                       ; preds = %bb.c, %bb.d
  %i.f = tail call i32 @lua_type(ptr noundef %0, i32 noundef range(i32 -2, 0) %3) #12
  %i.g = tail call ptr @lua_typename(ptr noundef %0, i32 noundef %i.f) #12
  %i.h = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.66, ptr noundef %i.g, ptr noundef nonnull @.str.60) #12 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.i = fcmp uno double %i.a, 0.000000e+00
  br i1 %i.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @strbuf_append_mem(ptr noundef %2, ptr noundef nonnull @.str.61, i64 noundef 3)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.j = tail call double @llvm.fabs.f64(double %i.a)
  %or.cond20 = fcmp ueq double %i.j, +inf
  br i1 %or.cond20, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr i8, ptr %2, i64 8
  %.val.i.i = load i64, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr i8, ptr %2, i64 16         ; 4 uses
  %.val4.i.i = load i64, ptr %i.l, align 8, !tbaa !17 ; 3 uses
  %i.m = sub i64 %.val4.i.i, %.val.i.i
  %i.n = icmp ugt i64 %i.m, -5
  br i1 %i.n, label %bb.i, label %strbuf_append_mem.exit

bb.i:                                             ; preds = %bb.h
  %i.o = add i64 %.val4.i.i, 4
  tail call void @strbuf_resize(ptr noundef nonnull %2, i64 noundef %i.o) #12
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !17
  br label %strbuf_append_mem.exit

strbuf_append_mem.exit:                           ; preds = %bb.h, %bb.i
  %i.p = phi i64 [ %.val4.i.i, %bb.h ], [ %.pre.i, %bb.i ]
  %i.q = load ptr, ptr %2, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i32 1819047278, ptr %i.r, align 1
  %i.s = load i64, ptr %i.l, align 8, !tbaa !17
  %i.t = add i64 %i.s, 4
  store i64 %i.t, ptr %i.l, align 8, !tbaa !17
  br label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.b, %bb.e, %json_encode_exception.exit
  %i.u = getelementptr i8, ptr %2, i64 8
  %.val.i = load i64, ptr %i.u, align 8, !tbaa !29
  %i.v = getelementptr i8, ptr %2, i64 16         ; 4 uses
  %.val4.i = load i64, ptr %i.v, align 8, !tbaa !17 ; 3 uses
  %i.w = sub i64 %.val4.i, %.val.i
  %i.x = icmp ugt i64 %i.w, -33
  br i1 %i.x, label %bb.k, label %strbuf_ensure_empty_length.exit

bb.k:                                             ; preds = %bb.j
  %i.y = add i64 %.val4.i, 32
  tail call void @strbuf_resize(ptr noundef nonnull %2, i64 noundef %i.y) #12
  %.val22.pre = load i64, ptr %i.v, align 8, !tbaa !17
  br label %strbuf_ensure_empty_length.exit

strbuf_ensure_empty_length.exit:                  ; preds = %bb.j, %bb.k
  %.val22 = phi i64 [ %.val4.i, %bb.j ], [ %.val22.pre, %bb.k ]
  %.val21 = load ptr, ptr %2, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val21, i64 %.val22
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1340
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !46
  %i.ac = tail call i32 @fpconv_g_fmt(ptr noundef %i.z, double noundef %i.a, i32 noundef %i.ab) #12
  %i.ad = sext i32 %i.ac to i64
  %i.ae = load i64, ptr %i.v, align 8, !tbaa !17
  %i.af = add i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.v, align 8, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %strbuf_ensure_empty_length.exit, %strbuf_append_mem.exit, %bb.f
  ret void
}

declare i32 @lua_toboolean(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @strbuf_append_mem(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 2, 6) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %.val4.i = load i64, ptr %i.b, align 8, !tbaa !17 ; 3 uses
  %i.c = xor i64 %.val4.i, -1
  %i.d = add i64 %.val.i, %i.c
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %strbuf_ensure_empty_length.exit

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %.val4.i, %2
  tail call void @strbuf_resize(ptr noundef nonnull %0, i64 noundef %i.f) #12
  %.pre = load i64, ptr %i.b, align 8, !tbaa !17
  br label %strbuf_ensure_empty_length.exit

strbuf_ensure_empty_length.exit:                  ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.val4.i, %bb.a ], [ %.pre, %bb.b ]
  %i.h = load ptr, ptr %0, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %2, i1 false)
  %i.j = load i64, ptr %i.b, align 8, !tbaa !17
  %i.k = add i64 %i.j, %2
  store i64 %i.k, ptr %i.b, align 8, !tbaa !17
  ret void
}

declare i32 @lua_checkstack(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_getmetatable(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_getfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @lua_objlen(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare void @strbuf_append_string(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @strbuf_resize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare double @lua_tonumber(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare i32 @fpconv_g_fmt(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_rawgeti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_pushnil(ptr noundef) local_unnamed_addr #1

declare i32 @lua_next(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lua_typename(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @luaL_checklstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @strbuf_new(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @json_next_token(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.sroa.0.i.i.sroa.0 = alloca <4 x i8>, align 4  ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15    ; 2 uses
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7    ; 3 uses
  store i32 %i.i, ptr %1, align 8, !tbaa !27
  %.not82 = icmp eq i32 %i.i, 11
  br i1 %.not82, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.j = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 4 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !23
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7    ; 3 uses
  store i32 %i.o, ptr %1, align 8, !tbaa !27
  %.not = icmp eq i32 %i.o, 11
  br i1 %.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa80 = phi ptr [ %i.e, %bb.a ], [ %i.k, %.lr.ph ] ; 13 uses
  %.lcssa79 = phi i8 [ %i.f, %bb.a ], [ %i.l, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.i, %bb.a ], [ %i.o, %.lr.ph ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !21
  %i.q = ptrtoint ptr %.lcssa80 to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !28
  switch i32 %.lcssa, label %bb.c [
    i32 12, label %bb.b
    i32 10, label %bb.bh
    i32 13, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge
  store i32 12, ptr %1, align 8, !tbaa !27
  store i64 %i.s, ptr %i.t, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @.str.69, ptr %i.u, align 8, !tbaa !15
  br label %bb.bh

bb.c:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %.lcssa80, i64 1
  store ptr %i.v, ptr %i.d, align 8, !tbaa !23
  br label %bb.bh

bb.d:                                             ; preds = %._crit_edge
  switch i8 %.lcssa79, label %bb.ao [
    i8 34, label %bb.e
    i8 45, label %bb.ap
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1024
  %i.x = load i8, ptr %.lcssa80, align 1, !tbaa !15
  %i.y = icmp eq i8 %i.x, 34
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 921, ptr noundef nonnull @__PRETTY_FUNCTION__.json_next_string_token) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.lcssa80, i64 1 ; 2 uses
  store ptr %i.z, ptr %i.d, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %i.ac, align 8, !tbaa !17
  %.sroa.0.i.i.sroa.0.1.i.i.1.i.i.1.i.1.i.1..sroa_idx131 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.sroa.0, i64 1
  %.sroa.0.i.i.sroa.0.2.i.i.2.i.i.2.i.2.i.2..sroa_idx133 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.sroa.0, i64 2
  %.sroa.0.i.i.sroa.0.1.i.i.1.i.i.1.i.1.i.1..sroa_idx132 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.sroa.0, i64 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.g
  %.val35.i = phi ptr [ %i.z, %bb.g ], [ %.val35.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.ad = load i8, ptr %.val35.i, align 1, !tbaa !15 ; 2 uses
  switch i8 %i.ad, label %bb.am [
    i8 34, label %bb.an
    i8 0, label %bb.h
    i8 92, label %bb.i
  ]

bb.h:                                             ; preds = %.backedge.i
  %.val36.i = load ptr, ptr %0, align 8, !tbaa !21
  store i32 12, ptr %1, align 8, !tbaa !27
  %i.ae = ptrtoint ptr %.val35.i to i64
  %i.af = ptrtoint ptr %.val36.i to i64
  %i.ag = sub i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !28
  br label %json_next_string_token.exit

bb.i:                                             ; preds = %.backedge.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.val35.i, i64 1 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !15
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !15  ; 2 uses
  switch i8 %i.al, label %bb.al [
    i8 117, label %bb.j
    i8 0, label %bb.ak
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.sroa.0)
  %i.am = getelementptr inbounds nuw i8, ptr %.val35.i, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !15  ; 3 uses
  %i.ao = add i8 %i.an, -48
  %or.cond.i.i.i.i = icmp ult i8 %i.ao, 10
  br i1 %or.cond.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = or i8 %i.an, 32                         ; 2 uses
  %i.aq = add i8 %i.ap, -97
  %or.cond5.i.i.i.i = icmp ult i8 %i.aq, 6
  br i1 %or.cond5.i.i.i.i, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink15.i.i.i = phi i8 [ %i.an, %bb.j ], [ %i.ap, %bb.k ]
  %.sink14.i.i.i = phi i32 [ -48, %bb.j ], [ -87, %bb.k ]
  %i.ar = zext nneg i8 %.sink15.i.i.i to i32
  %i.as = add nsw i32 %.sink14.i.i.i, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.val35.i, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !15  ; 3 uses
  %i.av = add i8 %i.au, -48
  %or.cond.i.1.i.i.i = icmp ult i8 %i.av, 10
  br i1 %or.cond.i.1.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = or i8 %i.au, 32                         ; 2 uses
  %i.ax = add i8 %i.aw, -97
  %or.cond5.i.1.i.i.i = icmp ult i8 %i.ax, 6
  br i1 %or.cond5.i.1.i.i.i, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink17.i.i.i = phi i8 [ %i.aw, %bb.m ], [ %i.au, %bb.l ]
  %.sink16.i.i.i = phi i32 [ -87, %bb.m ], [ -48, %bb.l ]
  %i.ay = zext nneg i8 %.sink17.i.i.i to i32
  %i.az = add nsw i32 %.sink16.i.i.i, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.val35.i, i64 4
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !15  ; 3 uses
  %i.bc = add i8 %i.bb, -48
  %or.cond.i.2.i.i.i = icmp ult i8 %i.bc, 10
  br i1 %or.cond.i.2.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = or i8 %i.bb, 32                         ; 2 uses
  %i.be = add i8 %i.bd, -97
  %or.cond5.i.2.i.i.i = icmp ult i8 %i.be, 6
  br i1 %or.cond5.i.2.i.i.i, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink19.i.i.i = phi i8 [ %i.bd, %bb.o ], [ %i.bb, %bb.n ]
  %.sink18.i.i.i = phi i32 [ -87, %bb.o ], [ -48, %bb.n ]
  %i.bf = zext nneg i8 %.sink19.i.i.i to i32
  %i.bg = add nsw i32 %.sink18.i.i.i, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.val35.i, i64 5
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !15  ; 3 uses
  %i.bj = add i8 %i.bi, -48
  %or.cond.i.3.i.i.i = icmp ult i8 %i.bj, 10
  br i1 %or.cond.i.3.i.i.i, label %decode_hex4.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = or i8 %i.bi, 32                         ; 2 uses
  %i.bl = add i8 %i.bk, -97
  %or.cond5.i.3.i.i.i = icmp ult i8 %i.bl, 6
  br i1 %or.cond5.i.3.i.i.i, label %decode_hex4.exit.i.i, label %.loopexit.i

decode_hex4.exit.i.i:                             ; preds = %bb.q, %bb.p
  %.sink21.i.i.i = phi i8 [ %i.bk, %bb.q ], [ %i.bi, %bb.p ]
  %.sink20.i.i.i = phi i32 [ -87, %bb.q ], [ -48, %bb.p ]
  %i.bm = zext nneg i8 %.sink21.i.i.i to i32
  %i.bn = shl nuw nsw i32 %i.as, 12
  %i.bo = shl nuw nsw i32 %i.az, 8
  %i.bp = shl nuw nsw i32 %i.bg, 4
  %i.bq = add nuw nsw i32 %i.bo, %i.bn
  %i.br = add nuw nsw i32 %i.bq, %i.bp
  %i.bs = add nuw nsw i32 %i.br, %i.bm
  %i.bt = add nsw i32 %i.bs, %.sink20.i.i.i       ; 14 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %.loopexit.i, label %bb.r

bb.r:                                             ; preds = %decode_hex4.exit.i.i
  %i.bv = and i32 %i.bt, 63488
  %i.bw = icmp eq i32 %i.bv, 55296
  br i1 %i.bw, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.bx = and i32 %i.bt, 1024
  %.not.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i, label %bb.t, label %.loopexit.i

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %.val35.i, i64 6
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !15
  %.not27.i.i = icmp eq i8 %i.bz, 92
  br i1 %.not27.i.i, label %bb.u, label %.loopexit.i

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %.val35.i, i64 7
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !15
  %.not28.i.i = icmp eq i8 %i.cb, 117
  br i1 %.not28.i.i, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %.val35.i, i64 8
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !15  ; 3 uses
  %i.ce = add i8 %i.cd, -48
  %or.cond.i.i35.i.i = icmp ult i8 %i.ce, 10
  br i1 %or.cond.i.i35.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = or i8 %i.cd, 32                         ; 2 uses
  %i.cg = add i8 %i.cf, -97
  %or.cond5.i.i36.i.i = icmp ult i8 %i.cg, 6
  br i1 %or.cond5.i.i36.i.i, label %bb.x, label %.loopexit.i

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink15.i40.i.i = phi i8 [ %i.cd, %bb.v ], [ %i.cf, %bb.w ]
  %.sink14.i41.i.i = phi i32 [ -48, %bb.v ], [ -87, %bb.w ]
  %i.ch = zext nneg i8 %.sink15.i40.i.i to i32
  %i.ci = add nsw i32 %.sink14.i41.i.i, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %.val35.i, i64 9
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !15  ; 3 uses
  %i.cl = add i8 %i.ck, -48
  %or.cond.i.1.i42.i.i = icmp ult i8 %i.cl, 10
  br i1 %or.cond.i.1.i42.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = or i8 %i.ck, 32                         ; 2 uses
  %i.cn = add i8 %i.cm, -97
  %or.cond5.i.1.i43.i.i = icmp ult i8 %i.cn, 6
  br i1 %or.cond5.i.1.i43.i.i, label %bb.z, label %.loopexit.i

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink17.i44.i.i = phi i8 [ %i.cm, %bb.y ], [ %i.ck, %bb.x ]
  %.sink16.i45.i.i = phi i32 [ -87, %bb.y ], [ -48, %bb.x ]
  %i.co = zext nneg i8 %.sink17.i44.i.i to i32
  %i.cp = add nsw i32 %.sink16.i45.i.i, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %.val35.i, i64 10
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !15  ; 3 uses
  %i.cs = add i8 %i.cr, -48
  %or.cond.i.2.i46.i.i = icmp ult i8 %i.cs, 10
  br i1 %or.cond.i.2.i46.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ct = or i8 %i.cr, 32                         ; 2 uses
  %i.cu = add i8 %i.ct, -97
  %or.cond5.i.2.i47.i.i = icmp ult i8 %i.cu, 6
  br i1 %or.cond5.i.2.i47.i.i, label %bb.ab, label %.loopexit.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink19.i48.i.i = phi i8 [ %i.ct, %bb.aa ], [ %i.cr, %bb.z ]
  %.sink18.i49.i.i = phi i32 [ -87, %bb.aa ], [ -48, %bb.z ]
  %i.cv = zext nneg i8 %.sink19.i48.i.i to i32
  %i.cw = add nsw i32 %.sink18.i49.i.i, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.val35.i, i64 11
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !15  ; 3 uses
  %i.cz = add i8 %i.cy, -48
  %or.cond.i.3.i50.i.i = icmp ult i8 %i.cz, 10
  br i1 %or.cond.i.3.i50.i.i, label %decode_hex4.exit54.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = or i8 %i.cy, 32                         ; 2 uses
  %i.db = add i8 %i.da, -97
  %or.cond5.i.3.i51.i.i = icmp ult i8 %i.db, 6
  br i1 %or.cond5.i.3.i51.i.i, label %decode_hex4.exit54.i.i, label %.loopexit.i

decode_hex4.exit54.i.i:                           ; preds = %bb.ac, %bb.ab
  %.sink21.i52.i.i = phi i8 [ %i.da, %bb.ac ], [ %i.cy, %bb.ab ]
  %.sink20.i53.i.i = phi i32 [ -87, %bb.ac ], [ -48, %bb.ab ]
  %i.dc = zext nneg i8 %.sink21.i52.i.i to i32
  %i.dd = shl nuw nsw i32 %i.ci, 12
  %i.de = shl nuw nsw i32 %i.cp, 8
  %i.df = shl nuw nsw i32 %i.cw, 4
  %i.dg = add nuw nsw i32 %i.de, %i.dd
  %i.dh = add nuw nsw i32 %i.dg, %i.df
  %i.di = add nuw nsw i32 %i.dh, %i.dc
  %i.dj = add nsw i32 %i.di, %.sink20.i53.i.i     ; 2 uses
  %i.dk = and i32 %i.dj, -2147419136
  %or.cond.i.i = icmp eq i32 %i.dk, 56320
  br i1 %or.cond.i.i, label %.thread78.i.i, label %.loopexit.i

.thread78.i.i:                                    ; preds = %decode_hex4.exit54.i.i
  %i.dl = shl nuw nsw i32 %i.bt, 10
  %i.dm = and i32 %i.dl, 1047552
  %i.dn = and i32 %i.dj, 1023
  %i.do = add nuw nsw i32 %i.dm, 65536
  %i.dp = or disjoint i32 %i.dn, %i.do
  br label %bb.aj

bb.ad:                                            ; preds = %bb.r
  %i.dq = icmp samesign ult i32 %i.bt, 128
  br i1 %i.dq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dr = trunc nuw nsw i32 %i.bt to i8
  store i8 %i.dr, ptr %.sroa.0.i.i.sroa.0, align 4, !tbaa !15
  br label %json_append_unicode_escape.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.ds = icmp samesign ult i32 %i.bt, 2048
  br i1 %i.ds, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dt = lshr i32 %i.bt, 6
  %i.du = trunc nuw nsw i32 %i.dt to i8
  %i.dv = or disjoint i8 %i.du, -64
  store i8 %i.dv, ptr %.sroa.0.i.i.sroa.0, align 4, !tbaa !15
  %i.dw = trunc i32 %i.bt to i8
  %i.dx = and i8 %i.dw, 63
  %i.dy = or disjoint i8 %i.dx, -128
  store i8 %i.dy, ptr %.sroa.0.i.i.sroa.0.1.i.i.1.i.i.1.i.1.i.1..sroa_idx132, align 1, !tbaa !15
  br label %json_append_unicode_escape.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.dz = icmp samesign ult i32 %i.bt, 65536
  br i1 %i.dz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ea = lshr i32 %i.bt, 12
  %i.eb = trunc nuw nsw i32 %i.ea to i8
  %i.ec = or disjoint i8 %i.eb, -32
  store i8 %i.ec, ptr %.sroa.0.i.i.sroa.0, align 4, !tbaa !15
  %i.ed = lshr i32 %i.bt, 6
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = and i8 %i.ee, 63
  %i.eg = or disjoint i8 %i.ef, -128
  store i8 %i.eg, ptr %.sroa.0.i.i.sroa.0.1.i.i.1.i.i.1.i.1.i.1..sroa_idx131, align 1, !tbaa !15
  %i.eh = trunc i32 %i.bt to i8
  %i.ei = and i8 %i.eh, 63
  %i.ej = or disjoint i8 %i.ei, -128
  store i8 %i.ej, ptr %.sroa.0.i.i.sroa.0.2.i.i.2.i.i.2.i.2.i.2..sroa_idx133, align 2, !tbaa !15
  br label %json_append_unicode_escape.exit.i

bb.aj:                                            ; preds = %bb.ah, %.thread78.i.i
  %.0727682.i.i = phi i64 [ 12, %.thread78.i.i ], [ 6, %bb.ah ]
  %.022707781.i.i = phi i32 [ %i.dp, %.thread78.i.i ], [ %i.bt, %bb.ah ] ; 4 uses
  %i.ek = lshr i32 %.022707781.i.i, 6
  %i.el = lshr i32 %.022707781.i.i, 12
  %i.em = lshr i32 %.022707781.i.i, 18
  %i.en = trunc i32 %.022707781.i.i to i8
  %i.eo = trunc i32 %i.ek to i8
  %i.ep = trunc i32 %i.el to i8
  %i.eq = trunc nsw i32 %i.em to i8
  %i.er = insertelement <4 x i8> poison, i8 %i.eq, i64 0
  %i.es = insertelement <4 x i8> %i.er, i8 %i.ep, i64 1
  %i.et = insertelement <4 x i8> %i.es, i8 %i.eo, i64 2
  %i.eu = insertelement <4 x i8> %i.et, i8 %i.en, i64 3
  %i.ev = and <4 x i8> %i.eu, <i8 -1, i8 63, i8 63, i8 63>
  %i.ew = or disjoint <4 x i8> %i.ev, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ew, ptr %.sroa.0.i.i.sroa.0, align 4, !tbaa !15
  br label %json_append_unicode_escape.exit.i

json_append_unicode_escape.exit.i:                ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.ae
  %.071.i.i = phi i64 [ 6, %bb.ae ], [ 6, %bb.ag ], [ 6, %bb.ai ], [ %.0727682.i.i, %bb.aj ]
  %.0.i.i.i = phi i64 [ 1, %bb.ae ], [ 2, %bb.ag ], [ 3, %bb.ai ], [ 4, %bb.aj ] ; 2 uses
  %i.ex = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 3 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fb, ptr noundef nonnull readonly align 4 dereferenceable(1) %.sroa.0.i.i.sroa.0, i64 range(i64 -2147483648, 2147483648) %.0.i.i.i, i1 false)
  %i.fc = load i64, ptr %i.ez, align 8, !tbaa !17
  %i.fd = add i64 %i.fc, %.0.i.i.i
  store i64 %i.fd, ptr %i.ez, align 8, !tbaa !17
  %i.fe = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.071.i.i ; 2 uses
  store ptr %i.ff, ptr %i.d, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.sroa.0)
  br label %.backedge.i.backedge

.loopexit.i:                                      ; preds = %decode_hex4.exit54.i.i, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.t, %bb.s, %decode_hex4.exit.i.i, %bb.q, %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.sroa.0)
  %.val34.i = load ptr, ptr %0, align 8, !tbaa !21
  store i32 12, ptr %1, align 8, !tbaa !27
  %i.fg = ptrtoint ptr %.val35.i to i64
  %i.fh = ptrtoint ptr %.val34.i to i64
  %i.fi = sub i64 %i.fg, %i.fh
  store i64 %i.fi, ptr %i.t, align 8, !tbaa !28
  br label %json_next_string_token.exit

bb.ak:                                            ; preds = %bb.i
  %.val.i = load ptr, ptr %0, align 8, !tbaa !21
  store i32 12, ptr %1, align 8, !tbaa !27
  %i.fj = ptrtoint ptr %.val35.i to i64
  %i.fk = ptrtoint ptr %.val.i to i64
  %i.fl = sub i64 %i.fj, %i.fk
  store i64 %i.fl, ptr %i.t, align 8, !tbaa !28
  br label %json_next_string_token.exit

bb.al:                                            ; preds = %bb.i
  store ptr %i.ah, ptr %i.d, align 8, !tbaa !23
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.backedge.i
  %.0.i = phi i8 [ %i.al, %bb.al ], [ %i.ad, %.backedge.i ]
  %i.fm = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !17 ; 2 uses
  %i.fq = add i64 %i.fp, 1
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !17
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fp
  store i8 %.0.i, ptr %i.fr, align 1, !tbaa !15
  %i.fs = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1 ; 2 uses
  store ptr %i.ft, ptr %i.d, align 8, !tbaa !23
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.am, %json_append_unicode_escape.exit.i
  %.val35.i.be = phi ptr [ %i.ft, %bb.am ], [ %i.ff, %json_append_unicode_escape.exit.i ]
  br label %.backedge.i, !llvm.loop !47

bb.an:                                            ; preds = %.backedge.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.val35.i, i64 1
  store ptr %i.fu, ptr %i.d, align 8, !tbaa !23
  %i.fv = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %.val38.i = load ptr, ptr %i.fv, align 8, !tbaa !18
  %i.fw = getelementptr i8, ptr %i.fv, i64 16
  %.val39.i = load i64, ptr %i.fw, align 8, !tbaa !17
  %i.fx = getelementptr inbounds nuw i8, ptr %.val38.i, i64 %.val39.i
  store i8 0, ptr %i.fx, align 1, !tbaa !15
  store i32 4, ptr %1, align 8, !tbaa !27
  %i.fy = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val40.i = load ptr, ptr %i.fy, align 8, !tbaa !18
  %i.ga = getelementptr i8, ptr %i.fy, i64 16
  %.val41.i = load i64, ptr %i.ga, align 8, !tbaa !17
  store i64 %.val41.i, ptr %i.fz, align 8, !tbaa !24
  br label %json_next_string_token.exit

json_next_string_token.exit:                      ; preds = %bb.h, %.loopexit.i, %bb.ak, %bb.an
  %.val40.sink.i = phi ptr [ %.val40.i, %bb.an ], [ @.str.75, %bb.ak ], [ @.str.74, %.loopexit.i ], [ @.str.73, %bb.h ]
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.val40.sink.i, ptr %i.gb, align 8, !tbaa !15
  br label %bb.bh

bb.ao:                                            ; preds = %bb.d
  %i.gc = add i8 %.lcssa79, -48
  %or.cond = icmp ult i8 %i.gc, 10
  br i1 %or.cond, label %bb.ap, label %bb.ax

bb.ap:                                            ; preds = %bb.d, %bb.ao
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 1348
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !48
  %.not52 = icmp eq i32 %i.ge, 0
  br i1 %.not52, label %bb.aq, label %json_is_invalid_number.exit.thread69

bb.aq:                                            ; preds = %bb.ap
  %i.gf = load i8, ptr %.lcssa80, align 1, !tbaa !15 ; 2 uses
  switch i8 %i.gf, label %bb.as [
    i8 43, label %json_is_invalid_number.exit.thread
    i8 45, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.gg = getelementptr inbounds nuw i8, ptr %.lcssa80, i64 1 ; 2 uses
  %.pr.i = load i8, ptr %i.gg, align 1, !tbaa !15
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gh = phi i8 [ %i.gf, %bb.aq ], [ %.pr.i, %bb.ar ] ; 2 uses
  %.0.i61 = phi ptr [ %.lcssa80, %bb.aq ], [ %i.gg, %bb.ar ] ; 3 uses
  %i.gi = icmp eq i8 %i.gh, 48
  br i1 %i.gi, label %json_is_invalid_number.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gj = icmp slt i8 %i.gh, 58
  br i1 %i.gj, label %json_is_invalid_number.exit.thread69, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gk = tail call i32 @strncasecmp(ptr noundef nonnull %.0.i61, ptr noundef nonnull @.str.76, i64 noundef 3) #14
  %.not.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i, label %json_is_invalid_number.exit.thread, label %.split

.split:                                           ; preds = %bb.au
  %i.gl = tail call i32 @strncasecmp(ptr noundef nonnull %.0.i61, ptr noundef nonnull @.str.61, i64 noundef 3) #14
  %.not16.i = icmp eq i32 %i.gl, 0
  br i1 %.not16.i, label %json_is_invalid_number.exit.thread, label %json_is_invalid_number.exit.thread69

json_is_invalid_number.exit:                      ; preds = %bb.as
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i61, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !15  ; 2 uses
  %i.go = and i8 %i.gn, -33
  %i.gp = icmp eq i8 %i.go, 88
  %i.gq = add i8 %i.gn, -48
  %or.cond.i = icmp ult i8 %i.gq, 10
  %or.cond17.i = or i1 %i.gp, %or.cond.i
  br i1 %or.cond17.i, label %json_is_invalid_number.exit.thread, label %json_is_invalid_number.exit.thread69

json_is_invalid_number.exit.thread:               ; preds = %.split, %bb.au, %bb.aq, %json_is_invalid_number.exit
  store i32 12, ptr %1, align 8, !tbaa !27
  store i64 %i.s, ptr %i.t, align 8, !tbaa !28
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @.str.70, ptr %i.gr, align 8, !tbaa !15
  br label %bb.bh

json_is_invalid_number.exit.thread69:             ; preds = %.split, %bb.at, %json_is_invalid_number.exit, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 5, ptr %1, align 8, !tbaa !27
  %i.gs = call double @fpconv_strtod(ptr noundef nonnull %.lcssa80, ptr noundef nonnull %i.a) #12
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store double %i.gs, ptr %i.gt, align 8, !tbaa !15
  %i.gu = load ptr, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %i.gv = load ptr, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %json_is_invalid_number.exit.thread69
  %.val.i62 = load ptr, ptr %0, align 8, !tbaa !21
  store i32 12, ptr %1, align 8, !tbaa !27
  %i.gx = ptrtoint ptr %i.gu to i64
  %i.gy = ptrtoint ptr %.val.i62 to i64
  %i.gz = sub i64 %i.gx, %i.gy
  store i64 %i.gz, ptr %i.t, align 8, !tbaa !28
  store ptr @.str.70, ptr %i.gt, align 8, !tbaa !15
  br label %json_next_number_token.exit

bb.aw:                                            ; preds = %json_is_invalid_number.exit.thread69
  store ptr %i.gv, ptr %i.d, align 8, !tbaa !23
  br label %json_next_number_token.exit

json_next_number_token.exit:                      ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.bh

bb.ax:                                            ; preds = %bb.ao
  %i.ha = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.lcssa80, ptr noundef nonnull dereferenceable(5) @.str.18, i64 noundef 4) #14
  %.not47 = icmp eq i32 %i.ha, 0
  br i1 %.not47, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 6, ptr %1, align 8, !tbaa !27
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.hb, align 8, !tbaa !15
  %i.hc = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store ptr %i.hd, ptr %i.d, align 8, !tbaa !23
  br label %bb.bh

bb.az:                                            ; preds = %bb.ax
  %i.he = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.lcssa80, ptr noundef nonnull dereferenceable(6) @.str.19, i64 noundef 5) #14
  %.not48 = icmp eq i32 %i.he, 0
  br i1 %.not48, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 6, ptr %1, align 8, !tbaa !27
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.hf, align 8, !tbaa !15
  %i.hg = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 5
  store ptr %i.hh, ptr %i.d, align 8, !tbaa !23
  br label %bb.bh

bb.bb:                                            ; preds = %bb.az
  %i.hi = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.lcssa80, ptr noundef nonnull dereferenceable(5) @.str.12, i64 noundef 4) #14
  %.not49 = icmp eq i32 %i.hi, 0
  br i1 %.not49, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 7, ptr %1, align 8, !tbaa !27
  %i.hj = getelementptr inbounds nuw i8, ptr %.lcssa80, i64 4
  store ptr %i.hj, ptr %i.d, align 8, !tbaa !23
  br label %bb.bh

bb.bd:                                            ; preds = %bb.bb
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 1348
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !48
  %.not50 = icmp eq i32 %i.hl, 0
  br i1 %.not50, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
end_hunk_0
