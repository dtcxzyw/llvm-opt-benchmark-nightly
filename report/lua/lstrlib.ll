Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lstrlib?download=true
inline.NumInlined: 79
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@str_reverse:bb.a
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i64 [ 0, %bb.a ], [ %i.m, %.lr.ph ]
  call void @luaL_pushresultsize(ptr noundef nonnull %1, i64 noundef %.lcssa) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @str_sub(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #12
  %i.c = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 2) #12 ; 5 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11   ; 6 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %posrelatI.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.c, 0
  %i.g = sub nsw i64 0, %i.d
  %i.h = icmp slt i64 %i.c, %i.g
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond.i, label %posrelatI.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.d, 1
  %i.j = add i64 %i.i, %i.c
  br label %posrelatI.exit

posrelatI.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.j, %bb.c ], [ %i.c, %bb.a ], [ 1, %bb.b ] ; 3 uses
  %i.k = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef -1) #12 ; 5 uses
  %i.l = icmp sgt i64 %i.k, %i.d
  br i1 %i.l, label %getendpos.exit, label %bb.d

bb.d:                                             ; preds = %posrelatI.exit
  %i.m = icmp sgt i64 %i.k, -1
  br i1 %i.m, label %getendpos.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sub nsw i64 0, %i.d
  %i.o = icmp slt i64 %i.k, %i.n
  br i1 %i.o, label %getendpos.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add i64 %i.d, 1
  %i.q = add i64 %i.p, %i.k
  br label %getendpos.exit

getendpos.exit:                                   ; preds = %posrelatI.exit, %bb.d, %bb.e, %bb.f
  %.0.i11 = phi i64 [ %i.q, %bb.f ], [ %i.d, %posrelatI.exit ], [ %i.k, %bb.d ], [ 0, %bb.e ] ; 2 uses
  %.not = icmp ugt i64 %.0.i, %.0.i11
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %getendpos.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -1
  %reass.sub = sub nuw i64 %.0.i11, %.0.i
  %i.t = add i64 %reass.sub, 1
  %i.u = call ptr @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.s, i64 noundef %i.t) #12 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %getendpos.exit
  %i.v = call ptr @lua_pushstring(ptr noundef %0, ptr noundef nonnull @.str.37) #12 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @str_upper(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %struct.luaL_Buffer, align 16       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.b = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #12
  %i.c = load i64, ptr %i.a, align 8, !tbaa !11
  %i.d = call ptr @luaL_buffinitsize(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.c) #12
  %i.e = load i64, ptr %i.a, align 8, !tbaa !11
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = tail call ptr @__ctype_toupper_loc() #14
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.o, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.010
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !45
  %i.m = trunc i32 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.010
  store i8 %i.m, ptr %i.n, align 1, !tbaa !13
  %i.o = add nuw i64 %.010, 1                     ; 2 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i64 [ 0, %bb.a ], [ %i.p, %bb.b ]
  call void @luaL_pushresultsize(ptr noundef nonnull %1, i64 noundef %.lcssa) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @str_pack(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.luaL_Buffer, align 16       ; 22 uses
  %2 = alloca %struct.Header, align 8             ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.g = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #12 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !46
  store ptr %0, ptr %2, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 1, ptr %i.h, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %i.i, align 4, !tbaa !50
  tail call void @lua_pushnil(ptr noundef %0) #12
  call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %1) #12
  %i.j = load i8, ptr %i.g, align 1, !tbaa !13
  %.not135 = icmp eq i8 %i.j, 0
  br i1 %.not135, label %._crit_edge140, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 23 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph139, %bb.ae
  %.0137 = phi i32 [ 1, %.lr.ph139 ], [ %.1, %bb.ae ] ; 5 uses
  %.058136 = phi i64 [ 0, %.lr.ph139 ], [ %.159, %bb.ae ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.m = call fastcc i32 @getdetails(ptr noundef %2, i64 noundef %.058136, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b)
  %i.n = load i64, ptr %i.c, align 8, !tbaa !11   ; 20 uses
  %i.o = load i32, ptr %i.b, align 4, !tbaa !45   ; 3 uses
  %i.p = zext i32 %i.o to i64
  %i.q = add i64 %i.n, %i.p                       ; 2 uses
  %i.r = sub i64 9223372036854775807, %.058136
  %.not65 = icmp ugt i64 %i.q, %i.r
  br i1 %.not65, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.s = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %.0137, ptr noundef nonnull @.str.59) #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = add i64 %i.q, %.058136                   ; 11 uses
  %.not66134 = icmp eq i32 %i.o, 0
  br i1 %.not66134, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.in = phi i32 [ %i.u, %bb.f ], [ %i.o, %bb.d ]
  %i.u = add i32 %.in, -1                         ; 2 uses
  %i.v = load i64, ptr %i.k, align 16, !tbaa !21  ; 2 uses
  %i.w = load i64, ptr %i.l, align 8, !tbaa !22
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.y = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 1) #12 ; 0 uses
  %.pre = load i64, ptr %i.k, align 16, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.z = phi i64 [ %.pre, %bb.e ], [ %i.v, %.lr.ph ] ; 2 uses
  %i.aa = load ptr, ptr %1, align 16, !tbaa !23
  %i.ab = add i64 %i.z, 1
  store i64 %i.ab, ptr %i.k, align 16, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !13
  %.not66 = icmp eq i32 %i.u, 0
  br i1 %.not66, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %i.ad = add nsw i32 %.0137, 1                   ; 21 uses
  switch i32 %i.m, label %default.unreachable196 [
    i32 0, label %bb.g
    i32 1, label %bb.k
    i32 2, label %copywithendian.exit.loopexit
    i32 3, label %copywithendian.exit100
    i32 4, label %copywithendian.exit106
    i32 5, label %bb.o
    i32 6, label %bb.t
    i32 7, label %bb.w
    i32 8, label %bb.ab
    i32 9, label %bb.ae
    i32 10, label %bb.ae
  ]

bb.g:                                             ; preds = %._crit_edge
  %i.ae = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef %i.ad) #12 ; 9 uses
  %i.af = icmp ult i64 %i.n, 8
  br i1 %i.af, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = shl nuw nsw i64 %i.n, 3
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = shl nuw nsw i64 1, %i.ah                ; 2 uses
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = icmp sge i64 %i.ae, %i.aj
  %i.al = icmp slt i64 %i.ae, %i.ai
  %i.am = and i1 %i.ak, %i.al
  br i1 %i.am, label %bb.j, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.an = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull @.str.60) #12 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.ao = load i32, ptr %i.h, align 8, !tbaa !49
  %i.ap = trunc i64 %i.n to i32                   ; 4 uses
  %i.aq = and i64 %i.n, 4294967295                ; 8 uses
  %i.ar = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef %i.aq) #12 ; 13 uses
  %i.as = trunc i64 %i.ae to i8
  %.not.i = icmp eq i32 %i.ao, 0                  ; 2 uses
  %i.at = add i32 %i.ap, -1                       ; 2 uses
  %i.au = select i1 %.not.i, i32 %i.at, i32 0
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.av
  store i8 %i.as, ptr %i.aw, align 1, !tbaa !13
  %i.ax = icmp ugt i32 %i.ap, 1
  br i1 %i.ax, label %.lr.ph.i, label %packint.exit

.lr.ph.i:                                         ; preds = %bb.j
  br i1 %.not.i, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.ay = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.az = add nsw i64 %i.aq, -2
  %xtraiter223 = and i64 %i.ay, 3                 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 3
  br i1 %i.ba, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter227 = and i64 %i.ay, -4
  br label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %i.bb = zext i32 %i.at to i64                   ; 6 uses
  %i.bc = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.bd = add nsw i64 %i.aq, -2
  %xtraiter229 = and i64 %i.bc, 3                 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 3
  br i1 %i.be, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.preheader.i.new

