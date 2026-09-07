Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/ltablib?download=true
inline.NumInlined: 17
inline.NumDeleted: 5
begin_hunk_0_@tconcat:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tcreate(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 1) #3 ; 2 uses
  %i.b = tail call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 2, i64 noundef 0) #3 ; 2 uses
  %i.c = icmp ult i64 %i.a, 2147483648
  br i1 %i.c, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.13) #3 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = icmp ult i64 %i.b, 2147483648
  br i1 %i.e, label %bb.e, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.13) #3 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = trunc i64 %i.a to i32
  %i.h = trunc i64 %i.b to i32
  tail call void @lua_createtable(ptr noundef %0, i32 noundef %i.g, i32 noundef %i.h) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @tinsert(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @checktab(ptr noundef %0, i32 noundef 1, i32 noundef 7)
  %i.a = tail call i64 @luaL_len(ptr noundef %0, i32 noundef 1) #3
  %i.b = add i64 %i.a, 1                          ; 4 uses
  %i.c = tail call i32 @lua_gettop(ptr noundef %0) #3
  switch i32 %i.c, label %bb.e [
    i32 2, label %.loopexit
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 2) #3 ; 5 uses
  %i.e = add i64 %i.d, -1
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.14) #3 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = icmp sgt i64 %i.b, %i.d
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.023 = phi i64 [ %i.i, %.lr.ph ], [ %i.b, %bb.d ] ; 2 uses
  %i.i = add nsw i64 %.023, -1                    ; 3 uses
  %i.j = tail call i32 @lua_geti(ptr noundef %0, i32 noundef 1, i64 noundef %i.i) #3 ; 0 uses
  tail call void @lua_seti(ptr noundef %0, i32 noundef 1, i64 noundef %.023) #3
  %i.k = icmp sgt i64 %i.i, %i.d
  br i1 %i.k, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.l = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.15) #3
  br label %bb.f

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.a
  %.020 = phi i64 [ %i.b, %bb.a ], [ %i.d, %bb.d ], [ %i.d, %.lr.ph ]
  tail call void @lua_seti(ptr noundef %0, i32 noundef 1, i64 noundef %.020) #3
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.e
  %.021 = phi i32 [ %i.l, %bb.e ], [ 0, %.loopexit ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tpack(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @lua_gettop(ptr noundef %0) #3 ; 4 uses
  tail call void @lua_createtable(ptr noundef %0, i32 noundef %i.a, i32 noundef 1) #3
  tail call void @lua_rotate(ptr noundef %0, i32 noundef 1, i32 noundef 1) #3
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.c, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  tail call void @lua_seti(ptr noundef %0, i32 noundef 1, i64 noundef %indvars.iv) #3
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.d = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.e = sext i32 %i.a to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.e) #3
  tail call void @lua_setfield(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.16) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @tunpack(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @checktab(ptr noundef %0, i32 noundef 1, i32 noundef 5)
  %i.a = tail call i64 @luaL_len(ptr noundef %0, i32 noundef 1) #3
  %i.b = tail call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 2, i64 noundef 1) #3 ; 4 uses
  %i.c = tail call i32 @lua_type(ptr noundef %0, i32 noundef 3) #3
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 3) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.g = icmp sgt i64 %i.b, %i.f
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sub i64 %i.f, %i.b                       ; 2 uses
  %i.i = icmp ugt i64 %i.h, 2147483646
  br i1 %i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = trunc nuw nsw i64 %i.h to i32
  %i.k = add nuw nsw i32 %i.j, 1                  ; 2 uses
  %i.l = tail call i32 @lua_checkstack(ptr noundef %0, i32 noundef %i.k) #3
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.critedge, label %.preheader, !prof !10

