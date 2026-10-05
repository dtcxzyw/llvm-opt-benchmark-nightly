Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tiny_gltf_v3?download=true
inline.NumInlined: 786
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@tg3_parse_glb:bb.a

bb.ar:                                            ; preds = %tg3__error_push.exit51
  call void @tg3json_value_free(ptr noundef nonnull %9)
  br label %tg3__error_push.exit

bb.as:                                            ; preds = %bb.al
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ew, i8 0, i64 32, i1 false)
  store ptr %i.cm, ptr %8, align 8, !tbaa !138
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ex, align 8, !tbaa !139
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ey, ptr noundef nonnull align 8 dereferenceable(232) %.0, i64 232, i1 false), !tbaa.struct !141
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 248
  store ptr %4, ptr %i.ez, align 8, !tbaa !142
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 256
  store i32 %5, ptr %i.fa, align 8, !tbaa !143
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 280
  store i32 1, ptr %i.fb, align 8, !tbaa !161
  %.0..0..0.62 = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 264
  store ptr %.0..0..0.62, ptr %i.fc, align 8, !tbaa !163
  %.0..0..0. = load i64, ptr %i.d, align 8, !tbaa !27
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 272
  store i64 %.0..0..0., ptr %i.fd, align 8, !tbaa !164
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !144
  %.not.i52 = icmp eq ptr %i.fg, null
  br i1 %.not.i52, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store ptr @tg3__fs_read_file, ptr %i.ff, align 8, !tbaa !144
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !145
  %.not8.i = icmp eq ptr %i.fi, null
  br i1 %.not8.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store ptr @tg3__fs_free_file, ptr %i.fh, align 8, !tbaa !145
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fj = load ptr, ptr %i.fe, align 8, !tbaa !146
  %.not9.i = icmp eq ptr %i.fj, null
  br i1 %.not9.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store ptr @tg3__fs_file_exists, ptr %i.fe, align 8, !tbaa !146
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !147
  %.not10.i = icmp eq ptr %i.fl, null
  br i1 %.not10.i, label %bb.az, label %tg3__set_default_fs.exit

bb.az:                                            ; preds = %bb.ay
  store ptr @tg3__fs_write_file, ptr %i.fk, align 8, !tbaa !147
  br label %tg3__set_default_fs.exit

tg3__set_default_fs.exit:                         ; preds = %bb.ay, %bb.az
  %i.fm = call fastcc i32 @tg3__parse_from_json(ptr noundef %8, ptr noundef %9, ptr noundef %0)
  call void @tg3json_value_free(ptr noundef nonnull %9)
  br label %tg3__error_push.exit

