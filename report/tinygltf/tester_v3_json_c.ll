Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_json_c?download=true
inline.NumInlined: 131
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@tg3json_array_size:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.c, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @tg3json_array_append_take(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %tg3json__reserve_bytes.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !28
  %i.b = icmp eq i32 %i.a, 5
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %tg3json__reserve_bytes.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26   ; 4 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %.not.i.not = icmp eq i64 %i.f, -1
  br i1 %.not.i.not, label %.tg3json__init_value.exit_crit_edge, label %bb.d

.tg3json__init_value.exit_crit_edge:              ; preds = %bb.c
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !26
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
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !54

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.1.i = phi i64 [ %spec.select.i, %bb.d ], [ %i.g, %.lr.ph.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.l = icmp ugt i64 %.1.i, 768614336404564650
  br i1 %i.l, label %tg3json__reserve_bytes.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.n = mul nuw i64 %.1.i, 24
  %i.o = tail call ptr @realloc(ptr noundef %i.m, i64 noundef %i.n) #21 ; 3 uses
  %.not26.i = icmp eq ptr %i.o, null
  br i1 %.not26.i, label %tg3json__reserve_bytes.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.o, ptr %i.d, align 8, !tbaa !55
  %.pre17 = load i64, ptr %i.e, align 8, !tbaa !26
  br label %tg3json__init_value.exit

tg3json__init_value.exit:                         ; preds = %.tg3json__init_value.exit_crit_edge, %bb.g
  %i.p = phi i64 [ -1, %.tg3json__init_value.exit_crit_edge ], [ %.pre17, %bb.g ] ; 2 uses
  %i.q = phi ptr [ %.pre, %.tg3json__init_value.exit_crit_edge ], [ %i.o, %bb.g ]
  %i.r = add i64 %i.p, 1
  store i64 %i.r, ptr %i.e, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !35
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = call fastcc i32 @tg3json__stringify_value_ex(ptr noundef %2, ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0)
  %.not12 = icmp eq i32 %i.a, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61 ; 3 uses
  br i1 %.not12, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.b = phi ptr [ null, %bb.a ], [ %.pre, %bb.b ]
  call void @free(ptr noundef %i.b) #20
  %.not13 = icmp eq ptr %1, null
  br i1 %.not13, label %bb.i, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %.not14 = icmp eq ptr %.pre, null
  br i1 %.not14, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.c = call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #22 ; 3 uses
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not16 = icmp eq ptr %1, null
  br i1 %.not16, label %bb.i, label %.sink.split

bb.f:                                             ; preds = %bb.d
  store i8 0, ptr %i.c, align 1, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.d = phi ptr [ %i.c, %bb.f ], [ %.pre, %bb.c ] ; 2 uses
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %._crit_edge, %bb.h
  %.sink = phi i64 [ %i.f, %bb.h ], [ 0, %._crit_edge ], [ 0, %bb.e ]
  %.0.ph = phi ptr [ %i.d, %bb.h ], [ null, %._crit_edge ], [ null, %bb.e ]
  store i64 %.sink, ptr %1, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g, %bb.e, %._crit_edge
  %.0 = phi ptr [ null, %bb.e ], [ null, %._crit_edge ], [ %i.d, %bb.g ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.g = load i32, ptr %1, align 8, !tbaa !28
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
  %i.j = load i32, ptr %i.i, align 8, !tbaa !26
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
  %i.n = load i64, ptr %i.m, align 8, !tbaa !26   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 45, ptr %i.f, align 16, !tbaa !26
  %i.q = sub i64 0, %i.n
  br label %.preheader28.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.r = icmp eq i64 %i.n, 0
  br i1 %i.r, label %bb.h, label %.preheader28.preheader.i

.preheader28.preheader.i:                         ; preds = %bb.g, %.thread.i
  %.02143.i = phi i64 [ %i.q, %.thread.i ], [ %i.n, %bb.g ]
  %.02342.i = phi ptr [ %i.p, %.thread.i ], [ %i.f, %bb.g ] ; 6 uses
  br label %.preheader28.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 48, ptr %i.f, align 16, !tbaa !26
  store i8 0, ptr %i.s, align 1, !tbaa !26
  br label %tg3json__itoa.exit

.preheader28.i:                                   ; preds = %.preheader28.i, %.preheader28.preheader.i
  %indvars.iv = phi ptr [ %scevgep, %.preheader28.i ], [ %.02342.i, %.preheader28.preheader.i ] ; 2 uses
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %.preheader28.i ], [ 1, %.preheader28.preheader.i ] ; 13 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader28.i ], [ 0, %.preheader28.preheader.i ] ; 2 uses
  %.12229.i = phi i64 [ %i.x, %.preheader28.i ], [ %.02143.i, %.preheader28.preheader.i ] ; 3 uses
  %i.t = urem i64 %.12229.i, 10
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = or disjoint i8 %i.u, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i
  store i8 %i.v, ptr %i.w, align 1, !tbaa !26
  %i.x = udiv i64 %.12229.i, 10
  %.not.i = icmp ult i64 %.12229.i, 10
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1
  %scevgep = getelementptr i8, ptr %indvars.iv, i64 1
  br i1 %.not.i, label %iter.check, label %.preheader28.i, !llvm.loop !65

iter.check:                                       ; preds = %.preheader28.i
  %min.iters.check = icmp samesign ult i64 %indvars.iv35.i, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check335 = icmp samesign ult i64 %indvars.iv35.i, 32
  br i1 %min.iters.check335, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %indvars.iv35.i, 24
  %n.vec = and i64 %indvars.iv35.i, 9223372036854775776 ; 4 uses
  %5 = and i64 %indvars.iv35.i, 31
  %i.z = getelementptr i8, ptr %.02342.i, i64 %n.vec ; 2 uses
  %i.aa = getelementptr i8, ptr %i.e, i64 %indvars.iv35.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.02342.i, i64 %index ; 2 uses
  %i.ab = xor i64 %index, -1
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab  ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -15
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ad, align 1, !tbaa !26
  %wide.load336 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !26
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse337 = shufflevector <16 x i8> %wide.load336, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %reverse, ptr %next.gep, align 1, !tbaa !26
  store <16 x i8> %reverse337, ptr %i.af, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv35.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !69

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec339 = and i64 %indvars.iv35.i, 9223372036854775800 ; 3 uses
  %6 = and i64 %indvars.iv35.i, 7
  %i.ah = getelementptr i8, ptr %.02342.i, i64 %n.vec339 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.e, i64 %indvars.iv35.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index340 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next344, %vec.epilog.vector.body ] ; 3 uses
  %next.gep341 = getelementptr i8, ptr %.02342.i, i64 %index340
  %i.aj = xor i64 %index340, -1
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -7
  %wide.load342 = load <8 x i8>, ptr %i.al, align 1, !tbaa !26
  %reverse343 = shufflevector <8 x i8> %wide.load342, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse343, ptr %next.gep341, align 1, !tbaa !26
  %index.next344 = add nuw i64 %index340, 8       ; 2 uses
  %i.am = icmp eq i64 %index.next344, %n.vec339
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n345 = icmp eq i64 %indvars.iv35.i, %n.vec339
  br i1 %cmp.n345, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv37.i.ph = phi i64 [ %indvars.iv35.i, %iter.check ], [ %5, %vec.epilog.iter.check ], [ %6, %vec.epilog.middle.block ]
  %.12431.i.ph = phi ptr [ %.02342.i, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %.preheader.i ], [ %indvars.iv37.i.ph, %.preheader.i.preheader ]
  %.12431.i = phi ptr [ %i.ap, %.preheader.i ], [ %.12431.i.ph, %.preheader.i.preheader ] ; 3 uses
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, -1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next38.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %.12431.i, i64 1 ; 2 uses
  store i8 %i.ao, ptr %.12431.i, align 1, !tbaa !26
  %exitcond.not = icmp eq ptr %.12431.i, %indvars.iv
  br i1 %exitcond.not, label %.loopexit, label %.preheader.i, !llvm.loop !71

