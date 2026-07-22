inline.NumInlined: 39
inline.NumDeleted: 21
begin_hunk_0_@lua_setfield
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
  %i.f = tail call i32 @lua_gettop(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.g = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.b) #10 ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %1) #10
  %.not60 = icmp eq i64 %i.h, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8216 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.04059 = phi i32 [ 1, %.lr.ph ], [ %.040.be, %.backedge ] ; 4 uses
  %.04258 = phi ptr [ %i.g, %.lr.ph ], [ %.042.be, %.backedge ] ; 5 uses
  %i.l = load i8, ptr %.04258, align 1, !tbaa !10 ; 2 uses
  %.not = icmp eq i8 %i.l, 37
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.j
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #10 ; 0 uses
  %.pre = load i8, ptr %.04258, align 1, !tbaa !10
  %.pre61 = load ptr, ptr %1, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %.pre61, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = phi i8 [ %.pre, %bb.d ], [ %i.l, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %.04258, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.s, ptr %1, align 8, !tbaa !13
  store i8 %i.q, ptr %i.p, align 1, !tbaa !10
  br label %.backedge

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.04258, i64 1 ; 7 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !10    ; 2 uses
  %i.v = icmp eq i8 %i.u, 37
  br i1 %i.v, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.j
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #10 ; 0 uses
  %.pre63.a = load i8, ptr %i.t, align 1, !tbaa !10
  %.pre64 = load ptr, ptr %1, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ %.pre64, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  %i.aa = phi i8 [ %.pre63.a, %bb.h ], [ 37, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.04258, i64 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.ac, ptr %1, align 8, !tbaa !13
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !10
  br label %.backedge

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.ad = add nsw i32 %.04059, 1                  ; 10 uses
  %.not45 = icmp slt i32 %.04059, %i.f
  br i1 %.not45, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull @.str.28) #10 ; 0 uses
  %.pre62 = load i8, ptr %i.t, align 1, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %2 = phi i8 [ %.pre62, %bb.k ], [ %i.u, %bb.j ] ; 2 uses
  %.not41.i = icmp eq i8 %2, 0
  br i1 %.not41.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.m
  %i.af = phi i8 [ %i.ak, %bb.m ], [ %2, %bb.l ]  ; 3 uses
  %.042.i = phi ptr [ %i.aj, %bb.m ], [ %i.t, %bb.l ] ; 2 uses
  %i.ag = zext nneg i8 %i.af to i64
  %memchr.bounds.i = icmp ugt i8 %i.af, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = and i64 %i.ah, 325494096527361
  %memchr.bits.i = icmp eq i64 %i.ai, 0
  %memchr30.not.i = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr30.not.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.042.i, i64 1 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !10  ; 2 uses
  %.not.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !19

.critedge.i:                                      ; preds = %bb.m, %.lr.ph.i, %bb.l
  %i.al = phi i8 [ 0, %bb.l ], [ %i.af, %.lr.ph.i ], [ 0, %bb.m ]
  %.0.lcssa.i = phi ptr [ %i.t, %bb.l ], [ %.042.i, %.lr.ph.i ], [ %i.aj, %bb.m ] ; 3 uses
  %i.am = ptrtoint ptr %.0.lcssa.i to i64
  %i.an = ptrtoint ptr %i.t to i64                ; 2 uses
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ugt i64 %i.ao, 5
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge.i
  %i.aq = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.31) #10 ; 0 uses
  %.pre.i = load i8, ptr %.0.lcssa.i, align 1, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge.i
  %i.ar = phi i8 [ %.pre.i, %bb.n ], [ %i.al, %.critedge.i ]
  %i.as = tail call ptr @__ctype_b_loc() #11
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !20 ; 5 uses
  %i.au = zext i8 %i.ar to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !22
  %i.ax = lshr i16 %i.aw, 11
  %.lobit.i = and i16 %i.ax, 1
  %spec.select.idx.i = zext nneg i16 %.lobit.i to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %spec.select.idx.i ; 2 uses
  %i.ay = load i8, ptr %spec.select.i, align 1, !tbaa !10
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !22
  %i.bc = lshr i16 %i.bb, 11
  %.lobit39.i = and i16 %i.bc, 1
  %.2.idx.i = zext nneg i16 %.lobit39.i to i64
  %.2.i = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %.2.idx.i ; 4 uses
  %i.bd = load i8, ptr %.2.i, align 1, !tbaa !10  ; 2 uses
  %i.be = icmp eq i8 %i.bd, 46
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %.2.i, i64 1 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !10
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !22
  %i.bk = and i16 %i.bj, 2048
  %.not34.i = icmp eq i16 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  %spec.select37.i = select i1 %.not34.i, ptr %i.bf, ptr %i.bl ; 2 uses
  %i.bm = load i8, ptr %spec.select37.i, align 1, !tbaa !10
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !22
  %i.bq = lshr i16 %i.bp, 11
  %.lobit40.i = and i16 %i.bq, 1
  %spec.select38.idx.i = zext nneg i16 %.lobit40.i to i64
  %spec.select38.i = getelementptr inbounds nuw i8, ptr %spec.select37.i, i64 %spec.select38.idx.i ; 2 uses
  %.pre45.i = load i8, ptr %spec.select38.i, align 1, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.br = phi i8 [ %i.bd, %bb.o ], [ %.pre45.i, %bb.p ]
  %.4.i = phi ptr [ %.2.i, %bb.o ], [ %spec.select38.i, %bb.p ] ; 3 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !22
  %i.bv = and i16 %i.bu, 2048
  %.not36.i = icmp eq i16 %i.bv, 0
  br i1 %.not36.i, label %scanformat.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.32) #10 ; 0 uses
  br label %scanformat.exit

