inline.NumInlined: 39
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@exr_start_read:bb.a
bb.m:                                             ; preds = %default_init_read_file.exit.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 136
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !38
  %i.bk = call i64 %.val(ptr noundef %i.bg, ptr noundef %i.bj) #13, !inline_history !46
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %default_init_read_file.exit.thread, %bb.m
  %i.bl = phi ptr [ %.pre, %bb.m ], [ %i.bg, %default_init_read_file.exit.thread ]
  %.sink.i = phi i64 [ %i.bk, %bb.m ], [ -1, %default_init_read_file.exit.thread ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 152
  store i64 %.sink.i, ptr %i.bm, align 8, !tbaa !47
  %i.bn = call i32 @internal_exr_parse_header(ptr noundef %i.bl) #13 ; 2 uses
  %.not20 = icmp eq i32 %i.bn, 0
  br i1 %.not20, label %bb.q, label %.thread24

.thread24:                                        ; preds = %default_init_read_file.exit, %bb.i, %bb.n
  %.227 = phi i32 [ %i.bn, %bb.n ], [ %i.be, %default_init_read_file.exit ], [ %i.al, %bb.i ]
  %i.bo = call i32 @exr_finish(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !22
  %i.br = and i32 %i.bq, 2
  %.not18 = icmp eq i32 %i.br, 0
  br i1 %.not18, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !48
  call void %i.bs(ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.2) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.h, %.thread24, %bb.n
  %.3 = phi i32 [ %.227, %.thread24 ], [ 0, %bb.n ], [ 1, %bb.h ], [ 3, %bb.p ], [ 3, %bb.o ]
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !8
  store ptr %i.bt, ptr %0, align 8, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %bb.f, %bb.q
  %.011 = phi i32 [ %.3, %bb.q ], [ 3, %bb.f ], [ 3, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.011
}

declare i32 @internal_exr_parse_header(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @exr_start_write(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %4 = alloca %struct._exr_context_initializer_v3, align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, i8 0, i64 96, i1 false), !alias.scope !58
  store i64 104, ptr %4, align 8, !alias.scope !58
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  store i32 -2, ptr %i.d, align 8, !alias.scope !58
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  store float -1.000000e+00, ptr %i.e, align 4, !alias.scope !58
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %fill_context_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !14, !noalias !58
  store <2 x ptr> %i.g, ptr %i.c, align 8, !tbaa !14, !alias.scope !58
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = load <2 x ptr>, ptr %i.h, align 8, !tbaa !14, !noalias !58
  store <2 x ptr> %i.j, ptr %i.i, align 8, !tbaa !14, !alias.scope !58
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load <2 x ptr>, ptr %i.k, align 8, !tbaa !14, !noalias !58
  store <2 x ptr> %i.m, ptr %i.l, align 8, !tbaa !14, !alias.scope !58
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !14, !noalias !58
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !14, !alias.scope !58
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.s = load <4 x i32>, ptr %i.q, align 8, !tbaa !15, !noalias !58
  store <4 x i32> %i.s, ptr %i.r, align 8, !tbaa !15, !alias.scope !58
  %i.t = load i64, ptr %3, align 8, !tbaa !16, !noalias !58 ; 2 uses
  %i.u = icmp ugt i64 %i.t, 95
  br i1 %i.u, label %bb.c, label %fill_context_data.exit

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.w = load i32, ptr %i.v, align 8, !tbaa !20, !noalias !58
  store i32 %i.w, ptr %i.d, align 8, !tbaa !20, !alias.scope !58
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.y = load float, ptr %i.x, align 4, !tbaa !21, !noalias !58
  store float %i.y, ptr %i.e, align 4, !tbaa !21, !alias.scope !58
  %i.z = icmp ugt i64 %i.t, 103
  br i1 %i.z, label %bb.d, label %fill_context_data.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !22, !noalias !58
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !22, !alias.scope !58
  br label %fill_context_data.exit

fill_context_data.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  call void @internal_exr_update_default_handlers(ptr noundef nonnull align 8 %4) #13
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %fill_context_data.exit
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !48
  call void %i.ad(ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.1) #13
  br label %bb.y

bb.f:                                             ; preds = %fill_context_data.exit
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = call i32 @internal_exr_alloc_context(ptr noundef nonnull %i.b, ptr noundef nonnull %4, i32 noundef 1, i64 noundef 4) #13
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !8   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store ptr @dispatch_write, ptr %i.ah, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = call i32 @exr_attr_string_create(ptr noundef %i.ag, ptr noundef nonnull %i.ai, ptr noundef nonnull %1) #13 ; 2 uses
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp ne ptr %i.am, null
  %or.cond = select i1 %i.ak, i1 true, i1 %i.an
  br i1 %or.cond, label %default_init_write_file.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp eq i32 %2, 1
  br i1 %i.ao, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !43 ; 5 uses
  %i.at = call i32 @getpid() #13
  %i.au = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.24, i32 noundef %i.at) #13
  %i.av = icmp sgt i32 %i.au, 31
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50
  %i.ay = call i32 %i.ax(ptr noundef nonnull %i.ap, i32 noundef 3, ptr noundef nonnull @.str.25) #13, !inline_history !62
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.az = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #15 ; 5 uses
  %i.ba = load i32, ptr %i.aq, align 8, !tbaa !63
  %i.bb = sext i32 %i.ba to i64
  %i.bc = add i64 %i.az, %i.bb                    ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, 2147483646
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !51
  %i.bg = call i32 %i.bf(ptr noundef nonnull %i.ap, i32 noundef 1) #13, !inline_history !62
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !64
  %i.bj = add nuw nsw i64 %i.bc, 1                ; 3 uses
  %i.bk = call ptr %i.bi(i64 noundef %i.bj) #13, !inline_history !62 ; 7 uses
  %.not.i19 = icmp eq ptr %i.bk, null
  br i1 %.not.i19, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.as, i32 noundef 47) #15 ; 2 uses
  %i.bm = trunc nuw nsw i64 %i.bc to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !65
  %i.bo = trunc nuw nsw i64 %i.bj to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !66
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr %i.bk, ptr %i.bq, align 8, !tbaa !53
  %.not51.i = icmp eq ptr %i.bl, null
  br i1 %.not51.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = ptrtoint ptr %i.bl to i64
  %i.bs = ptrtoint ptr %i.as to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = add i64 %i.bt, 1                        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull align 1 %i.as, i64 %i.bu, i1 false)
  %5 = getelementptr i8, ptr %i.bk, i64 %i.bt
  %i.bv = getelementptr i8, ptr %5, i64 1         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 16 %i.a, i64 %i.az, i1 false)
  %6 = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.az
  %i.bw = getelementptr i8, ptr %i.as, i64 %i.bt
  %i.bx = getelementptr i8, ptr %i.bw, i64 1
  %i.by = load i32, ptr %i.aq, align 8, !tbaa !63
  %i.bz = sext i32 %i.by to i64
  %i.ca = sub i64 %i.bz, %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %i.bx, i64 %i.ca, i1 false)
  br label %.thread22

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull align 16 %i.a, i64 %i.az, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.az
  %i.cc = load i32, ptr %i.aq, align 8, !tbaa !63
  %i.cd = sext i32 %i.cc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull align 1 %i.as, i64 %i.cd, i1 false)
  br label %.thread22

