Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lstrlib?download=true
inline.NumInlined: 79
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@str_sub:bb.a
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

bb.b:                                             ; preds = %.lr.ph139, %bb.ak
  %.0137 = phi i32 [ 1, %.lr.ph139 ], [ %.1, %bb.ak ] ; 5 uses
  %.058136 = phi i64 [ 0, %.lr.ph139 ], [ %.159, %bb.ak ] ; 3 uses
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
    i32 2, label %bb.o
    i32 3, label %bb.q
    i32 4, label %bb.s
    i32 5, label %bb.u
    i32 6, label %bb.z
    i32 7, label %bb.ac
    i32 8, label %bb.ah
    i32 9, label %bb.ak
    i32 10, label %bb.ak
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
  %i.bb = zext i32 %i.at to i64                   ; 4 uses
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
  %indvars.iv36.i = phi i64 [ 1, %.lr.ph.split.us.preheader.i.new ], [ %indvars.iv.next37.i.3, %.lr.ph.split.us.i ] ; 3 uses
  %.02830.us.i = phi i64 [ %i.ae, %.lr.ph.split.us.preheader.i.new ], [ %i.bo, %.lr.ph.split.us.i ] ; 4 uses
  %niter234 = phi i64 [ 0, %.lr.ph.split.us.preheader.i.new ], [ %niter234.next.3, %.lr.ph.split.us.i ]
  %i.bf = lshr i64 %.02830.us.i, 8
  %i.bg = trunc i64 %i.bf to i8
  %i.bh = sub nuw nsw i64 %i.bb, %indvars.iv36.i  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bh
  store i8 %i.bg, ptr %i.bi, align 1, !tbaa !13
  %indvars.iv.next37.i.neg = xor i64 %indvars.iv36.i, -1
  %i.bj = lshr i64 %.02830.us.i, 16
  %i.bk = trunc i64 %i.bj to i8
  %gep243 = getelementptr i8, ptr %invariant.gep242, i64 %indvars.iv.next37.i.neg
  store i8 %i.bk, ptr %gep243, align 1, !tbaa !13
  %i.bl = lshr i64 %.02830.us.i, 24
  %i.bm = trunc i64 %i.bl to i8
  %3 = getelementptr i8, ptr %i.ar, i64 %i.bh
  %i.bn = getelementptr i8, ptr %3, i64 -2
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !13
  %i.bo = lshr i64 %.02830.us.i, 32               ; 3 uses
  %i.bp = trunc i64 %i.bo to i8
  %4 = getelementptr i8, ptr %i.ar, i64 %i.bh
  %i.bq = getelementptr i8, ptr %4, i64 -3
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !13
  %indvars.iv.next37.i.3 = add nuw nsw i64 %indvars.iv36.i, 4 ; 2 uses
  %niter234.next.3 = add nuw i64 %niter234, 4     ; 2 uses
  %niter234.ncmp.3 = icmp eq i64 %niter234.next.3, %unroll_iter233
  br i1 %niter234.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.split.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.split.i ] ; 5 uses
  %.02830.i = phi i64 [ %i.ae, %.lr.ph.split.i.preheader.new ], [ %i.cc, %.lr.ph.split.i ] ; 4 uses
  %niter228 = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter228.next.3, %.lr.ph.split.i ]
  %i.br = lshr i64 %.02830.i, 8
  %i.bs = trunc i64 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !13
  %i.bu = lshr i64 %.02830.i, 16
  %i.bv = trunc i64 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store i8 %i.bv, ptr %i.bx, align 1, !tbaa !13
  %i.by = lshr i64 %.02830.i, 24
  %i.bz = trunc i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !13
  %i.cc = lshr i64 %.02830.i, 32                  ; 3 uses
  %i.cd = trunc i64 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  store i8 %i.cd, ptr %i.cf, align 1, !tbaa !13
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter228.next.3 = add nuw i64 %niter228, 4     ; 2 uses
  %niter228.ncmp.3 = icmp eq i64 %niter228.next.3, %unroll_iter227
  br i1 %niter228.ncmp.3, label %._crit_edge.thread50.i.unr-lcssa, label %.lr.ph.split.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.split.us.i
  %lcmp.mod231.not = icmp eq i64 %xtraiter229, 0
  br i1 %lcmp.mod231.not, label %._crit_edge.i, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.split.us.preheader.i
  %indvars.iv36.i.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next37.i.3, %._crit_edge.i.unr-lcssa ]
  %.02830.us.i.epil.init = phi i64 [ %i.ae, %.lr.ph.split.us.preheader.i ], [ %i.bo, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod232 = icmp ne i64 %xtraiter229, 0
  call void @llvm.assume(i1 %lcmp.mod232)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %indvars.iv36.i.epil = phi i64 [ %indvars.iv36.i.epil.init, %.lr.ph.split.us.i.epil.preheader ], [ %indvars.iv.next37.i.epil, %.lr.ph.split.us.i.epil ] ; 2 uses
  %.02830.us.i.epil = phi i64 [ %.02830.us.i.epil.init, %.lr.ph.split.us.i.epil.preheader ], [ %i.cg, %.lr.ph.split.us.i.epil ]
  %epil.iter230 = phi i64 [ 0, %.lr.ph.split.us.i.epil.preheader ], [ %epil.iter230.next, %.lr.ph.split.us.i.epil ]
  %i.cg = lshr i64 %.02830.us.i.epil, 8           ; 2 uses
  %i.ch = trunc i64 %i.cg to i8
  %i.ci = sub nuw nsw i64 %i.bb, %indvars.iv36.i.epil
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ci
  store i8 %i.ch, ptr %i.cj, align 1, !tbaa !13
  %indvars.iv.next37.i.epil = add nuw nsw i64 %indvars.iv36.i.epil, 1
  %epil.iter230.next = add i64 %epil.iter230, 1   ; 2 uses
  %epil.iter230.cmp.not = icmp eq i64 %epil.iter230.next, %xtraiter229
  br i1 %epil.iter230.cmp.not, label %._crit_edge.i, label %.lr.ph.split.us.i.epil, !llvm.loop !53

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.i.epil, %._crit_edge.i.unr-lcssa
  %i.ck = icmp slt i64 %i.ae, 0
  %i.cl = icmp ugt i32 %i.ap, 8
  %or.cond.i = and i1 %i.cl, %i.ck
  br i1 %or.cond.i, label %.preheader.split.us.i.preheader, label %packint.exit

.preheader.split.us.i.preheader:                  ; preds = %._crit_edge.i
  %scevgep = getelementptr i8, ptr %i.ar, i64 1
  %i.cm = sub nsw i64 %i.bb, %i.aq
  %scevgep144 = getelementptr i8, ptr %scevgep, i64 %i.cm
  %i.cn = add nsw i64 %i.aq, -8
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep144, i8 -1, i64 %i.cn, i1 false), !tbaa !13
  br label %packint.exit

._crit_edge.thread50.i.unr-lcssa:                 ; preds = %.lr.ph.split.i
  %lcmp.mod225.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod225.not, label %._crit_edge.thread50.i, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %._crit_edge.thread50.i.unr-lcssa, %.lr.ph.split.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i.3, %._crit_edge.thread50.i.unr-lcssa ]
  %.02830.i.epil.init = phi i64 [ %i.ae, %.lr.ph.split.i.preheader ], [ %i.cc, %._crit_edge.thread50.i.unr-lcssa ]
  %lcmp.mod226 = icmp ne i64 %xtraiter223, 0
  call void @llvm.assume(i1 %lcmp.mod226)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.split.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.split.i.epil.preheader ] ; 2 uses
  %.02830.i.epil = phi i64 [ %i.co, %.lr.ph.split.i.epil ], [ %.02830.i.epil.init, %.lr.ph.split.i.epil.preheader ]
  %epil.iter224 = phi i64 [ %epil.iter224.next, %.lr.ph.split.i.epil ], [ 0, %.lr.ph.split.i.epil.preheader ]
  %i.co = lshr i64 %.02830.i.epil, 8              ; 2 uses
  %i.cp = trunc i64 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i.epil
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !13
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter224.next = add i64 %epil.iter224, 1   ; 2 uses
  %epil.iter224.cmp.not = icmp eq i64 %epil.iter224.next, %xtraiter223
  br i1 %epil.iter224.cmp.not, label %._crit_edge.thread50.i, label %.lr.ph.split.i.epil, !llvm.loop !54

._crit_edge.thread50.i:                           ; preds = %.lr.ph.split.i.epil, %._crit_edge.thread50.i.unr-lcssa
  %i.cr = icmp slt i64 %i.ae, 0
  %i.cs = icmp ugt i32 %i.ap, 8
  %or.cond51.i = and i1 %i.cs, %i.cr
  br i1 %or.cond51.i, label %.preheader.split.preheader.i, label %packint.exit

.preheader.split.preheader.i:                     ; preds = %._crit_edge.thread50.i
  %scevgep.i = getelementptr i8, ptr %i.ar, i64 8
  %i.ct = add i64 %i.n, 4294967288
  %i.cu = and i64 %i.ct, 4294967295
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 -1, i64 %i.cu, i1 false), !tbaa !13
  br label %packint.exit

packint.exit:                                     ; preds = %.preheader.split.us.i.preheader, %bb.j, %._crit_edge.i, %._crit_edge.thread50.i, %.preheader.split.preheader.i
  %i.cv = load i64, ptr %i.k, align 16, !tbaa !21
  %i.cw = add i64 %i.cv, %i.aq
  store i64 %i.cw, ptr %i.k, align 16, !tbaa !21
  br label %bb.ak

bb.k:                                             ; preds = %._crit_edge
  %i.cx = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef %i.ad) #12 ; 6 uses
  %i.cy = icmp ult i64 %i.n, 8
  br i1 %i.cy, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cz = shl nuw nsw i64 %i.n, 3
  %.highbits68 = lshr i64 %i.cx, %i.cz
  %i.da = icmp eq i64 %.highbits68, 0
  br i1 %i.da, label %bb.n, label %bb.m, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.db = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull @.str.61) #12 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.dc = load i32, ptr %i.h, align 8, !tbaa !49
  %i.dd = trunc i64 %i.n to i32                   ; 2 uses
  %i.de = and i64 %i.n, 4294967295                ; 6 uses
  %i.df = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef %i.de) #12 ; 11 uses
  %i.dg = trunc i64 %i.cx to i8
  %.not.i69 = icmp eq i32 %i.dc, 0                ; 2 uses
  %i.dh = add i32 %i.dd, -1                       ; 2 uses
  %i.di = select i1 %.not.i69, i32 %i.dh, i32 0
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dj
  store i8 %i.dg, ptr %i.dk, align 1, !tbaa !13
  %i.dl = icmp ugt i32 %i.dd, 1
  br i1 %i.dl, label %.lr.ph.i70, label %packint.exit93

.lr.ph.i70:                                       ; preds = %bb.n
  br i1 %.not.i69, label %.lr.ph.split.us.preheader.i80, label %.lr.ph.split.i71.preheader

