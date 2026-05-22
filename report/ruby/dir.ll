inline.NumInlined: 217
inline.NumDeleted: 89
begin_hunk_0_@ruby_brace_expand:bb.a
  %.091 = phi ptr [ %i.ab, %.thread128 ], [ %0, %bb.a ] ; 7 uses
  %i.p = load i8, ptr %.091, align 1, !tbaa !20   ; 3 uses
  switch i8 %i.p, label %bb.d [
    i8 0, label %.thread135
    i8 123, label %.thread
  ]

.thread:                                          ; preds = %.split
  %i.q = add i32 %.099, 1
  %i.r = icmp eq i32 %.099, 0
  %spec.select = select i1 %i.r, ptr %.091, ptr %.095
  br label %.thread128

bb.d:                                             ; preds = %.split
  %i.s = icmp eq i8 %i.p, 125
  %i.t = icmp ne ptr %.095, null
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = add i32 %.099, -1                        ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.split147.us, label %.thread128

bb.f:                                             ; preds = %bb.d
  %i.w = icmp eq i8 %i.p, 92
  br i1 %i.w, label %bb.g, label %.thread128

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %.091, i64 1       ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %.not114 = icmp eq i8 %i.y, 0
  br i1 %.not114, label %.thread135, label %.thread128

.thread128:                                       ; preds = %bb.e, %.thread, %bb.g, %bb.f
  %.2101133 = phi i32 [ %.099, %bb.g ], [ %.099, %bb.f ], [ %i.q, %.thread ], [ %i.u, %bb.e ]
  %.196127132 = phi ptr [ %.095, %bb.g ], [ %.095, %bb.f ], [ %spec.select, %.thread ], [ %.095, %bb.e ]
  %.192 = phi ptr [ %i.x, %bb.g ], [ %.091, %bb.f ], [ %.091, %.thread ], [ %.091, %bb.e ] ; 2 uses
  %i.z = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.192, ptr noundef %i.e, ptr noundef %4) #20
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr i8, ptr %.192, i64 %i.aa
  br label %.split, !llvm.loop !45

.thread135:                                       ; preds = %.split.us, %bb.g, %.split
  %.us-phi = phi ptr [ %.095, %bb.g ], [ %.095, %.split ], [ %.095.us, %.split.us ]
  %.not141 = icmp eq ptr %.us-phi, null
  br i1 %.not141, label %bb.r, label %bb.s

.split147.us:                                     ; preds = %bb.c, %bb.e
  %.us-phi148 = phi ptr [ %.095, %bb.e ], [ %.095.us, %bb.c ] ; 4 uses
  %.us-phi149 = phi ptr [ %.091, %bb.e ], [ %.091.us, %bb.c ] ; 8 uses
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %i.ad = add i64 %i.ac, 1                        ; 3 uses
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %rb_mul_size_overflow.exit.i.i, label %glob_alloc_n.exit

rb_mul_size_overflow.exit.i.i:                    ; preds = %.split147.us
  tail call void @rb_memerror() #22
  unreachable

glob_alloc_n.exit:                                ; preds = %.split147.us
  %i.af = tail call noalias noundef ptr @malloc(i64 noundef %i.ad) #23 ; 6 uses
  %.not115.not = icmp eq ptr %i.af, null
  br i1 %.not115.not, label %.thread139, label %bb.h

bb.h:                                             ; preds = %glob_alloc_n.exit
  %i.ag = ptrtoint ptr %.us-phi148 to i64
  %i.ah = ptrtoint ptr %0 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %.not.i = icmp eq ptr %.us-phi148, %0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.af, ptr noundef nonnull readonly align 1 %0, i64 noundef range(i64 1, 0) %i.ai, i1 noundef false) #20
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.h, %bb.i
  %i.aj = getelementptr i8, ptr %i.af, i64 %i.ai  ; 4 uses
  %i.ak = getelementptr i8, ptr %.us-phi149, i64 1 ; 2 uses
  %.neg143 = sub i64 %i.ad, %i.ai                 ; 2 uses
  br i1 %.not, label %ruby_nonempty_memcpy.exit.split.us, label %ruby_nonempty_memcpy.exit.split

ruby_nonempty_memcpy.exit.split.us:               ; preds = %ruby_nonempty_memcpy.exit, %ruby_nonempty_memcpy.exit123.us
  %.2.us = phi ptr [ %.5.us199, %ruby_nonempty_memcpy.exit123.us ], [ %.us-phi148, %ruby_nonempty_memcpy.exit ] ; 2 uses
  %i.al = icmp ult ptr %.2.us, %.us-phi149
  br i1 %i.al, label %bb.j, label %.split169.us

