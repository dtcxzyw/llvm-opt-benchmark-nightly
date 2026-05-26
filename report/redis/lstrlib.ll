inline.NumInlined: 39
inline.NumDeleted: 21
begin_hunk_0_@str_format:bb.a
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.de = phi ptr [ %.pre.i48, %bb.x ], [ %i.db, %bb.w ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  store ptr %i.df, ptr %1, align 8, !tbaa !13
  store i8 34, ptr %i.de, align 1, !tbaa !10
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.dh = add i64 %i.dg, -1
  store i64 %i.dh, ptr %i.a, align 8, !tbaa !8
  %.not27.i = icmp eq i64 %i.dg, 0
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.y, %bb.aj
  %.028.i = phi ptr [ %i.ea, %bb.aj ], [ %i.da, %bb.y ] ; 4 uses
  %i.di = load i8, ptr %.028.i, align 1, !tbaa !10 ; 2 uses
  switch i8 %i.di, label %bb.ag [
    i8 34, label %bb.z
    i8 92, label %bb.z
    i8 10, label %bb.z
    i8 13, label %bb.ae
    i8 0, label %bb.af
  ]

bb.z:                                             ; preds = %.lr.ph.i49, %.lr.ph.i49, %.lr.ph.i49
  %i.dj = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %i.j
  br i1 %i.dk, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #10 ; 0 uses
  %.pre29.i = load ptr, ptr %1, align 8, !tbaa !13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dm = phi ptr [ %.pre29.i, %bb.aa ], [ %i.dj, %bb.z ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  store ptr %i.dn, ptr %1, align 8, !tbaa !13
  store i8 92, ptr %i.dm, align 1, !tbaa !10
  %i.do = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.dp = icmp ult ptr %i.do, %i.j
  br i1 %i.dp, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dq = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #10 ; 0 uses
  %.pre30.i = load ptr, ptr %1, align 8, !tbaa !13
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dr = phi ptr [ %.pre30.i, %bb.ac ], [ %i.do, %bb.ab ] ; 2 uses
  %i.ds = load i8, ptr %.028.i, align 1, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  store ptr %i.dt, ptr %1, align 8, !tbaa !13
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !10
  br label %bb.aj

bb.ae:                                            ; preds = %.lr.ph.i49
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef nonnull @.str.34, i64 noundef 2) #10
  br label %bb.aj

bb.af:                                            ; preds = %.lr.ph.i49
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef nonnull @.str.35, i64 noundef 4) #10
  br label %bb.aj

bb.ag:                                            ; preds = %.lr.ph.i49
  %i.du = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.dv = icmp ult ptr %i.du, %i.j
  br i1 %i.dv, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dw = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #10 ; 0 uses
  %.pre31.i = load i8, ptr %.028.i, align 1, !tbaa !10
  %.pre32.i = load ptr, ptr %1, align 8, !tbaa !13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dx = phi ptr [ %.pre32.i, %bb.ah ], [ %i.du, %bb.ag ] ; 2 uses
  %i.dy = phi i8 [ %.pre31.i, %bb.ah ], [ %i.di, %bb.ag ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  store ptr %i.dz, ptr %1, align 8, !tbaa !13
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !10
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af, %bb.ae, %bb.ad
  %i.ea = getelementptr inbounds nuw i8, ptr %.028.i, i64 1
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.ec = add i64 %i.eb, -1
  store i64 %i.ec, ptr %i.a, align 8, !tbaa !8
  %.not.i50 = icmp eq i64 %i.eb, 0
  br i1 %.not.i50, label %._crit_edge.i, label %.lr.ph.i49, !llvm.loop !24

._crit_edge.i:                                    ; preds = %bb.aj, %bb.y
  %i.ed = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.ee = icmp ult ptr %i.ed, %i.j
  br i1 %i.ee, label %addquoted.exit, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i
  %i.ef = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #10 ; 0 uses
  %.pre33.i = load ptr, ptr %1, align 8, !tbaa !13
  br label %addquoted.exit

addquoted.exit:                                   ; preds = %._crit_edge.i, %bb.ak
  %i.eg = phi ptr [ %.pre33.i, %bb.ak ], [ %i.ed, %._crit_edge.i ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  store ptr %i.eh, ptr %1, align 8, !tbaa !13
  store i8 34, ptr %i.eg, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.an, !llvm.loop !25

bb.al:                                            ; preds = %scanformat.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.ei = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull %i.e) #10
  %i.ej = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 46) #12
  %i.ek = icmp ne ptr %i.ej, null
  %i.el = load i64, ptr %i.e, align 8
  %i.em = icmp ult i64 %i.el, 100
  %or.cond.not = select i1 %i.ek, i1 true, i1 %i.em
  br i1 %or.cond.not, label %.thread, label %bb.am