.lr.ph.split.i71.preheader:                       ; preds = %.lr.ph.i70
  %i.dm = add nsw i64 %i.de, -1                   ; 2 uses
  %i.dn = add nsw i64 %i.de, -2
  %xtraiter211 = and i64 %i.dm, 3                 ; 3 uses
  %i.do = icmp ult i64 %i.dn, 3
  br i1 %i.do, label %.lr.ph.split.i71.epil.preheader, label %.lr.ph.split.i71.preheader.new

.lr.ph.split.i71.preheader.new:                   ; preds = %.lr.ph.split.i71.preheader
  %unroll_iter215 = and i64 %i.dm, -4
  br label %.lr.ph.split.i71

.lr.ph.split.us.preheader.i80:                    ; preds = %.lr.ph.i70
  %i.dp = zext i32 %i.dh to i64                   ; 3 uses
  %i.dq = add nsw i64 %i.de, -1                   ; 2 uses
  %i.dr = add nsw i64 %i.de, -2
  %xtraiter217 = and i64 %i.dq, 3                 ; 3 uses
  %i.ds = icmp ult i64 %i.dr, 3
  br i1 %i.ds, label %.lr.ph.split.us.i81.epil.preheader, label %.lr.ph.split.us.preheader.i80.new

.lr.ph.split.us.preheader.i80.new:                ; preds = %.lr.ph.split.us.preheader.i80
  %unroll_iter221 = and i64 %i.dq, -4
  %invariant.gep240 = getelementptr i8, ptr %i.df, i64 %i.dp
  br label %.lr.ph.split.us.i81

.lr.ph.split.us.i81:                              ; preds = %.lr.ph.split.us.i81, %.lr.ph.split.us.preheader.i80.new
  %indvars.iv36.i82 = phi i64 [ 1, %.lr.ph.split.us.preheader.i80.new ], [ %indvars.iv.next37.i84.3, %.lr.ph.split.us.i81 ] ; 3 uses
  %.02830.us.i83 = phi i64 [ %i.cx, %.lr.ph.split.us.preheader.i80.new ], [ %i.ec, %.lr.ph.split.us.i81 ] ; 4 uses
  %niter222 = phi i64 [ 0, %.lr.ph.split.us.preheader.i80.new ], [ %niter222.next.3, %.lr.ph.split.us.i81 ]
  %i.dt = lshr i64 %.02830.us.i83, 8
  %i.du = trunc i64 %i.dt to i8
  %i.dv = sub nuw nsw i64 %i.dp, %indvars.iv36.i82 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dv
  store i8 %i.du, ptr %i.dw, align 1, !tbaa !13
  %indvars.iv.next37.i84.neg = xor i64 %indvars.iv36.i82, -1
  %i.dx = lshr i64 %.02830.us.i83, 16
  %i.dy = trunc i64 %i.dx to i8
  %gep241 = getelementptr i8, ptr %invariant.gep240, i64 %indvars.iv.next37.i84.neg
  store i8 %i.dy, ptr %gep241, align 1, !tbaa !13
  %i.dz = lshr i64 %.02830.us.i83, 24
  %i.ea = trunc i64 %i.dz to i8
  %5 = getelementptr i8, ptr %i.df, i64 %i.dv
  %i.eb = getelementptr i8, ptr %5, i64 -2
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !13
  %i.ec = lshr i64 %.02830.us.i83, 32             ; 3 uses
  %i.ed = trunc i64 %i.ec to i8
  %6 = getelementptr i8, ptr %i.df, i64 %i.dv
  %i.ee = getelementptr i8, ptr %6, i64 -3
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !13
  %indvars.iv.next37.i84.3 = add nuw nsw i64 %indvars.iv36.i82, 4 ; 2 uses
  %niter222.next.3 = add nuw i64 %niter222, 4     ; 2 uses
  %niter222.ncmp.3 = icmp eq i64 %niter222.next.3, %unroll_iter221
  br i1 %niter222.ncmp.3, label %packint.exit93.loopexit.unr-lcssa, label %.lr.ph.split.us.i81

.lr.ph.split.i71:                                 ; preds = %.lr.ph.split.i71, %.lr.ph.split.i71.preheader.new
  %indvars.iv.i72 = phi i64 [ 1, %.lr.ph.split.i71.preheader.new ], [ %indvars.iv.next.i74.3, %.lr.ph.split.i71 ] ; 5 uses
  %.02830.i73 = phi i64 [ %i.cx, %.lr.ph.split.i71.preheader.new ], [ %i.eq, %.lr.ph.split.i71 ] ; 4 uses
  %niter216 = phi i64 [ 0, %.lr.ph.split.i71.preheader.new ], [ %niter216.next.3, %.lr.ph.split.i71 ]
  %i.ef = lshr i64 %.02830.i73, 8
  %i.eg = trunc i64 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv.i72
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !13
  %i.ei = lshr i64 %.02830.i73, 16
  %i.ej = trunc i64 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv.i72
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  store i8 %i.ej, ptr %i.el, align 1, !tbaa !13
  %i.em = lshr i64 %.02830.i73, 24
  %i.en = trunc i64 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv.i72
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  store i8 %i.en, ptr %i.ep, align 1, !tbaa !13
  %i.eq = lshr i64 %.02830.i73, 32                ; 3 uses
  %i.er = trunc i64 %i.eq to i8
  %i.es = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv.i72
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 3
  store i8 %i.er, ptr %i.et, align 1, !tbaa !13
  %indvars.iv.next.i74.3 = add nuw nsw i64 %indvars.iv.i72, 4 ; 2 uses
  %niter216.next.3 = add nuw i64 %niter216, 4     ; 2 uses
  %niter216.ncmp.3 = icmp eq i64 %niter216.next.3, %unroll_iter215
  br i1 %niter216.ncmp.3, label %packint.exit93.loopexit202.unr-lcssa, label %.lr.ph.split.i71

packint.exit93.loopexit.unr-lcssa:                ; preds = %.lr.ph.split.us.i81
  %lcmp.mod219.not = icmp eq i64 %xtraiter217, 0
  br i1 %lcmp.mod219.not, label %packint.exit93, label %.lr.ph.split.us.i81.epil.preheader

.lr.ph.split.us.i81.epil.preheader:               ; preds = %packint.exit93.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i80
  %indvars.iv36.i82.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i80 ], [ %indvars.iv.next37.i84.3, %packint.exit93.loopexit.unr-lcssa ]
  %.02830.us.i83.epil.init = phi i64 [ %i.cx, %.lr.ph.split.us.preheader.i80 ], [ %i.ec, %packint.exit93.loopexit.unr-lcssa ]
  %lcmp.mod220 = icmp ne i64 %xtraiter217, 0
  call void @llvm.assume(i1 %lcmp.mod220)
  br label %.lr.ph.split.us.i81.epil

.lr.ph.split.us.i81.epil:                         ; preds = %.lr.ph.split.us.i81.epil, %.lr.ph.split.us.i81.epil.preheader
  %indvars.iv36.i82.epil = phi i64 [ %indvars.iv36.i82.epil.init, %.lr.ph.split.us.i81.epil.preheader ], [ %indvars.iv.next37.i84.epil, %.lr.ph.split.us.i81.epil ] ; 2 uses
  %.02830.us.i83.epil = phi i64 [ %.02830.us.i83.epil.init, %.lr.ph.split.us.i81.epil.preheader ], [ %i.eu, %.lr.ph.split.us.i81.epil ]
  %epil.iter218 = phi i64 [ 0, %.lr.ph.split.us.i81.epil.preheader ], [ %epil.iter218.next, %.lr.ph.split.us.i81.epil ]
  %i.eu = lshr i64 %.02830.us.i83.epil, 8         ; 2 uses
  %i.ev = trunc i64 %i.eu to i8
  %i.ew = sub nuw nsw i64 %i.dp, %indvars.iv36.i82.epil
  %i.ex = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.ew
  store i8 %i.ev, ptr %i.ex, align 1, !tbaa !13
  %indvars.iv.next37.i84.epil = add nuw nsw i64 %indvars.iv36.i82.epil, 1
  %epil.iter218.next = add i64 %epil.iter218, 1   ; 2 uses
  %epil.iter218.cmp.not = icmp eq i64 %epil.iter218.next, %xtraiter217
  br i1 %epil.iter218.cmp.not, label %packint.exit93, label %.lr.ph.split.us.i81.epil, !llvm.loop !55

packint.exit93.loopexit202.unr-lcssa:             ; preds = %.lr.ph.split.i71
  %lcmp.mod213.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod213.not, label %packint.exit93, label %.lr.ph.split.i71.epil.preheader

.lr.ph.split.i71.epil.preheader:                  ; preds = %packint.exit93.loopexit202.unr-lcssa, %.lr.ph.split.i71.preheader
  %indvars.iv.i72.epil.init = phi i64 [ 1, %.lr.ph.split.i71.preheader ], [ %indvars.iv.next.i74.3, %packint.exit93.loopexit202.unr-lcssa ]
  %.02830.i73.epil.init = phi i64 [ %i.cx, %.lr.ph.split.i71.preheader ], [ %i.eq, %packint.exit93.loopexit202.unr-lcssa ]
  %lcmp.mod214 = icmp ne i64 %xtraiter211, 0
  call void @llvm.assume(i1 %lcmp.mod214)
  br label %.lr.ph.split.i71.epil

.lr.ph.split.i71.epil:                            ; preds = %.lr.ph.split.i71.epil, %.lr.ph.split.i71.epil.preheader
  %indvars.iv.i72.epil = phi i64 [ %indvars.iv.next.i74.epil, %.lr.ph.split.i71.epil ], [ %indvars.iv.i72.epil.init, %.lr.ph.split.i71.epil.preheader ] ; 2 uses
  %.02830.i73.epil = phi i64 [ %i.ey, %.lr.ph.split.i71.epil ], [ %.02830.i73.epil.init, %.lr.ph.split.i71.epil.preheader ]
  %epil.iter212 = phi i64 [ %epil.iter212.next, %.lr.ph.split.i71.epil ], [ 0, %.lr.ph.split.i71.epil.preheader ]
  %i.ey = lshr i64 %.02830.i73.epil, 8            ; 2 uses
  %i.ez = trunc i64 %i.ey to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv.i72.epil
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !13
  %indvars.iv.next.i74.epil = add nuw nsw i64 %indvars.iv.i72.epil, 1
  %epil.iter212.next = add i64 %epil.iter212, 1   ; 2 uses
  %epil.iter212.cmp.not = icmp eq i64 %epil.iter212.next, %xtraiter211
  br i1 %epil.iter212.cmp.not, label %packint.exit93, label %.lr.ph.split.i71.epil, !llvm.loop !56

packint.exit93:                                   ; preds = %packint.exit93.loopexit202.unr-lcssa, %.lr.ph.split.i71.epil, %packint.exit93.loopexit.unr-lcssa, %.lr.ph.split.us.i81.epil, %bb.n
  %i.fb = load i64, ptr %i.k, align 16, !tbaa !21
  %i.fc = add i64 %i.fb, %i.de
  store i64 %i.fc, ptr %i.k, align 16, !tbaa !21
  br label %bb.ak

bb.o:                                             ; preds = %._crit_edge
  %i.fd = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ad) #12
  %i.fe = fptrunc double %i.fd to float           ; 2 uses
  %i.ff = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 4) #12 ; 5 uses
  %i.fg = load i32, ptr %i.h, align 8, !tbaa !49
  %i.fh = icmp eq i32 %i.fg, 1
  br i1 %i.fh, label %bb.p, label %copywithendian.exit.loopexit