.lr.ph.split.us.preheader.i.new:                  ; preds = %.lr.ph.split.us.preheader.i
  %unroll_iter233 = and i64 %i.bc, -4
  %invariant.gep242 = getelementptr i8, ptr %i.ar, i64 %i.bb
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.preheader.i.new
  %indvars.iv36.i = phi i64 [ 1, %.lr.ph.split.us.preheader.i.new ], [ %indvars.iv.next37.i.3, %.lr.ph.split.us.i ] ; 5 uses
  %.02830.us.i = phi i64 [ %i.ae, %.lr.ph.split.us.preheader.i.new ], [ %i.bp, %.lr.ph.split.us.i ] ; 4 uses
  %niter234 = phi i64 [ 0, %.lr.ph.split.us.preheader.i.new ], [ %niter234.next.3, %.lr.ph.split.us.i ]
  %i.bf = lshr i64 %.02830.us.i, 8
  %i.bg = trunc i64 %i.bf to i8
  %i.bh = sub nuw nsw i64 %i.bb, %indvars.iv36.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bh
  store i8 %i.bg, ptr %i.bi, align 1, !tbaa !13
  %indvars.iv.next37.i.neg = xor i64 %indvars.iv36.i, -1
  %i.bj = lshr i64 %.02830.us.i, 16
  %i.bk = trunc i64 %i.bj to i8
  %gep243 = getelementptr i8, ptr %invariant.gep242, i64 %indvars.iv.next37.i.neg
  store i8 %i.bk, ptr %gep243, align 1, !tbaa !13
  %indvars.iv.next37.i.1 = add nuw nsw i64 %indvars.iv36.i, 2
  %i.bl = lshr i64 %.02830.us.i, 24
  %i.bm = trunc i64 %i.bl to i8
  %i.bn = sub nuw nsw i64 %i.bb, %indvars.iv.next37.i.1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bn
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !13
  %indvars.iv.next37.i.2 = add nuw nsw i64 %indvars.iv36.i, 3
  %i.bp = lshr i64 %.02830.us.i, 32               ; 3 uses
  %i.bq = trunc i64 %i.bp to i8
  %i.br = sub nuw nsw i64 %i.bb, %indvars.iv.next37.i.2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.br
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !13
  %indvars.iv.next37.i.3 = add nuw nsw i64 %indvars.iv36.i, 4 ; 2 uses
  %niter234.next.3 = add nuw i64 %niter234, 4     ; 2 uses
  %niter234.ncmp.3 = icmp eq i64 %niter234.next.3, %unroll_iter233
  br i1 %niter234.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.split.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.split.i ] ; 5 uses
  %.02830.i = phi i64 [ %i.ae, %.lr.ph.split.i.preheader.new ], [ %i.ce, %.lr.ph.split.i ] ; 4 uses
  %niter228 = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter228.next.3, %.lr.ph.split.i ]
  %i.bt = lshr i64 %.02830.i, 8
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !13
  %i.bw = lshr i64 %.02830.i, 16
  %i.bx = trunc i64 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.bx, ptr %i.bz, align 1, !tbaa !13
  %i.ca = lshr i64 %.02830.i, 24
  %i.cb = trunc i64 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i8 %i.cb, ptr %i.cd, align 1, !tbaa !13
  %i.ce = lshr i64 %.02830.i, 32                  ; 3 uses
  %i.cf = trunc i64 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 3
  store i8 %i.cf, ptr %i.ch, align 1, !tbaa !13
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter228.next.3 = add nuw i64 %niter228, 4     ; 2 uses
  %niter228.ncmp.3 = icmp eq i64 %niter228.next.3, %unroll_iter227
  br i1 %niter228.ncmp.3, label %._crit_edge.thread50.i.unr-lcssa, label %.lr.ph.split.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.split.us.i
  %lcmp.mod231.not = icmp eq i64 %xtraiter229, 0
  br i1 %lcmp.mod231.not, label %._crit_edge.i, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.split.us.preheader.i
  %indvars.iv36.i.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next37.i.3, %._crit_edge.i.unr-lcssa ]
  %.02830.us.i.epil.init = phi i64 [ %i.ae, %.lr.ph.split.us.preheader.i ], [ %i.bp, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod232 = icmp ne i64 %xtraiter229, 0
  call void @llvm.assume(i1 %lcmp.mod232)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %indvars.iv36.i.epil = phi i64 [ %indvars.iv36.i.epil.init, %.lr.ph.split.us.i.epil.preheader ], [ %indvars.iv.next37.i.epil, %.lr.ph.split.us.i.epil ] ; 2 uses
  %.02830.us.i.epil = phi i64 [ %.02830.us.i.epil.init, %.lr.ph.split.us.i.epil.preheader ], [ %i.ci, %.lr.ph.split.us.i.epil ]
  %epil.iter230 = phi i64 [ 0, %.lr.ph.split.us.i.epil.preheader ], [ %epil.iter230.next, %.lr.ph.split.us.i.epil ]
  %i.ci = lshr i64 %.02830.us.i.epil, 8           ; 2 uses
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = sub nuw nsw i64 %i.bb, %indvars.iv36.i.epil
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ck
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !13
  %indvars.iv.next37.i.epil = add nuw nsw i64 %indvars.iv36.i.epil, 1
  %epil.iter230.next = add i64 %epil.iter230, 1   ; 2 uses
  %epil.iter230.cmp.not = icmp eq i64 %epil.iter230.next, %xtraiter229
  br i1 %epil.iter230.cmp.not, label %._crit_edge.i, label %.lr.ph.split.us.i.epil, !llvm.loop !53

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.i.epil, %._crit_edge.i.unr-lcssa
  %i.cm = icmp slt i64 %i.ae, 0
  %i.cn = icmp ugt i32 %i.ap, 8
  %or.cond.i = and i1 %i.cn, %i.cm
  br i1 %or.cond.i, label %.preheader.split.us.i.preheader, label %packint.exit

.preheader.split.us.i.preheader:                  ; preds = %._crit_edge.i
  %scevgep = getelementptr i8, ptr %i.ar, i64 1
  %i.co = sub nsw i64 %i.bb, %i.aq
  %scevgep144 = getelementptr i8, ptr %scevgep, i64 %i.co
  %i.cp = add nsw i64 %i.aq, -8
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep144, i8 -1, i64 %i.cp, i1 false), !tbaa !13
  br label %packint.exit

._crit_edge.thread50.i.unr-lcssa:                 ; preds = %.lr.ph.split.i
  %lcmp.mod225.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod225.not, label %._crit_edge.thread50.i, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %._crit_edge.thread50.i.unr-lcssa, %.lr.ph.split.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i.3, %._crit_edge.thread50.i.unr-lcssa ]
  %.02830.i.epil.init = phi i64 [ %i.ae, %.lr.ph.split.i.preheader ], [ %i.ce, %._crit_edge.thread50.i.unr-lcssa ]
  %lcmp.mod226 = icmp ne i64 %xtraiter223, 0
  call void @llvm.assume(i1 %lcmp.mod226)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.split.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.split.i.epil.preheader ] ; 2 uses
  %.02830.i.epil = phi i64 [ %i.cq, %.lr.ph.split.i.epil ], [ %.02830.i.epil.init, %.lr.ph.split.i.epil.preheader ]
  %epil.iter224 = phi i64 [ %epil.iter224.next, %.lr.ph.split.i.epil ], [ 0, %.lr.ph.split.i.epil.preheader ]
  %i.cq = lshr i64 %.02830.i.epil, 8              ; 2 uses
  %i.cr = trunc i64 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i.epil
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !13
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter224.next = add i64 %epil.iter224, 1   ; 2 uses
  %epil.iter224.cmp.not = icmp eq i64 %epil.iter224.next, %xtraiter223
  br i1 %epil.iter224.cmp.not, label %._crit_edge.thread50.i, label %.lr.ph.split.i.epil, !llvm.loop !54

