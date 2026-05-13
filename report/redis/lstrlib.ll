inline.NumInlined: 39
inline.NumDeleted: 21
begin_hunk_0_@match_class:bb.a
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.u = zext nneg i32 %0 to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !22
  %i.x = and i16 %i.w, 2048
  %i.y = zext nneg i16 %i.x to i32
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.z = tail call ptr @__ctype_b_loc() #11       ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.ab = zext nneg i32 %0 to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !22
  %i.ae = and i16 %i.ad, 512
  %i.af = zext nneg i16 %i.ae to i32
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.ag = tail call ptr @__ctype_b_loc() #11      ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.ai = zext nneg i32 %0 to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !22
  %i.al = and i16 %i.ak, 4
  %i.am = zext nneg i16 %i.al to i32
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.an = tail call ptr @__ctype_b_loc() #11      ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !20
  %i.ap = zext nneg i32 %0 to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !22
  %i.as = and i16 %i.ar, 8192
  %i.at = zext nneg i16 %i.as to i32
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.au = tail call ptr @__ctype_b_loc() #11      ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20
  %i.aw = zext nneg i32 %0 to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !22
  %i.az = and i16 %i.ay, 256
  %i.ba = zext nneg i16 %i.az to i32
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.bb = tail call ptr @__ctype_b_loc() #11      ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.bd = zext nneg i32 %0 to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !22
  %i.bg = and i16 %i.bf, 8
  %i.bh = zext nneg i16 %i.bg to i32
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.bi = tail call ptr @__ctype_b_loc() #11      ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !20
  %i.bk = zext nneg i32 %0 to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !22
  %i.bn = and i16 %i.bm, 4096
  %i.bo = zext nneg i16 %i.bn to i32
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.bp = icmp eq i32 %0, 0
  %i.bq = zext i1 %i.bp to i32
  %.pre = tail call ptr @__ctype_b_loc() #11
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.br = icmp eq i32 %1, %0
  %i.bs = zext i1 %i.br to i32
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.pre-phi = phi ptr [ %.pre, %bb.k ], [ %i.bi, %bb.j ], [ %i.bb, %bb.i ], [ %i.au, %bb.h ], [ %i.an, %bb.g ], [ %i.ag, %bb.f ], [ %i.z, %bb.e ], [ %i.s, %bb.d ], [ %i.l, %bb.c ], [ %i.e, %bb.b ]
  %.026 = phi i32 [ %i.bq, %bb.k ], [ %i.bo, %bb.j ], [ %i.bh, %bb.i ], [ %i.ba, %bb.h ], [ %i.at, %bb.g ], [ %i.am, %bb.f ], [ %i.af, %bb.e ], [ %i.y, %bb.d ], [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %i.bt = load ptr, ptr %.pre-phi, align 8, !tbaa !20
  %i.bu = zext nneg i32 %1 to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !22
  %i.bx = and i16 %i.bw, 512
  %.not = icmp eq i16 %i.bx, 0
  %.not29 = icmp eq i32 %.026, 0
  %i.by = zext i1 %.not29 to i32
  %i.bz = select i1 %.not, i32 %i.by, i32 %.026
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i32 [ %i.bs, %bb.l ], [ %i.bz, %bb.m ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @push_onecapture(ptr noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %.not = icmp slt i32 %1, %i.b
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %3 to i64
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @lua_pushlstring(ptr noundef %i.e, ptr noundef %2, i64 noundef %i.h) #10
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.e, ptr noundef nonnull @.str.26) #10 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = sext i32 %1 to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  switch i64 %i.n, label %bb.h [
    i64 -1, label %bb.f
    i64 -2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.q = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.p, ptr noundef nonnull @.str.27) #10 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.u = load ptr, ptr %0, align 8, !tbaa !28
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = add i64 %i.v, 1
  %i.y = sub i64 %i.x, %i.w
  tail call void @lua_pushinteger(ptr noundef %i.s, i64 noundef %i.y) #10
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !35
  tail call void @lua_pushlstring(ptr noundef %i.aa, ptr noundef %i.ab, i64 noundef %i.n) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.d
  ret void
}