.preheader:                                       ; preds = %bb.e
  %i.m = icmp slt i64 %i.b, %i.f
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.critedge:                                        ; preds = %bb.d, %bb.e
  %i.n = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.17) #3
  br label %bb.f

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.027 = phi i64 [ %i.p, %.lr.ph ], [ %i.b, %.preheader ] ; 2 uses
  %i.o = tail call i32 @lua_geti(ptr noundef %0, i32 noundef 1, i64 noundef %.027) #3 ; 0 uses
  %i.p = add i64 %.027, 1                         ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.q = tail call i32 @lua_geti(ptr noundef %0, i32 noundef 1, i64 noundef %i.f) #3 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %.critedge
  %.023 = phi i32 [ %i.k, %._crit_edge ], [ %i.n, %.critedge ], [ 0, %bb.c ]
  ret i32 %.023
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tremove(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @checktab(ptr noundef %0, i32 noundef 1, i32 noundef 7)
  %i.a = tail call i64 @luaL_len(ptr noundef %0, i32 noundef 1) #3 ; 6 uses
  %i.b = tail call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 2, i64 noundef %i.a) #3 ; 6 uses
  %.not = icmp ne i64 %i.b, %i.a
  %i.c = add i64 %i.b, -1
  %.not22 = icmp ugt i64 %i.c, %i.a
  %or.cond = and i1 %.not, %.not22
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.14) #3 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i32 @lua_geti(ptr noundef %0, i32 noundef 1, i64 noundef %i.b) #3 ; 0 uses
  %i.f = icmp slt i64 %i.b, %i.a
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.023 = phi i64 [ %i.g, %.lr.ph ], [ %i.b, %bb.c ] ; 2 uses
  %i.g = add nsw i64 %.023, 1                     ; 3 uses
  %i.h = tail call i32 @lua_geti(ptr noundef %0, i32 noundef 1, i64 noundef %i.g) #3 ; 0 uses
  tail call void @lua_seti(ptr noundef %0, i32 noundef 1, i64 noundef %.023) #3
  %exitcond.not = icmp eq i64 %i.g, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0.lcssa = phi i64 [ %i.b, %bb.c ], [ %i.a, %.lr.ph ]
  tail call void @lua_pushnil(ptr noundef %0) #3
  tail call void @lua_seti(ptr noundef %0, i32 noundef 1, i64 noundef %.0.lcssa) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tmove(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 2) #3 ; 7 uses
  %i.b = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 3) #3 ; 4 uses
  %i.c = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 4) #3 ; 5 uses
  %i.d = tail call i32 @lua_type(ptr noundef %0, i32 noundef 5) #3
  %i.e = icmp sgt i32 %i.d, 0                     ; 2 uses
  %i.f = select i1 %i.e, i32 5, i32 1             ; 6 uses
  %i.g = tail call i32 @lua_type(ptr noundef %0, i32 noundef 1) #3
  %.not.i = icmp eq i32 %i.g, 5
  br i1 %.not.i, label %checktab.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @lua_getmetatable(ptr noundef %0, i32 noundef 1) #3
  %.not20.i = icmp eq i32 %i.h, 0
  br i1 %.not20.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @lua_pushstring(ptr noundef %0, ptr noundef nonnull @.str.9) #3 ; 0 uses
  %i.j = tail call i32 @lua_rawget(ptr noundef %0, i32 noundef -2) #3
  %.not26.i = icmp eq i32 %i.j, 0
  br i1 %.not26.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lua_settop(ptr noundef %0, i32 noundef -3) #3
  br label %checktab.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 1, i32 noundef 5) #3
  br label %checktab.exit

checktab.exit:                                    ; preds = %bb.a, %bb.d, %bb.e
  %i.k = tail call i32 @lua_type(ptr noundef %0, i32 noundef range(i32 1, 6) %i.f) #3
  %.not.i53 = icmp eq i32 %i.k, 5
  br i1 %.not.i53, label %checktab.exit55, label %bb.f

