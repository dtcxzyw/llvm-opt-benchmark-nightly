inline.NumInlined: 12
inline.NumDeleted: 5
begin_hunk_0_@b_unpack:bb.a

bb.q:                                             ; preds = %bb.p
  %i.ds = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.10) #7 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.l
  %.072 = phi i64 [ %i.do, %bb.p ], [ %i.do, %bb.q ], [ %i.p, %bb.l ] ; 2 uses
  %.1 = phi i32 [ %i.dp, %bb.p ], [ %i.dp, %bb.q ], [ %.071107, %bb.l ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.y
  call void @lua_pushlstring(ptr noundef %0, ptr noundef %i.dt, i64 noundef %.072) #7
  %i.du = add nsw i32 %.1, 1
  br label %bb.w

bb.s:                                             ; preds = %bb.f
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.y ; 3 uses
  %i.dw = load i64, ptr %i.b, align 8, !tbaa !31
  %i.dx = sub i64 %i.dw, %i.y
  %i.dy = call ptr @memchr(ptr noundef %i.dv, i32 noundef 0, i64 noundef %i.dx) #9 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ea = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.13) #7 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = ptrtoint ptr %i.dv to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 2 uses
  %i.ee = add nsw i64 %i.ed, 1
  call void @lua_pushlstring(ptr noundef %0, ptr noundef %i.dv, i64 noundef %i.ed) #7
  %i.ef = add nsw i32 %.071107, 1
  br label %bb.w

bb.v:                                             ; preds = %bb.f
  call fastcc void @controloptions(ptr noundef %0, i32 noundef %i.o, ptr noundef %i.a, ptr noundef %1)
  br label %bb.w

bb.w:                                             ; preds = %bb.f, %bb.v, %bb.u, %bb.r, %correctbytes.exit103, %correctbytes.exit, %getinteger.exit
  %.173 = phi i64 [ %i.p, %bb.v ], [ %i.p, %getinteger.exit ], [ %i.p, %bb.f ], [ %i.p, %correctbytes.exit ], [ %i.p, %correctbytes.exit103 ], [ %.072, %bb.r ], [ %i.ee, %bb.u ]
  %.2 = phi i32 [ %.071107, %bb.v ], [ %i.da, %getinteger.exit ], [ %.071107, %bb.f ], [ %i.df, %correctbytes.exit ], [ %i.dj, %correctbytes.exit103 ], [ %i.du, %bb.r ], [ %i.ef, %bb.u ] ; 2 uses
  %i.eg = add i64 %.173, %i.y                     ; 2 uses
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !11  ; 2 uses
  %.not79 = icmp eq i8 %i.ei, 0
  br i1 %.not79, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %bb.w
  %i.ej = add i64 %i.eg, 1
  %i.ek = add nsw i32 %.2, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.071.lcssa = phi i32 [ 1, %bb.c ], [ %i.ek, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ %i.g, %bb.c ], [ %i.ej, %._crit_edge.loopexit ]
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %.0.lcssa) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 %.071.lcssa
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @b_size(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.Header, align 4             ; 4 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !10
  %i.d = load i8, ptr %i.b, align 1, !tbaa !11    ; 2 uses
  %.not21 = icmp eq i8 %i.d, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.e = phi i8 [ %i.ac, %bb.f ], [ %i.d, %bb.a ] ; 5 uses
  %i.f = phi ptr [ %i.ab, %bb.f ], [ %i.b, %bb.a ]
  %.022 = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.a ]  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %i.a, align 8, !tbaa !12
  %i.h = sext i8 %i.e to i32
  %i.i = call fastcc i64 @optsize(ptr noundef %0, i8 noundef signext %i.e, ptr noundef %i.a) ; 3 uses
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = icmp eq i8 %i.e, 99                      ; 2 uses
  %or.cond.i = or i1 %i.k, %i.j
  br i1 %or.cond.i, label %gettoalign.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.val = load i32, ptr %i.c, align 4
  %i.l = sext i32 %.val to i64
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 range(i64 -2147483648, 2147483600) %i.i, i64 %i.l) ; 2 uses
  %i.m = add nsw i64 %spec.select.i, -1           ; 2 uses
  %i.n = and i64 %i.m, %.022
  %i.o = sub i64 %spec.select.i, %i.n
  %i.p = and i64 %i.o, %i.m
  %sext = shl i64 %i.p, 32
  %i.q = ashr exact i64 %sext, 32
  br label %gettoalign.exit