tg3__error_push.exit:                             ; preds = %bb.x, %bb.z, %bb.q, %bb.o, %bb.m, %bb.f, %bb.d, %tg3__error_push.exit70._crit_edge.i.thread, %bb.v, %bb.u, %bb.s, %bb.h, %bb.ak, %bb.ai, %bb.ag, %tg3__error_push.exit51, %bb.ar, %bb.b, %bb.a, %tg3__set_default_fs.exit
  %.027 = phi i32 [ 22, %bb.b ], [ 50, %bb.ak ], [ %i.fm, %tg3__set_default_fs.exit ], [ 10, %tg3__error_push.exit51 ], [ 22, %bb.a ], [ 10, %bb.ar ], [ 50, %bb.ag ], [ 50, %bb.ai ], [ 23, %bb.x ], [ 23, %bb.z ], [ 20, %bb.q ], [ 20, %bb.o ], [ 20, %bb.m ], [ 22, %bb.f ], [ 22, %bb.d ], [ 23, %tg3__error_push.exit70._crit_edge.i.thread ], [ 23, %bb.v ], [ 24, %bb.u ], [ 21, %bb.s ], [ 22, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 71) i32 @tg3_parse_auto(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, null
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(472) %0, i8 0, i64 472, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 -1, ptr %i.c, align 4, !tbaa !114
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.d = icmp ugt i64 %3, 3
  br i1 %i.d, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.e = load i8, ptr %2, align 1, !tbaa !34
  %i.f = icmp eq i8 %i.e, 103
  br i1 %i.f, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !34
  %i.i = icmp eq i8 %i.h, 108
  br i1 %i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !34
  %i.l = icmp eq i8 %i.k, 84
  br i1 %i.l, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !34
  %i.o = icmp eq i8 %i.n, 70
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i32 @tg3_parse_glb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.q = tail call i32 @tg3_parse(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.i, %bb.c
  %.0 = phi i32 [ 10, %bb.c ], [ %i.p, %bb.i ], [ %i.q, %bb.j ], [ 10, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 71) i32 @tg3_parse_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #12 {
bb.a:
  %5 = alloca %struct.tg3_parse_options, align 8  ; 17 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [4096 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 0, ptr %i.b, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %tg3__error_push.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(472) %0, i8 0, i64 472, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 -1, ptr %i.d, align 4, !tbaa !114
  %.not34 = icmp eq ptr %2, null
  br i1 %.not34, label %tg3__error_push.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not35 = icmp eq ptr %4, null
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %5, ptr noundef nonnull align 8 dereferenceable(232) %4, i64 232, i1 false), !tbaa.struct !141
  %.phi.trans.insert56 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.e = load <2 x ptr>, ptr %.phi.trans.insert58, align 8, !tbaa !48
  %i.f = load <2 x ptr>, ptr %.phi.trans.insert56, align 8, !tbaa !48
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.g, i8 0, i64 208, i1 false)
  store i32 1, ptr %5, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1073741824, ptr %i.i, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 262144, ptr %i.j, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 224
  store i64 0, ptr %i.k, align 8, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 216
  store i32 1, ptr %i.l, align 8, !tbaa !76
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.m = phi <2 x ptr> [ splat (ptr null), %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.n = phi <2 x ptr> [ splat (ptr null), %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.p = icmp eq <2 x ptr> %i.m, splat (ptr null)
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.r = icmp eq <2 x ptr> %i.n, splat (ptr null)
  %i.s = select <2 x i1> %i.p, <2 x ptr> <ptr @tg3__fs_file_exists, ptr @tg3__fs_read_file>, <2 x ptr> %i.m ; 2 uses
  store <2 x ptr> %i.s, ptr %i.o, align 8
  %i.t = select <2 x i1> %i.r, <2 x ptr> <ptr @tg3__fs_free_file, ptr @tg3__fs_write_file>, <2 x ptr> %i.n ; 2 uses
  store <2 x ptr> %i.t, ptr %i.q, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !467  ; 2 uses
  %i.w = extractelement <2 x ptr> %i.s, i64 1
  %i.x = call i32 %i.w(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %i.v) #28
  %i.y = icmp ne i32 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.aa = icmp ne ptr %i.z, null
  %or.cond = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i40 = icmp eq ptr %1, null
  br i1 %.not.i40, label %tg3__error_push.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !62 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !116 ; 3 uses
  %.not27.i41 = icmp ult i32 %i.ac, %i.ae
  %.pre.i42 = load ptr, ptr %1, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27.i41, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not28.i43 = icmp eq i32 %i.ae, 0
  %i.af = shl i32 %i.ae, 1
  %spec.select.i44 = select i1 %.not28.i43, i32 16, i32 %i.af ; 2 uses
  %i.ag = zext i32 %spec.select.i44 to i64
  %i.ah = shl nuw nsw i64 %i.ag, 5
  %i.ai = call ptr @realloc(ptr noundef %.pre.i42, i64 noundef %i.ah) #29 ; 3 uses
  %.not29.i45 = icmp eq ptr %i.ai, null
  br i1 %.not29.i45, label %tg3__error_push.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ai, ptr %1, align 8, !tbaa !63
  store i32 %spec.select.i44, ptr %i.ad, align 4, !tbaa !116
  %.pre30.i46 = load i32, ptr %i.ab, align 8, !tbaa !62
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.aj = phi i32 [ %.pre30.i46, %bb.j ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ak = phi ptr [ %i.ai, %bb.j ], [ %.pre.i42, %bb.h ]
  %i.al = add i32 %i.aj, 1
  store i32 %i.al, ptr %i.ab, align 8, !tbaa !62
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.am ; 5 uses
  store i32 2, ptr %i.an, align 8, !tbaa !118
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 1, ptr %i.ao, align 4, !tbaa !119
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @.str.6, ptr %i.ap, align 8, !tbaa !120
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr null, ptr %i.aq, align 8, !tbaa !121
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 -1, ptr %i.ar, align 8, !tbaa !122
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.as, align 8, !tbaa !61
  br label %tg3__error_push.exit

bb.l:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %.not54 = icmp eq i32 %3, 0
  br i1 %.not54, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %wide.trip.count = zext i32 %3 to i64           ; 3 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph.preheader85, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi83, %vector.body ]
  %vec.phi80 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi81 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %wide.load = load <4 x i8>, ptr %i.at, align 1, !tbaa !34 ; 2 uses
  %wide.load82 = load <4 x i8>, ptr %i.au, align 1, !tbaa !34 ; 2 uses
  %i.av = icmp eq <4 x i8> %wide.load, splat (i8 47)
  %i.aw = icmp eq <4 x i8> %wide.load82, splat (i8 47)
  %i.ax = icmp eq <4 x i8> %wide.load, splat (i8 92)
  %i.ay = icmp eq <4 x i8> %wide.load82, splat (i8 92)
  %i.az = or <4 x i1> %i.av, %i.ax                ; 2 uses
  %i.ba = or <4 x i1> %i.aw, %i.ay                ; 2 uses
  %i.bb = or <4 x i1> %vec.phi80, %i.az           ; 2 uses
  %i.bc = or <4 x i1> %vec.phi81, %i.ba           ; 2 uses
  %predphi = select <4 x i1> %i.az, <4 x i32> %vec.ind, <4 x i32> %vec.phi ; 2 uses
  %predphi83 = select <4 x i1> %i.ba, <4 x i32> %step.add, <4 x i32> %vec.phi79 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !465

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %predphi, <4 x i32> %predphi83)
  %i.be = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax)
  %bin.rdx = or <4 x i1> %i.bc, %i.bb
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.bf = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not84 = icmp eq i4 %i.bf, 0
  %rdx.select = select i1 %.not84, i32 0, i32 %i.be ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader85

.lr.ph.preheader85:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.02652.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %rdx.select, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader85, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ %indvars.iv.ph, %.lr.ph.preheader85 ] ; 3 uses
  %.02652 = phi i32 [ %.1, %bb.n ], [ %.02652.ph, %.lr.ph.preheader85 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !34
  switch i8 %i.bh, label %bb.n [
    i8 47, label %bb.m
    i8 92, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph, %.lr.ph
  %i.bi = trunc nuw i64 %indvars.iv to i32
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.1 = phi i32 [ %i.bi, %bb.m ], [ %.02652, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !466

._crit_edge:                                      ; preds = %bb.n, %middle.block
  %.1.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.1, %bb.n ] ; 3 uses
  %.not37 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not37, label %._crit_edge.thread, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bj = zext i32 %.1.lcssa to i64               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull readonly align 1 %2, i64 %i.bj, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bj
  store i8 0, ptr %i.bk, align 1, !tbaa !34
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.l, %bb.o, %._crit_edge
  %.026.lcssa78 = phi i32 [ 0, %._crit_edge ], [ %.1.lcssa, %bb.o ], [ 0, %bb.l ] ; 2 uses
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.bm = icmp ugt i64 %i.bl, 3
  br i1 %i.bm, label %bb.p, label %bb.u

bb.p:                                             ; preds = %._crit_edge.thread
  %i.bn = load i8, ptr %i.z, align 1, !tbaa !34
  %i.bo = icmp eq i8 %i.bn, 103
  br i1 %i.bo, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !34
  %i.br = icmp eq i8 %i.bq, 108
  br i1 %i.br, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !34
  %i.bu = icmp eq i8 %i.bt, 84
  br i1 %i.bu, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !34
  %i.bx = icmp eq i8 %i.bw, 70
  br i1 %i.bx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.by = call i32 @tg3_parse_glb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.z, i64 noundef %i.bl, ptr noundef nonnull %i.c, i32 noundef %.026.lcssa78, ptr noundef nonnull readonly %5)
  br label %tg3_parse_auto.exit

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %._crit_edge.thread
  %i.bz = call i32 @tg3_parse(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.z, i64 noundef %i.bl, ptr noundef nonnull %i.c, i32 noundef %.026.lcssa78, ptr noundef nonnull readonly %5)
  br label %tg3_parse_auto.exit

tg3_parse_auto.exit:                              ; preds = %bb.u, %bb.t
  %.0.i = phi i32 [ %i.bz, %bb.u ], [ %i.by, %bb.t ]
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.cb = load i64, ptr %i.b, align 8, !tbaa !27
  %i.cc = extractelement <2 x ptr> %i.t, i64 0
  call void %i.cc(ptr noundef %i.ca, i64 noundef %i.cb, ptr noundef %i.v) #28
  br label %tg3__error_push.exit

tg3__error_push.exit:                             ; preds = %bb.k, %bb.i, %bb.g, %tg3_parse_auto.exit, %bb.b, %bb.a
  %.027 = phi i32 [ 1, %bb.b ], [ 1, %bb.g ], [ 1, %bb.i ], [ 1, %bb.a ], [ %.0.i, %tg3_parse_auto.exit ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i32 %.027
end_hunk_0
begin_hunk_1_@tg3_write_to_memory:bb.a
vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.qx, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec254 = and i64 %i.qo, -8                   ; 3 uses
  %i.rg = add nsw i64 %i.qn, %n.vec254
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index255 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next256, %vec.epilog.vector.body ] ; 2 uses
  %i.rh = add i64 %.072, %index255
  %i.ri = trunc i64 %i.rh to i32
  %i.rj = add i32 %i.qm, %i.ri
  %i.rk = zext i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.rk
  store <8 x i8> zeroinitializer, ptr %i.rl, align 1, !tbaa !34
  %index.next256 = add nuw i64 %index255, 8       ; 2 uses
  %i.rm = icmp eq i64 %index.next256, %n.vec254
  br i1 %i.rm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !486

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n257 = icmp eq i64 %i.qo, %n.vec254
  br i1 %cmp.n257, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.qn, %iter.check ], [ %i.qn, %vector.scevcheck ], [ %i.qy, %vec.epilog.iter.check ], [ %i.rg, %vec.epilog.middle.block ] ; 4 uses
  %i.rn = sub nsw i64 0, %indvars.iv.ph
  %xtraiter = and i64 %i.rn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ro = trunc nuw i64 %indvars.iv.prol to i32
  %i.rp = add i32 %i.qm, %i.ro
  %i.rq = zext i32 %i.rp to i64
  %i.rr = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.rq
  store i8 0, ptr %i.rr, align 1, !tbaa !34
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !487

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.rs = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.rt = icmp ugt i64 %i.rs, -4
  br i1 %i.rt, label %.loopexit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %i.qm
  %invariant.op259 = add i32 2, %i.qm
  %invariant.op261 = add i32 3, %i.qm
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ru = trunc nuw i64 %indvars.iv to i32
  %i.rv = add i32 %i.qm, %i.ru
  %i.rw = zext i32 %i.rv to i64
  %i.rx = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.rw
  store i8 0, ptr %i.rx, align 1, !tbaa !34
  %i.ry = trunc i64 %indvars.iv to i32
  %.reass = add i32 %i.ry, %invariant.op
  %i.rz = zext i32 %.reass to i64
  %i.sa = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.rz
  store i8 0, ptr %i.sa, align 1, !tbaa !34
  %i.sb = trunc i64 %indvars.iv to i32
  %.reass260 = add i32 %i.sb, %invariant.op259
  %i.sc = zext i32 %.reass260 to i64
  %i.sd = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.sc
  store i8 0, ptr %i.sd, align 1, !tbaa !34
  %i.se = trunc i64 %indvars.iv to i32
  %.reass262 = add i32 %i.se, %invariant.op261
  %i.sf = zext i32 %.reass262 to i64
  %i.sg = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.sf
  store i8 0, ptr %i.sg, align 1, !tbaa !34
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !488

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.fv, %._crit_edge
  call void @free(ptr noundef nonnull %i.np) #28
  store ptr %i.pd, ptr %2, align 8, !tbaa !20
  store i64 %i.pc, ptr %3, align 8, !tbaa !27
  br label %tg3__error_push.exit

