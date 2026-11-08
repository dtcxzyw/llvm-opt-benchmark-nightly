Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tiny_gltf_v3?download=true
inline.NumInlined: 786
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@tg3json_array_append_take:bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %tg3json__reserve_bytes.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !37
  %i.b = icmp eq i32 %i.a, 5
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %tg3json__reserve_bytes.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34   ; 4 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %.not.i.not = icmp eq i64 %i.f, -1
  br i1 %.not.i.not, label %.tg3json__init_value.exit_crit_edge, label %bb.d

.tg3json__init_value.exit_crit_edge:              ; preds = %bb.c
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !34
  br label %tg3json__init_value.exit

bb.d:                                             ; preds = %bb.c
  %.not25.i = icmp eq i64 %i.f, 0
  %spec.select.i = select i1 %.not25.i, i64 8, i64 %i.f ; 3 uses
  %i.h = icmp ult i64 %spec.select.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.027.i = phi i64 [ %i.j, %bb.e ], [ %spec.select.i, %bb.d ] ; 2 uses
  %i.i = icmp slt i64 %.027.i, 0
  br i1 %i.i, label %._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.j = shl nuw i64 %.027.i, 1                   ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.1.i = phi i64 [ %spec.select.i, %bb.d ], [ %i.g, %.lr.ph.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.l = icmp ugt i64 %.1.i, 768614336404564650
  br i1 %i.l, label %tg3json__reserve_bytes.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.n = mul nuw i64 %.1.i, 24
  %i.o = tail call ptr @realloc(ptr noundef %i.m, i64 noundef %i.n) #29 ; 3 uses
  %.not26.i = icmp eq ptr %i.o, null
  br i1 %.not26.i, label %tg3json__reserve_bytes.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.o, ptr %i.d, align 8, !tbaa !48
  %.pre17 = load i64, ptr %i.e, align 8, !tbaa !34
  br label %tg3json__init_value.exit

tg3json__init_value.exit:                         ; preds = %.tg3json__init_value.exit_crit_edge, %bb.g
  %i.p = phi i64 [ -1, %.tg3json__init_value.exit_crit_edge ], [ %.pre17, %bb.g ] ; 2 uses
  %i.q = phi ptr [ %.pre, %.tg3json__init_value.exit_crit_edge ], [ %i.o, %bb.g ]
  %i.r = add i64 %i.p, 1
  store i64 %i.r, ptr %i.e, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %tg3json__reserve_bytes.exit.thread

tg3json__reserve_bytes.exit.thread:               ; preds = %bb.f, %._crit_edge.i, %bb.a, %bb.b, %tg3json__init_value.exit
  %.0 = phi i32 [ 1, %tg3json__init_value.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %._crit_edge.i ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local ptr @tg3json_stringify(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tg3json__buffer, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = call fastcc i32 @tg3json__stringify_value_ex(ptr noundef %2, ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0)
  %.not12 = icmp eq i32 %i.a, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !52 ; 3 uses
  br i1 %.not12, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.b = phi ptr [ null, %bb.a ], [ %.pre, %bb.b ]
  call void @free(ptr noundef %i.b) #28
  %.not13 = icmp eq ptr %1, null
  br i1 %.not13, label %bb.i, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %.not14 = icmp eq ptr %.pre, null
  br i1 %.not14, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.c = call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #30 ; 3 uses
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not16 = icmp eq ptr %1, null
  br i1 %.not16, label %bb.i, label %.sink.split

bb.f:                                             ; preds = %bb.d
  store i8 0, ptr %i.c, align 1, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.d = phi ptr [ %i.c, %bb.f ], [ %.pre, %bb.c ] ; 2 uses
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %._crit_edge, %bb.h
  %.sink = phi i64 [ %i.f, %bb.h ], [ 0, %._crit_edge ], [ 0, %bb.e ]
  %.0.ph = phi ptr [ %i.d, %bb.h ], [ null, %._crit_edge ], [ null, %bb.e ]
  store i64 %.sink, ptr %1, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g, %bb.e, %._crit_edge
  %.0 = phi ptr [ null, %bb.e ], [ null, %._crit_edge ], [ %i.d, %bb.g ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3json__stringify_value_ex(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 24 uses
  %i.b = alloca [80 x i8], align 16               ; 6 uses
  %i.c = alloca [80 x i8], align 16               ; 7 uses
  %i.d = alloca double, align 8                   ; 6 uses
  %i.e = alloca [24 x i8], align 16               ; 6 uses
  %i.f = alloca [64 x i8], align 16               ; 33 uses
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.g = load i32, ptr %1, align 8, !tbaa !37
  switch i32 %i.g, label %tg3json__indent.exit.thread [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.f
    i32 3, label %bb.i
    i32 4, label %bb.ao
    i32 5, label %bb.ba
    i32 6, label %bb.bi
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef 4)
  br label %tg3json__indent.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !34
  %.not136 = icmp eq i32 %i.j, 0
  br i1 %.not136, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef 4)
  br label %tg3json__indent.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.l = tail call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull @.str.31, i64 noundef 5)
  br label %tg3json__indent.exit.thread

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 45, ptr %i.f, align 16, !tbaa !34
  %i.q = sub i64 0, %i.n
  br label %.preheader28.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.r = icmp eq i64 %i.n, 0
  br i1 %i.r, label %bb.h, label %.preheader28.preheader.i

.preheader28.preheader.i:                         ; preds = %bb.g, %.thread.i
  %.02143.i = phi i64 [ %i.q, %.thread.i ], [ %i.n, %bb.g ]
  %.02342.i = phi ptr [ %i.p, %.thread.i ], [ %i.f, %bb.g ] ; 5 uses
  br label %.preheader28.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 48, ptr %i.f, align 16, !tbaa !34
  store i8 0, ptr %i.s, align 1, !tbaa !34
  br label %tg3json__itoa.exit

.preheader28.i:                                   ; preds = %.preheader28.i, %.preheader28.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader28.preheader.i ], [ %indvars.iv.next.i, %.preheader28.i ] ; 4 uses
  %.12229.i = phi i64 [ %.02143.i, %.preheader28.preheader.i ], [ %i.x, %.preheader28.i ] ; 3 uses
  %i.t = urem i64 %.12229.i, 10
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = or disjoint i8 %i.u, 48
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i
  store i8 %i.v, ptr %i.w, align 1, !tbaa !34
  %i.x = udiv i64 %.12229.i, 10
  %.not.i = icmp ult i64 %.12229.i, 10
  br i1 %.not.i, label %iter.check, label %.preheader28.i, !llvm.loop !325

iter.check:                                       ; preds = %.preheader28.i
  %i.y = trunc i64 %indvars.iv.next.i to i32      ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.y, i32 1)
  %i.z = sub i32 %i.y, %smin                      ; 3 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.z, 7
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check335 = icmp ult i32 %i.z, 31
  br i1 %min.iters.check335, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.ab, 24
  %n.vec = and i64 %i.ab, 8589934560              ; 5 uses
  %i.ad = sub i64 %indvars.iv.next.i, %n.vec
  %i.ae = getelementptr i8, ptr %.02342.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.02342.i, i64 %index ; 2 uses
  %5 = sub i64 %indvars.iv.i, %index
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %5 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -15
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ag, align 1, !tbaa !34
  %wide.load336 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !34
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse337 = shufflevector <16 x i8> %wide.load336, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %reverse, ptr %next.gep, align 1, !tbaa !34
  store <16 x i8> %reverse337, ptr %i.ai, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !326

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec338 = and i64 %i.ab, 8589934584           ; 4 uses
  %i.ak = sub i64 %indvars.iv.next.i, %n.vec338
  %i.al = getelementptr i8, ptr %.02342.i, i64 %n.vec338 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index339 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next343, %vec.epilog.vector.body ] ; 3 uses
  %next.gep340 = getelementptr i8, ptr %.02342.i, i64 %index339
  %6 = sub i64 %indvars.iv.i, %index339
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 %6
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -7
  %wide.load341 = load <8 x i8>, ptr %i.an, align 1, !tbaa !34
  %reverse342 = shufflevector <8 x i8> %wide.load341, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse342, ptr %next.gep340, align 1, !tbaa !34
  %index.next343 = add nuw i64 %index339, 8       ; 2 uses
  %i.ao = icmp eq i64 %index.next343, %n.vec338
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !327

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n344 = icmp eq i64 %i.ab, %n.vec338
  br i1 %cmp.n344, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv37.i.ph = phi i64 [ %indvars.iv.next.i, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.12431.i.ph = phi ptr [ %.02342.i, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %.preheader.i ], [ %indvars.iv37.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.12431.i = phi ptr [ %i.ar, %.preheader.i ], [ %.12431.i.ph, %.preheader.i.preheader ] ; 2 uses
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, -1 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next38.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %.12431.i, i64 1 ; 2 uses
  store i8 %i.aq, ptr %.12431.i, align 1, !tbaa !34
  %i.as = trunc nuw i64 %indvars.iv37.i to i32
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %.preheader.i, label %.loopexit, !llvm.loop !328

.loopexit:                                        ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.al, %vec.epilog.middle.block ], [ %i.ae, %middle.block ], [ %i.ar, %.preheader.i ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !34
  br label %tg3json__itoa.exit

tg3json__itoa.exit:                               ; preds = %bb.h, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.au = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #31
  %i.av = call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull %i.f, i64 noundef %i.au)
  br label %tg3json__indent.exit.thread

bb.i:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !34 ; 4 uses
  %i.ay = bitcast double %i.ax to i64             ; 5 uses
  %i.az = lshr i64 %i.ay, 63
  %i.ba = trunc nuw nsw i64 %i.az to i32          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.bb = fcmp ord double %i.ax, 0.000000e+00
  br i1 %i.bb, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.f, ptr noundef nonnull align 1 dereferenceable(3) @.str.40, i64 3, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  br label %tg3json__dtoa_c.exit

bb.k:                                             ; preds = %bb.i
  %i.bd = tail call double @llvm.fabs.f64(double %i.ax)
  %i.be = bitcast double %i.bd to i64
  switch i64 %i.be, label %bb.p [
    i64 9218868437227405312, label %bb.l
    i64 0, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %.not102.i = icmp sgt i64 %i.ay, -1
  br i1 %.not102.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1718511917, ptr %i.f, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  br label %tg3json__dtoa_c.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.f, ptr noundef nonnull align 1 dereferenceable(3) @.str.42, i64 3, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  br label %tg3json__dtoa_c.exit

bb.o:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 48, ptr %i.f, align 16, !tbaa !34
  br label %tg3json__dtoa_c.exit

bb.p:                                             ; preds = %bb.k
  switch i64 %i.ay, label %bb.s [
    i64 4607182418800017408, label %bb.q
    i64 -4616189618054758400, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 49, ptr %i.f, align 16, !tbaa !34
  br label %tg3json__dtoa_c.exit

bb.r:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 45, ptr %i.f, align 16, !tbaa !34
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 49, ptr %i.bj, align 1, !tbaa !34
  br label %tg3json__dtoa_c.exit

bb.s:                                             ; preds = %bb.p
  %i.bl = fpext double %i.ax to x86_fp80          ; 2 uses
  %i.bm = fneg x86_fp80 %i.bl
  %.not99105.i = icmp slt i64 %i.ay, 0
  %i.bn = select i1 %.not99105.i, x86_fp80 %i.bm, x86_fp80 %i.bl ; 3 uses
  %i.bo = fcmp ult x86_fp80 %i.bn, 1.000000e+16
  br i1 %i.bo, label %.preheader109.i, label %.lr.ph.i

.preheader109.i:                                  ; preds = %.lr.ph.i, %bb.s
  %.093.lcssa.i = phi x86_fp80 [ %i.bn, %bb.s ], [ %i.bq, %.lr.ph.i ] ; 3 uses
  %.089.lcssa.i = phi i32 [ 0, %bb.s ], [ %i.br, %.lr.ph.i ] ; 2 uses
  %i.bp = fcmp ult x86_fp80 %.093.lcssa.i, 1.000000e+01
  br i1 %i.bp, label %.preheader108.i, label %.lr.ph117.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.i
  %.089113.i = phi i32 [ %i.br, %.lr.ph.i ], [ 0, %bb.s ]
  %.093112.i = phi x86_fp80 [ %i.bq, %.lr.ph.i ], [ %i.bn, %bb.s ]
  %i.bq = fmul nnan x86_fp80 %.093112.i, f0x3FC9E69594BEC44DE15B ; 3 uses
  %i.br = add nuw nsw i32 %.089113.i, 16          ; 2 uses
  %i.bs = fcmp ult x86_fp80 %i.bq, 1.000000e+16
  br i1 %i.bs, label %.preheader109.i, label %.lr.ph.i, !llvm.loop !329

.preheader108.i:                                  ; preds = %.lr.ph117.i, %.preheader109.i
  %.194.lcssa.i = phi x86_fp80 [ %.093.lcssa.i, %.preheader109.i ], [ %i.bu, %.lr.ph117.i ] ; 3 uses
  %.190.lcssa.i = phi i32 [ %.089.lcssa.i, %.preheader109.i ], [ %i.bv, %.lr.ph117.i ] ; 2 uses
  %i.bt = fcmp olt x86_fp80 %.194.lcssa.i, 1.000000e+00
  br i1 %i.bt, label %.lr.ph122.i, label %.preheader107.i

.lr.ph117.i:                                      ; preds = %.preheader109.i, %.lr.ph117.i
  %.190116.i = phi i32 [ %i.bv, %.lr.ph117.i ], [ %.089.lcssa.i, %.preheader109.i ]
  %.194115.i = phi x86_fp80 [ %i.bu, %.lr.ph117.i ], [ %.093.lcssa.i, %.preheader109.i ]
  %i.bu = fmul nnan x86_fp80 %.194115.i, 1.000000e-01 ; 3 uses
  %i.bv = add nuw nsw i32 %.190116.i, 1           ; 2 uses
  %i.bw = fcmp ult x86_fp80 %i.bu, 1.000000e+01
  br i1 %i.bw, label %.preheader108.i, label %.lr.ph117.i, !llvm.loop !330

.preheader107.i:                                  ; preds = %.lr.ph122.i, %.preheader108.i
  %.295.lcssa.i = phi x86_fp80 [ %.194.lcssa.i, %.preheader108.i ], [ %i.gq, %.lr.ph122.i ] ; 2 uses
  %.291.lcssa.i = phi i32 [ %.190.lcssa.i, %.preheader108.i ], [ %i.gr, %.lr.ph122.i ] ; 17 uses
  %i.bx = fptosi x86_fp80 %.295.lcssa.i to i32
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 0)
  %spec.store.select1.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.i, i32 9) ; 2 uses
  %i.by = trunc nuw nsw i32 %spec.store.select1.i to i8
  %i.bz = or disjoint i8 %i.by, 48
  store i8 %i.bz, ptr %i.a, align 16, !tbaa !34
  %i.ca = uitofp nneg i32 %spec.store.select1.i to x86_fp80
  %i.cb = fsub x86_fp80 %.295.lcssa.i, %i.ca
  %i.cc = fmul x86_fp80 %i.cb, 1.000000e+01       ; 2 uses
  %i.cd = fptosi x86_fp80 %i.cc to i32
  %spec.store.select.1.i = tail call i32 @llvm.smax.i32(i32 %i.cd, i32 0)
  %spec.store.select1.1.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.1.i, i32 9) ; 2 uses
  %i.ce = trunc nuw nsw i32 %spec.store.select1.1.i to i8
  %i.cf = or disjoint i8 %i.ce, 48
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !34
  %i.ch = uitofp nneg i32 %spec.store.select1.1.i to x86_fp80
  %i.ci = fsub x86_fp80 %i.cc, %i.ch
  %i.cj = fmul x86_fp80 %i.ci, 1.000000e+01       ; 2 uses
  %i.ck = fptosi x86_fp80 %i.cj to i32
  %spec.store.select.2.i = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 0)
  %spec.store.select1.2.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.2.i, i32 9) ; 2 uses
  %i.cl = trunc nuw nsw i32 %spec.store.select1.2.i to i8
  %i.cm = or disjoint i8 %i.cl, 48
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.cm, ptr %i.cn, align 2, !tbaa !34
  %i.co = uitofp nneg i32 %spec.store.select1.2.i to x86_fp80
  %i.cp = fsub x86_fp80 %i.cj, %i.co
  %i.cq = fmul x86_fp80 %i.cp, 1.000000e+01       ; 2 uses
  %i.cr = fptosi x86_fp80 %i.cq to i32
  %spec.store.select.3.i = tail call i32 @llvm.smax.i32(i32 %i.cr, i32 0)
  %spec.store.select1.3.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.3.i, i32 9) ; 2 uses
  %i.cs = trunc nuw nsw i32 %spec.store.select1.3.i to i8
  %i.ct = or disjoint i8 %i.cs, 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !34
  %i.cv = uitofp nneg i32 %spec.store.select1.3.i to x86_fp80
  %i.cw = fsub x86_fp80 %i.cq, %i.cv
  %i.cx = fmul x86_fp80 %i.cw, 1.000000e+01       ; 2 uses
  %i.cy = fptosi x86_fp80 %i.cx to i32
  %spec.store.select.4.i = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 0)
  %spec.store.select1.4.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.4.i, i32 9) ; 2 uses
  %i.cz = trunc nuw nsw i32 %spec.store.select1.4.i to i8
  %i.da = or disjoint i8 %i.cz, 48
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.da, ptr %i.db, align 4, !tbaa !34
  %i.dc = uitofp nneg i32 %spec.store.select1.4.i to x86_fp80
  %i.dd = fsub x86_fp80 %i.cx, %i.dc
  %i.de = fmul x86_fp80 %i.dd, 1.000000e+01       ; 2 uses
  %i.df = fptosi x86_fp80 %i.de to i32
  %spec.store.select.5.i = tail call i32 @llvm.smax.i32(i32 %i.df, i32 0)
  %spec.store.select1.5.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.5.i, i32 9) ; 2 uses
  %i.dg = trunc nuw nsw i32 %spec.store.select1.5.i to i8
  %i.dh = or disjoint i8 %i.dg, 48
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !34
  %i.dj = uitofp nneg i32 %spec.store.select1.5.i to x86_fp80
  %i.dk = fsub x86_fp80 %i.de, %i.dj
  %i.dl = fmul x86_fp80 %i.dk, 1.000000e+01       ; 2 uses
  %i.dm = fptosi x86_fp80 %i.dl to i32
  %spec.store.select.6.i = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 0)
  %spec.store.select1.6.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.6.i, i32 9) ; 2 uses
  %i.dn = trunc nuw nsw i32 %spec.store.select1.6.i to i8
  %i.do = or disjoint i8 %i.dn, 48
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %i.do, ptr %i.dp, align 2, !tbaa !34
  %i.dq = uitofp nneg i32 %spec.store.select1.6.i to x86_fp80
  %i.dr = fsub x86_fp80 %i.dl, %i.dq
  %i.ds = fmul x86_fp80 %i.dr, 1.000000e+01       ; 2 uses
  %i.dt = fptosi x86_fp80 %i.ds to i32
  %spec.store.select.7.i = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 0)
  %spec.store.select1.7.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.7.i, i32 9) ; 2 uses
  %i.du = trunc nuw nsw i32 %spec.store.select1.7.i to i8
  %i.dv = or disjoint i8 %i.du, 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 2 uses
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !34
  %i.dx = uitofp nneg i32 %spec.store.select1.7.i to x86_fp80
  %i.dy = fsub x86_fp80 %i.ds, %i.dx
  %i.dz = fmul x86_fp80 %i.dy, 1.000000e+01       ; 2 uses
  %i.ea = fptosi x86_fp80 %i.dz to i32
  %spec.store.select.8.i = tail call i32 @llvm.smax.i32(i32 %i.ea, i32 0)
  %spec.store.select1.8.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.8.i, i32 9) ; 2 uses
  %i.eb = trunc nuw nsw i32 %spec.store.select1.8.i to i8
  %i.ec = or disjoint i8 %i.eb, 48
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 %i.ec, ptr %i.ed, align 8, !tbaa !34
  %i.ee = uitofp nneg i32 %spec.store.select1.8.i to x86_fp80
  %i.ef = fsub x86_fp80 %i.dz, %i.ee
  %i.eg = fmul x86_fp80 %i.ef, 1.000000e+01       ; 2 uses
  %i.eh = fptosi x86_fp80 %i.eg to i32
  %spec.store.select.9.i = tail call i32 @llvm.smax.i32(i32 %i.eh, i32 0)