bb.f:                                             ; preds = %checktab.exit
  %i.l = tail call i32 @lua_getmetatable(ptr noundef %0, i32 noundef range(i32 1, 6) %i.f) #3
  %.not20.i54 = icmp eq i32 %i.l, 0
  br i1 %.not20.i54, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @lua_pushstring(ptr noundef %0, ptr noundef nonnull @.str.10) #3 ; 0 uses
  %i.n = tail call i32 @lua_rawget(ptr noundef %0, i32 noundef -2) #3
  %.not27.i = icmp eq i32 %i.n, 0
  br i1 %.not27.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lua_settop(ptr noundef %0, i32 noundef -3) #3
  br label %checktab.exit55

bb.i:                                             ; preds = %bb.g, %bb.f
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef range(i32 1, 6) %i.f, i32 noundef 5) #3
  br label %checktab.exit55

checktab.exit55:                                  ; preds = %checktab.exit, %bb.h, %bb.i
  %.not = icmp slt i64 %i.b, %i.a
  br i1 %.not, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %checktab.exit55
  %i.o = icmp sgt i64 %i.a, 0
  %i.p = add nsw i64 %i.a, 9223372036854775807
  %i.q = icmp slt i64 %i.b, %i.p
  %i.r = select i1 %i.o, i1 true, i1 %i.q
  br i1 %i.r, label %bb.l, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.s = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.18) #3 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = sub nsw i64 %i.b, %i.a                   ; 5 uses
  %i.u = sub i64 9223372036854775807, %i.t
  %.not49 = icmp sgt i64 %i.c, %i.u
  br i1 %.not49, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %bb.l
  %i.v = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.19) #3 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.w = icmp sle i64 %i.c, %i.b
  %.not50 = icmp sgt i64 %i.c, %i.a
  %or.cond = select i1 %i.w, i1 %.not50, i1 false
  br i1 %or.cond, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  br i1 %i.e, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.x = tail call i32 @lua_compare(ptr noundef %0, i32 noundef 1, i32 noundef 5, i32 noundef 0) #3
  %.not51 = icmp eq i32 %i.x, 0
  br i1 %.not51, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.n
  %.not5258 = icmp slt i64 %i.t, 0
  br i1 %.not5258, label %.loopexit, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.q, %.lr.ph60
  %.059 = phi i64 [ %i.ab, %.lr.ph60 ], [ 0, %bb.q ] ; 4 uses
  %i.y = add nsw i64 %.059, %i.a
  %i.z = tail call i32 @lua_geti(ptr noundef %0, i32 noundef 1, i64 noundef %i.y) #3 ; 0 uses
  %i.aa = add nsw i64 %.059, %i.c
  tail call void @lua_seti(ptr noundef %0, i32 noundef %i.f, i64 noundef %i.aa) #3
  %i.ab = add nuw i64 %.059, 1
  %exitcond.not = icmp eq i64 %.059, %i.t
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph60

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ac = icmp sgt i64 %i.t, -1
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.r, %.lr.ph
  %.157 = phi i64 [ %i.ag, %.lr.ph ], [ %i.t, %bb.r ] ; 4 uses
  %i.ad = add nsw i64 %.157, %i.a
  %i.ae = tail call i32 @lua_geti(ptr noundef %0, i32 noundef 1, i64 noundef %i.ad) #3 ; 0 uses
  %i.af = add nsw i64 %.157, %i.c
  tail call void @lua_seti(ptr noundef %0, i32 noundef %i.f, i64 noundef %i.af) #3
  %i.ag = add nsw i64 %.157, -1
  %.not66 = icmp eq i64 %.157, 0
  br i1 %.not66, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph60, %bb.r, %bb.q, %checktab.exit55
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef %i.f) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sort(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @checktab(ptr noundef %0, i32 noundef 1, i32 noundef 7)
  %i.a = tail call i64 @luaL_len(ptr noundef %0, i32 noundef 1) #3 ; 3 uses
  %i.b = icmp sgt i64 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %i.a, 2147483647
  br i1 %i.c, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.20) #3 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = tail call i32 @lua_type(ptr noundef %0, i32 noundef 2) #3
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 2, i32 noundef 6) #3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @lua_settop(ptr noundef %0, i32 noundef 2) #3
  %i.g = trunc i64 %i.a to i32
  tail call fastcc void @auxsort(ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @checktab(ptr noundef %0, i32 noundef range(i32 1, 6) %1, i32 noundef range(i32 1, 8) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef %1) #3 ; 2 uses
  %.not = icmp eq i32 %i.a, 5
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @lua_getmetatable(ptr noundef %0, i32 noundef %1) #3
  %.not20 = icmp eq i32 %i.b, 0
  br i1 %.not20, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %2, 1
  %.not21 = icmp eq i32 %i.c, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @lua_pushstring(ptr noundef %0, ptr noundef nonnull @.str.9) #3 ; 0 uses
  %i.e = tail call i32 @lua_rawget(ptr noundef %0, i32 noundef -2) #3
  %.not26 = icmp eq i32 %i.e, 0
  br i1 %.not26, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 2, %bb.d ], [ 1, %bb.c ]        ; 3 uses
  %i.f = and i32 %2, 2
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = add nuw nsw i32 %.0, 1
  %i.h = tail call ptr @lua_pushstring(ptr noundef %0, ptr noundef nonnull @.str.10) #3 ; 0 uses
  %i.i = xor i32 %.0, -1
  %i.j = tail call i32 @lua_rawget(ptr noundef %0, i32 noundef %i.i) #3
  %.not27 = icmp eq i32 %i.j, 0
  br i1 %.not27, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %i.g, %bb.f ], [ %.0, %bb.e ]   ; 3 uses
  %i.k = icmp samesign ult i32 %2, 4
  %i.l = icmp eq i32 %i.a, 4
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = add nuw nsw i32 %.1, 1
  %i.n = tail call ptr @lua_pushstring(ptr noundef %0, ptr noundef nonnull @.str.11) #3 ; 0 uses
  %i.o = xor i32 %.1, -1
  %i.p = tail call i32 @lua_rawget(ptr noundef %0, i32 noundef %i.o) #3
  %.not28 = icmp eq i32 %i.p, 0
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i32 [ %.1, %bb.g ], [ %i.m, %bb.h ]
  %i.q = xor i32 %.2, -1
  tail call void @lua_settop(ptr noundef %0, i32 noundef %i.q) #3
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef %1, i32 noundef 5) #3
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.a
  ret void
}

