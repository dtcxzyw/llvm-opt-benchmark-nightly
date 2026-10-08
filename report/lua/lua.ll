Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lua?download=true
inline.NumInlined: 34
inline.NumDeleted: 23
begin_hunk_0_@pmain:bb.a
  %i.eg = tail call fastcc i32 @docall(ptr noundef %0, i32 noundef %i.dz, i32 noundef -1)
  %.not.i12.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i12.i, label %handle_script.exit.thread, label %handle_script.exit

handle_script.exit:                               ; preds = %.tail17.i, %bb.ar
  %i.eh = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #11 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  %spec.store.select.i.i = select i1 %i.ei, ptr @.str.45, ptr %i.eh
  %i.ej = load ptr, ptr @progname, align 8, !tbaa !11
  tail call fastcc void @l_message(ptr noundef %i.ej, ptr noundef nonnull %spec.store.select.i.i)
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #11
  br label %runargs.exit.thread

handle_script.exit.thread:                        ; preds = %bb.ar, %runargs.exit
  %i.ek = and i32 %.043.i, 2
  %.not35 = icmp eq i32 %i.ek, 0
  br i1 %.not35, label %bb.at, label %bb.as

bb.as:                                            ; preds = %handle_script.exit.thread
  tail call fastcc void @doREPL(ptr noundef %0)
  br label %bb.ax

bb.at:                                            ; preds = %handle_script.exit.thread
  %i.el = icmp slt i32 %.051, 1
  %i.em = and i32 %.043.i, 12
  %.not36 = icmp eq i32 %i.em, 0
  %or.cond = select i1 %i.el, i1 %.not36, i1 false
  br i1 %or.cond, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.en = tail call i32 @isatty(i32 noundef 0) #11
  %.not37 = icmp eq i32 %i.en, 0
  br i1 %.not37, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eo = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.ep = tail call i64 @fwrite(ptr noundef nonnull @.str.8, i64 noundef 1, i64 noundef 51, ptr noundef %i.eo) ; 0 uses
  %i.eq = load ptr, ptr @stdout, align 8, !tbaa !13
  %fputc.i46 = tail call i32 @fputc(i32 10, ptr %i.eq) ; 0 uses
  %i.er = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.es = tail call i32 @fflush(ptr noundef %i.er) ; 0 uses
  tail call fastcc void @doREPL(ptr noundef %0)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  tail call fastcc void @dofile(ptr noundef %0, ptr noundef null)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %bb.aw, %bb.av, %bb.as
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef 1) #11
  br label %runargs.exit.thread

