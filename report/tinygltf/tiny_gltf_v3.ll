Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tiny_gltf_v3?download=true
inline.NumInlined: 786
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@tg3_parse_file:bb.a
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
}

; Function Attrs: nounwind uwtable
define dso_local void @tg3_model_free(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !131    ; 5 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !48 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !470  ; 2 uses
  %.not12.i = icmp eq ptr %i.b, null
  br i1 %.not12.i, label %tg3__arena_destroy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.013.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.b, %bb.c ] ; 3 uses
  %i.c = load ptr, ptr %.013.i, align 8, !tbaa !155 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.013.i, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !151
  %i.f = add i64 %i.e, 32
  tail call void %.sroa.3.0.copyload.i(ptr noundef nonnull %.013.i, i64 noundef %i.f, ptr noundef %.sroa.5.0.copyload.i) #28, !inline_history !468
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %tg3__arena_destroy.exit, label %.lr.ph.i, !llvm.loop !469

tg3__arena_destroy.exit:                          ; preds = %.lr.ph.i, %bb.c
  tail call void %.sroa.3.0.copyload.i(ptr noundef nonnull %i.a, i64 noundef 80, ptr noundef %.sroa.5.0.copyload.i) #28, !inline_history !468
  br label %bb.d

bb.d:                                             ; preds = %tg3__arena_destroy.exit, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %0, i8 0, i64 472, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 -1, ptr %i.g, align 4, !tbaa !114
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 81) i32 @tg3_write_to_memory(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.tg3json__buffer, align 8    ; 6 uses
  %6 = alloca %struct.tg3json__buffer, align 8    ; 6 uses
  %7 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %8 = alloca %struct.tg3json_value, align 8      ; 6 uses
  %9 = alloca %struct.tg3json_value, align 8      ; 99 uses
  %10 = alloca %struct.tg3json_value, align 8     ; 63 uses
  %11 = alloca %struct.tg3json_value, align 8     ; 9 uses
  %12 = alloca %struct.tg3json_value, align 8     ; 9 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.sroa.0 = alloca i32, align 8                  ; 4 uses
  %.sroa.4 = alloca i32, align 4                  ; 4 uses
  %13 = alloca %struct.tg3json_value, align 8     ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.b = icmp ne ptr %2, null                     ; 2 uses
  %.074.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.074.sroa.gep81 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.074.sroa.gep87 = getelementptr inbounds nuw i8, ptr %4, i64 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not169 = icmp eq ptr %3, null
  br i1 %.not169, label %tg3__error_push.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %3, align 8, !tbaa !27
  %i.c = icmp ne ptr %0, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.e, label %tg3__error_push.exit

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.f, label %._crit_edge175

._crit_edge175:                                   ; preds = %bb.e
  %.pre = load i32, ptr %.074.sroa.gep, align 8, !tbaa !489
  %.pre177 = load i32, ptr %.074.sroa.gep81, align 4, !tbaa !490
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %.sroa.4, align 4
  store i32 1, ptr %.sroa.0, align 8, !tbaa !78
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge175, %bb.f
  %i.d = phi i32 [ %.pre177, %._crit_edge175 ], [ 0, %bb.f ]
  %i.e = phi i32 [ %.pre, %._crit_edge175 ], [ 0, %bb.f ] ; 7 uses
  %.074.sroa.phi83 = phi ptr [ %4, %._crit_edge175 ], [ %.sroa.0, %bb.f ]
  %.074.sroa.phi86 = phi ptr [ %.074.sroa.gep87, %._crit_edge175 ], [ %.sroa.4, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  store i32 6, ptr %13, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = call fastcc i32 @tg3__serialize_asset(ptr noundef readonly %i.f, ptr noundef %8)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.en, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull readonly @.str.14, i64 noundef 5, ptr noundef nonnull %8)
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %tg3__json_set_take.exit.thread.i, label %tg3__json_set_take.exit.i

tg3__json_set_take.exit.thread.i:                 ; preds = %bb.h
  call void @tg3json_value_free(ptr noundef nonnull %8)
  br label %bb.en

tg3__json_set_take.exit.i:                        ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.j = load i32, ptr %i.i, align 4, !tbaa !114  ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %tg3__json_set_take.exit.i
  %i.l = zext nneg i32 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i32 2, ptr %7, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !34
  %i.n = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull readonly @.str.49, i64 noundef 5, ptr noundef nonnull %7)
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %tg3__json_set_int.exit.thread.i, label %tg3__json_set_int.exit.i

tg3__json_set_int.exit.thread.i:                  ; preds = %bb.i
  call void @tg3json_value_free(ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.en

tg3__json_set_int.exit.i:                         ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.j

bb.j:                                             ; preds = %tg3__json_set_int.exit.i, %tg3__json_set_take.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !491
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.r = load i32, ptr %i.q, align 8, !tbaa !492
  %i.s = call fastcc i32 @tg3__serialize_string_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.47, ptr noundef %i.p, i32 noundef %i.r)
  %.not148.i = icmp eq i32 %i.s, 0
  br i1 %.not148.i, label %bb.en, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !493
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.w = load i32, ptr %i.v, align 8, !tbaa !494
  %i.x = call fastcc i32 @tg3__serialize_string_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.48, ptr noundef %i.u, i32 noundef %i.w)
  %.not149.i = icmp eq i32 %i.x, 0
  br i1 %.not149.i, label %bb.en, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !168
  %.not150.i = icmp eq ptr %i.z, null
  br i1 %.not150.i, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !169
  %.not151.i = icmp eq i32 %i.ab, 0
  br i1 %.not151.i, label %bb.w, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 5, ptr %9, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.u, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.u ] ; 2 uses
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !168
  %i.af = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.ag = call fastcc i32 @tg3__serialize_buffer(ptr noundef %i.af, i32 noundef %i.d, ptr noundef %10)
  %.not221.i = icmp eq i32 %i.ag, 0
  br i1 %.not221.i, label %.loopexit394.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = load i32, ptr %9, align 8, !tbaa !37
  %i.ai = icmp eq i32 %i.ah, 5
  br i1 %i.ai, label %bb.p, label %tg3__json_push_take.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !34 ; 4 uses
  %i.ak = add i64 %i.aj, 1                        ; 3 uses
  %.not.i.not.i.i.i = icmp eq i64 %i.aj, -1
  br i1 %.not.i.not.i.i.i, label %.tg3json__init_value.exit_crit_edge.i.i.i, label %bb.q

.tg3json__init_value.exit_crit_edge.i.i.i:        ; preds = %bb.p
  %.pre.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !34
  br label %bb.u

bb.q:                                             ; preds = %bb.p
  %.not25.i.i.i.i = icmp eq i64 %i.aj, 0
  %spec.select.i.i.i.i = select i1 %.not25.i.i.i.i, i64 8, i64 %i.aj ; 3 uses
  %i.al = icmp ult i64 %spec.select.i.i.i.i, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %bb.r
  %.027.i.i.i.i = phi i64 [ %i.an, %bb.r ], [ %spec.select.i.i.i.i, %bb.q ] ; 2 uses
  %i.am = icmp slt i64 %.027.i.i.i.i, 0
  br i1 %i.am, label %._crit_edge.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = shl nuw i64 %.027.i.i.i.i, 1            ; 3 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  br i1 %i.ao, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1

