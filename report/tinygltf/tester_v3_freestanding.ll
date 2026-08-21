Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_freestanding?download=true
inline.NumInlined: 906
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 183
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 287
begin_hunk_0_@tg3json_array_append_take:bb.a
  %i.bh = phi i64 [ -1, %.tg3json__init_value.exit_crit_edge ], [ %.pre17, %.loopexit.i ] ; 2 uses
  %i.bi = phi ptr [ %.pre, %.tg3json__init_value.exit_crit_edge ], [ %.018.i.ph.i, %.loopexit.i ]
  %i.bj = add i64 %i.bh, 1
  store i64 %i.bj, ptr %i.e, align 8, !tbaa !12
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !42
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 20
  store <16 x i8> zeroinitializer, ptr %i.bl, align 1, !tbaa !12
  store <4 x i8> zeroinitializer, ptr %i.bm, align 1, !tbaa !12
  store i32 0, ptr %1, align 8, !tbaa !13
  br label %tg3json__reserve_bytes.exit.thread

tg3json__reserve_bytes.exit.thread:               ; preds = %bb.i, %bb.g, %._crit_edge.i, %bb.a, %bb.b, %tg3json__init_value.exit
  %.0 = phi i32 [ 1, %tg3json__init_value.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %._crit_edge.i ], [ 0, %bb.g ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local ptr @tg3json_stringify(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
tg3json__memset_fallback.exit:
  %2 = alloca %struct.tg3json__buffer, align 16   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <16 x i8> zeroinitializer, ptr %2, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.a, align 16, !tbaa !12
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %tg3json__memset_fallback.exit
  %i.b = call fastcc i32 @tg3json__stringify_value_ex(ptr noundef %2, ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0) #20
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %tg3json__memset_fallback.exit
  %.not13 = icmp eq ptr %1, null
  br i1 %.not13, label %bb.i, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr @test_heap_used, align 8, !tbaa !21 ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = icmp ugt i64 %i.f, 524288
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not16 = icmp eq ptr %1, null
  br i1 %.not16, label %bb.i, label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.e ; 2 uses
  store i64 1, ptr %i.h, align 8, !tbaa !21
  store i64 %i.f, ptr @test_heap_used, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.j = phi ptr [ %i.i, %bb.f ], [ %i.d, %bb.c ] ; 2 uses
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i64, ptr %i.k, align 16, !tbaa !101
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.b, %bb.h
  %.sink = phi i64 [ %i.l, %bb.h ], [ 0, %bb.b ], [ 0, %bb.e ]
  %.0.ph = phi ptr [ %i.j, %bb.h ], [ null, %bb.b ], [ null, %bb.e ]
  store i64 %.sink, ptr %1, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.e ], [ null, %bb.b ], [ %i.j, %bb.g ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3json__stringify_value_ex(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 24 uses
  %i.b = alloca [80 x i8], align 16               ; 14 uses
  %i.c = alloca [80 x i8], align 16               ; 11 uses
  %i.d = alloca double, align 8                   ; 6 uses
  %i.e = alloca [24 x i8], align 16               ; 6 uses
  %i.f = alloca [64 x i8], align 16               ; 57 uses
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.g = load i32, ptr %1, align 8, !tbaa !13
  switch i32 %i.g, label %tg3json__buf_append.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.f
    i32 3, label %bb.k
    i32 4, label %bb.an
    i32 5, label %bb.ba
    i32 6, label %bb.bj
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !101
  %i.l = add i64 %i.k, 5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = tail call fastcc i32 @tg3json__reserve_bytes_parser(ptr noundef %i.h, ptr noundef %i.i, i64 noundef 1, i64 noundef %i.l, ptr noundef %i.m) #20
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %tg3json__buf_append.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.p = load i64, ptr %i.j, align 8, !tbaa !101
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store <4 x i8> <i8 110, i8 117, i8 108, i8 108>, ptr %i.q, align 1, !tbaa !12
  %i.r = load i64, ptr %i.j, align 8, !tbaa !101
  %i.s = add i64 %i.r, 4                          ; 2 uses
  store i64 %i.s, ptr %i.j, align 8, !tbaa !101
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 0, ptr %i.u, align 1, !tbaa !12
  br label %tg3json__buf_append.exit

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !12
  %.not136 = icmp eq i32 %i.w, 0
  %i.x = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !101 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not136, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add i64 %i.aa, 5
  %i.ad = tail call fastcc i32 @tg3json__reserve_bytes_parser(ptr noundef %i.x, ptr noundef %i.y, i64 noundef 1, i64 noundef %i.ac, ptr noundef %i.ab) #20
  %.not.i140 = icmp eq i32 %i.ad, 0
  br i1 %.not.i140, label %tg3json__buf_append.exit, label %.lr.ph.i.i141

.lr.ph.i.i141:                                    ; preds = %bb.d
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !98
  %i.af = load i64, ptr %i.z, align 8, !tbaa !101
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store <4 x i8> <i8 116, i8 114, i8 117, i8 101>, ptr %i.ag, align 1, !tbaa !12
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !101
  %i.ai = add i64 %i.ah, 4                        ; 2 uses
  store i64 %i.ai, ptr %i.z, align 8, !tbaa !101
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !12
  br label %tg3json__buf_append.exit

bb.e:                                             ; preds = %bb.c
  %i.al = add i64 %i.aa, 6
  %i.am = tail call fastcc i32 @tg3json__reserve_bytes_parser(ptr noundef %i.x, ptr noundef %i.y, i64 noundef 1, i64 noundef %i.al, ptr noundef %i.ab) #20
  %.not.i149 = icmp eq i32 %i.am, 0
  br i1 %.not.i149, label %tg3json__buf_append.exit, label %.lr.ph.i.i150

.lr.ph.i.i150:                                    ; preds = %bb.e
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !98
  %i.ao = load i64, ptr %i.z, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store <4 x i8> <i8 102, i8 97, i8 108, i8 115>, ptr %i.ap, align 1, !tbaa !12
  store i8 101, ptr %i.aq, align 1, !tbaa !12
  %i.ar = load i64, ptr %i.z, align 8, !tbaa !101
  %i.as = add i64 %i.ar, 5                        ; 2 uses
  store i64 %i.as, ptr %i.z, align 8, !tbaa !101
  %i.at = load ptr, ptr %i.y, align 8, !tbaa !98
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !12
  br label %tg3json__buf_append.exit

bb.f:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 45, ptr %i.f, align 16, !tbaa !12
  %i.az = sub i64 0, %i.aw
  br label %.preheader28.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.ba = icmp eq i64 %i.aw, 0
  br i1 %i.ba, label %bb.h, label %.preheader28.preheader.i

.preheader28.preheader.i:                         ; preds = %bb.g, %.thread.i
  %.02143.i = phi i64 [ %i.az, %.thread.i ], [ %i.aw, %bb.g ]
  %.02342.i = phi ptr [ %i.ay, %.thread.i ], [ %i.f, %bb.g ] ; 5 uses
  br label %.preheader28.i

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 48, ptr %i.f, align 16, !tbaa !12
  store i8 0, ptr %i.bb, align 1, !tbaa !12
  br label %tg3json__itoa.exit

.preheader28.i:                                   ; preds = %.preheader28.i, %.preheader28.preheader.i
  %indvars.iv35.i = phi i64 [ 1, %.preheader28.preheader.i ], [ %indvars.iv.next36.i, %.preheader28.i ] ; 7 uses
  %indvars.iv.i = phi i64 [ 0, %.preheader28.preheader.i ], [ %indvars.iv.next.i, %.preheader28.i ] ; 2 uses
  %.12229.i = phi i64 [ %.02143.i, %.preheader28.preheader.i ], [ %i.bg, %.preheader28.i ] ; 3 uses
  %i.bc = urem i64 %.12229.i, 10
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  %i.be = or disjoint i8 %i.bd, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !12
  %i.bg = udiv i64 %.12229.i, 10
  %.not.i158 = icmp ult i64 %.12229.i, 10
  %indvars.iv.next36.i = add nuw i64 %indvars.iv35.i, 1
  br i1 %.not.i158, label %iter.check559, label %.preheader28.i, !llvm.loop !103

iter.check559:                                    ; preds = %.preheader28.i
  %5 = trunc i64 %indvars.iv35.i to i32           ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 1)
  %6 = sub i32 %5, %smin                          ; 3 uses
  %7 = zext i32 %6 to i64
  %8 = add nuw nsw i64 %7, 1                      ; 5 uses
  %min.iters.check543 = icmp ult i32 %6, 7
  br i1 %min.iters.check543, label %.preheader.i.preheader, label %vector.main.loop.iter.check544

vector.main.loop.iter.check544:                   ; preds = %iter.check559
  %min.iters.check545 = icmp ult i32 %6, 31
  br i1 %min.iters.check545, label %vec.epilog.ph563, label %vector.ph546

vector.ph546:                                     ; preds = %vector.main.loop.iter.check544
  %i.bh = and i64 %8, 24
  %n.vec547 = and i64 %8, 8589934560              ; 5 uses
  %9 = sub i64 %indvars.iv35.i, %n.vec547
  %i.bi = getelementptr i8, ptr %.02342.i, i64 %n.vec547 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.e, i64 %indvars.iv35.i
  br label %vector.body548

vector.body548:                                   ; preds = %vector.body548, %vector.ph546
  %index549 = phi i64 [ 0, %vector.ph546 ], [ %index.next554, %vector.body548 ] ; 3 uses
  %next.gep550 = getelementptr i8, ptr %.02342.i, i64 %index549 ; 2 uses
  %i.bk = xor i64 %index549, -1
  %i.bl = getelementptr i8, ptr %i.bj, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -15
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -31
  %wide.load551 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !12
  %wide.load552 = load <16 x i8>, ptr %i.bn, align 1, !tbaa !12
  %reverse = shufflevector <16 x i8> %wide.load551, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse553 = shufflevector <16 x i8> %wide.load552, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bo = getelementptr i8, ptr %next.gep550, i64 16
  store <16 x i8> %reverse, ptr %next.gep550, align 1, !tbaa !12
  store <16 x i8> %reverse553, ptr %i.bo, align 1, !tbaa !12
  %index.next554 = add nuw i64 %index549, 32      ; 2 uses
  %i.bp = icmp eq i64 %index.next554, %n.vec547
  br i1 %i.bp, label %middle.block555, label %vector.body548, !llvm.loop !104

middle.block555:                                  ; preds = %vector.body548
  %cmp.n556 = icmp eq i64 %8, %n.vec547
  br i1 %cmp.n556, label %.loopexit, label %vec.epilog.iter.check561

vec.epilog.iter.check561:                         ; preds = %middle.block555
  %min.epilog.iters.check562 = icmp eq i64 %i.bh, 0
  br i1 %min.epilog.iters.check562, label %.preheader.i.preheader, label %vec.epilog.ph563, !prof !105

vec.epilog.ph563:                                 ; preds = %vector.main.loop.iter.check544, %vec.epilog.iter.check561
  %vec.epilog.resume.val557 = phi i64 [ %n.vec547, %vec.epilog.iter.check561 ], [ 0, %vector.main.loop.iter.check544 ]
  %n.vec564 = and i64 %8, 8589934584              ; 4 uses
  %10 = sub i64 %indvars.iv35.i, %n.vec564
  %i.bq = getelementptr i8, ptr %.02342.i, i64 %n.vec564 ; 2 uses
  %i.br = getelementptr i8, ptr %i.e, i64 %indvars.iv35.i
  br label %vec.epilog.vector.body565

vec.epilog.vector.body565:                        ; preds = %vec.epilog.vector.body565, %vec.epilog.ph563
  %index566 = phi i64 [ %vec.epilog.resume.val557, %vec.epilog.ph563 ], [ %index.next570, %vec.epilog.vector.body565 ] ; 3 uses
  %next.gep567 = getelementptr i8, ptr %.02342.i, i64 %index566
  %i.bs = xor i64 %index566, -1
  %i.bt = getelementptr i8, ptr %i.br, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -7
  %wide.load568 = load <8 x i8>, ptr %i.bu, align 1, !tbaa !12
  %reverse569 = shufflevector <8 x i8> %wide.load568, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse569, ptr %next.gep567, align 1, !tbaa !12
  %index.next570 = add nuw i64 %index566, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next570, %n.vec564
  br i1 %i.bv, label %vec.epilog.middle.block571, label %vec.epilog.vector.body565, !llvm.loop !106

vec.epilog.middle.block571:                       ; preds = %vec.epilog.vector.body565
  %cmp.n572 = icmp eq i64 %8, %n.vec564
  br i1 %cmp.n572, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check559, %vec.epilog.iter.check561, %vec.epilog.middle.block571
  %indvars.iv37.i.ph = phi i64 [ %indvars.iv35.i, %iter.check559 ], [ %9, %vec.epilog.iter.check561 ], [ %10, %vec.epilog.middle.block571 ]
  %.12431.i.ph = phi ptr [ %.02342.i, %iter.check559 ], [ %i.bi, %vec.epilog.iter.check561 ], [ %i.bq, %vec.epilog.middle.block571 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %.preheader.i ], [ %indvars.iv37.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.12431.i = phi ptr [ %i.by, %.preheader.i ], [ %.12431.i.ph, %.preheader.i.preheader ] ; 2 uses
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, -1 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next38.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %.12431.i, i64 1 ; 2 uses
  store i8 %i.bx, ptr %.12431.i, align 1, !tbaa !12
  %11 = trunc nuw i64 %indvars.iv37.i to i32
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %.preheader.i, label %.loopexit, !llvm.loop !107

.loopexit:                                        ; preds = %.preheader.i, %vec.epilog.middle.block571, %middle.block555
  %.lcssa = phi ptr [ %i.bq, %vec.epilog.middle.block571 ], [ %i.bi, %middle.block555 ], [ %i.by, %.preheader.i ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !12
  br label %tg3json__itoa.exit

tg3json__itoa.exit:                               ; preds = %bb.h, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %tg3json__itoa.exit
  %.0.i159 = phi ptr [ %i.f, %tg3json__itoa.exit ], [ %i.ca, %bb.i ] ; 3 uses
  %i.bz = load i8, ptr %.0.i159, align 1, !tbaa !12
  %.not.i160 = icmp eq i8 %i.bz, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i159, i64 1
  br i1 %.not.i160, label %tg3json__strlen_fallback.exit, label %bb.i, !llvm.loop !68

tg3json__strlen_fallback.exit:                    ; preds = %bb.i
  %i.cb = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.cc = ptrtoint ptr %.0.i159 to i64            ; 2 uses
  %i.cd = sub i64 %i.cc, %i.cb                    ; 12 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %tg3json__buf_append.exit, label %bb.j

bb.j:                                             ; preds = %tg3json__strlen_fallback.exit
  %i.cf = load ptr, ptr %0, align 8, !tbaa !102
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !101
  %i.cj = add i64 %i.cd, 1
  %i.ck = add i64 %i.cj, %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = call fastcc i32 @tg3json__reserve_bytes_parser(ptr noundef %i.cf, ptr noundef %i.cg, i64 noundef 1, i64 noundef %i.ck, ptr noundef %i.cl) #20
  %.not.i161 = icmp eq i32 %i.cm, 0
  br i1 %.not.i161, label %tg3json__buf_append.exit, label %iter.check594

iter.check594:                                    ; preds = %bb.j
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !98 ; 2 uses
  %i.co = load i64, ptr %i.ch, align 8, !tbaa !101 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co ; 6 uses
  %min.iters.check577 = icmp ult i64 %i.cd, 4
  br i1 %min.iters.check577, label %.lr.ph.i.i162.preheader, label %vector.memcheck575

vector.memcheck575:                               ; preds = %iter.check594
  %i.cq = ptrtoaddr ptr %i.cn to i64
  %i.cr = add i64 %i.co, %i.cq
  %i.cs = sub i64 %i.cb, %i.cr
  %diff.check576 = icmp ugt i64 %i.cs, -32
  br i1 %diff.check576, label %.lr.ph.i.i162.preheader, label %vector.main.loop.iter.check578

vector.main.loop.iter.check578:                   ; preds = %vector.memcheck575
  %min.iters.check579 = icmp ult i64 %i.cd, 32
  br i1 %min.iters.check579, label %vec.epilog.ph598, label %vector.ph580

vector.ph580:                                     ; preds = %vector.main.loop.iter.check578
  %i.ct = and i64 %i.cd, 28
  %n.vec581 = and i64 %i.cd, -32                  ; 5 uses
  %i.cu = getelementptr i8, ptr %i.f, i64 %n.vec581
  %i.cv = getelementptr i8, ptr %i.cp, i64 %n.vec581
  %i.cw = and i64 %i.cd, 31
  br label %vector.body582

vector.body582:                                   ; preds = %vector.body582, %vector.ph580
  %index583 = phi i64 [ 0, %vector.ph580 ], [ %index.next588, %vector.body582 ] ; 3 uses
  %next.gep584 = getelementptr i8, ptr %i.f, i64 %index583 ; 2 uses
  %next.gep585 = getelementptr i8, ptr %i.cp, i64 %index583 ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep584, i64 16
  %wide.load586 = load <16 x i8>, ptr %next.gep584, align 16, !tbaa !12
  %wide.load587 = load <16 x i8>, ptr %i.cx, align 16, !tbaa !12
  %i.cy = getelementptr i8, ptr %next.gep585, i64 16
  store <16 x i8> %wide.load586, ptr %next.gep585, align 1, !tbaa !12
  store <16 x i8> %wide.load587, ptr %i.cy, align 1, !tbaa !12
  %index.next588 = add nuw i64 %index583, 32      ; 2 uses
  %i.cz = icmp eq i64 %index.next588, %n.vec581
  br i1 %i.cz, label %middle.block589, label %vector.body582, !llvm.loop !108

middle.block589:                                  ; preds = %vector.body582
  %cmp.n590 = icmp eq i64 %i.cd, %n.vec581
  br i1 %cmp.n590, label %tg3json__memcpy_fallback.exit.i167, label %vec.epilog.iter.check596

vec.epilog.iter.check596:                         ; preds = %middle.block589
  %min.epilog.iters.check597 = icmp eq i64 %i.ct, 0
  br i1 %min.epilog.iters.check597, label %.lr.ph.i.i162.preheader, label %vec.epilog.ph598, !prof !36

vec.epilog.ph598:                                 ; preds = %vector.main.loop.iter.check578, %vec.epilog.iter.check596
  %vec.epilog.resume.val591 = phi i64 [ %n.vec581, %vec.epilog.iter.check596 ], [ 0, %vector.main.loop.iter.check578 ]
  %i.da = and i64 %i.cc, 3                        ; 3 uses
  %n.vec599 = sub i64 %i.cd, %i.da                ; 3 uses
  %i.db = getelementptr i8, ptr %i.f, i64 %n.vec599
  %i.dc = getelementptr i8, ptr %i.cp, i64 %n.vec599
  br label %vec.epilog.vector.body600

vec.epilog.vector.body600:                        ; preds = %vec.epilog.vector.body600, %vec.epilog.ph598
  %index601 = phi i64 [ %vec.epilog.resume.val591, %vec.epilog.ph598 ], [ %index.next605, %vec.epilog.vector.body600 ] ; 3 uses
  %next.gep602 = getelementptr i8, ptr %i.f, i64 %index601
  %next.gep603 = getelementptr i8, ptr %i.cp, i64 %index601
  %wide.load604 = load <4 x i8>, ptr %next.gep602, align 4, !tbaa !12
  store <4 x i8> %wide.load604, ptr %next.gep603, align 1, !tbaa !12
  %index.next605 = add nuw i64 %index601, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next605, %n.vec599
  br i1 %i.dd, label %vec.epilog.middle.block606, label %vec.epilog.vector.body600, !llvm.loop !109

vec.epilog.middle.block606:                       ; preds = %vec.epilog.vector.body600
  %cmp.n607 = icmp eq i64 %i.da, 0
  br i1 %cmp.n607, label %tg3json__memcpy_fallback.exit.i167, label %.lr.ph.i.i162.preheader

.lr.ph.i.i162.preheader:                          ; preds = %vector.memcheck575, %iter.check594, %vec.epilog.iter.check596, %vec.epilog.middle.block606
  %.010.i.i163.ph = phi ptr [ %i.f, %iter.check594 ], [ %i.f, %vector.memcheck575 ], [ %i.cu, %vec.epilog.iter.check596 ], [ %i.db, %vec.epilog.middle.block606 ] ; 2 uses
  %.059.i.i164.ph = phi ptr [ %i.cp, %iter.check594 ], [ %i.cp, %vector.memcheck575 ], [ %i.cv, %vec.epilog.iter.check596 ], [ %i.dc, %vec.epilog.middle.block606 ] ; 2 uses
  %.068.i.i165.ph = phi i64 [ %i.cd, %iter.check594 ], [ %i.cd, %vector.memcheck575 ], [ %i.cw, %vec.epilog.iter.check596 ], [ %i.da, %vec.epilog.middle.block606 ] ; 4 uses
  %i.de = add i64 %.068.i.i165.ph, -1
  %xtraiter627 = and i64 %.068.i.i165.ph, 7       ; 2 uses
  %lcmp.mod628.not = icmp eq i64 %xtraiter627, 0
  br i1 %lcmp.mod628.not, label %.lr.ph.i.i162.prol.loopexit, label %.lr.ph.i.i162.prol

.lr.ph.i.i162.prol:                               ; preds = %.lr.ph.i.i162.preheader, %.lr.ph.i.i162.prol
  %.010.i.i163.prol = phi ptr [ %i.dg, %.lr.ph.i.i162.prol ], [ %.010.i.i163.ph, %.lr.ph.i.i162.preheader ] ; 2 uses
  %.059.i.i164.prol = phi ptr [ %i.di, %.lr.ph.i.i162.prol ], [ %.059.i.i164.ph, %.lr.ph.i.i162.preheader ] ; 2 uses
  %.068.i.i165.prol = phi i64 [ %i.df, %.lr.ph.i.i162.prol ], [ %.068.i.i165.ph, %.lr.ph.i.i162.preheader ]
  %prol.iter629 = phi i64 [ %prol.iter629.next, %.lr.ph.i.i162.prol ], [ 0, %.lr.ph.i.i162.preheader ]
  %i.df = add i64 %.068.i.i165.prol, -1           ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.010.i.i163.prol, i64 1 ; 2 uses
  %i.dh = load i8, ptr %.010.i.i163.prol, align 1, !tbaa !12
  %i.di = getelementptr inbounds nuw i8, ptr %.059.i.i164.prol, i64 1 ; 2 uses
  store i8 %i.dh, ptr %.059.i.i164.prol, align 1, !tbaa !12
  %prol.iter629.next = add i64 %prol.iter629, 1   ; 2 uses
  %prol.iter629.cmp.not = icmp eq i64 %prol.iter629.next, %xtraiter627
  br i1 %prol.iter629.cmp.not, label %.lr.ph.i.i162.prol.loopexit, label %.lr.ph.i.i162.prol, !llvm.loop !110

.lr.ph.i.i162.prol.loopexit:                      ; preds = %.lr.ph.i.i162.prol, %.lr.ph.i.i162.preheader
  %.010.i.i163.unr = phi ptr [ %.010.i.i163.ph, %.lr.ph.i.i162.preheader ], [ %i.dg, %.lr.ph.i.i162.prol ]
  %.059.i.i164.unr = phi ptr [ %.059.i.i164.ph, %.lr.ph.i.i162.preheader ], [ %i.di, %.lr.ph.i.i162.prol ]
  %.068.i.i165.unr = phi i64 [ %.068.i.i165.ph, %.lr.ph.i.i162.preheader ], [ %i.df, %.lr.ph.i.i162.prol ]
  %i.dj = icmp ult i64 %i.de, 7
  br i1 %i.dj, label %tg3json__memcpy_fallback.exit.i167, label %.lr.ph.i.i162

.lr.ph.i.i162:                                    ; preds = %.lr.ph.i.i162.prol.loopexit, %.lr.ph.i.i162
  %.010.i.i163 = phi ptr [ %i.eg, %.lr.ph.i.i162 ], [ %.010.i.i163.unr, %.lr.ph.i.i162.prol.loopexit ] ; 9 uses
  %.059.i.i164 = phi ptr [ %i.ei, %.lr.ph.i.i162 ], [ %.059.i.i164.unr, %.lr.ph.i.i162.prol.loopexit ] ; 9 uses
  %.068.i.i165 = phi i64 [ %i.ef, %.lr.ph.i.i162 ], [ %.068.i.i165.unr, %.lr.ph.i.i162.prol.loopexit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.010.i.i163, i64 1
  %i.dl = load i8, ptr %.010.i.i163, align 1, !tbaa !12
  %i.dm = getelementptr inbounds nuw i8, ptr %.059.i.i164, i64 1
  store i8 %i.dl, ptr %.059.i.i164, align 1, !tbaa !12
  %i.dn = getelementptr inbounds nuw i8, ptr %.010.i.i163, i64 2
  %i.do = load i8, ptr %i.dk, align 1, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %.059.i.i164, i64 2
  store i8 %i.do, ptr %i.dm, align 1, !tbaa !12
  %i.dq = getelementptr inbounds nuw i8, ptr %.010.i.i163, i64 3
  %i.dr = load i8, ptr %i.dn, align 1, !tbaa !12
  %i.ds = getelementptr inbounds nuw i8, ptr %.059.i.i164, i64 3
  store i8 %i.dr, ptr %i.dp, align 1, !tbaa !12
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i.i163, i64 4
  %i.du = load i8, ptr %i.dq, align 1, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %.059.i.i164, i64 4
  store i8 %i.du, ptr %i.ds, align 1, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %.010.i.i163, i64 5
  %i.dx = load i8, ptr %i.dt, align 1, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %.059.i.i164, i64 5
  store i8 %i.dx, ptr %i.dv, align 1, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %.010.i.i163, i64 6
  %i.ea = load i8, ptr %i.dw, align 1, !tbaa !12
  %i.eb = getelementptr inbounds nuw i8, ptr %.059.i.i164, i64 6
  store i8 %i.ea, ptr %i.dy, align 1, !tbaa !12
  %i.ec = getelementptr inbounds nuw i8, ptr %.010.i.i163, i64 7
  %i.ed = load i8, ptr %i.dz, align 1, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %.059.i.i164, i64 7
  store i8 %i.ed, ptr %i.eb, align 1, !tbaa !12
  %i.ef = add i64 %.068.i.i165, -8                ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.010.i.i163, i64 8
  %i.eh = load i8, ptr %i.ec, align 1, !tbaa !12
  %i.ei = getelementptr inbounds nuw i8, ptr %.059.i.i164, i64 8
  store i8 %i.eh, ptr %i.ee, align 1, !tbaa !12
  %.not.i.i166.7 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i166.7, label %tg3json__memcpy_fallback.exit.i167, label %.lr.ph.i.i162, !llvm.loop !111

tg3json__memcpy_fallback.exit.i167:               ; preds = %.lr.ph.i.i162.prol.loopexit, %.lr.ph.i.i162, %vec.epilog.middle.block606, %middle.block589
  %i.ej = load i64, ptr %i.ch, align 8, !tbaa !101
  %i.ek = add i64 %i.ej, %i.cd                    ; 2 uses
  store i64 %i.ek, ptr %i.ch, align 8, !tbaa !101
  %i.el = load ptr, ptr %i.cg, align 8, !tbaa !98
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store i8 0, ptr %i.em, align 1, !tbaa !12
  br label %tg3json__buf_append.exit

bb.k:                                             ; preds = %bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eo = load double, ptr %i.en, align 8, !tbaa !12 ; 4 uses
  %i.ep = bitcast double %i.eo to i64             ; 5 uses
  %i.eq = lshr i64 %i.ep, 63
  %i.er = trunc nuw nsw i64 %i.eq to i32          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.es = fcmp ord double %i.eo, 0.000000e+00
  br i1 %i.es, label %bb.l, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.k
  %i.et = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 110, ptr %i.f, align 16, !tbaa !12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 2
end_hunk_0
begin_hunk_1_@tg3json__format_decimal_digits:bb.a
vector.ph278:                                     ; preds = %vector.main.loop.iter.check276
  %i.eo = and i64 %wide.trip.count132, 28
  %n.vec279 = and i64 %wide.trip.count132, 2147483616 ; 5 uses
  %i.ep = getelementptr i8, ptr %.064, i64 %n.vec279 ; 2 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph278
  %index281 = phi i64 [ 0, %vector.ph278 ], [ %index.next285, %vector.body280 ] ; 3 uses
  %next.gep282 = getelementptr i8, ptr %.064, i64 %index281 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 %index281 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load283 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !12
  %wide.load284 = load <16 x i8>, ptr %i.er, align 1, !tbaa !12
  %i.es = getelementptr i8, ptr %next.gep282, i64 16
  store <16 x i8> %wide.load283, ptr %next.gep282, align 1, !tbaa !12
  store <16 x i8> %wide.load284, ptr %i.es, align 1, !tbaa !12
  %index.next285 = add nuw i64 %index281, 32      ; 2 uses
  %i.et = icmp eq i64 %index.next285, %n.vec279
  br i1 %i.et, label %middle.block286, label %vector.body280, !llvm.loop !916

middle.block286:                                  ; preds = %vector.body280
  %cmp.n287 = icmp eq i64 %n.vec279, %wide.trip.count132
  br i1 %cmp.n287, label %.preheader, label %vec.epilog.iter.check291

vec.epilog.iter.check291:                         ; preds = %middle.block286
  %min.epilog.iters.check292 = icmp eq i64 %i.eo, 0
  br i1 %min.epilog.iters.check292, label %.lr.ph98.preheader, label %vec.epilog.ph293, !prof !36

vec.epilog.ph293:                                 ; preds = %vector.main.loop.iter.check276, %vec.epilog.iter.check291
  %vec.epilog.resume.val288 = phi i64 [ %n.vec279, %vec.epilog.iter.check291 ], [ 0, %vector.main.loop.iter.check276 ]
  %n.vec294 = and i64 %wide.trip.count132, 2147483644 ; 4 uses
  %i.eu = getelementptr i8, ptr %.064, i64 %n.vec294 ; 2 uses
  br label %vec.epilog.vector.body295

vec.epilog.vector.body295:                        ; preds = %vec.epilog.vector.body295, %vec.epilog.ph293
  %index296 = phi i64 [ %vec.epilog.resume.val288, %vec.epilog.ph293 ], [ %index.next299, %vec.epilog.vector.body295 ] ; 3 uses
  %next.gep297 = getelementptr i8, ptr %.064, i64 %index296
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 %index296
  %wide.load298 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !12
  store <4 x i8> %wide.load298, ptr %next.gep297, align 1, !tbaa !12
  %index.next299 = add nuw i64 %index296, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next299, %n.vec294
  br i1 %i.ew, label %vec.epilog.middle.block300, label %vec.epilog.vector.body295, !llvm.loop !917

vec.epilog.middle.block300:                       ; preds = %vec.epilog.vector.body295
  %cmp.n301 = icmp eq i64 %n.vec294, %wide.trip.count132
  br i1 %cmp.n301, label %.preheader, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %iter.check289, %vec.epilog.iter.check291, %vec.epilog.middle.block300
  %indvars.iv129.ph = phi i64 [ 0, %iter.check289 ], [ %n.vec279, %vec.epilog.iter.check291 ], [ %n.vec294, %vec.epilog.middle.block300 ] ; 4 uses
  %.36796.ph = phi ptr [ %.064, %iter.check289 ], [ %i.ep, %vec.epilog.iter.check291 ], [ %i.eu, %vec.epilog.middle.block300 ] ; 2 uses
  %i.ex = sub nsw i64 %wide.trip.count132, %indvars.iv129.ph
  %xtraiter449 = and i64 %i.ex, 7                 ; 2 uses
  %lcmp.mod450.not = icmp eq i64 %xtraiter449, 0
  br i1 %lcmp.mod450.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol

.lr.ph98.prol:                                    ; preds = %.lr.ph98.preheader, %.lr.ph98.prol
  %indvars.iv129.prol = phi i64 [ %indvars.iv.next130.prol, %.lr.ph98.prol ], [ %indvars.iv129.ph, %.lr.ph98.preheader ] ; 2 uses
  %.36796.prol = phi ptr [ %i.fa, %.lr.ph98.prol ], [ %.36796.ph, %.lr.ph98.preheader ] ; 2 uses
  %prol.iter451 = phi i64 [ %prol.iter451.next, %.lr.ph98.prol ], [ 0, %.lr.ph98.preheader ]
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129.prol
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %.36796.prol, i64 1 ; 3 uses
  store i8 %i.ez, ptr %.36796.prol, align 1, !tbaa !12
  %indvars.iv.next130.prol = add nuw nsw i64 %indvars.iv129.prol, 1 ; 2 uses
  %prol.iter451.next = add i64 %prol.iter451, 1   ; 2 uses
  %prol.iter451.cmp.not = icmp eq i64 %prol.iter451.next, %xtraiter449
  br i1 %prol.iter451.cmp.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol, !llvm.loop !918

.lr.ph98.prol.loopexit:                           ; preds = %.lr.ph98.prol, %.lr.ph98.preheader
  %.lcssa438.unr = phi ptr [ poison, %.lr.ph98.preheader ], [ %i.fa, %.lr.ph98.prol ]
  %indvars.iv129.unr = phi i64 [ %indvars.iv129.ph, %.lr.ph98.preheader ], [ %indvars.iv.next130.prol, %.lr.ph98.prol ]
  %.36796.unr = phi ptr [ %.36796.ph, %.lr.ph98.preheader ], [ %i.fa, %.lr.ph98.prol ]
  %i.fb = sub nsw i64 %indvars.iv129.ph, %wide.trip.count132
  %i.fc = icmp ugt i64 %i.fb, -8
  br i1 %i.fc, label %.preheader, label %.lr.ph98

.preheader:                                       ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98, %middle.block286, %vec.epilog.middle.block300, %.preheader77
  %.367.lcssa = phi ptr [ %.064, %.preheader77 ], [ %i.eu, %vec.epilog.middle.block300 ], [ %i.ep, %middle.block286 ], [ %.lcssa438.unr, %.lr.ph98.prol.loopexit ], [ %i.gq, %.lr.ph98 ] ; 6 uses
  %.not106 = icmp eq i32 %3, 0
  br i1 %.not106, label %.loopexit76, label %iter.check317

iter.check317:                                    ; preds = %.preheader
  %i.fd = zext nneg i32 %3 to i64                 ; 5 uses
  %min.iters.check304 = icmp ult i32 %3, 8
  br i1 %min.iters.check304, label %.lr.ph102.preheader, label %vector.main.loop.iter.check305

vector.main.loop.iter.check305:                   ; preds = %iter.check317
  %min.iters.check306 = icmp ult i32 %3, 32
  br i1 %min.iters.check306, label %vec.epilog.ph321, label %vector.ph307

vector.ph307:                                     ; preds = %vector.main.loop.iter.check305
  %i.fe = and i64 %i.fd, 24
  %n.vec308 = and i64 %i.fd, 2147483616           ; 5 uses
  %i.ff = trunc nuw nsw i64 %n.vec308 to i32
  %i.fg = getelementptr i8, ptr %.367.lcssa, i64 %n.vec308 ; 2 uses
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph307
  %index310 = phi i64 [ 0, %vector.ph307 ], [ %index.next312, %vector.body309 ] ; 2 uses
  %next.gep311 = getelementptr i8, ptr %.367.lcssa, i64 %index310 ; 2 uses
  %i.fh = getelementptr i8, ptr %next.gep311, i64 16
  store <16 x i8> splat (i8 48), ptr %next.gep311, align 1, !tbaa !12
  store <16 x i8> splat (i8 48), ptr %i.fh, align 1, !tbaa !12
  %index.next312 = add nuw i64 %index310, 32      ; 2 uses
  %i.fi = icmp eq i64 %index.next312, %n.vec308
  br i1 %i.fi, label %middle.block313, label %vector.body309, !llvm.loop !919

middle.block313:                                  ; preds = %vector.body309
  %cmp.n314 = icmp eq i64 %n.vec308, %i.fd
  br i1 %cmp.n314, label %.loopexit76, label %vec.epilog.iter.check319

vec.epilog.iter.check319:                         ; preds = %middle.block313
  %min.epilog.iters.check320 = icmp eq i64 %i.fe, 0
  br i1 %min.epilog.iters.check320, label %.lr.ph102.preheader, label %vec.epilog.ph321, !prof !105

vec.epilog.ph321:                                 ; preds = %vector.main.loop.iter.check305, %vec.epilog.iter.check319
  %vec.epilog.resume.val315 = phi i64 [ %n.vec308, %vec.epilog.iter.check319 ], [ 0, %vector.main.loop.iter.check305 ]
  %n.vec322 = and i64 %i.fd, 2147483640           ; 4 uses
  %i.fj = trunc nuw nsw i64 %n.vec322 to i32
  %i.fk = getelementptr i8, ptr %.367.lcssa, i64 %n.vec322 ; 2 uses
  br label %vec.epilog.vector.body323

vec.epilog.vector.body323:                        ; preds = %vec.epilog.vector.body323, %vec.epilog.ph321
  %index324 = phi i64 [ %vec.epilog.resume.val315, %vec.epilog.ph321 ], [ %index.next326, %vec.epilog.vector.body323 ] ; 2 uses
  %next.gep325 = getelementptr i8, ptr %.367.lcssa, i64 %index324
  store <8 x i8> splat (i8 48), ptr %next.gep325, align 1, !tbaa !12
  %index.next326 = add nuw i64 %index324, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next326, %n.vec322
  br i1 %i.fl, label %vec.epilog.middle.block327, label %vec.epilog.vector.body323, !llvm.loop !920

vec.epilog.middle.block327:                       ; preds = %vec.epilog.vector.body323
  %cmp.n328 = icmp eq i64 %n.vec322, %i.fd
  br i1 %cmp.n328, label %.loopexit76, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %iter.check317, %vec.epilog.iter.check319, %vec.epilog.middle.block327
  %.2101.ph = phi i32 [ 0, %iter.check317 ], [ %i.ff, %vec.epilog.iter.check319 ], [ %i.fj, %vec.epilog.middle.block327 ]
  %.468100.ph = phi ptr [ %.367.lcssa, %iter.check317 ], [ %i.fg, %vec.epilog.iter.check319 ], [ %i.fk, %vec.epilog.middle.block327 ]
  br label %.lr.ph102

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.7, %.lr.ph98 ], [ %indvars.iv129.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %.36796 = phi ptr [ %i.gq, %.lr.ph98 ], [ %.36796.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %.36796, i64 1
  store i8 %i.fn, ptr %.36796, align 1, !tbaa !12
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %.36796, i64 2
  store i8 %i.fr, ptr %i.fo, align 1, !tbaa !12
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %.36796, i64 3
  store i8 %i.fv, ptr %i.fs, align 1, !tbaa !12
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 3
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !12
  %i.ga = getelementptr inbounds nuw i8, ptr %.36796, i64 4
  store i8 %i.fz, ptr %i.fw, align 1, !tbaa !12
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !12
  %i.ge = getelementptr inbounds nuw i8, ptr %.36796, i64 5
  store i8 %i.gd, ptr %i.ga, align 1, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 5
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !12
  %i.gi = getelementptr inbounds nuw i8, ptr %.36796, i64 6
  store i8 %i.gh, ptr %i.ge, align 1, !tbaa !12
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 6
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !12
  %i.gm = getelementptr inbounds nuw i8, ptr %.36796, i64 7
  store i8 %i.gl, ptr %i.gi, align 1, !tbaa !12
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv129
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 7
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !12
  %i.gq = getelementptr inbounds nuw i8, ptr %.36796, i64 8 ; 2 uses
  store i8 %i.gp, ptr %i.gm, align 1, !tbaa !12
  %indvars.iv.next130.7 = add nuw nsw i64 %indvars.iv129, 8 ; 2 uses
  %exitcond133.not.7 = icmp eq i64 %indvars.iv.next130.7, %wide.trip.count132
  br i1 %exitcond133.not.7, label %.preheader, label %.lr.ph98, !llvm.loop !921

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %.lr.ph102
  %.2101 = phi i32 [ %i.gs, %.lr.ph102 ], [ %.2101.ph, %.lr.ph102.preheader ]
  %.468100 = phi ptr [ %i.gr, %.lr.ph102 ], [ %.468100.ph, %.lr.ph102.preheader ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.468100, i64 1 ; 2 uses
  store i8 48, ptr %.468100, align 1, !tbaa !12
  %i.gs = add nuw nsw i32 %.2101, 1               ; 2 uses
  %exitcond135.not = icmp eq i32 %i.gs, %3
  br i1 %exitcond135.not, label %.loopexit76, label %.lr.ph102, !llvm.loop !922

bb.h:                                             ; preds = %bb.g
  %i.gt = icmp sgt i32 %i.e, 0
  br i1 %i.gt, label %iter.check222, label %bb.i

iter.check222:                                    ; preds = %bb.h
  %wide.trip.count122 = zext nneg i32 %i.e to i64 ; 8 uses
  %min.iters.check206 = icmp ult i32 %i.e, 4
  %i.gu = sub i64 %i.a, %.064204
  %diff.check205 = icmp ugt i64 %i.gu, -32
  %or.cond433 = select i1 %min.iters.check206, i1 true, i1 %diff.check205
  br i1 %or.cond433, label %.preheader79.preheader, label %vector.main.loop.iter.check207

vector.main.loop.iter.check207:                   ; preds = %iter.check222
  %min.iters.check208 = icmp ult i32 %i.e, 32
  br i1 %min.iters.check208, label %vec.epilog.ph226, label %vector.ph209

vector.ph209:                                     ; preds = %vector.main.loop.iter.check207
  %i.gv = and i64 %wide.trip.count122, 28
  %n.vec210 = and i64 %wide.trip.count122, 2147483616 ; 7 uses
  %i.gw = or disjoint i64 %n.vec210, 1
  %i.gx = getelementptr i8, ptr %.064, i64 %n.vec210 ; 3 uses
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph209
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next216, %vector.body211 ] ; 3 uses
  %next.gep213 = getelementptr i8, ptr %.064, i64 %index212 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 %index212 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %wide.load214 = load <16 x i8>, ptr %i.gy, align 1, !tbaa !12
  %wide.load215 = load <16 x i8>, ptr %i.gz, align 1, !tbaa !12
  %i.ha = getelementptr i8, ptr %next.gep213, i64 16
  store <16 x i8> %wide.load214, ptr %next.gep213, align 1, !tbaa !12
  store <16 x i8> %wide.load215, ptr %i.ha, align 1, !tbaa !12
  %index.next216 = add nuw i64 %index212, 32      ; 2 uses
  %i.hb = icmp eq i64 %index.next216, %n.vec210
  br i1 %i.hb, label %middle.block217, label %vector.body211, !llvm.loop !923

middle.block217:                                  ; preds = %vector.body211
  %ind.escape218 = getelementptr i8, ptr %i.gx, i64 -1
  %cmp.n219 = icmp eq i64 %n.vec210, %wide.trip.count122
  br i1 %cmp.n219, label %.loopexit429, label %vec.epilog.iter.check224

vec.epilog.iter.check224:                         ; preds = %middle.block217
  %min.epilog.iters.check225 = icmp eq i64 %i.gv, 0
  br i1 %min.epilog.iters.check225, label %.preheader79.preheader, label %vec.epilog.ph226, !prof !36

vec.epilog.ph226:                                 ; preds = %vector.main.loop.iter.check207, %vec.epilog.iter.check224
  %vec.epilog.resume.val220 = phi i64 [ %n.vec210, %vec.epilog.iter.check224 ], [ 0, %vector.main.loop.iter.check207 ]
  %n.vec227 = and i64 %wide.trip.count122, 2147483644 ; 6 uses
  %i.hc = or disjoint i64 %n.vec227, 1
  %i.hd = getelementptr i8, ptr %.064, i64 %n.vec227 ; 3 uses
  br label %vec.epilog.vector.body228

vec.epilog.vector.body228:                        ; preds = %vec.epilog.vector.body228, %vec.epilog.ph226
  %index229 = phi i64 [ %vec.epilog.resume.val220, %vec.epilog.ph226 ], [ %index.next232, %vec.epilog.vector.body228 ] ; 3 uses
  %next.gep230 = getelementptr i8, ptr %.064, i64 %index229
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 %index229
  %wide.load231 = load <4 x i8>, ptr %i.he, align 1, !tbaa !12
  store <4 x i8> %wide.load231, ptr %next.gep230, align 1, !tbaa !12
  %index.next232 = add nuw i64 %index229, 4       ; 2 uses
  %i.hf = icmp eq i64 %index.next232, %n.vec227
  br i1 %i.hf, label %vec.epilog.middle.block233, label %vec.epilog.vector.body228, !llvm.loop !924

vec.epilog.middle.block233:                       ; preds = %vec.epilog.vector.body228
  %ind.escape235 = getelementptr i8, ptr %i.hd, i64 -1
  %cmp.n236 = icmp eq i64 %n.vec227, %wide.trip.count122
  br i1 %cmp.n236, label %.loopexit429, label %.preheader79.preheader

.preheader79.preheader:                           ; preds = %iter.check222, %vec.epilog.iter.check224, %vec.epilog.middle.block233
  %indvars.iv124.ph = phi i64 [ 1, %iter.check222 ], [ %i.gw, %vec.epilog.iter.check224 ], [ %i.hc, %vec.epilog.middle.block233 ] ; 2 uses
  %indvars.iv119.ph = phi i64 [ 0, %iter.check222 ], [ %n.vec210, %vec.epilog.iter.check224 ], [ %n.vec227, %vec.epilog.middle.block233 ] ; 3 uses
  %.56989.ph = phi ptr [ %.064, %iter.check222 ], [ %i.gx, %vec.epilog.iter.check224 ], [ %i.hd, %vec.epilog.middle.block233 ] ; 2 uses
  %xtraiter446 = and i64 %wide.trip.count122, 3   ; 2 uses
  %lcmp.mod447.not = icmp eq i64 %xtraiter446, 0
  br i1 %lcmp.mod447.not, label %.preheader79.prol.loopexit, label %.preheader79.prol

.preheader79.prol:                                ; preds = %.preheader79.preheader, %.preheader79.prol
  %indvars.iv124.prol = phi i64 [ %indvars.iv.next125.prol, %.preheader79.prol ], [ %indvars.iv124.ph, %.preheader79.preheader ] ; 2 uses
  %indvars.iv119.prol = phi i64 [ %indvars.iv.next120.prol, %.preheader79.prol ], [ %indvars.iv119.ph, %.preheader79.preheader ] ; 2 uses
  %.56989.prol = phi ptr [ %i.hi, %.preheader79.prol ], [ %.56989.ph, %.preheader79.preheader ] ; 3 uses
  %prol.iter448 = phi i64 [ %prol.iter448.next, %.preheader79.prol ], [ 0, %.preheader79.preheader ]
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119.prol
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !12
  %i.hi = getelementptr inbounds nuw i8, ptr %.56989.prol, i64 1 ; 3 uses
  store i8 %i.hh, ptr %.56989.prol, align 1, !tbaa !12
  %indvars.iv.next120.prol = add nuw nsw i64 %indvars.iv119.prol, 1 ; 2 uses
  %indvars.iv.next125.prol = add nuw nsw i64 %indvars.iv124.prol, 1 ; 2 uses
  %prol.iter448.next = add i64 %prol.iter448, 1   ; 2 uses
  %prol.iter448.cmp.not = icmp eq i64 %prol.iter448.next, %xtraiter446
  br i1 %prol.iter448.cmp.not, label %.preheader79.prol.loopexit, label %.preheader79.prol, !llvm.loop !925

.preheader79.prol.loopexit:                       ; preds = %.preheader79.prol, %.preheader79.preheader
  %indvars.iv124.lcssa442.unr = phi i64 [ poison, %.preheader79.preheader ], [ %indvars.iv124.prol, %.preheader79.prol ]
  %.56989.lcssa441.unr = phi ptr [ poison, %.preheader79.preheader ], [ %.56989.prol, %.preheader79.prol ]
  %.lcssa440.unr = phi ptr [ poison, %.preheader79.preheader ], [ %i.hi, %.preheader79.prol ]
  %indvars.iv124.unr = phi i64 [ %indvars.iv124.ph, %.preheader79.preheader ], [ %indvars.iv.next125.prol, %.preheader79.prol ]
  %indvars.iv119.unr = phi i64 [ %indvars.iv119.ph, %.preheader79.preheader ], [ %indvars.iv.next120.prol, %.preheader79.prol ]
  %.56989.unr = phi ptr [ %.56989.ph, %.preheader79.preheader ], [ %i.hi, %.preheader79.prol ]
  %i.hj = sub nsw i64 %indvars.iv119.ph, %wide.trip.count122
  %i.hk = icmp ugt i64 %i.hj, -4
  br i1 %i.hk, label %.loopexit429, label %.preheader79

.preheader79:                                     ; preds = %.preheader79.prol.loopexit, %.preheader79
  %indvars.iv124 = phi i64 [ %indvars.iv.next125.3, %.preheader79 ], [ %indvars.iv124.unr, %.preheader79.prol.loopexit ] ; 2 uses
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.3, %.preheader79 ], [ %indvars.iv119.unr, %.preheader79.prol.loopexit ] ; 5 uses
  %.56989 = phi ptr [ %i.hz, %.preheader79 ], [ %.56989.unr, %.preheader79.prol.loopexit ] ; 6 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !12
  %i.hn = getelementptr inbounds nuw i8, ptr %.56989, i64 1
  store i8 %i.hm, ptr %.56989, align 1, !tbaa !12
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 1
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !12
  %i.hr = getelementptr inbounds nuw i8, ptr %.56989, i64 2
  store i8 %i.hq, ptr %i.hn, align 1, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !12
  %i.hv = getelementptr inbounds nuw i8, ptr %.56989, i64 3
  store i8 %i.hu, ptr %i.hr, align 1, !tbaa !12
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 3
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !12
  %i.hz = getelementptr inbounds nuw i8, ptr %.56989, i64 4 ; 2 uses
  store i8 %i.hy, ptr %i.hv, align 1, !tbaa !12
  %indvars.iv.next120.3 = add nuw nsw i64 %indvars.iv119, 4 ; 2 uses
  %exitcond123.not.3 = icmp eq i64 %indvars.iv.next120.3, %wide.trip.count122
  %indvars.iv.next125.3 = add nuw nsw i64 %indvars.iv124, 4
  br i1 %exitcond123.not.3, label %.loopexit429.loopexit.unr-lcssa, label %.preheader79, !llvm.loop !926

.loopexit429.loopexit.unr-lcssa:                  ; preds = %.preheader79
  %i.ia = getelementptr inbounds nuw i8, ptr %.56989, i64 3
  %indvars.iv.next125.2 = add nuw nsw i64 %indvars.iv124, 3
  br label %.loopexit429

.loopexit429:                                     ; preds = %.loopexit429.loopexit.unr-lcssa, %.preheader79.prol.loopexit, %vec.epilog.middle.block233, %middle.block217
  %indvars.iv124.lcssa = phi i64 [ %n.vec227, %vec.epilog.middle.block233 ], [ %n.vec210, %middle.block217 ], [ %indvars.iv124.lcssa442.unr, %.preheader79.prol.loopexit ], [ %indvars.iv.next125.2, %.loopexit429.loopexit.unr-lcssa ] ; 7 uses
  %.56989.lcssa = phi ptr [ %ind.escape235, %vec.epilog.middle.block233 ], [ %ind.escape218, %middle.block217 ], [ %.56989.lcssa441.unr, %.preheader79.prol.loopexit ], [ %i.ia, %.loopexit429.loopexit.unr-lcssa ] ; 2 uses
  %.lcssa162 = phi ptr [ %i.hd, %vec.epilog.middle.block233 ], [ %i.gx, %middle.block217 ], [ %.lcssa440.unr, %.preheader79.prol.loopexit ], [ %i.hz, %.loopexit429.loopexit.unr-lcssa ]
  %.56989.lcssa241 = ptrtoaddr ptr %.56989.lcssa to i64
  store i8 46, ptr %.lcssa162, align 1, !tbaa !12
  %.67091 = getelementptr inbounds nuw i8, ptr %.56989.lcssa, i64 2 ; 7 uses
  %i.ib = icmp slt i32 %i.e, %2
  br i1 %i.ib, label %iter.check258, label %.loopexit76

iter.check258:                                    ; preds = %.loopexit429
  %narrow = sub nsw i32 0, %3                     ; 3 uses
  %5 = zext nneg i32 %narrow to i64               ; 5 uses
  %min.iters.check243 = icmp ult i32 %narrow, 8
  br i1 %min.iters.check243, label %.lr.ph94.preheader, label %vector.memcheck240

vector.memcheck240:                               ; preds = %iter.check258
  %i.ic = add i64 %indvars.iv124.lcssa, %i.a
  %i.id = sub i64 %.56989.lcssa241, %i.ic
  %i.ie = add i64 %i.id, 1
  %diff.check242 = icmp ult i64 %i.ie, 31
  br i1 %diff.check242, label %.lr.ph94.preheader, label %vector.main.loop.iter.check244

vector.main.loop.iter.check244:                   ; preds = %vector.memcheck240
  %min.iters.check245 = icmp ult i32 %narrow, 32
  br i1 %min.iters.check245, label %vec.epilog.ph262, label %vector.ph246

vector.ph246:                                     ; preds = %vector.main.loop.iter.check244
  %i.if = and i64 %5, 24
  %n.vec247 = and i64 %5, 2147483616              ; 5 uses
  %i.ig = add i64 %indvars.iv124.lcssa, %n.vec247
  %i.ih = getelementptr i8, ptr %.67091, i64 %n.vec247 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv124.lcssa
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph246
  %index249 = phi i64 [ 0, %vector.ph246 ], [ %index.next253, %vector.body248 ] ; 3 uses
  %next.gep250 = getelementptr i8, ptr %.67091, i64 %index249 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %index249 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load251 = load <16 x i8>, ptr %i.ij, align 1, !tbaa !12
  %wide.load252 = load <16 x i8>, ptr %i.ik, align 1, !tbaa !12
  %i.il = getelementptr i8, ptr %next.gep250, i64 16
  store <16 x i8> %wide.load251, ptr %next.gep250, align 1, !tbaa !12
  store <16 x i8> %wide.load252, ptr %i.il, align 1, !tbaa !12
  %index.next253 = add nuw i64 %index249, 32      ; 2 uses
  %i.im = icmp eq i64 %index.next253, %n.vec247
  br i1 %i.im, label %middle.block254, label %vector.body248, !llvm.loop !927

middle.block254:                                  ; preds = %vector.body248
  %cmp.n255 = icmp eq i64 %n.vec247, %5
  br i1 %cmp.n255, label %.loopexit76, label %vec.epilog.iter.check260

vec.epilog.iter.check260:                         ; preds = %middle.block254
  %min.epilog.iters.check261 = icmp eq i64 %i.if, 0
  br i1 %min.epilog.iters.check261, label %.lr.ph94.preheader, label %vec.epilog.ph262, !prof !105

vec.epilog.ph262:                                 ; preds = %vector.main.loop.iter.check244, %vec.epilog.iter.check260
  %vec.epilog.resume.val256 = phi i64 [ %n.vec247, %vec.epilog.iter.check260 ], [ 0, %vector.main.loop.iter.check244 ]
  %n.vec263 = and i64 %5, 2147483640              ; 4 uses
  %i.in = add i64 %indvars.iv124.lcssa, %n.vec263
  %i.io = getelementptr i8, ptr %.67091, i64 %n.vec263 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv124.lcssa
  br label %vec.epilog.vector.body264

vec.epilog.vector.body264:                        ; preds = %vec.epilog.vector.body264, %vec.epilog.ph262
  %index265 = phi i64 [ %vec.epilog.resume.val256, %vec.epilog.ph262 ], [ %index.next268, %vec.epilog.vector.body264 ] ; 3 uses
  %next.gep266 = getelementptr i8, ptr %.67091, i64 %index265
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %index265
  %wide.load267 = load <8 x i8>, ptr %i.iq, align 1, !tbaa !12
  store <8 x i8> %wide.load267, ptr %next.gep266, align 1, !tbaa !12
  %index.next268 = add nuw i64 %index265, 8       ; 2 uses
  %i.ir = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.ir, label %vec.epilog.middle.block269, label %vec.epilog.vector.body264, !llvm.loop !928

vec.epilog.middle.block269:                       ; preds = %vec.epilog.vector.body264
  %cmp.n270 = icmp eq i64 %n.vec263, %5
  br i1 %cmp.n270, label %.loopexit76, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %vector.memcheck240, %iter.check258, %vec.epilog.iter.check260, %vec.epilog.middle.block269
  %indvars.iv126.ph = phi i64 [ %indvars.iv124.lcssa, %iter.check258 ], [ %indvars.iv124.lcssa, %vector.memcheck240 ], [ %i.ig, %vec.epilog.iter.check260 ], [ %i.in, %vec.epilog.middle.block269 ]
  %.67093.ph = phi ptr [ %.67091, %iter.check258 ], [ %.67091, %vector.memcheck240 ], [ %i.ih, %vec.epilog.iter.check260 ], [ %i.io, %vec.epilog.middle.block269 ]
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph94
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %.lr.ph94 ], [ %indvars.iv126.ph, %.lr.ph94.preheader ] ; 2 uses
  %.67093 = phi ptr [ %.670, %.lr.ph94 ], [ %.67093.ph, %.lr.ph94.preheader ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv126
  %i.it = load i8, ptr %i.is, align 1, !tbaa !12
  store i8 %i.it, ptr %.67093, align 1, !tbaa !12
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %.670 = getelementptr inbounds nuw i8, ptr %.67093, i64 1 ; 2 uses
  %6 = trunc nuw i64 %indvars.iv.next127 to i32
  %7 = icmp sgt i32 %2, %6
  br i1 %7, label %.lr.ph94, label %.loopexit76, !llvm.loop !929

bb.i:                                             ; preds = %bb.h
  %i.iu = getelementptr inbounds nuw i8, ptr %.064, i64 1
  store i8 48, ptr %.064, align 1, !tbaa !12
  %i.iv = getelementptr inbounds nuw i8, ptr %.064, i64 2 ; 6 uses
  store i8 46, ptr %i.iu, align 1, !tbaa !12
  %i.iw = icmp slt i32 %i.e, 0
  br i1 %i.iw, label %iter.check, label %.preheader80

iter.check:                                       ; preds = %bb.i
  %i.ix = sub nsw i32 0, %i.e
  %i.iy = xor i32 %3, -1
  %i.iz = sub i32 %i.iy, %2                       ; 3 uses
  %i.ja = zext i32 %i.iz to i64
  %i.jb = add nuw nsw i64 %i.ja, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.iz, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check165 = icmp ult i32 %i.iz, 31
  br i1 %min.iters.check165, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jc = and i64 %i.jb, 24
  %n.vec = and i64 %i.jb, 8589934560              ; 5 uses
  %i.jd = trunc i64 %n.vec to i32
  %i.je = getelementptr i8, ptr %i.iv, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.iv, i64 %index ; 2 uses
  %i.jf = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> splat (i8 48), ptr %next.gep, align 1, !tbaa !12
  store <16 x i8> splat (i8 48), ptr %i.jf, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jg = icmp eq i64 %index.next, %n.vec
  br i1 %i.jg, label %middle.block, label %vector.body, !llvm.loop !930

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jb, %n.vec
  br i1 %cmp.n, label %.preheader80, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !105

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec167 = and i64 %i.jb, 8589934584           ; 4 uses
  %i.jh = trunc i64 %n.vec167 to i32
  %i.ji = getelementptr i8, ptr %i.iv, i64 %n.vec167 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index168 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next170, %vec.epilog.vector.body ] ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.iv, i64 %index168
  store <8 x i8> splat (i8 48), ptr %next.gep169, align 1, !tbaa !12
  %index.next170 = add nuw i64 %index168, 8       ; 2 uses
  %i.jj = icmp eq i64 %index.next170, %n.vec167
  br i1 %i.jj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !931

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n171 = icmp eq i64 %i.jb, %n.vec167
  br i1 %cmp.n171, label %.preheader80, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.584.ph = phi i32 [ 0, %iter.check ], [ %i.jd, %vec.epilog.iter.check ], [ %i.jh, %vec.epilog.middle.block ]
  %.783.ph = phi ptr [ %i.iv, %iter.check ], [ %i.je, %vec.epilog.iter.check ], [ %i.ji, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader80:                                     ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.i
  %.7.lcssa = phi ptr [ %i.iv, %bb.i ], [ %i.ji, %vec.epilog.middle.block ], [ %i.je, %middle.block ], [ %i.kb, %.lr.ph ] ; 7 uses
  %i.jk = icmp sgt i32 %2, 0
  br i1 %i.jk, label %iter.check188, label %.loopexit76

iter.check188:                                    ; preds = %.preheader80
  %.7.lcssa174 = ptrtoaddr ptr %.7.lcssa to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %min.iters.check175 = icmp ult i32 %2, 4
  %i.jl = sub i64 %i.a, %.7.lcssa174
  %diff.check = icmp ugt i64 %i.jl, -32
  %or.cond434 = select i1 %min.iters.check175, i1 true, i1 %diff.check
  br i1 %or.cond434, label %.lr.ph87.preheader, label %vector.main.loop.iter.check176

vector.main.loop.iter.check176:                   ; preds = %iter.check188
  %min.iters.check177 = icmp ult i32 %2, 32
  br i1 %min.iters.check177, label %vec.epilog.ph192, label %vector.ph178

vector.ph178:                                     ; preds = %vector.main.loop.iter.check176
  %i.jm = and i64 %wide.trip.count, 28
  %n.vec179 = and i64 %wide.trip.count, 2147483616 ; 5 uses
  %i.jn = getelementptr i8, ptr %.7.lcssa, i64 %n.vec179 ; 2 uses
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next184, %vector.body180 ] ; 3 uses
  %next.gep182 = getelementptr i8, ptr %.7.lcssa, i64 %index181 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 %index181 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %wide.load = load <16 x i8>, ptr %i.jo, align 1, !tbaa !12
  %wide.load183 = load <16 x i8>, ptr %i.jp, align 1, !tbaa !12
  %i.jq = getelementptr i8, ptr %next.gep182, i64 16
  store <16 x i8> %wide.load, ptr %next.gep182, align 1, !tbaa !12
  store <16 x i8> %wide.load183, ptr %i.jq, align 1, !tbaa !12
  %index.next184 = add nuw i64 %index181, 32      ; 2 uses
  %i.jr = icmp eq i64 %index.next184, %n.vec179
  br i1 %i.jr, label %middle.block185, label %vector.body180, !llvm.loop !932

middle.block185:                                  ; preds = %vector.body180
  %cmp.n186 = icmp eq i64 %n.vec179, %wide.trip.count
  br i1 %cmp.n186, label %.loopexit76, label %vec.epilog.iter.check190

vec.epilog.iter.check190:                         ; preds = %middle.block185
  %min.epilog.iters.check191 = icmp eq i64 %i.jm, 0
  br i1 %min.epilog.iters.check191, label %.lr.ph87.preheader, label %vec.epilog.ph192, !prof !36

vec.epilog.ph192:                                 ; preds = %vector.main.loop.iter.check176, %vec.epilog.iter.check190
  %vec.epilog.resume.val187 = phi i64 [ %n.vec179, %vec.epilog.iter.check190 ], [ 0, %vector.main.loop.iter.check176 ]
  %n.vec193 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.js = getelementptr i8, ptr %.7.lcssa, i64 %n.vec193 ; 2 uses
  br label %vec.epilog.vector.body194

vec.epilog.vector.body194:                        ; preds = %vec.epilog.vector.body194, %vec.epilog.ph192
  %index195 = phi i64 [ %vec.epilog.resume.val187, %vec.epilog.ph192 ], [ %index.next198, %vec.epilog.vector.body194 ] ; 3 uses
  %next.gep196 = getelementptr i8, ptr %.7.lcssa, i64 %index195
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 %index195
  %wide.load197 = load <4 x i8>, ptr %i.jt, align 1, !tbaa !12
  store <4 x i8> %wide.load197, ptr %next.gep196, align 1, !tbaa !12
  %index.next198 = add nuw i64 %index195, 4       ; 2 uses
  %i.ju = icmp eq i64 %index.next198, %n.vec193
  br i1 %i.ju, label %vec.epilog.middle.block199, label %vec.epilog.vector.body194, !llvm.loop !933

vec.epilog.middle.block199:                       ; preds = %vec.epilog.vector.body194
  %cmp.n200 = icmp eq i64 %n.vec193, %wide.trip.count
  br i1 %cmp.n200, label %.loopexit76, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %iter.check188, %vec.epilog.iter.check190, %vec.epilog.middle.block199
  %indvars.iv.ph = phi i64 [ 0, %iter.check188 ], [ %n.vec179, %vec.epilog.iter.check190 ], [ %n.vec193, %vec.epilog.middle.block199 ] ; 4 uses
  %.885.ph = phi ptr [ %.7.lcssa, %iter.check188 ], [ %i.jn, %vec.epilog.iter.check190 ], [ %i.js, %vec.epilog.middle.block199 ] ; 2 uses
  %i.jv = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.jv, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol

.lr.ph87.prol:                                    ; preds = %.lr.ph87.preheader, %.lr.ph87.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph87.prol ], [ %indvars.iv.ph, %.lr.ph87.preheader ] ; 2 uses
  %.885.prol = phi ptr [ %i.jy, %.lr.ph87.prol ], [ %.885.ph, %.lr.ph87.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph87.prol ], [ 0, %.lr.ph87.preheader ]
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !12
  %i.jy = getelementptr inbounds nuw i8, ptr %.885.prol, i64 1 ; 3 uses
  store i8 %i.jx, ptr %.885.prol, align 1, !tbaa !12
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol, !llvm.loop !934

.lr.ph87.prol.loopexit:                           ; preds = %.lr.ph87.prol, %.lr.ph87.preheader
  %.lcssa444.unr = phi ptr [ poison, %.lr.ph87.preheader ], [ %i.jy, %.lr.ph87.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph87.preheader ], [ %indvars.iv.next.prol, %.lr.ph87.prol ]
  %.885.unr = phi ptr [ %.885.ph, %.lr.ph87.preheader ], [ %i.jy, %.lr.ph87.prol ]
  %i.jz = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ka = icmp ugt i64 %i.jz, -8
  br i1 %i.ka, label %.loopexit76, label %.lr.ph87

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.584 = phi i32 [ %i.kc, %.lr.ph ], [ %.584.ph, %.lr.ph.preheader ]
  %.783 = phi ptr [ %i.kb, %.lr.ph ], [ %.783.ph, %.lr.ph.preheader ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.783, i64 1 ; 2 uses
  store i8 48, ptr %.783, align 1, !tbaa !12
  %i.kc = add nuw nsw i32 %.584, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.kc, %i.ix
  br i1 %exitcond.not, label %.preheader80, label %.lr.ph, !llvm.loop !935

.lr.ph87:                                         ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph87 ], [ %indvars.iv.unr, %.lr.ph87.prol.loopexit ] ; 9 uses
  %.885 = phi ptr [ %i.lh, %.lr.ph87 ], [ %.885.unr, %.lr.ph87.prol.loopexit ] ; 9 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !12
  %i.kf = getelementptr inbounds nuw i8, ptr %.885, i64 1
  store i8 %i.ke, ptr %.885, align 1, !tbaa !12
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !12
  %i.kj = getelementptr inbounds nuw i8, ptr %.885, i64 2
  store i8 %i.ki, ptr %i.kf, align 1, !tbaa !12
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 2
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !12
  %i.kn = getelementptr inbounds nuw i8, ptr %.885, i64 3
  store i8 %i.km, ptr %i.kj, align 1, !tbaa !12
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 3
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !12
  %i.kr = getelementptr inbounds nuw i8, ptr %.885, i64 4
  store i8 %i.kq, ptr %i.kn, align 1, !tbaa !12
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
end_hunk_1
begin_hunk_2_@tg3__serialize_int_array:bb.a
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.bx, ptr noundef nonnull %5) #20
  %.not.i = icmp eq i32 %i.by, 0
  br i1 %.not.i, label %tg3__json_set_take.exit.sink.split, label %tg3__json_set_take.exit

tg3__json_set_take.exit.sink.split:               ; preds = %tg3__json_from_int_array.exit, %tg3json_object_set_take.exit.i, %tg3__json_from_int_array.exit.thread
  call void @tg3json_value_free(ptr noundef nonnull %5) #20
  br label %tg3__json_set_take.exit

tg3__json_set_take.exit:                          ; preds = %tg3__json_set_take.exit.sink.split, %tg3json_object_set_take.exit.i, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %tg3json_object_set_take.exit.i ], [ 0, %tg3__json_set_take.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_double(ptr nofree noundef nonnull captures(address_is_null) %0, ptr noundef %1, double noundef %2, double noundef nofpclass(nan inf zero sub nnorm) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %i.a = fsub double %2, %3
  %i.b = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.c = fcmp ugt double %i.b, f0x3D719799812DEA11
  %i.d = icmp ne i32 %4, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  store <4 x i8> zeroinitializer, ptr %i.e, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <8 x i8> zeroinitializer, ptr %i.f, align 8, !tbaa !12
  store i32 3, ptr %5, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %2, ptr %i.g, align 8, !tbaa !12
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %tg3json_object_set_take.exit.thread.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b, %.preheader.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.i, %.preheader.i.i.i ], [ %1, %bb.b ] ; 3 uses
  %i.h = load i8, ptr %.0.i.i.i.i, align 1, !tbaa !12
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 1
  br i1 %.not.i.i.i.i, label %tg3json_object_set_take.exit.i.i, label %.preheader.i.i.i, !llvm.loop !68

tg3json_object_set_take.exit.i.i:                 ; preds = %.preheader.i.i.i
  %i.j = ptrtoint ptr %.0.i.i.i.i to i64
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.l, ptr noundef nonnull %5) #20
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %tg3json_object_set_take.exit.thread.i.i, label %tg3__json_set_real.exit

tg3json_object_set_take.exit.thread.i.i:          ; preds = %tg3json_object_set_take.exit.i.i, %bb.b
  call void @tg3json_value_free(ptr noundef nonnull %5) #20
  br label %tg3__json_set_real.exit

tg3__json_set_real.exit:                          ; preds = %tg3json_object_set_take.exit.i.i, %tg3json_object_set_take.exit.thread.i.i
  %.0.i.i = phi i32 [ 0, %tg3json_object_set_take.exit.thread.i.i ], [ 1, %tg3json_object_set_take.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %tg3__json_set_real.exit
  %.0 = phi i32 [ %.0.i.i, %tg3__json_set_real.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_texture_info(ptr nofree noundef nonnull captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tg3json_value, align 8      ; 9 uses
  %5 = alloca %struct.tg3json_value, align 8      ; 9 uses
  %6 = alloca %struct.tg3json_value, align 8      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.a = load i32, ptr %2, align 8, !tbaa !397    ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %tg3__json_set_take.exit, label %tg3json_object_set_take.exit.i.i

tg3json_object_set_take.exit.i.i:                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 20
  store <16 x i8> zeroinitializer, ptr %i.c, align 4, !tbaa !12
  store <4 x i8> zeroinitializer, ptr %i.d, align 4, !tbaa !12
  store i32 6, ptr %6, align 8, !tbaa !13
  %i.e = zext nneg i32 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  store <4 x i8> zeroinitializer, ptr %i.f, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <8 x i8> zeroinitializer, ptr %i.g, align 8, !tbaa !12
  store i32 2, ptr %5, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.e, ptr %i.h, align 8, !tbaa !12
  %i.i = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %6, ptr noundef nonnull @.str.157, i64 noundef 5, ptr noundef nonnull %5) #20
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %tg3__json_set_int.exit.thread, label %bb.b

tg3__json_set_int.exit.thread:                    ; preds = %tg3json_object_set_take.exit.i.i
  call void @tg3json_value_free(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.d

bb.b:                                             ; preds = %tg3json_object_set_take.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !1027 ; 2 uses
  %i.l = or i32 %i.k, %3
  %or.cond.i.not = icmp eq i32 %i.l, 0
  br i1 %or.cond.i.not, label %tg3__serialize_int.exit.thread, label %tg3json_object_set_take.exit.i.i.i

tg3json_object_set_take.exit.i.i.i:               ; preds = %bb.b
  %i.m = sext i32 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  store <4 x i8> zeroinitializer, ptr %i.n, align 4, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <8 x i8> zeroinitializer, ptr %i.o, align 8, !tbaa !12
  store i32 2, ptr %4, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.m, ptr %i.p, align 8, !tbaa !12
  %i.q = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %6, ptr noundef nonnull @.str.158, i64 noundef 8, ptr noundef nonnull %4) #20
  %.not.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i, label %tg3__serialize_int.exit.thread18, label %tg3__serialize_int.exit

tg3__serialize_int.exit.thread18:                 ; preds = %tg3json_object_set_take.exit.i.i.i
  call void @tg3json_value_free(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.d

tg3__serialize_int.exit:                          ; preds = %tg3json_object_set_take.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %tg3__serialize_int.exit.thread

tg3__serialize_int.exit.thread:                   ; preds = %bb.b, %tg3__serialize_int.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %6, ptr noundef nonnull %i.r) #20
  %.not8 = icmp eq i32 %i.s, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %tg3__serialize_int.exit.thread
  %.not.i.i10 = icmp eq ptr %1, null
  br i1 %.not.i.i10, label %tg3__json_set_take.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.0.i.i.i11 = phi ptr [ %i.u, %.preheader.i.i ], [ %1, %bb.c ] ; 3 uses
  %i.t = load i8, ptr %.0.i.i.i11, align 1, !tbaa !12
  %.not.i.i.i12 = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i11, i64 1
  br i1 %.not.i.i.i12, label %tg3json_object_set_take.exit.i, label %.preheader.i.i, !llvm.loop !68

tg3json_object_set_take.exit.i:                   ; preds = %.preheader.i.i
  %i.v = ptrtoint ptr %.0.i.i.i11 to i64
  %i.w = ptrtoint ptr %1 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.x, ptr noundef nonnull %6) #20
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %tg3__json_set_take.exit.thread, label %tg3__json_set_take.exit

tg3__json_set_take.exit.thread:                   ; preds = %bb.c, %tg3json_object_set_take.exit.i
  call void @tg3json_value_free(ptr noundef nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %tg3__json_set_take.exit.thread, %tg3__serialize_int.exit.thread18, %tg3__json_set_int.exit.thread, %tg3__serialize_int.exit.thread
  call void @tg3json_value_free(ptr noundef nonnull %6) #20
  br label %tg3__json_set_take.exit

tg3__json_set_take.exit:                          ; preds = %tg3json_object_set_take.exit.i, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.a ], [ 1, %tg3json_object_set_take.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #12

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: write) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: read) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree norecurse nosync nounwind memory(none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { nobuiltin "no-builtins" }
attributes #21 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 1, !"long-double-type", !"x86_fp80"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !6, i64 0}
!14 = !{!"tg3json_value", !6, i64 0, !7, i64 8}
!15 = !{!16, !10, i64 8}
!16 = !{!"tg3json__parser", !10, i64 0, !10, i64 8, !10, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !6, i64 64}
!17 = !{!"long", !7, i64 0}
!18 = !{!16, !10, i64 16}
!19 = !{!20, !17, i64 0}
!20 = !{!"tg3json_parse_options", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !6, i64 32}
!21 = !{!17, !17, i64 0}
!22 = !{!20, !17, i64 24}
!23 = !{!20, !6, i64 32}
!24 = !{!16, !17, i64 24}
!25 = !{!16, !17, i64 48}
!26 = !{!16, !17, i64 56}
!27 = !{!16, !6, i64 64}
!28 = !{!16, !10, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!16, !17, i64 40}
!32 = !{!16, !17, i64 32}
!33 = distinct !{!33, !30, !34, !35}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!"branch_weights", i32 4, i32 28}
!37 = distinct !{!37, !30, !34, !35}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = distinct !{!40, !30, !34}
!41 = distinct !{null}
!42 = !{i64 0, i64 4, !43, i64 8, i64 16, !12}
!43 = !{!6, !6, i64 0}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
!46 = distinct !{null}
!47 = distinct !{!47, !30, !34, !35}
!48 = distinct !{!48, !30, !34, !35}
!49 = distinct !{!49, !39}
!50 = distinct !{!50, !30, !34}
!51 = !{!52, !10, i64 0}
!52 = !{!"tg3json_object_entry", !10, i64 0, !17, i64 8, !53, i64 16}
!53 = !{!"p1 _ZTS13tg3json_value", !11, i64 0}
!54 = !{!52, !17, i64 8}
!55 = !{!52, !53, i64 16}
!56 = distinct !{!56, !30}
!57 = distinct !{!57, !30}
!58 = distinct !{!58, !30}
!59 = distinct !{!59, !30}
!60 = distinct !{!60, !30}
!61 = distinct !{!61, !30}
!62 = distinct !{!62, !30}
!63 = distinct !{!63, !30}
!64 = distinct !{!64, !30, !34, !35}
!65 = distinct !{!65, !30, !34, !35}
!66 = distinct !{!66, !39}
!67 = distinct !{!67, !30, !34}
!68 = distinct !{!68, !30}
!69 = !{ptr @tg3json_array_append_copy}
!70 = distinct !{!70, !30}
!71 = !{!11, !11, i64 0}
!72 = distinct !{!72, !30, !34, !35}
!73 = distinct !{!73, !30, !34, !35}
!74 = distinct !{!74, !39}
!75 = distinct !{!75, !30, !34}
!76 = distinct !{!76, !30}
!77 = !{ptr @tg3json_object_set_copy_n}
!78 = distinct !{!78, !30}
!79 = distinct !{!79, !30, !34, !35}
!80 = distinct !{!80, !30, !34, !35}
!81 = distinct !{!81, !39}
!82 = distinct !{!82, !30, !34}
!83 = distinct !{!83, !30}
!84 = distinct !{!84, !30}
!85 = distinct !{!85, !30}
!86 = distinct !{!86, !30, !34, !35}
!87 = distinct !{!87, !30, !34, !35}
!88 = distinct !{!88, !39}
!89 = distinct !{!89, !30, !34}
!90 = distinct !{!90, !30, !34, !35}
!91 = distinct !{!91, !30, !34, !35}
!92 = distinct !{!92, !39}
!93 = distinct !{!93, !30, !34}
!94 = distinct !{!94, !30, !34, !35}
!95 = distinct !{!95, !30, !34, !35}
!96 = distinct !{!96, !39}
!97 = distinct !{!97, !30, !34}
!98 = !{!99, !10, i64 8}
!99 = !{!"tg3json__buffer", !100, i64 0, !10, i64 8, !17, i64 16, !17, i64 24}
!100 = !{!"p1 _ZTS15tg3json__parser", !11, i64 0}
!101 = !{!99, !17, i64 16}
!102 = !{!99, !100, i64 0}
!103 = distinct !{!103, !30}
!104 = distinct !{!104, !30, !34, !35}
!105 = !{!"branch_weights", i32 8, i32 24}
!106 = distinct !{!106, !30, !34, !35}
!107 = distinct !{!107, !30, !35, !34}
!108 = distinct !{!108, !30, !34, !35}
!109 = distinct !{!109, !30, !34, !35}
!110 = distinct !{!110, !39}
!111 = distinct !{!111, !30, !34}
!112 = distinct !{!112, !30}
!113 = distinct !{!113, !30}
!114 = distinct !{!114, !30}
!115 = distinct !{!115, !30}
!116 = !{!117, !117, i64 0}
!117 = !{!"double", !7, i64 0}
!118 = distinct !{!118, !30, !34, !35}
!119 = distinct !{!119, !30, !34, !35}
!120 = distinct !{!120, !30, !35, !34}
!121 = distinct !{!121, !30}
!122 = distinct !{!122, !30, !34, !35}
!123 = distinct !{!123, !30, !34, !35}
!124 = distinct !{!124, !30, !35, !34}
!125 = distinct !{!125, !30, !34, !35}
!126 = distinct !{!126, !30, !34, !35}
!127 = distinct !{!127, !39}
!128 = distinct !{!128, !30, !34}
!129 = distinct !{!129, !30}
!130 = distinct !{!130, !30}
!131 = distinct !{!131, !30}
!132 = distinct !{!132, !30}
!133 = !{!134, !6, i64 16}
!134 = !{!"tg3_error_stack", !135, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!135 = !{!"p1 _ZTS15tg3_error_entry", !11, i64 0}
!136 = !{!134, !6, i64 8}
!137 = !{!134, !135, i64 0}
!138 = !{!139, !6, i64 0}
!139 = !{!"tg3_parse_options", !6, i64 0, !6, i64 4, !140, i64 8, !142, i64 64, !143, i64 120, !144, i64 144, !145, i64 168, !11, i64 176, !11, i64 184, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !6, i64 216, !17, i64 224}
!140 = !{!"tg3_memory_config", !17, i64 0, !17, i64 8, !6, i64 16, !141, i64 24}
!141 = !{!"tg3_allocator", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!142 = !{!"tg3_fs_callbacks", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!143 = !{!"tg3_uri_callbacks", !11, i64 0, !11, i64 8, !11, i64 16}
!144 = !{!"tg3_image_callbacks", !11, i64 0, !11, i64 8, !11, i64 16}
!145 = !{!"p1 _ZTS20tg3_stream_callbacks", !11, i64 0}
!146 = !{!139, !6, i64 4}
!147 = !{!139, !17, i64 8}
!148 = !{!139, !6, i64 24}
!149 = !{!139, !17, i64 224}
!150 = !{!139, !6, i64 216}
!151 = !{!152, !6, i64 0}
!152 = !{!"tg3_write_options", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !142, i64 24, !143, i64 80, !140, i64 104}
!153 = !{!152, !17, i64 104}
!154 = !{!152, !6, i64 120}
!155 = !{!156, !6, i64 40}
!156 = !{!"tg3_buffer_view", !157, i64 0, !6, i64 16, !17, i64 24, !17, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !158, i64 56}
!157 = !{!"tg3_str", !10, i64 0, !6, i64 8}
!158 = !{!"tg3_extras_ext", !159, i64 0, !160, i64 8, !6, i64 16, !157, i64 24, !157, i64 40}
!159 = !{!"p1 _ZTS9tg3_value", !11, i64 0}
!160 = !{!"p1 _ZTS13tg3_extension", !11, i64 0}
!161 = !{!162, !6, i64 36}
!162 = !{!"tg3_accessor", !157, i64 0, !6, i64 16, !17, i64 24, !6, i64 32, !6, i64 36, !17, i64 40, !6, i64 48, !163, i64 56, !6, i64 64, !163, i64 72, !6, i64 80, !164, i64 88, !158, i64 296}
!163 = !{!"p1 double", !11, i64 0}
!164 = !{!"tg3_accessor_sparse", !6, i64 0, !6, i64 4, !165, i64 8, !166, i64 80, !158, i64 152}
!165 = !{!"tg3_accessor_sparse_indices", !17, i64 0, !6, i64 8, !6, i64 12, !158, i64 16}
!166 = !{!"tg3_accessor_sparse_values", !6, i64 0, !17, i64 8, !158, i64 16}
!167 = !{!162, !6, i64 48}
end_hunk_2
