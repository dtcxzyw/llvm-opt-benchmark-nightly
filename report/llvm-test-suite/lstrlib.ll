inline.NumInlined: 39
inline.NumDeleted: 21
begin_hunk_0_@lua_getfield
declare void @lua_getfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @str_byte(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #10
  %i.c = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 2, i64 noundef 1) #10 ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !8
  %i.e = icmp slt i64 %i.c, 0
  %i.f = add nsw i64 %i.d, 1
  %i.g = select i1 %i.e, i64 %i.f, i64 0
  %.0.i = add nsw i64 %i.g, %i.c                  ; 2 uses
  %i.h = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %.0.i, i64 0)
  %i.i = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef %i.h) #10 ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.k = icmp slt i64 %i.i, 0
  %i.l = add nsw i64 %i.j, 1
  %i.m = select i1 %i.k, i64 %i.l, i64 0
  %.0.i29 = add nsw i64 %i.m, %i.i
  %i.n = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %.0.i29, i64 0)
  %i.o = call i64 @llvm.smax.i64(i64 %.0.i, i64 1) ; 4 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %i.n, i64 %i.j) ; 3 uses
  %i.p = icmp samesign ugt i64 %i.o, %spec.select
  br i1 %i.p, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = sub nuw nsw i64 %spec.select, %i.o
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = add i32 %i.r, 1                          ; 5 uses
  %i.t = sext i32 %i.s to i64
  %i.u = add nsw i64 %i.o, %i.t
  %.not = icmp sgt i64 %i.u, %spec.select
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.16) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @luaL_checkstack(ptr noundef %0, i32 noundef %i.s, ptr noundef nonnull @.str.16) #10
  %i.w = icmp ult i32 %i.r, 2147483647
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.x = getelementptr i8, ptr %i.b, i64 %i.o
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 %indvars.iv
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ab = zext i8 %i.aa to i64
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ab) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !11

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.a
  %.024 = phi i32 [ 0, %bb.a ], [ %i.s, %bb.d ], [ %i.s, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.024
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @str_char(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.luaL_Buffer, align 8        ; 9 uses
  %i.a = tail call i32 @lua_gettop(ptr noundef %0) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %1) #10
  %.not11 = icmp slt i32 %i.a, 1
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8216
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.012 = phi i32 [ 1, %.lr.ph ], [ %i.m, %bb.f ] ; 4 uses
  %i.c = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef %.012) #10 ; 2 uses
  %i.d = trunc i64 %i.c to i8
  %i.e = and i64 %i.c, 4294967040
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %.012, ptr noundef nonnull @.str.17) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #10 ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi ptr [ %.pre, %bb.e ], [ %i.h, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.l, ptr %1, align 8, !tbaa !13
  store i8 %i.d, ptr %i.k, align 1, !tbaa !10
  %i.m = add nuw i32 %.012, 1
  %exitcond.not = icmp eq i32 %.012, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.f, %bb.a
  call void @luaL_pushresult(ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @str_dump(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.luaL_Buffer, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 1, i32 noundef 6) #10
  tail call void @lua_settop(ptr noundef %0, i32 noundef 1) #10
  call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %1) #10
  %i.a = call i32 @lua_dump(ptr noundef %0, ptr noundef nonnull @writer, ptr noundef nonnull %1) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.18) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @luaL_pushresult(ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_find(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i32 @str_find_aux(ptr noundef %0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @str_format(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.luaL_Buffer, align 8        ; 37 uses
  %i.c = alloca [18 x i8], align 16               ; 16 uses
  %i.d = alloca [512 x i8], align 16              ; 11 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.f = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.b) #10 ; 2 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %1) #10
  %.not54 = icmp eq i64 %i.g, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8216 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.03653 = phi i32 [ 1, %.lr.ph ], [ %.036.be, %.backedge ] ; 3 uses
  %.03852 = phi ptr [ %i.f, %.lr.ph ], [ %.038.be, %.backedge ] ; 5 uses
  %i.k = load i8, ptr %.03852, align 1, !tbaa !10 ; 2 uses
  %.not = icmp eq i8 %i.k, 37
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.i
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #10 ; 0 uses
  %.pre = load i8, ptr %.03852, align 1, !tbaa !10
  %.pre55 = load ptr, ptr %1, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi ptr [ %.pre55, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.p = phi i8 [ %.pre, %bb.d ], [ %i.k, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %.03852, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.r, ptr %1, align 8, !tbaa !13
  store i8 %i.p, ptr %i.o, align 1, !tbaa !10
  br label %.backedge

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.03852, i64 1 ; 7 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !10
  %i.u = icmp eq i8 %i.t, 37
  br i1 %i.u, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.w = icmp ult ptr %i.v, %i.i
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #10 ; 0 uses
  %.pre56 = load i8, ptr %i.s, align 1, !tbaa !10
  %.pre57 = load ptr, ptr %1, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = phi ptr [ %.pre57, %bb.h ], [ %i.v, %bb.g ] ; 2 uses
  %i.z = phi i8 [ %.pre56, %bb.h ], [ 37, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.03852, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.ab, ptr %1, align 8, !tbaa !13
  store i8 %i.z, ptr %i.y, align 1, !tbaa !10
  br label %.backedge

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.ac = add nsw i32 %.03653, 1                  ; 9 uses
  %2 = load i8, ptr %i.s, align 1, !tbaa !10      ; 2 uses
  %.not41.i = icmp eq i8 %2, 0
  br i1 %.not41.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %i.ad = phi i8 [ %i.ai, %bb.k ], [ %2, %bb.j ]  ; 3 uses
  %.042.i = phi ptr [ %i.ah, %bb.k ], [ %i.s, %bb.j ] ; 2 uses
  %i.ae = zext nneg i8 %i.ad to i64
  %memchr.bounds.i = icmp ugt i8 %i.ad, 63
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = and i64 %i.af, 325494096527361
  %memchr.bits.i = icmp eq i64 %i.ag, 0
  %memchr30.not.i = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr30.not.i, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.042.i, i64 1 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !10  ; 2 uses
  %.not.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !19

.critedge.i:                                      ; preds = %bb.k, %.lr.ph.i, %bb.j
  %i.aj = phi i8 [ 0, %bb.j ], [ %i.ad, %.lr.ph.i ], [ 0, %bb.k ]
  %.0.lcssa.i = phi ptr [ %i.s, %bb.j ], [ %.042.i, %.lr.ph.i ], [ %i.ah, %bb.k ] ; 3 uses
  %i.ak = ptrtoint ptr %.0.lcssa.i to i64
  %i.al = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ugt i64 %i.am, 5
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge.i
  %i.ao = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.30) #10 ; 0 uses
  %.pre.i = load i8, ptr %.0.lcssa.i, align 1, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge.i
  %i.ap = phi i8 [ %.pre.i, %bb.l ], [ %i.aj, %.critedge.i ]
  %i.aq = tail call ptr @__ctype_b_loc() #11
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20 ; 5 uses
  %i.as = zext i8 %i.ap to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !22
  %i.av = lshr i16 %i.au, 11
  %.lobit.i = and i16 %i.av, 1
  %spec.select.idx.i = zext nneg i16 %.lobit.i to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %spec.select.idx.i ; 2 uses
  %i.aw = load i8, ptr %spec.select.i, align 1, !tbaa !10
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !22
  %i.ba = lshr i16 %i.az, 11
  %.lobit39.i = and i16 %i.ba, 1
  %.2.idx.i = zext nneg i16 %.lobit39.i to i64
  %.2.i = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %.2.idx.i ; 4 uses
  %i.bb = load i8, ptr %.2.i, align 1, !tbaa !10  ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 46
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %.2.i, i64 1 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !10
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !22
  %i.bi = and i16 %i.bh, 2048
  %.not34.i = icmp eq i16 %i.bi, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  %spec.select37.i = select i1 %.not34.i, ptr %i.bd, ptr %i.bj ; 2 uses
  %i.bk = load i8, ptr %spec.select37.i, align 1, !tbaa !10
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !22
  %i.bo = lshr i16 %i.bn, 11
  %.lobit40.i = and i16 %i.bo, 1
  %spec.select38.idx.i = zext nneg i16 %.lobit40.i to i64
  %spec.select38.i = getelementptr inbounds nuw i8, ptr %spec.select37.i, i64 %spec.select38.idx.i ; 2 uses
  %.pre45.i = load i8, ptr %spec.select38.i, align 1, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bp = phi i8 [ %i.bb, %bb.m ], [ %.pre45.i, %bb.n ]
  %.4.i = phi ptr [ %.2.i, %bb.m ], [ %spec.select38.i, %bb.n ] ; 3 uses
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !22
  %i.bt = and i16 %i.bs, 2048
  %.not36.i = icmp eq i16 %i.bt, 0
  br i1 %.not36.i, label %scanformat.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.31) #10 ; 0 uses
  br label %scanformat.exit

scanformat.exit:                                  ; preds = %bb.o, %bb.p
  store i8 37, ptr %i.c, align 16, !tbaa !10
  %i.bv = ptrtoint ptr %.4.i to i64
  %i.bw = sub i64 %i.bv, %i.al
  %i.bx = add nsw i64 %i.bw, 1                    ; 2 uses
  %i.by = call ptr @strncpy(ptr noundef nonnull %i.j, ptr noundef nonnull %i.s, i64 noundef %i.bx) #10 ; 0 uses
  %i.bz = getelementptr inbounds i8, ptr %i.j, i64 %i.bx
  store i8 0, ptr %i.bz, align 1, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 2 uses
  %i.cb = load i8, ptr %.4.i, align 1, !tbaa !10  ; 2 uses
  switch i8 %i.cb, label %.thread46 [
    i8 99, label %bb.q
    i8 100, label %bb.r
    i8 105, label %bb.r
    i8 111, label %bb.s
    i8 117, label %bb.s
    i8 120, label %bb.s
    i8 88, label %bb.s
    i8 101, label %bb.t
    i8 69, label %bb.t
    i8 102, label %bb.t
    i8 103, label %bb.t
    i8 71, label %bb.t
    i8 113, label %bb.u
    i8 115, label %bb.aj
  ]

bb.q:                                             ; preds = %scanformat.exit
  %i.cc = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ac) #10
  %i.cd = fptosi double %i.cc to i32
  %i.ce = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef %i.cd) #10 ; 0 uses
  br label %.thread49

bb.r:                                             ; preds = %scanformat.exit, %scanformat.exit
  %i.cf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #12
  %i.cg = getelementptr i8, ptr %i.c, i64 %i.cf   ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1     ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !10
  store i16 108, ptr %i.ch, align 1
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !10
  %i.cj = getelementptr i8, ptr %i.cg, i64 1
  store i8 0, ptr %i.cj, align 1, !tbaa !10
  %i.ck = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ac) #10
  %i.cl = fptosi double %i.ck to i64
  %i.cm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef %i.cl) #10 ; 0 uses
  br label %.thread49

