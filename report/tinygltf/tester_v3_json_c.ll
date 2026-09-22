Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_json_c?download=true
inline.NumInlined: 131
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@tg3json_array_append_take:bb.a
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.1.i = phi i64 [ %spec.select.i, %bb.d ], [ %i.g, %.lr.ph.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.l = icmp ugt i64 %.1.i, 768614336404564650
  br i1 %i.l, label %tg3json__reserve_bytes.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.n = mul nuw i64 %.1.i, 24
  %i.o = tail call ptr @realloc(ptr noundef %i.m, i64 noundef %i.n) #21 ; 3 uses
  %.not26.i = icmp eq ptr %i.o, null
  br i1 %.not26.i, label %tg3json__reserve_bytes.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.o, ptr %i.d, align 8, !tbaa !44
  %.pre17 = load i64, ptr %i.e, align 8, !tbaa !30
  br label %tg3json__init_value.exit

tg3json__init_value.exit:                         ; preds = %.tg3json__init_value.exit_crit_edge, %bb.g
  %i.p = phi i64 [ -1, %.tg3json__init_value.exit_crit_edge ], [ %.pre17, %bb.g ] ; 2 uses
  %i.q = phi ptr [ %.pre, %.tg3json__init_value.exit_crit_edge ], [ %i.o, %bb.g ]
  %i.r = add i64 %i.p, 1
  store i64 %i.r, ptr %i.e, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !38
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
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48 ; 3 uses
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
  store i8 0, ptr %i.c, align 1, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.d = phi ptr [ %i.c, %bb.f ], [ %.pre, %bb.c ] ; 2 uses
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %._crit_edge, %bb.h
  %.sink = phi i64 [ %i.f, %bb.h ], [ 0, %._crit_edge ], [ 0, %bb.e ]
  %.0.ph = phi ptr [ %i.d, %bb.h ], [ null, %._crit_edge ], [ null, %bb.e ]
  store i64 %.sink, ptr %1, align 8, !tbaa !24
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
  %i.g = load i32, ptr %1, align 8, !tbaa !33
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
  %i.j = load i32, ptr %i.i, align 8, !tbaa !30
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
  %i.n = load i64, ptr %i.m, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 45, ptr %i.f, align 16, !tbaa !30
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
  store i8 48, ptr %i.f, align 16, !tbaa !30
  store i8 0, ptr %i.s, align 1, !tbaa !30
  br label %tg3json__itoa.exit

.preheader28.i:                                   ; preds = %.preheader28.i, %.preheader28.preheader.i
  %indvars.iv35.i = phi i64 [ 1, %.preheader28.preheader.i ], [ %indvars.iv.next36.i, %.preheader28.i ] ; 7 uses
  %indvars.iv.i = phi i64 [ 0, %.preheader28.preheader.i ], [ %indvars.iv.next.i, %.preheader28.i ] ; 2 uses
  %.12229.i = phi i64 [ %.02143.i, %.preheader28.preheader.i ], [ %i.x, %.preheader28.i ] ; 3 uses
  %i.t = urem i64 %.12229.i, 10
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = or disjoint i8 %i.u, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i
  store i8 %i.v, ptr %i.w, align 1, !tbaa !30
  %i.x = udiv i64 %.12229.i, 10
  %.not.i = icmp ult i64 %.12229.i, 10
  %indvars.iv.next36.i = add nuw i64 %indvars.iv35.i, 1
  br i1 %.not.i, label %iter.check, label %.preheader28.i, !llvm.loop !75

iter.check:                                       ; preds = %.preheader28.i
  %i.y = trunc i64 %indvars.iv35.i to i32         ; 2 uses
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
  %i.ad = sub i64 %indvars.iv35.i, %n.vec
  %i.ae = getelementptr i8, ptr %.02342.i, i64 %n.vec ; 2 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %indvars.iv35.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.02342.i, i64 %index ; 2 uses
  %i.ag = xor i64 %index, -1
  %i.ah = getelementptr i8, ptr %i.af, i64 %i.ag  ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -15
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !30
  %wide.load336 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !30
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse337 = shufflevector <16 x i8> %wide.load336, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %reverse, ptr %next.gep, align 1, !tbaa !30
  store <16 x i8> %reverse337, ptr %i.ak, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec339 = and i64 %i.ab, 8589934584           ; 4 uses
  %i.am = sub i64 %indvars.iv35.i, %n.vec339
  %i.an = getelementptr i8, ptr %.02342.i, i64 %n.vec339 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.e, i64 %indvars.iv35.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index340 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next344, %vec.epilog.vector.body ] ; 3 uses
  %next.gep341 = getelementptr i8, ptr %.02342.i, i64 %index340
  %i.ap = xor i64 %index340, -1
  %i.aq = getelementptr i8, ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -7
  %wide.load342 = load <8 x i8>, ptr %i.ar, align 1, !tbaa !30
  %reverse343 = shufflevector <8 x i8> %wide.load342, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse343, ptr %next.gep341, align 1, !tbaa !30
  %index.next344 = add nuw i64 %index340, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next344, %n.vec339
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n345 = icmp eq i64 %i.ab, %n.vec339
  br i1 %cmp.n345, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv37.i.ph = phi i64 [ %indvars.iv35.i, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.12431.i.ph = phi ptr [ %.02342.i, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %.preheader.i ], [ %indvars.iv37.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.12431.i = phi ptr [ %i.av, %.preheader.i ], [ %.12431.i.ph, %.preheader.i.preheader ] ; 2 uses
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, -1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next38.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %.12431.i, i64 1 ; 2 uses
  store i8 %i.au, ptr %.12431.i, align 1, !tbaa !30
  %i.aw = trunc nuw i64 %indvars.iv37.i to i32
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %.preheader.i, label %.loopexit, !llvm.loop !78

.loopexit:                                        ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.an, %vec.epilog.middle.block ], [ %i.ae, %middle.block ], [ %i.av, %.preheader.i ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !30
  br label %tg3json__itoa.exit

tg3json__itoa.exit:                               ; preds = %bb.h, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.ay = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #23
  %i.az = call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull %i.f, i64 noundef %i.ay)
  br label %tg3json__indent.exit.thread

bb.i:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !30 ; 4 uses
  %i.bc = bitcast double %i.bb to i64             ; 5 uses
  %i.bd = lshr i64 %i.bc, 63
  %i.be = trunc nuw nsw i64 %i.bd to i32          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.bf = fcmp ord double %i.bb, 0.000000e+00
  br i1 %i.bf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.f, ptr noundef nonnull align 1 dereferenceable(3) @.str.40, i64 3, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  br label %tg3json__dtoa_c.exit

bb.k:                                             ; preds = %bb.i
  %i.bh = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bi = bitcast double %i.bh to i64
  switch i64 %i.bi, label %bb.p [
    i64 9218868437227405312, label %bb.l
    i64 0, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %.not102.i = icmp sgt i64 %i.bc, -1
  br i1 %.not102.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1718511917, ptr %i.f, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  br label %tg3json__dtoa_c.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.f, ptr noundef nonnull align 1 dereferenceable(3) @.str.42, i64 3, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  br label %tg3json__dtoa_c.exit

bb.o:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 48, ptr %i.f, align 16, !tbaa !30
  br label %tg3json__dtoa_c.exit

bb.p:                                             ; preds = %bb.k
  switch i64 %i.bc, label %bb.s [
    i64 4607182418800017408, label %bb.q
    i64 -4616189618054758400, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 49, ptr %i.f, align 16, !tbaa !30
  br label %tg3json__dtoa_c.exit

bb.r:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 45, ptr %i.f, align 16, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 49, ptr %i.bn, align 1, !tbaa !30
  br label %tg3json__dtoa_c.exit

bb.s:                                             ; preds = %bb.p
  %i.bp = fpext double %i.bb to x86_fp80          ; 2 uses
  %i.bq = fneg x86_fp80 %i.bp
  %.not99105.i = icmp slt i64 %i.bc, 0
  %i.br = select i1 %.not99105.i, x86_fp80 %i.bq, x86_fp80 %i.bp ; 3 uses
  %i.bs = fcmp ult x86_fp80 %i.br, 1.000000e+16
  br i1 %i.bs, label %.preheader109.i, label %.lr.ph.i

.preheader109.i:                                  ; preds = %.lr.ph.i, %bb.s
  %.093.lcssa.i = phi x86_fp80 [ %i.br, %bb.s ], [ %i.bu, %.lr.ph.i ] ; 3 uses
  %.089.lcssa.i = phi i32 [ 0, %bb.s ], [ %i.bv, %.lr.ph.i ] ; 2 uses
  %i.bt = fcmp ult x86_fp80 %.093.lcssa.i, 1.000000e+01
  br i1 %i.bt, label %.preheader108.i, label %.lr.ph117.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.i
  %.089113.i = phi i32 [ %i.bv, %.lr.ph.i ], [ 0, %bb.s ]
  %.093112.i = phi x86_fp80 [ %i.bu, %.lr.ph.i ], [ %i.br, %bb.s ]
  %i.bu = fmul nnan x86_fp80 %.093112.i, f0x3FC9E69594BEC44DE15B ; 3 uses
  %i.bv = add nuw nsw i32 %.089113.i, 16          ; 2 uses
  %i.bw = fcmp ult x86_fp80 %i.bu, 1.000000e+16
  br i1 %i.bw, label %.preheader109.i, label %.lr.ph.i, !llvm.loop !79

.preheader108.i:                                  ; preds = %.lr.ph117.i, %.preheader109.i
  %.194.lcssa.i = phi x86_fp80 [ %.093.lcssa.i, %.preheader109.i ], [ %i.by, %.lr.ph117.i ] ; 3 uses
  %.190.lcssa.i = phi i32 [ %.089.lcssa.i, %.preheader109.i ], [ %i.bz, %.lr.ph117.i ] ; 2 uses
  %i.bx = fcmp olt x86_fp80 %.194.lcssa.i, 1.000000e+00
  br i1 %i.bx, label %.lr.ph122.i, label %.preheader107.i

.lr.ph117.i:                                      ; preds = %.preheader109.i, %.lr.ph117.i
  %.190116.i = phi i32 [ %i.bz, %.lr.ph117.i ], [ %.089.lcssa.i, %.preheader109.i ]
  %.194115.i = phi x86_fp80 [ %i.by, %.lr.ph117.i ], [ %.093.lcssa.i, %.preheader109.i ]
  %i.by = fmul nnan x86_fp80 %.194115.i, 1.000000e-01 ; 3 uses
  %i.bz = add nuw nsw i32 %.190116.i, 1           ; 2 uses
  %i.ca = fcmp ult x86_fp80 %i.by, 1.000000e+01
  br i1 %i.ca, label %.preheader108.i, label %.lr.ph117.i, !llvm.loop !80

.preheader107.i:                                  ; preds = %.lr.ph122.i, %.preheader108.i
  %.295.lcssa.i = phi x86_fp80 [ %.194.lcssa.i, %.preheader108.i ], [ %i.gu, %.lr.ph122.i ] ; 2 uses
  %.291.lcssa.i = phi i32 [ %.190.lcssa.i, %.preheader108.i ], [ %i.gv, %.lr.ph122.i ] ; 17 uses
  %i.cb = fptosi x86_fp80 %.295.lcssa.i to i32
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 0)
  %spec.store.select1.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.i, i32 9) ; 2 uses
  %i.cc = trunc nuw nsw i32 %spec.store.select1.i to i8
  %i.cd = or disjoint i8 %i.cc, 48
  store i8 %i.cd, ptr %i.a, align 16, !tbaa !30
  %i.ce = uitofp nneg i32 %spec.store.select1.i to x86_fp80
  %i.cf = fsub x86_fp80 %.295.lcssa.i, %i.ce
  %i.cg = fmul x86_fp80 %i.cf, 1.000000e+01       ; 2 uses
  %i.ch = fptosi x86_fp80 %i.cg to i32
  %spec.store.select.1.i = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 0)
  %spec.store.select1.1.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.1.i, i32 9) ; 2 uses
  %i.ci = trunc nuw nsw i32 %spec.store.select1.1.i to i8
  %i.cj = or disjoint i8 %i.ci, 48
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !30
  %i.cl = uitofp nneg i32 %spec.store.select1.1.i to x86_fp80
  %i.cm = fsub x86_fp80 %i.cg, %i.cl
  %i.cn = fmul x86_fp80 %i.cm, 1.000000e+01       ; 2 uses
  %i.co = fptosi x86_fp80 %i.cn to i32
  %spec.store.select.2.i = tail call i32 @llvm.smax.i32(i32 %i.co, i32 0)
  %spec.store.select1.2.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.2.i, i32 9) ; 2 uses