bb.fw:                                            ; preds = %bb.fj
  %i.sh = call noalias ptr @malloc(i64 noundef %.0164) #30 ; 3 uses
  %.not105 = icmp eq ptr %i.sh, null
  br i1 %.not105, label %bb.fx, label %bb.gc

bb.fx:                                            ; preds = %bb.fw
  call void @free(ptr noundef nonnull %i.np) #28
  %.not.i139 = icmp eq ptr %1, null
  br i1 %.not.i139, label %tg3__error_push.exit, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.si = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.sj = load i32, ptr %i.si, align 8, !tbaa !62 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !116 ; 3 uses
  %.not27.i140 = icmp ult i32 %i.sj, %i.sl
  %.pre.i141 = load ptr, ptr %1, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27.i140, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %.not28.i142 = icmp eq i32 %i.sl, 0
  %i.sm = shl i32 %i.sl, 1
  %spec.select.i143 = select i1 %.not28.i142, i32 16, i32 %i.sm ; 2 uses
  %i.sn = zext i32 %spec.select.i143 to i64
  %i.so = shl nuw nsw i64 %i.sn, 5
  %i.sp = call ptr @realloc(ptr noundef %.pre.i141, i64 noundef %i.so) #29 ; 3 uses
  %.not29.i144 = icmp eq ptr %i.sp, null
  br i1 %.not29.i144, label %tg3__error_push.exit, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  store ptr %i.sp, ptr %1, align 8, !tbaa !63
  store i32 %spec.select.i143, ptr %i.sk, align 4, !tbaa !116
  %.pre30.i145 = load i32, ptr %i.si, align 8, !tbaa !62
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fy
  %i.sq = phi i32 [ %.pre30.i145, %bb.ga ], [ %i.sj, %bb.fy ] ; 2 uses
  %i.sr = phi ptr [ %i.sp, %bb.ga ], [ %.pre.i141, %bb.fy ]
  %i.ss = add i32 %i.sq, 1
  store i32 %i.ss, ptr %i.si, align 8, !tbaa !62
  %i.st = zext i32 %i.sq to i64
  %i.su = getelementptr inbounds nuw [32 x i8], ptr %i.sr, i64 %i.st ; 5 uses
  store i32 2, ptr %i.su, align 8, !tbaa !118
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  store i32 50, ptr %i.sv, align 4, !tbaa !119
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  store ptr @.str.11, ptr %i.sw, align 8, !tbaa !120
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  store ptr null, ptr %i.sx, align 8, !tbaa !121
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  store i64 -1, ptr %i.sy, align 8, !tbaa !122
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.sz, align 8, !tbaa !61
  br label %tg3__error_push.exit