._crit_edge.thread50.i:                           ; preds = %.lr.ph.split.i.epil, %._crit_edge.thread50.i.unr-lcssa
  %i.ct = icmp slt i64 %i.ae, 0
  %i.cu = icmp ugt i32 %i.ap, 8
  %or.cond51.i = and i1 %i.cu, %i.ct
  br i1 %or.cond51.i, label %.preheader.split.preheader.i, label %packint.exit

.preheader.split.preheader.i:                     ; preds = %._crit_edge.thread50.i
  %scevgep.i = getelementptr i8, ptr %i.ar, i64 8
  %i.cv = add i64 %i.n, 4294967288
  %i.cw = and i64 %i.cv, 4294967295
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 -1, i64 %i.cw, i1 false), !tbaa !13
  br label %packint.exit

packint.exit:                                     ; preds = %.preheader.split.us.i.preheader, %bb.j, %._crit_edge.i, %._crit_edge.thread50.i, %.preheader.split.preheader.i
  %i.cx = load i64, ptr %i.k, align 16, !tbaa !21
  %i.cy = add i64 %i.cx, %i.aq
  store i64 %i.cy, ptr %i.k, align 16, !tbaa !21
  br label %bb.ae

bb.k:                                             ; preds = %._crit_edge
  %i.cz = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef %i.ad) #12 ; 6 uses
  %i.da = icmp ult i64 %i.n, 8
  br i1 %i.da, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.db = shl nuw nsw i64 %i.n, 3
  %.highbits68 = lshr i64 %i.cz, %i.db
  %i.dc = icmp eq i64 %.highbits68, 0
  br i1 %i.dc, label %bb.n, label %bb.m, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.dd = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull @.str.61) #12 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.de = load i32, ptr %i.h, align 8, !tbaa !49
  %i.df = trunc i64 %i.n to i32                   ; 2 uses
  %i.dg = and i64 %i.n, 4294967295                ; 6 uses
  %i.dh = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef %i.dg) #12 ; 11 uses
  %i.di = trunc i64 %i.cz to i8
  %.not.i69 = icmp eq i32 %i.de, 0                ; 2 uses
  %i.dj = add i32 %i.df, -1                       ; 2 uses
  %i.dk = select i1 %.not.i69, i32 %i.dj, i32 0
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dl
  store i8 %i.di, ptr %i.dm, align 1, !tbaa !13
  %i.dn = icmp ugt i32 %i.df, 1
  br i1 %i.dn, label %.lr.ph.i70, label %packint.exit93

.lr.ph.i70:                                       ; preds = %bb.n
  br i1 %.not.i69, label %.lr.ph.split.us.preheader.i80, label %.lr.ph.split.i71.preheader

.lr.ph.split.i71.preheader:                       ; preds = %.lr.ph.i70
  %i.do = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dp = add nsw i64 %i.dg, -2
  %xtraiter211 = and i64 %i.do, 3                 ; 3 uses
  %i.dq = icmp ult i64 %i.dp, 3
  br i1 %i.dq, label %.lr.ph.split.i71.epil.preheader, label %.lr.ph.split.i71.preheader.new

.lr.ph.split.i71.preheader.new:                   ; preds = %.lr.ph.split.i71.preheader
  %unroll_iter215 = and i64 %i.do, -4
  br label %.lr.ph.split.i71

.lr.ph.split.us.preheader.i80:                    ; preds = %.lr.ph.i70
  %i.dr = zext i32 %i.dj to i64                   ; 5 uses
  %i.ds = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dt = add nsw i64 %i.dg, -2
  %xtraiter217 = and i64 %i.ds, 3                 ; 3 uses
  %i.du = icmp ult i64 %i.dt, 3
  br i1 %i.du, label %.lr.ph.split.us.i81.epil.preheader, label %.lr.ph.split.us.preheader.i80.new

.lr.ph.split.us.preheader.i80.new:                ; preds = %.lr.ph.split.us.preheader.i80
  %unroll_iter221 = and i64 %i.ds, -4
  %invariant.gep240 = getelementptr i8, ptr %i.dh, i64 %i.dr
  br label %.lr.ph.split.us.i81

.lr.ph.split.us.i81:                              ; preds = %.lr.ph.split.us.i81, %.lr.ph.split.us.preheader.i80.new
  %indvars.iv36.i82 = phi i64 [ 1, %.lr.ph.split.us.preheader.i80.new ], [ %indvars.iv.next37.i84.3, %.lr.ph.split.us.i81 ] ; 5 uses
  %.02830.us.i83 = phi i64 [ %i.cz, %.lr.ph.split.us.preheader.i80.new ], [ %i.ef, %.lr.ph.split.us.i81 ] ; 4 uses
  %niter222 = phi i64 [ 0, %.lr.ph.split.us.preheader.i80.new ], [ %niter222.next.3, %.lr.ph.split.us.i81 ]
  %i.dv = lshr i64 %.02830.us.i83, 8
  %i.dw = trunc i64 %i.dv to i8
  %i.dx = sub nuw nsw i64 %i.dr, %indvars.iv36.i82
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dx
  store i8 %i.dw, ptr %i.dy, align 1, !tbaa !13
  %indvars.iv.next37.i84.neg = xor i64 %indvars.iv36.i82, -1
  %i.dz = lshr i64 %.02830.us.i83, 16
  %i.ea = trunc i64 %i.dz to i8
  %gep241 = getelementptr i8, ptr %invariant.gep240, i64 %indvars.iv.next37.i84.neg
  store i8 %i.ea, ptr %gep241, align 1, !tbaa !13
  %indvars.iv.next37.i84.1 = add nuw nsw i64 %indvars.iv36.i82, 2
  %i.eb = lshr i64 %.02830.us.i83, 24
  %i.ec = trunc i64 %i.eb to i8
  %i.ed = sub nuw nsw i64 %i.dr, %indvars.iv.next37.i84.1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ed
  store i8 %i.ec, ptr %i.ee, align 1, !tbaa !13
  %indvars.iv.next37.i84.2 = add nuw nsw i64 %indvars.iv36.i82, 3
  %i.ef = lshr i64 %.02830.us.i83, 32             ; 3 uses
  %i.eg = trunc i64 %i.ef to i8
  %i.eh = sub nuw nsw i64 %i.dr, %indvars.iv.next37.i84.2
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.eh
  store i8 %i.eg, ptr %i.ei, align 1, !tbaa !13
  %indvars.iv.next37.i84.3 = add nuw nsw i64 %indvars.iv36.i82, 4 ; 2 uses
  %niter222.next.3 = add nuw i64 %niter222, 4     ; 2 uses
  %niter222.ncmp.3 = icmp eq i64 %niter222.next.3, %unroll_iter221
  br i1 %niter222.ncmp.3, label %packint.exit93.loopexit.unr-lcssa, label %.lr.ph.split.us.i81