end_hunk_0
begin_hunk_1_@tg3json__parse_f64_c:bb.a
bb.al:                                            ; preds = %bb.ak
  %i.cm = tail call fastcc x86_fp80 @tg3json__pow10_ld(i32 noundef %.6150)
  %i.cn = fmul x86_fp80 %.0, %i.cm
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1 = phi x86_fp80 [ %i.cn, %bb.al ], [ %.0, %bb.ak ] ; 2 uses
  %i.co = fneg x86_fp80 %.1
  %spec.select191 = select i1 %.not180, x86_fp80 %.1, x86_fp80 %i.co
  %i.cp = fptrunc x86_fp80 %spec.select191 to double ; 2 uses
  store double %i.cp, ptr %2, align 8, !tbaa !54
  %i.cq = tail call double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp une double %i.cq, +inf
  %spec.select192 = zext i1 %i.cr to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.af, %bb.ac, %bb.z, %bb.aa, %bb.n, %bb.o, %bb.f, %bb.c, %bb.ah, %bb.ae
  %.0113 = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.z ], [ 1, %bb.ae ], [ 0, %bb.ac ], [ 1, %bb.ah ], [ 0, %bb.af ], [ %spec.select192, %bb.am ], [ 0, %bb.o ], [ 0, %bb.aa ]
  ret i32 %.0113
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #14

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define internal fastcc x86_fp80 @tg3json__pow10_ld(i32 noundef range(i32 -4000, -2147483648) %0) unnamed_addr #15 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %.preheader20

.preheader20:                                     ; preds = %bb.a
  %i.b = icmp samesign ugt i32 %0, 15
  br i1 %i.b, label %.lr.ph, label %.preheader18

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i32 0, %0                        ; 3 uses
  %i.d = icmp samesign ugt i32 %i.c, 15
  br i1 %i.d, label %.lr.ph30, label %.lr.ph35.preheader

.preheader:                                       ; preds = %.lr.ph30
  %.not55 = icmp eq i32 %i.f, 0
  br i1 %.not55, label %.loopexit, label %.lr.ph35.preheader

.lr.ph35.preheader:                               ; preds = %bb.b, %.preheader
  %.134.ph = phi x86_fp80 [ 1.000000e+00, %bb.b ], [ %i.e, %.preheader ]
  %.11333.ph = phi i32 [ %i.c, %bb.b ], [ %i.f, %.preheader ]
  br label %.lr.ph35

.lr.ph30:                                         ; preds = %bb.b, %.lr.ph30
  %.029 = phi x86_fp80 [ %i.e, %.lr.ph30 ], [ 1.000000e+00, %bb.b ]
  %.01228 = phi i32 [ %i.f, %.lr.ph30 ], [ %i.c, %bb.b ] ; 2 uses
  %i.e = fmul x86_fp80 %.029, f0x3FC9E69594BEC44DE15B ; 3 uses
  %i.f = add nsw i32 %.01228, -16                 ; 3 uses
  %i.g = icmp samesign ugt i32 %.01228, 31
  br i1 %i.g, label %.lr.ph30, label %.preheader, !llvm.loop !91

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %.lr.ph35
  %.134 = phi x86_fp80 [ %i.i, %.lr.ph35 ], [ %.134.ph, %.lr.ph35.preheader ]
  %.11333 = phi i32 [ %i.h, %.lr.ph35 ], [ %.11333.ph, %.lr.ph35.preheader ] ; 2 uses
  %i.h = add nsw i32 %.11333, -1
  %i.i = fmul x86_fp80 %.134, 1.000000e-01        ; 2 uses
  %i.j = icmp samesign ugt i32 %.11333, 1
  br i1 %i.j, label %.lr.ph35, label %.loopexit, !llvm.loop !92

.preheader18:                                     ; preds = %.lr.ph, %.preheader20
  %.214.lcssa = phi i32 [ %0, %.preheader20 ], [ %i.o, %.lr.ph ] ; 5 uses
  %.2.lcssa = phi x86_fp80 [ 1.000000e+00, %.preheader20 ], [ %i.n, %.lr.ph ] ; 3 uses
  %.not = icmp eq i32 %.214.lcssa, 0
  br i1 %.not, label %.loopexit, label %.lr.ph26.preheader

.lr.ph26.preheader:                               ; preds = %.preheader18
  %xtraiter = and i32 %.214.lcssa, 7              ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph26.prol.loopexit, label %.lr.ph26.prol

.lr.ph26.prol:                                    ; preds = %.lr.ph26.preheader, %.lr.ph26.prol
  %.325.prol = phi x86_fp80 [ %i.l, %.lr.ph26.prol ], [ %.2.lcssa, %.lr.ph26.preheader ]
  %.31524.prol = phi i32 [ %i.k, %.lr.ph26.prol ], [ %.214.lcssa, %.lr.ph26.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph26.prol ], [ 0, %.lr.ph26.preheader ]
  %i.k = add nsw i32 %.31524.prol, -1             ; 2 uses
  %i.l = fmul x86_fp80 %.325.prol, 1.000000e+01   ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph26.prol.loopexit, label %.lr.ph26.prol, !llvm.loop !93

.lr.ph26.prol.loopexit:                           ; preds = %.lr.ph26.prol, %.lr.ph26.preheader
  %.325.unr = phi x86_fp80 [ %.2.lcssa, %.lr.ph26.preheader ], [ %i.l, %.lr.ph26.prol ]
  %.31524.unr = phi i32 [ %.214.lcssa, %.lr.ph26.preheader ], [ %i.k, %.lr.ph26.prol ]
  %.lcssa65.unr = phi x86_fp80 [ poison, %.lr.ph26.preheader ], [ %i.l, %.lr.ph26.prol ]
  %i.m = icmp ult i32 %.214.lcssa, 8
  br i1 %i.m, label %.loopexit, label %.lr.ph26