.thread:                                          ; preds = %bb.al
  %i.en = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef %i.ei) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %.thread55

bb.am:                                            ; preds = %bb.al
  call void @lua_pushvalue(ptr noundef %0, i32 noundef %i.ad) #10
  call void @luaL_addvalue(ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %bb.an

.thread52:                                        ; preds = %scanformat.exit
  %i.eo = sext i8 %i.ce to i32
  %i.ep = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %i.eo) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.ao

.thread55:                                        ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %.thread
  %i.eq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #12
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i64 noundef %i.eq) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %.backedge

bb.an:                                            ; preds = %bb.am, %addquoted.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %.backedge

.backedge:                                        ; preds = %bb.e, %bb.i, %.thread55, %bb.an
  %.042.be = phi ptr [ %i.cd, %bb.an ], [ %i.r, %bb.e ], [ %i.ab, %bb.i ], [ %i.cd, %.thread55 ] ; 2 uses
  %.040.be = phi i32 [ %i.ad, %bb.an ], [ %.04059, %bb.e ], [ %.04059, %bb.i ], [ %i.ad, %.thread55 ]
  %i.er = icmp ult ptr %.042.be, %i.i
  br i1 %i.er, label %bb.b, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %.backedge, %bb.a
  call void @luaL_pushresult(ptr noundef nonnull %1) #10
  br label %bb.ao