.lr.ph.split.i71:                                 ; preds = %.lr.ph.split.i71, %.lr.ph.split.i71.preheader.new
  %indvars.iv.i72 = phi i64 [ 1, %.lr.ph.split.i71.preheader.new ], [ %indvars.iv.next.i74.3, %.lr.ph.split.i71 ] ; 5 uses
  %.02830.i73 = phi i64 [ %i.cz, %.lr.ph.split.i71.preheader.new ], [ %i.eu, %.lr.ph.split.i71 ] ; 4 uses
  %niter216 = phi i64 [ 0, %.lr.ph.split.i71.preheader.new ], [ %niter216.next.3, %.lr.ph.split.i71 ]
  %i.ej = lshr i64 %.02830.i73, 8
  %i.ek = trunc i64 %i.ej to i8
  %i.el = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.i72
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !13
  %i.em = lshr i64 %.02830.i73, 16
  %i.en = trunc i64 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.i72
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store i8 %i.en, ptr %i.ep, align 1, !tbaa !13
  %i.eq = lshr i64 %.02830.i73, 24
  %i.er = trunc i64 %i.eq to i8
  %i.es = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.i72
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  store i8 %i.er, ptr %i.et, align 1, !tbaa !13
  %i.eu = lshr i64 %.02830.i73, 32                ; 3 uses
  %i.ev = trunc i64 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.i72
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 3
  store i8 %i.ev, ptr %i.ex, align 1, !tbaa !13
  %indvars.iv.next.i74.3 = add nuw nsw i64 %indvars.iv.i72, 4 ; 2 uses
  %niter216.next.3 = add nuw i64 %niter216, 4     ; 2 uses
  %niter216.ncmp.3 = icmp eq i64 %niter216.next.3, %unroll_iter215
  br i1 %niter216.ncmp.3, label %packint.exit93.loopexit202.unr-lcssa, label %.lr.ph.split.i71

packint.exit93.loopexit.unr-lcssa:                ; preds = %.lr.ph.split.us.i81
  %lcmp.mod219.not = icmp eq i64 %xtraiter217, 0
  br i1 %lcmp.mod219.not, label %packint.exit93, label %.lr.ph.split.us.i81.epil.preheader

.lr.ph.split.us.i81.epil.preheader:               ; preds = %packint.exit93.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i80
  %indvars.iv36.i82.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i80 ], [ %indvars.iv.next37.i84.3, %packint.exit93.loopexit.unr-lcssa ]
  %.02830.us.i83.epil.init = phi i64 [ %i.cz, %.lr.ph.split.us.preheader.i80 ], [ %i.ef, %packint.exit93.loopexit.unr-lcssa ]
  %lcmp.mod220 = icmp ne i64 %xtraiter217, 0
  call void @llvm.assume(i1 %lcmp.mod220)
  br label %.lr.ph.split.us.i81.epil

.lr.ph.split.us.i81.epil:                         ; preds = %.lr.ph.split.us.i81.epil, %.lr.ph.split.us.i81.epil.preheader
  %indvars.iv36.i82.epil = phi i64 [ %indvars.iv36.i82.epil.init, %.lr.ph.split.us.i81.epil.preheader ], [ %indvars.iv.next37.i84.epil, %.lr.ph.split.us.i81.epil ] ; 2 uses
  %.02830.us.i83.epil = phi i64 [ %.02830.us.i83.epil.init, %.lr.ph.split.us.i81.epil.preheader ], [ %i.ey, %.lr.ph.split.us.i81.epil ]
  %epil.iter218 = phi i64 [ 0, %.lr.ph.split.us.i81.epil.preheader ], [ %epil.iter218.next, %.lr.ph.split.us.i81.epil ]
  %i.ey = lshr i64 %.02830.us.i83.epil, 8         ; 2 uses
  %i.ez = trunc i64 %i.ey to i8
  %i.fa = sub nuw nsw i64 %i.dr, %indvars.iv36.i82.epil
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.fa
  store i8 %i.ez, ptr %i.fb, align 1, !tbaa !13
  %indvars.iv.next37.i84.epil = add nuw nsw i64 %indvars.iv36.i82.epil, 1
  %epil.iter218.next = add i64 %epil.iter218, 1   ; 2 uses
  %epil.iter218.cmp.not = icmp eq i64 %epil.iter218.next, %xtraiter217
  br i1 %epil.iter218.cmp.not, label %packint.exit93, label %.lr.ph.split.us.i81.epil, !llvm.loop !55

packint.exit93.loopexit202.unr-lcssa:             ; preds = %.lr.ph.split.i71
  %lcmp.mod213.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod213.not, label %packint.exit93, label %.lr.ph.split.i71.epil.preheader

.lr.ph.split.i71.epil.preheader:                  ; preds = %packint.exit93.loopexit202.unr-lcssa, %.lr.ph.split.i71.preheader
  %indvars.iv.i72.epil.init = phi i64 [ 1, %.lr.ph.split.i71.preheader ], [ %indvars.iv.next.i74.3, %packint.exit93.loopexit202.unr-lcssa ]
  %.02830.i73.epil.init = phi i64 [ %i.cz, %.lr.ph.split.i71.preheader ], [ %i.eu, %packint.exit93.loopexit202.unr-lcssa ]
  %lcmp.mod214 = icmp ne i64 %xtraiter211, 0
  call void @llvm.assume(i1 %lcmp.mod214)
  br label %.lr.ph.split.i71.epil

.lr.ph.split.i71.epil:                            ; preds = %.lr.ph.split.i71.epil, %.lr.ph.split.i71.epil.preheader
  %indvars.iv.i72.epil = phi i64 [ %indvars.iv.next.i74.epil, %.lr.ph.split.i71.epil ], [ %indvars.iv.i72.epil.init, %.lr.ph.split.i71.epil.preheader ] ; 2 uses
  %.02830.i73.epil = phi i64 [ %i.fc, %.lr.ph.split.i71.epil ], [ %.02830.i73.epil.init, %.lr.ph.split.i71.epil.preheader ]
  %epil.iter212 = phi i64 [ %epil.iter212.next, %.lr.ph.split.i71.epil ], [ 0, %.lr.ph.split.i71.epil.preheader ]
  %i.fc = lshr i64 %.02830.i73.epil, 8            ; 2 uses
  %i.fd = trunc i64 %i.fc to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.i72.epil
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !13
  %indvars.iv.next.i74.epil = add nuw nsw i64 %indvars.iv.i72.epil, 1
  %epil.iter212.next = add i64 %epil.iter212, 1   ; 2 uses
  %epil.iter212.cmp.not = icmp eq i64 %epil.iter212.next, %xtraiter211
  br i1 %epil.iter212.cmp.not, label %packint.exit93, label %.lr.ph.split.i71.epil, !llvm.loop !56

packint.exit93:                                   ; preds = %packint.exit93.loopexit202.unr-lcssa, %.lr.ph.split.i71.epil, %packint.exit93.loopexit.unr-lcssa, %.lr.ph.split.us.i81.epil, %bb.n
  %i.ff = load i64, ptr %i.k, align 16, !tbaa !21
  %i.fg = add i64 %i.ff, %i.dg
  store i64 %i.fg, ptr %i.k, align 16, !tbaa !21
  br label %bb.ae

copywithendian.exit.loopexit:                     ; preds = %._crit_edge
  %3 = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ad) #12
  %4 = fptrunc double %3 to float                 ; 2 uses
  %5 = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 4) #12
  %6 = load i32, ptr %i.h, align 8, !tbaa !49
  %7 = icmp eq i32 %6, 1
  %8 = bitcast float %4 to i32
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %10 = bitcast float %4 to i32
  %storemerge202 = select i1 %7, i32 %10, i32 %9
  store i32 %storemerge202, ptr %5, align 1
  %11 = load i64, ptr %i.k, align 16, !tbaa !21
  %12 = add i64 %11, %i.n
  store i64 %12, ptr %i.k, align 16, !tbaa !21
  br label %bb.ae

copywithendian.exit100:                           ; preds = %._crit_edge
  %13 = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ad) #12 ; 2 uses
  %14 = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 8) #12
  %15 = load i32, ptr %i.h, align 8, !tbaa !49
  %16 = icmp eq i32 %15, 1
  %17 = bitcast double %13 to i64
  %18 = call i64 @llvm.bswap.i64(i64 %17)
  %19 = bitcast double %13 to i64
  %storemerge201 = select i1 %16, i64 %19, i64 %18
  store i64 %storemerge201, ptr %14, align 1
  %i.fh = load i64, ptr %i.k, align 16, !tbaa !21
  %i.fi = add i64 %i.fh, %i.n
  store i64 %i.fi, ptr %i.k, align 16, !tbaa !21
  br label %bb.ae

