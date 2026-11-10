Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lib_package?download=true
inline.NumInlined: 22
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@luaL_checklstring

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @ll_loadfunc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8
  %i.b = icmp ugt i64 %i.a, 4095
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.22, i64 noundef 13) #7
  br label %.thread42

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %1) #7 ; 0 uses
  tail call void @lua_gettable(ptr noundef %0, i32 noundef -10000) #7
  %i.d = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #7
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @lua_touserdata(ptr noundef %0, i32 noundef -1) #7
  br label %ll_register.exit

bb.e:                                             ; preds = %bb.c
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #7
  %i.g = tail call ptr @lua_newuserdata(ptr noundef %0, i64 noundef 8) #7 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !10
  tail call void @luaL_setmetatable(ptr noundef %0, ptr noundef nonnull @.str) #7
  %i.h = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %1) #7 ; 0 uses
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -2) #7
  tail call void @lua_settable(ptr noundef %0, i32 noundef -10000) #7
  br label %ll_register.exit

ll_register.exit:                                 ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.g, %bb.e ], [ %i.f, %bb.d ] ; 5 uses
  %i.i = load ptr, ptr %.0.i, align 8, !tbaa !10  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %.thread

bb.f:                                             ; preds = %ll_register.exit
  %i.k = load i8, ptr %2, align 1, !tbaa !11
  %.not44 = icmp eq i8 %i.k, 42
  %i.l = select i1 %.not44, i32 258, i32 2
  %i.m = tail call ptr @dlopen(ptr noundef nonnull %1, i32 noundef %i.l) #7 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread41, label %bb.g

.thread41:                                        ; preds = %bb.f
  %i.o = tail call ptr @dlerror() #7
  tail call void @lua_pushstring(ptr noundef %0, ptr noundef %i.o) #7
  store ptr null, ptr %.0.i, align 8, !tbaa !10
  br label %.thread42

bb.g:                                             ; preds = %bb.f
  store ptr %i.m, ptr %.0.i, align 8, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %ll_register.exit, %bb.g
  %i.p = phi ptr [ %i.i, %ll_register.exit ], [ %i.m, %bb.g ]
  %i.q = load i8, ptr %2, align 1, !tbaa !11
  %i.r = icmp eq i8 %i.q, 42
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef 1) #7
  br label %.thread42

bb.i:                                             ; preds = %.thread
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 45) #8 ; 2 uses
  %.not.i38 = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %spec.select.i = select i1 %.not.i38, ptr %2, ptr %i.t
  %i.u = tail call ptr @luaL_gsub(ptr noundef %0, ptr noundef nonnull %spec.select.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #7
  %i.v = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %i.u) #7
  tail call void @lua_remove(ptr noundef %0, i32 noundef -2) #7
  %.pre = load ptr, ptr %.0.i, align 8, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.w = phi ptr [ %.pre, %bb.j ], [ %i.p, %bb.i ]
  %i.x = phi ptr [ %i.v, %bb.j ], [ %2, %bb.i ]
  %i.y = tail call ptr @dlsym(ptr noundef %i.w, ptr noundef %i.x) #7 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.l, label %ll_sym.exit

ll_sym.exit:                                      ; preds = %bb.k
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull %i.y, i32 noundef 0) #7
  br label %.thread42

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call ptr @dlerror() #7
  tail call void @lua_pushstring(ptr noundef %0, ptr noundef %i.aa) #7
  br i1 %.not, label %bb.m, label %.thread42

bb.m:                                             ; preds = %bb.l
  %i.ab = load ptr, ptr %.0.i, align 8, !tbaa !10
  %i.ac = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 45) #8 ; 2 uses
  %.not.i39 = icmp eq ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %spec.select.i40 = select i1 %.not.i39, ptr %2, ptr %i.ad
  %i.ae = tail call ptr @luaL_gsub(ptr noundef %0, ptr noundef nonnull %spec.select.i40, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #7
  %i.af = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %i.ae) #7
  tail call void @lua_remove(ptr noundef %0, i32 noundef -2) #7
  %i.ag = tail call ptr @dlsym(ptr noundef %i.ab, ptr noundef %i.af) #7 ; 2 uses
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #7
  %.not36 = icmp eq ptr %i.ag, null
  br i1 %.not36, label %.thread42, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call i32 @luaL_loadbuffer(ptr noundef %0, ptr noundef nonnull %i.ag, i64 noundef -1, ptr noundef nonnull %2) #7
  %.not37 = icmp eq i32 %i.ah, 0
  %. = select i1 %.not37, i32 0, i32 3
  br label %.thread42