bb.p:                                             ; preds = %bb.o
  store float %i.fe, ptr %i.ff, align 1
  br label %copywithendian.exit

copywithendian.exit.loopexit:                     ; preds = %bb.o
  %.0.i = getelementptr i8, ptr %i.ff, i64 3
  %i.fi = bitcast float %i.fe to i32              ; 4 uses
  %.0.extract.trunc171 = trunc i32 %i.fi to i8
  store i8 %.0.extract.trunc171, ptr %.0.i, align 1, !tbaa !13
  %.0.i.1 = getelementptr i8, ptr %i.ff, i64 2
  %.1.extract.shift174 = lshr i32 %i.fi, 8
  %.1.extract.trunc175 = trunc i32 %.1.extract.shift174 to i8
  store i8 %.1.extract.trunc175, ptr %.0.i.1, align 1, !tbaa !13
  %.0.i.2 = getelementptr i8, ptr %i.ff, i64 1
  %.2.extract.shift177 = lshr i32 %i.fi, 16
  %.2.extract.trunc178 = trunc i32 %.2.extract.shift177 to i8
  store i8 %.2.extract.trunc178, ptr %.0.i.2, align 1, !tbaa !13
  %.3.extract.shift180 = lshr i32 %i.fi, 24
  %.3.extract.trunc181 = trunc nuw i32 %.3.extract.shift180 to i8
  store i8 %.3.extract.trunc181, ptr %i.ff, align 1, !tbaa !13
  br label %copywithendian.exit

copywithendian.exit:                              ; preds = %copywithendian.exit.loopexit, %bb.p
  %i.fj = load i64, ptr %i.k, align 16, !tbaa !21
  %i.fk = add i64 %i.fj, %i.n
  store i64 %i.fk, ptr %i.k, align 16, !tbaa !21
  br label %bb.ak

bb.q:                                             ; preds = %._crit_edge
  %i.fl = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ad) #12 ; 2 uses
  %i.fm = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 8) #12
  %i.fn = load i32, ptr %i.h, align 8, !tbaa !49
  %i.fo = icmp eq i32 %i.fn, 1
  br i1 %i.fo, label %bb.r, label %copywithendian.exit100.loopexit

bb.r:                                             ; preds = %bb.q
  %i.fp = bitcast double %i.fl to <8 x i8>
  br label %copywithendian.exit100

copywithendian.exit100.loopexit:                  ; preds = %bb.q
  %i.fq = bitcast double %i.fl to <8 x i8>
  %i.fr = shufflevector <8 x i8> %i.fq, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  br label %copywithendian.exit100

copywithendian.exit100:                           ; preds = %copywithendian.exit100.loopexit, %bb.r
  %storemerge201 = phi <8 x i8> [ %i.fr, %copywithendian.exit100.loopexit ], [ %i.fp, %bb.r ]
  store <8 x i8> %storemerge201, ptr %i.fm, align 1
  %i.fs = load i64, ptr %i.k, align 16, !tbaa !21
  %i.ft = add i64 %i.fs, %i.n
  store i64 %i.ft, ptr %i.k, align 16, !tbaa !21
  br label %bb.ak

bb.s:                                             ; preds = %._crit_edge
  %i.fu = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ad) #12 ; 2 uses
  %i.fv = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 8) #12
  %i.fw = load i32, ptr %i.h, align 8, !tbaa !49
  %i.fx = icmp eq i32 %i.fw, 1
  br i1 %i.fx, label %bb.t, label %copywithendian.exit106.loopexit

bb.t:                                             ; preds = %bb.s
  %i.fy = bitcast double %i.fu to <8 x i8>
  br label %copywithendian.exit106

copywithendian.exit106.loopexit:                  ; preds = %bb.s
  %i.fz = bitcast double %i.fu to <8 x i8>
  %i.ga = shufflevector <8 x i8> %i.fz, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  br label %copywithendian.exit106

copywithendian.exit106:                           ; preds = %copywithendian.exit106.loopexit, %bb.t
  %storemerge = phi <8 x i8> [ %i.ga, %copywithendian.exit106.loopexit ], [ %i.fy, %bb.t ]
  store <8 x i8> %storemerge, ptr %i.fv, align 1
  %i.gb = load i64, ptr %i.k, align 16, !tbaa !21
  %i.gc = add i64 %i.gb, %i.n
  store i64 %i.gc, ptr %i.k, align 16, !tbaa !21
  br label %bb.ak

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.gd = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull %i.d) #12
  %i.ge = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %.not67 = icmp ugt i64 %i.ge, %i.n
  br i1 %.not67, label %bb.v, label %bb.w, !prof !12

bb.v:                                             ; preds = %bb.u
  %i.gf = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull @.str.62) #12 ; 0 uses
  %.pre186 = load i64, ptr %i.d, align 8, !tbaa !11
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.gg = phi i64 [ %.pre186, %bb.v ], [ %i.ge, %bb.u ]
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef %i.gd, i64 noundef %i.gg) #12
  %i.gh = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.n
  br i1 %i.gi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gj = sub nuw i64 %i.n, %i.gh                 ; 3 uses
  %i.gk = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef %i.gj) #12
  call void @llvm.memset.p0.i64(ptr align 1 %i.gk, i8 0, i64 %i.gj, i1 false)
  %i.gl = load i64, ptr %i.k, align 16, !tbaa !21
  %i.gm = add i64 %i.gl, %i.gj
  store i64 %i.gm, ptr %i.k, align 16, !tbaa !21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.ak

bb.z:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.gn = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull %i.e) #12
  %i.go = icmp ugt i64 %i.n, 7
  %i.gp = load i64, ptr %i.e, align 8             ; 2 uses
  %i.gq = shl nuw nsw i64 %i.n, 3
  %.highbits = lshr i64 %i.gp, %i.gq
  %i.gr = icmp eq i64 %.highbits, 0
  %i.gs = select i1 %i.go, i1 true, i1 %i.gr
  br i1 %i.gs, label %bb.ab, label %bb.aa, !prof !14

bb.aa:                                            ; preds = %bb.z
  %i.gt = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull @.str.63) #12 ; 0 uses
  %.pre185 = load i64, ptr %i.e, align 8, !tbaa !11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gu = phi i64 [ %.pre185, %bb.aa ], [ %i.gp, %bb.z ] ; 5 uses
  %i.gv = load i32, ptr %i.h, align 8, !tbaa !49
  %i.gw = trunc i64 %i.n to i32                   ; 2 uses
  %i.gx = and i64 %i.n, 4294967295                ; 6 uses
  %i.gy = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef %i.gx) #12 ; 11 uses
  %i.gz = trunc i64 %i.gu to i8
  %.not.i107 = icmp eq i32 %i.gv, 0               ; 2 uses
  %i.ha = add i32 %i.gw, -1                       ; 2 uses
  %i.hb = select i1 %.not.i107, i32 %i.ha, i32 0
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hc
  store i8 %i.gz, ptr %i.hd, align 1, !tbaa !13
  %i.he = icmp ugt i32 %i.gw, 1
  br i1 %i.he, label %.lr.ph.i108, label %packint.exit131

.lr.ph.i108:                                      ; preds = %bb.ab
  br i1 %.not.i107, label %.lr.ph.split.us.preheader.i118, label %.lr.ph.split.i109.preheader

.lr.ph.split.i109.preheader:                      ; preds = %.lr.ph.i108
  %i.hf = add nsw i64 %i.gx, -1                   ; 2 uses
  %i.hg = add nsw i64 %i.gx, -2
  %xtraiter = and i64 %i.hf, 3                    ; 3 uses
  %i.hh = icmp ult i64 %i.hg, 3
  br i1 %i.hh, label %.lr.ph.split.i109.epil.preheader, label %.lr.ph.split.i109.preheader.new

.lr.ph.split.i109.preheader.new:                  ; preds = %.lr.ph.split.i109.preheader
  %unroll_iter = and i64 %i.hf, -4
  br label %.lr.ph.split.i109

.lr.ph.split.us.preheader.i118:                   ; preds = %.lr.ph.i108
  %i.hi = zext i32 %i.ha to i64                   ; 3 uses
  %i.hj = add nsw i64 %i.gx, -1                   ; 2 uses
  %i.hk = add nsw i64 %i.gx, -2
  %xtraiter205 = and i64 %i.hj, 3                 ; 3 uses
  %i.hl = icmp ult i64 %i.hk, 3
  br i1 %i.hl, label %.lr.ph.split.us.i119.epil.preheader, label %.lr.ph.split.us.preheader.i118.new

.lr.ph.split.us.preheader.i118.new:               ; preds = %.lr.ph.split.us.preheader.i118
  %unroll_iter209 = and i64 %i.hj, -4
  %invariant.gep = getelementptr i8, ptr %i.gy, i64 %i.hi
  br label %.lr.ph.split.us.i119

.lr.ph.split.us.i119:                             ; preds = %.lr.ph.split.us.i119, %.lr.ph.split.us.preheader.i118.new
  %indvars.iv36.i120 = phi i64 [ 1, %.lr.ph.split.us.preheader.i118.new ], [ %indvars.iv.next37.i122.3, %.lr.ph.split.us.i119 ] ; 3 uses
  %.02830.us.i121 = phi i64 [ %i.gu, %.lr.ph.split.us.preheader.i118.new ], [ %i.hv, %.lr.ph.split.us.i119 ] ; 4 uses
  %niter210 = phi i64 [ 0, %.lr.ph.split.us.preheader.i118.new ], [ %niter210.next.3, %.lr.ph.split.us.i119 ]
  %i.hm = lshr i64 %.02830.us.i121, 8
  %i.hn = trunc i64 %i.hm to i8
  %i.ho = sub nuw nsw i64 %i.hi, %indvars.iv36.i120 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ho
  store i8 %i.hn, ptr %i.hp, align 1, !tbaa !13
  %indvars.iv.next37.i122.neg = xor i64 %indvars.iv36.i120, -1
  %i.hq = lshr i64 %.02830.us.i121, 16
  %i.hr = trunc i64 %i.hq to i8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next37.i122.neg
  store i8 %i.hr, ptr %gep, align 1, !tbaa !13
  %i.hs = lshr i64 %.02830.us.i121, 24
  %i.ht = trunc i64 %i.hs to i8
  %7 = getelementptr i8, ptr %i.gy, i64 %i.ho
  %i.hu = getelementptr i8, ptr %7, i64 -2
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !13
  %i.hv = lshr i64 %.02830.us.i121, 32            ; 3 uses
  %i.hw = trunc i64 %i.hv to i8
  %8 = getelementptr i8, ptr %i.gy, i64 %i.ho
  %i.hx = getelementptr i8, ptr %8, i64 -3
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !13
  %indvars.iv.next37.i122.3 = add nuw nsw i64 %indvars.iv36.i120, 4 ; 2 uses
  %niter210.next.3 = add nuw i64 %niter210, 4     ; 2 uses
  %niter210.ncmp.3 = icmp eq i64 %niter210.next.3, %unroll_iter209
  br i1 %niter210.ncmp.3, label %packint.exit131.loopexit.unr-lcssa, label %.lr.ph.split.us.i119