copywithendian.exit106:                           ; preds = %._crit_edge
  %20 = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ad) #12 ; 2 uses
  %21 = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 8) #12
  %22 = load i32, ptr %i.h, align 8, !tbaa !49
  %23 = icmp eq i32 %22, 1
  %24 = bitcast double %20 to i64
  %25 = call i64 @llvm.bswap.i64(i64 %24)
  %26 = bitcast double %20 to i64
  %storemerge = select i1 %23, i64 %26, i64 %25
  store i64 %storemerge, ptr %21, align 1
  %i.fj = load i64, ptr %i.k, align 16, !tbaa !21
  %i.fk = add i64 %i.fj, %i.n
  store i64 %i.fk, ptr %i.k, align 16, !tbaa !21
  br label %bb.ae

bb.o:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.fl = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull %i.d) #12
  %i.fm = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %.not67 = icmp ugt i64 %i.fm, %i.n
  br i1 %.not67, label %bb.p, label %bb.q, !prof !12

bb.p:                                             ; preds = %bb.o
  %i.fn = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull @.str.62) #12 ; 0 uses
  %.pre186 = load i64, ptr %i.d, align 8, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fo = phi i64 [ %.pre186, %bb.p ], [ %i.fm, %bb.o ]
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef %i.fl, i64 noundef %i.fo) #12
  %i.fp = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.n
  br i1 %i.fq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fr = sub nuw i64 %i.n, %i.fp                 ; 3 uses
  %i.fs = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef %i.fr) #12
  call void @llvm.memset.p0.i64(ptr align 1 %i.fs, i8 0, i64 %i.fr, i1 false)
  %i.ft = load i64, ptr %i.k, align 16, !tbaa !21
  %i.fu = add i64 %i.ft, %i.fr
  store i64 %i.fu, ptr %i.k, align 16, !tbaa !21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.ae

bb.t:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.fv = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull %i.e) #12
  %i.fw = icmp ugt i64 %i.n, 7
  %i.fx = load i64, ptr %i.e, align 8             ; 2 uses
  %i.fy = shl nuw nsw i64 %i.n, 3
  %.highbits = lshr i64 %i.fx, %i.fy
  %i.fz = icmp eq i64 %.highbits, 0
  %i.ga = select i1 %i.fw, i1 true, i1 %i.fz
  br i1 %i.ga, label %bb.v, label %bb.u, !prof !14

bb.u:                                             ; preds = %bb.t
  %i.gb = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull @.str.63) #12 ; 0 uses
  %.pre185 = load i64, ptr %i.e, align 8, !tbaa !11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.gc = phi i64 [ %.pre185, %bb.u ], [ %i.fx, %bb.t ] ; 5 uses
  %i.gd = load i32, ptr %i.h, align 8, !tbaa !49
  %i.ge = trunc i64 %i.n to i32                   ; 2 uses
  %i.gf = and i64 %i.n, 4294967295                ; 6 uses
  %i.gg = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef %i.gf) #12 ; 11 uses
  %i.gh = trunc i64 %i.gc to i8
  %.not.i107 = icmp eq i32 %i.gd, 0               ; 2 uses
  %i.gi = add i32 %i.ge, -1                       ; 2 uses
  %i.gj = select i1 %.not.i107, i32 %i.gi, i32 0
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gk
  store i8 %i.gh, ptr %i.gl, align 1, !tbaa !13
  %i.gm = icmp ugt i32 %i.ge, 1
  br i1 %i.gm, label %.lr.ph.i108, label %packint.exit131

.lr.ph.i108:                                      ; preds = %bb.v
  br i1 %.not.i107, label %.lr.ph.split.us.preheader.i118, label %.lr.ph.split.i109.preheader

.lr.ph.split.i109.preheader:                      ; preds = %.lr.ph.i108
  %i.gn = add nsw i64 %i.gf, -1                   ; 2 uses
  %i.go = add nsw i64 %i.gf, -2
  %xtraiter = and i64 %i.gn, 3                    ; 3 uses
  %i.gp = icmp ult i64 %i.go, 3
  br i1 %i.gp, label %.lr.ph.split.i109.epil.preheader, label %.lr.ph.split.i109.preheader.new

.lr.ph.split.i109.preheader.new:                  ; preds = %.lr.ph.split.i109.preheader
  %unroll_iter = and i64 %i.gn, -4
  br label %.lr.ph.split.i109

.lr.ph.split.us.preheader.i118:                   ; preds = %.lr.ph.i108
  %i.gq = zext i32 %i.gi to i64                   ; 5 uses
  %i.gr = add nsw i64 %i.gf, -1                   ; 2 uses
  %i.gs = add nsw i64 %i.gf, -2
  %xtraiter205 = and i64 %i.gr, 3                 ; 3 uses
  %i.gt = icmp ult i64 %i.gs, 3
  br i1 %i.gt, label %.lr.ph.split.us.i119.epil.preheader, label %.lr.ph.split.us.preheader.i118.new

.lr.ph.split.us.preheader.i118.new:               ; preds = %.lr.ph.split.us.preheader.i118
  %unroll_iter209 = and i64 %i.gr, -4
  %invariant.gep = getelementptr i8, ptr %i.gg, i64 %i.gq
  br label %.lr.ph.split.us.i119

.lr.ph.split.us.i119:                             ; preds = %.lr.ph.split.us.i119, %.lr.ph.split.us.preheader.i118.new
  %indvars.iv36.i120 = phi i64 [ 1, %.lr.ph.split.us.preheader.i118.new ], [ %indvars.iv.next37.i122.3, %.lr.ph.split.us.i119 ] ; 5 uses
  %.02830.us.i121 = phi i64 [ %i.gc, %.lr.ph.split.us.preheader.i118.new ], [ %i.he, %.lr.ph.split.us.i119 ] ; 4 uses
  %niter210 = phi i64 [ 0, %.lr.ph.split.us.preheader.i118.new ], [ %niter210.next.3, %.lr.ph.split.us.i119 ]
  %i.gu = lshr i64 %.02830.us.i121, 8
  %i.gv = trunc i64 %i.gu to i8
  %i.gw = sub nuw nsw i64 %i.gq, %indvars.iv36.i120
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gw
  store i8 %i.gv, ptr %i.gx, align 1, !tbaa !13
  %indvars.iv.next37.i122.neg = xor i64 %indvars.iv36.i120, -1
  %i.gy = lshr i64 %.02830.us.i121, 16
  %i.gz = trunc i64 %i.gy to i8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next37.i122.neg
  store i8 %i.gz, ptr %gep, align 1, !tbaa !13
  %indvars.iv.next37.i122.1 = add nuw nsw i64 %indvars.iv36.i120, 2
  %i.ha = lshr i64 %.02830.us.i121, 24
  %i.hb = trunc i64 %i.ha to i8
  %i.hc = sub nuw nsw i64 %i.gq, %indvars.iv.next37.i122.1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.hc
  store i8 %i.hb, ptr %i.hd, align 1, !tbaa !13
  %indvars.iv.next37.i122.2 = add nuw nsw i64 %indvars.iv36.i120, 3
  %i.he = lshr i64 %.02830.us.i121, 32            ; 3 uses
  %i.hf = trunc i64 %i.he to i8
  %i.hg = sub nuw nsw i64 %i.gq, %indvars.iv.next37.i122.2
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.hg
  store i8 %i.hf, ptr %i.hh, align 1, !tbaa !13
  %indvars.iv.next37.i122.3 = add nuw nsw i64 %indvars.iv36.i120, 4 ; 2 uses
  %niter210.next.3 = add nuw i64 %niter210, 4     ; 2 uses
  %niter210.ncmp.3 = icmp eq i64 %niter210.next.3, %unroll_iter209
  br i1 %niter210.ncmp.3, label %packint.exit131.loopexit.unr-lcssa, label %.lr.ph.split.us.i119