gettoalign.exit:                                  ; preds = %.lr.ph, %bb.b
  %.010.i = phi i64 [ %i.q, %bb.b ], [ 0, %.lr.ph ]
  %i.r = icmp eq i8 %i.e, 115
  br i1 %i.r, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %gettoalign.exit
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %gettoalign.exit
  %.str.15.sink = phi ptr [ @.str.14, %gettoalign.exit ], [ @.str.15, %bb.c ]
  %i.s = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %.str.15.sink) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %i.t = tail call ptr @__ctype_b_loc() #8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.v = sext i8 %i.e to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !35
  %i.y = and i16 %i.x, 8
  %.not20 = icmp eq i16 %i.y, 0
  br i1 %.not20, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call fastcc void @controloptions(ptr noundef %0, i32 noundef %i.h, ptr noundef %i.a, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = add i64 %i.i, %.022
  %i.aa = add i64 %i.z, %.010.i                   ; 2 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11  ; 2 uses
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.f ]
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %.0.lcssa) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @luaL_checklstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_pushnil(ptr noundef) local_unnamed_addr #1

declare void @luaL_buffinit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -2147483648, 2147483600) i64 @optsize(ptr noundef %0, i8 noundef signext %1, ptr noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  switch i8 %1, label %bb.l [
    i8 66, label %getnum.exit
    i8 98, label %getnum.exit
    i8 72, label %bb.b
    i8 104, label %bb.b
    i8 76, label %bb.c
    i8 108, label %bb.c
    i8 84, label %bb.c
    i8 102, label %bb.d
    i8 100, label %bb.c
    i8 120, label %getnum.exit
    i8 99, label %bb.e
    i8 105, label %bb.h
    i8 73, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %getnum.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %getnum.exit

bb.d:                                             ; preds = %bb.a
  br label %getnum.exit

bb.e:                                             ; preds = %bb.a
  %i.a = tail call ptr @__ctype_b_loc() #8        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11    ; 2 uses
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !35
  %i.h = and i16 %i.g, 2048
  %.not.i = icmp eq i16 %i.h, 0
  br i1 %.not.i, label %getnum.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %bb.g
  %i.i = phi ptr [ %i.q, %bb.g ], [ %i.b, %bb.e ]
  %i.j = phi i8 [ %i.x, %bb.g ], [ %i.d, %bb.e ]
  %i.k = phi ptr [ %i.s, %bb.g ], [ %i.c, %bb.e ]
  %.0.i = phi i32 [ %i.w, %bb.g ], [ 0, %bb.e ]   ; 2 uses
  %i.l = icmp sgt i32 %.0.i, 214748364
  br i1 %i.l, label %.preheader._crit_edge.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %3 = mul nsw i32 %.0.i, 10                      ; 3 uses
  %i.m = sext i8 %i.j to i32
  %i.n = sub i32 -2147483601, %i.m
  %i.o = icmp sgt i32 %3, %i.n
  br i1 %i.o, label %.preheader._crit_edge.i, label %bb.g

.preheader._crit_edge.i:                          ; preds = %bb.f, %.preheader.i
  %.pre13.pre-phi.i = phi i32 [ %3, %bb.f ], [ 2147483647, %.preheader.i ]
  %i.p = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.6) #7 ; 0 uses
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !12
  %.pre12.i = load ptr, ptr %i.a, align 8, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %.preheader._crit_edge.i, %bb.f
  %.pre-phi.i = phi i32 [ %.pre13.pre-phi.i, %.preheader._crit_edge.i ], [ %3, %bb.f ]
  %i.q = phi ptr [ %.pre12.i, %.preheader._crit_edge.i ], [ %i.i, %bb.f ] ; 2 uses
  %i.r = phi ptr [ %.pre.i, %.preheader._crit_edge.i ], [ %i.k, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !12
  %i.t = load i8, ptr %i.r, align 1, !tbaa !11
  %i.u = sext i8 %i.t to i32
  %i.v = add i32 %.pre-phi.i, -48
  %i.w = add i32 %i.v, %i.u                       ; 2 uses
  %i.x = load i8, ptr %i.s, align 1, !tbaa !11    ; 2 uses
  %i.y = sext i8 %i.x to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !35
  %i.ab = and i16 %i.aa, 2048
  %.not11.i = icmp eq i16 %i.ab, 0
  br i1 %.not11.i, label %getnum.exit.loopexit, label %.preheader.i, !llvm.loop !43

getnum.exit.loopexit:                             ; preds = %bb.g
  %i.ac = sext i32 %i.w to i64
  br label %getnum.exit

bb.h:                                             ; preds = %bb.a, %bb.a
  %i.ad = tail call ptr @__ctype_b_loc() #8       ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 2 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11  ; 2 uses
  %i.ah = sext i8 %i.ag to i64
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !35
  %i.ak = and i16 %i.aj, 2048
  %.not.i10 = icmp eq i16 %i.ak, 0
  br i1 %.not.i10, label %getnum.exit20.thread, label %.preheader.i11

.preheader.i11:                                   ; preds = %bb.h, %bb.j
  %i.al = phi ptr [ %i.at, %bb.j ], [ %i.ae, %bb.h ]
  %i.am = phi i8 [ %i.ba, %bb.j ], [ %i.ag, %bb.h ]
  %i.an = phi ptr [ %i.av, %bb.j ], [ %i.af, %bb.h ]
  %.0.i12 = phi i32 [ %i.az, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.ao = icmp sgt i32 %.0.i12, 214748364
  br i1 %i.ao, label %.preheader._crit_edge.i16, label %bb.i

bb.i:                                             ; preds = %.preheader.i11
  %4 = mul nsw i32 %.0.i12, 10                    ; 3 uses
  %i.ap = sext i8 %i.am to i32
  %i.aq = sub i32 -2147483601, %i.ap
  %i.ar = icmp sgt i32 %4, %i.aq
  br i1 %i.ar, label %.preheader._crit_edge.i16, label %bb.j

.preheader._crit_edge.i16:                        ; preds = %bb.i, %.preheader.i11
  %.pre13.pre-phi.i17 = phi i32 [ %4, %bb.i ], [ 2147483647, %.preheader.i11 ]
  %i.as = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.6) #7 ; 0 uses
  %.pre.i18 = load ptr, ptr %2, align 8, !tbaa !12
  %.pre12.i19 = load ptr, ptr %i.ad, align 8, !tbaa !33
  br label %bb.j

bb.j:                                             ; preds = %.preheader._crit_edge.i16, %bb.i
  %.pre-phi.i13 = phi i32 [ %.pre13.pre-phi.i17, %.preheader._crit_edge.i16 ], [ %4, %bb.i ]
  %i.at = phi ptr [ %.pre12.i19, %.preheader._crit_edge.i16 ], [ %i.al, %bb.i ] ; 2 uses
  %i.au = phi ptr [ %.pre.i18, %.preheader._crit_edge.i16 ], [ %i.an, %bb.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 3 uses
  store ptr %i.av, ptr %2, align 8, !tbaa !12
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !11
  %i.ax = sext i8 %i.aw to i32
  %i.ay = add i32 %.pre-phi.i13, -48
  %i.az = add i32 %i.ay, %i.ax                    ; 5 uses
  %i.ba = load i8, ptr %i.av, align 1, !tbaa !11  ; 2 uses
  %i.bb = sext i8 %i.ba to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !35
  %i.be = and i16 %i.bd, 2048
  %.not11.i14 = icmp eq i16 %i.be, 0
  br i1 %.not11.i14, label %getnum.exit20, label %.preheader.i11, !llvm.loop !43

getnum.exit20:                                    ; preds = %bb.j
  %i.bf = icmp sgt i32 %i.az, 32
  br i1 %i.bf, label %bb.k, label %getnum.exit20.thread

bb.k:                                             ; preds = %getnum.exit20
  %i.bg = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %i.az, i32 noundef 32) #7 ; 0 uses
  br label %getnum.exit20.thread

getnum.exit20.thread:                             ; preds = %bb.h, %bb.k, %getnum.exit20
  %.010.i1522 = phi i32 [ %i.az, %getnum.exit20 ], [ %i.az, %bb.k ], [ 4, %bb.h ]
  %i.bh = sext i32 %.010.i1522 to i64
  br label %getnum.exit

bb.l:                                             ; preds = %bb.a
  br label %getnum.exit

getnum.exit:                                      ; preds = %bb.e, %getnum.exit.loopexit, %bb.a, %bb.a, %bb.a, %bb.l, %getnum.exit20.thread, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ 0, %bb.l ], [ %i.bh, %getnum.exit20.thread ], [ 2, %bb.b ], [ 8, %bb.c ], [ 1, %bb.a ], [ 4, %bb.d ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.e ], [ %i.ac, %getnum.exit.loopexit ]
  ret i64 %.0
}