.lr.ph.split.i109:                                ; preds = %.lr.ph.split.i109, %.lr.ph.split.i109.preheader.new
  %indvars.iv.i110 = phi i64 [ 1, %.lr.ph.split.i109.preheader.new ], [ %indvars.iv.next.i112.3, %.lr.ph.split.i109 ] ; 5 uses
  %.02830.i111 = phi i64 [ %i.gu, %.lr.ph.split.i109.preheader.new ], [ %i.ij, %.lr.ph.split.i109 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i109.preheader.new ], [ %niter.next.3, %.lr.ph.split.i109 ]
  %i.hy = lshr i64 %.02830.i111, 8
  %i.hz = trunc i64 %i.hy to i8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gy, i64 %indvars.iv.i110
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !13
  %i.ib = lshr i64 %.02830.i111, 16
  %i.ic = trunc i64 %i.ib to i8
  %i.id = getelementptr inbounds nuw i8, ptr %i.gy, i64 %indvars.iv.i110
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  store i8 %i.ic, ptr %i.ie, align 1, !tbaa !13
  %i.if = lshr i64 %.02830.i111, 24
  %i.ig = trunc i64 %i.if to i8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gy, i64 %indvars.iv.i110
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  store i8 %i.ig, ptr %i.ii, align 1, !tbaa !13
  %i.ij = lshr i64 %.02830.i111, 32               ; 3 uses
  %i.ik = trunc i64 %i.ij to i8
  %i.il = getelementptr inbounds nuw i8, ptr %i.gy, i64 %indvars.iv.i110
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 3
  store i8 %i.ik, ptr %i.im, align 1, !tbaa !13
  %indvars.iv.next.i112.3 = add nuw nsw i64 %indvars.iv.i110, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %packint.exit131.loopexit203.unr-lcssa, label %.lr.ph.split.i109

packint.exit131.loopexit.unr-lcssa:               ; preds = %.lr.ph.split.us.i119
  %lcmp.mod207.not = icmp eq i64 %xtraiter205, 0
  br i1 %lcmp.mod207.not, label %packint.exit131, label %.lr.ph.split.us.i119.epil.preheader

.lr.ph.split.us.i119.epil.preheader:              ; preds = %packint.exit131.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i118
  %indvars.iv36.i120.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i118 ], [ %indvars.iv.next37.i122.3, %packint.exit131.loopexit.unr-lcssa ]
  %.02830.us.i121.epil.init = phi i64 [ %i.gu, %.lr.ph.split.us.preheader.i118 ], [ %i.hv, %packint.exit131.loopexit.unr-lcssa ]
  %lcmp.mod208 = icmp ne i64 %xtraiter205, 0
  call void @llvm.assume(i1 %lcmp.mod208)
  br label %.lr.ph.split.us.i119.epil

.lr.ph.split.us.i119.epil:                        ; preds = %.lr.ph.split.us.i119.epil, %.lr.ph.split.us.i119.epil.preheader
  %indvars.iv36.i120.epil = phi i64 [ %indvars.iv36.i120.epil.init, %.lr.ph.split.us.i119.epil.preheader ], [ %indvars.iv.next37.i122.epil, %.lr.ph.split.us.i119.epil ] ; 2 uses
  %.02830.us.i121.epil = phi i64 [ %.02830.us.i121.epil.init, %.lr.ph.split.us.i119.epil.preheader ], [ %i.in, %.lr.ph.split.us.i119.epil ]
  %epil.iter206 = phi i64 [ 0, %.lr.ph.split.us.i119.epil.preheader ], [ %epil.iter206.next, %.lr.ph.split.us.i119.epil ]
  %i.in = lshr i64 %.02830.us.i121.epil, 8        ; 2 uses
  %i.io = trunc i64 %i.in to i8
  %i.ip = sub nuw nsw i64 %i.hi, %indvars.iv36.i120.epil
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ip
  store i8 %i.io, ptr %i.iq, align 1, !tbaa !13
  %indvars.iv.next37.i122.epil = add nuw nsw i64 %indvars.iv36.i120.epil, 1
  %epil.iter206.next = add i64 %epil.iter206, 1   ; 2 uses
  %epil.iter206.cmp.not = icmp eq i64 %epil.iter206.next, %xtraiter205
  br i1 %epil.iter206.cmp.not, label %packint.exit131, label %.lr.ph.split.us.i119.epil, !llvm.loop !57

packint.exit131.loopexit203.unr-lcssa:            ; preds = %.lr.ph.split.i109
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %packint.exit131, label %.lr.ph.split.i109.epil.preheader

.lr.ph.split.i109.epil.preheader:                 ; preds = %packint.exit131.loopexit203.unr-lcssa, %.lr.ph.split.i109.preheader
  %indvars.iv.i110.epil.init = phi i64 [ 1, %.lr.ph.split.i109.preheader ], [ %indvars.iv.next.i112.3, %packint.exit131.loopexit203.unr-lcssa ]
  %.02830.i111.epil.init = phi i64 [ %i.gu, %.lr.ph.split.i109.preheader ], [ %i.ij, %packint.exit131.loopexit203.unr-lcssa ]
  %lcmp.mod204 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod204)
  br label %.lr.ph.split.i109.epil

.lr.ph.split.i109.epil:                           ; preds = %.lr.ph.split.i109.epil, %.lr.ph.split.i109.epil.preheader
  %indvars.iv.i110.epil = phi i64 [ %indvars.iv.next.i112.epil, %.lr.ph.split.i109.epil ], [ %indvars.iv.i110.epil.init, %.lr.ph.split.i109.epil.preheader ] ; 2 uses
  %.02830.i111.epil = phi i64 [ %i.ir, %.lr.ph.split.i109.epil ], [ %.02830.i111.epil.init, %.lr.ph.split.i109.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.i109.epil ], [ 0, %.lr.ph.split.i109.epil.preheader ]
  %i.ir = lshr i64 %.02830.i111.epil, 8           ; 2 uses
  %i.is = trunc i64 %i.ir to i8
  %i.it = getelementptr inbounds nuw i8, ptr %i.gy, i64 %indvars.iv.i110.epil
  store i8 %i.is, ptr %i.it, align 1, !tbaa !13
  %indvars.iv.next.i112.epil = add nuw nsw i64 %indvars.iv.i110.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %packint.exit131, label %.lr.ph.split.i109.epil, !llvm.loop !58

packint.exit131:                                  ; preds = %packint.exit131.loopexit203.unr-lcssa, %.lr.ph.split.i109.epil, %packint.exit131.loopexit.unr-lcssa, %.lr.ph.split.us.i119.epil, %bb.ab
  %i.iu = load i64, ptr %i.k, align 16, !tbaa !21
  %i.iv = add i64 %i.iu, %i.gx
  store i64 %i.iv, ptr %i.k, align 16, !tbaa !21
  %i.iw = load i64, ptr %i.e, align 8, !tbaa !11
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef %i.gn, i64 noundef %i.iw) #12
  %i.ix = load i64, ptr %i.e, align 8, !tbaa !11
  %i.iy = add i64 %i.ix, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %bb.ak

bb.ac:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.iz = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull %i.f) #12 ; 2 uses
  %i.ja = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.iz) #13 ; 2 uses
  %i.jb = load i64, ptr %i.f, align 8, !tbaa !11
  %i.jc = icmp eq i64 %i.ja, %i.jb
  br i1 %i.jc, label %bb.ae, label %bb.ad, !prof !14

bb.ad:                                            ; preds = %bb.ac
  %i.jd = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull @.str.40) #12 ; 0 uses
  %.pre183 = load i64, ptr %i.f, align 8, !tbaa !11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.je = phi i64 [ %.pre183, %bb.ad ], [ %i.ja, %bb.ac ]
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef nonnull %i.iz, i64 noundef %i.je) #12
  %i.jf = load i64, ptr %i.k, align 16, !tbaa !21 ; 2 uses
  %i.jg = load i64, ptr %i.l, align 8, !tbaa !22
  %i.jh = icmp ult i64 %i.jf, %i.jg
  br i1 %i.jh, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ji = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 1) #12 ; 0 uses
  %.pre184 = load i64, ptr %i.k, align 16, !tbaa !21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.jj = phi i64 [ %.pre184, %bb.af ], [ %i.jf, %bb.ae ] ; 2 uses
  %i.jk = load ptr, ptr %1, align 16, !tbaa !23
  %i.jl = add i64 %i.jj, 1
  store i64 %i.jl, ptr %i.k, align 16, !tbaa !21
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jj
  store i8 0, ptr %i.jm, align 1, !tbaa !13
  %i.jn = load i64, ptr %i.f, align 8, !tbaa !11
  %i.jo = add i64 %i.t, 1
  %i.jp = add i64 %i.jo, %i.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %bb.ak

bb.ah:                                            ; preds = %._crit_edge
  %i.jq = load i64, ptr %i.k, align 16, !tbaa !21 ; 2 uses
  %i.jr = load i64, ptr %i.l, align 8, !tbaa !22
  %i.js = icmp ult i64 %i.jq, %i.jr
  br i1 %i.js, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jt = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 1) #12 ; 0 uses
  %.pre182 = load i64, ptr %i.k, align 16, !tbaa !21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ju = phi i64 [ %.pre182, %bb.ai ], [ %i.jq, %bb.ah ] ; 2 uses
  %i.jv = load ptr, ptr %1, align 16, !tbaa !23
  %i.jw = add i64 %i.ju, 1
  store i64 %i.jw, ptr %i.k, align 16, !tbaa !21
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.ju
  store i8 0, ptr %i.jx, align 1, !tbaa !13
  br label %bb.ak

default.unreachable196:                           ; preds = %._crit_edge
  unreachable