.lr.ph.split.i109:                                ; preds = %.lr.ph.split.i109, %.lr.ph.split.i109.preheader.new
  %indvars.iv.i110 = phi i64 [ 1, %.lr.ph.split.i109.preheader.new ], [ %indvars.iv.next.i112.3, %.lr.ph.split.i109 ] ; 5 uses
  %.02830.i111 = phi i64 [ %i.gc, %.lr.ph.split.i109.preheader.new ], [ %i.ht, %.lr.ph.split.i109 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i109.preheader.new ], [ %niter.next.3, %.lr.ph.split.i109 ]
  %i.hi = lshr i64 %.02830.i111, 8
  %i.hj = trunc i64 %i.hi to i8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv.i110
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !13
  %i.hl = lshr i64 %.02830.i111, 16
  %i.hm = trunc i64 %i.hl to i8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv.i110
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  store i8 %i.hm, ptr %i.ho, align 1, !tbaa !13
  %i.hp = lshr i64 %.02830.i111, 24
  %i.hq = trunc i64 %i.hp to i8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv.i110
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  store i8 %i.hq, ptr %i.hs, align 1, !tbaa !13
  %i.ht = lshr i64 %.02830.i111, 32               ; 3 uses
  %i.hu = trunc i64 %i.ht to i8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv.i110
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 3
  store i8 %i.hu, ptr %i.hw, align 1, !tbaa !13
  %indvars.iv.next.i112.3 = add nuw nsw i64 %indvars.iv.i110, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %packint.exit131.loopexit203.unr-lcssa, label %.lr.ph.split.i109

packint.exit131.loopexit.unr-lcssa:               ; preds = %.lr.ph.split.us.i119
  %lcmp.mod207.not = icmp eq i64 %xtraiter205, 0
  br i1 %lcmp.mod207.not, label %packint.exit131, label %.lr.ph.split.us.i119.epil.preheader

.lr.ph.split.us.i119.epil.preheader:              ; preds = %packint.exit131.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i118
  %indvars.iv36.i120.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i118 ], [ %indvars.iv.next37.i122.3, %packint.exit131.loopexit.unr-lcssa ]
  %.02830.us.i121.epil.init = phi i64 [ %i.gc, %.lr.ph.split.us.preheader.i118 ], [ %i.he, %packint.exit131.loopexit.unr-lcssa ]
  %lcmp.mod208 = icmp ne i64 %xtraiter205, 0
  call void @llvm.assume(i1 %lcmp.mod208)
  br label %.lr.ph.split.us.i119.epil

.lr.ph.split.us.i119.epil:                        ; preds = %.lr.ph.split.us.i119.epil, %.lr.ph.split.us.i119.epil.preheader
  %indvars.iv36.i120.epil = phi i64 [ %indvars.iv36.i120.epil.init, %.lr.ph.split.us.i119.epil.preheader ], [ %indvars.iv.next37.i122.epil, %.lr.ph.split.us.i119.epil ] ; 2 uses
  %.02830.us.i121.epil = phi i64 [ %.02830.us.i121.epil.init, %.lr.ph.split.us.i119.epil.preheader ], [ %i.hx, %.lr.ph.split.us.i119.epil ]
  %epil.iter206 = phi i64 [ 0, %.lr.ph.split.us.i119.epil.preheader ], [ %epil.iter206.next, %.lr.ph.split.us.i119.epil ]
  %i.hx = lshr i64 %.02830.us.i121.epil, 8        ; 2 uses
  %i.hy = trunc i64 %i.hx to i8
  %i.hz = sub nuw nsw i64 %i.gq, %indvars.iv36.i120.epil
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.hz
  store i8 %i.hy, ptr %i.ia, align 1, !tbaa !13
  %indvars.iv.next37.i122.epil = add nuw nsw i64 %indvars.iv36.i120.epil, 1
  %epil.iter206.next = add i64 %epil.iter206, 1   ; 2 uses
  %epil.iter206.cmp.not = icmp eq i64 %epil.iter206.next, %xtraiter205
  br i1 %epil.iter206.cmp.not, label %packint.exit131, label %.lr.ph.split.us.i119.epil, !llvm.loop !57

packint.exit131.loopexit203.unr-lcssa:            ; preds = %.lr.ph.split.i109
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %packint.exit131, label %.lr.ph.split.i109.epil.preheader

.lr.ph.split.i109.epil.preheader:                 ; preds = %packint.exit131.loopexit203.unr-lcssa, %.lr.ph.split.i109.preheader
  %indvars.iv.i110.epil.init = phi i64 [ 1, %.lr.ph.split.i109.preheader ], [ %indvars.iv.next.i112.3, %packint.exit131.loopexit203.unr-lcssa ]
  %.02830.i111.epil.init = phi i64 [ %i.gc, %.lr.ph.split.i109.preheader ], [ %i.ht, %packint.exit131.loopexit203.unr-lcssa ]
  %lcmp.mod204 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod204)
  br label %.lr.ph.split.i109.epil

.lr.ph.split.i109.epil:                           ; preds = %.lr.ph.split.i109.epil, %.lr.ph.split.i109.epil.preheader
  %indvars.iv.i110.epil = phi i64 [ %indvars.iv.next.i112.epil, %.lr.ph.split.i109.epil ], [ %indvars.iv.i110.epil.init, %.lr.ph.split.i109.epil.preheader ] ; 2 uses
  %.02830.i111.epil = phi i64 [ %i.ib, %.lr.ph.split.i109.epil ], [ %.02830.i111.epil.init, %.lr.ph.split.i109.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.i109.epil ], [ 0, %.lr.ph.split.i109.epil.preheader ]
  %i.ib = lshr i64 %.02830.i111.epil, 8           ; 2 uses
  %i.ic = trunc i64 %i.ib to i8
  %i.id = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv.i110.epil
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !13
  %indvars.iv.next.i112.epil = add nuw nsw i64 %indvars.iv.i110.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %packint.exit131, label %.lr.ph.split.i109.epil, !llvm.loop !58

packint.exit131:                                  ; preds = %packint.exit131.loopexit203.unr-lcssa, %.lr.ph.split.i109.epil, %packint.exit131.loopexit.unr-lcssa, %.lr.ph.split.us.i119.epil, %bb.v
  %i.ie = load i64, ptr %i.k, align 16, !tbaa !21
  %i.if = add i64 %i.ie, %i.gf
  store i64 %i.if, ptr %i.k, align 16, !tbaa !21
  %i.ig = load i64, ptr %i.e, align 8, !tbaa !11
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef %i.fv, i64 noundef %i.ig) #12
  %i.ih = load i64, ptr %i.e, align 8, !tbaa !11
  %i.ii = add i64 %i.ih, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %bb.ae

bb.w:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.ij = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull %i.f) #12 ; 2 uses
  %i.ik = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ij) #13 ; 2 uses
  %i.il = load i64, ptr %i.f, align 8, !tbaa !11
  %i.im = icmp eq i64 %i.ik, %i.il
  br i1 %i.im, label %bb.y, label %bb.x, !prof !14