.thread42:                                        ; preds = %bb.m, %bb.l, %bb.n, %.thread41, %ll_sym.exit, %bb.h, %bb.b
  %.2 = phi i32 [ 1, %bb.b ], [ 1, %.thread41 ], [ 0, %bb.h ], [ 0, %ll_sym.exit ], [ %., %bb.n ], [ 2, %bb.l ], [ 2, %bb.m ]
  ret i32 %.2
}

declare void @lua_pushnil(ptr noundef) local_unnamed_addr #2

declare void @lua_insert(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_pushstring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare void @lua_pushboolean(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_pushcclosure(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @luaL_loadbuffer(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lua_pushfstring(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @lua_gettable(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lua_touserdata(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lua_newuserdata(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @luaL_setmetatable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_settable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dlerror() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @luaL_gsub(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @searchpath(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.luaL_Buffer, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %5) #7
  %i.a = load i8, ptr %3, align 1, !tbaa !11
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call ptr @luaL_gsub(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %4) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.019 = phi ptr [ %i.b, %bb.b ], [ %1, %bb.a ]
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %bb.c
  %.013.i = phi ptr [ %2, %bb.c ], [ %.013.i.be, %.backedge ] ; 7 uses
  %i.c = load i8, ptr %.013.i, align 1, !tbaa !11
  switch i8 %i.c, label %bb.f [
    i8 59, label %bb.e
    i8 0, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  br label %.backedge

.backedge:                                        ; preds = %bb.e, %bb.i
  %.013.i.be = phi ptr [ %i.d, %bb.e ], [ %.0.i, %bb.i ]
  br label %bb.d, !llvm.loop !19

bb.f:                                             ; preds = %bb.d
  %i.e = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.013.i, i32 noundef 59) #8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.013.i) #8
  %i.h = getelementptr inbounds nuw i8, ptr %.013.i, i64 %i.g
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi ptr [ %i.h, %bb.g ], [ %i.e, %bb.f ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i to i64
  %i.j = ptrtoint ptr %.013.i to i64
  %i.k = sub i64 %i.i, %i.j
  call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %.013.i, i64 noundef %i.k) #7
  %i.l = call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #7
  %i.m = call ptr @luaL_gsub(ptr noundef %0, ptr noundef %i.l, ptr noundef nonnull @.str.30, ptr noundef %.019) #7 ; 3 uses
  call void @lua_remove(ptr noundef %0, i32 noundef -2) #7
  %i.n = call noalias ptr @fopen64(ptr noundef readonly %i.m, ptr noundef nonnull @.str.33) ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  %i.p = call i32 @fclose(ptr noundef nonnull %i.n) ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.q = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %i.m) #7 ; 0 uses
  call void @lua_remove(ptr noundef %0, i32 noundef -2) #7
  call void @luaL_addvalue(ptr noundef nonnull %5) #7
  br label %.backedge

bb.j:                                             ; preds = %bb.d
  call void @luaL_pushresult(ptr noundef nonnull %5) #7
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %.2 = phi ptr [ %i.m, %.thread ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret ptr %.2
}

declare ptr @luaL_optlstring(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @luaL_buffinit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @luaL_addvalue(ptr noundef) local_unnamed_addr #2

declare void @luaL_pushresult(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

declare void @luaL_checktype(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_getmetatable(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_setmetatable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @lj_cf_package_loader_preload(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #7 ; 5 uses
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10001, ptr noundef nonnull @.str.16) #7
  %i.b = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #7
  %i.c = icmp eq i32 %i.b, 5
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.35) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef %i.a) #7
  %i.e = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #7
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 45) #8 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %spec.select.i = select i1 %.not.i, ptr %i.a, ptr %i.h
  %i.i = tail call ptr @luaL_gsub(ptr noundef %0, ptr noundef nonnull %spec.select.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #7
  %i.j = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %i.i) #7
  tail call void @lua_remove(ptr noundef %0, i32 noundef -2) #7
  %i.k = tail call ptr @dlsym(ptr noundef null, ptr noundef %i.j) #7 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @luaL_loadbuffer(ptr noundef %0, ptr noundef nonnull %i.k, i64 noundef -1, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.a) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lj_cf_package_loader_lua(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #7
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10001, ptr noundef nonnull @.str.5) #7
  %i.b = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #7 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.split10.i, label %findfile.exit

.split10.i:                                       ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.5) #7 ; 0 uses
  br label %findfile.exit

findfile.exit:                                    ; preds = %bb.a, %.split10.i
  %i.e = tail call fastcc ptr @searchpath(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29) ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %findfile.exit
  %i.g = tail call i32 @luaL_loadfile(ptr noundef %0, ptr noundef nonnull %i.e) #7
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #7
  %i.i = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #7
  %i.j = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef %i.h, ptr noundef nonnull %i.e, ptr noundef %i.i) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %findfile.exit
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lj_cf_package_loader_c(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #7 ; 2 uses
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10001, ptr noundef nonnull @.str.8) #7
  %i.b = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #7 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.split10.i, label %findfile.exit

.split10.i:                                       ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.8) #7 ; 0 uses
  br label %findfile.exit

findfile.exit:                                    ; preds = %bb.a, %.split10.i
  %i.e = tail call fastcc ptr @searchpath(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29) ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %findfile.exit
  %i.g = tail call fastcc i32 @ll_loadfunc(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.a, i32 noundef 0)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #7
  %i.i = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #7
  %i.j = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef %i.h, ptr noundef nonnull %i.e, ptr noundef %i.i) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %findfile.exit
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @lj_cf_package_loader_croot(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #7 ; 5 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 46) #8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.f) #7
  %i.g = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #7
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10001, ptr noundef nonnull @.str.8) #7
  %i.h = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #7 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.split10.i, label %findfile.exit

.split10.i:                                       ; preds = %bb.b
  %i.j = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.8) #7 ; 0 uses
  br label %findfile.exit

findfile.exit:                                    ; preds = %bb.b, %.split10.i
  %i.k = tail call fastcc ptr @searchpath(ptr noundef %0, ptr noundef %i.g, ptr noundef %i.h, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29) ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.c

bb.c:                                             ; preds = %findfile.exit
  %i.m = tail call fastcc i32 @ll_loadfunc(ptr noundef %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, i32 noundef 0)
  switch i32 %i.m, label %bb.d [
    i32 0, label %bb.f
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #7
  %i.o = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #7
  %i.p = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef %i.n, ptr noundef nonnull %i.k, ptr noundef %i.o) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.q = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull %i.a, ptr noundef nonnull %i.k) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %findfile.exit, %bb.a, %bb.e
  %.0 = phi i32 [ 1, %findfile.exit ], [ 0, %bb.a ], [ 1, %bb.e ], [ 1, %bb.c ]
  ret i32 %.0
}

declare i32 @luaL_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @luaL_loadfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef i32 @lj_cf_package_module(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.lua_Debug, align 8          ; 4 uses
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #7 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  tail call void @luaL_pushmodule(ptr noundef %0, ptr noundef %i.a, i32 noundef 1) #7
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.45) #7
  %i.f = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #7
  %i.g = icmp eq i32 %i.f, 0
  tail call void @lua_settop(ptr noundef nonnull %0, i32 noundef -2) #7
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @lua_pushvalue(ptr noundef nonnull %0, i32 noundef -1) #7
  tail call void @lua_setfield(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.46) #7
  tail call void @lua_pushstring(ptr noundef nonnull %0, ptr noundef %i.a) #7
  tail call void @lua_setfield(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.45) #7
  %i.h = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 46) #8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.0.i = select i1 %i.i, ptr %i.a, ptr %i.j
  %i.k = ptrtoint ptr %.0.i to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @lua_pushlstring(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.m) #7
  tail call void @lua_setfield(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.47) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.n = ptrtoint ptr %i.c to i64
  %i.o = ptrtoint ptr %i.e to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 3
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  tail call void @lua_pushvalue(ptr noundef nonnull %0, i32 noundef -1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.s = call i32 @lua_getstack(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %1) #7
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = call i32 @lua_getinfo(ptr noundef nonnull %0, ptr noundef nonnull @.str.48, ptr noundef nonnull %1) #7
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call i32 @lua_iscfunction(ptr noundef nonnull %0, i32 noundef -1) #7
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %setfenv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.x = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.49) #7 ; 0 uses
  br label %setfenv.exit