bb.ak:                                            ; preds = %._crit_edge, %._crit_edge, %bb.aj, %bb.ag, %packint.exit131, %bb.y, %copywithendian.exit106, %copywithendian.exit100, %copywithendian.exit, %packint.exit93, %packint.exit
  %.159 = phi i64 [ %i.jp, %bb.ag ], [ %i.t, %packint.exit ], [ %i.t, %packint.exit93 ], [ %i.t, %copywithendian.exit ], [ %i.t, %copywithendian.exit100 ], [ %i.t, %copywithendian.exit106 ], [ %i.t, %bb.y ], [ %i.iy, %packint.exit131 ], [ %i.t, %bb.aj ], [ %i.t, %._crit_edge ], [ %i.t, %._crit_edge ]
  %.1 = phi i32 [ %i.ad, %bb.ag ], [ %i.ad, %packint.exit ], [ %i.ad, %packint.exit93 ], [ %i.ad, %copywithendian.exit ], [ %i.ad, %copywithendian.exit100 ], [ %i.ad, %copywithendian.exit106 ], [ %i.ad, %bb.y ], [ %i.ad, %packint.exit131 ], [ %.0137, %bb.aj ], [ %.0137, %._crit_edge ], [ %.0137, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.jy = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !13
  %.not = icmp eq i8 %i.jz, 0
  br i1 %.not, label %._crit_edge140, label %bb.b

._crit_edge140:                                   ; preds = %bb.ak, %bb.a
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
end_hunk_0
begin_hunk_1_@str_unpack:bb.a
  store i32 1, ptr %i.r, align 4, !tbaa !50
  %i.s = load i8, ptr %i.e, align 1, !tbaa !13
  %.not6087 = icmp eq i8 %i.s, 0
  br i1 %.not6087, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.y
  %.089 = phi i32 [ %.1, %bb.y ], [ 0, %bb.e ]    ; 4 uses
  %.05888 = phi i64 [ %i.hd, %bb.y ], [ %i.o, %bb.e ] ; 3 uses
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
  %i.as = load i32, ptr %i.q, align 8, !tbaa !49
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.l, label %.preheader91

.preheader91:                                     ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !13
  %.7.insert.ext135 = zext i8 %i.av to i64
  %.7.insert.shift136 = shl nuw i64 %.7.insert.ext135, 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !13
  %.6.insert.ext130 = zext i8 %i.ax to i64
  %.6.insert.shift131 = shl nuw nsw i64 %.6.insert.ext130, 48
  %.6.insert.insert133 = or disjoint i64 %.7.insert.shift136, %.6.insert.shift131
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !13
  %.5.insert.ext125 = zext i8 %i.az to i64
  %.5.insert.shift126 = shl nuw nsw i64 %.5.insert.ext125, 40
  %.5.insert.insert128 = or disjoint i64 %.6.insert.insert133, %.5.insert.shift126
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.bb = load i8, ptr %i.ay, align 1, !tbaa !13
  %.4.insert.ext120 = zext i8 %i.bb to i64
  %.4.insert.shift121 = shl nuw nsw i64 %.4.insert.ext120, 32
  %.4.insert.insert123 = or disjoint i64 %.5.insert.insert128, %.4.insert.shift121
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 5
  %i.bd = load i8, ptr %i.ba, align 1, !tbaa !13
  %.3.insert.ext115 = zext i8 %i.bd to i64
  %.3.insert.shift116 = shl nuw nsw i64 %.3.insert.ext115, 24
  %.3.insert.insert118 = or disjoint i64 %.4.insert.insert123, %.3.insert.shift116
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  %i.bf = load i8, ptr %i.bc, align 1, !tbaa !13
  %.2.insert.ext110 = zext i8 %i.bf to i64
  %.2.insert.shift111 = shl nuw nsw i64 %.2.insert.ext110, 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 7
  %i.bh = load i8, ptr %i.be, align 1, !tbaa !13
  %.1.insert.ext105 = zext i8 %i.bh to i64
  %.1.insert.shift106 = shl nuw nsw i64 %.1.insert.ext105, 8
  %.1.insert.mask107 = or disjoint i64 %.3.insert.insert118, %.2.insert.shift111
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !13
  %.0.insert.ext101 = zext i8 %i.bi to i64
  %.0.insert.mask102 = or i64 %.1.insert.mask107, %.1.insert.shift106
  %.0.insert.insert103 = or i64 %.0.insert.mask102, %.0.insert.ext101
  %i.bj = bitcast i64 %.0.insert.insert103 to double
  br label %copywithendian.exit69

bb.l:                                             ; preds = %bb.k
  %i.bk = load double, ptr %i.ar, align 1
  br label %copywithendian.exit69

copywithendian.exit69:                            ; preds = %.preheader91, %bb.l
  %.0159 = phi double [ %i.bk, %bb.l ], [ %i.bj, %.preheader91 ]
  call void @lua_pushnumber(ptr noundef %0, double noundef %.0159) #12
  br label %bb.y

bb.m:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 9 uses
  %i.bm = load i32, ptr %i.q, align 8, !tbaa !49
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.n, label %.preheader92

.preheader92:                                     ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !13
  %.7.insert.ext = zext i8 %i.bp to i64
  %.7.insert.shift = shl nuw i64 %.7.insert.ext, 56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !13
  %.6.insert.ext = zext i8 %i.br to i64
  %.6.insert.shift = shl nuw nsw i64 %.6.insert.ext, 48
  %.6.insert.insert = or disjoint i64 %.7.insert.shift, %.6.insert.shift
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bt = load i8, ptr %i.bq, align 1, !tbaa !13
  %.5.insert.ext = zext i8 %i.bt to i64
  %.5.insert.shift = shl nuw nsw i64 %.5.insert.ext, 40
  %.5.insert.insert = or disjoint i64 %.6.insert.insert, %.5.insert.shift
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !13
  %.4.insert.ext = zext i8 %i.bv to i64
  %.4.insert.shift = shl nuw nsw i64 %.4.insert.ext, 32
  %.4.insert.insert = or disjoint i64 %.5.insert.insert, %.4.insert.shift
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 5
  %i.bx = load i8, ptr %i.bu, align 1, !tbaa !13
  %.3.insert.ext = zext i8 %i.bx to i64
  %.3.insert.shift = shl nuw nsw i64 %.3.insert.ext, 24
  %.3.insert.insert = or disjoint i64 %.4.insert.insert, %.3.insert.shift
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  %i.bz = load i8, ptr %i.bw, align 1, !tbaa !13
  %.2.insert.ext = zext i8 %i.bz to i64
  %.2.insert.shift = shl nuw nsw i64 %.2.insert.ext, 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 7
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !13
  %.1.insert.ext = zext i8 %i.cb to i64
  %.1.insert.shift = shl nuw nsw i64 %.1.insert.ext, 8
  %.1.insert.mask = or disjoint i64 %.3.insert.insert, %.2.insert.shift
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !13
  %.0.insert.ext = zext i8 %i.cc to i64
  %.0.insert.mask = or i64 %.1.insert.mask, %.1.insert.shift
  %.0.insert.insert = or i64 %.0.insert.mask, %.0.insert.ext
  %i.cd = bitcast i64 %.0.insert.insert to double
  br label %copywithendian.exit75

bb.n:                                             ; preds = %bb.m
  %i.ce = load double, ptr %i.bl, align 1
  br label %copywithendian.exit75

copywithendian.exit75:                            ; preds = %.preheader92, %bb.n
  %.0 = phi double [ %i.ce, %bb.n ], [ %i.cd, %.preheader92 ]
  call void @lua_pushnumber(ptr noundef %0, double noundef %.0) #12
  br label %bb.y

bb.o:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab
  %i.cg = call ptr @lua_pushlstring(ptr noundef %0, ptr noundef %i.cf, i64 noundef %i.w) #12 ; 0 uses
  br label %bb.y

bb.p:                                             ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 19 uses
  %i.ci = trunc i64 %i.w to i32                   ; 5 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i, label %unpackint.exit.thread

.lr.ph.i:                                         ; preds = %bb.p
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !49
  %.not41.i = icmp eq i32 %i.ck, 0
  %i.cl = and i64 %i.w, 2147483647                ; 17 uses
  %i.cm = call i64 @llvm.umin.i64(i64 %i.cl, i64 8) ; 9 uses
  br i1 %.not41.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.cn = sub nsw i64 %i.cl, %i.cm                ; 8 uses
  %i.co = getelementptr inbounds i8, ptr %i.ch, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !13
  %i.cq = zext i8 %i.cp to i64                    ; 2 uses
  %i.cr = icmp samesign ugt i64 %i.cl, 1
  br i1 %i.cr, label %.lr.ph.split.us.i.1, label %._crit_edge.i

.lr.ph.split.us.i.1:                              ; preds = %.lr.ph.split.us.i
  %i.cs = shl nuw nsw i64 %i.cq, 8
  %2 = getelementptr i8, ptr %i.ch, i64 %i.cn
  %i.ct = getelementptr i8, ptr %2, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !13
  %i.cv = zext i8 %i.cu to i64
  %i.cw = or disjoint i64 %i.cs, %i.cv            ; 2 uses
  %.not182 = icmp eq i64 %i.cl, 2
  br i1 %.not182, label %._crit_edge.i, label %.lr.ph.split.us.i.2

.lr.ph.split.us.i.2:                              ; preds = %.lr.ph.split.us.i.1
  %i.cx = shl nuw nsw i64 %i.cw, 8
  %3 = getelementptr i8, ptr %i.ch, i64 %i.cn
  %i.cy = getelementptr i8, ptr %3, i64 2
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !13
  %i.da = zext i8 %i.cz to i64
  %i.db = or disjoint i64 %i.cx, %i.da            ; 2 uses
  %i.dc = icmp samesign ugt i64 %i.cl, 3
  br i1 %i.dc, label %.lr.ph.split.us.i.3, label %._crit_edge.i

.lr.ph.split.us.i.3:                              ; preds = %.lr.ph.split.us.i.2
  %i.dd = shl nuw nsw i64 %i.db, 8
  %4 = getelementptr i8, ptr %i.ch, i64 %i.cn
  %i.de = getelementptr i8, ptr %4, i64 3
  %i.df = load i8, ptr %i.de, align 1, !tbaa !13
  %i.dg = zext i8 %i.df to i64
  %i.dh = or disjoint i64 %i.dd, %i.dg            ; 2 uses
  %.not183 = icmp eq i64 %i.cl, 4
  br i1 %.not183, label %._crit_edge.i, label %.lr.ph.split.us.i.4

.lr.ph.split.us.i.4:                              ; preds = %.lr.ph.split.us.i.3
  %i.di = shl i64 %i.dh, 8
  %5 = getelementptr i8, ptr %i.ch, i64 %i.cn
  %i.dj = getelementptr i8, ptr %5, i64 4
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !13
  %i.dl = zext i8 %i.dk to i64
  %i.dm = or disjoint i64 %i.di, %i.dl            ; 2 uses
  %i.dn = icmp samesign ugt i64 %i.cl, 5
  br i1 %i.dn, label %.lr.ph.split.us.i.5, label %._crit_edge.i

.lr.ph.split.us.i.5:                              ; preds = %.lr.ph.split.us.i.4
  %i.do = shl i64 %i.dm, 8
  %6 = getelementptr i8, ptr %i.ch, i64 %i.cn
  %i.dp = getelementptr i8, ptr %6, i64 5
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !13
  %i.dr = zext i8 %i.dq to i64
  %i.ds = or disjoint i64 %i.do, %i.dr            ; 2 uses
  %.not184 = icmp eq i64 %i.cl, 6
  br i1 %.not184, label %._crit_edge.i, label %.lr.ph.split.us.i.6

.lr.ph.split.us.i.6:                              ; preds = %.lr.ph.split.us.i.5
  %i.dt = shl i64 %i.ds, 8
  %7 = getelementptr i8, ptr %i.ch, i64 %i.cn
  %i.du = getelementptr i8, ptr %7, i64 6
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !13
  %i.dw = zext i8 %i.dv to i64
  %i.dx = or disjoint i64 %i.dt, %i.dw            ; 2 uses
  %i.dy = icmp samesign ugt i64 %i.cl, 7
  br i1 %i.dy, label %.lr.ph.split.us.i.7, label %._crit_edge.i

.lr.ph.split.us.i.7:                              ; preds = %.lr.ph.split.us.i.6
  %i.dz = shl i64 %i.dx, 8
  %8 = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cn
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 7
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !13
  %i.ec = zext i8 %i.eb to i64
  %i.ed = or disjoint i64 %i.dz, %i.ec
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ee = getelementptr i8, ptr %i.ch, i64 %i.cm
  %i.ef = getelementptr i8, ptr %i.ee, i64 -1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !13
  %i.eh = zext i8 %i.eg to i64                    ; 2 uses
  %i.ei = icmp samesign ugt i64 %i.cl, 1
  br i1 %i.ei, label %.lr.ph.split.i.1, label %._crit_edge.i.thread

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  %i.ej = shl nuw nsw i64 %i.eh, 8
  %i.ek = getelementptr i8, ptr %i.ch, i64 %i.cm
  %i.el = getelementptr i8, ptr %i.ek, i64 -2
  %i.em = load i8, ptr %i.el, align 1, !tbaa !13
  %i.en = zext i8 %i.em to i64
  %i.eo = or disjoint i64 %i.ej, %i.en            ; 2 uses
  %.not179 = icmp eq i64 %i.cl, 2
  br i1 %.not179, label %._crit_edge.i.thread, label %.lr.ph.split.i.2

.lr.ph.split.i.2:                                 ; preds = %.lr.ph.split.i.1
  %i.ep = shl nuw nsw i64 %i.eo, 8
  %i.eq = getelementptr i8, ptr %i.ch, i64 %i.cm
  %i.er = getelementptr i8, ptr %i.eq, i64 -3
  %i.es = load i8, ptr %i.er, align 1, !tbaa !13
  %i.et = zext i8 %i.es to i64
  %i.eu = or disjoint i64 %i.ep, %i.et            ; 2 uses
  %i.ev = icmp samesign ugt i64 %i.cl, 3
  br i1 %i.ev, label %.lr.ph.split.i.3, label %._crit_edge.i.thread

.lr.ph.split.i.3:                                 ; preds = %.lr.ph.split.i.2
  %i.ew = shl nuw nsw i64 %i.eu, 8
  %i.ex = getelementptr i8, ptr %i.ch, i64 %i.cm
  %i.ey = getelementptr i8, ptr %i.ex, i64 -4
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !13
  %i.fa = zext i8 %i.ez to i64
  %i.fb = or disjoint i64 %i.ew, %i.fa            ; 2 uses
  %.not180 = icmp eq i64 %i.cl, 4
  br i1 %.not180, label %._crit_edge.i.thread, label %.lr.ph.split.i.4

.lr.ph.split.i.4:                                 ; preds = %.lr.ph.split.i.3
  %i.fc = shl i64 %i.fb, 8
  %i.fd = getelementptr i8, ptr %i.ch, i64 %i.cm
  %i.fe = getelementptr i8, ptr %i.fd, i64 -5
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !13
  %i.fg = zext i8 %i.ff to i64
  %i.fh = or disjoint i64 %i.fc, %i.fg            ; 2 uses
  %i.fi = icmp samesign ugt i64 %i.cl, 5
  br i1 %i.fi, label %.lr.ph.split.i.5, label %._crit_edge.i.thread

.lr.ph.split.i.5:                                 ; preds = %.lr.ph.split.i.4
  %i.fj = shl i64 %i.fh, 8
  %i.fk = getelementptr i8, ptr %i.ch, i64 %i.cm
  %i.fl = getelementptr i8, ptr %i.fk, i64 -6
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !13
  %i.fn = zext i8 %i.fm to i64
  %i.fo = or disjoint i64 %i.fj, %i.fn            ; 2 uses
  %.not181 = icmp eq i64 %i.cl, 6
  br i1 %.not181, label %._crit_edge.i.thread, label %.lr.ph.split.i.6

.lr.ph.split.i.6:                                 ; preds = %.lr.ph.split.i.5
  %i.fp = shl i64 %i.fo, 8
  %i.fq = getelementptr i8, ptr %i.ch, i64 %i.cm
  %i.fr = getelementptr i8, ptr %i.fq, i64 -7
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !13
  %i.ft = zext i8 %i.fs to i64
  %i.fu = or disjoint i64 %i.fp, %i.ft            ; 2 uses
  %i.fv = icmp samesign ugt i64 %i.cl, 7
  br i1 %i.fv, label %.lr.ph.split.i.7, label %._crit_edge.i.thread

.lr.ph.split.i.7:                                 ; preds = %.lr.ph.split.i.6
  %i.fw = shl i64 %i.fu, 8
  %i.fx = getelementptr i8, ptr %i.ch, i64 %i.cm
  %i.fy = getelementptr i8, ptr %i.fx, i64 -8
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !13
  %i.ga = zext i8 %i.fz to i64
  %i.gb = or disjoint i64 %i.fw, %i.ga
  br label %._crit_edge.i.thread

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.i.7, %.lr.ph.split.us.i.6, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i
  %.lcssa177 = phi i64 [ %i.cq, %.lr.ph.split.us.i ], [ %i.cw, %.lr.ph.split.us.i.1 ], [ %i.db, %.lr.ph.split.us.i.2 ], [ %i.dh, %.lr.ph.split.us.i.3 ], [ %i.dm, %.lr.ph.split.us.i.4 ], [ %i.ds, %.lr.ph.split.us.i.5 ], [ %i.dx, %.lr.ph.split.us.i.6 ], [ %i.ed, %.lr.ph.split.us.i.7 ] ; 2 uses
  %i.gc = icmp samesign ult i32 %i.ci, 9
  br i1 %i.gc, label %unpackint.exit, label %.lr.ph46.split.us.i.preheader

._crit_edge.i.thread:                             ; preds = %.lr.ph.split.i.7, %.lr.ph.split.i.6, %.lr.ph.split.i.5, %.lr.ph.split.i.4, %.lr.ph.split.i.3, %.lr.ph.split.i.2, %.lr.ph.split.i.1, %.lr.ph.split.i
  %.lcssa = phi i64 [ %i.eh, %.lr.ph.split.i ], [ %i.eo, %.lr.ph.split.i.1 ], [ %i.eu, %.lr.ph.split.i.2 ], [ %i.fb, %.lr.ph.split.i.3 ], [ %i.fh, %.lr.ph.split.i.4 ], [ %i.fo, %.lr.ph.split.i.5 ], [ %i.fu, %.lr.ph.split.i.6 ], [ %i.gb, %.lr.ph.split.i.7 ] ; 2 uses
  %i.gd = icmp samesign ult i32 %i.ci, 9
  br i1 %i.gd, label %unpackint.exit, label %.lr.ph46.split.i.preheader

.lr.ph46.split.i.preheader:                       ; preds = %._crit_edge.i.thread
  %wide.trip.count = and i64 %i.w, 2147483647
  br label %.lr.ph46.split.i

.lr.ph46.split.us.i.preheader:                    ; preds = %._crit_edge.i
  %umax = call i64 @llvm.umax.i64(i64 %i.cl, i64 9)
  br label %.lr.ph46.split.us.i

.lr.ph46.split.us.i:                              ; preds = %.lr.ph46.split.us.i.preheader, %bb.r
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %bb.r ], [ 8, %.lr.ph46.split.us.i.preheader ] ; 2 uses
  %i.ge = xor i64 %indvars.iv57.i, -1
  %i.gf = add i64 %i.w, %i.ge
  %sext = shl i64 %i.gf, 32
  %i.gg = ashr exact i64 %sext, 32
  %i.gh = getelementptr inbounds i8, ptr %i.ch, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !13
  %.not39.us.i = icmp eq i8 %i.gi, 0
  br i1 %.not39.us.i, label %bb.r, label %bb.q, !prof !14