._crit_edge.i.i.i.i:                              ; preds = %bb.r, %.lr.ph.i.i.i.i, %bb.q
  %.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.q ], [ %i.an, %bb.r ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ap = icmp ugt i64 %.1.i.i.i.i, 768614336404564650
  br i1 %i.ap, label %tg3__json_push_take.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.ar = mul nuw i64 %.1.i.i.i.i, 24
  %i.as = call ptr @realloc(ptr noundef %i.aq, i64 noundef %i.ar) #29 ; 3 uses
  %.not26.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not26.i.i.i.i, label %tg3__json_push_take.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.as, ptr %i.ac, align 8, !tbaa !48
  %.pre17.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !34
  br label %bb.u

tg3__json_push_take.exit.thread.i:                ; preds = %bb.s, %._crit_edge.i.i.i.i, %bb.o
  call void @tg3json_value_free(ptr noundef nonnull %10)
  br label %.loopexit394.i

end_hunk_0
begin_hunk_1_@tg3_write_to_memory:bb.a
vector.scevcheck:                                 ; preds = %iter.check
  %i.qp = xor i64 %i.qn, -1
  %i.qq = add nsw i64 %i.qp, %wide.trip.count     ; 2 uses
  %i.qr = add i32 %i.ol, %i.ot
  %i.qs = trunc i64 %i.qq to i32
  %i.qt = sub i32 -29, %i.qr
  %i.qu = icmp ult i32 %i.qt, %i.qs
  %i.qv = icmp ugt i64 %i.qq, 4294967295
  %i.qw = or i1 %i.qu, %i.qv
  br i1 %i.qw, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check253 = icmp ult i64 %i.qo, 32
  br i1 %min.iters.check253, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.qx = and i64 %i.qo, 24
  %n.vec = and i64 %i.qo, -32                     ; 4 uses
  %i.qy = add nsw i64 %i.qn, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qz = add i64 %.072, %index
  %i.ra = trunc i64 %i.qz to i32
  %i.rb = add i32 %i.qm, %i.ra
  %i.rc = zext i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.rc ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  store <16 x i8> zeroinitializer, ptr %i.rd, align 1, !tbaa !34
  store <16 x i8> zeroinitializer, ptr %i.re, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.rf = icmp eq i64 %index.next, %n.vec
  br i1 %i.rf, label %middle.block, label %vector.body, !llvm.loop !485

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qo, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

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
define dso_local noundef ptr @tg3_writer_create(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #5 {
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
end_hunk_1
begin_hunk_2_@tg3__serialize_light:bb.a
  br i1 %.not39, label %bb.p, label %tg3_str_equals_cstr.exit.thread

bb.p:                                             ; preds = %tg3__serialize_double.exit73.thread108, %tg3__serialize_double.exit66.thread103, %bb.o, %tg3__serialize_double.exit73.thread
  call void @tg3json_value_free(ptr noundef nonnull %9)
  br label %bb.q

tg3_str_equals_cstr.exit.thread:                  ; preds = %bb.l, %bb.o, %tg3_str_equals_cstr.exit, %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bt = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %2, ptr noundef nonnull %i.bs)
  %.not40 = icmp eq i32 %i.bt, 0
  br i1 %.not40, label %bb.q, label %bb.r

bb.q:                                             ; preds = %tg3__serialize_double.exit58.thread91, %tg3__serialize_double.exit.thread86, %tg3__serialize_str.exit48.thread81, %tg3__serialize_str.exit.thread76, %tg3_str_equals_cstr.exit.thread, %bb.j, %bb.p
  call void @tg3json_value_free(ptr noundef nonnull %2)
  br label %bb.r

bb.r:                                             ; preds = %tg3_str_equals_cstr.exit.thread, %bb.q
  %.0 = phi i32 [ 0, %bb.q ], [ 1, %tg3_str_equals_cstr.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 81) i32 @tg3_writer_end(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %1 = alloca %struct.tg3json__buffer, align 8    ; 6 uses
  %2 = alloca %struct.tg3json__buffer, align 8    ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load i32, ptr %i.a, align 8, !tbaa !293
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !291
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !542
  %.not16 = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  br i1 %.not16, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.g = call fastcc i32 @tg3json__stringify_value_ex(ptr noundef %2, ptr noundef nonnull readonly %i.f, i32 noundef 2, i32 noundef 0)
  %.not12.i = icmp eq i32 %i.g, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !52 ; 3 uses
  br i1 %.not12.i, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.e
  call void @free(ptr noundef %.pre.i) #28
  br label %tg3json_stringify_pretty.exit

bb.f:                                             ; preds = %bb.e
  %.not14.i = icmp eq ptr %.pre.i, null
  br i1 %.not14.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.h = call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #30 ; 3 uses
  %.not15.i = icmp eq ptr %i.h, null
  br i1 %.not15.i, label %tg3json_stringify_pretty.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.h, align 1, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.i = phi ptr [ %i.h, %bb.h ], [ %.pre.i, %bb.f ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !53
  br label %tg3json_stringify_pretty.exit

tg3json_stringify_pretty.exit:                    ; preds = %bb.g, %bb.i, %._crit_edge.i
  %.sink.i = phi i64 [ %i.k, %bb.i ], [ 0, %._crit_edge.i ], [ 0, %bb.g ]
  %.0.ph.i = phi ptr [ %i.i, %bb.i ], [ null, %._crit_edge.i ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.o

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.l = call fastcc i32 @tg3json__stringify_value_ex(ptr noundef %1, ptr noundef nonnull readonly %i.f, i32 noundef -1, i32 noundef 0)
  %.not12.i19 = icmp eq i32 %i.l, 0
  %.phi.trans.insert.i20 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i21 = load ptr, ptr %.phi.trans.insert.i20, align 8, !tbaa !52 ; 3 uses
  br i1 %.not12.i19, label %._crit_edge.i26, label %bb.k

._crit_edge.i26:                                  ; preds = %bb.j
  call void @free(ptr noundef %.pre.i21) #28
  br label %tg3json_stringify.exit

bb.k:                                             ; preds = %bb.j
  %.not14.i22 = icmp eq ptr %.pre.i21, null
  br i1 %.not14.i22, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.m = call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #30 ; 3 uses
  %.not15.i25 = icmp eq ptr %i.m, null
  br i1 %.not15.i25, label %tg3json_stringify.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.m, align 1, !tbaa !34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.n = phi ptr [ %i.m, %bb.m ], [ %.pre.i21, %bb.k ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !53
  br label %tg3json_stringify.exit

tg3json_stringify.exit:                           ; preds = %bb.l, %bb.n, %._crit_edge.i26
  %.sink.i23 = phi i64 [ %i.p, %bb.n ], [ 0, %._crit_edge.i26 ], [ 0, %bb.l ]
  %.0.ph.i24 = phi ptr [ %i.n, %bb.n ], [ null, %._crit_edge.i26 ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.o

bb.o:                                             ; preds = %tg3json_stringify.exit, %tg3json_stringify_pretty.exit
  %.027 = phi i64 [ %.sink.i23, %tg3json_stringify.exit ], [ %.sink.i, %tg3json_stringify_pretty.exit ]
  %i.q = phi ptr [ %.0.ph.i24, %tg3json_stringify.exit ], [ %.0.ph.i, %tg3json_stringify_pretty.exit ] ; 3 uses
  %.not17 = icmp eq ptr %i.q, null
  br i1 %.not17, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = load ptr, ptr %0, align 8, !tbaa !291
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !292
  %i.u = call i32 %i.r(ptr noundef nonnull %i.q, i64 noundef %.027, ptr noundef %i.t) #28
  call void @free(ptr noundef nonnull %i.q) #28
  %.not18 = icmp eq i32 %i.u, 0
  %i.v = select i1 %.not18, i32 80, i32 0
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.a, %bb.b, %bb.c, %bb.p
  %.0 = phi i32 [ %i.v, %bb.p ], [ 80, %bb.a ], [ 80, %bb.c ], [ 80, %bb.b ], [ 50, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @tg3_writer_destroy(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @tg3json_value_free(ptr noundef nonnull %i.a)
  tail call void @free(ptr noundef nonnull %0) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3json__parse_string_raw(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.tg3json__buffer, align 8    ; 19 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %0, ptr %3, align 8, !tbaa !295
  %i.d = load ptr, ptr %0, align 8, !tbaa !35     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 3 uses
  %.not = icmp ult ptr %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.d, align 1, !tbaa !34
  %.not78 = icmp eq i8 %i.g, 34
  br i1 %.not78, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.d, label %tg3json__set_error.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.h, align 8, !tbaa !24
  br label %tg3json__set_error.exit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !35
  %i.k = icmp ult ptr %i.j, %i.f
  br i1 %i.k, label %.lr.ph, label %.thread311

.lr.ph:                                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 20 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 41 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 19 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.backedge
  %i.q = phi ptr [ %i.f, %.lr.ph ], [ %i.ok, %.backedge ]
  %i.r = phi ptr [ %i.j, %.lr.ph ], [ %i.oj, %.backedge ] ; 8 uses
  %.063335 = phi ptr [ %i.j, %.lr.ph ], [ %.265.jt0, %.backedge ] ; 7 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !34    ; 2 uses
  switch i8 %i.s, label %bb.ds [
    i8 34, label %bb.g
    i8 92, label %bb.r
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %.063335 to i64
  %i.u = load i64, ptr %i.l, align 8, !tbaa !31   ; 2 uses
  %.not95 = icmp ne i64 %i.u, 0
  %.pre348.pre = load i64, ptr %i.m, align 8, !tbaa !53 ; 5 uses
  %.pre350 = ptrtoint ptr %i.r to i64
  %.pre351 = sub i64 %.pre350, %i.t               ; 4 uses
  %i.v = add i64 %.pre351, %.pre348.pre
  %i.w = icmp ugt i64 %i.v, %i.u
  %or.cond = select i1 %.not95, i1 %i.w, i1 false
  br i1 %or.cond, label %.thread303, label %._crit_edge349

._crit_edge349:                                   ; preds = %bb.g
  %i.x = icmp eq ptr %i.r, %.063335
  br i1 %i.x, label %.thread307, label %bb.h

bb.h:                                             ; preds = %._crit_edge349
  %i.y = load ptr, ptr %3, align 8, !tbaa !295    ; 5 uses
  %i.z = add i64 %.pre351, 1
  %i.aa = add i64 %i.z, %.pre348.pre              ; 4 uses
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !27  ; 7 uses
  %.not.i.i = icmp ugt i64 %i.aa, %i.ab
  br i1 %.not.i.i, label %bb.i, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i

.tg3json__reserve_bytes_parser.exit_crit_edge.i:  ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !52
  br label %tg3json__reserve_bytes_parser.exit.i

bb.i:                                             ; preds = %bb.h
  %.not60.i.i = icmp eq i64 %i.ab, 0
  %spec.select.i.i = select i1 %.not60.i.i, i64 8, i64 %i.ab ; 3 uses
  %i.ac = icmp ult i64 %spec.select.i.i, %i.aa
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.j
  %.04666.i.i = phi i64 [ %i.ae, %bb.j ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %i.ad = icmp slt i64 %.04666.i.i, 0
  br i1 %i.ad, label %._crit_edge.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ae = shl nuw i64 %.04666.i.i, 1              ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.aa
  br i1 %i.af, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.j, %.lr.ph.i.i, %bb.i
  %.1.i.i = phi i64 [ %spec.select.i.i, %bb.i ], [ %i.ae, %bb.j ], [ %i.aa, %.lr.ph.i.i ] ; 6 uses
  %.not61.i.i = icmp ne ptr %i.y, null            ; 2 uses
  br i1 %.not61.i.i, label %bb.k, label %.critedge.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.ag = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i, i64 %i.ab) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !39 ; 2 uses
  %.not62.i.i = icmp ne i64 %i.ai, 0
  %i.aj = icmp ugt i64 %.1.i.i, %i.ai
  %or.cond64.i.i = and i1 %.not62.i.i, %i.aj
  br i1 %or.cond64.i.i, label %.thread303, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !40 ; 3 uses
  %i.am = icmp ne i64 %i.al, 0
  %i.an = icmp ugt i64 %.1.i.i, %i.ab
  %or.cond.i.i = and i1 %i.an, %i.am
  br i1 %or.cond.i.i, label %bb.m, label %.critedge.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = icmp ugt i64 %i.ag, %i.al
  br i1 %i.ao, label %.thread303, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !32
  %i.ar = sub nuw i64 %i.al, %i.ag
  %i.as = icmp ugt i64 %i.aq, %i.ar
  br i1 %i.as, label %.thread303, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.n, %bb.l, %._crit_edge.i.i
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.au = tail call ptr @realloc(ptr noundef %i.at, i64 noundef %.1.i.i) #29 ; 3 uses
  %.not63.i.i = icmp eq ptr %i.au, null
  br i1 %.not63.i.i, label %.thread303, label %bb.o

bb.o:                                             ; preds = %.critedge.i.i
  %i.av = icmp ugt i64 %.1.i.i, %i.ab
  %or.cond65.i.i = and i1 %.not61.i.i, %i.av
  br i1 %or.cond65.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = sub nuw i64 %.1.i.i, %i.ab
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !32
  %i.az = add i64 %i.aw, %i.ay
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr %i.au, ptr %i.n, align 8, !tbaa !48
  br label %tg3json__reserve_bytes_parser.exit.i

tg3json__reserve_bytes_parser.exit.i:             ; preds = %bb.q, %.tg3json__reserve_bytes_parser.exit_crit_edge.i
  %i.ba = phi ptr [ %.pre.i, %.tg3json__reserve_bytes_parser.exit_crit_edge.i ], [ %i.au, %bb.q ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.pre348.pre
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr readonly align 1 %.063335, i64 %.pre351, i1 false)
  %i.bc = add i64 %.pre348.pre, %.pre351          ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc
  store i8 0, ptr %i.bd, align 1, !tbaa !34
  %.pre346 = load ptr, ptr %0, align 8, !tbaa !35
  br label %.thread307

.thread307:                                       ; preds = %._crit_edge349, %tg3json__reserve_bytes_parser.exit.i
  %i.be = phi i64 [ %.pre348.pre, %._crit_edge349 ], [ %i.bc, %tg3json__reserve_bytes_parser.exit.i ]
  %i.bf = phi ptr [ %i.r, %._crit_edge349 ], [ %.pre346, %tg3json__reserve_bytes_parser.exit.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bg, ptr %0, align 8, !tbaa !35
  %i.bh = load ptr, ptr %i.n, align 8, !tbaa !52
  store ptr %i.bh, ptr %1, align 8, !tbaa !20
  store i64 %i.be, ptr %2, align 8, !tbaa !27
  br label %tg3json__set_error.exit

bb.r:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bi = ptrtoint ptr %.063335 to i64
  %i.bj = load i64, ptr %i.l, align 8, !tbaa !31  ; 2 uses
  %.not79 = icmp eq i64 %i.bj, 0
  %.pre353 = ptrtoint ptr %i.r to i64
  %.pre355 = sub i64 %.pre353, %i.bi              ; 4 uses
  br i1 %.not79, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = load i64, ptr %i.m, align 8, !tbaa !53
  %i.bl = add i64 %.pre355, %i.bk
  %i.bm = icmp ugt i64 %i.bl, %i.bj
  br i1 %i.bm, label %bb.dw, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %bb.s
  %i.bn = icmp eq ptr %i.r, %.063335
  br i1 %i.bn, label %tg3json__buf_append.exit116, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.bo = load ptr, ptr %3, align 8, !tbaa !295   ; 5 uses
  %i.bp = load i64, ptr %i.m, align 8, !tbaa !53  ; 3 uses
  %i.bq = add i64 %.pre355, 1
  %i.br = add i64 %i.bq, %i.bp                    ; 4 uses
  %i.bs = load i64, ptr %i.o, align 8, !tbaa !27  ; 7 uses
  %.not.i.i97 = icmp ugt i64 %i.br, %i.bs
  br i1 %.not.i.i97, label %bb.u, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i98

.tg3json__reserve_bytes_parser.exit_crit_edge.i98: ; preds = %bb.t
  %.pre.i99 = load ptr, ptr %i.n, align 8, !tbaa !52
  br label %tg3json__reserve_bytes_parser.exit.i100

bb.u:                                             ; preds = %bb.t
  %.not60.i.i102 = icmp eq i64 %i.bs, 0
  %spec.select.i.i103 = select i1 %.not60.i.i102, i64 8, i64 %i.bs ; 3 uses
  %i.bt = icmp ult i64 %spec.select.i.i103, %i.br
  br i1 %i.bt, label %.lr.ph.i.i114, label %._crit_edge.i.i104

.lr.ph.i.i114:                                    ; preds = %bb.u, %bb.v
  %.04666.i.i115 = phi i64 [ %i.bv, %bb.v ], [ %spec.select.i.i103, %bb.u ] ; 2 uses
  %i.bu = icmp slt i64 %.04666.i.i115, 0
  br i1 %i.bu, label %._crit_edge.i.i104, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i114
  %i.bv = shl nuw i64 %.04666.i.i115, 1           ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.br
  br i1 %i.bw, label %.lr.ph.i.i114, label %._crit_edge.i.i104, !llvm.loop !0

._crit_edge.i.i104:                               ; preds = %bb.v, %.lr.ph.i.i114, %bb.u
  %.1.i.i105 = phi i64 [ %spec.select.i.i103, %bb.u ], [ %i.bv, %bb.v ], [ %i.br, %.lr.ph.i.i114 ] ; 7 uses
  %.not61.i.i106 = icmp ne ptr %i.bo, null        ; 2 uses
  br i1 %.not61.i.i106, label %bb.w, label %.critedge.i.i107

bb.w:                                             ; preds = %._crit_edge.i.i104
  %i.bx = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i105, i64 %i.bs) ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !39 ; 2 uses
  %.not62.i.i111 = icmp ne i64 %i.bz, 0
  %i.ca = icmp ugt i64 %.1.i.i105, %i.bz
  %or.cond64.i.i112 = and i1 %.not62.i.i111, %i.ca
  br i1 %or.cond64.i.i112, label %bb.dw, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !40 ; 3 uses
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = icmp ugt i64 %.1.i.i105, %i.bs
  %or.cond.i.i113 = and i1 %i.ce, %i.cd
  br i1 %or.cond.i.i113, label %bb.y, label %.critedge.i.i107

bb.y:                                             ; preds = %bb.x
  %i.cf = icmp ugt i64 %i.bx, %i.cc
  br i1 %i.cf, label %bb.dw, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !32
  %i.ci = sub nuw i64 %i.cc, %i.bx
  %i.cj = icmp ugt i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.dw, label %.critedge.i.i107

.critedge.i.i107:                                 ; preds = %bb.z, %bb.x, %._crit_edge.i.i104
  %i.ck = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.cl = tail call ptr @realloc(ptr noundef %i.ck, i64 noundef %.1.i.i105) #29 ; 3 uses
  %.not63.i.i108 = icmp eq ptr %i.cl, null
  br i1 %.not63.i.i108, label %bb.dw, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i107
  %i.cm = icmp ugt i64 %.1.i.i105, %i.bs
  %or.cond65.i.i109 = and i1 %.not61.i.i106, %i.cm
  br i1 %or.cond65.i.i109, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cn = sub nuw i64 %.1.i.i105, %i.bs
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 56 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !32
  %i.cq = add i64 %i.cn, %i.cp
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store ptr %i.cl, ptr %i.n, align 8, !tbaa !48
  store i64 %.1.i.i105, ptr %i.o, align 8, !tbaa !27
  br label %tg3json__reserve_bytes_parser.exit.i100

tg3json__reserve_bytes_parser.exit.i100:          ; preds = %bb.ac, %.tg3json__reserve_bytes_parser.exit_crit_edge.i98
  %i.cr = phi ptr [ %.pre.i99, %.tg3json__reserve_bytes_parser.exit_crit_edge.i98 ], [ %i.cl, %bb.ac ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr readonly align 1 %.063335, i64 %.pre355, i1 false)
  %i.ct = add i64 %i.bp, %.pre355                 ; 2 uses
  store i64 %i.ct, ptr %i.m, align 8, !tbaa !53
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ct
  store i8 0, ptr %i.cu, align 1, !tbaa !34
  %.pre = load ptr, ptr %0, align 8, !tbaa !35
  %.pre345 = load ptr, ptr %i.e, align 8, !tbaa !23
  br label %tg3json__buf_append.exit116

tg3json__buf_append.exit116:                      ; preds = %tg3json__reserve_bytes_parser.exit.i100, %._crit_edge
  %i.cv = phi ptr [ %.pre345, %tg3json__reserve_bytes_parser.exit.i100 ], [ %i.q, %._crit_edge ] ; 2 uses
  %i.cw = phi ptr [ %.pre, %tg3json__reserve_bytes_parser.exit.i100 ], [ %i.r, %._crit_edge ] ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1 ; 5 uses
  store ptr %i.cx, ptr %0, align 8, !tbaa !35
  %.not81 = icmp ult ptr %i.cx, %i.cv
  br i1 %.not81, label %bb.ad, label %bb.du

bb.ad:                                            ; preds = %tg3json__buf_append.exit116
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !34
  switch i8 %i.cy, label %bb.dq [
    i8 34, label %bb.ae
    i8 92, label %bb.ao
    i8 47, label %bb.ay
    i8 98, label %bb.bi
    i8 102, label %bb.bs
    i8 110, label %bb.cc
    i8 114, label %bb.cm
    i8 116, label %bb.cw
    i8 117, label %bb.dg
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cz = load ptr, ptr %3, align 8, !tbaa !295   ; 5 uses
  %i.da = load i64, ptr %i.m, align 8, !tbaa !53  ; 3 uses
  %i.db = add i64 %i.da, 2                        ; 4 uses
  %i.dc = load i64, ptr %i.o, align 8, !tbaa !27  ; 7 uses
  %.not.i.i117 = icmp ugt i64 %i.db, %i.dc
  br i1 %.not.i.i117, label %bb.af, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i118

.tg3json__reserve_bytes_parser.exit_crit_edge.i118: ; preds = %bb.ae
  %.pre.i119 = load ptr, ptr %i.n, align 8, !tbaa !52
  br label %tg3json__buf_putc.exit

bb.af:                                            ; preds = %bb.ae
  %.not60.i.i122 = icmp eq i64 %i.dc, 0
  %spec.select.i.i123 = select i1 %.not60.i.i122, i64 8, i64 %i.dc ; 3 uses
  %i.dd = icmp ult i64 %spec.select.i.i123, %i.db
  br i1 %i.dd, label %.lr.ph.i.i133, label %._crit_edge.i.i124

.lr.ph.i.i133:                                    ; preds = %bb.af, %bb.ag
  %.04666.i.i134 = phi i64 [ %i.df, %bb.ag ], [ %spec.select.i.i123, %bb.af ] ; 2 uses
  %i.de = icmp slt i64 %.04666.i.i134, 0
  br i1 %i.de, label %._crit_edge.i.i124, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i133
  %i.df = shl nuw i64 %.04666.i.i134, 1           ; 3 uses
  %i.dg = icmp ult i64 %i.df, %i.db
  br i1 %i.dg, label %.lr.ph.i.i133, label %._crit_edge.i.i124, !llvm.loop !0

._crit_edge.i.i124:                               ; preds = %bb.ag, %.lr.ph.i.i133, %bb.af
  %.1.i.i125 = phi i64 [ %spec.select.i.i123, %bb.af ], [ %i.df, %bb.ag ], [ %i.db, %.lr.ph.i.i133 ] ; 7 uses
  %.not61.i.i126 = icmp ne ptr %i.cz, null        ; 2 uses
  br i1 %.not61.i.i126, label %bb.ah, label %.critedge.i.i127

bb.ah:                                            ; preds = %._crit_edge.i.i124
  %i.dh = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i125, i64 %i.dc) ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !39 ; 2 uses
  %.not62.i.i130 = icmp ne i64 %i.dj, 0
  %i.dk = icmp ugt i64 %.1.i.i125, %i.dj
  %or.cond64.i.i131 = and i1 %.not62.i.i130, %i.dk
  br i1 %or.cond64.i.i131, label %bb.dw, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !40 ; 3 uses
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = icmp ugt i64 %.1.i.i125, %i.dc
  %or.cond.i.i132 = and i1 %i.do, %i.dn
  br i1 %or.cond.i.i132, label %bb.aj, label %.critedge.i.i127

bb.aj:                                            ; preds = %bb.ai
  %i.dp = icmp ugt i64 %i.dh, %i.dm
  br i1 %i.dp, label %bb.dw, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !32
  %i.ds = sub nuw i64 %i.dm, %i.dh
  %i.dt = icmp ugt i64 %i.dr, %i.ds
  br i1 %i.dt, label %bb.dw, label %.critedge.i.i127

.critedge.i.i127:                                 ; preds = %bb.ak, %bb.ai, %._crit_edge.i.i124
  %i.du = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.dv = tail call ptr @realloc(ptr noundef %i.du, i64 noundef %.1.i.i125) #29 ; 3 uses
  %.not63.i.i128 = icmp eq ptr %i.dv, null
  br i1 %.not63.i.i128, label %bb.dw, label %bb.al

bb.al:                                            ; preds = %.critedge.i.i127
  %i.dw = icmp ugt i64 %.1.i.i125, %i.dc
  %or.cond65.i.i129 = and i1 %.not61.i.i126, %i.dw
  br i1 %or.cond65.i.i129, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dx = sub nuw i64 %.1.i.i125, %i.dc
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 56 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !32
  %i.ea = add i64 %i.dx, %i.dz
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  store ptr %i.dv, ptr %i.n, align 8, !tbaa !48
  store i64 %.1.i.i125, ptr %i.o, align 8, !tbaa !27
  br label %tg3json__buf_putc.exit

tg3json__buf_putc.exit:                           ; preds = %.tg3json__reserve_bytes_parser.exit_crit_edge.i118, %bb.an
  %i.eb = phi ptr [ %.pre.i119, %.tg3json__reserve_bytes_parser.exit_crit_edge.i118 ], [ %i.dv, %bb.an ]
  %i.ec = add i64 %i.da, 1                        ; 2 uses
  store i64 %i.ec, ptr %i.m, align 8, !tbaa !53
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.da
  store i8 34, ptr %i.ed, align 1, !tbaa !34
  %i.ee = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ec
  store i8 0, ptr %i.ef, align 1, !tbaa !34
  br label %tg3json__buf_append.exit116.thread.jt0

bb.ao:                                            ; preds = %bb.ad
  %i.eg = load ptr, ptr %3, align 8, !tbaa !295   ; 5 uses
  %i.eh = load i64, ptr %i.m, align 8, !tbaa !53  ; 3 uses
  %i.ei = add i64 %i.eh, 2                        ; 4 uses
  %i.ej = load i64, ptr %i.o, align 8, !tbaa !27  ; 7 uses
  %.not.i.i135 = icmp ugt i64 %i.ei, %i.ej
  br i1 %.not.i.i135, label %bb.ap, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i136

.tg3json__reserve_bytes_parser.exit_crit_edge.i136: ; preds = %bb.ao
  %.pre.i137 = load ptr, ptr %i.n, align 8, !tbaa !52
  br label %tg3json__buf_putc.exit154

bb.ap:                                            ; preds = %bb.ao
  %.not60.i.i140 = icmp eq i64 %i.ej, 0
  %spec.select.i.i141 = select i1 %.not60.i.i140, i64 8, i64 %i.ej ; 3 uses
  %i.ek = icmp ult i64 %spec.select.i.i141, %i.ei
  br i1 %i.ek, label %.lr.ph.i.i152, label %._crit_edge.i.i142

.lr.ph.i.i152:                                    ; preds = %bb.ap, %bb.aq
  %.04666.i.i153 = phi i64 [ %i.em, %bb.aq ], [ %spec.select.i.i141, %bb.ap ] ; 2 uses
  %i.el = icmp slt i64 %.04666.i.i153, 0
  br i1 %i.el, label %._crit_edge.i.i142, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i152
  %i.em = shl nuw i64 %.04666.i.i153, 1           ; 3 uses
  %i.en = icmp ult i64 %i.em, %i.ei
  br i1 %i.en, label %.lr.ph.i.i152, label %._crit_edge.i.i142, !llvm.loop !0

._crit_edge.i.i142:                               ; preds = %bb.aq, %.lr.ph.i.i152, %bb.ap
  %.1.i.i143 = phi i64 [ %spec.select.i.i141, %bb.ap ], [ %i.em, %bb.aq ], [ %i.ei, %.lr.ph.i.i152 ] ; 7 uses
  %.not61.i.i144 = icmp ne ptr %i.eg, null        ; 2 uses
  br i1 %.not61.i.i144, label %bb.ar, label %.critedge.i.i145

bb.ar:                                            ; preds = %._crit_edge.i.i142
  %i.eo = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i143, i64 %i.ej) ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !39 ; 2 uses
  %.not62.i.i149 = icmp ne i64 %i.eq, 0
  %i.er = icmp ugt i64 %.1.i.i143, %i.eq
  %or.cond64.i.i150 = and i1 %.not62.i.i149, %i.er
  br i1 %or.cond64.i.i150, label %bb.dw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.et = load i64, ptr %i.es, align 8, !tbaa !40 ; 3 uses
  %i.eu = icmp ne i64 %i.et, 0
  %i.ev = icmp ugt i64 %.1.i.i143, %i.ej
  %or.cond.i.i151 = and i1 %i.ev, %i.eu
  br i1 %or.cond.i.i151, label %bb.at, label %.critedge.i.i145

bb.at:                                            ; preds = %bb.as
  %i.ew = icmp ugt i64 %i.eo, %i.et
  br i1 %i.ew, label %bb.dw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !32
  %i.ez = sub nuw i64 %i.et, %i.eo
  %i.fa = icmp ugt i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.dw, label %.critedge.i.i145

.critedge.i.i145:                                 ; preds = %bb.au, %bb.as, %._crit_edge.i.i142
  %i.fb = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.fc = tail call ptr @realloc(ptr noundef %i.fb, i64 noundef %.1.i.i143) #29 ; 3 uses
  %.not63.i.i146 = icmp eq ptr %i.fc, null
  br i1 %.not63.i.i146, label %bb.dw, label %bb.av

bb.av:                                            ; preds = %.critedge.i.i145
  %i.fd = icmp ugt i64 %.1.i.i143, %i.ej
  %or.cond65.i.i147 = and i1 %.not61.i.i144, %i.fd
  br i1 %or.cond65.i.i147, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fe = sub nuw i64 %.1.i.i143, %i.ej
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eg, i64 56 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !32
  %i.fh = add i64 %i.fe, %i.fg
  store i64 %i.fh, ptr %i.ff, align 8, !tbaa !32
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store ptr %i.fc, ptr %i.n, align 8, !tbaa !48
  store i64 %.1.i.i143, ptr %i.o, align 8, !tbaa !27
  br label %tg3json__buf_putc.exit154

tg3json__buf_putc.exit154:                        ; preds = %.tg3json__reserve_bytes_parser.exit_crit_edge.i136, %bb.ax
  %i.fi = phi ptr [ %.pre.i137, %.tg3json__reserve_bytes_parser.exit_crit_edge.i136 ], [ %i.fc, %bb.ax ]
  %i.fj = add i64 %i.eh, 1                        ; 2 uses
  store i64 %i.fj, ptr %i.m, align 8, !tbaa !53
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.eh
  store i8 92, ptr %i.fk, align 1, !tbaa !34
  %i.fl = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fj
  store i8 0, ptr %i.fm, align 1, !tbaa !34
  br label %tg3json__buf_append.exit116.thread.jt0

bb.ay:                                            ; preds = %bb.ad
  %i.fn = load ptr, ptr %3, align 8, !tbaa !295   ; 5 uses
  %i.fo = load i64, ptr %i.m, align 8, !tbaa !53  ; 3 uses
  %i.fp = add i64 %i.fo, 2                        ; 4 uses
  %i.fq = load i64, ptr %i.o, align 8, !tbaa !27  ; 7 uses
  %.not.i.i155 = icmp ugt i64 %i.fp, %i.fq
  br i1 %.not.i.i155, label %bb.az, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i156

.tg3json__reserve_bytes_parser.exit_crit_edge.i156: ; preds = %bb.ay
  %.pre.i157 = load ptr, ptr %i.n, align 8, !tbaa !52
  br label %tg3json__buf_putc.exit174

bb.az:                                            ; preds = %bb.ay
  %.not60.i.i160 = icmp eq i64 %i.fq, 0
  %spec.select.i.i161 = select i1 %.not60.i.i160, i64 8, i64 %i.fq ; 3 uses
  %i.fr = icmp ult i64 %spec.select.i.i161, %i.fp
  br i1 %i.fr, label %.lr.ph.i.i172, label %._crit_edge.i.i162

.lr.ph.i.i172:                                    ; preds = %bb.az, %bb.ba
  %.04666.i.i173 = phi i64 [ %i.ft, %bb.ba ], [ %spec.select.i.i161, %bb.az ] ; 2 uses
  %i.fs = icmp slt i64 %.04666.i.i173, 0
  br i1 %i.fs, label %._crit_edge.i.i162, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i172
  %i.ft = shl nuw i64 %.04666.i.i173, 1           ; 3 uses
  %i.fu = icmp ult i64 %i.ft, %i.fp
  br i1 %i.fu, label %.lr.ph.i.i172, label %._crit_edge.i.i162, !llvm.loop !0

._crit_edge.i.i162:                               ; preds = %bb.ba, %.lr.ph.i.i172, %bb.az
  %.1.i.i163 = phi i64 [ %spec.select.i.i161, %bb.az ], [ %i.ft, %bb.ba ], [ %i.fp, %.lr.ph.i.i172 ] ; 7 uses
  %.not61.i.i164 = icmp ne ptr %i.fn, null        ; 2 uses
  br i1 %.not61.i.i164, label %bb.bb, label %.critedge.i.i165

bb.bb:                                            ; preds = %._crit_edge.i.i162
  %i.fv = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i163, i64 %i.fq) ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !39 ; 2 uses
  %.not62.i.i169 = icmp ne i64 %i.fx, 0
  %i.fy = icmp ugt i64 %.1.i.i163, %i.fx
  %or.cond64.i.i170 = and i1 %.not62.i.i169, %i.fy
  br i1 %or.cond64.i.i170, label %bb.dw, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !40 ; 3 uses
  %i.gb = icmp ne i64 %i.ga, 0
  %i.gc = icmp ugt i64 %.1.i.i163, %i.fq
  %or.cond.i.i171 = and i1 %i.gc, %i.gb
  br i1 %or.cond.i.i171, label %bb.bd, label %.critedge.i.i165

bb.bd:                                            ; preds = %bb.bc
  %i.gd = icmp ugt i64 %i.fv, %i.ga
  br i1 %i.gd, label %bb.dw, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !32
  %i.gg = sub nuw i64 %i.ga, %i.fv
  %i.gh = icmp ugt i64 %i.gf, %i.gg
  br i1 %i.gh, label %bb.dw, label %.critedge.i.i165

.critedge.i.i165:                                 ; preds = %bb.be, %bb.bc, %._crit_edge.i.i162
  %i.gi = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.gj = tail call ptr @realloc(ptr noundef %i.gi, i64 noundef %.1.i.i163) #29 ; 3 uses
  %.not63.i.i166 = icmp eq ptr %i.gj, null
  br i1 %.not63.i.i166, label %bb.dw, label %bb.bf

bb.bf:                                            ; preds = %.critedge.i.i165
  %i.gk = icmp ugt i64 %.1.i.i163, %i.fq
  %or.cond65.i.i167 = and i1 %.not61.i.i164, %i.gk
  br i1 %or.cond65.i.i167, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gl = sub nuw i64 %.1.i.i163, %i.fq
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fn, i64 56 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !32
  %i.go = add i64 %i.gl, %i.gn
  store i64 %i.go, ptr %i.gm, align 8, !tbaa !32
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  store ptr %i.gj, ptr %i.n, align 8, !tbaa !48
  store i64 %.1.i.i163, ptr %i.o, align 8, !tbaa !27
  br label %tg3json__buf_putc.exit174

tg3json__buf_putc.exit174:                        ; preds = %.tg3json__reserve_bytes_parser.exit_crit_edge.i156, %bb.bh
  %i.gp = phi ptr [ %.pre.i157, %.tg3json__reserve_bytes_parser.exit_crit_edge.i156 ], [ %i.gj, %bb.bh ]
  %i.gq = add i64 %i.fo, 1                        ; 2 uses
  store i64 %i.gq, ptr %i.m, align 8, !tbaa !53
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.fo
  store i8 47, ptr %i.gr, align 1, !tbaa !34
  %i.gs = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gq
  store i8 0, ptr %i.gt, align 1, !tbaa !34
  br label %tg3json__buf_append.exit116.thread.jt0

bb.bi:                                            ; preds = %bb.ad
  %i.gu = load ptr, ptr %3, align 8, !tbaa !295   ; 5 uses
  %i.gv = load i64, ptr %i.m, align 8, !tbaa !53  ; 3 uses
  %i.gw = add i64 %i.gv, 2                        ; 4 uses
  %i.gx = load i64, ptr %i.o, align 8, !tbaa !27  ; 7 uses
  %.not.i.i175 = icmp ugt i64 %i.gw, %i.gx
  br i1 %.not.i.i175, label %bb.bj, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i176

.tg3json__reserve_bytes_parser.exit_crit_edge.i176: ; preds = %bb.bi
  %.pre.i177 = load ptr, ptr %i.n, align 8, !tbaa !52
  br label %tg3json__buf_putc.exit194

bb.bj:                                            ; preds = %bb.bi
  %.not60.i.i180 = icmp eq i64 %i.gx, 0
  %spec.select.i.i181 = select i1 %.not60.i.i180, i64 8, i64 %i.gx ; 3 uses
  %i.gy = icmp ult i64 %spec.select.i.i181, %i.gw
  br i1 %i.gy, label %.lr.ph.i.i192, label %._crit_edge.i.i182

.lr.ph.i.i192:                                    ; preds = %bb.bj, %bb.bk
  %.04666.i.i193 = phi i64 [ %i.ha, %bb.bk ], [ %spec.select.i.i181, %bb.bj ] ; 2 uses
  %i.gz = icmp slt i64 %.04666.i.i193, 0
  br i1 %i.gz, label %._crit_edge.i.i182, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i192
  %i.ha = shl nuw i64 %.04666.i.i193, 1           ; 3 uses
  %i.hb = icmp ult i64 %i.ha, %i.gw
  br i1 %i.hb, label %.lr.ph.i.i192, label %._crit_edge.i.i182, !llvm.loop !0

._crit_edge.i.i182:                               ; preds = %bb.bk, %.lr.ph.i.i192, %bb.bj
  %.1.i.i183 = phi i64 [ %spec.select.i.i181, %bb.bj ], [ %i.ha, %bb.bk ], [ %i.gw, %.lr.ph.i.i192 ] ; 7 uses
  %.not61.i.i184 = icmp ne ptr %i.gu, null        ; 2 uses
  br i1 %.not61.i.i184, label %bb.bl, label %.critedge.i.i185

bb.bl:                                            ; preds = %._crit_edge.i.i182
  %i.hc = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i183, i64 %i.gx) ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !39 ; 2 uses
  %.not62.i.i189 = icmp ne i64 %i.he, 0
  %i.hf = icmp ugt i64 %.1.i.i183, %i.he
  %or.cond64.i.i190 = and i1 %.not62.i.i189, %i.hf
  br i1 %or.cond64.i.i190, label %bb.dw, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !40 ; 3 uses
  %i.hi = icmp ne i64 %i.hh, 0
  %i.hj = icmp ugt i64 %.1.i.i183, %i.gx
  %or.cond.i.i191 = and i1 %i.hj, %i.hi
  br i1 %or.cond.i.i191, label %bb.bn, label %.critedge.i.i185

bb.bn:                                            ; preds = %bb.bm
  %i.hk = icmp ugt i64 %i.hc, %i.hh
  br i1 %i.hk, label %bb.dw, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gu, i64 56
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !32
  %i.hn = sub nuw i64 %i.hh, %i.hc
  %i.ho = icmp ugt i64 %i.hm, %i.hn
  br i1 %i.ho, label %bb.dw, label %.critedge.i.i185

.critedge.i.i185:                                 ; preds = %bb.bo, %bb.bm, %._crit_edge.i.i182
  %i.hp = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.hq = tail call ptr @realloc(ptr noundef %i.hp, i64 noundef %.1.i.i183) #29 ; 3 uses
  %.not63.i.i186 = icmp eq ptr %i.hq, null
  br i1 %.not63.i.i186, label %bb.dw, label %bb.bp

bb.bp:                                            ; preds = %.critedge.i.i185
  %i.hr = icmp ugt i64 %.1.i.i183, %i.gx
  %or.cond65.i.i187 = and i1 %.not61.i.i184, %i.hr
  br i1 %or.cond65.i.i187, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hs = sub nuw i64 %.1.i.i183, %i.gx
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gu, i64 56 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !32
  %i.hv = add i64 %i.hs, %i.hu
  store i64 %i.hv, ptr %i.ht, align 8, !tbaa !32
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  store ptr %i.hq, ptr %i.n, align 8, !tbaa !48
  store i64 %.1.i.i183, ptr %i.o, align 8, !tbaa !27
  br label %tg3json__buf_putc.exit194

tg3json__buf_putc.exit194:                        ; preds = %.tg3json__reserve_bytes_parser.exit_crit_edge.i176, %bb.br
  %i.hw = phi ptr [ %.pre.i177, %.tg3json__reserve_bytes_parser.exit_crit_edge.i176 ], [ %i.hq, %bb.br ]
  %i.hx = add i64 %i.gv, 1                        ; 2 uses
  store i64 %i.hx, ptr %i.m, align 8, !tbaa !53
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.gv
  store i8 8, ptr %i.hy, align 1, !tbaa !34
  %i.hz = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hx
  store i8 0, ptr %i.ia, align 1, !tbaa !34
  br label %tg3json__buf_append.exit116.thread.jt0

bb.bs:                                            ; preds = %bb.ad
  %i.ib = load ptr, ptr %3, align 8, !tbaa !295   ; 5 uses
  %i.ic = load i64, ptr %i.m, align 8, !tbaa !53  ; 3 uses
  %i.id = add i64 %i.ic, 2                        ; 4 uses
  %i.ie = load i64, ptr %i.o, align 8, !tbaa !27  ; 7 uses
  %.not.i.i195 = icmp ugt i64 %i.id, %i.ie
  br i1 %.not.i.i195, label %bb.bt, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i196

.tg3json__reserve_bytes_parser.exit_crit_edge.i196: ; preds = %bb.bs
  %.pre.i197 = load ptr, ptr %i.n, align 8, !tbaa !52
  br label %tg3json__buf_putc.exit214

bb.bt:                                            ; preds = %bb.bs
  %.not60.i.i200 = icmp eq i64 %i.ie, 0
  %spec.select.i.i201 = select i1 %.not60.i.i200, i64 8, i64 %i.ie ; 3 uses
  %i.if = icmp ult i64 %spec.select.i.i201, %i.id
  br i1 %i.if, label %.lr.ph.i.i212, label %._crit_edge.i.i202

.lr.ph.i.i212:                                    ; preds = %bb.bt, %bb.bu
  %.04666.i.i213 = phi i64 [ %i.ih, %bb.bu ], [ %spec.select.i.i201, %bb.bt ] ; 2 uses
  %i.ig = icmp slt i64 %.04666.i.i213, 0
  br i1 %i.ig, label %._crit_edge.i.i202, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i212
  %i.ih = shl nuw i64 %.04666.i.i213, 1           ; 3 uses
  %i.ii = icmp ult i64 %i.ih, %i.id
  br i1 %i.ii, label %.lr.ph.i.i212, label %._crit_edge.i.i202, !llvm.loop !0

._crit_edge.i.i202:                               ; preds = %bb.bu, %.lr.ph.i.i212, %bb.bt
  %.1.i.i203 = phi i64 [ %spec.select.i.i201, %bb.bt ], [ %i.ih, %bb.bu ], [ %i.id, %.lr.ph.i.i212 ] ; 7 uses
  %.not61.i.i204 = icmp ne ptr %i.ib, null        ; 2 uses
  br i1 %.not61.i.i204, label %bb.bv, label %.critedge.i.i205

bb.bv:                                            ; preds = %._crit_edge.i.i202
  %i.ij = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i203, i64 %i.ie) ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !39 ; 2 uses
  %.not62.i.i209 = icmp ne i64 %i.il, 0
  %i.im = icmp ugt i64 %.1.i.i203, %i.il
  %or.cond64.i.i210 = and i1 %.not62.i.i209, %i.im
  br i1 %or.cond64.i.i210, label %bb.dw, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.in = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.io = load i64, ptr %i.in, align 8, !tbaa !40 ; 3 uses
  %i.ip = icmp ne i64 %i.io, 0
  %i.iq = icmp ugt i64 %.1.i.i203, %i.ie
  %or.cond.i.i211 = and i1 %i.iq, %i.ip
  br i1 %or.cond.i.i211, label %bb.bx, label %.critedge.i.i205

bb.bx:                                            ; preds = %bb.bw
  %i.ir = icmp ugt i64 %i.ij, %i.io
  br i1 %i.ir, label %bb.dw, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.is = getelementptr inbounds nuw i8, ptr %i.ib, i64 56
  %i.it = load i64, ptr %i.is, align 8, !tbaa !32
  %i.iu = sub nuw i64 %i.io, %i.ij
  %i.iv = icmp ugt i64 %i.it, %i.iu
  br i1 %i.iv, label %bb.dw, label %.critedge.i.i205

.critedge.i.i205:                                 ; preds = %bb.by, %bb.bw, %._crit_edge.i.i202
  %i.iw = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.ix = tail call ptr @realloc(ptr noundef %i.iw, i64 noundef %.1.i.i203) #29 ; 3 uses
  %.not63.i.i206 = icmp eq ptr %i.ix, null
  br i1 %.not63.i.i206, label %bb.dw, label %bb.bz

bb.bz:                                            ; preds = %.critedge.i.i205
  %i.iy = icmp ugt i64 %.1.i.i203, %i.ie
  %or.cond65.i.i207 = and i1 %.not61.i.i204, %i.iy
  br i1 %or.cond65.i.i207, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.iz = sub nuw i64 %.1.i.i203, %i.ie
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ib, i64 56 ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !32
  %i.jc = add i64 %i.iz, %i.jb
  store i64 %i.jc, ptr %i.ja, align 8, !tbaa !32
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store ptr %i.ix, ptr %i.n, align 8, !tbaa !48
  store i64 %.1.i.i203, ptr %i.o, align 8, !tbaa !27
  br label %tg3json__buf_putc.exit214

tg3json__buf_putc.exit214:                        ; preds = %.tg3json__reserve_bytes_parser.exit_crit_edge.i196, %bb.cb
  %i.jd = phi ptr [ %.pre.i197, %.tg3json__reserve_bytes_parser.exit_crit_edge.i196 ], [ %i.ix, %bb.cb ]
  %i.je = add i64 %i.ic, 1                        ; 2 uses
  store i64 %i.je, ptr %i.m, align 8, !tbaa !53
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.ic
  store i8 12, ptr %i.jf, align 1, !tbaa !34
  %i.jg = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.je
  store i8 0, ptr %i.jh, align 1, !tbaa !34
  br label %tg3json__buf_append.exit116.thread.jt0

bb.cc:                                            ; preds = %bb.ad
  %i.ji = load ptr, ptr %3, align 8, !tbaa !295   ; 5 uses
  %i.jj = load i64, ptr %i.m, align 8, !tbaa !53  ; 3 uses
  %i.jk = add i64 %i.jj, 2                        ; 4 uses
  %i.jl = load i64, ptr %i.o, align 8, !tbaa !27  ; 7 uses
  %.not.i.i215 = icmp ugt i64 %i.jk, %i.jl
  br i1 %.not.i.i215, label %bb.cd, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i216

.tg3json__reserve_bytes_parser.exit_crit_edge.i216: ; preds = %bb.cc
  %.pre.i217 = load ptr, ptr %i.n, align 8, !tbaa !52
  br label %tg3json__buf_putc.exit234

bb.cd:                                            ; preds = %bb.cc
  %.not60.i.i220 = icmp eq i64 %i.jl, 0
  %spec.select.i.i221 = select i1 %.not60.i.i220, i64 8, i64 %i.jl ; 3 uses
  %i.jm = icmp ult i64 %spec.select.i.i221, %i.jk
  br i1 %i.jm, label %.lr.ph.i.i232, label %._crit_edge.i.i222

.lr.ph.i.i232:                                    ; preds = %bb.cd, %bb.ce
  %.04666.i.i233 = phi i64 [ %i.jo, %bb.ce ], [ %spec.select.i.i221, %bb.cd ] ; 2 uses
  %i.jn = icmp slt i64 %.04666.i.i233, 0
  br i1 %i.jn, label %._crit_edge.i.i222, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i.i232
  %i.jo = shl nuw i64 %.04666.i.i233, 1           ; 3 uses
  %i.jp = icmp ult i64 %i.jo, %i.jk
  br i1 %i.jp, label %.lr.ph.i.i232, label %._crit_edge.i.i222, !llvm.loop !0

._crit_edge.i.i222:                               ; preds = %bb.ce, %.lr.ph.i.i232, %bb.cd
  %.1.i.i223 = phi i64 [ %spec.select.i.i221, %bb.cd ], [ %i.jo, %bb.ce ], [ %i.jk, %.lr.ph.i.i232 ] ; 7 uses
  %.not61.i.i224 = icmp ne ptr %i.ji, null        ; 2 uses
  br i1 %.not61.i.i224, label %bb.cf, label %.critedge.i.i225

bb.cf:                                            ; preds = %._crit_edge.i.i222
  %i.jq = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i223, i64 %i.jl) ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ji, i64 40
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !39 ; 2 uses
  %.not62.i.i229 = icmp ne i64 %i.js, 0
  %i.jt = icmp ugt i64 %.1.i.i223, %i.js
  %or.cond64.i.i230 = and i1 %.not62.i.i229, %i.jt
  br i1 %or.cond64.i.i230, label %bb.dw, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !40 ; 3 uses
  %i.jw = icmp ne i64 %i.jv, 0
  %i.jx = icmp ugt i64 %.1.i.i223, %i.jl
  %or.cond.i.i231 = and i1 %i.jx, %i.jw
  br i1 %or.cond.i.i231, label %bb.ch, label %.critedge.i.i225

bb.ch:                                            ; preds = %bb.cg
  %i.jy = icmp ugt i64 %i.jq, %i.jv
  br i1 %i.jy, label %bb.dw, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ji, i64 56
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !32
  %i.kb = sub nuw i64 %i.jv, %i.jq
  %i.kc = icmp ugt i64 %i.ka, %i.kb
  br i1 %i.kc, label %bb.dw, label %.critedge.i.i225

.critedge.i.i225:                                 ; preds = %bb.ci, %bb.cg, %._crit_edge.i.i222
  %i.kd = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.ke = tail call ptr @realloc(ptr noundef %i.kd, i64 noundef %.1.i.i223) #29 ; 3 uses
  %.not63.i.i226 = icmp eq ptr %i.ke, null
  br i1 %.not63.i.i226, label %bb.dw, label %bb.cj

bb.cj:                                            ; preds = %.critedge.i.i225
  %i.kf = icmp ugt i64 %.1.i.i223, %i.jl
  %or.cond65.i.i227 = and i1 %.not61.i.i224, %i.kf
  br i1 %or.cond65.i.i227, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.kg = sub nuw i64 %.1.i.i223, %i.jl
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ji, i64 56 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !32
  %i.kj = add i64 %i.kg, %i.ki
  store i64 %i.kj, ptr %i.kh, align 8, !tbaa !32
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  store ptr %i.ke, ptr %i.n, align 8, !tbaa !48
  store i64 %.1.i.i223, ptr %i.o, align 8, !tbaa !27
  br label %tg3json__buf_putc.exit234

tg3json__buf_putc.exit234:                        ; preds = %.tg3json__reserve_bytes_parser.exit_crit_edge.i216, %bb.cl
  %i.kk = phi ptr [ %.pre.i217, %.tg3json__reserve_bytes_parser.exit_crit_edge.i216 ], [ %i.ke, %bb.cl ]
  %i.kl = add i64 %i.jj, 1                        ; 2 uses
  store i64 %i.kl, ptr %i.m, align 8, !tbaa !53
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.jj
  store i8 10, ptr %i.km, align 1, !tbaa !34
  %i.kn = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kl
  store i8 0, ptr %i.ko, align 1, !tbaa !34
  br label %tg3json__buf_append.exit116.thread.jt0

bb.cm:                                            ; preds = %bb.ad
  %i.kp = load ptr, ptr %3, align 8, !tbaa !295   ; 5 uses
  %i.kq = load i64, ptr %i.m, align 8, !tbaa !53  ; 3 uses
  %i.kr = add i64 %i.kq, 2                        ; 4 uses
  %i.ks = load i64, ptr %i.o, align 8, !tbaa !27  ; 7 uses
  %.not.i.i235 = icmp ugt i64 %i.kr, %i.ks
  br i1 %.not.i.i235, label %bb.cn, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i236

.tg3json__reserve_bytes_parser.exit_crit_edge.i236: ; preds = %bb.cm
  %.pre.i237 = load ptr, ptr %i.n, align 8, !tbaa !52
  br label %tg3json__buf_putc.exit254

bb.cn:                                            ; preds = %bb.cm
  %.not60.i.i240 = icmp eq i64 %i.ks, 0
  %spec.select.i.i241 = select i1 %.not60.i.i240, i64 8, i64 %i.ks ; 3 uses
  %i.kt = icmp ult i64 %spec.select.i.i241, %i.kr
  br i1 %i.kt, label %.lr.ph.i.i252, label %._crit_edge.i.i242

.lr.ph.i.i252:                                    ; preds = %bb.cn, %bb.co
  %.04666.i.i253 = phi i64 [ %i.kv, %bb.co ], [ %spec.select.i.i241, %bb.cn ] ; 2 uses
  %i.ku = icmp slt i64 %.04666.i.i253, 0
  br i1 %i.ku, label %._crit_edge.i.i242, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i252
  %i.kv = shl nuw i64 %.04666.i.i253, 1           ; 3 uses
  %i.kw = icmp ult i64 %i.kv, %i.kr
  br i1 %i.kw, label %.lr.ph.i.i252, label %._crit_edge.i.i242, !llvm.loop !0

._crit_edge.i.i242:                               ; preds = %bb.co, %.lr.ph.i.i252, %bb.cn
  %.1.i.i243 = phi i64 [ %spec.select.i.i241, %bb.cn ], [ %i.kv, %bb.co ], [ %i.kr, %.lr.ph.i.i252 ] ; 7 uses
  %.not61.i.i244 = icmp ne ptr %i.kp, null        ; 2 uses
  br i1 %.not61.i.i244, label %bb.cp, label %.critedge.i.i245

bb.cp:                                            ; preds = %._crit_edge.i.i242
  %i.kx = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i243, i64 %i.ks) ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kp, i64 40
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !39 ; 2 uses
  %.not62.i.i249 = icmp ne i64 %i.kz, 0
  %i.la = icmp ugt i64 %.1.i.i243, %i.kz
  %or.cond64.i.i250 = and i1 %.not62.i.i249, %i.la
  br i1 %or.cond64.i.i250, label %bb.dw, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !40 ; 3 uses
  %i.ld = icmp ne i64 %i.lc, 0
  %i.le = icmp ugt i64 %.1.i.i243, %i.ks
  %or.cond.i.i251 = and i1 %i.le, %i.ld
  br i1 %or.cond.i.i251, label %bb.cr, label %.critedge.i.i245

bb.cr:                                            ; preds = %bb.cq
  %i.lf = icmp ugt i64 %i.kx, %i.lc
  br i1 %i.lf, label %bb.dw, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kp, i64 56
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !32
  %i.li = sub nuw i64 %i.lc, %i.kx
  %i.lj = icmp ugt i64 %i.lh, %i.li
  br i1 %i.lj, label %bb.dw, label %.critedge.i.i245

.critedge.i.i245:                                 ; preds = %bb.cs, %bb.cq, %._crit_edge.i.i242
  %i.lk = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.ll = tail call ptr @realloc(ptr noundef %i.lk, i64 noundef %.1.i.i243) #29 ; 3 uses
  %.not63.i.i246 = icmp eq ptr %i.ll, null
  br i1 %.not63.i.i246, label %bb.dw, label %bb.ct

bb.ct:                                            ; preds = %.critedge.i.i245
  %i.lm = icmp ugt i64 %.1.i.i243, %i.ks
  %or.cond65.i.i247 = and i1 %.not61.i.i244, %i.lm
  br i1 %or.cond65.i.i247, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.ln = sub nuw i64 %.1.i.i243, %i.ks
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kp, i64 56 ; 2 uses
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !32
  %i.lq = add i64 %i.ln, %i.lp
  store i64 %i.lq, ptr %i.lo, align 8, !tbaa !32
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  store ptr %i.ll, ptr %i.n, align 8, !tbaa !48
  store i64 %.1.i.i243, ptr %i.o, align 8, !tbaa !27
  br label %tg3json__buf_putc.exit254

tg3json__buf_putc.exit254:                        ; preds = %.tg3json__reserve_bytes_parser.exit_crit_edge.i236, %bb.cv
  %i.lr = phi ptr [ %.pre.i237, %.tg3json__reserve_bytes_parser.exit_crit_edge.i236 ], [ %i.ll, %bb.cv ]
  %i.ls = add i64 %i.kq, 1                        ; 2 uses
  store i64 %i.ls, ptr %i.m, align 8, !tbaa !53
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.kq
  store i8 13, ptr %i.lt, align 1, !tbaa !34
  %i.lu = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.ls
  store i8 0, ptr %i.lv, align 1, !tbaa !34
  br label %tg3json__buf_append.exit116.thread.jt0

bb.cw:                                            ; preds = %bb.ad
  %i.lw = load ptr, ptr %3, align 8, !tbaa !295   ; 5 uses
  %i.lx = load i64, ptr %i.m, align 8, !tbaa !53  ; 3 uses
  %i.ly = add i64 %i.lx, 2                        ; 4 uses
  %i.lz = load i64, ptr %i.o, align 8, !tbaa !27  ; 7 uses
  %.not.i.i255 = icmp ugt i64 %i.ly, %i.lz
  br i1 %.not.i.i255, label %bb.cx, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i256

.tg3json__reserve_bytes_parser.exit_crit_edge.i256: ; preds = %bb.cw
  %.pre.i257 = load ptr, ptr %i.n, align 8, !tbaa !52
  br label %tg3json__buf_putc.exit274

bb.cx:                                            ; preds = %bb.cw
  %.not60.i.i260 = icmp eq i64 %i.lz, 0
  %spec.select.i.i261 = select i1 %.not60.i.i260, i64 8, i64 %i.lz ; 3 uses
  %i.ma = icmp ult i64 %spec.select.i.i261, %i.ly
  br i1 %i.ma, label %.lr.ph.i.i272, label %._crit_edge.i.i262

.lr.ph.i.i272:                                    ; preds = %bb.cx, %bb.cy
  %.04666.i.i273 = phi i64 [ %i.mc, %bb.cy ], [ %spec.select.i.i261, %bb.cx ] ; 2 uses
  %i.mb = icmp slt i64 %.04666.i.i273, 0
  br i1 %i.mb, label %._crit_edge.i.i262, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i.i272
  %i.mc = shl nuw i64 %.04666.i.i273, 1           ; 3 uses
  %i.md = icmp ult i64 %i.mc, %i.ly
  br i1 %i.md, label %.lr.ph.i.i272, label %._crit_edge.i.i262, !llvm.loop !0

._crit_edge.i.i262:                               ; preds = %bb.cy, %.lr.ph.i.i272, %bb.cx
  %.1.i.i263 = phi i64 [ %spec.select.i.i261, %bb.cx ], [ %i.mc, %bb.cy ], [ %i.ly, %.lr.ph.i.i272 ] ; 7 uses
  %.not61.i.i264 = icmp ne ptr %i.lw, null        ; 2 uses
  br i1 %.not61.i.i264, label %bb.cz, label %.critedge.i.i265

bb.cz:                                            ; preds = %._crit_edge.i.i262
  %i.me = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i263, i64 %i.lz) ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !39 ; 2 uses
  %.not62.i.i269 = icmp ne i64 %i.mg, 0
  %i.mh = icmp ugt i64 %.1.i.i263, %i.mg
  %or.cond64.i.i270 = and i1 %.not62.i.i269, %i.mh
  br i1 %or.cond64.i.i270, label %bb.dw, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !40 ; 3 uses
  %i.mk = icmp ne i64 %i.mj, 0
  %i.ml = icmp ugt i64 %.1.i.i263, %i.lz
  %or.cond.i.i271 = and i1 %i.ml, %i.mk
  br i1 %or.cond.i.i271, label %bb.db, label %.critedge.i.i265

bb.db:                                            ; preds = %bb.da
  %i.mm = icmp ugt i64 %i.me, %i.mj
  br i1 %i.mm, label %bb.dw, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lw, i64 56
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !32
  %i.mp = sub nuw i64 %i.mj, %i.me
  %i.mq = icmp ugt i64 %i.mo, %i.mp
  br i1 %i.mq, label %bb.dw, label %.critedge.i.i265

.critedge.i.i265:                                 ; preds = %bb.dc, %bb.da, %._crit_edge.i.i262
  %i.mr = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.ms = tail call ptr @realloc(ptr noundef %i.mr, i64 noundef %.1.i.i263) #29 ; 3 uses
  %.not63.i.i266 = icmp eq ptr %i.ms, null
  br i1 %.not63.i.i266, label %bb.dw, label %bb.dd

bb.dd:                                            ; preds = %.critedge.i.i265
  %i.mt = icmp ugt i64 %.1.i.i263, %i.lz
  %or.cond65.i.i267 = and i1 %.not61.i.i264, %i.mt
  br i1 %or.cond65.i.i267, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.mu = sub nuw i64 %.1.i.i263, %i.lz
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lw, i64 56 ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !32
  %i.mx = add i64 %i.mu, %i.mw
  store i64 %i.mx, ptr %i.mv, align 8, !tbaa !32
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  store ptr %i.ms, ptr %i.n, align 8, !tbaa !48
  store i64 %.1.i.i263, ptr %i.o, align 8, !tbaa !27
  br label %tg3json__buf_putc.exit274

tg3json__buf_putc.exit274:                        ; preds = %.tg3json__reserve_bytes_parser.exit_crit_edge.i256, %bb.df
  %i.my = phi ptr [ %.pre.i257, %.tg3json__reserve_bytes_parser.exit_crit_edge.i256 ], [ %i.ms, %bb.df ]
  %i.mz = add i64 %i.lx, 1                        ; 2 uses
  store i64 %i.mz, ptr %i.m, align 8, !tbaa !53
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.lx
  store i8 9, ptr %i.na, align 1, !tbaa !34
  %i.nb = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.mz
  store i8 0, ptr %i.nc, align 1, !tbaa !34
  br label %tg3json__buf_append.exit116.thread.jt0

bb.dg:                                            ; preds = %bb.ad
  %i.nd = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.ne = ptrtoint ptr %i.cx to i64
  %i.nf = sub i64 %i.nd, %i.ne
  %i.ng = icmp ult i64 %i.nf, 5
  br i1 %i.ng, label %tg3json__buf_append.exit116.thread.jt0, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nh = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.ni = call fastcc i32 @tg3json__hex4(ptr noundef nonnull %i.nh, ptr noundef %i.a)
  %.not82 = icmp eq i32 %i.ni, 0
  br i1 %.not82, label %tg3json__buf_append.exit116.thread.jt0, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.cw, i64 5 ; 2 uses
  store ptr %i.nj, ptr %0, align 8, !tbaa !35
  %i.nk = load i32, ptr %i.a, align 4, !tbaa !41  ; 3 uses
  %i.nl = and i32 %i.nk, -1024
  switch i32 %i.nl, label %bb.dp [
    i32 55296, label %bb.dj
    i32 56320, label %tg3json__buf_append.exit116.thread.jt0
  ]

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.nm = ptrtoint ptr %i.nj to i64
  %i.nn = sub i64 %i.nd, %i.nm
  %i.no = icmp ult i64 %i.nn, 7
  br i1 %i.no, label %.thread, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.np = getelementptr inbounds nuw i8, ptr %i.cw, i64 6
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !34
  %.not83 = icmp eq i8 %i.nq, 92
  br i1 %.not83, label %bb.dl, label %.thread

bb.dl:                                            ; preds = %bb.dk
  %i.nr = getelementptr inbounds nuw i8, ptr %i.cw, i64 7
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !34
  %.not84 = icmp eq i8 %i.ns, 117
  br i1 %.not84, label %bb.dm, label %.thread

bb.dm:                                            ; preds = %bb.dl
  %i.nt = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.nu = call fastcc i32 @tg3json__hex4(ptr noundef nonnull %i.nt, ptr noundef %i.b)
  %.not85 = icmp eq i32 %i.nu, 0
  br i1 %.not85, label %.thread, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nv = load i32, ptr %i.b, align 4, !tbaa !41  ; 2 uses
  %i.nw = add i32 %i.nv, -57344
  %or.cond3 = icmp ult i32 %i.nw, -1024
  br i1 %or.cond3, label %.thread, label %bb.do

.thread:                                          ; preds = %bb.dj, %bb.dm, %bb.dl, %bb.dk, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %tg3json__buf_append.exit116.thread.jt0

bb.do:                                            ; preds = %bb.dn
  %i.nx = shl nuw nsw i32 %i.nk, 10
  %i.ny = add nsw i32 %i.nx, -56613888
  %i.nz = add nsw i32 %i.ny, %i.nv                ; 2 uses
  store i32 %i.nz, ptr %i.a, align 4, !tbaa !41
  %i.oa = getelementptr inbounds nuw i8, ptr %i.cw, i64 11
  store ptr %i.oa, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.dp

bb.dp:                                            ; preds = %bb.di, %bb.do
  %i.ob = phi i32 [ %i.nk, %bb.di ], [ %i.nz, %bb.do ]
  %i.oc = call fastcc i32 @tg3json__append_utf8(ptr noundef %3, i32 noundef %i.ob)
  %.not86 = icmp eq i32 %i.oc, 0
  br i1 %.not86, label %bb.dw, label %tg3json__buf_append.exit116.thread.jt0

bb.dq:                                            ; preds = %bb.ad
  %i.od = load ptr, ptr %i.p, align 8, !tbaa !24
  %.not.i275 = icmp eq ptr %i.od, null
  br i1 %.not.i275, label %bb.dr, label %bb.dv

bb.dr:                                            ; preds = %bb.dq
  store ptr %i.cx, ptr %i.p, align 8, !tbaa !24
  br label %bb.dv

tg3json__buf_append.exit116.thread.jt0:           ; preds = %bb.dg, %bb.dh, %bb.dp, %tg3json__buf_putc.exit, %tg3json__buf_putc.exit154, %tg3json__buf_putc.exit174, %tg3json__buf_putc.exit194, %tg3json__buf_putc.exit214, %tg3json__buf_putc.exit234, %tg3json__buf_putc.exit254, %tg3json__buf_putc.exit274, %.thread, %bb.di
  %i.oe = load ptr, ptr %0, align 8, !tbaa !35
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 1 ; 2 uses
  store ptr %i.of, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.backedge

bb.ds:                                            ; preds = %bb.f
  %i.og = icmp ult i8 %i.s, 32
  br i1 %i.og, label %.thread311, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.oh = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.oh, ptr %0, align 8, !tbaa !35
  br label %.backedge

bb.du:                                            ; preds = %tg3json__buf_append.exit116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.thread311

bb.dv:                                            ; preds = %bb.dq, %bb.dr
  %i.oi = load ptr, ptr %i.n, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.oi) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %tg3json__set_error.exit

bb.dw:                                            ; preds = %bb.s, %bb.dp, %bb.z, %bb.ak, %bb.au, %bb.be, %bb.bo, %bb.by, %bb.ci, %bb.cs, %.critedge.i.i107, %bb.w, %bb.y, %.critedge.i.i127, %bb.ah, %bb.aj, %.critedge.i.i145, %bb.ar, %bb.at, %.critedge.i.i165, %bb.bb, %bb.bd, %.critedge.i.i185, %bb.bl, %bb.bn, %.critedge.i.i205, %bb.bv, %bb.bx, %.critedge.i.i225, %bb.cf, %bb.ch, %.critedge.i.i245, %bb.cp, %bb.cr, %.critedge.i.i265, %bb.cz, %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.thread303

.backedge:                                        ; preds = %bb.dt, %tg3json__buf_append.exit116.thread.jt0
  %.265.jt0 = phi ptr [ %.063335, %bb.dt ], [ %i.of, %tg3json__buf_append.exit116.thread.jt0 ]
  %i.oj = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ok = load ptr, ptr %i.e, align 8, !tbaa !23  ; 2 uses
  %i.ol = icmp ult ptr %i.oj, %i.ok
  br i1 %i.ol, label %bb.f, label %.thread311, !llvm.loop !543

.thread311:                                       ; preds = %.backedge, %bb.ds, %bb.du, %bb.e
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !24
  %.not.i277 = icmp eq ptr %i.on, null
  br i1 %.not.i277, label %bb.dx, label %tg3json__set_error.exit278

bb.dx:                                            ; preds = %.thread311
  %i.oo = load ptr, ptr %0, align 8, !tbaa !35
  store ptr %i.oo, ptr %i.om, align 8, !tbaa !24
  br label %tg3json__set_error.exit278

tg3json__set_error.exit278:                       ; preds = %.thread311, %bb.dx
  %i.op = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.oq) #28
  br label %tg3json__set_error.exit

.thread303:                                       ; preds = %bb.g, %bb.dw, %bb.n, %bb.m, %bb.k, %.critedge.i.i
  %i.or = load ptr, ptr %i.p, align 8, !tbaa !24
  %.not.i279 = icmp eq ptr %i.or, null
  br i1 %.not.i279, label %bb.dy, label %tg3json__set_error.exit280

bb.dy:                                            ; preds = %.thread303
  %i.os = load ptr, ptr %0, align 8, !tbaa !35
  store ptr %i.os, ptr %i.p, align 8, !tbaa !24
  br label %tg3json__set_error.exit280

tg3json__set_error.exit280:                       ; preds = %.thread303, %bb.dy
  %i.ot = load ptr, ptr %i.n, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.ot) #28
  br label %tg3json__set_error.exit