.loopexit:                                        ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.ah, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %i.ap, %.preheader.i ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !26
  br label %tg3json__itoa.exit

tg3json__itoa.exit:                               ; preds = %bb.h, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.aq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #23
  %i.ar = call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull %i.f, i64 noundef %i.aq)
  br label %tg3json__indent.exit.thread

bb.i:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load double, ptr %i.as, align 8, !tbaa !26 ; 4 uses
  %i.au = bitcast double %i.at to i64             ; 5 uses
  %i.av = lshr i64 %i.au, 63
  %i.aw = trunc nuw nsw i64 %i.av to i32          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ax = fcmp ord double %i.at, 0.000000e+00
  br i1 %i.ax, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.f, ptr noundef nonnull align 1 dereferenceable(3) @.str.40, i64 3, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  br label %tg3json__dtoa_c.exit

bb.k:                                             ; preds = %bb.i
  %i.az = tail call double @llvm.fabs.f64(double %i.at)
  %i.ba = bitcast double %i.az to i64
  switch i64 %i.ba, label %bb.p [
    i64 9218868437227405312, label %bb.l
    i64 0, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %.not102.i = icmp sgt i64 %i.au, -1
  br i1 %.not102.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1718511917, ptr %i.f, align 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  br label %tg3json__dtoa_c.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.f, ptr noundef nonnull align 1 dereferenceable(3) @.str.42, i64 3, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  br label %tg3json__dtoa_c.exit

bb.o:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 48, ptr %i.f, align 16, !tbaa !26
  br label %tg3json__dtoa_c.exit

bb.p:                                             ; preds = %bb.k
  switch i64 %i.au, label %bb.s [
    i64 4607182418800017408, label %bb.q
    i64 -4616189618054758400, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 49, ptr %i.f, align 16, !tbaa !26
  br label %tg3json__dtoa_c.exit

bb.r:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 45, ptr %i.f, align 16, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 49, ptr %i.bf, align 1, !tbaa !26
  br label %tg3json__dtoa_c.exit

bb.s:                                             ; preds = %bb.p
  %i.bh = fpext double %i.at to x86_fp80          ; 2 uses
  %i.bi = fneg x86_fp80 %i.bh
  %.not99105.i = icmp slt i64 %i.au, 0
  %i.bj = select i1 %.not99105.i, x86_fp80 %i.bi, x86_fp80 %i.bh ; 3 uses
  %i.bk = fcmp ult x86_fp80 %i.bj, 1.000000e+16
  br i1 %i.bk, label %.preheader109.i, label %.lr.ph.i

.preheader109.i:                                  ; preds = %.lr.ph.i, %bb.s
  %.093.lcssa.i = phi x86_fp80 [ %i.bj, %bb.s ], [ %i.bm, %.lr.ph.i ] ; 3 uses
  %.089.lcssa.i = phi i32 [ 0, %bb.s ], [ %i.bn, %.lr.ph.i ] ; 2 uses
  %i.bl = fcmp ult x86_fp80 %.093.lcssa.i, 1.000000e+01
  br i1 %i.bl, label %.preheader108.i, label %.lr.ph117.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.i
  %.089113.i = phi i32 [ %i.bn, %.lr.ph.i ], [ 0, %bb.s ]
  %.093112.i = phi x86_fp80 [ %i.bm, %.lr.ph.i ], [ %i.bj, %bb.s ]
  %i.bm = fmul nnan x86_fp80 %.093112.i, f0x3FC9E69594BEC44DE15B ; 3 uses
  %i.bn = add nuw nsw i32 %.089113.i, 16          ; 2 uses
  %i.bo = fcmp ult x86_fp80 %i.bm, 1.000000e+16
  br i1 %i.bo, label %.preheader109.i, label %.lr.ph.i, !llvm.loop !72

.preheader108.i:                                  ; preds = %.lr.ph117.i, %.preheader109.i
  %.194.lcssa.i = phi x86_fp80 [ %.093.lcssa.i, %.preheader109.i ], [ %i.bq, %.lr.ph117.i ] ; 3 uses
  %.190.lcssa.i = phi i32 [ %.089.lcssa.i, %.preheader109.i ], [ %i.br, %.lr.ph117.i ] ; 2 uses
  %i.bp = fcmp olt x86_fp80 %.194.lcssa.i, 1.000000e+00
  br i1 %i.bp, label %.lr.ph122.i, label %.preheader107.i

.lr.ph117.i:                                      ; preds = %.preheader109.i, %.lr.ph117.i
  %.190116.i = phi i32 [ %i.br, %.lr.ph117.i ], [ %.089.lcssa.i, %.preheader109.i ]
  %.194115.i = phi x86_fp80 [ %i.bq, %.lr.ph117.i ], [ %.093.lcssa.i, %.preheader109.i ]
  %i.bq = fmul nnan x86_fp80 %.194115.i, 1.000000e-01 ; 3 uses
  %i.br = add nuw nsw i32 %.190116.i, 1           ; 2 uses
  %i.bs = fcmp ult x86_fp80 %i.bq, 1.000000e+01
  br i1 %i.bs, label %.preheader108.i, label %.lr.ph117.i, !llvm.loop !73

.preheader107.i:                                  ; preds = %.lr.ph122.i, %.preheader108.i
  %.295.lcssa.i = phi x86_fp80 [ %.194.lcssa.i, %.preheader108.i ], [ %i.gm, %.lr.ph122.i ] ; 2 uses
  %.291.lcssa.i = phi i32 [ %.190.lcssa.i, %.preheader108.i ], [ %i.gn, %.lr.ph122.i ] ; 17 uses
  %i.bt = fptosi x86_fp80 %.295.lcssa.i to i32
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %spec.store.select1.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.i, i32 9) ; 2 uses
  %i.bu = trunc nuw nsw i32 %spec.store.select1.i to i8
  %i.bv = or disjoint i8 %i.bu, 48
  store i8 %i.bv, ptr %i.a, align 16, !tbaa !26
  %i.bw = uitofp nneg i32 %spec.store.select1.i to x86_fp80
  %i.bx = fsub x86_fp80 %.295.lcssa.i, %i.bw
  %i.by = fmul x86_fp80 %i.bx, 1.000000e+01       ; 2 uses
  %i.bz = fptosi x86_fp80 %i.by to i32
  %spec.store.select.1.i = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 0)
  %spec.store.select1.1.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.1.i, i32 9) ; 2 uses
  %i.ca = trunc nuw nsw i32 %spec.store.select1.1.i to i8
  %i.cb = or disjoint i8 %i.ca, 48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !26
  %i.cd = uitofp nneg i32 %spec.store.select1.1.i to x86_fp80
  %i.ce = fsub x86_fp80 %i.by, %i.cd
  %i.cf = fmul x86_fp80 %i.ce, 1.000000e+01       ; 2 uses
  %i.cg = fptosi x86_fp80 %i.cf to i32
  %spec.store.select.2.i = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 0)
  %spec.store.select1.2.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.2.i, i32 9) ; 2 uses
  %i.ch = trunc nuw nsw i32 %spec.store.select1.2.i to i8
  %i.ci = or disjoint i8 %i.ch, 48
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.ci, ptr %i.cj, align 2, !tbaa !26
  %i.ck = uitofp nneg i32 %spec.store.select1.2.i to x86_fp80
  %i.cl = fsub x86_fp80 %i.cf, %i.ck
  %i.cm = fmul x86_fp80 %i.cl, 1.000000e+01       ; 2 uses
  %i.cn = fptosi x86_fp80 %i.cm to i32
  %spec.store.select.3.i = tail call i32 @llvm.smax.i32(i32 %i.cn, i32 0)
  %spec.store.select1.3.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.3.i, i32 9) ; 2 uses
  %i.co = trunc nuw nsw i32 %spec.store.select1.3.i to i8
  %i.cp = or disjoint i8 %i.co, 48
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !26
  %i.cr = uitofp nneg i32 %spec.store.select1.3.i to x86_fp80
  %i.cs = fsub x86_fp80 %i.cm, %i.cr
  %i.ct = fmul x86_fp80 %i.cs, 1.000000e+01       ; 2 uses
  %i.cu = fptosi x86_fp80 %i.ct to i32
  %spec.store.select.4.i = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 0)
  %spec.store.select1.4.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.4.i, i32 9) ; 2 uses
  %i.cv = trunc nuw nsw i32 %spec.store.select1.4.i to i8
  %i.cw = or disjoint i8 %i.cv, 48
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.cw, ptr %i.cx, align 4, !tbaa !26
  %i.cy = uitofp nneg i32 %spec.store.select1.4.i to x86_fp80
  %i.cz = fsub x86_fp80 %i.ct, %i.cy
  %i.da = fmul x86_fp80 %i.cz, 1.000000e+01       ; 2 uses
  %i.db = fptosi x86_fp80 %i.da to i32
  %spec.store.select.5.i = tail call i32 @llvm.smax.i32(i32 %i.db, i32 0)
  %spec.store.select1.5.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.5.i, i32 9) ; 2 uses
  %i.dc = trunc nuw nsw i32 %spec.store.select1.5.i to i8
  %i.dd = or disjoint i8 %i.dc, 48
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !26
  %i.df = uitofp nneg i32 %spec.store.select1.5.i to x86_fp80
  %i.dg = fsub x86_fp80 %i.da, %i.df
  %i.dh = fmul x86_fp80 %i.dg, 1.000000e+01       ; 2 uses
  %i.di = fptosi x86_fp80 %i.dh to i32
  %spec.store.select.6.i = tail call i32 @llvm.smax.i32(i32 %i.di, i32 0)
  %spec.store.select1.6.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.6.i, i32 9) ; 2 uses
  %i.dj = trunc nuw nsw i32 %spec.store.select1.6.i to i8
  %i.dk = or disjoint i8 %i.dj, 48
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %i.dk, ptr %i.dl, align 2, !tbaa !26
  %i.dm = uitofp nneg i32 %spec.store.select1.6.i to x86_fp80
  %i.dn = fsub x86_fp80 %i.dh, %i.dm
  %i.do = fmul x86_fp80 %i.dn, 1.000000e+01       ; 2 uses
  %i.dp = fptosi x86_fp80 %i.do to i32
  %spec.store.select.7.i = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 0)
  %spec.store.select1.7.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.7.i, i32 9) ; 2 uses
  %i.dq = trunc nuw nsw i32 %spec.store.select1.7.i to i8
  %i.dr = or disjoint i8 %i.dq, 48
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 2 uses
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !26
  %i.dt = uitofp nneg i32 %spec.store.select1.7.i to x86_fp80
  %i.du = fsub x86_fp80 %i.do, %i.dt
  %i.dv = fmul x86_fp80 %i.du, 1.000000e+01       ; 2 uses
  %i.dw = fptosi x86_fp80 %i.dv to i32
  %spec.store.select.8.i = tail call i32 @llvm.smax.i32(i32 %i.dw, i32 0)
  %spec.store.select1.8.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.8.i, i32 9) ; 2 uses
  %i.dx = trunc nuw nsw i32 %spec.store.select1.8.i to i8
  %i.dy = or disjoint i8 %i.dx, 48
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 %i.dy, ptr %i.dz, align 8, !tbaa !26
  %i.ea = uitofp nneg i32 %spec.store.select1.8.i to x86_fp80
  %i.eb = fsub x86_fp80 %i.dv, %i.ea