end_hunk_0
begin_hunk_1_@tg3json__format_decimal_digits:bb.a
  %wide.load332 = load <8 x i8>, ptr %i.cj, align 1, !tbaa !34
  %reverse333 = shufflevector <8 x i8> %wide.load332, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 %index331
  store <8 x i8> %reverse333, ptr %i.ck, align 8, !tbaa !34
  %index.next334 = add nuw i64 %index331, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next334, %n.vec329
  br i1 %i.cl, label %vec.epilog.middle.block335, label %vec.epilog.vector.body330, !llvm.loop !558

vec.epilog.middle.block335:                       ; preds = %vec.epilog.vector.body330
  %cmp.n336 = icmp eq i64 %i.bu, %n.vec329
  br i1 %cmp.n336, label %tg3json__write_exp.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %iter.check323, %vec.epilog.iter.check324, %vec.epilog.middle.block335
  %.023.i.i.ph = phi i64 [ 0, %iter.check323 ], [ %n.vec314, %vec.epilog.iter.check324 ], [ %n.vec329, %vec.epilog.middle.block335 ]
  %.122.i.i.ph = phi i64 [ %i.bu, %iter.check323 ], [ %i.by, %vec.epilog.iter.check324 ], [ %i.cg, %vec.epilog.middle.block335 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.023.i.i = phi i64 [ %i.cp, %.preheader.i.i ], [ %.023.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.122.i.i = phi i64 [ %i.cm, %.preheader.i.i ], [ %.122.i.i.ph, %.preheader.i.i.preheader ]
  %i.cm = add nsw i64 %.122.i.i, -1               ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !34
  %i.cp = add nuw nsw i64 %.023.i.i, 1            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.023.i.i
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !34
  %.not18.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not18.i.i, label %tg3json__write_exp.exit, label %.preheader.i.i, !llvm.loop !559

tg3json__write_exp.exit:                          ; preds = %.preheader.i.i, %middle.block321, %vec.epilog.middle.block335, %bb.f
  %.0815.i = phi ptr [ %i.bl, %bb.f ], [ %.0816.i, %middle.block321 ], [ %.0816.i, %vec.epilog.middle.block335 ], [ %.0816.i, %.preheader.i.i ] ; 2 uses
  %.lcssa.sink.i.i = phi i64 [ 1, %bb.f ], [ %n.vec314, %middle.block321 ], [ %n.vec329, %vec.epilog.middle.block335 ], [ %i.cp, %.preheader.i.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.lcssa.sink.i.i
  store i8 0, ptr %i.cr, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0815.i, ptr noundef nonnull align 16 dereferenceable(1) %i.c, i64 %.lcssa.sink.i.i, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.0815.i, i64 %.lcssa.sink.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.loopexit76

bb.g:                                             ; preds = %bb.c
  %i.ct = icmp sgt i32 %3, -1
  br i1 %i.ct, label %.preheader77, label %bb.h

.preheader77:                                     ; preds = %bb.g
  %i.cu = icmp sgt i32 %2, 0
  br i1 %i.cu, label %iter.check261, label %.preheader

iter.check261:                                    ; preds = %.preheader77
  %wide.trip.count133 = zext nneg i32 %2 to i64   ; 8 uses
  %min.iters.check246 = icmp ult i32 %2, 4
  %i.cv = sub i64 %i.a, %.064173
  %diff.check248 = icmp ugt i64 %i.cv, -32
  %or.cond341 = select i1 %min.iters.check246, i1 true, i1 %diff.check248
  br i1 %or.cond341, label %.lr.ph98.preheader, label %vector.main.loop.iter.check249

vector.main.loop.iter.check249:                   ; preds = %iter.check261
  %min.iters.check250 = icmp ult i32 %2, 32
  br i1 %min.iters.check250, label %vec.epilog.ph265, label %vector.ph251

vector.ph251:                                     ; preds = %vector.main.loop.iter.check249
  %i.cw = and i64 %wide.trip.count133, 28
  %n.vec252 = and i64 %wide.trip.count133, 2147483616 ; 5 uses
  %i.cx = getelementptr i8, ptr %.064, i64 %n.vec252 ; 2 uses
  br label %vector.body253

vector.body253:                                   ; preds = %vector.ph251, %vector.body253
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next258, %vector.body253 ] ; 3 uses
  %next.gep255 = getelementptr i8, ptr %.064, i64 %index254 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %index254 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load256 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !34
  %wide.load257 = load <16 x i8>, ptr %i.cz, align 1, !tbaa !34
  %i.da = getelementptr i8, ptr %next.gep255, i64 16
  store <16 x i8> %wide.load256, ptr %next.gep255, align 1, !tbaa !34
  store <16 x i8> %wide.load257, ptr %i.da, align 1, !tbaa !34
  %index.next258 = add nuw i64 %index254, 32      ; 2 uses
  %i.db = icmp eq i64 %index.next258, %n.vec252
  br i1 %i.db, label %middle.block259, label %vector.body253, !llvm.loop !560

middle.block259:                                  ; preds = %vector.body253
  %cmp.n260 = icmp eq i64 %n.vec252, %wide.trip.count133
  br i1 %cmp.n260, label %.preheader, label %vec.epilog.iter.check262

vec.epilog.iter.check262:                         ; preds = %middle.block259
  %min.epilog.iters.check264 = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check264, label %.lr.ph98.preheader, label %vec.epilog.ph265, !prof !575

vec.epilog.ph265:                                 ; preds = %vector.main.loop.iter.check249, %vec.epilog.iter.check262
  %vec.epilog.resume.val266 = phi i64 [ %n.vec252, %vec.epilog.iter.check262 ], [ 0, %vector.main.loop.iter.check249 ]
  %n.vec267 = and i64 %wide.trip.count133, 2147483644 ; 4 uses
  %i.dc = getelementptr i8, ptr %.064, i64 %n.vec267 ; 2 uses
  br label %vec.epilog.vector.body268

vec.epilog.vector.body268:                        ; preds = %vec.epilog.vector.body268, %vec.epilog.ph265
  %index269 = phi i64 [ %vec.epilog.resume.val266, %vec.epilog.ph265 ], [ %index.next272, %vec.epilog.vector.body268 ] ; 3 uses
  %next.gep270 = getelementptr i8, ptr %.064, i64 %index269
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %index269
  %wide.load271 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !34
  store <4 x i8> %wide.load271, ptr %next.gep270, align 1, !tbaa !34
  %index.next272 = add nuw i64 %index269, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next272, %n.vec267
  br i1 %i.de, label %vec.epilog.middle.block273, label %vec.epilog.vector.body268, !llvm.loop !561

vec.epilog.middle.block273:                       ; preds = %vec.epilog.vector.body268
  %cmp.n274 = icmp eq i64 %n.vec267, %wide.trip.count133
  br i1 %cmp.n274, label %.preheader, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %iter.check261, %vec.epilog.iter.check262, %vec.epilog.middle.block273
  %indvars.iv130.ph = phi i64 [ 0, %iter.check261 ], [ %n.vec252, %vec.epilog.iter.check262 ], [ %n.vec267, %vec.epilog.middle.block273 ] ; 4 uses
  %.36796.ph = phi ptr [ %.064, %iter.check261 ], [ %i.cx, %vec.epilog.iter.check262 ], [ %i.dc, %vec.epilog.middle.block273 ] ; 2 uses
  %i.df = sub nsw i64 %wide.trip.count133, %indvars.iv130.ph
  %xtraiter355 = and i64 %i.df, 7                 ; 2 uses
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol

.lr.ph98.prol:                                    ; preds = %.lr.ph98.preheader, %.lr.ph98.prol
  %indvars.iv130.prol = phi i64 [ %indvars.iv.next131.prol, %.lr.ph98.prol ], [ %indvars.iv130.ph, %.lr.ph98.preheader ] ; 2 uses
  %.36796.prol = phi ptr [ %i.di, %.lr.ph98.prol ], [ %.36796.ph, %.lr.ph98.preheader ] ; 2 uses
  %prol.iter357 = phi i64 [ %prol.iter357.next, %.lr.ph98.prol ], [ 0, %.lr.ph98.preheader ]
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130.prol
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !34
  %i.di = getelementptr inbounds nuw i8, ptr %.36796.prol, i64 1 ; 3 uses
  store i8 %i.dh, ptr %.36796.prol, align 1, !tbaa !34
  %indvars.iv.next131.prol = add nuw nsw i64 %indvars.iv130.prol, 1 ; 2 uses
  %prol.iter357.next = add i64 %prol.iter357, 1   ; 2 uses
  %prol.iter357.cmp.not = icmp eq i64 %prol.iter357.next, %xtraiter355
  br i1 %prol.iter357.cmp.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol, !llvm.loop !562

.lr.ph98.prol.loopexit:                           ; preds = %.lr.ph98.prol, %.lr.ph98.preheader
  %.lcssa346.unr = phi ptr [ poison, %.lr.ph98.preheader ], [ %i.di, %.lr.ph98.prol ]
  %indvars.iv130.unr = phi i64 [ %indvars.iv130.ph, %.lr.ph98.preheader ], [ %indvars.iv.next131.prol, %.lr.ph98.prol ]
  %.36796.unr = phi ptr [ %.36796.ph, %.lr.ph98.preheader ], [ %i.di, %.lr.ph98.prol ]
  %i.dj = sub nsw i64 %indvars.iv130.ph, %wide.trip.count133
  %i.dk = icmp ugt i64 %i.dj, -8
  br i1 %i.dk, label %.preheader, label %.lr.ph98

.preheader:                                       ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98, %middle.block259, %vec.epilog.middle.block273, %.preheader77
  %.367.lcssa = phi ptr [ %.064, %.preheader77 ], [ %i.dc, %vec.epilog.middle.block273 ], [ %i.cx, %middle.block259 ], [ %.lcssa346.unr, %.lr.ph98.prol.loopexit ], [ %i.er, %.lr.ph98 ] ; 3 uses
  %.not106 = icmp eq i32 %3, 0
  br i1 %.not106, label %.loopexit76, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %.preheader
  %i.dl = zext nneg i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.367.lcssa, i8 48, i64 %i.dl, i1 false), !tbaa !34
  %i.dm = zext nneg i32 %3 to i64
  %scevgep135 = getelementptr i8, ptr %.367.lcssa, i64 %i.dm
  br label %.loopexit76

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %indvars.iv130 = phi i64 [ %indvars.iv.next131.7, %.lr.ph98 ], [ %indvars.iv130.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %.36796 = phi ptr [ %i.er, %.lr.ph98 ], [ %.36796.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !34
  %i.dp = getelementptr inbounds nuw i8, ptr %.36796, i64 1
  store i8 %i.do, ptr %.36796, align 1, !tbaa !34
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !34
  %i.dt = getelementptr inbounds nuw i8, ptr %.36796, i64 2
  store i8 %i.ds, ptr %i.dp, align 1, !tbaa !34
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !34
  %i.dx = getelementptr inbounds nuw i8, ptr %.36796, i64 3
  store i8 %i.dw, ptr %i.dt, align 1, !tbaa !34
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 3
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !34
  %i.eb = getelementptr inbounds nuw i8, ptr %.36796, i64 4
  store i8 %i.ea, ptr %i.dx, align 1, !tbaa !34
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !34
  %i.ef = getelementptr inbounds nuw i8, ptr %.36796, i64 5
  store i8 %i.ee, ptr %i.eb, align 1, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 5
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !34
  %i.ej = getelementptr inbounds nuw i8, ptr %.36796, i64 6
  store i8 %i.ei, ptr %i.ef, align 1, !tbaa !34
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 6
  %i.em = load i8, ptr %i.el, align 1, !tbaa !34
  %i.en = getelementptr inbounds nuw i8, ptr %.36796, i64 7
  store i8 %i.em, ptr %i.ej, align 1, !tbaa !34
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 7
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !34
  %i.er = getelementptr inbounds nuw i8, ptr %.36796, i64 8 ; 2 uses
  store i8 %i.eq, ptr %i.en, align 1, !tbaa !34
  %indvars.iv.next131.7 = add nuw nsw i64 %indvars.iv130, 8 ; 2 uses
  %exitcond134.not.7 = icmp eq i64 %indvars.iv.next131.7, %wide.trip.count133
  br i1 %exitcond134.not.7, label %.preheader, label %.lr.ph98, !llvm.loop !563

bb.h:                                             ; preds = %bb.g
  %i.es = icmp sgt i32 %i.d, 0
  br i1 %i.es, label %iter.check190, label %bb.i

iter.check190:                                    ; preds = %bb.h
  %wide.trip.count122 = zext nneg i32 %i.d to i64 ; 15 uses
  %min.iters.check174 = icmp ult i32 %i.d, 4
  %i.et = sub i64 %i.a, %.064173
  %diff.check176 = icmp ugt i64 %i.et, -32
  %or.cond342 = select i1 %min.iters.check174, i1 true, i1 %diff.check176
  br i1 %or.cond342, label %.preheader79.preheader, label %vector.main.loop.iter.check177

vector.main.loop.iter.check177:                   ; preds = %iter.check190
  %min.iters.check178 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check178, label %vec.epilog.ph194, label %vector.ph179

vector.ph179:                                     ; preds = %vector.main.loop.iter.check177
  %i.eu = and i64 %wide.trip.count122, 28
  %n.vec180 = and i64 %wide.trip.count122, 2147483616 ; 5 uses
  %i.ev = getelementptr i8, ptr %.064, i64 %n.vec180 ; 3 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.ph179, %vector.body181
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next186, %vector.body181 ] ; 3 uses
  %next.gep183 = getelementptr i8, ptr %.064, i64 %index182 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %index182 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load184 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !34
  %wide.load185 = load <16 x i8>, ptr %i.ex, align 1, !tbaa !34
  %i.ey = getelementptr i8, ptr %next.gep183, i64 16
  store <16 x i8> %wide.load184, ptr %next.gep183, align 1, !tbaa !34
  store <16 x i8> %wide.load185, ptr %i.ey, align 1, !tbaa !34
  %index.next186 = add nuw i64 %index182, 32      ; 2 uses
  %i.ez = icmp eq i64 %index.next186, %n.vec180
  br i1 %i.ez, label %middle.block187, label %vector.body181, !llvm.loop !564

middle.block187:                                  ; preds = %vector.body181
  %ind.escape188 = getelementptr i8, ptr %i.ev, i64 -1
  %cmp.n189 = icmp eq i64 %n.vec180, %wide.trip.count122
  br i1 %cmp.n189, label %.loopexit339, label %vec.epilog.iter.check191

vec.epilog.iter.check191:                         ; preds = %middle.block187
  %min.epilog.iters.check193 = icmp eq i64 %i.eu, 0
  br i1 %min.epilog.iters.check193, label %.preheader79.preheader, label %vec.epilog.ph194, !prof !575

vec.epilog.ph194:                                 ; preds = %vector.main.loop.iter.check177, %vec.epilog.iter.check191
  %vec.epilog.resume.val195 = phi i64 [ %n.vec180, %vec.epilog.iter.check191 ], [ 0, %vector.main.loop.iter.check177 ]
  %n.vec196 = and i64 %wide.trip.count122, 2147483644 ; 4 uses
  %i.fa = getelementptr i8, ptr %.064, i64 %n.vec196 ; 3 uses
  br label %vec.epilog.vector.body197

vec.epilog.vector.body197:                        ; preds = %vec.epilog.vector.body197, %vec.epilog.ph194
  %index198 = phi i64 [ %vec.epilog.resume.val195, %vec.epilog.ph194 ], [ %index.next201, %vec.epilog.vector.body197 ] ; 3 uses
  %next.gep199 = getelementptr i8, ptr %.064, i64 %index198
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 %index198
  %wide.load200 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !34
  store <4 x i8> %wide.load200, ptr %next.gep199, align 1, !tbaa !34
  %index.next201 = add nuw i64 %index198, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next201, %n.vec196
  br i1 %i.fc, label %vec.epilog.middle.block202, label %vec.epilog.vector.body197, !llvm.loop !565

vec.epilog.middle.block202:                       ; preds = %vec.epilog.vector.body197
  %ind.escape204 = getelementptr i8, ptr %i.fa, i64 -1
  %cmp.n205 = icmp eq i64 %n.vec196, %wide.trip.count122
  br i1 %cmp.n205, label %.loopexit339, label %.preheader79.preheader

.preheader79.preheader:                           ; preds = %iter.check190, %vec.epilog.iter.check191, %vec.epilog.middle.block202
  %indvars.iv119.ph = phi i64 [ 0, %iter.check190 ], [ %n.vec180, %vec.epilog.iter.check191 ], [ %n.vec196, %vec.epilog.middle.block202 ] ; 4 uses
  %.56989.ph = phi ptr [ %.064, %iter.check190 ], [ %i.ev, %vec.epilog.iter.check191 ], [ %i.fa, %vec.epilog.middle.block202 ] ; 2 uses
  %5 = sub nsw i64 %wide.trip.count122, %indvars.iv119.ph
  %xtraiter352 = and i64 %5, 7                    ; 2 uses
  %lcmp.mod353.not = icmp eq i64 %xtraiter352, 0
  br i1 %lcmp.mod353.not, label %.preheader79.prol.loopexit, label %.preheader79.prol

.preheader79.prol:                                ; preds = %.preheader79.preheader, %.preheader79.prol
  %indvars.iv119.prol = phi i64 [ %indvars.iv.next126.prol, %.preheader79.prol ], [ %indvars.iv119.ph, %.preheader79.preheader ] ; 2 uses
  %.56989.prol = phi ptr [ %i.ff, %.preheader79.prol ], [ %.56989.ph, %.preheader79.preheader ] ; 3 uses
  %prol.iter354 = phi i64 [ %prol.iter354.next, %.preheader79.prol ], [ 0, %.preheader79.preheader ]
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119.prol
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !34
  %i.ff = getelementptr inbounds nuw i8, ptr %.56989.prol, i64 1 ; 3 uses
  store i8 %i.fe, ptr %.56989.prol, align 1, !tbaa !34
  %indvars.iv.next126.prol = add nuw nsw i64 %indvars.iv119.prol, 1 ; 2 uses
  %prol.iter354.next = add i64 %prol.iter354, 1   ; 2 uses
  %prol.iter354.cmp.not = icmp eq i64 %prol.iter354.next, %xtraiter352
  br i1 %prol.iter354.cmp.not, label %.preheader79.prol.loopexit, label %.preheader79.prol, !llvm.loop !566

.preheader79.prol.loopexit:                       ; preds = %.preheader79.prol, %.preheader79.preheader
  %.56989.lcssa348.unr = phi ptr [ poison, %.preheader79.preheader ], [ %.56989.prol, %.preheader79.prol ]
  %.lcssa347.unr = phi ptr [ poison, %.preheader79.preheader ], [ %i.ff, %.preheader79.prol ]
  %indvars.iv119.unr = phi i64 [ %indvars.iv119.ph, %.preheader79.preheader ], [ %indvars.iv.next126.prol, %.preheader79.prol ]
  %.56989.unr = phi ptr [ %.56989.ph, %.preheader79.preheader ], [ %i.ff, %.preheader79.prol ]
  %i.fg = sub nsw i64 %indvars.iv119.ph, %wide.trip.count122
  %i.fh = icmp ugt i64 %i.fg, -8
  br i1 %i.fh, label %.loopexit339, label %.preheader79

.preheader79:                                     ; preds = %.preheader79.prol.loopexit, %.preheader79
  %indvars.iv125.a = phi i64 [ %indvars.iv.next126.3, %.preheader79 ], [ %indvars.iv119.unr, %.preheader79.prol.loopexit ] ; 9 uses
  %.56989 = phi ptr [ %21, %.preheader79 ], [ %.56989.unr, %.preheader79.prol.loopexit ] ; 10 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv125.a
  %7 = load i8, ptr %6, align 1, !tbaa !34
  %8 = getelementptr inbounds nuw i8, ptr %.56989, i64 1
  store i8 %7, ptr %.56989, align 1, !tbaa !34
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv125.a
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = getelementptr inbounds nuw i8, ptr %.56989, i64 2
  store i8 %11, ptr %8, align 1, !tbaa !34
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv125.a
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !34
  %16 = getelementptr inbounds nuw i8, ptr %.56989, i64 3
  store i8 %15, ptr %12, align 1, !tbaa !34
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv125.a
  %i.fi = getelementptr inbounds nuw i8, ptr %17, i64 3
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !34
  %i.fk = getelementptr inbounds nuw i8, ptr %.56989, i64 4
  store i8 %i.fj, ptr %16, align 1, !tbaa !34
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv125.a
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !34
  %i.fo = getelementptr inbounds nuw i8, ptr %.56989, i64 5
  store i8 %i.fn, ptr %i.fk, align 1, !tbaa !34
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv125.a
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 5
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !34
  %i.fs = getelementptr inbounds nuw i8, ptr %.56989, i64 6
  store i8 %i.fr, ptr %i.fo, align 1, !tbaa !34
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv125.a
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 6
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !34
  %i.fw = getelementptr inbounds nuw i8, ptr %.56989, i64 7
  store i8 %i.fv, ptr %i.fs, align 1, !tbaa !34
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv125.a
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 7
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = getelementptr inbounds nuw i8, ptr %.56989, i64 8 ; 2 uses
  store i8 %20, ptr %i.fw, align 1, !tbaa !34
  %indvars.iv.next126.3 = add nuw nsw i64 %indvars.iv125.a, 8 ; 2 uses
  %exitcond123.not.7 = icmp eq i64 %indvars.iv.next126.3, %wide.trip.count122
  br i1 %exitcond123.not.7, label %.loopexit339.loopexit.unr-lcssa, label %.preheader79, !llvm.loop !567

.loopexit339.loopexit.unr-lcssa:                  ; preds = %.preheader79
  %i.fx = getelementptr inbounds nuw i8, ptr %.56989, i64 7
  br label %.loopexit339

.loopexit339:                                     ; preds = %.loopexit339.loopexit.unr-lcssa, %.preheader79.prol.loopexit, %vec.epilog.middle.block202, %middle.block187
  %.56989.lcssa = phi ptr [ %ind.escape204, %vec.epilog.middle.block202 ], [ %ind.escape188, %middle.block187 ], [ %.56989.lcssa348.unr, %.preheader79.prol.loopexit ], [ %i.fx, %.loopexit339.loopexit.unr-lcssa ] ; 2 uses
  %.lcssa157 = phi ptr [ %i.fa, %vec.epilog.middle.block202 ], [ %i.ev, %middle.block187 ], [ %.lcssa347.unr, %.preheader79.prol.loopexit ], [ %21, %.loopexit339.loopexit.unr-lcssa ]
  %.56989.lcssa212 = ptrtoaddr ptr %.56989.lcssa to i64
  store i8 46, ptr %.lcssa157, align 1, !tbaa !34
  %.67091 = getelementptr inbounds nuw i8, ptr %.56989.lcssa, i64 2 ; 7 uses
  %i.fy = icmp slt i32 %i.d, %2
  br i1 %i.fy, label %iter.check228, label %.loopexit76

iter.check228:                                    ; preds = %.loopexit339
  %narrow = sub nsw i32 0, %3                     ; 3 uses
  %i.fz = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check213 = icmp ult i32 %narrow, 8
  br i1 %min.iters.check213, label %.lr.ph94.preheader, label %vector.memcheck214

vector.memcheck214:                               ; preds = %iter.check228
  %i.ga = add i64 %i.a, %wide.trip.count122
  %i.gb = sub i64 %.56989.lcssa212, %i.ga
  %i.gc = add i64 %i.gb, 1
  %diff.check215 = icmp ult i64 %i.gc, 31
  br i1 %diff.check215, label %.lr.ph94.preheader, label %vector.main.loop.iter.check216

vector.main.loop.iter.check216:                   ; preds = %vector.memcheck214
  %min.iters.check217 = icmp ult i32 %narrow, 32
  br i1 %min.iters.check217, label %vec.epilog.ph232, label %vector.ph218

vector.ph218:                                     ; preds = %vector.main.loop.iter.check216
  %i.gd = and i64 %i.fz, 24
  %n.vec219 = and i64 %i.fz, 2147483616           ; 5 uses
  %i.ge = add nuw nsw i64 %n.vec219, %wide.trip.count122
  %i.gf = getelementptr i8, ptr %.67091, i64 %n.vec219 ; 2 uses
  %i.gg = getelementptr i8, ptr %1, i64 %wide.trip.count122
  br label %vector.body220

vector.body220:                                   ; preds = %vector.ph218, %vector.body220
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next225, %vector.body220 ] ; 3 uses
  %next.gep222 = getelementptr i8, ptr %.67091, i64 %index221 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 %index221 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %wide.load223 = load <16 x i8>, ptr %i.gh, align 1, !tbaa !34
  %wide.load224 = load <16 x i8>, ptr %i.gi, align 1, !tbaa !34
  %i.gj = getelementptr i8, ptr %next.gep222, i64 16
  store <16 x i8> %wide.load223, ptr %next.gep222, align 1, !tbaa !34
  store <16 x i8> %wide.load224, ptr %i.gj, align 1, !tbaa !34
  %index.next225 = add nuw i64 %index221, 32      ; 2 uses
  %i.gk = icmp eq i64 %index.next225, %n.vec219
  br i1 %i.gk, label %middle.block226, label %vector.body220, !llvm.loop !568

middle.block226:                                  ; preds = %vector.body220
  %cmp.n227 = icmp eq i64 %n.vec219, %i.fz
  br i1 %cmp.n227, label %.loopexit76, label %vec.epilog.iter.check229

vec.epilog.iter.check229:                         ; preds = %middle.block226
  %min.epilog.iters.check231 = icmp eq i64 %i.gd, 0
  br i1 %min.epilog.iters.check231, label %.lr.ph94.preheader, label %vec.epilog.ph232, !prof !56

vec.epilog.ph232:                                 ; preds = %vector.main.loop.iter.check216, %vec.epilog.iter.check229
  %vec.epilog.resume.val233 = phi i64 [ %n.vec219, %vec.epilog.iter.check229 ], [ 0, %vector.main.loop.iter.check216 ]
  %n.vec234 = and i64 %i.fz, 2147483640           ; 4 uses
  %i.gl = add nuw nsw i64 %n.vec234, %wide.trip.count122
  %i.gm = getelementptr i8, ptr %.67091, i64 %n.vec234 ; 2 uses
  %i.gn = getelementptr i8, ptr %1, i64 %wide.trip.count122
  br label %vec.epilog.vector.body235

vec.epilog.vector.body235:                        ; preds = %vec.epilog.vector.body235, %vec.epilog.ph232
  %index236 = phi i64 [ %vec.epilog.resume.val233, %vec.epilog.ph232 ], [ %index.next239, %vec.epilog.vector.body235 ] ; 3 uses
  %next.gep237 = getelementptr i8, ptr %.67091, i64 %index236
  %i.go = getelementptr i8, ptr %i.gn, i64 %index236
  %wide.load238 = load <8 x i8>, ptr %i.go, align 1, !tbaa !34
  store <8 x i8> %wide.load238, ptr %next.gep237, align 1, !tbaa !34
  %index.next239 = add nuw i64 %index236, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next239, %n.vec234
  br i1 %i.gp, label %vec.epilog.middle.block240, label %vec.epilog.vector.body235, !llvm.loop !569

vec.epilog.middle.block240:                       ; preds = %vec.epilog.vector.body235
  %cmp.n241 = icmp eq i64 %n.vec234, %i.fz
  br i1 %cmp.n241, label %.loopexit76, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %iter.check228, %vector.memcheck214, %vec.epilog.iter.check229, %vec.epilog.middle.block240
  %indvars.iv127.ph = phi i64 [ %wide.trip.count122, %iter.check228 ], [ %wide.trip.count122, %vector.memcheck214 ], [ %i.ge, %vec.epilog.iter.check229 ], [ %i.gl, %vec.epilog.middle.block240 ]
  %.67093.ph = phi ptr [ %.67091, %iter.check228 ], [ %.67091, %vector.memcheck214 ], [ %i.gf, %vec.epilog.iter.check229 ], [ %i.gm, %vec.epilog.middle.block240 ]
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph94
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %.lr.ph94 ], [ %indvars.iv127.ph, %.lr.ph94.preheader ] ; 2 uses
  %.67093 = phi ptr [ %.670, %.lr.ph94 ], [ %.67093.ph, %.lr.ph94.preheader ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv127
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !34
  store i8 %i.gr, ptr %.67093, align 1, !tbaa !34
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %.670 = getelementptr inbounds nuw i8, ptr %.67093, i64 1 ; 2 uses
  %i.gs = trunc nuw i64 %indvars.iv.next128 to i32
  %i.gt = icmp sgt i32 %2, %i.gs
  br i1 %i.gt, label %.lr.ph94, label %.loopexit76, !llvm.loop !570

bb.i:                                             ; preds = %bb.h
  %i.gu = getelementptr inbounds nuw i8, ptr %.064, i64 1
  store i8 48, ptr %.064, align 1, !tbaa !34
  %i.gv = getelementptr i8, ptr %.064, i64 2      ; 2 uses
  store i8 46, ptr %i.gu, align 1, !tbaa !34
  %i.gw = icmp slt i32 %i.d, 0
  br i1 %i.gw, label %.lr.ph.preheader, label %.preheader80

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.gx = sub nsw i32 0, %i.d
  %i.gy = zext nneg i32 %i.gx to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gv, i8 48, i64 %i.gy, i1 false), !tbaa !34
  %i.gz = getelementptr i8, ptr %.064, i64 %i.gy
  %scevgep = getelementptr i8, ptr %i.gz, i64 2
  br label %.preheader80