bb.x:                                             ; preds = %bb.w
  %i.in = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull @.str.40) #12 ; 0 uses
  %.pre183 = load i64, ptr %i.f, align 8, !tbaa !11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.io = phi i64 [ %.pre183, %bb.x ], [ %i.ik, %bb.w ]
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef nonnull %i.ij, i64 noundef %i.io) #12
  %i.ip = load i64, ptr %i.k, align 16, !tbaa !21 ; 2 uses
  %i.iq = load i64, ptr %i.l, align 8, !tbaa !22
  %i.ir = icmp ult i64 %i.ip, %i.iq
  br i1 %i.ir, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.is = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 1) #12 ; 0 uses
  %.pre184 = load i64, ptr %i.k, align 16, !tbaa !21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.it = phi i64 [ %.pre184, %bb.z ], [ %i.ip, %bb.y ] ; 2 uses
  %i.iu = load ptr, ptr %1, align 16, !tbaa !23
  %i.iv = add i64 %i.it, 1
  store i64 %i.iv, ptr %i.k, align 16, !tbaa !21
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.it
  store i8 0, ptr %i.iw, align 1, !tbaa !13
  %i.ix = load i64, ptr %i.f, align 8, !tbaa !11
  %i.iy = add i64 %i.t, 1
  %i.iz = add i64 %i.iy, %i.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %bb.ae

bb.ab:                                            ; preds = %._crit_edge
  %i.ja = load i64, ptr %i.k, align 16, !tbaa !21 ; 2 uses
  %i.jb = load i64, ptr %i.l, align 8, !tbaa !22
  %i.jc = icmp ult i64 %i.ja, %i.jb
  br i1 %i.jc, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jd = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 1) #12 ; 0 uses
  %.pre182 = load i64, ptr %i.k, align 16, !tbaa !21
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.je = phi i64 [ %.pre182, %bb.ac ], [ %i.ja, %bb.ab ] ; 2 uses
  %i.jf = load ptr, ptr %1, align 16, !tbaa !23
  %i.jg = add i64 %i.je, 1
  store i64 %i.jg, ptr %i.k, align 16, !tbaa !21
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.je
  store i8 0, ptr %i.jh, align 1, !tbaa !13
  br label %bb.ae

default.unreachable196:                           ; preds = %._crit_edge
  unreachable

bb.ae:                                            ; preds = %._crit_edge, %._crit_edge, %bb.ad, %bb.aa, %packint.exit131, %bb.s, %copywithendian.exit106, %copywithendian.exit100, %copywithendian.exit.loopexit, %packint.exit93, %packint.exit
  %.159 = phi i64 [ %i.iz, %bb.aa ], [ %i.t, %packint.exit ], [ %i.t, %packint.exit93 ], [ %i.t, %copywithendian.exit.loopexit ], [ %i.t, %copywithendian.exit100 ], [ %i.t, %copywithendian.exit106 ], [ %i.t, %bb.s ], [ %i.ii, %packint.exit131 ], [ %i.t, %bb.ad ], [ %i.t, %._crit_edge ], [ %i.t, %._crit_edge ]
  %.1 = phi i32 [ %i.ad, %bb.aa ], [ %i.ad, %packint.exit ], [ %i.ad, %packint.exit93 ], [ %i.ad, %copywithendian.exit.loopexit ], [ %i.ad, %copywithendian.exit100 ], [ %i.ad, %copywithendian.exit106 ], [ %i.ad, %bb.s ], [ %i.ad, %packint.exit131 ], [ %.0137, %bb.ad ], [ %.0137, %._crit_edge ], [ %.0137, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.ji = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !13
  %.not = icmp eq i8 %i.jj, 0
  br i1 %.not, label %._crit_edge140, label %bb.b

._crit_edge140:                                   ; preds = %bb.ae, %bb.a
  call void @luaL_pushresult(ptr noundef nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @str_packsize(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.Header, align 8             ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.d = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #12 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !46
  store ptr %0, ptr %1, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !50
  %i.g = load i8, ptr %i.d, align 1, !tbaa !13
  %.not11 = icmp eq i8 %i.g, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.012 = phi i64 [ %i.r, %bb.e ], [ 0, %bb.a ]   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.h = call fastcc i32 @getdetails(ptr noundef %1, i64 noundef %.012, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b)
  %i.i = add nsw i32 %i.h, -8
  %i.j = icmp ult i32 %i.i, -2
  br i1 %i.j, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %.lr.ph
  %i.k = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.69) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.l = load i32, ptr %i.b, align 4, !tbaa !45
  %i.m = zext i32 %i.l to i64
  %i.n = load i64, ptr %i.c, align 8, !tbaa !11
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = sub i64 9223372036854775807, %i.o
  %.not10 = icmp ugt i64 %.012, %i.p
  br i1 %.not10, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.70) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = add i64 %i.o, %.012                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.r, %bb.e ]
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %.0.lcssa) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483647, -2147483648) i32 @str_unpack(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.Header, align 8             ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.e = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #12 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.f = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b) #12 ; 7 uses
  %i.g = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef 1) #12 ; 5 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !11   ; 3 uses
  %i.i = icmp sgt i64 %i.g, 0
  br i1 %i.i, label %posrelatI.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.g, 0
  %i.k = sub nsw i64 0, %i.h
  %i.l = icmp slt i64 %i.g, %i.k
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond.i, label %posrelatI.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i64 %i.g, 1
  %i.n = add i64 %i.m, %i.h
  br label %posrelatI.exit

posrelatI.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.n, %bb.c ], [ %i.g, %bb.a ], [ 1, %bb.b ] ; 2 uses
  %i.o = add i64 %.0.i, -1                        ; 2 uses
  %.not = icmp ugt i64 %i.o, %i.h
  br i1 %.not, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %posrelatI.exit
  %i.p = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.71) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %posrelatI.exit
  store ptr %0, ptr %1, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store i32 1, ptr %i.q, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !50
  %i.s = load i8, ptr %i.e, align 1, !tbaa !13
  %.not6087 = icmp eq i8 %i.s, 0
  br i1 %.not6087, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.y
  %.089 = phi i32 [ %.1, %bb.y ], [ 0, %bb.e ]    ; 4 uses
  %.05888 = phi i64 [ %i.hk, %bb.y ], [ %i.o, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.t = call fastcc i32 @getdetails(ptr noundef %1, i64 noundef %.05888, ptr noundef %i.a, ptr noundef %i.d, ptr noundef %i.c) ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !45
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !11   ; 10 uses
  %i.x = add i64 %i.w, %i.v
  %i.y = load i64, ptr %i.b, align 8, !tbaa !11
  %i.z = sub i64 %i.y, %.05888
  %.not61 = icmp ugt i64 %i.x, %i.z
  br i1 %.not61, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %.lr.ph
  %i.aa = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.72) #12 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.ab = add i64 %.05888, %i.v                   ; 19 uses
  call void @luaL_checkstack(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.73) #12
  %i.ac = add nsw i32 %.089, 1                    ; 7 uses
  switch i32 %i.t, label %default.unreachable164 [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.k
    i32 4, label %bb.m
    i32 5, label %bb.o
    i32 6, label %bb.p
    i32 7, label %bb.v
    i32 9, label %bb.y
    i32 8, label %bb.y
    i32 10, label %bb.y
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab
  %i.ae = load i32, ptr %i.q, align 8, !tbaa !49
  %i.af = trunc i64 %i.w to i32
  %i.ag = icmp eq i32 %i.t, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = call fastcc i64 @unpackint(ptr noundef %0, ptr noundef %i.ad, i32 noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ah)
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ai) #12
  br label %bb.y

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 2 uses
  %i.ak = load i32, ptr %i.q, align 8, !tbaa !49
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.am = load i32, ptr %i.aj, align 1
  %i.an = call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = bitcast i32 %i.an to float
  br label %copywithendian.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = load float, ptr %i.aj, align 1
  br label %copywithendian.exit

copywithendian.exit:                              ; preds = %.preheader, %bb.j
  %.0160 = phi float [ %i.ap, %bb.j ], [ %i.ao, %.preheader ]
  %i.aq = fpext float %.0160 to double
  call void @lua_pushnumber(ptr noundef %0, double noundef %i.aq) #12
  br label %bb.y