bb.j:                                             ; preds = %ruby_nonempty_memcpy.exit.split.us
  %i.am = getelementptr i8, ptr %.2.us, i64 1     ; 6 uses
  %i.an = icmp ult ptr %i.am, %.us-phi149
  br i1 %i.an, label %.lr.ph.us, label %ruby_nonempty_memcpy.exit123.us

.lr.ph.us:                                        ; preds = %bb.j, %bb.m
  %.3151.us158 = phi ptr [ %i.ba, %bb.m ], [ %i.am, %bb.j ] ; 4 uses
  %.3102150.us159 = phi i32 [ %.5104.us162, %bb.m ], [ 0, %bb.j ] ; 2 uses
  %i.ao = load i8, ptr %.3151.us158, align 1, !tbaa !20 ; 4 uses
  %i.ap = icmp ne i8 %i.ao, 44
  %i.aq = icmp ne i32 %.3102150.us159, 0
  %.not118.us160 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not118.us160, label %bb.k, label %.critedge.us

bb.k:                                             ; preds = %.lr.ph.us
  %i.ar = icmp eq i8 %i.ao, 123
  %i.as = zext i1 %i.ar to i32
  %spec.select120.us161 = add i32 %.3102150.us159, %i.as
  %i.at = icmp eq i8 %i.ao, 125
  %i.au = sext i1 %i.at to i32
  %.5104.us162 = add i32 %spec.select120.us161, %i.au
  %i.av = icmp eq i8 %i.ao, 92
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %.3151.us158, i64 1 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, %.us-phi149
  br i1 %i.ax, label %.critedge.us, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.4.us = phi ptr [ %i.aw, %bb.l ], [ %.3151.us158, %bb.k ] ; 2 uses
  %i.ay = tail call i32 @rb_enc_mbclen(ptr noundef %.4.us, ptr noundef %i.e, ptr noundef %4) #20
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %.4.us, i64 %i.az ; 3 uses
  %i.bb = icmp ult ptr %i.ba, %.us-phi149
  br i1 %i.bb, label %.lr.ph.us, label %.critedge.us, !llvm.loop !46

.critedge.us:                                     ; preds = %.lr.ph.us, %bb.l, %bb.m
  %.5.us = phi ptr [ %i.ba, %bb.m ], [ %.3151.us158, %.lr.ph.us ], [ %i.aw, %bb.l ] ; 4 uses
  %.not.i121.us = icmp eq ptr %.5.us, %i.am
  br i1 %.not.i121.us, label %ruby_nonempty_memcpy.exit123.us, label %bb.n

bb.n:                                             ; preds = %.critedge.us
  %i.bc = ptrtoint ptr %.5.us to i64
  %i.bd = ptrtoint ptr %i.am to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.aj, ptr noundef nonnull readonly align 1 %i.am, i64 noundef range(i64 1, 0) %i.be, i1 noundef false) #20
  br label %ruby_nonempty_memcpy.exit123.us

ruby_nonempty_memcpy.exit123.us:                  ; preds = %bb.j, %bb.n, %.critedge.us
  %i.bf = phi i64 [ 0, %.critedge.us ], [ %i.be, %bb.n ], [ 0, %bb.j ] ; 2 uses
  %.5.us199 = phi ptr [ %.5.us, %.critedge.us ], [ %.5.us, %bb.n ], [ %i.am, %bb.j ]
  %i.bg = getelementptr i8, ptr %i.aj, i64 %i.bf
  %i.bh = sub i64 %.neg143, %i.bf
  %i.bi = tail call i64 @strlcpy(ptr noundef %i.bg, ptr noundef nonnull dereferenceable(1) %i.ak, i64 noundef %i.bh) #20 ; 0 uses
  %i.bj = tail call fastcc i32 @ruby_brace_expand(ptr noundef nonnull %i.af, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) ; 2 uses
  %.not119.us = icmp eq i32 %i.bj, 0
  br i1 %.not119.us, label %ruby_nonempty_memcpy.exit.split.us, label %.split169.us