.preheader80:                                     ; preds = %.lr.ph.preheader, %bb.i
  %.7.lcssa = phi ptr [ %i.gv, %bb.i ], [ %scevgep, %.lr.ph.preheader ] ; 7 uses
  %i.ha = icmp sgt i32 %2, 0
  br i1 %i.ha, label %iter.check, label %.loopexit76

iter.check:                                       ; preds = %.preheader80
  %.7.lcssa160 = ptrtoaddr ptr %.7.lcssa to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.hb = sub i64 %i.a, %.7.lcssa160
  %diff.check = icmp ugt i64 %i.hb, -32
  %or.cond343 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond343, label %.lr.ph87.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check161 = icmp ult i32 %2, 32
  br i1 %min.iters.check161, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hc = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %i.hd = getelementptr i8, ptr %.7.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.7.lcssa, i64 %index ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %wide.load = load <16 x i8>, ptr %i.he, align 1, !tbaa !34
  %wide.load162 = load <16 x i8>, ptr %i.hf, align 1, !tbaa !34
  %i.hg = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !34
  store <16 x i8> %wide.load162, ptr %i.hg, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !571

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit76, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph87.preheader, label %vec.epilog.ph, !prof !575

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec163 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.hi = getelementptr i8, ptr %.7.lcssa, i64 %n.vec163 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index164 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next167, %vec.epilog.vector.body ] ; 3 uses
  %next.gep165 = getelementptr i8, ptr %.7.lcssa, i64 %index164
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 %index164
  %wide.load166 = load <4 x i8>, ptr %i.hj, align 1, !tbaa !34
  store <4 x i8> %wide.load166, ptr %next.gep165, align 1, !tbaa !34
  %index.next167 = add nuw i64 %index164, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next167, %n.vec163
  br i1 %i.hk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !572

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n168 = icmp eq i64 %n.vec163, %wide.trip.count
  br i1 %cmp.n168, label %.loopexit76, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec163, %vec.epilog.middle.block ] ; 4 uses
  %.885.ph = phi ptr [ %.7.lcssa, %iter.check ], [ %i.hd, %vec.epilog.iter.check ], [ %i.hi, %vec.epilog.middle.block ] ; 2 uses
  %i.hl = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.hl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol

.lr.ph87.prol:                                    ; preds = %.lr.ph87.preheader, %.lr.ph87.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph87.prol ], [ %indvars.iv.ph, %.lr.ph87.preheader ] ; 2 uses
  %.885.prol = phi ptr [ %i.ho, %.lr.ph87.prol ], [ %.885.ph, %.lr.ph87.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph87.prol ], [ 0, %.lr.ph87.preheader ]
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !34
  %i.ho = getelementptr inbounds nuw i8, ptr %.885.prol, i64 1 ; 3 uses
  store i8 %i.hn, ptr %.885.prol, align 1, !tbaa !34
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol, !llvm.loop !573

.lr.ph87.prol.loopexit:                           ; preds = %.lr.ph87.prol, %.lr.ph87.preheader
  %.lcssa351.unr = phi ptr [ poison, %.lr.ph87.preheader ], [ %i.ho, %.lr.ph87.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph87.preheader ], [ %indvars.iv.next.prol, %.lr.ph87.prol ]
  %.885.unr = phi ptr [ %.885.ph, %.lr.ph87.preheader ], [ %i.ho, %.lr.ph87.prol ]
  %i.hp = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.hq = icmp ugt i64 %i.hp, -8
  br i1 %i.hq, label %.loopexit76, label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph87 ], [ %indvars.iv.unr, %.lr.ph87.prol.loopexit ] ; 9 uses
  %.885 = phi ptr [ %i.iv, %.lr.ph87 ], [ %.885.unr, %.lr.ph87.prol.loopexit ] ; 9 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !34
  %i.ht = getelementptr inbounds nuw i8, ptr %.885, i64 1
  store i8 %i.hs, ptr %.885, align 1, !tbaa !34
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !34
  %i.hx = getelementptr inbounds nuw i8, ptr %.885, i64 2
  store i8 %i.hw, ptr %i.ht, align 1, !tbaa !34
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !34
  %i.ib = getelementptr inbounds nuw i8, ptr %.885, i64 3
  store i8 %i.ia, ptr %i.hx, align 1, !tbaa !34
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 3
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !34
  %i.if = getelementptr inbounds nuw i8, ptr %.885, i64 4
  store i8 %i.ie, ptr %i.ib, align 1, !tbaa !34
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !34
  %i.ij = getelementptr inbounds nuw i8, ptr %.885, i64 5
  store i8 %i.ii, ptr %i.if, align 1, !tbaa !34
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 5
  %i.im = load i8, ptr %i.il, align 1, !tbaa !34
  %i.in = getelementptr inbounds nuw i8, ptr %.885, i64 6
  store i8 %i.im, ptr %i.ij, align 1, !tbaa !34
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 6
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !34
  %i.ir = getelementptr inbounds nuw i8, ptr %.885, i64 7
  store i8 %i.iq, ptr %i.in, align 1, !tbaa !34
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 7
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !34
  %i.iv = getelementptr inbounds nuw i8, ptr %.885, i64 8 ; 2 uses
  store i8 %i.iu, ptr %i.ir, align 1, !tbaa !34
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit76, label %.lr.ph87, !llvm.loop !574