bb.ao:                                            ; preds = %.thread52, %._crit_edge
  %.3 = phi i32 [ %i.ep, %.thread52 ], [ 1, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal i32 @gfind_nodef(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.36) #10
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gmatch(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #10 ; 0 uses
  %i.b = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef null) #10 ; 0 uses
  tail call void @lua_settop(ptr noundef %0, i32 noundef 2) #10
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef 0) #10
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @gmatch_aux, i32 noundef 3) #10
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @str_gsub(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.MatchState, align 8         ; 12 uses
  %2 = alloca %struct.luaL_Buffer, align 8        ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.b) #10 ; 3 uses
  %i.d = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef null) #10 ; 2 uses
  %i.e = call i32 @lua_type(ptr noundef %0, i32 noundef 3) #10
  %i.f = load i64, ptr %i.b, align 8, !tbaa !8
  %i.g = add i64 %i.f, 1
  %i.h = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 4, i64 noundef %i.g) #10
  %i.i = trunc i64 %i.h to i32
  %i.j = load i8, ptr %i.d, align 1, !tbaa !10
  %.fr = freeze i8 %i.j
  %.not47 = icmp eq i8 %.fr, 94                   ; 2 uses
  %spec.select.idx = zext i1 %.not47 to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.d, i64 %spec.select.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.k = add i32 %i.e, -3
  %or.cond5 = icmp ult i32 %i.k, 4
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.37) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %2) #10
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %0, ptr %i.m, align 8, !tbaa !26
  store ptr %i.c, ptr %1, align 8, !tbaa !28
  %i.n = load i64, ptr %i.b, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8216 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.ai, %bb.c
  %.040 = phi i32 [ 0, %bb.c ], [ %.14152, %bb.ai ] ; 4 uses
  %.039 = phi ptr [ %i.c, %bb.c ], [ %.1, %bb.ai ] ; 16 uses
  %i.u = icmp slt i32 %.040, %i.i
  br i1 %i.u, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.q, align 8, !tbaa !30
  %i.v = call fastcc ptr @match(ptr noundef %1, ptr noundef %.039, ptr noundef nonnull %spec.select) ; 8 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %add_value.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %.040, 1                     ; 2 uses
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !26   ; 11 uses
  %i.y = call i32 @lua_type(ptr noundef %i.x, i32 noundef 3) #10
  switch i32 %i.y, label %bb.aa [
    i32 3, label %bb.g
    i32 4, label %bb.g
    i32 6, label %bb.t
    i32 5, label %bb.u
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.aa = call ptr @lua_tolstring(ptr noundef %i.z, i32 noundef 3, ptr noundef nonnull %i.a) #10 ; 2 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !8
  %.not34.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not34.i.i, label %add_s.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = ptrtoint ptr %.039 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  br label %bb.h

bb.h:                                             ; preds = %bb.s, %.lr.ph.i.i
  %.033.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bf, %bb.s ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.033.i.i ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !10  ; 2 uses
  %.not.i.i = icmp eq i8 %i.ag, 37
  br i1 %.not.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %i.t
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = call ptr @luaL_prepbuffer(ptr noundef nonnull %2) #10 ; 0 uses
  %.pre.i.i = load i8, ptr %i.af, align 1, !tbaa !10
  %.pre35.i.i = load ptr, ptr %2, align 8, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ak = phi ptr [ %.pre35.i.i, %bb.j ], [ %i.ah, %bb.i ] ; 2 uses
  %i.al = phi i8 [ %.pre.i.i, %bb.j ], [ %i.ag, %bb.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.am, ptr %2, align 8, !tbaa !13
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !10
  br label %bb.s

bb.l:                                             ; preds = %bb.h
  %i.an = add nuw i64 %.033.i.i, 1                ; 4 uses
  %i.ao = tail call ptr @__ctype_b_loc() #11
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.an ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !10  ; 4 uses
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !22
  %i.av = and i16 %i.au, 2048
  %.not32.i.i = icmp eq i16 %i.av, 0
  br i1 %.not32.i.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %i.t
  br i1 %i.ax, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = call ptr @luaL_prepbuffer(ptr noundef nonnull %2) #10 ; 0 uses
  %.pre36.i.i = load i8, ptr %i.aq, align 1, !tbaa !10
  %.pre37.i.i = load ptr, ptr %2, align 8, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.az = phi ptr [ %.pre37.i.i, %bb.n ], [ %i.aw, %bb.m ] ; 2 uses
  %i.ba = phi i8 [ %.pre36.i.i, %bb.n ], [ %i.ar, %bb.m ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.bb, ptr %2, align 8, !tbaa !13
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !10
  br label %bb.s

bb.p:                                             ; preds = %bb.l
  %i.bc = icmp eq i8 %i.ar, 48
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @luaL_addlstring(ptr noundef nonnull %2, ptr noundef %.039, i64 noundef %i.ae) #10
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bd = sext i8 %i.ar to i32
  %i.be = add nsw i32 %i.bd, -49
  call fastcc void @push_onecapture(ptr noundef nonnull readonly %1, i32 noundef %i.be, ptr noundef %.039, ptr noundef nonnull %i.v)
  call void @luaL_addvalue(ptr noundef nonnull %2) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.k
  %.1.i.i = phi i64 [ %.033.i.i, %bb.k ], [ %i.an, %bb.q ], [ %i.an, %bb.r ], [ %i.an, %bb.o ]
  %i.bf = add i64 %.1.i.i, 1                      ; 2 uses
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !8
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.h, label %add_s.exit.i, !llvm.loop !31

add_s.exit.i:                                     ; preds = %bb.s, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %add_value.exit

bb.t:                                             ; preds = %bb.f
  call void @lua_pushvalue(ptr noundef %i.x, i32 noundef 3) #10
  %i.bi = load i32, ptr %i.q, align 8, !tbaa !30  ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  %i.bk = icmp ne ptr %.039, null
  %or.cond.i.i = and i1 %i.bk, %i.bj
  %spec.select.i.i = select i1 %or.cond.i.i, i32 1, i32 %i.bi ; 4 uses
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !26
  call void @luaL_checkstack(ptr noundef %i.bl, i32 noundef %spec.select.i.i, ptr noundef nonnull @.str.21) #10
  %i.bm = icmp sgt i32 %spec.select.i.i, 0
  br i1 %i.bm, label %.lr.ph.i27.i, label %push_captures.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.t, %.lr.ph.i27.i
  %.014.i.i = phi i32 [ %i.bn, %.lr.ph.i27.i ], [ 0, %bb.t ] ; 2 uses
  call fastcc void @push_onecapture(ptr noundef nonnull readonly %1, i32 noundef %.014.i.i, ptr noundef %.039, ptr noundef nonnull %i.v)
  %i.bn = add nuw nsw i32 %.014.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bn, %spec.select.i.i
  br i1 %exitcond.not.i.i, label %push_captures.exit.i, label %.lr.ph.i27.i, !llvm.loop !32

push_captures.exit.i:                             ; preds = %.lr.ph.i27.i, %bb.t
  call void @lua_call(ptr noundef %i.x, i32 noundef %spec.select.i.i, i32 noundef 1) #10
  br label %bb.aa

bb.u:                                             ; preds = %bb.f
  %i.bo = load i32, ptr %i.q, align 8, !tbaa !30
  %.not.i28.i = icmp sgt i32 %i.bo, 0
  br i1 %.not.i28.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.bq = ptrtoint ptr %i.v to i64
  %i.br = ptrtoint ptr %.039 to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @lua_pushlstring(ptr noundef %i.bp, ptr noundef %.039, i64 noundef %i.bs) #10
  br label %push_onecapture.exit.i

bb.w:                                             ; preds = %bb.u
  %i.bt = load i64, ptr %i.s, align 8, !tbaa !33  ; 2 uses
  switch i64 %i.bt, label %bb.z [
    i64 -1, label %bb.x
    i64 -2, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.bv = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.bu, ptr noundef nonnull @.str.27) #10 ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bw = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.bx = load ptr, ptr %i.r, align 8, !tbaa !35
  %i.by = load ptr, ptr %1, align 8, !tbaa !28
end_hunk_0
begin_hunk_1_@match:bb.a
bb.ai:                                            ; preds = %bb.ah
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !10
  %.not.i95 = icmp eq i8 %i.db, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %.1.i94, i64 2
  %spec.select17.i = select i1 %.not.i95, ptr %i.cz, ptr %i.dc
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.2.i = phi ptr [ %i.cz, %bb.ah ], [ %spec.select17.i, %bb.ai ] ; 3 uses
  %i.dd = load i8, ptr %.2.i, align 1, !tbaa !10  ; 2 uses
  %.not16.i = icmp eq i8 %i.dd, 93
  br i1 %.not16.i, label %bb.ak, label %bb.af, !llvm.loop !48

bb.ak:                                            ; preds = %bb.aj
  %i.de = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  br label %classend.exit

classend.exit:                                    ; preds = %bb.aa, %bb.ad, %bb.ak
  %i.df = phi ptr [ %i.cq, %bb.ak ], [ %i.ck, %bb.ad ], [ %i.ck, %bb.aa ] ; 2 uses
  %.015.i = phi ptr [ %i.de, %bb.ak ], [ %i.cp, %bb.ad ], [ %i.ck, %bb.aa ] ; 2 uses
  %i.dg = load ptr, ptr %0, align 8, !tbaa !28
  %i.dh = icmp eq ptr %.075.ph.ph, %i.dg
  br i1 %i.dh, label %bb.am, label %bb.al

bb.al:                                            ; preds = %classend.exit
  %i.di = load i8, ptr %i.e, align 1, !tbaa !10
  %i.dj = zext i8 %i.di to i32
  br label %bb.am

bb.am:                                            ; preds = %classend.exit, %bb.al
  %i.dk = phi i32 [ %i.dj, %bb.al ], [ 0, %classend.exit ] ; 4 uses
  %i.dl = getelementptr inbounds i8, ptr %.015.i, i64 -1 ; 5 uses
  %i.dm = load i8, ptr %i.df, align 1, !tbaa !10
  %i.dn = icmp eq i8 %i.dm, 94                    ; 4 uses
  %spec.select.i97 = select i1 %i.dn, ptr %i.df, ptr %i.cf ; 3 uses
  %not..i = xor i1 %i.dn, true                    ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %spec.select.i97, i64 1 ; 3 uses
  %i.dp = icmp ult ptr %i.do, %i.dl
  br i1 %i.dp, label %.lr.ph.preheader.i, label %start_capture.exit

.lr.ph.preheader.i:                               ; preds = %bb.am
  %i.dq = trunc nuw i32 %i.dk to i8
  br label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %bb.at, %.lr.ph.preheader.i
  %i.dr = phi ptr [ %i.ef, %bb.at ], [ %i.do, %.lr.ph.preheader.i ] ; 2 uses
  %.131.i = phi ptr [ %.2.i99, %bb.at ], [ %spec.select.i97, %.lr.ph.preheader.i ] ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !10  ; 3 uses
  %i.dt = icmp eq i8 %i.ds, 37
  %i.du = getelementptr inbounds nuw i8, ptr %.131.i, i64 2 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !10  ; 2 uses
  br i1 %i.dt, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i98
  %i.dw = zext i8 %i.dv to i32
  %i.dx = tail call fastcc i32 @match_class(i32 noundef range(i32 0, 256) %i.dk, i32 noundef %i.dw)
  %.not29.i = icmp eq i32 %i.dx, 0
  br i1 %.not29.i, label %bb.at, label %matchbracketclass.exit

bb.ao:                                            ; preds = %.lr.ph.i98
  %i.dy = icmp eq i8 %i.dv, 45
  br i1 %i.dy, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.dz = getelementptr inbounds nuw i8, ptr %.131.i, i64 3 ; 4 uses
  %i.ea = icmp ult ptr %i.dz, %i.dl
  br i1 %i.ea, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.eb = zext i8 %i.ds to i32
  %.not.i100 = icmp samesign ult i32 %i.dk, %i.eb
  br i1 %.not.i100, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ec = load i8, ptr %i.dz, align 1, !tbaa !10
  %.not28.i = icmp ult i8 %i.ec, %i.dq
  br i1 %.not28.i, label %bb.at, label %matchbracketclass.exit

bb.as:                                            ; preds = %bb.ap, %bb.ao
  %i.ed = zext i8 %i.ds to i32
  %i.ee = icmp eq i32 %i.dk, %i.ed
  br i1 %i.ee, label %matchbracketclass.exit, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.an
  %.2.i99 = phi ptr [ %i.du, %bb.an ], [ %i.dz, %bb.ar ], [ %i.dz, %bb.aq ], [ %i.dr, %bb.as ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.2.i99, i64 1 ; 2 uses
  %i.eg = icmp ult ptr %i.ef, %i.dl
  br i1 %i.eg, label %.lr.ph.i98, label %matchbracketclass.exit, !llvm.loop !49

matchbracketclass.exit:                           ; preds = %bb.an, %bb.ar, %bb.as, %bb.at
  %.022.in.i = phi i1 [ %not..i, %bb.an ], [ %i.dn, %bb.at ], [ %not..i, %bb.ar ], [ %not..i, %bb.as ]
  br i1 %.022.in.i, label %start_capture.exit, label %bb.au

bb.au:                                            ; preds = %matchbracketclass.exit
  %i.eh = load i8, ptr %.075.ph.ph, align 1, !tbaa !10 ; 4 uses
  %i.ei = zext i8 %i.eh to i32
  br label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %bb.au, %bb.bb
  %i.ej = phi ptr [ %i.ev, %bb.bb ], [ %i.do, %bb.au ] ; 2 uses
  %.131.i107 = phi ptr [ %.2.i108, %bb.bb ], [ %spec.select.i97, %bb.au ] ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !10  ; 3 uses
  %i.el = icmp eq i8 %i.ek, 37
  %i.em = getelementptr inbounds nuw i8, ptr %.131.i107, i64 2 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !10  ; 2 uses
  br i1 %i.el, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph.i106
  %i.eo = zext i8 %i.en to i32
  %i.ep = tail call fastcc i32 @match_class(i32 noundef range(i32 0, 256) %i.ei, i32 noundef %i.eo)
  %.not29.i111 = icmp eq i32 %i.ep, 0
  br i1 %.not29.i111, label %bb.bb, label %matchbracketclass.exit112

bb.aw:                                            ; preds = %.lr.ph.i106
  %i.eq = icmp eq i8 %i.en, 45
  br i1 %i.eq, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.er = getelementptr inbounds nuw i8, ptr %.131.i107, i64 3 ; 4 uses
  %i.es = icmp ult ptr %i.er, %i.dl
  br i1 %i.es, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %.not.i109 = icmp ult i8 %i.eh, %i.ek
  br i1 %.not.i109, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.et = load i8, ptr %i.er, align 1, !tbaa !10
  %.not28.i110 = icmp ult i8 %i.et, %i.eh
  br i1 %.not28.i110, label %bb.bb, label %matchbracketclass.exit112

bb.ba:                                            ; preds = %bb.ax, %bb.aw
  %i.eu = icmp eq i8 %i.eh, %i.ek
  br i1 %i.eu, label %matchbracketclass.exit112, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.av
  %.2.i108 = phi ptr [ %i.em, %bb.av ], [ %i.er, %bb.az ], [ %i.er, %bb.ay ], [ %i.ej, %bb.ba ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.2.i108, i64 1 ; 2 uses
  %i.ew = icmp ult ptr %i.ev, %i.dl
  br i1 %i.ew, label %.lr.ph.i106, label %matchbracketclass.exit112, !llvm.loop !49

matchbracketclass.exit112:                        ; preds = %bb.av, %bb.az, %bb.ba, %bb.bb
  %.022.in.i103 = phi i1 [ %not..i, %bb.av ], [ %i.dn, %bb.bb ], [ %not..i, %bb.az ], [ %not..i, %bb.ba ]
  br i1 %.022.in.i103, label %bb.b, label %start_capture.exit

bb.bc:                                            ; preds = %bb.p
  %i.ex = getelementptr inbounds nuw i8, ptr %.077, i64 1
  %i.ey = tail call ptr @__ctype_b_loc() #11
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !20
  %i.fa = zext i8 %i.bg to i64
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !22
  %i.fd = and i16 %i.fc, 2048
  %.not89 = icmp eq i16 %i.fd, 0
  br i1 %.not89, label %.thread198, label %bb.bd

.thread198:                                       ; preds = %bb.bc
  %i.fe = icmp eq i8 %i.bg, 0
  br i1 %i.fe, label %bb.bm, label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  %i.ff = zext i8 %i.bg to i32
  %i.fg = add nsw i32 %i.ff, -49                  ; 3 uses
  %i.fh = icmp ult i8 %i.bg, 49
  br i1 %i.fh, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fi = load i32, ptr %i.c, align 8, !tbaa !30
  %.not.i.i = icmp slt i32 %i.fg, %i.fi
  br i1 %.not.i.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fj = zext nneg i32 %i.fg to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !33
  %i.fn = icmp eq i64 %i.fm, -1
  br i1 %i.fn, label %bb.bg, label %check_capture.exit.i

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %i.fo = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.fp = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.fo, ptr noundef nonnull @.str.26) #10
  br label %check_capture.exit.i

check_capture.exit.i:                             ; preds = %bb.bg, %bb.bf
  %.0.i.i = phi i32 [ %i.fp, %bb.bg ], [ %i.fg, %bb.bf ]
  %i.fq = sext i32 %.0.i.i to i64
  %i.fr = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !33 ; 3 uses
  %i.fu = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %.075.ph.ph to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %.not.i113 = icmp ult i64 %i.fx, %i.ft
  br i1 %.not.i113, label %start_capture.exit, label %bb.bh

bb.bh:                                            ; preds = %check_capture.exit.i
  %i.fy = load ptr, ptr %i.fr, align 8, !tbaa !35
  %bcmp.i = tail call i32 @bcmp(ptr %i.fy, ptr %.075.ph.ph, i64 %i.ft)
  %bcmp.i.fr = freeze i32 %bcmp.i
  %i.fz = icmp ne i32 %bcmp.i.fr, 0
  %i.ga = icmp eq ptr %.075.ph.ph, null
  %or.cond = select i1 %i.fz, i1 true, i1 %i.ga
  br i1 %or.cond, label %start_capture.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gb = getelementptr inbounds nuw i8, ptr %.075.ph.ph, i64 %i.ft
  %i.gc = getelementptr inbounds nuw i8, ptr %.077, i64 2
  br label %.outer.outer.backedge

bb.bj:                                            ; preds = %bb.b
  %i.gd = getelementptr inbounds nuw i8, ptr %.077, i64 1 ; 3 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !10
  %i.gf = icmp eq i8 %i.ge, 0
  br i1 %i.gf, label %bb.bk, label %classend.exit124

bb.bk:                                            ; preds = %bb.bj
  %i.gg = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.gh = icmp eq ptr %.075.ph.ph, %i.gg
  %i.gi = select i1 %i.gh, ptr %.075.ph.ph, ptr null
  br label %start_capture.exit

bb.bl:                                            ; preds = %bb.b
  %i.gj = getelementptr inbounds nuw i8, ptr %.077, i64 1 ; 5 uses
  %cond = icmp eq i8 %i.g, 91
  br i1 %cond, label %bb.bo, label %classend.exit124

bb.bm:                                            ; preds = %.thread198
  %i.gk = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.gl = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.gk, ptr noundef nonnull @.str.24) #10 ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.thread198
  %i.gm = getelementptr inbounds nuw i8, ptr %.077, i64 2
  br label %classend.exit124

bb.bo:                                            ; preds = %bb.bl
  %i.gn = load i8, ptr %i.gj, align 1, !tbaa !10
  %i.go = icmp eq i8 %i.gn, 94
  %i.gp = getelementptr inbounds nuw i8, ptr %.077, i64 2
  %spec.select.i115 = select i1 %i.go, ptr %i.gp, ptr %i.gj ; 2 uses
  %.pr.i116 = load i8, ptr %spec.select.i115, align 1, !tbaa !10
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bt, %bb.bo
  %i.gq = phi i8 [ %i.gz, %bb.bt ], [ %.pr.i116, %bb.bo ] ; 2 uses
  %.1.i117 = phi ptr [ %.2.i118, %bb.bt ], [ %spec.select.i115, %bb.bo ] ; 3 uses
  %i.gr = icmp eq i8 %i.gq, 0
  br i1 %i.gr, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.gt = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.gs, ptr noundef nonnull @.str.25) #10 ; 0 uses
  %.pre.i123 = load i8, ptr %.1.i117, align 1, !tbaa !10
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gu = phi i8 [ %.pre.i123, %bb.bq ], [ %i.gq, %bb.bp ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.1.i117, i64 1 ; 3 uses
  %i.gw = icmp eq i8 %i.gu, 37
  br i1 %i.gw, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.gx = load i8, ptr %i.gv, align 1, !tbaa !10
  %.not.i121 = icmp eq i8 %i.gx, 0
  %i.gy = getelementptr inbounds nuw i8, ptr %.1.i117, i64 2
  %spec.select17.i122 = select i1 %.not.i121, ptr %i.gv, ptr %i.gy
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.2.i118 = phi ptr [ %i.gv, %bb.br ], [ %spec.select17.i122, %bb.bs ] ; 3 uses
  %i.gz = load i8, ptr %.2.i118, align 1, !tbaa !10 ; 2 uses
  %.not16.i119 = icmp eq i8 %i.gz, 93
  br i1 %.not16.i119, label %bb.bu, label %bb.bp, !llvm.loop !48

bb.bu:                                            ; preds = %bb.bt
  %i.ha = getelementptr inbounds nuw i8, ptr %.2.i118, i64 1
  br label %classend.exit124

classend.exit124:                                 ; preds = %bb.bj, %bb.bl, %bb.bn, %bb.bu
  %i.hb = phi ptr [ %i.gj, %bb.bu ], [ %i.ex, %bb.bn ], [ %i.gj, %bb.bl ], [ %i.gd, %bb.bj ] ; 12 uses
  %.015.i120 = phi ptr [ %i.ha, %bb.bu ], [ %i.gm, %bb.bn ], [ %i.gj, %bb.bl ], [ %i.gd, %bb.bj ] ; 11 uses
  %i.hc = load ptr, ptr %i.b, align 8, !tbaa !29  ; 4 uses
  %i.hd = icmp ult ptr %.075.ph.ph, %i.hc         ; 2 uses
  br i1 %i.hd, label %bb.bv, label %singlematch.exit

bb.bv:                                            ; preds = %classend.exit124
  %i.he = load i8, ptr %.075.ph.ph, align 1, !tbaa !10 ; 5 uses
  %i.hf = zext i8 %i.he to i32                    ; 2 uses
  %i.hg = load i8, ptr %.077, align 1, !tbaa !10  ; 2 uses
  switch i8 %i.hg, label %bb.cf [
    i8 46, label %singlematch.exit
    i8 37, label %bb.bw
    i8 91, label %bb.bx
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.hh = load i8, ptr %i.hb, align 1, !tbaa !10
  %i.hi = zext i8 %i.hh to i32
  %i.hj = tail call fastcc i32 @match_class(i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.hi)
  %i.hk = icmp ne i32 %i.hj, 0
  br label %singlematch.exit

bb.bx:                                            ; preds = %bb.bv
  %i.hl = getelementptr inbounds i8, ptr %.015.i120, i64 -1 ; 3 uses
  %i.hm = load i8, ptr %i.hb, align 1, !tbaa !10
  %i.hn = icmp eq i8 %i.hm, 94                    ; 4 uses
  %spec.select.i.i = select i1 %i.hn, ptr %i.hb, ptr %.077 ; 2 uses
  %not..i.i = xor i1 %i.hn, true                  ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 1 ; 2 uses
  %i.hp = icmp ult ptr %i.ho, %i.hl
  br i1 %i.hp, label %.lr.ph.i.i, label %singlematch.exit

.lr.ph.i.i:                                       ; preds = %bb.bx, %bb.ce
  %i.hq = phi ptr [ %i.ic, %bb.ce ], [ %i.ho, %bb.bx ] ; 2 uses
  %.131.i.i = phi ptr [ %.2.i.i, %bb.ce ], [ %spec.select.i.i, %bb.bx ] ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !10  ; 3 uses
  %i.hs = icmp eq i8 %i.hr, 37
  %i.ht = getelementptr inbounds nuw i8, ptr %.131.i.i, i64 2 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !10  ; 2 uses
  br i1 %i.hs, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph.i.i
  %i.hv = zext i8 %i.hu to i32
  %i.hw = tail call fastcc i32 @match_class(i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.hv)
  %.not29.i.i = icmp eq i32 %i.hw, 0
  br i1 %.not29.i.i, label %bb.ce, label %singlematch.exit

bb.bz:                                            ; preds = %.lr.ph.i.i
  %i.hx = icmp eq i8 %i.hu, 45
  br i1 %i.hx, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.hy = getelementptr inbounds nuw i8, ptr %.131.i.i, i64 3 ; 4 uses
  %i.hz = icmp ult ptr %i.hy, %i.hl
  br i1 %i.hz, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %.not.i.i126 = icmp ult i8 %i.he, %i.hr
  br i1 %.not.i.i126, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ia = load i8, ptr %i.hy, align 1, !tbaa !10
  %.not28.i.i = icmp ult i8 %i.ia, %i.he
  br i1 %.not28.i.i, label %bb.ce, label %singlematch.exit

bb.cd:                                            ; preds = %bb.ca, %bb.bz
  %i.ib = icmp eq i8 %i.he, %i.hr
  br i1 %i.ib, label %singlematch.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.by
  %.2.i.i = phi ptr [ %i.ht, %bb.by ], [ %i.hy, %bb.cc ], [ %i.hy, %bb.cb ], [ %i.hq, %bb.cd ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 1 ; 2 uses
  %i.id = icmp ult ptr %i.ic, %i.hl
  br i1 %i.id, label %.lr.ph.i.i, label %singlematch.exit, !llvm.loop !49

bb.cf:                                            ; preds = %bb.bv
  %i.ie = icmp eq i8 %i.he, %i.hg
  br label %singlematch.exit

singlematch.exit:                                 ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.by, %bb.cf, %bb.bw, %bb.bv, %bb.bx, %classend.exit124
  %i.if = phi i1 [ false, %classend.exit124 ], [ %i.ie, %bb.cf ], [ true, %bb.bv ], [ %i.hk, %bb.bw ], [ %i.hn, %bb.bx ], [ %i.hn, %bb.ce ], [ %not..i.i, %bb.cc ], [ %not..i.i, %bb.cd ], [ %not..i.i, %bb.by ] ; 3 uses
  %i.ig = load i8, ptr %.015.i120, align 1, !tbaa !10
  switch i8 %i.ig, label %bb.dv [
    i8 63, label %bb.cg
    i8 42, label %.preheader
    i8 43, label %bb.cv
    i8 45, label %.preheader217
  ]

.preheader217:                                    ; preds = %singlematch.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %.015.i120, i64 1 ; 2 uses
  %i.ii = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %.075.ph.ph, ptr noundef nonnull %i.ih), !inline_history !50 ; 2 uses
  %.not.i141266 = icmp eq ptr %i.ii, null
  br i1 %.not.i141266, label %.lr.ph, label %start_capture.exit

.lr.ph:                                           ; preds = %.preheader217
  %i.ij = getelementptr inbounds i8, ptr %.015.i120, i64 -1 ; 3 uses
  br label %bb.dj

.preheader:                                       ; preds = %singlematch.exit
  br i1 %i.hd, label %.lr.ph276, label %.critedge.i

.lr.ph276:                                        ; preds = %.preheader
  %.075.ph.lcssa351354 = ptrtoint ptr %.075.ph.ph to i64
  %.lcssa341344 = ptrtoint ptr %i.hc to i64
  %i.ik = load i8, ptr %.077, align 1, !tbaa !10  ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %.015.i120, i64 -1 ; 3 uses
  %i.im = sub i64 %.lcssa341344, %.075.ph.lcssa351354 ; 2 uses
  br label %bb.cj

bb.cg:                                            ; preds = %singlematch.exit
  br i1 %i.if, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.in = getelementptr inbounds nuw i8, ptr %.015.i120, i64 1
  %i.io = tail call fastcc ptr @match(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.in) ; 2 uses
  %.not90 = icmp eq ptr %i.io, null
  br i1 %.not90, label %bb.ci, label %start_capture.exit

bb.ci:                                            ; preds = %bb.ch, %bb.cg
end_hunk_1