bb.r:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !44
  %i.cg = call i32 (ptr, i32, ptr, ...) %i.cf(ptr noundef nonnull %i.ap, i32 noundef 1, ptr noundef nonnull @.str.26, i64 noundef %i.bj) #13, !inline_history !62
  br label %bb.s

.thread22:                                        ; preds = %bb.q, %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  store i8 0, ptr %i.ch, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.thread

bb.s:                                             ; preds = %bb.r, %bb.m, %bb.k
  %.0.i = phi i32 [ %i.ay, %bb.k ], [ %i.bg, %bb.m ], [ %i.cg, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ci = icmp eq i32 %.0.i, 0
  br i1 %i.ci, label %.thread, label %default_init_write_file.exit.thread26

.thread:                                          ; preds = %bb.i, %.thread22, %bb.s
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !8   ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !38 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !53 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !43
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread
  %.0.i20 = phi ptr [ %i.cq, %bb.t ], [ %i.cn, %.thread ]
  store i32 -1, ptr %i.cl, align 4, !tbaa !39
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 144
  store ptr @default_shutdown, ptr %i.cr, align 8, !tbaa !41
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 168
  store ptr @default_write_func, ptr %i.cs, align 8, !tbaa !68
  %i.ct = call i32 (ptr, i32, ...) @open64(ptr noundef %.0.i20, i32 noundef 524865, i32 noundef 438) #13 ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %bb.v, label %default_init_write_file.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !44
  %i.cx = tail call ptr @__errno_location() #14
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !15
  %i.cz = call ptr @strerror(i32 noundef %i.cy) #13
  %i.da = call i32 (ptr, i32, ptr, ...) %i.cw(ptr noundef nonnull %i.cj, i32 noundef 5, ptr noundef nonnull @.str.27, ptr noundef %i.cz) #13, !inline_history !69
  br label %default_init_write_file.exit

default_init_write_file.exit.thread:              ; preds = %bb.u
  store i32 %i.ct, ptr %i.cl, align 4, !tbaa !39
  br label %bb.x

default_init_write_file.exit:                     ; preds = %bb.v, %bb.h
  %.1 = phi i32 [ %i.aj, %bb.h ], [ %i.da, %bb.v ] ; 2 uses
  %.not18 = icmp eq i32 %.1, 0
  br i1 %.not18, label %bb.x, label %default_init_write_file.exit.thread26

default_init_write_file.exit.thread26:            ; preds = %bb.s, %default_init_write_file.exit
  %.129 = phi i32 [ %.1, %default_init_write_file.exit ], [ %.0.i, %bb.s ]
  %i.db = call i32 @exr_finish(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.f
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !48
  call void %i.dc(ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.3) #13
  br label %bb.x

bb.x:                                             ; preds = %default_init_write_file.exit.thread, %bb.g, %default_init_write_file.exit.thread26, %default_init_write_file.exit, %bb.w
  %.2 = phi i32 [ %.129, %default_init_write_file.exit.thread26 ], [ 0, %default_init_write_file.exit ], [ 3, %bb.w ], [ 1, %bb.g ], [ 0, %default_init_write_file.exit.thread ]
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !8
  store ptr %i.dd, ptr %0, align 8, !tbaa !8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.e
  %.013 = phi i32 [ %.2, %bb.x ], [ 3, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define internal i32 @dispatch_write(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp eq ptr %3, null
  br i1 %.not23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = tail call i32 %i.b(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.23) #13
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68   ; 2 uses
  %.not24 = icmp eq ptr %i.e, null
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = load i64, ptr %3, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.k = tail call i64 %i.e(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %1, i64 noundef %2, i64 noundef %i.h, ptr noundef %i.j) #13 ; 3 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.o = tail call i32 %i.n(ptr noundef nonnull %0, i32 noundef 8) #13
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.p = load i64, ptr %3, align 8, !tbaa !49
  %i.q = add i64 %i.p, %i.k
  store i64 %i.q, ptr %3, align 8, !tbaa !49
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.r = icmp eq i64 %i.k, %2
  %i.s = select i1 %i.r, i32 0, i32 11
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.f, %bb.c
  %.0 = phi i32 [ %i.s, %bb.h ], [ %i.o, %bb.f ], [ %i.c, %bb.c ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @exr_start_inplace_header_update(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define i32 @exr_start_temporary_context(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %struct._exr_context_initializer_v3, align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, i8 0, i64 96, i1 false), !alias.scope !70
  store i64 104, ptr %3, align 8, !alias.scope !70
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  store i32 -2, ptr %i.c, align 8, !alias.scope !70
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  store float -1.000000e+00, ptr %i.d, align 4, !alias.scope !70
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %fill_context_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load <2 x ptr>, ptr %i.e, align 8, !tbaa !14, !noalias !70
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !14, !alias.scope !70
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load <2 x ptr>, ptr %i.g, align 8, !tbaa !14, !noalias !70
  store <2 x ptr> %i.i, ptr %i.h, align 8, !tbaa !14, !alias.scope !70
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = load <2 x ptr>, ptr %i.j, align 8, !tbaa !14, !noalias !70
  store <2 x ptr> %i.l, ptr %i.k, align 8, !tbaa !14, !alias.scope !70
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.o = load <2 x ptr>, ptr %i.m, align 8, !tbaa !14, !noalias !70
  store <2 x ptr> %i.o, ptr %i.n, align 8, !tbaa !14, !alias.scope !70
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.r = load <4 x i32>, ptr %i.p, align 8, !tbaa !15, !noalias !70
  store <4 x i32> %i.r, ptr %i.q, align 8, !tbaa !15, !alias.scope !70
  %i.s = load i64, ptr %2, align 8, !tbaa !16, !noalias !70 ; 2 uses
  %i.t = icmp ugt i64 %i.s, 95
  br i1 %i.t, label %bb.c, label %fill_context_data.exit

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.v = load i32, ptr %i.u, align 8, !tbaa !20, !noalias !70
end_hunk_0