tg3json__set_error.exit:                          ; preds = %bb.dv, %.thread307, %bb.d, %bb.c, %tg3json__set_error.exit280, %tg3json__set_error.exit278
  %.4 = phi i32 [ 0, %tg3json__set_error.exit280 ], [ 1, %.thread307 ], [ 0, %tg3json__set_error.exit278 ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3json__buf_append(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %tg3json__reserve_bytes_parser.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !295    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.f = add i64 %2, 1
  %i.g = add i64 %i.f, %i.e                       ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27   ; 7 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %.tg3json__reserve_bytes_parser.exit_crit_edge

.tg3json__reserve_bytes_parser.exit_crit_edge:    ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !52
  br label %tg3json__reserve_bytes_parser.exit

bb.c:                                             ; preds = %bb.b
  %.not60.i = icmp eq i64 %i.i, 0
  %spec.select.i = select i1 %.not60.i, i64 8, i64 %i.i ; 3 uses
  %i.j = icmp ult i64 %spec.select.i, %i.g
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.04666.i = phi i64 [ %i.l, %bb.d ], [ %spec.select.i, %bb.c ] ; 2 uses
  %i.k = icmp slt i64 %.04666.i, 0
  br i1 %i.k, label %._crit_edge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = shl nuw i64 %.04666.i, 1                 ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.g
end_hunk_2