declare void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare double @luaL_checknumber(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @lua_pushvalue(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @luaL_addvalue(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

declare void @lua_pushcclosure(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @gmatch_aux(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.MatchState, align 8         ; 11 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call ptr @lua_tolstring(ptr noundef %0, i32 noundef -10003, ptr noundef nonnull %i.a) #10 ; 4 uses
  %i.c = call ptr @lua_tolstring(ptr noundef %0, i32 noundef -10004, ptr noundef null) #10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  store ptr %0, ptr %i.d, align 8, !tbaa !26
  store ptr %i.b, ptr %1, align 8, !tbaa !28
  %i.e = load i64, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !29
  %i.h = call i64 @lua_tointeger(ptr noundef %0, i32 noundef -10005) #10 ; 2 uses
  %.not35 = icmp samesign ugt i64 %i.h, %i.e
  br i1 %.not35, label %push_captures.exit.thread29, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %push_captures.exit.thread
  %.02436 = phi ptr [ %2, %.lr.ph ], [ %i.bf, %push_captures.exit.thread ] ; 6 uses
  store i32 0, ptr %i.i, align 8, !tbaa !30
  %i.j = call fastcc ptr @match(ptr noundef %1, ptr noundef %.02436, ptr noundef %i.c) ; 3 uses
  %.not26 = icmp eq ptr %i.j, null
  br i1 %.not26, label %push_captures.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.b to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp eq ptr %i.j, %.02436
  %i.o = zext i1 %i.n to i64
  %spec.select = add nsw i64 %i.m, %i.o
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %spec.select) #10
  call void @lua_replace(ptr noundef %0, i32 noundef -10005) #10
  %i.p = load i32, ptr %i.i, align 8, !tbaa !30   ; 3 uses
  %i.q = icmp eq i32 %i.p, 0
  %i.r = icmp ne ptr %.02436, null
  %or.cond.i = and i1 %i.r, %i.q
  %spec.select.i = select i1 %or.cond.i, i32 1, i32 %i.p ; 5 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !26
  call void @luaL_checkstack(ptr noundef %i.s, i32 noundef %spec.select.i, ptr noundef nonnull @.str.21) #10
  %i.t = icmp sgt i32 %spec.select.i, 0
  br i1 %i.t, label %.lr.ph.i.preheader, label %push_captures.exit.thread29

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.v = zext nneg i32 %spec.select.i to i64
  %i.w = load i32, ptr %i.i, align 8, !tbaa !30
  %.not.i.peel = icmp sgt i32 %i.w, 0
  br i1 %.not.i.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.preheader
  %i.x = ptrtoint ptr %.02436 to i64
  %i.y = sub i64 %i.k, %i.x
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !26
  call void @lua_pushlstring(ptr noundef %i.z, ptr noundef %.02436, i64 noundef %i.y) #10
  br label %push_onecapture.exit.peel

bb.e:                                             ; preds = %.lr.ph.i.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !33 ; 2 uses
  switch i64 %i.ab, label %bb.h [
    i64 -1, label %bb.g
    i64 -2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.ae = load ptr, ptr %1, align 8, !tbaa !28
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = add i64 %i.af, 1
  %i.ai = sub i64 %i.ah, %i.ag
  call void @lua_pushinteger(ptr noundef %i.ac, i64 noundef %i.ai) #10
  br label %push_onecapture.exit.peel

bb.g:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.ak = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.aj, ptr noundef nonnull @.str.27) #10 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !35
  call void @lua_pushlstring(ptr noundef %i.al, ptr noundef %i.am, i64 noundef %i.ab) #10
  br label %push_onecapture.exit.peel

push_onecapture.exit.peel:                        ; preds = %bb.h, %bb.f, %bb.d
  %exitcond.not.i.peel = icmp eq i32 %spec.select.i, 1
  br i1 %exitcond.not.i.peel, label %push_captures.exit.thread29, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %push_onecapture.exit.peel, %push_onecapture.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %push_onecapture.exit ], [ 1, %push_onecapture.exit.peel ] ; 3 uses
  %i.an = load i32, ptr %i.i, align 8, !tbaa !30
  %i.ao = sext i32 %i.an to i64
  %.not.i = icmp slt i64 %indvars.iv, %i.ao
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.aq = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.ap, ptr noundef nonnull @.str.26) #10 ; 0 uses
  br label %push_onecapture.exit

bb.j:                                             ; preds = %.lr.ph.i
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !33 ; 2 uses
  switch i64 %i.at, label %bb.m [
    i64 -1, label %bb.k
    i64 -2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.av = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.au, ptr noundef nonnull @.str.27) #10 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !35
  %i.ay = load ptr, ptr %1, align 8, !tbaa !28
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = add i64 %i.az, 1
  %i.bc = sub i64 %i.bb, %i.ba
  call void @lua_pushinteger(ptr noundef %i.aw, i64 noundef %i.bc) #10
  br label %push_onecapture.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !35
  call void @lua_pushlstring(ptr noundef %i.bd, ptr noundef %i.be, i64 noundef %i.at) #10
  br label %push_onecapture.exit

push_onecapture.exit:                             ; preds = %bb.i, %bb.l, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.v
  br i1 %exitcond.not.i, label %push_captures.exit.thread29, label %.lr.ph.i, !llvm.loop !54

push_captures.exit.thread:                        ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %.02436, i64 1 ; 2 uses
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !29
  %.not = icmp ugt ptr %i.bf, %i.bg
  br i1 %.not, label %push_captures.exit.thread29, label %bb.b, !llvm.loop !56

push_captures.exit.thread29:                      ; preds = %push_captures.exit.thread, %push_onecapture.exit, %push_onecapture.exit.peel, %bb.a, %bb.c
  %.2 = phi i32 [ %i.p, %bb.c ], [ 0, %bb.a ], [ 1, %push_onecapture.exit.peel ], [ %spec.select.i, %push_onecapture.exit ], [ 0, %push_captures.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %.2
}

declare ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @lua_tointeger(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_replace(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_call(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_gettable(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_isstring(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lua_typename(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #4

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_setmetatable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !9, i64 0}
end_hunk_0