.loopexit76:                                      ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87, %.lr.ph94, %middle.block, %vec.epilog.middle.block, %middle.block226, %vec.epilog.middle.block240, %.lr.ph102.preheader, %.preheader80, %.loopexit339, %.preheader, %tg3json__write_exp.exit
  %.071 = phi ptr [ %i.cs, %tg3json__write_exp.exit ], [ %scevgep135, %.lr.ph102.preheader ], [ %.670, %.lr.ph94 ], [ %.367.lcssa, %.preheader ], [ %.67091, %.loopexit339 ], [ %.7.lcssa, %.preheader80 ], [ %i.gm, %vec.epilog.middle.block240 ], [ %i.gf, %middle.block226 ], [ %i.hi, %vec.epilog.middle.block ], [ %i.hd, %middle.block ], [ %.lcssa351.unr, %.lr.ph87.prol.loopexit ], [ %i.iv, %.lr.ph87 ]
  ret ptr %.071
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @tg3__default_alloc(i64 noundef %0, ptr nofree readnone captures(none) %1) #20 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %0) #30
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @tg3__default_realloc(ptr noundef captures(none) %0, i64 %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #21 {
bb.a:
  %i.a = tail call ptr @realloc(ptr noundef %0, i64 noundef %2) #29
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @tg3__default_free(ptr noundef captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2) #13 {
bb.a:
  tail call void @free(ptr noundef %0) #28
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @tg3__fs_read_file(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4) #12 {
end_hunk_1