scanformat.exit:                                  ; preds = %bb.q, %bb.r
  store i8 37, ptr %i.c, align 16, !tbaa !10
  %i.bx = ptrtoint ptr %.4.i to i64
  %i.by = sub i64 %i.bx, %i.an
  %i.bz = add nsw i64 %i.by, 1                    ; 2 uses
  %i.ca = call ptr @strncpy(ptr noundef nonnull %i.k, ptr noundef nonnull %i.t, i64 noundef %i.bz) #10 ; 0 uses
  %i.cb = getelementptr inbounds i8, ptr %i.k, i64 %i.bz
  store i8 0, ptr %i.cb, align 1, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 2 uses
  %i.cd = load i8, ptr %.4.i, align 1, !tbaa !10  ; 2 uses
  switch i8 %i.cd, label %.thread52 [
    i8 99, label %bb.s
    i8 100, label %bb.t
    i8 105, label %bb.t
    i8 111, label %bb.u
    i8 117, label %bb.u
    i8 120, label %bb.u
    i8 88, label %bb.u
    i8 101, label %bb.v
    i8 69, label %bb.v
    i8 102, label %bb.v
    i8 103, label %bb.v
    i8 71, label %bb.v
    i8 113, label %bb.w
    i8 115, label %bb.al
  ]

bb.s:                                             ; preds = %scanformat.exit
  %i.ce = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ad) #10
  %i.cf = fptosi double %i.ce to i32
  %i.cg = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef %i.cf) #10 ; 0 uses
  br label %.thread55

bb.t:                                             ; preds = %scanformat.exit, %scanformat.exit
  %i.ch = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #12
  %i.ci = getelementptr i8, ptr %i.c, i64 %i.ch   ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1     ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !10
  store i16 108, ptr %i.cj, align 1
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !10
  %i.cl = getelementptr i8, ptr %i.ci, i64 1
  store i8 0, ptr %i.cl, align 1, !tbaa !10
  %i.cm = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ad) #10
  %i.cn = fptosi double %i.cm to i64
  %i.co = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef %i.cn) #10 ; 0 uses
  br label %.thread55

bb.u:                                             ; preds = %scanformat.exit, %scanformat.exit, %scanformat.exit, %scanformat.exit
  %i.cp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #12
  %i.cq = getelementptr i8, ptr %i.c, i64 %i.cp   ; 3 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1     ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !10
  store i16 108, ptr %i.cr, align 1
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !10
  %i.ct = getelementptr i8, ptr %i.cq, i64 1
  store i8 0, ptr %i.ct, align 1, !tbaa !10
  %i.cu = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ad) #10
  %i.cv = fptoui double %i.cu to i64
  %i.cw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef %i.cv) #10 ; 0 uses
  br label %.thread55

bb.v:                                             ; preds = %scanformat.exit, %scanformat.exit, %scanformat.exit, %scanformat.exit, %scanformat.exit
  %i.cx = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ad) #10
  %i.cy = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.c, double noundef %i.cx) #10 ; 0 uses
  br label %.thread55

bb.w:                                             ; preds = %scanformat.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.cz = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef range(i32 -2147483647, -2147483648) %i.ad, ptr noundef nonnull %i.a) #10
  %i.da = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.db = icmp ult ptr %i.da, %i.j
  br i1 %i.db, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #10 ; 0 uses
  %.pre.i48 = load ptr, ptr %1, align 8, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dd = phi ptr [ %.pre.i48, %bb.x ], [ %i.da, %bb.w ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  store ptr %i.de, ptr %1, align 8, !tbaa !13
  store i8 34, ptr %i.dd, align 1, !tbaa !10
  %i.df = load i64, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.dg = add i64 %i.df, -1
  store i64 %i.dg, ptr %i.a, align 8, !tbaa !8
  %.not27.i = icmp eq i64 %i.df, 0
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.y, %bb.aj
  %.028.i = phi ptr [ %i.dz, %bb.aj ], [ %i.cz, %bb.y ] ; 4 uses
  %i.dh = load i8, ptr %.028.i, align 1, !tbaa !10 ; 2 uses
  switch i8 %i.dh, label %bb.ag [
    i8 34, label %bb.z
    i8 92, label %bb.z
    i8 10, label %bb.z
    i8 13, label %bb.ae
    i8 0, label %bb.af
  ]

bb.z:                                             ; preds = %.lr.ph.i49, %.lr.ph.i49, %.lr.ph.i49
  %i.di = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.dj = icmp ult ptr %i.di, %i.j
  br i1 %i.dj, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dk = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #10 ; 0 uses
  %.pre29.i = load ptr, ptr %1, align 8, !tbaa !13
end_hunk_0