bb.gc:                                            ; preds = %bb.fw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sh, ptr nonnull readonly align 1 %i.np, i64 %.0164, i1 false)
  call void @free(ptr noundef nonnull %i.np) #28
  store ptr %i.sh, ptr %2, align 8, !tbaa !20
  store i64 %.0164, ptr %3, align 8, !tbaa !27
  br label %tg3__error_push.exit

tg3__error_push.exit:                             ; preds = %bb.c, %bb.gb, %bb.fz, %bb.fx, %.loopexit, %bb.fp, %bb.fr, %bb.ft, %bb.fi, %bb.fg, %bb.fe, %bb.er, %bb.ep, %bb.en, %bb.gc, %bb.d
  %.2 = phi i32 [ 50, %bb.fi ], [ 80, %bb.d ], [ 50, %bb.er ], [ 50, %bb.gb ], [ 0, %bb.gc ], [ 50, %bb.ft ], [ 50, %bb.en ], [ 50, %bb.ep ], [ 50, %bb.fe ], [ 50, %bb.fg ], [ 0, %.loopexit ], [ 50, %bb.fp ], [ 50, %bb.fr ], [ 50, %bb.fx ], [ 50, %bb.fz ], [ 80, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 81) i32 @tg3_write_to_file(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #12 {
bb.a:
  %5 = alloca %struct.tg3_write_options, align 8  ; 13 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 0, ptr %i.b, align 8, !tbaa !27
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 8 dereferenceable(160) %4, i64 160, i1 false), !tbaa.struct !289
  %.phi.trans.insert28 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.phi.trans.insert30 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = load <2 x ptr>, ptr %.phi.trans.insert30, align 8, !tbaa !48
  %i.d = load <2 x ptr>, ptr %.phi.trans.insert28, align 8, !tbaa !48
  br label %tg3__set_default_fs.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %i.e, i8 0, i64 156, i1 false)
  store i32 1, ptr %5, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 1073741824, ptr %i.f, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i32 262144, ptr %i.g, align 8, !tbaa !80
  br label %tg3__set_default_fs.exit