bb.q:                                             ; preds = %.lr.ph46.split.us.i
  %i.gj = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %i.ci) #12 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph46.split.us.i
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next58.i, %umax
  br i1 %exitcond98.not, label %unpackint.exit, label %.lr.ph46.split.us.i

.lr.ph46.split.i:                                 ; preds = %.lr.ph46.split.i.preheader, %bb.t
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %bb.t ], [ 8, %.lr.ph46.split.i.preheader ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ch, i64 %indvars.iv53.i
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !13
  %.not39.i = icmp eq i8 %i.gl, 0
  br i1 %.not39.i, label %bb.t, label %bb.s, !prof !14

bb.s:                                             ; preds = %.lr.ph46.split.i
  %i.gm = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %i.ci) #12 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph46.split.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count
  br i1 %exitcond.not, label %unpackint.exit, label %.lr.ph46.split.i

unpackint.exit:                                   ; preds = %bb.t, %bb.r, %._crit_edge.i.thread, %._crit_edge.i
  %.0.lcssa.i167 = phi i64 [ %.lcssa, %._crit_edge.i.thread ], [ %.lcssa177, %bb.r ], [ %.lcssa177, %._crit_edge.i ], [ %.lcssa, %bb.t ] ; 3 uses
  %i.gn = load i64, ptr %i.b, align 8, !tbaa !11
  %i.go = add i64 %i.ab, %i.w
  %i.gp = sub i64 %i.gn, %i.go
  %.not62 = icmp ugt i64 %.0.lcssa.i167, %i.gp
  br i1 %.not62, label %bb.u, label %unpackint.exit.thread, !prof !60

bb.u:                                             ; preds = %unpackint.exit
  %i.gq = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.72) #12 ; 0 uses
  br label %unpackint.exit.thread

unpackint.exit.thread:                            ; preds = %bb.p, %bb.u, %unpackint.exit
  %.1.i79 = phi i64 [ %.0.lcssa.i167, %unpackint.exit ], [ %.0.lcssa.i167, %bb.u ], [ 0, %bb.p ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.w
  %i.gs = call ptr @lua_pushlstring(ptr noundef %0, ptr noundef %i.gr, i64 noundef %.1.i79) #12 ; 0 uses
  %i.gt = add i64 %.1.i79, %i.ab
  br label %bb.y

bb.v:                                             ; preds = %bb.g
  %i.gu = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 2 uses
  %i.gv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gu) #13 ; 3 uses
  %i.gw = add i64 %i.gv, %i.ab
  %i.gx = load i64, ptr %i.b, align 8, !tbaa !11
  %i.gy = icmp ult i64 %i.gw, %i.gx
  br i1 %i.gy, label %bb.x, label %bb.w, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.gz = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.74) #12 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ha = call ptr @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.gu, i64 noundef %i.gv) #12 ; 0 uses
  %i.hb = add i64 %i.ab, 1
  %i.hc = add i64 %i.hb, %i.gv
  br label %bb.y

default.unreachable164:                           ; preds = %bb.g
  unreachable