setfenv.exit:                                     ; preds = %bb.e, %bb.f
  call void @lua_pushvalue(ptr noundef nonnull %0, i32 noundef -2) #7
  %i.y = call i32 @lua_setfenv(ptr noundef nonnull %0, i32 noundef -2) #7 ; 0 uses
  call void @lua_settop(ptr noundef nonnull %0, i32 noundef -2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %.not6.i = icmp slt i32 %i.r, 2
  br i1 %.not6.i, label %dooptions.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %setfenv.exit, %.lr.ph.i
  %.07.i = phi i32 [ %i.z, %.lr.ph.i ], [ 2, %setfenv.exit ] ; 3 uses
  call void @lua_pushvalue(ptr noundef nonnull %0, i32 noundef %.07.i) #7
  call void @lua_pushvalue(ptr noundef nonnull %0, i32 noundef -2) #7
  call void @lua_call(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0) #7
  %i.z = add nuw i32 %.07.i, 1
  %exitcond.not.i = icmp eq i32 %.07.i, %i.r
  br i1 %exitcond.not.i, label %dooptions.exit, label %.lr.ph.i, !llvm.loop !20

dooptions.exit:                                   ; preds = %.lr.ph.i, %setfenv.exit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lj_cf_package_require(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #7 ; 9 uses
  tail call void @lua_settop(ptr noundef %0, i32 noundef 1) #7
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str.13) #7
  tail call void @lua_getfield(ptr noundef %0, i32 noundef 2, ptr noundef %i.a) #7
  %i.b = tail call i32 @lua_toboolean(ptr noundef %0, i32 noundef -1) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = icmp eq i64 %i.f, -9151314442816847757
  br i1 %i.g, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.50, ptr noundef %i.a) #7 ; 0 uses
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10001, ptr noundef nonnull @.str.3) #7
  %i.i = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #7
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.51) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.52, i64 noundef 0) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ %i.s, %bb.m ]     ; 2 uses
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -2, i32 noundef %.0) #7
  %i.l = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #7
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -2, ptr noundef null) #7
  %i.o = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef %i.a, ptr noundef %i.n) #7 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @lua_pushstring(ptr noundef %0, ptr noundef %i.a) #7
  tail call void @lua_call(ptr noundef %0, i32 noundef 1, i32 noundef 1) #7
  %i.p = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #7
  %i.q = icmp eq i32 %i.p, 6
  br i1 %i.q, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @lua_isstring(ptr noundef %0, i32 noundef -1) #7
  %.not44 = icmp eq i32 %i.r, 0
  br i1 %.not44, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lua_concat(ptr noundef %0, i32 noundef 2) #7
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.s = add nuw nsw i32 %.0, 1
  br label %bb.g