declare i64 @luaL_len(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @luaL_optlstring(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @luaL_optinteger(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @luaL_buffinit(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @luaL_addlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @luaL_pushresult(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @lua_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_getmetatable(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @luaL_checktype(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lua_pushstring(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lua_rawget(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_geti(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lua_isstring(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @luaL_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @lua_typename(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @luaL_addvalue(ptr noundef) local_unnamed_addr #1

declare i64 @luaL_checkinteger(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @luaL_argerror(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lua_gettop(ptr noundef) local_unnamed_addr #1

declare void @lua_seti(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @lua_rotate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lua_checkstack(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_pushnil(ptr noundef) local_unnamed_addr #1

declare i32 @lua_compare(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_pushvalue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @auxsort(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %1, %2
  br i1 %i.a, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.af
  %.07596 = phi i32 [ %.2, %bb.af ], [ %3, %bb.a ] ; 5 uses
  %.07695 = phi i32 [ %.177, %bb.af ], [ %2, %bb.a ] ; 8 uses
  %.07994 = phi i32 [ %.180, %bb.af ], [ %1, %bb.a ] ; 9 uses
  %i.b = zext i32 %.07994 to i64                  ; 4 uses
  %i.c = tail call i32 @lua_geti(ptr noundef %0, i32 noundef 1, i64 noundef %i.b) #3 ; 0 uses
  %i.d = zext i32 %.07695 to i64                  ; 4 uses
  %i.e = tail call i32 @lua_geti(ptr noundef %0, i32 noundef 1, i64 noundef %i.d) #3 ; 0 uses
  %i.f = tail call fastcc i32 @sort_comp(ptr noundef %0, i32 noundef -1, i32 noundef -2)
  %.not = icmp eq i32 %i.f, 0
end_hunk_0