bb.y:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.x, %unpackint.exit.thread, %bb.o, %copywithendian.exit75, %copywithendian.exit69, %copywithendian.exit, %bb.h
  %.159 = phi i64 [ %i.hc, %bb.x ], [ %i.ab, %bb.h ], [ %i.ab, %copywithendian.exit ], [ %i.ab, %copywithendian.exit69 ], [ %i.ab, %copywithendian.exit75 ], [ %i.ab, %bb.o ], [ %i.gt, %unpackint.exit.thread ], [ %i.ab, %bb.g ], [ %i.ab, %bb.g ], [ %i.ab, %bb.g ]
  %.1 = phi i32 [ %i.ac, %bb.x ], [ %i.ac, %bb.h ], [ %i.ac, %copywithendian.exit ], [ %i.ac, %copywithendian.exit69 ], [ %i.ac, %copywithendian.exit75 ], [ %i.ac, %bb.o ], [ %i.ac, %unpackint.exit.thread ], [ %.089, %bb.g ], [ %.089, %bb.g ], [ %.089, %bb.g ] ; 2 uses
  %i.hd = add i64 %.159, %i.w                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.he = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !13
  %.not60 = icmp eq i8 %i.hf, 0
  br i1 %.not60, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.y
  %i.hg = add nsw i64 %i.hd, 1
  %i.hh = add nsw i32 %.1, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.058.lcssa = phi i64 [ %.0.i, %bb.e ], [ %i.hg, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 1, %bb.e ], [ %i.hh, %._crit_edge.loopexit ]
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %.058.lcssa) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i32 %.0.lcssa
end_hunk_1
begin_hunk_2_@getoption:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 3 uses
  store ptr %i.ag, ptr %1, align 8, !tbaa !46
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ai = sext i8 %i.ah to i64
  %i.aj = add nsw i64 %i.ai, 4294967248
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = add nuw i64 %i.ak, %i.af                ; 5 uses
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.an = sext i8 %i.am to i32
  %i.ao = add nsw i32 %i.an, -48
  %i.ap = icmp ult i32 %i.ao, 10
  %i.aq = icmp ult i64 %i.al, 922337203685477580
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.preheader.i.i37, label %getnum.exit.i39

getnum.exit.i39:                                  ; preds = %.preheader.i.i37
  %i.as = add i64 %i.al, -17
  %i.at = icmp ult i64 %i.as, -16
  br i1 %i.at, label %bb.q, label %getnumlimit.exit42, !prof !70

bb.q:                                             ; preds = %getnum.exit.i39
  %i.au = load ptr, ptr %0, align 8, !tbaa !48
  %i.av = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.au, ptr noundef nonnull @.str.68, i64 noundef %i.al, i32 noundef 16) #12
  %i.aw = zext i32 %i.av to i64
  br label %getnumlimit.exit42

getnumlimit.exit42:                               ; preds = %getnum.exit.i39, %bb.p, %bb.q
  %.0.i41 = phi i64 [ %i.aw, %bb.q ], [ %i.al, %getnum.exit.i39 ], [ 4, %bb.p ]
  store i64 %.0.i41, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.r:                                             ; preds = %bb.a
  %i.ax = load i8, ptr %i.b, align 1, !tbaa !13
  %i.ay = sext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -58
  %i.ba = icmp ult i32 %i.az, -10
  br i1 %i.ba, label %getnumlimit.exit48, label %.preheader.i.i43

.preheader.i.i43:                                 ; preds = %bb.r, %.preheader.i.i43
  %i.bb = phi ptr [ %i.bd, %.preheader.i.i43 ], [ %i.b, %bb.r ] ; 2 uses
  %.0.i.i44 = phi i64 [ %i.bi, %.preheader.i.i43 ], [ 0, %bb.r ]
  %i.bc = mul nuw nsw i64 %.0.i.i44, 10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 3 uses
  store ptr %i.bd, ptr %1, align 8, !tbaa !46
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bf = sext i8 %i.be to i64
  %i.bg = add nsw i64 %i.bf, 4294967248
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = add nuw i64 %i.bh, %i.bc                ; 5 uses
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !13
  %i.bk = sext i8 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -48
  %i.bm = icmp ult i32 %i.bl, 10
  %i.bn = icmp ult i64 %i.bi, 922337203685477580
  %i.bo = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %i.bo, label %.preheader.i.i43, label %getnum.exit.i45

getnum.exit.i45:                                  ; preds = %.preheader.i.i43
  %i.bp = add i64 %i.bi, -17
  %i.bq = icmp ult i64 %i.bp, -16
  br i1 %i.bq, label %bb.s, label %getnumlimit.exit48, !prof !70

bb.s:                                             ; preds = %getnum.exit.i45
  %i.br = load ptr, ptr %0, align 8, !tbaa !48
  %i.bs = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.br, ptr noundef nonnull @.str.68, i64 noundef %i.bi, i32 noundef 16) #12
  %i.bt = zext i32 %i.bs to i64
  br label %getnumlimit.exit48

getnumlimit.exit48:                               ; preds = %getnum.exit.i45, %bb.r, %bb.s
  %.0.i47 = phi i64 [ %i.bt, %bb.s ], [ %i.bi, %getnum.exit.i45 ], [ 8, %bb.r ]
  store i64 %.0.i47, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.t:                                             ; preds = %bb.a
  %i.bu = load i8, ptr %i.b, align 1, !tbaa !13
  %i.bv = sext i8 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -58
  %i.bx = icmp ult i32 %i.bw, -10
  br i1 %i.bx, label %bb.u, label %.preheader.i

.preheader.i:                                     ; preds = %bb.t, %.preheader.i
  %i.by = phi ptr [ %i.ca, %.preheader.i ], [ %i.b, %bb.t ] ; 2 uses
  %.0.i49 = phi i64 [ %i.cf, %.preheader.i ], [ 0, %bb.t ]
  %i.bz = mul nuw nsw i64 %.0.i49, 10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 3 uses
  store ptr %i.ca, ptr %1, align 8, !tbaa !46
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !13
  %i.cc = sext i8 %i.cb to i64
  %i.cd = add nsw i64 %i.cc, 4294967248
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = add nuw i64 %i.ce, %i.bz                ; 3 uses
  %i.cg = load i8, ptr %i.ca, align 1, !tbaa !13
  %i.ch = sext i8 %i.cg to i32
  %i.ci = add nsw i32 %i.ch, -48
  %i.cj = icmp ult i32 %i.ci, 10
  %i.ck = icmp ult i64 %i.cf, 922337203685477580
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %.preheader.i, label %getnum.exit

getnum.exit:                                      ; preds = %.preheader.i
  store i64 %i.cf, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.u:                                             ; preds = %bb.t
  store i64 -1, ptr %2, align 8, !tbaa !11
  %i.cm = load ptr, ptr %0, align 8, !tbaa !48
  %i.cn = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.cm, ptr noundef nonnull @.str.66) #12 ; 0 uses
  br label %bb.ae

bb.v:                                             ; preds = %bb.a
  store i64 1, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.w:                                             ; preds = %bb.a
  br label %bb.ae

bb.x:                                             ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.co, align 8, !tbaa !49
  br label %bb.ad

bb.y:                                             ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.cp, align 8, !tbaa !49
  br label %bb.ad

bb.z:                                             ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.cq, align 8, !tbaa !49
  br label %bb.ad

bb.aa:                                            ; preds = %bb.a
  %i.cr = load i8, ptr %i.b, align 1, !tbaa !13
  %i.cs = sext i8 %i.cr to i32
  %i.ct = add nsw i32 %i.cs, -58
  %i.cu = icmp ult i32 %i.ct, -10
  br i1 %i.cu, label %getnum.exit.i52.thread, label %.preheader.i.i50

.preheader.i.i50:                                 ; preds = %bb.aa, %.preheader.i.i50
  %i.cv = phi ptr [ %i.cx, %.preheader.i.i50 ], [ %i.b, %bb.aa ] ; 2 uses
  %.0.i.i51 = phi i64 [ %i.dc, %.preheader.i.i50 ], [ 0, %bb.aa ]
  %i.cw = mul nuw nsw i64 %.0.i.i51, 10
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 1 ; 3 uses
  store ptr %i.cx, ptr %1, align 8, !tbaa !46
  %i.cy = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.cz = sext i8 %i.cy to i64
  %i.da = add nsw i64 %i.cz, 4294967248
  %i.db = and i64 %i.da, 4294967295
  %i.dc = add nuw i64 %i.db, %i.cw                ; 5 uses
  %i.dd = load i8, ptr %i.cx, align 1, !tbaa !13
  %i.de = sext i8 %i.dd to i32
  %i.df = add nsw i32 %i.de, -48
  %i.dg = icmp ult i32 %i.df, 10
  %i.dh = icmp ult i64 %i.dc, 922337203685477580
  %i.di = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %i.di, label %.preheader.i.i50, label %getnum.exit.i52

getnum.exit.i52:                                  ; preds = %.preheader.i.i50
  %i.dj = add i64 %i.dc, -17
  %i.dk = icmp ult i64 %i.dj, -16
  br i1 %i.dk, label %bb.ab, label %getnum.exit.i52.thread, !prof !70

bb.ab:                                            ; preds = %getnum.exit.i52
  %i.dl = load ptr, ptr %0, align 8, !tbaa !48
  %i.dm = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.dl, ptr noundef nonnull @.str.68, i64 noundef %i.dc, i32 noundef 16) #12
  br label %getnumlimit.exit55

getnum.exit.i52.thread:                           ; preds = %bb.aa, %getnum.exit.i52
  %.07.i.i5364 = phi i64 [ %i.dc, %getnum.exit.i52 ], [ 16, %bb.aa ]
  %i.dn = trunc nuw nsw i64 %.07.i.i5364 to i32
  br label %getnumlimit.exit55

getnumlimit.exit55:                               ; preds = %bb.ab, %getnum.exit.i52.thread
  %.0.i54 = phi i32 [ %i.dm, %bb.ab ], [ %i.dn, %getnum.exit.i52.thread ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0.i54, ptr %i.do, align 4, !tbaa !50
  br label %bb.ad

bb.ac:                                            ; preds = %bb.a
  %i.dp = sext i8 %i.c to i32
  %i.dq = load ptr, ptr %0, align 8, !tbaa !48
  %i.dr = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.dq, ptr noundef nonnull @.str.67, i32 noundef %i.dp) #12 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %getnumlimit.exit55, %bb.z, %bb.y, %bb.x, %bb.a
  br label %bb.ae