tg3__set_default_fs.exit:                         ; preds = %bb.c, %bb.b
  %i.h = phi <2 x ptr> [ splat (ptr null), %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.i = phi <2 x ptr> [ splat (ptr null), %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.k = icmp eq <2 x ptr> %i.h, splat (ptr null)
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.m = icmp eq <2 x ptr> %i.i, splat (ptr null)
  %i.n = select <2 x i1> %i.k, <2 x ptr> <ptr @tg3__fs_file_exists, ptr @tg3__fs_read_file>, <2 x ptr> %i.h
  store <2 x ptr> %i.n, ptr %i.j, align 8
  %i.o = select <2 x i1> %i.m, <2 x ptr> <ptr @tg3__fs_free_file, ptr @tg3__fs_write_file>, <2 x ptr> %i.i ; 2 uses
  store <2 x ptr> %i.o, ptr %i.l, align 8
  %i.p = call i32 @tg3_write_to_memory(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %5) ; 2 uses
  %.not14 = icmp eq i32 %i.p, 0
  br i1 %.not14, label %bb.d, label %tg3__error_push.exit

bb.d:                                             ; preds = %tg3__set_default_fs.exit
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.r = load i64, ptr %i.b, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !496
  %i.u = extractelement <2 x ptr> %i.o, i64 1
  %i.v = call i32 %i.u(ptr noundef %2, i32 noundef %3, ptr noundef %i.q, i64 noundef %i.r, ptr noundef %i.t) #28
  call void @free(ptr noundef %i.q) #28
  %.not15 = icmp eq i32 %i.v, 0
  br i1 %.not15, label %bb.e, label %tg3__error_push.exit

bb.e:                                             ; preds = %bb.d
  %.not.i17 = icmp eq ptr %1, null
  br i1 %.not.i17, label %tg3__error_push.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !62   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !116  ; 3 uses
  %.not27.i18 = icmp ult i32 %i.x, %i.z
  %.pre.i19 = load ptr, ptr %1, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27.i18, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not28.i20 = icmp eq i32 %i.z, 0
  %i.aa = shl i32 %i.z, 1
  %spec.select.i21 = select i1 %.not28.i20, i32 16, i32 %i.aa ; 2 uses
  %i.ab = zext i32 %spec.select.i21 to i64
  %i.ac = shl nuw nsw i64 %i.ab, 5
  %i.ad = call ptr @realloc(ptr noundef %.pre.i19, i64 noundef %i.ac) #29 ; 3 uses
  %.not29.i22 = icmp eq ptr %i.ad, null
  br i1 %.not29.i22, label %tg3__error_push.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ad, ptr %1, align 8, !tbaa !63
  store i32 %spec.select.i21, ptr %i.y, align 4, !tbaa !116
  %.pre30.i23 = load i32, ptr %i.w, align 8, !tbaa !62
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ae = phi i32 [ %.pre30.i23, %bb.h ], [ %i.x, %bb.f ] ; 2 uses
  %i.af = phi ptr [ %i.ad, %bb.h ], [ %.pre.i19, %bb.f ]
  %i.ag = add i32 %i.ae, 1
  store i32 %i.ag, ptr %i.w, align 8, !tbaa !62
  %i.ah = zext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ah ; 5 uses
  store i32 2, ptr %i.ai, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 3, ptr %i.aj, align 4, !tbaa !119
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @.str.13, ptr %i.ak, align 8, !tbaa !120
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr null, ptr %i.al, align 8, !tbaa !121
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 -1, ptr %i.am, align 8, !tbaa !122
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.an, align 8, !tbaa !61
  br label %tg3__error_push.exit

tg3__error_push.exit:                             ; preds = %bb.i, %bb.g, %bb.e, %bb.d, %tg3__set_default_fs.exit
  %.0 = phi i32 [ 0, %bb.d ], [ %i.p, %tg3__set_default_fs.exit ], [ 3, %bb.e ], [ 3, %bb.i ], [ 3, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @tg3_write_free(ptr noundef captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #13 {
bb.a:
  tail call void @free(ptr noundef %0) #28
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @tg3_writer_create(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  %calloc = tail call dereferenceable_or_null(208) ptr @calloc(i64 1, i64 208) ; 9 uses
  %.not = icmp eq ptr %calloc, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %calloc, align 8, !tbaa !291
  %i.a = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !292
  %.not15 = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %calloc, i64 16 ; 2 uses
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(160) %2, i64 160, i1 false), !tbaa.struct !289
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %calloc, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %i.c, i8 0, i64 156, i1 false)
  store i32 1, ptr %i.b, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %calloc, i64 120
  store i64 1073741824, ptr %i.d, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %calloc, i64 136
  store i32 262144, ptr %i.e, align 8, !tbaa !80
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %calloc, i64 176 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store i32 6, ptr %i.f, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret ptr %calloc
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 81) i32 @tg3_writer_begin(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tg3json_value, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc i32 @tg3__serialize_asset(ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %i.d, ptr noundef nonnull readonly @.str.14, i64 noundef 5, ptr noundef nonnull %2)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %tg3__json_set_take.exit.thread, label %tg3__json_set_take.exit

tg3__json_set_take.exit.thread:                   ; preds = %bb.c
  call void @tg3json_value_free(ptr noundef nonnull %2)
  br label %bb.d

bb.d:                                             ; preds = %tg3__json_set_take.exit.thread, %bb.b
  call void @tg3json_value_free(ptr noundef nonnull %2)
  br label %bb.e

tg3__json_set_take.exit:                          ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 1, ptr %i.f, align 8, !tbaa !293
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %tg3__json_set_take.exit, %bb.d
  %.0 = phi i32 [ 0, %tg3__json_set_take.exit ], [ 50, %bb.d ], [ 80, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_asset(ptr nofree noundef nonnull readonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(address_is_null) initializes((0, 24)) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %3 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %5 = alloca %struct.tg3json_value, align 8      ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store i32 6, ptr %1, align 8, !tbaa !37
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, null
  %i.e = icmp eq i32 %i.c, 0
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond.i, label %tg3__serialize_str.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 4, ptr %5, align 8
  %i.g = add nuw nsw i64 %i.f, 1
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #30 ; 4 uses
  %.not.i13.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i13.i.i.i, label %tg3__serialize_str.exit.thread42, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.a, i64 %i.f, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.f, ptr %i.k, align 8, !tbaa !34
  %i.l = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %1, ptr noundef nonnull readonly @.str.56, i64 noundef 7, ptr noundef nonnull %5)
  %.not.i4.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i4.i.i, label %tg3json_object_set_take.exit.thread.i.i.i, label %tg3__serialize_str.exit

tg3json_object_set_take.exit.thread.i.i.i:        ; preds = %bb.c
  call void @tg3json_value_free(ptr noundef nonnull %5)
  br label %tg3__serialize_str.exit.thread42

end_hunk_1