runargs.exit.thread:                              ; preds = %dolibrary.exit.i, %dolibrary.exit.thread30.i, %handle_script.exit, %handle_luainit.exit.thread54, %handle_luainit.exit, %bb.ax, %bb.s
  %.0 = phi i32 [ 0, %bb.s ], [ 0, %handle_luainit.exit ], [ 0, %handle_luainit.exit.thread54 ], [ 1, %bb.ax ], [ 0, %handle_script.exit ], [ 0, %dolibrary.exit.thread30.i ], [ 0, %dolibrary.exit.i ]
  ret i32 %.0
}

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @lua_pushlightuserdata(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lua_pcallk(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lua_toboolean(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #4

declare i64 @lua_tointegerx(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lua_touserdata(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @luaL_checkversion_(ptr noundef, double noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_usage(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.b = load ptr, ptr @progname, align 8, !tbaa !11
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.1, ptr noundef %i.b) #12 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.e = tail call i32 @fflush(ptr noundef %i.d)  ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14    ; 2 uses
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !13
  %switch.selectcmp.case1 = icmp eq i8 %i.g, 101
  %switch.selectcmp.case2 = icmp eq i8 %i.g, 108
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.i = select i1 %switch.selectcmp, ptr @.str.5, ptr @.str.6
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %0) #12 ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.l = tail call i32 @fflush(ptr noundef %i.k)  ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.n = load ptr, ptr @progname, align 8, !tbaa !11
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.7, ptr noundef %i.n) #12 ; 0 uses
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.q = tail call i32 @fflush(ptr noundef %i.p)  ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @no_getenv(ptr nofree readnone captures(none) %0) #5 {
bb.a:
  ret ptr null
}

declare void @lua_pushboolean(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) #6

declare void @luaL_openselectedlibs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @doREPL(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 4 uses
  %i.b = alloca [512 x i8], align 16              ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = load ptr, ptr @progname, align 8, !tbaa !11
  store ptr null, ptr @progname, align 8, !tbaa !11
  %i.f = load ptr, ptr @l_getenv, align 8, !tbaa !15
  %i.g = tail call ptr %i.f(ptr noundef nonnull @.str.26) #11, !callees !16, !inline_history !23 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %spec.store.select.i = select i1 %i.h, ptr @.str.27, ptr %i.g ; 2 uses
  %i.i = tail call ptr @dlopen(ptr noundef nonnull %spec.store.select.i, i32 noundef 2) #11 ; 4 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @dlsym(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.28) #11 ; 2 uses
  %.not14.i = icmp eq ptr %i.j, null
  br i1 %.not14.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.4, ptr %i.j, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = tail call ptr @dlsym(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.29) #11
  store ptr %i.k, ptr @l_readline, align 8, !tbaa !15
  %i.l = tail call ptr @dlsym(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.30) #11
  store ptr %i.l, ptr @l_addhist, align 8, !tbaa !15
  %i.m = load ptr, ptr @l_readline, align 8, !tbaa !15
  %.not15.i = icmp eq ptr %i.m, null
  br i1 %.not15.i, label %bb.e, label %lua_initreadline.exit.preheader

bb.e:                                             ; preds = %bb.d, %bb.a
  tail call void @lua_warning(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef 1) #11
  tail call void @lua_warning(ptr noundef %0, ptr noundef nonnull %spec.store.select.i, i32 noundef 1) #11
  tail call void @lua_warning(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef 0) #11
  br label %lua_initreadline.exit.preheader

lua_initreadline.exit.preheader:                  ; preds = %bb.d, %bb.e
  br label %lua_initreadline.exit

lua_initreadline.exit:                            ; preds = %lua_initreadline.exit.backedge, %lua_initreadline.exit.preheader
  call void @lua_settop(ptr noundef %0, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.n = call i32 @lua_getglobal(ptr noundef %0, ptr noundef nonnull @.str.33) #11
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %get_prompt.exit.i16, label %bb.f

bb.f:                                             ; preds = %lua_initreadline.exit
  %i.p = call ptr @luaL_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #11
  call void @lua_rotate(ptr noundef %0, i32 noundef -2, i32 noundef -1) #11
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #11
  br label %get_prompt.exit.i16

get_prompt.exit.i16:                              ; preds = %lua_initreadline.exit, %bb.f
  %.0.i.i17 = phi ptr [ %i.p, %bb.f ], [ @.str.35, %lua_initreadline.exit ] ; 2 uses
  %i.q = load ptr, ptr @l_readline, align 8, !tbaa !15 ; 2 uses
  %.not.i18.i18 = icmp eq ptr %i.q, null
  br i1 %.not.i18.i18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %get_prompt.exit.i16
  %i.r = call ptr %i.q(ptr noundef %.0.i.i17) #11, !inline_history !24
  br label %lua_readline.exit.i19

bb.h:                                             ; preds = %get_prompt.exit.i16
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.t = call i32 @fputs(ptr noundef %.0.i.i17, ptr noundef %i.s) ; 0 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.v = call i32 @fflush(ptr noundef %i.u)       ; 0 uses
  %i.w = load ptr, ptr @stdin, align 8, !tbaa !13
  %i.x = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 512, ptr noundef %i.w)
  br label %lua_readline.exit.i19

lua_readline.exit.i19:                            ; preds = %bb.h, %bb.g
  %.0.i19.i20 = phi ptr [ %i.r, %bb.g ], [ %i.x, %bb.h ] ; 5 uses
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #11
  %i.y = icmp eq ptr %.0.i19.i20, null
  br i1 %i.y, label %loadline.exit.thread, label %bb.i

bb.i:                                             ; preds = %lua_readline.exit.i19
  %i.z = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i19.i20) #13 ; 4 uses
  %.not.i21 = icmp eq i64 %i.z, 0
  br i1 %.not.i21, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %.0.i19.i20, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1     ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = icmp eq i8 %i.ac, 10
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = add i64 %i.z, -1
  store i8 0, ptr %i.ab, align 1, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.0.i22 = phi i64 [ %i.ae, %bb.k ], [ %i.z, %bb.j ], [ 0, %bb.i ]
  %i.af = call ptr @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %.0.i19.i20, i64 noundef %.0.i22) #11 ; 0 uses
  %i.ag = load ptr, ptr @l_readline, align 8, !tbaa !15
  %.not.i20.i23 = icmp eq ptr %i.ag, null
  br i1 %.not.i20.i23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %.0.i19.i20) #11
  br label %bb.n

loadline.exit.thread:                             ; preds = %lua_readline.exit.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit

bb.n:                                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ah = call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #11
  %i.ai = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef %i.ah) #11 ; 2 uses
  %i.aj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #13
  %i.ak = call i32 @luaL_loadbufferx(ptr noundef %0, ptr noundef nonnull %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.13) #11
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %addreturn.exit.thread.i, label %bb.o