declare ptr @luaL_prepbuffer(ptr noundef) local_unnamed_addr #1

declare double @luaL_checknumber(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @luaL_addlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @luaL_argerror(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @controloptions(ptr noundef %0, i32 noundef range(i32 -128, 128) %1, ptr noundef nonnull captures(none) %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.i [
    i32 32, label %bb.j
    i32 62, label %bb.b
    i32 60, label %bb.c
    i32 33, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4, !tbaa !8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %3, align 4, !tbaa !8
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.a = tail call ptr @__ctype_b_loc() #8        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11    ; 2 uses
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !35
  %i.h = and i16 %i.g, 2048
  %.not.i = icmp eq i16 %i.h, 0
  br i1 %.not.i, label %getnum.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %bb.f
  %i.i = phi ptr [ %i.q, %bb.f ], [ %i.b, %bb.d ]
  %i.j = phi i8 [ %i.x, %bb.f ], [ %i.d, %bb.d ]
  %i.k = phi ptr [ %i.s, %bb.f ], [ %i.c, %bb.d ]
  %.0.i = phi i32 [ %i.w, %bb.f ], [ 0, %bb.d ]   ; 2 uses
  %i.l = icmp sgt i32 %.0.i, 214748364
  br i1 %i.l, label %.preheader._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %4 = mul nsw i32 %.0.i, 10                      ; 3 uses
  %i.m = sext i8 %i.j to i32
  %i.n = sub i32 -2147483601, %i.m
  %i.o = icmp sgt i32 %4, %i.n
  br i1 %i.o, label %.preheader._crit_edge.i, label %bb.f

.preheader._crit_edge.i:                          ; preds = %bb.e, %.preheader.i
  %.pre13.pre-phi.i = phi i32 [ %4, %bb.e ], [ 2147483647, %.preheader.i ]
  %i.p = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.6) #7 ; 0 uses
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !12
  %.pre12.i = load ptr, ptr %i.a, align 8, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %.preheader._crit_edge.i, %bb.e
  %.pre-phi.i = phi i32 [ %.pre13.pre-phi.i, %.preheader._crit_edge.i ], [ %4, %bb.e ]
  %i.q = phi ptr [ %.pre12.i, %.preheader._crit_edge.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %.pre.i, %.preheader._crit_edge.i ], [ %i.k, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !12
  %i.t = load i8, ptr %i.r, align 1, !tbaa !11
  %i.u = sext i8 %i.t to i32
  %i.v = add i32 %.pre-phi.i, -48
  %i.w = add i32 %i.v, %i.u                       ; 2 uses
  %i.x = load i8, ptr %i.s, align 1, !tbaa !11    ; 2 uses
  %i.y = sext i8 %i.x to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !35
  %i.ab = and i16 %i.aa, 2048
  %.not11.i = icmp eq i16 %i.ab, 0
  br i1 %.not11.i, label %getnum.exit, label %.preheader.i, !llvm.loop !43

getnum.exit:                                      ; preds = %bb.f, %bb.d
  %.010.i = phi i32 [ 8, %bb.d ], [ %i.w, %bb.f ] ; 4 uses
  %i.ac = icmp sgt i32 %.010.i, 0
  %i.ad = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %.010.i)
  %i.ae = icmp samesign ult i32 %i.ad, 2
  %or.cond = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %getnum.exit
  %i.af = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %.010.i) #7 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %getnum.exit, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.010.i, ptr %i.ag, align 4, !tbaa !10
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.ah = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %1) #7
  %i.ai = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef %i.ah) #7 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.c, %bb.b
  ret void
}

declare void @luaL_pushresult(ptr noundef) local_unnamed_addr #1

declare i32 @luaL_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

declare ptr @lua_pushfstring(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @luaL_optinteger(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @luaL_checkstack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_pushnumber(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @lua_isnumber(ptr noundef, i32 noundef) local_unnamed_addr #1

declare double @lua_tonumber(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"Header", !5, i64 0, !5, i64 4}
!10 = !{!9, !5, i64 4}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!16, !13, i64 0}
!16 = !{!"luaL_Buffer", !13, i64 0, !5, i64 8, !17, i64 16, !6, i64 24}
!17 = !{!"p1 _ZTS9lua_State", !14, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !21}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !6, i64 0}
!27 = distinct !{!27, !19}
!28 = !{!29, !29, i64 0}
!29 = !{!"double", !6, i64 0}
!30 = distinct !{!30, !19}
!31 = !{!32, !32, i64 0}
!32 = !{!"long", !6, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 short", !14, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"short", !6, i64 0}
!37 = distinct !{!37, !19}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !21}
!40 = distinct !{!40, !21}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !19}
end_hunk_0