end_hunk_0
begin_hunk_1_@tg3json__format_decimal_digits:bb.a
.lr.ph.i.i.preheader:                             ; preds = %iter.check320, %vec.epilog.iter.check322, %vec.epilog.middle.block331
  %.024.i.i.ph = phi i64 [ 0, %iter.check320 ], [ %n.vec310, %vec.epilog.iter.check322 ], [ %n.vec325, %vec.epilog.middle.block331 ]
  %.123.i.i.ph = phi i64 [ %i.cj, %iter.check320 ], [ %i.bs, %vec.epilog.iter.check322 ], [ %i.ca, %vec.epilog.middle.block331 ]
  br label %.lr.ph.i.i

.preheader19.i.i:                                 ; preds = %.preheader19.i.i, %.preheader19.i.preheader.i
  %.01421.i.i = phi i64 [ %i.cj, %.preheader19.i.i ], [ 0, %.preheader19.i.preheader.i ] ; 4 uses
  %.01620.i.i = phi i64 [ %i.cl, %.preheader19.i.i ], [ %i.bq, %.preheader19.i.preheader.i ] ; 3 uses
  %i.cg = urem i64 %.01620.i.i, 10
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  %i.ci = or disjoint i8 %i.ch, 48
  %i.cj = add i64 %.01421.i.i, 1                  ; 12 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01421.i.i
  store i8 %i.ci, ptr %i.ck, align 1, !tbaa !26
  %i.cl = udiv i64 %.01620.i.i, 10
  %.not.i.i = icmp samesign ult i64 %.01620.i.i, 10
  br i1 %.not.i.i, label %.preheader.i.i, label %.preheader19.i.i, !llvm.loop !102

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.024.i.i = phi i64 [ %i.cp, %.lr.ph.i.i ], [ %.024.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.123.i.i = phi i64 [ %i.cm, %.lr.ph.i.i ], [ %.123.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.cm = add i64 %.123.i.i, -1                   ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !26
  %i.cp = add nuw i64 %.024.i.i, 1                ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.024.i.i
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !26
  %.not18.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not18.i.i, label %tg3json__write_exp.exit, label %.lr.ph.i.i, !llvm.loop !103

tg3json__write_exp.exit:                          ; preds = %.lr.ph.i.i, %middle.block317, %vec.epilog.middle.block331, %bb.f, %.preheader.i.i
  %.0816.i = phi ptr [ %i.bl, %bb.f ], [ %.0817.i, %.preheader.i.i ], [ %.0817.i, %middle.block317 ], [ %.0817.i, %vec.epilog.middle.block331 ], [ %.0817.i, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.sink.i.i = phi i64 [ 1, %bb.f ], [ 0, %.preheader.i.i ], [ %n.vec310, %middle.block317 ], [ %n.vec325, %vec.epilog.middle.block331 ], [ %i.cp, %.lr.ph.i.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.sink.i.i
  store i8 0, ptr %i.cr, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0816.i, ptr nonnull align 16 %i.c, i64 %.0.lcssa.sink.i.i, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.0816.i, i64 %.0.lcssa.sink.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %.loopexit76

bb.g:                                             ; preds = %bb.c
  %i.ct = icmp sgt i32 %3, -1
  br i1 %i.ct, label %.preheader77, label %bb.h

.preheader77:                                     ; preds = %bb.g
  %i.cu = icmp sgt i32 %2, 0
  br i1 %i.cu, label %iter.check259, label %.preheader

iter.check259:                                    ; preds = %.preheader77
  %wide.trip.count133 = zext nneg i32 %2 to i64   ; 8 uses
  %min.iters.check245 = icmp ult i32 %2, 4
  %i.cv = sub i64 %i.a, %.064174
  %diff.check244 = icmp ugt i64 %i.cv, -32
  %or.cond337 = select i1 %min.iters.check245, i1 true, i1 %diff.check244
  br i1 %or.cond337, label %.lr.ph98.preheader, label %vector.main.loop.iter.check246

vector.main.loop.iter.check246:                   ; preds = %iter.check259
  %min.iters.check247 = icmp ult i32 %2, 32
  br i1 %min.iters.check247, label %vec.epilog.ph263, label %vector.ph248

vector.ph248:                                     ; preds = %vector.main.loop.iter.check246
  %i.cw = and i64 %wide.trip.count133, 28
  %n.vec249 = and i64 %wide.trip.count133, 2147483616 ; 5 uses
  %i.cx = getelementptr i8, ptr %.064, i64 %n.vec249 ; 2 uses
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph248
  %index251 = phi i64 [ 0, %vector.ph248 ], [ %index.next255, %vector.body250 ] ; 3 uses
  %next.gep252 = getelementptr i8, ptr %.064, i64 %index251 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %index251 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load253 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !26
  %wide.load254 = load <16 x i8>, ptr %i.cz, align 1, !tbaa !26
  %i.da = getelementptr i8, ptr %next.gep252, i64 16
  store <16 x i8> %wide.load253, ptr %next.gep252, align 1, !tbaa !26
  store <16 x i8> %wide.load254, ptr %i.da, align 1, !tbaa !26
  %index.next255 = add nuw i64 %index251, 32      ; 2 uses
  %i.db = icmp eq i64 %index.next255, %n.vec249
  br i1 %i.db, label %middle.block256, label %vector.body250, !llvm.loop !104

middle.block256:                                  ; preds = %vector.body250
  %cmp.n257 = icmp eq i64 %n.vec249, %wide.trip.count133
  br i1 %cmp.n257, label %.preheader, label %vec.epilog.iter.check261

vec.epilog.iter.check261:                         ; preds = %middle.block256
  %min.epilog.iters.check262 = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check262, label %.lr.ph98.preheader, label %vec.epilog.ph263, !prof !105

vec.epilog.ph263:                                 ; preds = %vector.main.loop.iter.check246, %vec.epilog.iter.check261
  %vec.epilog.resume.val258 = phi i64 [ %n.vec249, %vec.epilog.iter.check261 ], [ 0, %vector.main.loop.iter.check246 ]
  %n.vec264 = and i64 %wide.trip.count133, 2147483644 ; 4 uses
  %i.dc = getelementptr i8, ptr %.064, i64 %n.vec264 ; 2 uses
  br label %vec.epilog.vector.body265

vec.epilog.vector.body265:                        ; preds = %vec.epilog.vector.body265, %vec.epilog.ph263
  %index266 = phi i64 [ %vec.epilog.resume.val258, %vec.epilog.ph263 ], [ %index.next269, %vec.epilog.vector.body265 ] ; 3 uses
  %next.gep267 = getelementptr i8, ptr %.064, i64 %index266
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %index266
  %wide.load268 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !26
  store <4 x i8> %wide.load268, ptr %next.gep267, align 1, !tbaa !26
  %index.next269 = add nuw i64 %index266, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next269, %n.vec264
  br i1 %i.de, label %vec.epilog.middle.block270, label %vec.epilog.vector.body265, !llvm.loop !106

vec.epilog.middle.block270:                       ; preds = %vec.epilog.vector.body265
  %cmp.n271 = icmp eq i64 %n.vec264, %wide.trip.count133
  br i1 %cmp.n271, label %.preheader, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %iter.check259, %vec.epilog.iter.check261, %vec.epilog.middle.block270
  %indvars.iv130.ph = phi i64 [ 0, %iter.check259 ], [ %n.vec249, %vec.epilog.iter.check261 ], [ %n.vec264, %vec.epilog.middle.block270 ] ; 4 uses
  %.36796.ph = phi ptr [ %.064, %iter.check259 ], [ %i.cx, %vec.epilog.iter.check261 ], [ %i.dc, %vec.epilog.middle.block270 ] ; 2 uses
  %i.df = sub nsw i64 %wide.trip.count133, %indvars.iv130.ph
  %xtraiter351 = and i64 %i.df, 7                 ; 2 uses
  %lcmp.mod352.not = icmp eq i64 %xtraiter351, 0
  br i1 %lcmp.mod352.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol

.lr.ph98.prol:                                    ; preds = %.lr.ph98.preheader, %.lr.ph98.prol
  %indvars.iv130.prol = phi i64 [ %indvars.iv.next131.prol, %.lr.ph98.prol ], [ %indvars.iv130.ph, %.lr.ph98.preheader ] ; 2 uses
  %.36796.prol = phi ptr [ %i.di, %.lr.ph98.prol ], [ %.36796.ph, %.lr.ph98.preheader ] ; 2 uses
  %prol.iter353 = phi i64 [ %prol.iter353.next, %.lr.ph98.prol ], [ 0, %.lr.ph98.preheader ]
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130.prol
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !26
  %i.di = getelementptr inbounds nuw i8, ptr %.36796.prol, i64 1 ; 3 uses
  store i8 %i.dh, ptr %.36796.prol, align 1, !tbaa !26
  %indvars.iv.next131.prol = add nuw nsw i64 %indvars.iv130.prol, 1 ; 2 uses
  %prol.iter353.next = add i64 %prol.iter353, 1   ; 2 uses
  %prol.iter353.cmp.not = icmp eq i64 %prol.iter353.next, %xtraiter351
  br i1 %prol.iter353.cmp.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol, !llvm.loop !107

.lr.ph98.prol.loopexit:                           ; preds = %.lr.ph98.prol, %.lr.ph98.preheader
  %.lcssa342.unr = phi ptr [ poison, %.lr.ph98.preheader ], [ %i.di, %.lr.ph98.prol ]
  %indvars.iv130.unr = phi i64 [ %indvars.iv130.ph, %.lr.ph98.preheader ], [ %indvars.iv.next131.prol, %.lr.ph98.prol ]
  %.36796.unr = phi ptr [ %.36796.ph, %.lr.ph98.preheader ], [ %i.di, %.lr.ph98.prol ]
  %i.dj = sub nsw i64 %indvars.iv130.ph, %wide.trip.count133
  %i.dk = icmp ugt i64 %i.dj, -8
  br i1 %i.dk, label %.preheader, label %.lr.ph98

.preheader:                                       ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98, %middle.block256, %vec.epilog.middle.block270, %.preheader77
  %.367.lcssa = phi ptr [ %.064, %.preheader77 ], [ %i.dc, %vec.epilog.middle.block270 ], [ %i.cx, %middle.block256 ], [ %.lcssa342.unr, %.lr.ph98.prol.loopexit ], [ %i.eq, %.lr.ph98 ] ; 3 uses
  %.not106 = icmp eq i32 %3, 0
  br i1 %.not106, label %.loopexit76, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %.preheader
  %i.dl = zext nneg i32 %3 to i64                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.367.lcssa, i8 48, i64 %i.dl, i1 false), !tbaa !26
  %scevgep137 = getelementptr i8, ptr %.367.lcssa, i64 %i.dl
  br label %.loopexit76

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %indvars.iv130 = phi i64 [ %indvars.iv.next131.7, %.lr.ph98 ], [ %indvars.iv130.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %.36796 = phi ptr [ %i.eq, %.lr.ph98 ], [ %.36796.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !26
  %i.do = getelementptr inbounds nuw i8, ptr %.36796, i64 1
  store i8 %i.dn, ptr %.36796, align 1, !tbaa !26
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !26
  %i.ds = getelementptr inbounds nuw i8, ptr %.36796, i64 2
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !26
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !26
  %i.dw = getelementptr inbounds nuw i8, ptr %.36796, i64 3
  store i8 %i.dv, ptr %i.ds, align 1, !tbaa !26
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !26
  %i.ea = getelementptr inbounds nuw i8, ptr %.36796, i64 4
  store i8 %i.dz, ptr %i.dw, align 1, !tbaa !26
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !26
  %i.ee = getelementptr inbounds nuw i8, ptr %.36796, i64 5
  store i8 %i.ed, ptr %i.ea, align 1, !tbaa !26
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 5
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !26
  %i.ei = getelementptr inbounds nuw i8, ptr %.36796, i64 6
  store i8 %i.eh, ptr %i.ee, align 1, !tbaa !26
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 6
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !26
  %i.em = getelementptr inbounds nuw i8, ptr %.36796, i64 7
  store i8 %i.el, ptr %i.ei, align 1, !tbaa !26
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 7
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !26
  %i.eq = getelementptr inbounds nuw i8, ptr %.36796, i64 8 ; 2 uses
  store i8 %i.ep, ptr %i.em, align 1, !tbaa !26
  %indvars.iv.next131.7 = add nuw nsw i64 %indvars.iv130, 8 ; 2 uses
  %exitcond134.not.7 = icmp eq i64 %indvars.iv.next131.7, %wide.trip.count133
  br i1 %exitcond134.not.7, label %.preheader, label %.lr.ph98, !llvm.loop !108

bb.h:                                             ; preds = %bb.g
  %i.er = icmp sgt i32 %i.d, 0
  br i1 %i.er, label %iter.check192, label %bb.i

iter.check192:                                    ; preds = %bb.h
  %wide.trip.count122 = zext nneg i32 %i.d to i64 ; 10 uses
  %min.iters.check176 = icmp ult i32 %i.d, 4
  %i.es = sub i64 %i.a, %.064174
  %diff.check175 = icmp ugt i64 %i.es, -32
  %or.cond338 = select i1 %min.iters.check176, i1 true, i1 %diff.check175
  br i1 %or.cond338, label %.preheader79.preheader, label %vector.main.loop.iter.check177

vector.main.loop.iter.check177:                   ; preds = %iter.check192
  %min.iters.check178 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check178, label %vec.epilog.ph196, label %vector.ph179

vector.ph179:                                     ; preds = %vector.main.loop.iter.check177
  %i.et = and i64 %wide.trip.count122, 28
  %n.vec180 = and i64 %wide.trip.count122, 2147483616 ; 7 uses
  %i.eu = or disjoint i64 %n.vec180, 1
  %i.ev = getelementptr i8, ptr %.064, i64 %n.vec180 ; 3 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next186, %vector.body181 ] ; 3 uses
  %next.gep183 = getelementptr i8, ptr %.064, i64 %index182 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %index182 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load184 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !26
  %wide.load185 = load <16 x i8>, ptr %i.ex, align 1, !tbaa !26
  %i.ey = getelementptr i8, ptr %next.gep183, i64 16
  store <16 x i8> %wide.load184, ptr %next.gep183, align 1, !tbaa !26
  store <16 x i8> %wide.load185, ptr %i.ey, align 1, !tbaa !26
  %index.next186 = add nuw i64 %index182, 32      ; 2 uses
  %i.ez = icmp eq i64 %index.next186, %n.vec180
  br i1 %i.ez, label %middle.block187, label %vector.body181, !llvm.loop !109

middle.block187:                                  ; preds = %vector.body181
  %ind.escape188 = getelementptr i8, ptr %i.ev, i64 -1
  %cmp.n189 = icmp eq i64 %n.vec180, %wide.trip.count122
  br i1 %cmp.n189, label %.loopexit335, label %vec.epilog.iter.check194

vec.epilog.iter.check194:                         ; preds = %middle.block187
  %min.epilog.iters.check195 = icmp eq i64 %i.et, 0
  br i1 %min.epilog.iters.check195, label %.preheader79.preheader, label %vec.epilog.ph196, !prof !105

vec.epilog.ph196:                                 ; preds = %vector.main.loop.iter.check177, %vec.epilog.iter.check194
  %vec.epilog.resume.val190 = phi i64 [ %n.vec180, %vec.epilog.iter.check194 ], [ 0, %vector.main.loop.iter.check177 ]
  %n.vec197 = and i64 %wide.trip.count122, 2147483644 ; 6 uses
  %i.fa = or disjoint i64 %n.vec197, 1
  %i.fb = getelementptr i8, ptr %.064, i64 %n.vec197 ; 3 uses
  br label %vec.epilog.vector.body198

vec.epilog.vector.body198:                        ; preds = %vec.epilog.vector.body198, %vec.epilog.ph196
  %index199 = phi i64 [ %vec.epilog.resume.val190, %vec.epilog.ph196 ], [ %index.next202, %vec.epilog.vector.body198 ] ; 3 uses
  %next.gep200 = getelementptr i8, ptr %.064, i64 %index199
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 %index199
  %wide.load201 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !26
  store <4 x i8> %wide.load201, ptr %next.gep200, align 1, !tbaa !26
  %index.next202 = add nuw i64 %index199, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next202, %n.vec197
  br i1 %i.fd, label %vec.epilog.middle.block203, label %vec.epilog.vector.body198, !llvm.loop !110

vec.epilog.middle.block203:                       ; preds = %vec.epilog.vector.body198
  %ind.escape205 = getelementptr i8, ptr %i.fb, i64 -1
  %cmp.n206 = icmp eq i64 %n.vec197, %wide.trip.count122
  br i1 %cmp.n206, label %.loopexit335, label %.preheader79.preheader

.preheader79.preheader:                           ; preds = %iter.check192, %vec.epilog.iter.check194, %vec.epilog.middle.block203
  %indvars.iv125.ph = phi i64 [ 1, %iter.check192 ], [ %i.eu, %vec.epilog.iter.check194 ], [ %i.fa, %vec.epilog.middle.block203 ] ; 2 uses
  %indvars.iv119.ph = phi i64 [ 0, %iter.check192 ], [ %n.vec180, %vec.epilog.iter.check194 ], [ %n.vec197, %vec.epilog.middle.block203 ] ; 3 uses
  %.56989.ph = phi ptr [ %.064, %iter.check192 ], [ %i.ev, %vec.epilog.iter.check194 ], [ %i.fb, %vec.epilog.middle.block203 ] ; 2 uses
  %xtraiter348 = and i64 %wide.trip.count122, 3   ; 2 uses
  %lcmp.mod349.not = icmp eq i64 %xtraiter348, 0
  br i1 %lcmp.mod349.not, label %.preheader79.prol.loopexit, label %.preheader79.prol

.preheader79.prol:                                ; preds = %.preheader79.preheader, %.preheader79.prol
  %indvars.iv125.prol = phi i64 [ %indvars.iv.next126.prol, %.preheader79.prol ], [ %indvars.iv125.ph, %.preheader79.preheader ] ; 2 uses
  %indvars.iv119.prol = phi i64 [ %indvars.iv.next120.prol, %.preheader79.prol ], [ %indvars.iv119.ph, %.preheader79.preheader ] ; 2 uses
  %.56989.prol = phi ptr [ %i.fg, %.preheader79.prol ], [ %.56989.ph, %.preheader79.preheader ] ; 3 uses
  %prol.iter350 = phi i64 [ %prol.iter350.next, %.preheader79.prol ], [ 0, %.preheader79.preheader ]
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119.prol
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !26
  %i.fg = getelementptr inbounds nuw i8, ptr %.56989.prol, i64 1 ; 3 uses
  store i8 %i.ff, ptr %.56989.prol, align 1, !tbaa !26
  %indvars.iv.next120.prol = add nuw nsw i64 %indvars.iv119.prol, 1 ; 2 uses
  %indvars.iv.next126.prol = add nuw nsw i64 %indvars.iv125.prol, 1 ; 2 uses
  %prol.iter350.next = add i64 %prol.iter350, 1   ; 2 uses
  %prol.iter350.cmp.not = icmp eq i64 %prol.iter350.next, %xtraiter348
  br i1 %prol.iter350.cmp.not, label %.preheader79.prol.loopexit, label %.preheader79.prol, !llvm.loop !111

.preheader79.prol.loopexit:                       ; preds = %.preheader79.prol, %.preheader79.preheader
  %indvars.iv125.lcssa345.unr = phi i64 [ poison, %.preheader79.preheader ], [ %indvars.iv125.prol, %.preheader79.prol ]
  %.56989.lcssa344.unr = phi ptr [ poison, %.preheader79.preheader ], [ %.56989.prol, %.preheader79.prol ]
  %.lcssa343.unr = phi ptr [ poison, %.preheader79.preheader ], [ %i.fg, %.preheader79.prol ]
  %indvars.iv125.unr = phi i64 [ %indvars.iv125.ph, %.preheader79.preheader ], [ %indvars.iv.next126.prol, %.preheader79.prol ]
  %indvars.iv119.unr = phi i64 [ %indvars.iv119.ph, %.preheader79.preheader ], [ %indvars.iv.next120.prol, %.preheader79.prol ]
  %.56989.unr = phi ptr [ %.56989.ph, %.preheader79.preheader ], [ %i.fg, %.preheader79.prol ]
  %i.fh = sub nsw i64 %indvars.iv119.ph, %wide.trip.count122
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %.loopexit335, label %.preheader79

.preheader79:                                     ; preds = %.preheader79.prol.loopexit, %.preheader79
  %indvars.iv125 = phi i64 [ %indvars.iv.next126.3, %.preheader79 ], [ %indvars.iv125.unr, %.preheader79.prol.loopexit ] ; 2 uses
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.3, %.preheader79 ], [ %indvars.iv119.unr, %.preheader79.prol.loopexit ] ; 5 uses
  %.56989 = phi ptr [ %i.fx, %.preheader79 ], [ %.56989.unr, %.preheader79.prol.loopexit ] ; 6 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !26
  %i.fl = getelementptr inbounds nuw i8, ptr %.56989, i64 1
  store i8 %i.fk, ptr %.56989, align 1, !tbaa !26
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !26
  %i.fp = getelementptr inbounds nuw i8, ptr %.56989, i64 2
  store i8 %i.fo, ptr %i.fl, align 1, !tbaa !26
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !26
  %i.ft = getelementptr inbounds nuw i8, ptr %.56989, i64 3
  store i8 %i.fs, ptr %i.fp, align 1, !tbaa !26
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 3
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !26
  %i.fx = getelementptr inbounds nuw i8, ptr %.56989, i64 4 ; 2 uses
  store i8 %i.fw, ptr %i.ft, align 1, !tbaa !26
  %indvars.iv.next120.3 = add nuw nsw i64 %indvars.iv119, 4 ; 2 uses
  %exitcond123.not.3 = icmp eq i64 %indvars.iv.next120.3, %wide.trip.count122
  %indvars.iv.next126.3 = add nuw nsw i64 %indvars.iv125, 4
  br i1 %exitcond123.not.3, label %.loopexit335.loopexit.unr-lcssa, label %.preheader79, !llvm.loop !112

.loopexit335.loopexit.unr-lcssa:                  ; preds = %.preheader79
  %i.fy = getelementptr inbounds nuw i8, ptr %.56989, i64 3
  %indvars.iv.next126.2 = add nuw nsw i64 %indvars.iv125, 3
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit335.loopexit.unr-lcssa, %.preheader79.prol.loopexit, %vec.epilog.middle.block203, %middle.block187
  %indvars.iv125.lcssa = phi i64 [ %n.vec197, %vec.epilog.middle.block203 ], [ %n.vec180, %middle.block187 ], [ %indvars.iv125.lcssa345.unr, %.preheader79.prol.loopexit ], [ %indvars.iv.next126.2, %.loopexit335.loopexit.unr-lcssa ] ; 7 uses
  %.56989.lcssa = phi ptr [ %ind.escape205, %vec.epilog.middle.block203 ], [ %ind.escape188, %middle.block187 ], [ %.56989.lcssa344.unr, %.preheader79.prol.loopexit ], [ %i.fy, %.loopexit335.loopexit.unr-lcssa ] ; 2 uses
  %.lcssa160 = phi ptr [ %i.fb, %vec.epilog.middle.block203 ], [ %i.ev, %middle.block187 ], [ %.lcssa343.unr, %.preheader79.prol.loopexit ], [ %i.fx, %.loopexit335.loopexit.unr-lcssa ]
  %.56989.lcssa211 = ptrtoaddr ptr %.56989.lcssa to i64
  store i8 46, ptr %.lcssa160, align 1, !tbaa !26
  %.67091 = getelementptr inbounds nuw i8, ptr %.56989.lcssa, i64 2 ; 7 uses
  %i.fz = icmp slt i32 %i.d, %2
  br i1 %i.fz, label %iter.check228, label %.loopexit76

iter.check228:                                    ; preds = %.loopexit335
  %sext = zext nneg i32 %2 to i64                 ; 2 uses
  %5 = add nuw nsw i64 %wide.trip.count122, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %5, i64 %sext)
  %6 = sub nsw i64 %umax, %wide.trip.count122     ; 7 uses
  %min.iters.check213 = icmp ult i64 %6, 8
  br i1 %min.iters.check213, label %.lr.ph94.preheader, label %vector.memcheck210

vector.memcheck210:                               ; preds = %iter.check228
  %i.ga = add i64 %indvars.iv125.lcssa, %i.a
  %i.gb = sub i64 %.56989.lcssa211, %i.ga
  %i.gc = add i64 %i.gb, 1
  %diff.check212 = icmp ult i64 %i.gc, 31
  br i1 %diff.check212, label %.lr.ph94.preheader, label %vector.main.loop.iter.check214

vector.main.loop.iter.check214:                   ; preds = %vector.memcheck210
  %min.iters.check215 = icmp ult i64 %6, 32
  br i1 %min.iters.check215, label %vec.epilog.ph232, label %vector.ph216

vector.ph216:                                     ; preds = %vector.main.loop.iter.check214
  %i.gd = and i64 %6, 24
  %n.vec217 = and i64 %6, -32                     ; 5 uses
  %i.ge = add i64 %indvars.iv125.lcssa, %n.vec217
  %i.gf = getelementptr i8, ptr %.67091, i64 %n.vec217 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv125.lcssa
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph216
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next223, %vector.body218 ] ; 3 uses
  %next.gep220 = getelementptr i8, ptr %.67091, i64 %index219 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %index219 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %wide.load221 = load <16 x i8>, ptr %i.gh, align 1, !tbaa !26
  %wide.load222 = load <16 x i8>, ptr %i.gi, align 1, !tbaa !26
  %i.gj = getelementptr i8, ptr %next.gep220, i64 16
  store <16 x i8> %wide.load221, ptr %next.gep220, align 1, !tbaa !26
  store <16 x i8> %wide.load222, ptr %i.gj, align 1, !tbaa !26
  %index.next223 = add nuw i64 %index219, 32      ; 2 uses
  %i.gk = icmp eq i64 %index.next223, %n.vec217
  br i1 %i.gk, label %middle.block224, label %vector.body218, !llvm.loop !113

middle.block224:                                  ; preds = %vector.body218
  %cmp.n225 = icmp eq i64 %6, %n.vec217
  br i1 %cmp.n225, label %.loopexit76, label %vec.epilog.iter.check230

vec.epilog.iter.check230:                         ; preds = %middle.block224
  %min.epilog.iters.check231 = icmp eq i64 %i.gd, 0
  br i1 %min.epilog.iters.check231, label %.lr.ph94.preheader, label %vec.epilog.ph232, !prof !69

vec.epilog.ph232:                                 ; preds = %vector.main.loop.iter.check214, %vec.epilog.iter.check230
  %vec.epilog.resume.val226 = phi i64 [ %n.vec217, %vec.epilog.iter.check230 ], [ 0, %vector.main.loop.iter.check214 ]
  %n.vec233 = and i64 %6, -8                      ; 4 uses
  %i.gl = add i64 %indvars.iv125.lcssa, %n.vec233
  %i.gm = getelementptr i8, ptr %.67091, i64 %n.vec233 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv125.lcssa
  br label %vec.epilog.vector.body234

vec.epilog.vector.body234:                        ; preds = %vec.epilog.vector.body234, %vec.epilog.ph232
  %index235 = phi i64 [ %vec.epilog.resume.val226, %vec.epilog.ph232 ], [ %index.next238, %vec.epilog.vector.body234 ] ; 3 uses
  %next.gep236 = getelementptr i8, ptr %.67091, i64 %index235
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %index235
  %wide.load237 = load <8 x i8>, ptr %i.go, align 1, !tbaa !26
  store <8 x i8> %wide.load237, ptr %next.gep236, align 1, !tbaa !26
  %index.next238 = add nuw i64 %index235, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next238, %n.vec233
  br i1 %i.gp, label %vec.epilog.middle.block239, label %vec.epilog.vector.body234, !llvm.loop !114

vec.epilog.middle.block239:                       ; preds = %vec.epilog.vector.body234
  %cmp.n240 = icmp eq i64 %6, %n.vec233
  br i1 %cmp.n240, label %.loopexit76, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %vector.memcheck210, %iter.check228, %vec.epilog.iter.check230, %vec.epilog.middle.block239
  %indvars.iv127.ph = phi i64 [ %indvars.iv125.lcssa, %iter.check228 ], [ %indvars.iv125.lcssa, %vector.memcheck210 ], [ %i.ge, %vec.epilog.iter.check230 ], [ %i.gl, %vec.epilog.middle.block239 ]
  %.67093.ph = phi ptr [ %.67091, %iter.check228 ], [ %.67091, %vector.memcheck210 ], [ %i.gf, %vec.epilog.iter.check230 ], [ %i.gm, %vec.epilog.middle.block239 ]
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph94
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %.lr.ph94 ], [ %indvars.iv127.ph, %.lr.ph94.preheader ] ; 2 uses
  %.67093 = phi ptr [ %.670, %.lr.ph94 ], [ %.67093.ph, %.lr.ph94.preheader ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv127
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !26
  store i8 %i.gr, ptr %.67093, align 1, !tbaa !26
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %.670 = getelementptr inbounds nuw i8, ptr %.67093, i64 1 ; 2 uses
  %7 = icmp samesign ult i64 %indvars.iv.next128, %sext
  br i1 %7, label %.lr.ph94, label %.loopexit76, !llvm.loop !115

bb.i:                                             ; preds = %bb.h
  %i.gs = getelementptr inbounds nuw i8, ptr %.064, i64 1
  store i8 48, ptr %.064, align 1, !tbaa !26
  %i.gt = getelementptr i8, ptr %.064, i64 2      ; 2 uses
  store i8 46, ptr %i.gs, align 1, !tbaa !26
  %i.gu = icmp slt i32 %i.d, 0
  br i1 %i.gu, label %.lr.ph.preheader, label %.preheader80

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.gv = sub nsw i32 0, %i.d
  %i.gw = zext nneg i32 %i.gv to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gt, i8 48, i64 %i.gw, i1 false), !tbaa !26
  %i.gx = getelementptr i8, ptr %.064, i64 %i.gw
  %scevgep = getelementptr i8, ptr %i.gx, i64 2
  br label %.preheader80