addreturn.exit.thread.i:                          ; preds = %bb.n
  call void @lua_rotate(ptr noundef %0, i32 noundef -2, i32 noundef -1) #11
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #11
  br label %bb.ab

bb.o:                                             ; preds = %bb.n
  call void @lua_settop(ptr noundef %0, i32 noundef -3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.am = call ptr @lua_tolstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.d) #11 ; 3 uses
  %i.an = call i64 @strspn(ptr noundef readonly %i.am, ptr noundef nonnull @checklocal.space) #13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(6) @.str.39, i64 noundef 5) #13
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.p, label %checklocal.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !14  ; 2 uses
  %i.at = zext nneg i8 %i.as to i64
  %memchr.bounds.i.i.i = icmp ugt i8 %i.as, 63
  %i.au = shl nuw i64 1, %i.at
  %i.av = and i64 %i.au, 4294967809
  %memchr.bits.i.i.i = icmp eq i64 %i.av, 0
  %memchr4.not.i.i.i = select i1 %memchr.bounds.i.i.i, i1 true, i1 %memchr.bits.i.i.i
  br i1 %memchr4.not.i.i.i, label %checklocal.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.40) #12 ; 0 uses
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.az = call i32 @fflush(ptr noundef %i.ay)     ; 0 uses
  br label %checklocal.exit.i.i

checklocal.exit.i.i:                              ; preds = %bb.q, %bb.p, %bb.o
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !27
  %i.bb = call i32 @luaL_loadbufferx(ptr noundef %0, ptr noundef nonnull %i.am, i64 noundef %i.ba, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.13) #11 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 3
  br i1 %i.bc, label %.lr.ph.i.i, label %multiline.exit.i

.lr.ph.i.i:                                       ; preds = %checklocal.exit.i.i, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.bd = call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef nonnull %i.c) #11
  %i.be = load i64, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  %i.bf = icmp ugt i64 %i.be, 4
  br i1 %i.bf, label %incomplete.exit.i.i, label %incomplete.exit.thread21.i.i

incomplete.exit.thread21.i.i:                     ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %multiline.exit.i

incomplete.exit.i.i:                              ; preds = %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -5
  %i.bi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(6) @.str.41) #13
  %.not.i.i = icmp eq i32 %i.bi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br i1 %.not.i.i, label %bb.r, label %multiline.exit.i

bb.r:                                             ; preds = %incomplete.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.bj = call i32 @lua_getglobal(ptr noundef %0, ptr noundef nonnull @.str.34) #11
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %get_prompt.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = call ptr @luaL_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #11
  call void @lua_rotate(ptr noundef %0, i32 noundef -2, i32 noundef -1) #11
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #11
  br label %get_prompt.exit.i

get_prompt.exit.i:                                ; preds = %bb.r, %bb.s
  %.0.i.i = phi ptr [ %i.bl, %bb.s ], [ @.str.36, %bb.r ] ; 2 uses
  %i.bm = load ptr, ptr @l_readline, align 8, !tbaa !15 ; 2 uses
  %.not.i18.i = icmp eq ptr %i.bm, null
  br i1 %.not.i18.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %get_prompt.exit.i
  %i.bn = call ptr %i.bm(ptr noundef %.0.i.i) #11, !inline_history !24
  br label %lua_readline.exit.i

bb.u:                                             ; preds = %get_prompt.exit.i
  %i.bo = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.bp = call i32 @fputs(ptr noundef %.0.i.i, ptr noundef %i.bo) ; 0 uses
  %i.bq = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.br = call i32 @fflush(ptr noundef %i.bq)     ; 0 uses
  %i.bs = load ptr, ptr @stdin, align 8, !tbaa !13
  %i.bt = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 512, ptr noundef %i.bs)
  br label %lua_readline.exit.i