.lr.ph:                                           ; preds = %.preheader20, %.lr.ph
  %.222 = phi x86_fp80 [ %i.n, %.lr.ph ], [ 1.000000e+00, %.preheader20 ]
  %.21421 = phi i32 [ %i.o, %.lr.ph ], [ %0, %.preheader20 ] ; 2 uses
  %i.n = fmul x86_fp80 %.222, 1.000000e+16        ; 2 uses
  %i.o = add nsw i32 %.21421, -16                 ; 2 uses
  %i.p = icmp samesign ugt i32 %.21421, 31
  br i1 %i.p, label %.lr.ph, label %.preheader18, !llvm.loop !94

.lr.ph26:                                         ; preds = %.lr.ph26.prol.loopexit, %.lr.ph26
  %.325 = phi x86_fp80 [ %i.y, %.lr.ph26 ], [ %.325.unr, %.lr.ph26.prol.loopexit ]
  %.31524 = phi i32 [ %i.x, %.lr.ph26 ], [ %.31524.unr, %.lr.ph26.prol.loopexit ] ; 2 uses
  %i.q = fmul x86_fp80 %.325, 1.000000e+01
  %i.r = fmul x86_fp80 %i.q, 1.000000e+01
  %i.s = fmul x86_fp80 %i.r, 1.000000e+01
  %i.t = fmul x86_fp80 %i.s, 1.000000e+01
  %i.u = fmul x86_fp80 %i.t, 1.000000e+01
  %i.v = fmul x86_fp80 %i.u, 1.000000e+01
  %i.w = fmul x86_fp80 %i.v, 1.000000e+01
  %i.x = add nsw i32 %.31524, -8
  %i.y = fmul x86_fp80 %i.w, 1.000000e+01         ; 2 uses
  %i.z = icmp sgt i32 %.31524, 8
  br i1 %i.z, label %.lr.ph26, label %.loopexit, !llvm.loop !95

.loopexit:                                        ; preds = %.lr.ph26.prol.loopexit, %.lr.ph26, %.lr.ph35, %.preheader18, %.preheader
  %.4 = phi x86_fp80 [ %i.i, %.lr.ph35 ], [ %i.e, %.preheader ], [ %.2.lcssa, %.preheader18 ], [ %.lcssa65.unr, %.lr.ph26.prol.loopexit ], [ %i.y, %.lr.ph26 ]
  ret x86_fp80 %.4
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3json__indent(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 1, -2147483648) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @tg3json__buf_putc(ptr noundef %0, i8 noundef signext 10)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = mul nsw i32 %2, %1                       ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.d = add nuw nsw i32 %.010, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.d, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !4

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.010 = phi i32 [ %i.d, %bb.b ], [ 0, %.preheader ]
  %i.e = tail call fastcc i32 @tg3json__buf_putc(ptr noundef %0, i8 noundef signext 32)
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.07 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 0, %.lr.ph ], [ 1, %bb.b ]
  ret i32 %.07
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @tg3json__format_decimal_digits(ptr nofree noundef nonnull writeonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 7 uses
  %i.c = alloca [16 x i8], align 16               ; 8 uses
  %i.d = add i32 %3, %2                           ; 11 uses
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.064 = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ]  ; 19 uses
  %.064173 = ptrtoaddr ptr %.064 to i64           ; 3 uses
  %i.g = add i32 %i.d, -17
  %or.cond = icmp ult i32 %i.g, -20
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %1, align 1, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %.064, i64 1 ; 2 uses
  store i8 %i.h, ptr %.064, align 1, !tbaa !30
  %i.j = icmp sgt i32 %2, 1
  br i1 %i.j, label %iter.check290, label %.loopexit

iter.check290:                                    ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.064, i64 2 ; 5 uses
  store i8 46, ptr %i.i, align 1, !tbaa !30
  %wide.trip.count142 = zext nneg i32 %2 to i64   ; 4 uses
  %i.l = add nsw i64 %wide.trip.count142, -1      ; 5 uses
  %min.iters.check275 = icmp ult i32 %2, 9
  %i.m = sub i64 %.064173, %i.a
  %diff.check274 = icmp ult i64 %i.m, 31
  %or.cond335 = select i1 %min.iters.check275, i1 true, i1 %diff.check274
  br i1 %or.cond335, label %vec.epilog.scalar.ph291.preheader, label %vector.main.loop.iter.check276

vector.main.loop.iter.check276:                   ; preds = %iter.check290
  %min.iters.check277 = icmp ult i32 %2, 33
  br i1 %min.iters.check277, label %vec.epilog.ph294, label %vector.ph278

vector.ph278:                                     ; preds = %vector.main.loop.iter.check276
  %i.n = and i64 %i.l, 24
  %n.vec279 = and i64 %i.l, -32                   ; 5 uses
  %i.o = or disjoint i64 %n.vec279, 1
  %i.p = getelementptr i8, ptr %i.k, i64 %n.vec279 ; 2 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph278
  %index281 = phi i64 [ 0, %vector.ph278 ], [ %index.next285, %vector.body280 ] ; 3 uses
  %next.gep282 = getelementptr i8, ptr %i.k, i64 %index281 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index281 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  %wide.load283 = load <16 x i8>, ptr %i.r, align 1, !tbaa !30
  %wide.load284 = load <16 x i8>, ptr %i.s, align 1, !tbaa !30
  %i.t = getelementptr i8, ptr %next.gep282, i64 16
  store <16 x i8> %wide.load283, ptr %next.gep282, align 1, !tbaa !30
  store <16 x i8> %wide.load284, ptr %i.t, align 1, !tbaa !30
  %index.next285 = add nuw i64 %index281, 32      ; 2 uses
  %i.u = icmp eq i64 %index.next285, %n.vec279
  br i1 %i.u, label %middle.block286, label %vector.body280, !llvm.loop !96

middle.block286:                                  ; preds = %vector.body280
  %cmp.n287 = icmp eq i64 %i.l, %n.vec279
  br i1 %cmp.n287, label %.loopexit, label %vec.epilog.iter.check292

vec.epilog.iter.check292:                         ; preds = %middle.block286
  %min.epilog.iters.check293 = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check293, label %vec.epilog.scalar.ph291.preheader, label %vec.epilog.ph294, !prof !52

vec.epilog.ph294:                                 ; preds = %vector.main.loop.iter.check276, %vec.epilog.iter.check292
  %vec.epilog.resume.val288 = phi i64 [ %n.vec279, %vec.epilog.iter.check292 ], [ 0, %vector.main.loop.iter.check276 ]
  %n.vec295 = and i64 %i.l, -8                    ; 4 uses
  %i.v = or disjoint i64 %n.vec295, 1
  %i.w = getelementptr i8, ptr %i.k, i64 %n.vec295 ; 2 uses
  br label %vec.epilog.vector.body296

vec.epilog.vector.body296:                        ; preds = %vec.epilog.vector.body296, %vec.epilog.ph294
  %index297 = phi i64 [ %vec.epilog.resume.val288, %vec.epilog.ph294 ], [ %index.next300, %vec.epilog.vector.body296 ] ; 3 uses
  %next.gep298 = getelementptr i8, ptr %i.k, i64 %index297
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %index297
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %wide.load299 = load <8 x i8>, ptr %i.y, align 1, !tbaa !30
  store <8 x i8> %wide.load299, ptr %next.gep298, align 1, !tbaa !30
  %index.next300 = add nuw i64 %index297, 8       ; 2 uses
  %i.z = icmp eq i64 %index.next300, %n.vec295
  br i1 %i.z, label %vec.epilog.middle.block301, label %vec.epilog.vector.body296, !llvm.loop !97

vec.epilog.middle.block301:                       ; preds = %vec.epilog.vector.body296
  %cmp.n302 = icmp eq i64 %i.l, %n.vec295
  br i1 %cmp.n302, label %.loopexit, label %vec.epilog.scalar.ph291.preheader

vec.epilog.scalar.ph291.preheader:                ; preds = %iter.check290, %vec.epilog.iter.check292, %vec.epilog.middle.block301
  %indvars.iv139.ph = phi i64 [ 1, %iter.check290 ], [ %i.o, %vec.epilog.iter.check292 ], [ %i.v, %vec.epilog.middle.block301 ] ; 4 uses
  %.165104.ph = phi ptr [ %i.k, %iter.check290 ], [ %i.p, %vec.epilog.iter.check292 ], [ %i.w, %vec.epilog.middle.block301 ] ; 2 uses
  %i.aa = sub nsw i64 %wide.trip.count142, %indvars.iv139.ph
  %xtraiter353 = and i64 %i.aa, 7                 ; 2 uses
  %lcmp.mod354.not = icmp eq i64 %xtraiter353, 0
  br i1 %lcmp.mod354.not, label %vec.epilog.scalar.ph291.prol.loopexit, label %vec.epilog.scalar.ph291.prol