.preheader80:                                     ; preds = %.lr.ph.preheader, %bb.i
  %.7.lcssa = phi ptr [ %i.gt, %bb.i ], [ %scevgep, %.lr.ph.preheader ] ; 7 uses
  %i.gy = icmp sgt i32 %2, 0
  br i1 %i.gy, label %iter.check, label %.loopexit76

iter.check:                                       ; preds = %.preheader80
  %.7.lcssa162 = ptrtoaddr ptr %.7.lcssa to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.gz = sub i64 %i.a, %.7.lcssa162
  %diff.check = icmp ugt i64 %i.gz, -32
  %or.cond339 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond339, label %.lr.ph87.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check163 = icmp ult i32 %2, 32
  br i1 %min.iters.check163, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ha = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %i.hb = getelementptr i8, ptr %.7.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.7.lcssa, i64 %index ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %wide.load = load <16 x i8>, ptr %i.hc, align 1, !tbaa !26
  %wide.load164 = load <16 x i8>, ptr %i.hd, align 1, !tbaa !26
  %i.he = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !26
  store <16 x i8> %wide.load164, ptr %i.he, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hf = icmp eq i64 %index.next, %n.vec
  br i1 %i.hf, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit76, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ha, 0
  br i1 %min.epilog.iters.check, label %.lr.ph87.preheader, label %vec.epilog.ph, !prof !105

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec165 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.hg = getelementptr i8, ptr %.7.lcssa, i64 %n.vec165 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index166 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next169, %vec.epilog.vector.body ] ; 3 uses
  %next.gep167 = getelementptr i8, ptr %.7.lcssa, i64 %index166
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 %index166
  %wide.load168 = load <4 x i8>, ptr %i.hh, align 1, !tbaa !26
  store <4 x i8> %wide.load168, ptr %next.gep167, align 1, !tbaa !26
  %index.next169 = add nuw i64 %index166, 4       ; 2 uses
  %i.hi = icmp eq i64 %index.next169, %n.vec165
  br i1 %i.hi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n170 = icmp eq i64 %n.vec165, %wide.trip.count
  br i1 %cmp.n170, label %.loopexit76, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec165, %vec.epilog.middle.block ] ; 4 uses
  %.885.ph = phi ptr [ %.7.lcssa, %iter.check ], [ %i.hb, %vec.epilog.iter.check ], [ %i.hg, %vec.epilog.middle.block ] ; 2 uses
  %i.hj = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.hj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol

.lr.ph87.prol:                                    ; preds = %.lr.ph87.preheader, %.lr.ph87.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph87.prol ], [ %indvars.iv.ph, %.lr.ph87.preheader ] ; 2 uses
  %.885.prol = phi ptr [ %i.hm, %.lr.ph87.prol ], [ %.885.ph, %.lr.ph87.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph87.prol ], [ 0, %.lr.ph87.preheader ]
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !26
  %i.hm = getelementptr inbounds nuw i8, ptr %.885.prol, i64 1 ; 3 uses
  store i8 %i.hl, ptr %.885.prol, align 1, !tbaa !26
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol, !llvm.loop !118

.lr.ph87.prol.loopexit:                           ; preds = %.lr.ph87.prol, %.lr.ph87.preheader
  %.lcssa347.unr = phi ptr [ poison, %.lr.ph87.preheader ], [ %i.hm, %.lr.ph87.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph87.preheader ], [ %indvars.iv.next.prol, %.lr.ph87.prol ]
  %.885.unr = phi ptr [ %.885.ph, %.lr.ph87.preheader ], [ %i.hm, %.lr.ph87.prol ]
  %i.hn = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ho = icmp ugt i64 %i.hn, -8
  br i1 %i.ho, label %.loopexit76, label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph87 ], [ %indvars.iv.unr, %.lr.ph87.prol.loopexit ] ; 9 uses
  %.885 = phi ptr [ %i.it, %.lr.ph87 ], [ %.885.unr, %.lr.ph87.prol.loopexit ] ; 9 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !26
  %i.hr = getelementptr inbounds nuw i8, ptr %.885, i64 1
  store i8 %i.hq, ptr %.885, align 1, !tbaa !26
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !26
  %i.hv = getelementptr inbounds nuw i8, ptr %.885, i64 2
  store i8 %i.hu, ptr %i.hr, align 1, !tbaa !26
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !26
  %i.hz = getelementptr inbounds nuw i8, ptr %.885, i64 3
  store i8 %i.hy, ptr %i.hv, align 1, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 3
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !26
  %i.id = getelementptr inbounds nuw i8, ptr %.885, i64 4
  store i8 %i.ic, ptr %i.hz, align 1, !tbaa !26
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !26
  %i.ih = getelementptr inbounds nuw i8, ptr %.885, i64 5
  store i8 %i.ig, ptr %i.id, align 1, !tbaa !26
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 5
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !26
  %i.il = getelementptr inbounds nuw i8, ptr %.885, i64 6
  store i8 %i.ik, ptr %i.ih, align 1, !tbaa !26
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 6
  %i.io = load i8, ptr %i.in, align 1, !tbaa !26
  %i.ip = getelementptr inbounds nuw i8, ptr %.885, i64 7
  store i8 %i.io, ptr %i.il, align 1, !tbaa !26
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 7
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !26
  %i.it = getelementptr inbounds nuw i8, ptr %.885, i64 8 ; 2 uses
  store i8 %i.is, ptr %i.ip, align 1, !tbaa !26
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit76, label %.lr.ph87, !llvm.loop !119