bb.s:                                             ; preds = %scanformat.exit, %scanformat.exit, %scanformat.exit, %scanformat.exit
  %i.cn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #12
  %i.co = getelementptr i8, ptr %i.c, i64 %i.cn   ; 3 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -1     ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !10
  store i16 108, ptr %i.cp, align 1
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !10
  %i.cr = getelementptr i8, ptr %i.co, i64 1
  store i8 0, ptr %i.cr, align 1, !tbaa !10
  %i.cs = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ac) #10
  %i.ct = fptoui double %i.cs to i64
  %i.cu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef %i.ct) #10 ; 0 uses
  br label %.thread49

bb.t:                                             ; preds = %scanformat.exit, %scanformat.exit, %scanformat.exit, %scanformat.exit, %scanformat.exit
  %i.cv = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ac) #10
  %i.cw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.c, double noundef %i.cv) #10 ; 0 uses
  br label %.thread49

bb.u:                                             ; preds = %scanformat.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.cx = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef range(i32 -2147483647, -2147483648) %i.ac, ptr noundef nonnull %i.a) #10
  %i.cy = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.cz = icmp ult ptr %i.cy, %i.i
  br i1 %i.cz, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #10 ; 0 uses
  %.pre.i42 = load ptr, ptr %1, align 8, !tbaa !13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.db = phi ptr [ %.pre.i42, %bb.v ], [ %i.cy, %bb.u ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store ptr %i.dc, ptr %1, align 8, !tbaa !13
  store i8 34, ptr %i.db, align 1, !tbaa !10
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.de = add i64 %i.dd, -1
  store i64 %i.de, ptr %i.a, align 8, !tbaa !8
  %.not27.i = icmp eq i64 %i.dd, 0
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.w, %bb.ah
  %.028.i = phi ptr [ %i.dx, %bb.ah ], [ %i.cx, %bb.w ] ; 4 uses
  %i.df = load i8, ptr %.028.i, align 1, !tbaa !10 ; 2 uses
  switch i8 %i.df, label %bb.ae [
    i8 34, label %bb.x
    i8 92, label %bb.x
    i8 10, label %bb.x
    i8 13, label %bb.ac
    i8 0, label %bb.ad
  ]

bb.x:                                             ; preds = %.lr.ph.i43, %.lr.ph.i43, %.lr.ph.i43
  %i.dg = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.dh = icmp ult ptr %i.dg, %i.i
  br i1 %i.dh, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.di = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #10 ; 0 uses
  %.pre29.i = load ptr, ptr %1, align 8, !tbaa !13
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dj = phi ptr [ %.pre29.i, %bb.y ], [ %i.dg, %bb.x ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
end_hunk_0