vec.epilog.scalar.ph291.prol:                     ; preds = %vec.epilog.scalar.ph291.preheader, %vec.epilog.scalar.ph291.prol
  %indvars.iv139.prol = phi i64 [ %indvars.iv.next140.prol, %vec.epilog.scalar.ph291.prol ], [ %indvars.iv139.ph, %vec.epilog.scalar.ph291.preheader ] ; 2 uses
  %.165104.prol = phi ptr [ %i.ad, %vec.epilog.scalar.ph291.prol ], [ %.165104.ph, %vec.epilog.scalar.ph291.preheader ] ; 2 uses
  %prol.iter355 = phi i64 [ %prol.iter355.next, %vec.epilog.scalar.ph291.prol ], [ 0, %vec.epilog.scalar.ph291.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139.prol
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %.165104.prol, i64 1 ; 3 uses
  store i8 %i.ac, ptr %.165104.prol, align 1, !tbaa !30
  %indvars.iv.next140.prol = add nuw nsw i64 %indvars.iv139.prol, 1 ; 2 uses
  %prol.iter355.next = add i64 %prol.iter355, 1   ; 2 uses
  %prol.iter355.cmp.not = icmp eq i64 %prol.iter355.next, %xtraiter353
  br i1 %prol.iter355.cmp.not, label %vec.epilog.scalar.ph291.prol.loopexit, label %vec.epilog.scalar.ph291.prol, !llvm.loop !98

vec.epilog.scalar.ph291.prol.loopexit:            ; preds = %vec.epilog.scalar.ph291.prol, %vec.epilog.scalar.ph291.preheader
  %.lcssa340.unr = phi ptr [ poison, %vec.epilog.scalar.ph291.preheader ], [ %i.ad, %vec.epilog.scalar.ph291.prol ]
  %indvars.iv139.unr = phi i64 [ %indvars.iv139.ph, %vec.epilog.scalar.ph291.preheader ], [ %indvars.iv.next140.prol, %vec.epilog.scalar.ph291.prol ]
  %.165104.unr = phi ptr [ %.165104.ph, %vec.epilog.scalar.ph291.preheader ], [ %i.ad, %vec.epilog.scalar.ph291.prol ]
  %i.ae = sub nsw i64 %indvars.iv139.ph, %wide.trip.count142
  %i.af = icmp ugt i64 %i.ae, -8
  br i1 %i.af, label %.loopexit, label %vec.epilog.scalar.ph291

vec.epilog.scalar.ph291:                          ; preds = %vec.epilog.scalar.ph291.prol.loopexit, %vec.epilog.scalar.ph291
  %indvars.iv139 = phi i64 [ %indvars.iv.next140.7, %vec.epilog.scalar.ph291 ], [ %indvars.iv139.unr, %vec.epilog.scalar.ph291.prol.loopexit ] ; 9 uses
  %.165104 = phi ptr [ %i.bk, %vec.epilog.scalar.ph291 ], [ %.165104.unr, %vec.epilog.scalar.ph291.prol.loopexit ] ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %.165104, i64 1
  store i8 %i.ah, ptr %.165104, align 1, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %.165104, i64 2
  store i8 %i.al, ptr %i.ai, align 1, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %.165104, i64 3
  store i8 %i.ap, ptr %i.am, align 1, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %.165104, i64 4
  store i8 %i.at, ptr %i.aq, align 1, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %.165104, i64 5
  store i8 %i.ax, ptr %i.au, align 1, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %.165104, i64 6
  store i8 %i.bb, ptr %i.ay, align 1, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %.165104, i64 7
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 7
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %.165104, i64 8 ; 2 uses
  store i8 %i.bj, ptr %i.bg, align 1, !tbaa !30
  %indvars.iv.next140.7 = add nuw nsw i64 %indvars.iv139, 8 ; 2 uses
  %exitcond143.not.7 = icmp eq i64 %indvars.iv.next140.7, %wide.trip.count142
  br i1 %exitcond143.not.7, label %.loopexit, label %vec.epilog.scalar.ph291, !llvm.loop !99

.loopexit:                                        ; preds = %vec.epilog.scalar.ph291.prol.loopexit, %vec.epilog.scalar.ph291, %middle.block286, %vec.epilog.middle.block301, %bb.d
  %.266 = phi ptr [ %i.i, %bb.d ], [ %i.w, %vec.epilog.middle.block301 ], [ %i.p, %middle.block286 ], [ %.lcssa340.unr, %vec.epilog.scalar.ph291.prol.loopexit ], [ %i.bk, %vec.epilog.scalar.ph291 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.bl = getelementptr inbounds nuw i8, ptr %.266, i64 1 ; 3 uses
  store i8 101, ptr %.266, align 1, !tbaa !30
  %i.bm = icmp slt i32 %i.d, 1
  br i1 %i.bm, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %.loopexit
  %i.bn = getelementptr inbounds nuw i8, ptr %.266, i64 2
  store i8 45, ptr %i.bl, align 1, !tbaa !30
  %i.bo = sub nsw i32 1, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  br label %.preheader19.i.preheader.i

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.bp = icmp eq i32 %i.e, 0
  br i1 %i.bp, label %bb.f, label %.preheader19.i.preheader.i

.preheader19.i.preheader.i:                       ; preds = %bb.e, %.thread.i
  %.017.i = phi i32 [ %i.bo, %.thread.i ], [ %i.e, %bb.e ]
  %.0816.i = phi ptr [ %i.bn, %.thread.i ], [ %i.bl, %bb.e ] ; 3 uses
  %i.bq = zext nneg i32 %.017.i to i64
  br label %.preheader19.i.i

bb.f:                                             ; preds = %bb.e
  store i8 48, ptr %i.c, align 16, !tbaa !30
  br label %tg3json__write_exp.exit

.preheader19.i.i:                                 ; preds = %.preheader19.i.i, %.preheader19.i.preheader.i
  %.01421.i.i = phi i64 [ %i.bu, %.preheader19.i.i ], [ 0, %.preheader19.i.preheader.i ] ; 6 uses
  %.01620.i.i = phi i64 [ %i.bw, %.preheader19.i.i ], [ %i.bq, %.preheader19.i.preheader.i ] ; 3 uses
  %i.br = urem i64 %.01620.i.i, 10
  %i.bs = trunc nuw nsw i64 %i.br to i8
  %i.bt = or disjoint i8 %i.bs, 48
  %i.bu = add nuw i64 %.01421.i.i, 1              ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01421.i.i
  store i8 %i.bt, ptr %i.bv, align 1, !tbaa !30
  %i.bw = udiv i64 %.01620.i.i, 10
  %.not.i.i = icmp samesign ult i64 %.01620.i.i, 10
  br i1 %.not.i.i, label %iter.check319, label %.preheader19.i.i, !llvm.loop !100

iter.check319:                                    ; preds = %.preheader19.i.i
  %min.iters.check305 = icmp ult i64 %.01421.i.i, 7
  br i1 %min.iters.check305, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check306

vector.main.loop.iter.check306:                   ; preds = %iter.check319
  %min.iters.check307 = icmp ult i64 %.01421.i.i, 31
  br i1 %min.iters.check307, label %vec.epilog.ph323, label %vector.ph308

vector.ph308:                                     ; preds = %vector.main.loop.iter.check306
  %i.bx = and i64 %i.bu, 24
  %n.vec309 = and i64 %i.bu, -32                  ; 5 uses
  %i.by = and i64 %i.bu, 31
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph308
  %index311 = phi i64 [ 0, %vector.ph308 ], [ %index.next315, %vector.body310 ] ; 3 uses
  %i.bz = sub i64 %.01421.i.i, %index311
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -15
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -31
  %wide.load312 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !30
  %wide.load313 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !30
  %reverse = shufflevector <16 x i8> %wide.load312, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse314 = shufflevector <16 x i8> %wide.load313, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %index311 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <16 x i8> %reverse, ptr %i.cd, align 16, !tbaa !30
  store <16 x i8> %reverse314, ptr %i.ce, align 16, !tbaa !30
  %index.next315 = add nuw i64 %index311, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next315, %n.vec309
  br i1 %i.cf, label %middle.block316, label %vector.body310, !llvm.loop !101

middle.block316:                                  ; preds = %vector.body310
  %cmp.n317 = icmp eq i64 %i.bu, %n.vec309
  br i1 %cmp.n317, label %tg3json__write_exp.exit, label %vec.epilog.iter.check321

vec.epilog.iter.check321:                         ; preds = %middle.block316
  %min.epilog.iters.check322 = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check322, label %.preheader.i.i.preheader, label %vec.epilog.ph323, !prof !52

vec.epilog.ph323:                                 ; preds = %vector.main.loop.iter.check306, %vec.epilog.iter.check321
  %vec.epilog.resume.val318 = phi i64 [ %n.vec309, %vec.epilog.iter.check321 ], [ 0, %vector.main.loop.iter.check306 ]
  %n.vec324 = and i64 %i.bu, -8                   ; 4 uses
  %i.cg = and i64 %i.bu, 7
  br label %vec.epilog.vector.body325

vec.epilog.vector.body325:                        ; preds = %vec.epilog.vector.body325, %vec.epilog.ph323
  %index326 = phi i64 [ %vec.epilog.resume.val318, %vec.epilog.ph323 ], [ %index.next329, %vec.epilog.vector.body325 ] ; 3 uses
  %i.ch = sub i64 %.01421.i.i, %index326
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -7
  %wide.load327 = load <8 x i8>, ptr %i.cj, align 1, !tbaa !30
  %reverse328 = shufflevector <8 x i8> %wide.load327, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 %index326
  store <8 x i8> %reverse328, ptr %i.ck, align 8, !tbaa !30
  %index.next329 = add nuw i64 %index326, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next329, %n.vec324
  br i1 %i.cl, label %vec.epilog.middle.block330, label %vec.epilog.vector.body325, !llvm.loop !102

vec.epilog.middle.block330:                       ; preds = %vec.epilog.vector.body325
  %cmp.n331 = icmp eq i64 %i.bu, %n.vec324
  br i1 %cmp.n331, label %tg3json__write_exp.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %iter.check319, %vec.epilog.iter.check321, %vec.epilog.middle.block330
  %.023.i.i.ph = phi i64 [ 0, %iter.check319 ], [ %n.vec309, %vec.epilog.iter.check321 ], [ %n.vec324, %vec.epilog.middle.block330 ]
  %.122.i.i.ph = phi i64 [ %i.bu, %iter.check319 ], [ %i.by, %vec.epilog.iter.check321 ], [ %i.cg, %vec.epilog.middle.block330 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.023.i.i = phi i64 [ %i.cp, %.preheader.i.i ], [ %.023.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.122.i.i = phi i64 [ %i.cm, %.preheader.i.i ], [ %.122.i.i.ph, %.preheader.i.i.preheader ]
  %i.cm = add i64 %.122.i.i, -1                   ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !30
  %i.cp = add nuw nsw i64 %.023.i.i, 1            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.023.i.i
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !30
  %.not18.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not18.i.i, label %tg3json__write_exp.exit, label %.preheader.i.i, !llvm.loop !103

tg3json__write_exp.exit:                          ; preds = %.preheader.i.i, %middle.block316, %vec.epilog.middle.block330, %bb.f
  %.0815.i = phi ptr [ %i.bl, %bb.f ], [ %.0816.i, %middle.block316 ], [ %.0816.i, %vec.epilog.middle.block330 ], [ %.0816.i, %.preheader.i.i ] ; 2 uses
  %.lcssa.sink.i.i = phi i64 [ 1, %bb.f ], [ %n.vec309, %middle.block316 ], [ %n.vec324, %vec.epilog.middle.block330 ], [ %i.cp, %.preheader.i.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.lcssa.sink.i.i
  store i8 0, ptr %i.cr, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0815.i, ptr noundef nonnull align 16 dereferenceable(1) %i.c, i64 %.lcssa.sink.i.i, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.0815.i, i64 %.lcssa.sink.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %.loopexit76

bb.g:                                             ; preds = %bb.c
  %i.ct = icmp sgt i32 %3, -1
  br i1 %i.ct, label %.preheader77, label %bb.h

.preheader77:                                     ; preds = %bb.g
  %i.cu = icmp sgt i32 %2, 0
  br i1 %i.cu, label %iter.check258, label %.preheader

iter.check258:                                    ; preds = %.preheader77
  %wide.trip.count133 = zext nneg i32 %2 to i64   ; 8 uses
  %min.iters.check244 = icmp ult i32 %2, 4
  %i.cv = sub i64 %i.a, %.064173
  %diff.check243 = icmp ugt i64 %i.cv, -32
  %or.cond336 = select i1 %min.iters.check244, i1 true, i1 %diff.check243
  br i1 %or.cond336, label %.lr.ph98.preheader, label %vector.main.loop.iter.check245

vector.main.loop.iter.check245:                   ; preds = %iter.check258
  %min.iters.check246 = icmp ult i32 %2, 32
  br i1 %min.iters.check246, label %vec.epilog.ph262, label %vector.ph247

vector.ph247:                                     ; preds = %vector.main.loop.iter.check245
  %i.cw = and i64 %wide.trip.count133, 28
  %n.vec248 = and i64 %wide.trip.count133, 2147483616 ; 5 uses
  %i.cx = getelementptr i8, ptr %.064, i64 %n.vec248 ; 2 uses
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph247
  %index250 = phi i64 [ 0, %vector.ph247 ], [ %index.next254, %vector.body249 ] ; 3 uses
  %next.gep251 = getelementptr i8, ptr %.064, i64 %index250 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %index250 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load252 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !30
  %wide.load253 = load <16 x i8>, ptr %i.cz, align 1, !tbaa !30
  %i.da = getelementptr i8, ptr %next.gep251, i64 16
  store <16 x i8> %wide.load252, ptr %next.gep251, align 1, !tbaa !30
  store <16 x i8> %wide.load253, ptr %i.da, align 1, !tbaa !30
  %index.next254 = add nuw i64 %index250, 32      ; 2 uses
  %i.db = icmp eq i64 %index.next254, %n.vec248
  br i1 %i.db, label %middle.block255, label %vector.body249, !llvm.loop !104

middle.block255:                                  ; preds = %vector.body249
  %cmp.n256 = icmp eq i64 %n.vec248, %wide.trip.count133
  br i1 %cmp.n256, label %.preheader, label %vec.epilog.iter.check260

vec.epilog.iter.check260:                         ; preds = %middle.block255
  %min.epilog.iters.check261 = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check261, label %.lr.ph98.preheader, label %vec.epilog.ph262, !prof !119

vec.epilog.ph262:                                 ; preds = %vector.main.loop.iter.check245, %vec.epilog.iter.check260
  %vec.epilog.resume.val257 = phi i64 [ %n.vec248, %vec.epilog.iter.check260 ], [ 0, %vector.main.loop.iter.check245 ]
  %n.vec263 = and i64 %wide.trip.count133, 2147483644 ; 4 uses
  %i.dc = getelementptr i8, ptr %.064, i64 %n.vec263 ; 2 uses
  br label %vec.epilog.vector.body264

vec.epilog.vector.body264:                        ; preds = %vec.epilog.vector.body264, %vec.epilog.ph262
  %index265 = phi i64 [ %vec.epilog.resume.val257, %vec.epilog.ph262 ], [ %index.next268, %vec.epilog.vector.body264 ] ; 3 uses
  %next.gep266 = getelementptr i8, ptr %.064, i64 %index265
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %index265
  %wide.load267 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !30
  store <4 x i8> %wide.load267, ptr %next.gep266, align 1, !tbaa !30
  %index.next268 = add nuw i64 %index265, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.de, label %vec.epilog.middle.block269, label %vec.epilog.vector.body264, !llvm.loop !105

vec.epilog.middle.block269:                       ; preds = %vec.epilog.vector.body264
  %cmp.n270 = icmp eq i64 %n.vec263, %wide.trip.count133
  br i1 %cmp.n270, label %.preheader, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %iter.check258, %vec.epilog.iter.check260, %vec.epilog.middle.block269
  %indvars.iv130.ph = phi i64 [ 0, %iter.check258 ], [ %n.vec248, %vec.epilog.iter.check260 ], [ %n.vec263, %vec.epilog.middle.block269 ] ; 4 uses
  %.36796.ph = phi ptr [ %.064, %iter.check258 ], [ %i.cx, %vec.epilog.iter.check260 ], [ %i.dc, %vec.epilog.middle.block269 ] ; 2 uses
  %i.df = sub nsw i64 %wide.trip.count133, %indvars.iv130.ph
  %xtraiter350 = and i64 %i.df, 7                 ; 2 uses
  %lcmp.mod351.not = icmp eq i64 %xtraiter350, 0
  br i1 %lcmp.mod351.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol

.lr.ph98.prol:                                    ; preds = %.lr.ph98.preheader, %.lr.ph98.prol
  %indvars.iv130.prol = phi i64 [ %indvars.iv.next131.prol, %.lr.ph98.prol ], [ %indvars.iv130.ph, %.lr.ph98.preheader ] ; 2 uses
  %.36796.prol = phi ptr [ %i.di, %.lr.ph98.prol ], [ %.36796.ph, %.lr.ph98.preheader ] ; 2 uses
  %prol.iter352 = phi i64 [ %prol.iter352.next, %.lr.ph98.prol ], [ 0, %.lr.ph98.preheader ]
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130.prol
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %.36796.prol, i64 1 ; 3 uses
  store i8 %i.dh, ptr %.36796.prol, align 1, !tbaa !30
  %indvars.iv.next131.prol = add nuw nsw i64 %indvars.iv130.prol, 1 ; 2 uses
  %prol.iter352.next = add i64 %prol.iter352, 1   ; 2 uses
  %prol.iter352.cmp.not = icmp eq i64 %prol.iter352.next, %xtraiter350
  br i1 %prol.iter352.cmp.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol, !llvm.loop !106

.lr.ph98.prol.loopexit:                           ; preds = %.lr.ph98.prol, %.lr.ph98.preheader
  %.lcssa341.unr = phi ptr [ poison, %.lr.ph98.preheader ], [ %i.di, %.lr.ph98.prol ]
  %indvars.iv130.unr = phi i64 [ %indvars.iv130.ph, %.lr.ph98.preheader ], [ %indvars.iv.next131.prol, %.lr.ph98.prol ]
  %.36796.unr = phi ptr [ %.36796.ph, %.lr.ph98.preheader ], [ %i.di, %.lr.ph98.prol ]
  %i.dj = sub nsw i64 %indvars.iv130.ph, %wide.trip.count133
  %i.dk = icmp ugt i64 %i.dj, -8
  br i1 %i.dk, label %.preheader, label %.lr.ph98

.preheader:                                       ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98, %middle.block255, %vec.epilog.middle.block269, %.preheader77
  %.367.lcssa = phi ptr [ %.064, %.preheader77 ], [ %i.dc, %vec.epilog.middle.block269 ], [ %i.cx, %middle.block255 ], [ %.lcssa341.unr, %.lr.ph98.prol.loopexit ], [ %i.eq, %.lr.ph98 ] ; 3 uses
  %.not106 = icmp eq i32 %3, 0
  br i1 %.not106, label %.loopexit76, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %.preheader
  %i.dl = zext nneg i32 %3 to i64                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.367.lcssa, i8 48, i64 %i.dl, i1 false), !tbaa !30
  %scevgep137 = getelementptr i8, ptr %.367.lcssa, i64 %i.dl
  br label %.loopexit76

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %indvars.iv130 = phi i64 [ %indvars.iv.next131.7, %.lr.ph98 ], [ %indvars.iv130.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %.36796 = phi ptr [ %i.eq, %.lr.ph98 ], [ %.36796.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !30
  %i.do = getelementptr inbounds nuw i8, ptr %.36796, i64 1
  store i8 %i.dn, ptr %.36796, align 1, !tbaa !30
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !30
  %i.ds = getelementptr inbounds nuw i8, ptr %.36796, i64 2
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !30
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !30
  %i.dw = getelementptr inbounds nuw i8, ptr %.36796, i64 3
  store i8 %i.dv, ptr %i.ds, align 1, !tbaa !30
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !30
  %i.ea = getelementptr inbounds nuw i8, ptr %.36796, i64 4
  store i8 %i.dz, ptr %i.dw, align 1, !tbaa !30
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !30
  %i.ee = getelementptr inbounds nuw i8, ptr %.36796, i64 5
  store i8 %i.ed, ptr %i.ea, align 1, !tbaa !30
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 5
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !30
  %i.ei = getelementptr inbounds nuw i8, ptr %.36796, i64 6
  store i8 %i.eh, ptr %i.ee, align 1, !tbaa !30
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 6
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !30
  %i.em = getelementptr inbounds nuw i8, ptr %.36796, i64 7
  store i8 %i.el, ptr %i.ei, align 1, !tbaa !30
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 7
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !30
  %i.eq = getelementptr inbounds nuw i8, ptr %.36796, i64 8 ; 2 uses
  store i8 %i.ep, ptr %i.em, align 1, !tbaa !30
  %indvars.iv.next131.7 = add nuw nsw i64 %indvars.iv130, 8 ; 2 uses
  %exitcond134.not.7 = icmp eq i64 %indvars.iv.next131.7, %wide.trip.count133
  br i1 %exitcond134.not.7, label %.preheader, label %.lr.ph98, !llvm.loop !107

bb.h:                                             ; preds = %bb.g
  %i.er = icmp sgt i32 %i.d, 0
  br i1 %i.er, label %iter.check191, label %bb.i

iter.check191:                                    ; preds = %bb.h
  %wide.trip.count122 = zext nneg i32 %i.d to i64 ; 8 uses
  %min.iters.check175 = icmp ult i32 %i.d, 4
  %i.es = sub i64 %i.a, %.064173
  %diff.check174 = icmp ugt i64 %i.es, -32
  %or.cond337 = select i1 %min.iters.check175, i1 true, i1 %diff.check174
  br i1 %or.cond337, label %.preheader79.preheader, label %vector.main.loop.iter.check176

vector.main.loop.iter.check176:                   ; preds = %iter.check191
  %min.iters.check177 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check177, label %vec.epilog.ph195, label %vector.ph178

vector.ph178:                                     ; preds = %vector.main.loop.iter.check176
  %i.et = and i64 %wide.trip.count122, 28
  %n.vec179 = and i64 %wide.trip.count122, 2147483616 ; 7 uses
  %i.eu = or disjoint i64 %n.vec179, 1
  %i.ev = getelementptr i8, ptr %.064, i64 %n.vec179 ; 3 uses
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next185, %vector.body180 ] ; 3 uses
  %next.gep182 = getelementptr i8, ptr %.064, i64 %index181 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %index181 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load183 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !30
  %wide.load184 = load <16 x i8>, ptr %i.ex, align 1, !tbaa !30
  %i.ey = getelementptr i8, ptr %next.gep182, i64 16
  store <16 x i8> %wide.load183, ptr %next.gep182, align 1, !tbaa !30
  store <16 x i8> %wide.load184, ptr %i.ey, align 1, !tbaa !30
  %index.next185 = add nuw i64 %index181, 32      ; 2 uses
  %i.ez = icmp eq i64 %index.next185, %n.vec179
  br i1 %i.ez, label %middle.block186, label %vector.body180, !llvm.loop !108

middle.block186:                                  ; preds = %vector.body180
  %ind.escape187 = getelementptr i8, ptr %i.ev, i64 -1
  %cmp.n188 = icmp eq i64 %n.vec179, %wide.trip.count122
  br i1 %cmp.n188, label %.loopexit334, label %vec.epilog.iter.check193

vec.epilog.iter.check193:                         ; preds = %middle.block186
  %min.epilog.iters.check194 = icmp eq i64 %i.et, 0
  br i1 %min.epilog.iters.check194, label %.preheader79.preheader, label %vec.epilog.ph195, !prof !119

vec.epilog.ph195:                                 ; preds = %vector.main.loop.iter.check176, %vec.epilog.iter.check193
  %vec.epilog.resume.val189 = phi i64 [ %n.vec179, %vec.epilog.iter.check193 ], [ 0, %vector.main.loop.iter.check176 ]
  %n.vec196 = and i64 %wide.trip.count122, 2147483644 ; 6 uses
  %i.fa = or disjoint i64 %n.vec196, 1
  %i.fb = getelementptr i8, ptr %.064, i64 %n.vec196 ; 3 uses
  br label %vec.epilog.vector.body197

vec.epilog.vector.body197:                        ; preds = %vec.epilog.vector.body197, %vec.epilog.ph195
  %index198 = phi i64 [ %vec.epilog.resume.val189, %vec.epilog.ph195 ], [ %index.next201, %vec.epilog.vector.body197 ] ; 3 uses
  %next.gep199 = getelementptr i8, ptr %.064, i64 %index198
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 %index198
  %wide.load200 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !30
  store <4 x i8> %wide.load200, ptr %next.gep199, align 1, !tbaa !30
  %index.next201 = add nuw i64 %index198, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next201, %n.vec196
  br i1 %i.fd, label %vec.epilog.middle.block202, label %vec.epilog.vector.body197, !llvm.loop !109

vec.epilog.middle.block202:                       ; preds = %vec.epilog.vector.body197
  %ind.escape204 = getelementptr i8, ptr %i.fb, i64 -1
  %cmp.n205 = icmp eq i64 %n.vec196, %wide.trip.count122
  br i1 %cmp.n205, label %.loopexit334, label %.preheader79.preheader

.preheader79.preheader:                           ; preds = %iter.check191, %vec.epilog.iter.check193, %vec.epilog.middle.block202
  %indvars.iv125.ph = phi i64 [ 1, %iter.check191 ], [ %i.eu, %vec.epilog.iter.check193 ], [ %i.fa, %vec.epilog.middle.block202 ] ; 2 uses
  %indvars.iv119.ph = phi i64 [ 0, %iter.check191 ], [ %n.vec179, %vec.epilog.iter.check193 ], [ %n.vec196, %vec.epilog.middle.block202 ] ; 3 uses
  %.56989.ph = phi ptr [ %.064, %iter.check191 ], [ %i.ev, %vec.epilog.iter.check193 ], [ %i.fb, %vec.epilog.middle.block202 ] ; 2 uses
  %xtraiter347 = and i64 %wide.trip.count122, 3   ; 2 uses
  %lcmp.mod348.not = icmp eq i64 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %.preheader79.prol.loopexit, label %.preheader79.prol

.preheader79.prol:                                ; preds = %.preheader79.preheader, %.preheader79.prol
  %indvars.iv125.prol = phi i64 [ %indvars.iv.next126.prol, %.preheader79.prol ], [ %indvars.iv125.ph, %.preheader79.preheader ] ; 2 uses
  %indvars.iv119.prol = phi i64 [ %indvars.iv.next120.prol, %.preheader79.prol ], [ %indvars.iv119.ph, %.preheader79.preheader ] ; 2 uses
  %.56989.prol = phi ptr [ %i.fg, %.preheader79.prol ], [ %.56989.ph, %.preheader79.preheader ] ; 3 uses
  %prol.iter349 = phi i64 [ %prol.iter349.next, %.preheader79.prol ], [ 0, %.preheader79.preheader ]
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119.prol
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !30
  %i.fg = getelementptr inbounds nuw i8, ptr %.56989.prol, i64 1 ; 3 uses
  store i8 %i.ff, ptr %.56989.prol, align 1, !tbaa !30
  %indvars.iv.next120.prol = add nuw nsw i64 %indvars.iv119.prol, 1 ; 2 uses
  %indvars.iv.next126.prol = add nuw nsw i64 %indvars.iv125.prol, 1 ; 2 uses
  %prol.iter349.next = add i64 %prol.iter349, 1   ; 2 uses
  %prol.iter349.cmp.not = icmp eq i64 %prol.iter349.next, %xtraiter347
  br i1 %prol.iter349.cmp.not, label %.preheader79.prol.loopexit, label %.preheader79.prol, !llvm.loop !110

.preheader79.prol.loopexit:                       ; preds = %.preheader79.prol, %.preheader79.preheader
  %indvars.iv125.lcssa344.unr = phi i64 [ poison, %.preheader79.preheader ], [ %indvars.iv125.prol, %.preheader79.prol ]
  %.56989.lcssa343.unr = phi ptr [ poison, %.preheader79.preheader ], [ %.56989.prol, %.preheader79.prol ]
  %.lcssa342.unr = phi ptr [ poison, %.preheader79.preheader ], [ %i.fg, %.preheader79.prol ]
  %indvars.iv125.unr = phi i64 [ %indvars.iv125.ph, %.preheader79.preheader ], [ %indvars.iv.next126.prol, %.preheader79.prol ]
  %indvars.iv119.unr = phi i64 [ %indvars.iv119.ph, %.preheader79.preheader ], [ %indvars.iv.next120.prol, %.preheader79.prol ]
  %.56989.unr = phi ptr [ %.56989.ph, %.preheader79.preheader ], [ %i.fg, %.preheader79.prol ]
  %i.fh = sub nsw i64 %indvars.iv119.ph, %wide.trip.count122
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %.loopexit334, label %.preheader79

.preheader79:                                     ; preds = %.preheader79.prol.loopexit, %.preheader79
  %indvars.iv125 = phi i64 [ %indvars.iv.next126.3, %.preheader79 ], [ %indvars.iv125.unr, %.preheader79.prol.loopexit ] ; 2 uses
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.3, %.preheader79 ], [ %indvars.iv119.unr, %.preheader79.prol.loopexit ] ; 5 uses
  %.56989 = phi ptr [ %i.fx, %.preheader79 ], [ %.56989.unr, %.preheader79.prol.loopexit ] ; 6 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !30
  %i.fl = getelementptr inbounds nuw i8, ptr %.56989, i64 1
  store i8 %i.fk, ptr %.56989, align 1, !tbaa !30
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !30
  %i.fp = getelementptr inbounds nuw i8, ptr %.56989, i64 2
  store i8 %i.fo, ptr %i.fl, align 1, !tbaa !30
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !30
  %i.ft = getelementptr inbounds nuw i8, ptr %.56989, i64 3
  store i8 %i.fs, ptr %i.fp, align 1, !tbaa !30
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 3
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !30
  %i.fx = getelementptr inbounds nuw i8, ptr %.56989, i64 4 ; 2 uses
  store i8 %i.fw, ptr %i.ft, align 1, !tbaa !30
  %indvars.iv.next120.3 = add nuw nsw i64 %indvars.iv119, 4 ; 2 uses
  %exitcond123.not.3 = icmp eq i64 %indvars.iv.next120.3, %wide.trip.count122
  %indvars.iv.next126.3 = add nuw nsw i64 %indvars.iv125, 4
  br i1 %exitcond123.not.3, label %.loopexit334.loopexit.unr-lcssa, label %.preheader79, !llvm.loop !111

.loopexit334.loopexit.unr-lcssa:                  ; preds = %.preheader79
  %i.fy = getelementptr inbounds nuw i8, ptr %.56989, i64 3
  %indvars.iv.next126.2 = add nuw nsw i64 %indvars.iv125, 3
  br label %.loopexit334

.loopexit334:                                     ; preds = %.loopexit334.loopexit.unr-lcssa, %.preheader79.prol.loopexit, %vec.epilog.middle.block202, %middle.block186
  %indvars.iv125.lcssa = phi i64 [ %n.vec196, %vec.epilog.middle.block202 ], [ %n.vec179, %middle.block186 ], [ %indvars.iv125.lcssa344.unr, %.preheader79.prol.loopexit ], [ %indvars.iv.next126.2, %.loopexit334.loopexit.unr-lcssa ] ; 7 uses
  %.56989.lcssa = phi ptr [ %ind.escape204, %vec.epilog.middle.block202 ], [ %ind.escape187, %middle.block186 ], [ %.56989.lcssa343.unr, %.preheader79.prol.loopexit ], [ %i.fy, %.loopexit334.loopexit.unr-lcssa ] ; 2 uses
  %.lcssa159 = phi ptr [ %i.fb, %vec.epilog.middle.block202 ], [ %i.ev, %middle.block186 ], [ %.lcssa342.unr, %.preheader79.prol.loopexit ], [ %i.fx, %.loopexit334.loopexit.unr-lcssa ]
  %.56989.lcssa210 = ptrtoaddr ptr %.56989.lcssa to i64
  store i8 46, ptr %.lcssa159, align 1, !tbaa !30
  %.67091 = getelementptr inbounds nuw i8, ptr %.56989.lcssa, i64 2 ; 7 uses
  %i.fz = icmp slt i32 %i.d, %2
  br i1 %i.fz, label %iter.check227, label %.loopexit76

iter.check227:                                    ; preds = %.loopexit334
  %narrow = sub nsw i32 0, %3                     ; 3 uses
  %i.ga = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check212 = icmp ult i32 %narrow, 8
  br i1 %min.iters.check212, label %.lr.ph94.preheader, label %vector.memcheck209

vector.memcheck209:                               ; preds = %iter.check227
  %i.gb = add i64 %indvars.iv125.lcssa, %i.a
  %i.gc = sub i64 %.56989.lcssa210, %i.gb
  %i.gd = add i64 %i.gc, 1
  %diff.check211 = icmp ult i64 %i.gd, 31
  br i1 %diff.check211, label %.lr.ph94.preheader, label %vector.main.loop.iter.check213

vector.main.loop.iter.check213:                   ; preds = %vector.memcheck209
  %min.iters.check214 = icmp ult i32 %narrow, 32
  br i1 %min.iters.check214, label %vec.epilog.ph231, label %vector.ph215

vector.ph215:                                     ; preds = %vector.main.loop.iter.check213
  %i.ge = and i64 %i.ga, 24
  %n.vec216 = and i64 %i.ga, 2147483616           ; 5 uses
  %i.gf = add i64 %indvars.iv125.lcssa, %n.vec216
  %i.gg = getelementptr i8, ptr %.67091, i64 %n.vec216 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv125.lcssa
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph215
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next222, %vector.body217 ] ; 3 uses
  %next.gep219 = getelementptr i8, ptr %.67091, i64 %index218 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %index218 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load220 = load <16 x i8>, ptr %i.gi, align 1, !tbaa !30
  %wide.load221 = load <16 x i8>, ptr %i.gj, align 1, !tbaa !30
  %i.gk = getelementptr i8, ptr %next.gep219, i64 16
  store <16 x i8> %wide.load220, ptr %next.gep219, align 1, !tbaa !30
  store <16 x i8> %wide.load221, ptr %i.gk, align 1, !tbaa !30
  %index.next222 = add nuw i64 %index218, 32      ; 2 uses
  %i.gl = icmp eq i64 %index.next222, %n.vec216
  br i1 %i.gl, label %middle.block223, label %vector.body217, !llvm.loop !112

middle.block223:                                  ; preds = %vector.body217
  %cmp.n224 = icmp eq i64 %n.vec216, %i.ga
  br i1 %cmp.n224, label %.loopexit76, label %vec.epilog.iter.check229

vec.epilog.iter.check229:                         ; preds = %middle.block223
  %min.epilog.iters.check230 = icmp eq i64 %i.ge, 0
  br i1 %min.epilog.iters.check230, label %.lr.ph94.preheader, label %vec.epilog.ph231, !prof !52

vec.epilog.ph231:                                 ; preds = %vector.main.loop.iter.check213, %vec.epilog.iter.check229
  %vec.epilog.resume.val225 = phi i64 [ %n.vec216, %vec.epilog.iter.check229 ], [ 0, %vector.main.loop.iter.check213 ]
  %n.vec232 = and i64 %i.ga, 2147483640           ; 4 uses
  %i.gm = add i64 %indvars.iv125.lcssa, %n.vec232
  %i.gn = getelementptr i8, ptr %.67091, i64 %n.vec232 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv125.lcssa
  br label %vec.epilog.vector.body233

vec.epilog.vector.body233:                        ; preds = %vec.epilog.vector.body233, %vec.epilog.ph231
  %index234 = phi i64 [ %vec.epilog.resume.val225, %vec.epilog.ph231 ], [ %index.next237, %vec.epilog.vector.body233 ] ; 3 uses
  %next.gep235 = getelementptr i8, ptr %.67091, i64 %index234
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %index234
  %wide.load236 = load <8 x i8>, ptr %i.gp, align 1, !tbaa !30
  store <8 x i8> %wide.load236, ptr %next.gep235, align 1, !tbaa !30
  %index.next237 = add nuw i64 %index234, 8       ; 2 uses
  %i.gq = icmp eq i64 %index.next237, %n.vec232
  br i1 %i.gq, label %vec.epilog.middle.block238, label %vec.epilog.vector.body233, !llvm.loop !113

vec.epilog.middle.block238:                       ; preds = %vec.epilog.vector.body233
  %cmp.n239 = icmp eq i64 %n.vec232, %i.ga
  br i1 %cmp.n239, label %.loopexit76, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %vector.memcheck209, %iter.check227, %vec.epilog.iter.check229, %vec.epilog.middle.block238
  %indvars.iv127.ph = phi i64 [ %indvars.iv125.lcssa, %iter.check227 ], [ %indvars.iv125.lcssa, %vector.memcheck209 ], [ %i.gf, %vec.epilog.iter.check229 ], [ %i.gm, %vec.epilog.middle.block238 ]
  %.67093.ph = phi ptr [ %.67091, %iter.check227 ], [ %.67091, %vector.memcheck209 ], [ %i.gg, %vec.epilog.iter.check229 ], [ %i.gn, %vec.epilog.middle.block238 ]
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph94
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %.lr.ph94 ], [ %indvars.iv127.ph, %.lr.ph94.preheader ] ; 2 uses
  %.67093 = phi ptr [ %.670, %.lr.ph94 ], [ %.67093.ph, %.lr.ph94.preheader ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv127
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !30
  store i8 %i.gs, ptr %.67093, align 1, !tbaa !30
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %.670 = getelementptr inbounds nuw i8, ptr %.67093, i64 1 ; 2 uses
  %i.gt = trunc nuw i64 %indvars.iv.next128 to i32
  %i.gu = icmp sgt i32 %2, %i.gt
  br i1 %i.gu, label %.lr.ph94, label %.loopexit76, !llvm.loop !114

bb.i:                                             ; preds = %bb.h
  %i.gv = getelementptr inbounds nuw i8, ptr %.064, i64 1
  store i8 48, ptr %.064, align 1, !tbaa !30
  %i.gw = getelementptr i8, ptr %.064, i64 2      ; 2 uses
  store i8 46, ptr %i.gv, align 1, !tbaa !30
  %i.gx = icmp slt i32 %i.d, 0
  br i1 %i.gx, label %.lr.ph.preheader, label %.preheader80

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.gy = sub nsw i32 0, %i.d
  %i.gz = zext nneg i32 %i.gy to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gw, i8 48, i64 %i.gz, i1 false), !tbaa !30
  %i.ha = getelementptr i8, ptr %.064, i64 %i.gz
  %scevgep = getelementptr i8, ptr %i.ha, i64 2
  br label %.preheader80

.preheader80:                                     ; preds = %.lr.ph.preheader, %bb.i
  %.7.lcssa = phi ptr [ %i.gw, %bb.i ], [ %scevgep, %.lr.ph.preheader ] ; 7 uses
  %i.hb = icmp sgt i32 %2, 0
  br i1 %i.hb, label %iter.check, label %.loopexit76

iter.check:                                       ; preds = %.preheader80
  %.7.lcssa161 = ptrtoaddr ptr %.7.lcssa to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.hc = sub i64 %i.a, %.7.lcssa161
  %diff.check = icmp ugt i64 %i.hc, -32
  %or.cond338 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond338, label %.lr.ph87.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check162 = icmp ult i32 %2, 32
  br i1 %min.iters.check162, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hd = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %i.he = getelementptr i8, ptr %.7.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.7.lcssa, i64 %index ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %wide.load = load <16 x i8>, ptr %i.hf, align 1, !tbaa !30
  %wide.load163 = load <16 x i8>, ptr %i.hg, align 1, !tbaa !30
  %i.hh = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !30
  store <16 x i8> %wide.load163, ptr %i.hh, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hi = icmp eq i64 %index.next, %n.vec
  br i1 %i.hi, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit76, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph87.preheader, label %vec.epilog.ph, !prof !119

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec164 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.hj = getelementptr i8, ptr %.7.lcssa, i64 %n.vec164 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index165 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next168, %vec.epilog.vector.body ] ; 3 uses
  %next.gep166 = getelementptr i8, ptr %.7.lcssa, i64 %index165
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 %index165
  %wide.load167 = load <4 x i8>, ptr %i.hk, align 1, !tbaa !30
  store <4 x i8> %wide.load167, ptr %next.gep166, align 1, !tbaa !30
  %index.next168 = add nuw i64 %index165, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next168, %n.vec164
  br i1 %i.hl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !116

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n169 = icmp eq i64 %n.vec164, %wide.trip.count
  br i1 %cmp.n169, label %.loopexit76, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec164, %vec.epilog.middle.block ] ; 4 uses
  %.885.ph = phi ptr [ %.7.lcssa, %iter.check ], [ %i.he, %vec.epilog.iter.check ], [ %i.hj, %vec.epilog.middle.block ] ; 2 uses
  %i.hm = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.hm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol

.lr.ph87.prol:                                    ; preds = %.lr.ph87.preheader, %.lr.ph87.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph87.prol ], [ %indvars.iv.ph, %.lr.ph87.preheader ] ; 2 uses
  %.885.prol = phi ptr [ %i.hp, %.lr.ph87.prol ], [ %.885.ph, %.lr.ph87.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph87.prol ], [ 0, %.lr.ph87.preheader ]
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !30
  %i.hp = getelementptr inbounds nuw i8, ptr %.885.prol, i64 1 ; 3 uses
  store i8 %i.ho, ptr %.885.prol, align 1, !tbaa !30
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol, !llvm.loop !117

.lr.ph87.prol.loopexit:                           ; preds = %.lr.ph87.prol, %.lr.ph87.preheader
  %.lcssa346.unr = phi ptr [ poison, %.lr.ph87.preheader ], [ %i.hp, %.lr.ph87.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph87.preheader ], [ %indvars.iv.next.prol, %.lr.ph87.prol ]
  %.885.unr = phi ptr [ %.885.ph, %.lr.ph87.preheader ], [ %i.hp, %.lr.ph87.prol ]
  %i.hq = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.hr = icmp ugt i64 %i.hq, -8
  br i1 %i.hr, label %.loopexit76, label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph87 ], [ %indvars.iv.unr, %.lr.ph87.prol.loopexit ] ; 9 uses
  %.885 = phi ptr [ %i.iw, %.lr.ph87 ], [ %.885.unr, %.lr.ph87.prol.loopexit ] ; 9 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !30
  %i.hu = getelementptr inbounds nuw i8, ptr %.885, i64 1
  store i8 %i.ht, ptr %.885, align 1, !tbaa !30
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !30
  %i.hy = getelementptr inbounds nuw i8, ptr %.885, i64 2
  store i8 %i.hx, ptr %i.hu, align 1, !tbaa !30
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 2
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !30
  %i.ic = getelementptr inbounds nuw i8, ptr %.885, i64 3
  store i8 %i.ib, ptr %i.hy, align 1, !tbaa !30
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 3
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !30
  %i.ig = getelementptr inbounds nuw i8, ptr %.885, i64 4
  store i8 %i.if, ptr %i.ic, align 1, !tbaa !30
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !30
  %i.ik = getelementptr inbounds nuw i8, ptr %.885, i64 5
  store i8 %i.ij, ptr %i.ig, align 1, !tbaa !30
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 5
  %i.in = load i8, ptr %i.im, align 1, !tbaa !30
  %i.io = getelementptr inbounds nuw i8, ptr %.885, i64 6
  store i8 %i.in, ptr %i.ik, align 1, !tbaa !30
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 6
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !30
  %i.is = getelementptr inbounds nuw i8, ptr %.885, i64 7
  store i8 %i.ir, ptr %i.io, align 1, !tbaa !30
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 7
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !30
  %i.iw = getelementptr inbounds nuw i8, ptr %.885, i64 8 ; 2 uses
  store i8 %i.iv, ptr %i.is, align 1, !tbaa !30
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit76, label %.lr.ph87, !llvm.loop !118