bb.k:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 9 uses
end_hunk_0
begin_hunk_1_@unpackint:bb.a
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.dq = icmp samesign ult i64 %indvars.iv.next58, %i.dh
  br i1 %i.dq, label %.lr.ph46.split.us, label %.loopexit

.lr.ph46.split:                                   ; preds = %.lr.ph46, %bb.g
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %bb.g ], [ 8, %.lr.ph46 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv53
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !13
  %i.dt = zext i8 %i.ds to i32
  %.not39 = icmp eq i32 %i.dg, %i.dt
  br i1 %.not39, label %bb.g, label %bb.f, !prof !14

bb.f:                                             ; preds = %.lr.ph46.split
  %i.du = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %3) #12 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph46.split, %bb.f
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.dv = trunc nuw i64 %indvars.iv.next54 to i32
  %i.dw = icmp sgt i32 %3, %i.dv
  br i1 %i.dw, label %.lr.ph46.split, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.c, %._crit_edge.thread, %bb.b
  %.1 = phi i64 [ %i.dd, %bb.b ], [ %.0.lcssa61, %._crit_edge.thread ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %bb.g ]
  ret i64 %.1
}

declare void @lua_pushnumber(ptr noundef, double noundef) local_unnamed_addr #1

declare i32 @lua_setmetatable(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_add(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.77)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_sub(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.78)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_mul(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.79)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_mod(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.80)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_pow(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.81)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_div(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 5, ptr noundef nonnull @.str.82)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_idiv(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 6, ptr noundef nonnull @.str.83)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_unm(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.84)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arith(ptr noundef %0, i32 noundef range(i32 0, 13) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = tail call i32 @lua_type(ptr noundef %0, i32 noundef 1) #12
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %tonum.exit.thread, label %bb.b

tonum.exit.thread:                                ; preds = %bb.a
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 1) #12
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.e = call ptr @lua_tolstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.b) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %tonum.exit.thread13, label %tonum.exit

tonum.exit.thread13:                              ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.f

tonum.exit:                                       ; preds = %bb.b
  %i.f = call i64 @lua_stringtonumber(ptr noundef %0, ptr noundef nonnull %i.e) #12
  %i.g = load i64, ptr %i.b, align 8, !tbaa !11
  %i.h = add i64 %i.g, 1
  %.not = icmp eq i64 %i.f, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %tonum.exit.thread, %tonum.exit
  %i.i = call i32 @lua_type(ptr noundef %0, i32 noundef 2) #12
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %tonum.exit9.thread, label %bb.d

tonum.exit9.thread:                               ; preds = %bb.c
  call void @lua_pushvalue(ptr noundef %0, i32 noundef 2) #12
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.k = call ptr @lua_tolstring(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.a) #12 ; 2 uses
  %.not.i7 = icmp eq ptr %i.k, null
  br i1 %.not.i7, label %tonum.exit9.thread17, label %tonum.exit9

tonum.exit9.thread17:                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.f

tonum.exit9:                                      ; preds = %bb.d
  %i.l = call i64 @lua_stringtonumber(ptr noundef %0, ptr noundef nonnull %i.k) #12
  %i.m = load i64, ptr %i.a, align 8, !tbaa !11
  %i.n = add i64 %i.m, 1
  %.not19 = icmp eq i64 %i.l, %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %.not19, label %bb.e, label %bb.f

bb.e:                                             ; preds = %tonum.exit9.thread, %tonum.exit9
  call void @lua_arith(ptr noundef %0, i32 noundef %1) #12
  br label %bb.h

bb.f:                                             ; preds = %tonum.exit9.thread17, %tonum.exit.thread13, %tonum.exit9, %tonum.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2
  call void @lua_settop(ptr noundef %0, i32 noundef 2) #12
  %i.p = call i32 @lua_type(ptr noundef %0, i32 noundef 2) #12
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = call i32 @luaL_getmetafield(ptr noundef %0, i32 noundef 2, ptr noundef %2) #12
  %.not.i10 = icmp eq i32 %i.r, 0
  br i1 %.not.i10, label %.critedge.i, label %trymt.exit, !prof !12

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %i.s = call i32 @lua_type(ptr noundef %0, i32 noundef -2) #12
  %i.t = call ptr @lua_typename(ptr noundef %0, i32 noundef %i.s) #12
  %i.u = call i32 @lua_type(ptr noundef %0, i32 noundef -1) #12
  %i.v = call ptr @lua_typename(ptr noundef %0, i32 noundef %i.u) #12
  %i.w = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.85, ptr noundef nonnull %i.o, ptr noundef %i.t, ptr noundef %i.v) #12 ; 0 uses
  br label %trymt.exit

trymt.exit:                                       ; preds = %bb.g, %.critedge.i
  call void @lua_rotate(ptr noundef %0, i32 noundef -3, i32 noundef 1) #12
  call void @lua_callk(ptr noundef %0, i32 noundef 2, i32 noundef 1, i64 noundef 0, ptr noundef null) #12
  br label %bb.h

bb.h:                                             ; preds = %trymt.exit, %bb.e
  ret void
}

declare void @lua_arith(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @lua_stringtonumber(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @luaL_getmetafield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_rotate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 1, !"long-double-type", !"x86_fp80"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!6, !6, i64 0}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"p1 _ZTS9lua_State", !15, i64 0}
!18 = !{!"luaL_Buffer", !16, i64 0, !10, i64 8, !10, i64 16, !17, i64 24, !6, i64 32}
!19 = !{!"str_Writer", !7, i64 0, !18, i64 16}
!20 = !{!19, !7, i64 0}
!21 = !{!18, !10, i64 16}
!22 = !{!18, !10, i64 8}
!23 = !{!18, !16, i64 0}
!24 = !{!"p1 short", !15, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"short", !6, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"MatchState", !16, i64 0, !16, i64 8, !16, i64 16, !17, i64 24, !7, i64 32, !7, i64 36, !6, i64 40}
!29 = !{!28, !17, i64 24}
!30 = !{!28, !16, i64 0}
!31 = !{!28, !16, i64 8}
!32 = !{!28, !16, i64 16}
!33 = !{!"GMatchState", !16, i64 0, !16, i64 8, !16, i64 16, !28, i64 24}
!34 = !{!33, !16, i64 0}
!35 = !{!33, !16, i64 8}
!36 = !{!33, !16, i64 16}
!37 = !{!28, !7, i64 32}
!38 = !{!28, !7, i64 36}
!39 = !{!"", !16, i64 0, !10, i64 8}
!40 = !{!39, !10, i64 8}
!41 = !{!39, !16, i64 0}
!42 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!43 = !{!"p1 int", !15, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!7, !7, i64 0}
!46 = !{!16, !16, i64 0}
!47 = !{!"Header", !17, i64 0, !7, i64 8, !7, i64 12}
!48 = !{!47, !17, i64 0}
!49 = !{!47, !7, i64 8}
!50 = !{!47, !7, i64 12}
!51 = !{!"lconv", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !6, i64 80, !6, i64 81, !6, i64 82, !6, i64 83, !6, i64 84, !6, i64 85, !6, i64 86, !6, i64 87, !6, i64 88, !6, i64 89, !6, i64 90, !6, i64 91, !6, i64 92, !6, i64 93}
!52 = !{!51, !16, i64 0}
!53 = distinct !{!53, !59}
!54 = distinct !{!54, !59}
!55 = distinct !{!55, !59}
!56 = distinct !{!56, !59}
!57 = distinct !{!57, !59}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!61 = distinct !{null}
!62 = distinct !{null}
!63 = distinct !{null}
!64 = distinct !{null}
!65 = distinct !{!65, !67}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.peeled.count", i32 1}
!68 = !{!33, !17, i64 48}
!69 = !{!33, !16, i64 32}
!70 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
end_hunk_1