.loopexit76:                                      ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87, %.lr.ph94, %middle.block, %vec.epilog.middle.block, %middle.block224, %vec.epilog.middle.block239, %.lr.ph102.preheader, %.preheader80, %.loopexit335, %.preheader, %tg3json__write_exp.exit
  %.071 = phi ptr [ %i.cs, %tg3json__write_exp.exit ], [ %scevgep137, %.lr.ph102.preheader ], [ %.670, %.lr.ph94 ], [ %.367.lcssa, %.preheader ], [ %.67091, %.loopexit335 ], [ %.7.lcssa, %.preheader80 ], [ %i.gm, %vec.epilog.middle.block239 ], [ %i.gf, %middle.block224 ], [ %i.hg, %vec.epilog.middle.block ], [ %i.hb, %middle.block ], [ %.lcssa347.unr, %.lr.ph87.prol.loopexit ], [ %i.it, %.lr.ph87 ]
  ret ptr %.071
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nofree nounwind }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(1) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { cold }
attributes #25 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 1, !"long-double-type", !"x86_fp80"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!14, !11, i64 8}
!14 = !{!"tg3json__parser", !11, i64 0, !11, i64 8, !11, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !7, i64 64}
!15 = !{!"long", !8, i64 0}
!16 = !{!14, !11, i64 16}
!17 = !{!18, !15, i64 0}
!18 = !{!"tg3json_parse_options", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !7, i64 32}
!19 = !{!15, !15, i64 0}
!20 = !{!18, !15, i64 24}
!21 = !{!18, !7, i64 32}
!22 = !{!14, !15, i64 24}
!23 = !{!14, !15, i64 48}
!24 = !{!14, !15, i64 56}
!25 = !{!14, !7, i64 64}
!26 = !{!8, !8, i64 0}
!27 = !{!14, !11, i64 0}
!28 = !{!29, !7, i64 0}
!29 = !{!"tg3json_value", !7, i64 0, !8, i64 8}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!14, !15, i64 40}
!33 = !{!14, !15, i64 32}
!34 = distinct !{null}
!35 = !{i64 0, i64 4, !36, i64 8, i64 16, !26}
!36 = !{!7, !7, i64 0}
!37 = distinct !{!37, !31}
!38 = distinct !{!38, !31}
!39 = distinct !{null}
!40 = !{!41, !11, i64 0}
!41 = !{!"tg3json_object_entry", !11, i64 0, !15, i64 8, !42, i64 16}
!42 = !{!"p1 _ZTS13tg3json_value", !12, i64 0}
!43 = !{!41, !15, i64 8}
!44 = !{!41, !42, i64 16}
!45 = distinct !{!45, !31}
!46 = distinct !{!46, !31}
!47 = distinct !{!47, !31}
!48 = distinct !{!48, !31}
!49 = distinct !{!49, !31}
!50 = distinct !{!50, !31}
!51 = distinct !{!51, !31}
!52 = distinct !{!52, !31}
!53 = !{ptr @tg3json_array_append_copy}
!54 = distinct !{!54, !31}
!55 = !{!12, !12, i64 0}
!56 = distinct !{!56, !31}
!57 = !{ptr @tg3json_object_set_copy_n}
!58 = distinct !{!58, !31}
!59 = distinct !{!59, !31}
!60 = distinct !{!60, !31}
!61 = !{!62, !11, i64 8}
!62 = !{!"tg3json__buffer", !63, i64 0, !11, i64 8, !15, i64 16, !15, i64 24}
!63 = !{!"p1 _ZTS15tg3json__parser", !12, i64 0}
!64 = !{!62, !15, i64 16}
!65 = distinct !{!65, !31}
!66 = distinct !{!66, !31, !67, !68}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = !{!"branch_weights", i32 8, i32 24}
!70 = distinct !{!70, !31, !67, !68}
!71 = distinct !{!71, !31, !68, !67}
!72 = distinct !{!72, !31}
!73 = distinct !{!73, !31}
!74 = distinct !{!74, !31}
!75 = distinct !{!75, !31}
!76 = !{!77, !77, i64 0}
!77 = !{!"double", !8, i64 0}
!78 = distinct !{!78, !31}
!79 = distinct !{!79, !31}
!80 = distinct !{!80, !31}
!81 = distinct !{!81, !31}
!82 = distinct !{!82, !31}
!83 = !{!84, !84, i64 0}
!84 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!85 = !{!62, !63, i64 0}
!86 = distinct !{!86, !31}
!87 = distinct !{!87, !31}
!88 = distinct !{!88, !31}
!89 = distinct !{!89, !31}
!90 = distinct !{!90, !31}
!91 = distinct !{!91, !31}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = distinct !{!94, !31}
!95 = distinct !{!95, !31}
!96 = distinct !{!96, !31, !67, !68}
!97 = distinct !{!97, !31, !67, !68}
!98 = distinct !{!98, !93}
!99 = distinct !{!99, !31, !67}
!100 = distinct !{!100, !31, !67, !68}
!101 = distinct !{!101, !31, !67, !68}
!102 = distinct !{!102, !31}
!103 = distinct !{!103, !31, !68, !67}
!104 = distinct !{!104, !31, !67, !68}
!105 = !{!"branch_weights", i32 4, i32 28}
!106 = distinct !{!106, !31, !67, !68}
!107 = distinct !{!107, !93}
!108 = distinct !{!108, !31, !67}
!109 = distinct !{!109, !31, !67, !68}
!110 = distinct !{!110, !31, !67, !68}
!111 = distinct !{!111, !93}
!112 = distinct !{!112, !31, !67}
!113 = distinct !{!113, !31, !67, !68}
!114 = distinct !{!114, !31, !67, !68}
!115 = distinct !{!115, !31, !67}
!116 = distinct !{!116, !31, !67, !68}
!117 = distinct !{!117, !31, !67, !68}
!118 = distinct !{!118, !93}
!119 = distinct !{!119, !31, !67}
end_hunk_1