.loopexit76:                                      ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87, %.lr.ph94, %middle.block, %vec.epilog.middle.block, %middle.block223, %vec.epilog.middle.block238, %.lr.ph102.preheader, %.preheader80, %.loopexit334, %.preheader, %tg3json__write_exp.exit
  %.071 = phi ptr [ %i.cs, %tg3json__write_exp.exit ], [ %scevgep137, %.lr.ph102.preheader ], [ %.670, %.lr.ph94 ], [ %.367.lcssa, %.preheader ], [ %.67091, %.loopexit334 ], [ %.7.lcssa, %.preheader80 ], [ %i.gn, %vec.epilog.middle.block238 ], [ %i.gg, %middle.block223 ], [ %i.hj, %vec.epilog.middle.block ], [ %i.he, %middle.block ], [ %.lcssa346.unr, %.lr.ph87.prol.loopexit ], [ %i.iw, %.lr.ph87 ]
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
declare i32 @llvm.smin.i32(i32, i32) #14

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

!llvm.module.flags = !{!5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = distinct !{!3, !34}
!4 = distinct !{!4, !34}
!5 = !{i32 1, !"long-double-type", !"x86_fp80"}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"long", !11, i64 0}
!19 = !{!"tg3json__parser", !16, i64 0, !16, i64 8, !16, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !12, i64 64}
!20 = !{!19, !16, i64 8}
end_hunk_1