ruby_nonempty_memcpy.exit.split:                  ; preds = %ruby_nonempty_memcpy.exit, %ruby_nonempty_memcpy.exit123
  %.2 = phi ptr [ %.5202, %ruby_nonempty_memcpy.exit123 ], [ %.us-phi148, %ruby_nonempty_memcpy.exit ] ; 2 uses
  %i.bk = icmp ult ptr %.2, %.us-phi149
  br i1 %i.bk, label %bb.o, label %.split169.us

bb.o:                                             ; preds = %ruby_nonempty_memcpy.exit.split
  %i.bl = getelementptr i8, ptr %.2, i64 1        ; 6 uses
  %i.bm = icmp ult ptr %i.bl, %.us-phi149
  br i1 %i.bm, label %.lr.ph, label %ruby_nonempty_memcpy.exit123

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %.3151.us = phi ptr [ %i.bw, %bb.p ], [ %i.bl, %bb.o ] ; 4 uses
  %.3102150.us = phi i32 [ %.5104.us, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.bn = load i8, ptr %.3151.us, align 1, !tbaa !20 ; 3 uses
  %i.bo = icmp ne i8 %i.bn, 44
  %i.bp = icmp ne i32 %.3102150.us, 0
  %.not118.us = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %.not118.us, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.lr.ph
  %i.bq = icmp eq i8 %i.bn, 123
  %i.br = zext i1 %i.bq to i32
  %spec.select120.us = add i32 %.3102150.us, %i.br
  %i.bs = icmp eq i8 %i.bn, 125
  %i.bt = sext i1 %i.bs to i32
  %.5104.us = add i32 %spec.select120.us, %i.bt
  %i.bu = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.3151.us, ptr noundef %i.e, ptr noundef %4) #20
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %.3151.us, i64 %i.bv ; 3 uses
  %i.bx = icmp ult ptr %i.bw, %.us-phi149
  br i1 %i.bx, label %.lr.ph, label %.critedge, !llvm.loop !46

.critedge:                                        ; preds = %bb.p, %.lr.ph
  %.5 = phi ptr [ %.3151.us, %.lr.ph ], [ %i.bw, %bb.p ] ; 4 uses
  %.not.i121 = icmp eq ptr %.5, %i.bl
  br i1 %.not.i121, label %ruby_nonempty_memcpy.exit123, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.by = ptrtoint ptr %.5 to i64
  %i.bz = ptrtoint ptr %i.bl to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.aj, ptr noundef nonnull readonly align 1 %i.bl, i64 noundef range(i64 1, 0) %i.ca, i1 noundef false) #20
  br label %ruby_nonempty_memcpy.exit123

ruby_nonempty_memcpy.exit123:                     ; preds = %bb.o, %.critedge, %bb.q
  %i.cb = phi i64 [ %i.ca, %bb.q ], [ 0, %.critedge ], [ 0, %bb.o ] ; 2 uses
  %.5202 = phi ptr [ %.5, %bb.q ], [ %.5, %.critedge ], [ %i.bl, %bb.o ]
  %i.cc = getelementptr i8, ptr %i.aj, i64 %i.cb
  %i.cd = sub i64 %.neg143, %i.cb
  %i.ce = tail call i64 @strlcpy(ptr noundef %i.cc, ptr noundef nonnull dereferenceable(1) %i.ak, i64 noundef %i.cd) #20 ; 0 uses
  %i.cf = tail call fastcc i32 @ruby_brace_expand(ptr noundef nonnull %i.af, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) ; 2 uses
  %.not119 = icmp eq i32 %i.cf, 0
  br i1 %.not119, label %ruby_nonempty_memcpy.exit.split, label %.split169.us

.split169.us:                                     ; preds = %ruby_nonempty_memcpy.exit.split, %ruby_nonempty_memcpy.exit123, %ruby_nonempty_memcpy.exit.split.us, %ruby_nonempty_memcpy.exit123.us
  %.us-phi170 = phi i32 [ 0, %ruby_nonempty_memcpy.exit.split.us ], [ %i.bj, %ruby_nonempty_memcpy.exit123.us ], [ %i.cf, %ruby_nonempty_memcpy.exit123 ], [ 0, %ruby_nonempty_memcpy.exit.split ]
  tail call void @free(ptr noundef nonnull %i.af) #20
  br label %bb.s

bb.r:                                             ; preds = %.thread135
  %i.cg = tail call i32 %2(ptr noundef nonnull %0, i64 noundef %3, ptr noundef %4) #20
  br label %bb.s