lua_readline.exit.i:                              ; preds = %bb.u, %bb.t
  %.0.i19.i = phi ptr [ %i.bn, %bb.t ], [ %i.bt, %bb.u ] ; 5 uses
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #11
  %i.bu = icmp eq ptr %.0.i19.i, null
  br i1 %i.bu, label %pushline.exit, label %bb.v

bb.v:                                             ; preds = %lua_readline.exit.i
  %i.bv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i19.i) #13 ; 4 uses
  %.not.i14 = icmp eq i64 %i.bv, 0
  br i1 %.not.i14, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr i8, ptr %.0.i19.i, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -1     ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %i.bz = icmp eq i8 %i.by, 10
  br i1 %i.bz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ca = add i64 %i.bv, -1
  store i8 0, ptr %i.bx, align 1, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.0.i15 = phi i64 [ %i.ca, %bb.x ], [ %i.bv, %bb.w ], [ 0, %bb.v ]
  %i.cb = call ptr @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %.0.i19.i, i64 noundef %.0.i15) #11 ; 0 uses
  %i.cc = load ptr, ptr @l_readline, align 8, !tbaa !15
  %.not.i20.i = icmp eq ptr %i.cc, null
  br i1 %.not.i20.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %.0.i19.i) #11
  br label %bb.aa

pushline.exit:                                    ; preds = %lua_readline.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %multiline.exit.i

bb.aa:                                            ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @lua_rotate(ptr noundef %0, i32 noundef -2, i32 noundef -1) #11
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #11
  %i.cd = call ptr @lua_pushstring(ptr noundef %0, ptr noundef nonnull @.str.9) #11 ; 0 uses
  call void @lua_rotate(ptr noundef %0, i32 noundef -2, i32 noundef 1) #11
  call void @lua_concat(ptr noundef %0, i32 noundef 3) #11
  %i.ce = call ptr @lua_tolstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.d) #11
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !27
  %i.cg = call i32 @luaL_loadbufferx(ptr noundef %0, ptr noundef %i.ce, i64 noundef %i.cf, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.13) #11 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 3
  br i1 %i.ch, label %.lr.ph.i.i, label %multiline.exit.i

multiline.exit.i:                                 ; preds = %bb.aa, %incomplete.exit.i.i, %pushline.exit, %incomplete.exit.thread21.i.i, %checklocal.exit.i.i
  %i.ci = phi i32 [ 3, %incomplete.exit.thread21.i.i ], [ %i.bb, %checklocal.exit.i.i ], [ 3, %pushline.exit ], [ 3, %incomplete.exit.i.i ], [ %i.cg, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.ab

bb.ab:                                            ; preds = %multiline.exit.i, %addreturn.exit.thread.i
  %.0.i = phi i32 [ %i.ci, %multiline.exit.i ], [ 0, %addreturn.exit.thread.i ]
  %i.cj = call ptr @lua_tolstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #11 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !14
  %.not13.i = icmp eq i8 %i.ck, 0
  br i1 %.not13.i, label %loadline.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load ptr, ptr @l_addhist, align 8, !tbaa !15 ; 2 uses
  %.not.i14.i = icmp eq ptr %i.cl, null
  br i1 %.not.i14.i, label %loadline.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void %i.cl(ptr noundef nonnull %i.cj) #11, !inline_history !25
  br label %loadline.exit

loadline.exit:                                    ; preds = %bb.ab, %bb.ac, %bb.ad
  call void @lua_rotate(ptr noundef %0, i32 noundef 1, i32 noundef -1) #11
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #11
  switch i32 %.0.i, label %report.exit [
    i32 -1, label %.loopexit
    i32 0, label %bb.ae
  ]

bb.ae:                                            ; preds = %loadline.exit
  %i.cm = call fastcc i32 @docall(ptr noundef %0, i32 noundef 0, i32 noundef -1)
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.af, label %report.exit

bb.af:                                            ; preds = %bb.ae
  %i.co = call i32 @lua_gettop(ptr noundef %0) #11 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %bb.ag, label %lua_initreadline.exit.backedge

bb.ag:                                            ; preds = %bb.af
  call void @luaL_checkstack(ptr noundef %0, i32 noundef 20, ptr noundef nonnull @.str.42) #11
  %i.cq = call i32 @lua_getglobal(ptr noundef %0, ptr noundef nonnull @.str.43) #11 ; 0 uses
  call void @lua_rotate(ptr noundef %0, i32 noundef 1, i32 noundef 1) #11
  %i.cr = call i32 @lua_pcallk(ptr noundef %0, i32 noundef %i.co, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null) #11
  %.not.i11 = icmp eq i32 %i.cr, 0
  br i1 %.not.i11, label %lua_initreadline.exit.backedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cs = load ptr, ptr @progname, align 8, !tbaa !11
  %i.ct = call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #11
  %i.cu = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef %i.ct) #11
  call fastcc void @l_message(ptr noundef %i.cs, ptr noundef %i.cu)
  br label %lua_initreadline.exit.backedge