bb.ae:                                            ; preds = %getnum.exit, %bb.a, %bb.u, %bb.ad, %bb.w, %bb.v, %getnumlimit.exit48, %getnumlimit.exit42, %getnumlimit.exit, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 10, %bb.ad ], [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 2, %bb.k ], [ 3, %bb.l ], [ 4, %bb.m ], [ 0, %getnumlimit.exit ], [ 1, %getnumlimit.exit42 ], [ 6, %getnumlimit.exit48 ], [ 9, %bb.w ], [ 5, %getnum.exit ], [ 8, %bb.v ], [ 5, %bb.u ], [ 7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @unpackint(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %.not41 = icmp eq i32 %2, 0
  %i.b = zext nneg i32 %3 to i64                  ; 2 uses
  %i.c = tail call i64 @llvm.umin.i64(i64 %i.b, i64 8) ; 9 uses
  br i1 %.not41, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.d = sub nsw i64 %i.b, %i.c                   ; 8 uses
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i64                      ; 2 uses
  %.not75 = icmp eq i32 %3, 1
  br i1 %.not75, label %._crit_edge, label %.lr.ph.split.us.1

.lr.ph.split.us.1:                                ; preds = %.lr.ph.split.us
  %i.h = shl nuw nsw i64 %i.g, 8
  %5 = getelementptr i8, ptr %1, i64 %i.d
  %i.i = getelementptr i8, ptr %5, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i64
  %i.l = or disjoint i64 %i.h, %i.k               ; 2 uses
  %i.m = icmp ugt i32 %3, 2
  br i1 %i.m, label %.lr.ph.split.us.2, label %._crit_edge

.lr.ph.split.us.2:                                ; preds = %.lr.ph.split.us.1
  %i.n = shl nuw nsw i64 %i.l, 8
  %6 = getelementptr i8, ptr %1, i64 %i.d
  %i.o = getelementptr i8, ptr %6, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = zext i8 %i.p to i64
  %i.r = or disjoint i64 %i.n, %i.q               ; 2 uses
  %.not76 = icmp eq i32 %3, 3
  br i1 %.not76, label %._crit_edge, label %.lr.ph.split.us.3

.lr.ph.split.us.3:                                ; preds = %.lr.ph.split.us.2
  %i.s = shl nuw nsw i64 %i.r, 8
  %7 = getelementptr i8, ptr %1, i64 %i.d
  %i.t = getelementptr i8, ptr %7, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = zext i8 %i.u to i64
  %i.w = or disjoint i64 %i.s, %i.v               ; 2 uses
  %i.x = icmp ugt i32 %3, 4
  br i1 %i.x, label %.lr.ph.split.us.4, label %._crit_edge

.lr.ph.split.us.4:                                ; preds = %.lr.ph.split.us.3
  %i.y = shl i64 %i.w, 8
  %8 = getelementptr i8, ptr %1, i64 %i.d
  %i.z = getelementptr i8, ptr %8, i64 4
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = zext i8 %i.aa to i64
  %i.ac = or disjoint i64 %i.y, %i.ab             ; 2 uses
  %.not77 = icmp eq i32 %3, 5
  br i1 %.not77, label %._crit_edge, label %.lr.ph.split.us.5

.lr.ph.split.us.5:                                ; preds = %.lr.ph.split.us.4
  %i.ad = shl i64 %i.ac, 8
  %9 = getelementptr i8, ptr %1, i64 %i.d
  %i.ae = getelementptr i8, ptr %9, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ag = zext i8 %i.af to i64
  %i.ah = or disjoint i64 %i.ad, %i.ag            ; 2 uses
  %i.ai = icmp ugt i32 %3, 6
  br i1 %i.ai, label %.lr.ph.split.us.6, label %._crit_edge

.lr.ph.split.us.6:                                ; preds = %.lr.ph.split.us.5
  %i.aj = shl i64 %i.ah, 8
  %10 = getelementptr i8, ptr %1, i64 %i.d
  %i.ak = getelementptr i8, ptr %10, i64 6
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %i.am = zext i8 %i.al to i64
  %i.an = or disjoint i64 %i.aj, %i.am            ; 2 uses
  %.not78 = icmp eq i32 %3, 7
  br i1 %.not78, label %._crit_edge, label %.lr.ph.split.us.7

.lr.ph.split.us.7:                                ; preds = %.lr.ph.split.us.6
  %i.ao = shl i64 %i.an, 8
  %11 = getelementptr i8, ptr %1, i64 %i.d
  %i.ap = getelementptr i8, ptr %11, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.ao, %i.ar
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.at = getelementptr i8, ptr %1, i64 %i.c
  %i.au = getelementptr i8, ptr %i.at, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13
  %i.aw = zext i8 %i.av to i64                    ; 2 uses
  %.not71 = icmp eq i32 %3, 1
  br i1 %.not71, label %._crit_edge, label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %.lr.ph.split
  %i.ax = shl nuw nsw i64 %i.aw, 8
  %i.ay = getelementptr i8, ptr %1, i64 %i.c
  %i.az = getelementptr i8, ptr %i.ay, i64 -2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = zext i8 %i.ba to i64
  %i.bc = or disjoint i64 %i.ax, %i.bb            ; 2 uses
  %i.bd = icmp ugt i32 %3, 2
  br i1 %i.bd, label %.lr.ph.split.2, label %._crit_edge

.lr.ph.split.2:                                   ; preds = %.lr.ph.split.1
  %i.be = shl nuw nsw i64 %i.bc, 8
  %i.bf = getelementptr i8, ptr %1, i64 %i.c
  %i.bg = getelementptr i8, ptr %i.bf, i64 -3
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.bi = zext i8 %i.bh to i64
  %i.bj = or disjoint i64 %i.be, %i.bi            ; 2 uses
  %.not72 = icmp eq i32 %3, 3
  br i1 %.not72, label %._crit_edge, label %.lr.ph.split.3

.lr.ph.split.3:                                   ; preds = %.lr.ph.split.2
  %i.bk = shl nuw nsw i64 %i.bj, 8
  %i.bl = getelementptr i8, ptr %1, i64 %i.c
  %i.bm = getelementptr i8, ptr %i.bl, i64 -4
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = zext i8 %i.bn to i64
  %i.bp = or disjoint i64 %i.bk, %i.bo            ; 2 uses
  %i.bq = icmp ugt i32 %3, 4
  br i1 %i.bq, label %.lr.ph.split.4, label %._crit_edge

.lr.ph.split.4:                                   ; preds = %.lr.ph.split.3
  %i.br = shl i64 %i.bp, 8
  %i.bs = getelementptr i8, ptr %1, i64 %i.c
  %i.bt = getelementptr i8, ptr %i.bs, i64 -5
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %i.bv = zext i8 %i.bu to i64
  %i.bw = or disjoint i64 %i.br, %i.bv            ; 2 uses
  %.not73 = icmp eq i32 %3, 5
  br i1 %.not73, label %._crit_edge, label %.lr.ph.split.5

.lr.ph.split.5:                                   ; preds = %.lr.ph.split.4
  %i.bx = shl i64 %i.bw, 8
  %i.by = getelementptr i8, ptr %1, i64 %i.c
  %i.bz = getelementptr i8, ptr %i.by, i64 -6
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cb = zext i8 %i.ca to i64
  %i.cc = or disjoint i64 %i.bx, %i.cb            ; 2 uses
  %i.cd = icmp ugt i32 %3, 6
  br i1 %i.cd, label %.lr.ph.split.6, label %._crit_edge

.lr.ph.split.6:                                   ; preds = %.lr.ph.split.5
  %i.ce = shl i64 %i.cc, 8
  %i.cf = getelementptr i8, ptr %1, i64 %i.c
  %i.cg = getelementptr i8, ptr %i.cf, i64 -7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !13
  %i.ci = zext i8 %i.ch to i64
  %i.cj = or disjoint i64 %i.ce, %i.ci            ; 2 uses
  %.not74 = icmp eq i32 %3, 7
  br i1 %.not74, label %._crit_edge, label %.lr.ph.split.7

.lr.ph.split.7:                                   ; preds = %.lr.ph.split.6
  %i.ck = shl i64 %i.cj, 8
  %i.cl = getelementptr i8, ptr %1, i64 %i.c
  %i.cm = getelementptr i8, ptr %i.cl, i64 -8
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %i.co = zext i8 %i.cn to i64
  %i.cp = or disjoint i64 %i.ck, %i.co
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.1, %.lr.ph.split.2, %.lr.ph.split.3, %.lr.ph.split.4, %.lr.ph.split.5, %.lr.ph.split.6, %.lr.ph.split.7, %.lr.ph.split.us, %.lr.ph.split.us.1, %.lr.ph.split.us.2, %.lr.ph.split.us.3, %.lr.ph.split.us.4, %.lr.ph.split.us.5, %.lr.ph.split.us.6, %.lr.ph.split.us.7
  %.0.lcssa = phi i64 [ %i.as, %.lr.ph.split.us.7 ], [ %i.g, %.lr.ph.split.us ], [ %i.l, %.lr.ph.split.us.1 ], [ %i.r, %.lr.ph.split.us.2 ], [ %i.w, %.lr.ph.split.us.3 ], [ %i.ac, %.lr.ph.split.us.4 ], [ %i.ah, %.lr.ph.split.us.5 ], [ %i.an, %.lr.ph.split.us.6 ], [ %i.aw, %.lr.ph.split ], [ %i.bc, %.lr.ph.split.1 ], [ %i.bj, %.lr.ph.split.2 ], [ %i.bp, %.lr.ph.split.3 ], [ %i.bw, %.lr.ph.split.4 ], [ %i.cc, %.lr.ph.split.5 ], [ %i.cj, %.lr.ph.split.6 ], [ %i.cp, %.lr.ph.split.7 ] ; 5 uses
  %i.cq = icmp samesign ult i32 %3, 8
  br i1 %i.cq, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0.lcssa61 = phi i64 [ %.0.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.not40 = icmp eq i32 %4, 0
  br i1 %.not40, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread
  %i.cr = shl nsw i32 %3, 3
  %i.cs = add nsw i32 %i.cr, -1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = shl nuw i64 1, %i.ct                    ; 2 uses
  %i.cv = xor i64 %.0.lcssa61, %i.cu
  %i.cw = sub i64 %i.cv, %i.cu
  br label %.loopexit

bb.c:                                             ; preds = %._crit_edge
  %.not = icmp eq i32 %3, 8
  br i1 %.not, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.c
  %.not37 = icmp eq i32 %4, 0
  %i.cx = icmp sgt i64 %.0.lcssa, -1
  %i.cy = select i1 %.not37, i1 true, i1 %i.cx
  %i.cz = select i1 %i.cy, i32 0, i32 255         ; 2 uses
  %.not38 = icmp eq i32 %2, 0
  br i1 %.not38, label %.lr.ph46.split.us.preheader, label %.lr.ph46.split

.lr.ph46.split.us.preheader:                      ; preds = %.lr.ph46
  %i.da = zext nneg i32 %3 to i64
  br label %.lr.ph46.split.us

.lr.ph46.split.us:                                ; preds = %.lr.ph46.split.us.preheader, %bb.e
  %indvars.iv57 = phi i64 [ 8, %.lr.ph46.split.us.preheader ], [ %indvars.iv.next58, %bb.e ] ; 2 uses
  %i.db = trunc nsw i64 %indvars.iv57 to i32
  %i.dc = xor i32 %i.db, -1
  %i.dd = add nsw i32 %3, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %1, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13
  %i.dh = zext i8 %i.dg to i32
  %.not39.us = icmp eq i32 %i.cz, %i.dh
  br i1 %.not39.us, label %bb.e, label %bb.d, !prof !14

bb.d:                                             ; preds = %.lr.ph46.split.us
  %i.di = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %3) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph46.split.us, %bb.d
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.dj = icmp samesign ult i64 %indvars.iv.next58, %i.da
  br i1 %i.dj, label %.lr.ph46.split.us, label %.loopexit

.lr.ph46.split:                                   ; preds = %.lr.ph46, %bb.g
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %bb.g ], [ 8, %.lr.ph46 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv53
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !13
  %i.dm = zext i8 %i.dl to i32
  %.not39 = icmp eq i32 %i.cz, %i.dm
  br i1 %.not39, label %bb.g, label %bb.f, !prof !14

bb.f:                                             ; preds = %.lr.ph46.split
  %i.dn = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %3) #12 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph46.split, %bb.f
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.do = trunc nuw i64 %indvars.iv.next54 to i32
  %i.dp = icmp sgt i32 %3, %i.do
  br i1 %i.dp, label %.lr.ph46.split, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.c, %._crit_edge.thread, %bb.b
  %.1 = phi i64 [ %i.cw, %bb.b ], [ %.0.lcssa61, %._crit_edge.thread ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %bb.g ]
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
end_hunk_2