bb.n:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %i.t, align 8, !tbaa !18
  store i64 -9151314442816847757, ptr %i.u, align 8, !tbaa !11
  tail call void @lua_setfield(ptr noundef %0, i32 noundef 2, ptr noundef %i.a) #7
  tail call void @lua_pushstring(ptr noundef %0, ptr noundef %i.a) #7
  tail call void @lua_call(ptr noundef %0, i32 noundef 1, i32 noundef 1) #7
  %i.w = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lua_setfield(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.a) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @lua_getfield(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.a) #7
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !11
  %i.ab = icmp eq i64 %i.aa, -9151314442816847757
  br i1 %i.ab, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @lua_pushboolean(ptr noundef nonnull %0, i32 noundef 1) #7
  tail call void @lua_pushvalue(ptr noundef nonnull %0, i32 noundef -1) #7
  tail call void @lua_setfield(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.a) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.b, %bb.c
  ret i32 1
}

declare void @luaL_pushmodule(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @lua_getstack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lua_getinfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lua_iscfunction(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_setfenv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_call(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_rawgeti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_isstring(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_concat(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"long", !5, i64 0}
!14 = !{!"GCRef", !13, i64 0}
!15 = !{!"MRef", !13, i64 0}
!16 = !{!"p1 _ZTS6TValue", !9, i64 0}
!17 = !{!"lua_State", !14, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !15, i64 16, !14, i64 24, !16, i64 32, !16, i64 40, !15, i64 48, !15, i64 56, !14, i64 64, !14, i64 72, !9, i64 80, !6, i64 88}
!18 = !{!17, !16, i64 40}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = !{!17, !16, i64 32}
end_hunk_0