lua_initreadline.exit.backedge:                   ; preds = %bb.ah, %bb.ag, %bb.af, %report.exit
  br label %lua_initreadline.exit

report.exit:                                      ; preds = %loadline.exit, %bb.ae
  %i.cv = call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #11 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  %spec.store.select.i13 = select i1 %i.cw, ptr @.str.45, ptr %i.cv
  %i.cx = load ptr, ptr @progname, align 8, !tbaa !11
  call fastcc void @l_message(ptr noundef %i.cx, ptr noundef nonnull %spec.store.select.i13)
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #11
  br label %lua_initreadline.exit.backedge

.loopexit:                                        ; preds = %loadline.exit, %loadline.exit.thread
  call void @lua_settop(ptr noundef %0, i32 noundef 0) #11
  %i.cy = load ptr, ptr @stdout, align 8, !tbaa !13
  %fputc = call i32 @fputc(i32 10, ptr %i.cy)     ; 0 uses
  %i.cz = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.da = call i32 @fflush(ptr noundef %i.cz)     ; 0 uses
  store ptr %i.e, ptr @progname, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @dofile(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @luaL_loadfilex(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.23) #11
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @docall(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %dochunk.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.d = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #11 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %spec.store.select.i.i = select i1 %i.e, ptr @.str.45, ptr %i.d
  %i.f = load ptr, ptr @progname, align 8, !tbaa !11
  tail call fastcc void @l_message(ptr noundef %i.f, ptr noundef nonnull %spec.store.select.i.i)
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #11
  br label %dochunk.exit

dochunk.exit:                                     ; preds = %bb.b, %.thread.i
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lua_pushstring(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_rawseti(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @lua_setglobal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dostring(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %i.b = tail call i32 @luaL_loadbufferx(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.a, ptr noundef %2, ptr noundef nonnull @.str.13) #11 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @docall(ptr noundef %0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %dochunk.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.b, %bb.a
  %.06.i = phi i32 [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.e = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #11 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %spec.store.select.i.i = select i1 %i.f, ptr @.str.45, ptr %i.e
  %i.g = load ptr, ptr @progname, align 8, !tbaa !11
  tail call fastcc void @l_message(ptr noundef %i.g, ptr noundef nonnull %spec.store.select.i.i)
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #11
  br label %dochunk.exit

dochunk.exit:                                     ; preds = %bb.b, %.thread.i
  %.07.i = phi i32 [ 0, %bb.b ], [ %.06.i, %.thread.i ]
  ret i32 %.07.i
}

declare i32 @luaL_loadbufferx(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc i32 @docall(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 -1, 2) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sigaction, align 8          ; 6 uses
  %4 = alloca %struct.sigaction, align 8          ; 6 uses
  %i.a = tail call i32 @lua_gettop(ptr noundef %0) #11
  %i.b = sub nsw i32 %i.a, %1                     ; 3 uses
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @msghandler, i32 noundef 0) #11
  tail call void @lua_rotate(ptr noundef %0, i32 noundef %i.b, i32 noundef 1) #11
  store ptr %0, ptr @globalL, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr @laction, ptr %4, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i32 0, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = call i32 @sigemptyset(ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.f = call i32 @sigaction(i32 noundef 2, ptr noundef nonnull %4, ptr noundef null) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.g = call i32 @lua_pcallk(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.b, i64 noundef 0, ptr noundef null) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr null, ptr %3, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 136
end_hunk_0