bb.s:                                             ; preds = %.split169.us, %.thread135, %bb.r
  %.3108 = phi i32 [ %.us-phi170, %.split169.us ], [ 0, %.thread135 ], [ %i.cg, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %i.a, ptr %i.b, align 8, !tbaa !47
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #20, !srcloc !48
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ci = load volatile i64, ptr %i.ch, align 8, !tbaa !11 ; 0 uses
  br label %.thread139

.thread139:                                       ; preds = %glob_alloc_n.exit, %bb.s
  %.1 = phi i32 [ %.3108, %bb.s ], [ -1, %glob_alloc_n.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @glob_brace(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !44
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43
  %i.f = tail call fastcc i32 @ruby_glob0(ptr noundef %0, i32 noundef -100, ptr noundef null, i32 noundef %i.c, ptr noundef %i.a, i64 noundef %i.e, ptr noundef %2)
  ret i32 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @ruby_brace_glob(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.brace_args, align 8         ; 7 uses
  %i.a = tail call nonnull ptr @rb_ascii8bit_encoding() #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.b = and i32 %1, 2147483647                   ; 2 uses
  store ptr %2, ptr %4, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %3, ptr %i.d, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.b, ptr %i.e, align 8, !tbaa !44
  %i.f = ptrtoint ptr %4 to i64
  %i.g = call fastcc i32 @ruby_brace_expand(ptr noundef nonnull %0, i32 noundef %i.b, ptr noundef nonnull @glob_brace, i64 noundef %i.f, ptr noundef nonnull %i.a, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i32 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_Dir() local_unnamed_addr #0 {
bb.a:
  tail call void @rb_gc_register_address(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @chdir_lock, i64 8)) #20
  tail call void @rb_gc_register_address(ptr noundef nonnull @chdir_lock) #20
  %i.a = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.b = tail call i64 @rb_define_class(ptr noundef nonnull @.str, i64 noundef %i.a) #20 ; 2 uses
  store i64 %i.b, ptr @rb_cDir, align 8, !tbaa !11
  %i.c = load i64, ptr @rb_mEnumerable, align 8, !tbaa !11
  tail call void @rb_include_module(i64 noundef %i.b, i64 noundef %i.c) #20
  %i.d = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_alloc_func(i64 noundef %i.d, ptr noundef nonnull @dir_s_alloc) #20
  %i.e = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.e, ptr noundef nonnull @.str.1, ptr noundef nonnull @dir_s_for_fd, i32 noundef 1) #20
  %i.f = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.f, ptr noundef nonnull @.str.2, ptr noundef nonnull @dir_foreach, i32 noundef -1) #20
  %i.g = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.g, ptr noundef nonnull @.str.3, ptr noundef nonnull @dir_entries, i32 noundef -1) #20
  %i.h = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.h, ptr noundef nonnull @.str.4, ptr noundef nonnull @dir_s_each_child, i32 noundef -1) #20
  %i.i = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @dir_s_children, i32 noundef -1) #20
  %i.j = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.j, ptr noundef nonnull @.str.6, ptr noundef nonnull @dir_fileno, i32 noundef 0) #20
  %i.k = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.k, ptr noundef nonnull @.str.7, ptr noundef nonnull @dir_path, i32 noundef 0) #20
  %i.l = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.l, ptr noundef nonnull @.str.8, ptr noundef nonnull @dir_path, i32 noundef 0) #20
  %i.m = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.m, ptr noundef nonnull @.str.9, ptr noundef nonnull @dir_inspect, i32 noundef 0) #20
  %i.n = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.n, ptr noundef nonnull @.str.10, ptr noundef nonnull @dir_read, i32 noundef 0) #20
  %i.o = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.o, ptr noundef nonnull @.str.11, ptr noundef nonnull @dir_each, i32 noundef 0) #20
  %i.p = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.p, ptr noundef nonnull @.str.4, ptr noundef nonnull @dir_each_child_m, i32 noundef 0) #20
  %i.q = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.q, ptr noundef nonnull @.str.5, ptr noundef nonnull @dir_collect_children, i32 noundef 0) #20
  %i.r = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.r, ptr noundef nonnull @.str.12, ptr noundef nonnull @dir_rewind, i32 noundef 0) #20
  %i.s = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.s, ptr noundef nonnull @.str.13, ptr noundef nonnull @dir_tell, i32 noundef 0) #20
  %i.t = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.t, ptr noundef nonnull @.str.14, ptr noundef nonnull @dir_seek, i32 noundef 1) #20
  %i.u = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.u, ptr noundef nonnull @.str.15, ptr noundef nonnull @dir_tell, i32 noundef 0) #20
  %i.v = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.v, ptr noundef nonnull @.str.16, ptr noundef nonnull @dir_set_pos, i32 noundef 1) #20
  %i.w = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.w, ptr noundef nonnull @.str.17, ptr noundef nonnull @dir_close, i32 noundef 0) #20
  %i.x = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.x, ptr noundef nonnull @.str.18, ptr noundef nonnull @dir_chdir, i32 noundef 0) #20
  %i.y = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.y, ptr noundef nonnull @.str.19, ptr noundef nonnull @dir_s_fchdir, i32 noundef 1) #20
  %i.z = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.z, ptr noundef nonnull @.str.18, ptr noundef nonnull @dir_s_chdir, i32 noundef -1) #20
  %i.aa = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.aa, ptr noundef nonnull @.str.20, ptr noundef nonnull @dir_s_getwd, i32 noundef 0) #20
  %i.ab = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ab, ptr noundef nonnull @.str.21, ptr noundef nonnull @dir_s_getwd, i32 noundef 0) #20
  %i.ac = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ac, ptr noundef nonnull @.str.22, ptr noundef nonnull @dir_s_chroot, i32 noundef 1) #20
  %i.ad = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ad, ptr noundef nonnull @.str.23, ptr noundef nonnull @dir_s_mkdir, i32 noundef -1) #20
  %i.ae = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ae, ptr noundef nonnull @.str.24, ptr noundef nonnull @dir_s_rmdir, i32 noundef 1) #20
  %i.af = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.af, ptr noundef nonnull @.str.25, ptr noundef nonnull @dir_s_rmdir, i32 noundef 1) #20
  %i.ag = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ag, ptr noundef nonnull @.str.26, ptr noundef nonnull @dir_s_rmdir, i32 noundef 1) #20
  %i.ah = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ah, ptr noundef nonnull @.str.27, ptr noundef nonnull @dir_s_home, i32 noundef -1) #20
  %i.ai = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ai, ptr noundef nonnull @.str.28, ptr noundef nonnull @rb_file_directory_p, i32 noundef 1) #20
  %i.aj = load i64, ptr @rb_cDir, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.aj, ptr noundef nonnull @.str.29, ptr noundef nonnull @rb_dir_s_empty_p, i32 noundef 1) #20
  %i.ak = load i64, ptr @rb_cFile, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ak, ptr noundef nonnull @.str.30, ptr noundef nonnull @file_s_fnmatch, i32 noundef -1) #20
  %i.al = load i64, ptr @rb_cFile, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.al, ptr noundef nonnull @.str.31, ptr noundef nonnull @file_s_fnmatch, i32 noundef -1) #20
  tail call void @rb_file_const(ptr noundef nonnull @.str.32, i64 noundef 3) #20
  tail call void @rb_file_const(ptr noundef nonnull @.str.33, i64 noundef 5) #20
  tail call void @rb_file_const(ptr noundef nonnull @.str.34, i64 noundef 9) #20
  tail call void @rb_file_const(ptr noundef nonnull @.str.35, i64 noundef 17) #20
  tail call void @rb_file_const(ptr noundef nonnull @.str.36, i64 noundef 33) #20
  tail call void @rb_file_const(ptr noundef nonnull @.str.37, i64 noundef 1) #20
  tail call void @rb_file_const(ptr noundef nonnull @.str.38, i64 noundef 1) #20
  ret void
}

declare void @rb_gc_register_address(ptr noundef) local_unnamed_addr #2

declare i64 @rb_define_class(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_include_module(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @dir_s_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %0, i64 noundef 24, ptr noundef nonnull @dir_data_type) #20 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49
  %i.e = trunc i64 %i.d to i1
  %i.f = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.e, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !53
  %i.i = getelementptr i8, ptr %i.h, i64 8
  store i64 4, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr i8, ptr %i.h, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !56
  ret i64 %i.a
}

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @dir_s_for_fd(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %0, i64 noundef 24, ptr noundef nonnull @dir_data_type) #20 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49
  %i.e = trunc i64 %i.d to i1
  %i.f = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.e, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.i = trunc i64 %1 to i1
  br i1 %i.i, label %bb.c, label %bb.d

end_hunk_0
