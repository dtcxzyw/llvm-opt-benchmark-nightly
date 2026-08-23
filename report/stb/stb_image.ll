Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__hdr_load:bb.a
  br label %._crit_edge222.thread

._crit_edge222.thread:                            ; preds = %.preheader183, %bb.ao, %.thread, %bb.t, %._crit_edge222, %stbi__malloc_mad2.exit.thread, %bb.aa, %bb.r, %bb.p, %bb.l, %bb.j, %.tail.thread, %bb.f, %._crit_edge.thread, %bb.c
  %.3130 = phi ptr [ null, %bb.c ], [ null, %bb.f ], [ null, %.tail.thread ], [ null, %bb.j ], [ null, %bb.l ], [ null, %._crit_edge.thread ], [ null, %bb.aa ], [ %i.bu, %bb.t ], [ null, %stbi__malloc_mad2.exit.thread ], [ null, %bb.r ], [ null, %bb.p ], [ null, %bb.ao ], [ %i.bu, %._crit_edge222 ], [ null, %.thread ], [ %i.bu, %.preheader183 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret ptr %.3130
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @stbi__hdr_to_ldr(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = or i32 %2, %1
  %or.cond.not.i.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread16.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.c
  %i.c = udiv i32 2147483647, %2
  %.not24.i.i = icmp sgt i32 %1, %i.c
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i.i

stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.c
  %i.d = mul nsw i32 %2, %1                       ; 7 uses
  %i.e = or i32 %3, %i.d
  %or.cond.not.i10.i.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10.i.i, label %bb.d, label %stbi__malloc_mad3.exit.thread

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.d
  %i.g = udiv i32 2147483647, %3
  %.not.i.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %bb.d, %stbi__mul2sizes_valid.exit12.i.i
  %i.h = mul nsw i32 %i.d, %3
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias noundef ptr @malloc(i64 noundef %i.i) #38 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %stbi__malloc_mad3.exit.thread, label %bb.e

stbi__malloc_mad3.exit.thread:                    ; preds = %bb.b, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__malloc_mad3.exit
  tail call void @free(ptr noundef nonnull %0) #37
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.l, align 8, !tbaa !26
  br label %bb.i

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.m = and i32 %3, 1
  %sext = add i32 %3, -1
  %.044 = add i32 %sext, %i.m                     ; 4 uses
  %i.n = icmp sgt i32 %i.d, 0
  br i1 %i.n, label %.preheader.lr.ph, label %._crit_edge57

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.o = icmp sgt i32 %.044, 0
  %i.p = load float, ptr @stbi__h2l_scale_i, align 4
  %i.q = load float, ptr @stbi__h2l_gamma_i, align 4
  %i.r = fpext float %i.q to double
  br i1 %i.o, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.s = sext i32 %3 to i64
  %wide.trip.count68 = zext nneg i32 %i.d to i64
  %wide.trip.count63 = zext nneg i32 %.044 to i64
  %i.t = icmp slt i32 %.044, %3
  %i.u = zext nneg i32 %.044 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.h
  %indvars.iv65 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next66, %bb.h ] ; 2 uses
  %i.v = mul nsw i64 %indvars.iv65, %i.s          ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader.us, %bb.f
  %indvars.iv60 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next61, %bb.f ] ; 2 uses
  %i.w = add nsw i64 %indvars.iv60, %i.v          ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !121
  %i.z = fmul float %i.y, %i.p
  %i.aa = fpext float %i.z to double
  %i.ab = tail call double @pow(double noundef %i.aa, double noundef %i.r) #37
  %i.ac = fptrunc double %i.ab to float
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.ae = fcmp olt float %i.ad, 0.000000e+00
  %.042.us = select i1 %i.ae, float 0.000000e+00, float %i.ad ; 2 uses
  %i.af = fcmp ogt float %.042.us, 2.550000e+02
  %.143.us = select i1 %i.af, float 2.550000e+02, float %.042.us
  %i.ag = fptosi float %.143.us to i32
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr inbounds i8, ptr %i.j, i64 %i.w
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !24
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge.us, label %bb.f, !llvm.loop !125

bb.g:                                             ; preds = %._crit_edge.us
  %i.aj = add nsw i64 %i.v, %i.u                  ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !121
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.an = fcmp olt float %i.am, 0.000000e+00
  %.0.us = select i1 %i.an, float 0.000000e+00, float %i.am ; 2 uses
  %i.ao = fcmp ogt float %.0.us, 2.550000e+02
  %.1.us = select i1 %i.ao, float 2.550000e+02, float %.0.us
  %i.ap = fptosi float %.1.us to i32
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds i8, ptr %i.j, i64 %i.aj
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.us
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %._crit_edge57, label %.preheader.us, !llvm.loop !126

._crit_edge.us:                                   ; preds = %bb.f
  br i1 %i.t, label %bb.g, label %bb.h

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.as = icmp sgt i32 %3, 0
  br i1 %i.as, label %.preheader.preheader, label %._crit_edge57

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.at = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp ugt i32 %i.d, 3
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %.preheader.preheader78

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x float>, ptr %i.au, align 4, !tbaa !121
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.aw = fcmp olt <4 x float> %i.av, zeroinitializer
  %i.ax = select <4 x i1> %i.aw, <4 x float> zeroinitializer, <4 x float> %i.av ; 2 uses
  %i.ay = fcmp ogt <4 x float> %i.ax, splat (float 2.550000e+02)
  %i.az = select <4 x i1> %i.ay, <4 x float> splat (float 2.550000e+02), <4 x float> %i.ax
  %i.ba = fptosi <4 x float> %i.az to <4 x i32>
  %i.bb = trunc <4 x i32> %i.ba to <4 x i8>
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %index
  store <4 x i8> %i.bb, ptr %i.bc, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge57, label %.preheader.preheader78

.preheader.preheader78:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader78, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader78 ] ; 2 uses
  %i.be = mul nuw nsw i64 %indvars.iv, %i.at      ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !121
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.bi = fcmp olt float %i.bh, 0.000000e+00
  %.0 = select i1 %i.bi, float 0.000000e+00, float %i.bh ; 2 uses
  %i.bj = fcmp ogt float %.0, 2.550000e+02
  %.1 = select i1 %i.bj, float 2.550000e+02, float %.0
  %i.bk = fptosi float %.1 to i32
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.be
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge57, label %.preheader, !llvm.loop !128

._crit_edge57:                                    ; preds = %.preheader, %bb.h, %middle.block, %.preheader.lr.ph.split, %bb.e
  tail call void @free(ptr noundef nonnull %0) #37
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge57, %stbi__malloc_mad3.exit.thread
  %.047 = phi ptr [ null, %stbi__malloc_mad3.exit.thread ], [ %i.j, %._crit_edge57 ], [ null, %bb.a ]
  ret ptr %.047
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__tga_test(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 21 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %stbi__get8.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !13
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %stbi__get8.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22
  %i.p = tail call i32 %i.j(ptr noundef %i.l, ptr noundef nonnull %i.m, i32 noundef %i.o) #37, !inline_history !54 ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !14
  %i.z = add nsw i32 %i.y, %i.w
  store i32 %i.z, ptr %i.x, align 8, !tbaa !14
  %i.aa = icmp eq i32 %i.p, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.m, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = sext i32 %i.p to i64
  %i.ad = getelementptr inbounds i8, ptr %i.m, i64 %i.ac
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.f, %bb.e
  %.sink.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.ad, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %stbi__get8.exit.sink.split

stbi__get8.exit.sink.split:                       ; preds = %stbi__refill_buffer.exit.i, %bb.b
  %.sink = phi ptr [ %i.f, %bb.b ], [ %i.ae, %stbi__refill_buffer.exit.i ] ; 2 uses
  %.ph = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !16
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %stbi__get8.exit.sink.split, %bb.c
  %i.af = phi ptr [ %i.d, %bb.c ], [ %.ph, %stbi__get8.exit.sink.split ] ; 3 uses
  %i.ag = phi ptr [ %i.b, %bb.c ], [ %.sink, %stbi__get8.exit.sink.split ] ; 4 uses
  %i.ah = icmp ult ptr %i.ag, %i.af
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %stbi__get8.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !16
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !24
  br label %stbi__get8.exit65

bb.h:                                             ; preds = %stbi__get8.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !13
  %.not.i60 = icmp eq i32 %i.al, 0
  br i1 %.not.i60, label %stbi__get8.exit65.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !22
  %i.at = tail call i32 %i.an(ptr noundef %i.ap, ptr noundef nonnull %i.aq, i32 noundef %i.as) #37, !inline_history !54 ; 2 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !15
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = trunc i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !14
  %i.bd = add nsw i32 %i.bc, %i.ba
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !14
  %i.be = icmp eq i32 %i.at, 0
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ak, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.aq, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i62

bb.k:                                             ; preds = %bb.i
  %i.bg = sext i32 %i.at to i64
  %i.bh = getelementptr inbounds i8, ptr %i.aq, i64 %i.bg
  %.pre.i61 = load i8, ptr %i.aq, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i62

stbi__refill_buffer.exit.i62:                     ; preds = %bb.k, %bb.j
  %i.bi = phi i8 [ 0, %bb.j ], [ %.pre.i61, %bb.k ]
  %.sink.i.i63 = phi ptr [ %i.bf, %bb.j ], [ %i.bh, %bb.k ] ; 2 uses
  store ptr %.sink.i.i63, ptr %i.c, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !16
  br label %stbi__get8.exit65

stbi__get8.exit65:                                ; preds = %bb.g, %stbi__refill_buffer.exit.i62
  %i.bk = phi ptr [ %i.af, %bb.g ], [ %.sink.i.i63, %stbi__refill_buffer.exit.i62 ]
  %i.bl = phi ptr [ %i.ai, %bb.g ], [ %i.bj, %stbi__refill_buffer.exit.i62 ]
  %.0.i64 = phi i8 [ %i.aj, %bb.g ], [ %i.bi, %stbi__refill_buffer.exit.i62 ] ; 2 uses
  %i.bm = icmp ugt i8 %.0.i64, 1
  br i1 %i.bm, label %stbi__get8.exit79.thread, label %stbi__get8.exit65.thread

stbi__get8.exit65.thread:                         ; preds = %bb.h, %stbi__get8.exit65
  %i.bn = phi ptr [ %i.bk, %stbi__get8.exit65 ], [ %i.af, %bb.h ] ; 3 uses
  %i.bo = phi ptr [ %i.bl, %stbi__get8.exit65 ], [ %i.ag, %bb.h ] ; 4 uses
  %.0.i6499 = phi i8 [ %.0.i64, %stbi__get8.exit65 ], [ 0, %bb.h ]
  %i.bp = icmp ult ptr %i.bo, %i.bn
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %stbi__get8.exit65.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  store ptr %i.bq, ptr %i.a, align 8, !tbaa !16
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !24
  br label %stbi__get8.exit71

bb.m:                                             ; preds = %stbi__get8.exit65.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !13
  %.not.i66 = icmp eq i32 %i.bt, 0
  br i1 %.not.i66, label %stbi__get8.exit71, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !22
  %i.cb = tail call i32 %i.bv(ptr noundef %i.bx, ptr noundef nonnull %i.by, i32 noundef %i.ca) #37, !inline_history !54 ; 2 uses
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !15
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !14
  %i.cl = add nsw i32 %i.ck, %i.ci
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !14
  %i.cm = icmp eq i32 %i.cb, 0
  br i1 %i.cm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bs, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.by, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i68

bb.p:                                             ; preds = %bb.n
  %i.co = sext i32 %i.cb to i64
  %i.cp = getelementptr inbounds i8, ptr %i.by, i64 %i.co
  %.pre.i67 = load i8, ptr %i.by, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i68

stbi__refill_buffer.exit.i68:                     ; preds = %bb.p, %bb.o
  %i.cq = phi i8 [ 0, %bb.o ], [ %.pre.i67, %bb.p ]
  %.sink.i.i69 = phi ptr [ %i.cn, %bb.o ], [ %i.cp, %bb.p ] ; 2 uses
  store ptr %.sink.i.i69, ptr %i.c, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %stbi__get8.exit71

stbi__get8.exit71:                                ; preds = %bb.l, %bb.m, %stbi__refill_buffer.exit.i68
  %.pre.i90 = phi ptr [ %i.bq, %bb.l ], [ %i.cr, %stbi__refill_buffer.exit.i68 ], [ %i.bo, %bb.m ] ; 4 uses
  %i.cs = phi ptr [ %i.bn, %bb.l ], [ %.sink.i.i69, %stbi__refill_buffer.exit.i68 ], [ %i.bn, %bb.m ] ; 5 uses
  %.0.i70 = phi i8 [ %i.br, %bb.l ], [ %i.cq, %stbi__refill_buffer.exit.i68 ], [ 0, %bb.m ] ; 2 uses
  %.not = icmp eq i8 %.0.i6499, 0                 ; 2 uses
  br i1 %.not, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %stbi__get8.exit71
  %i.ct = and i8 %.0.i70, -9
end_hunk_0
begin_hunk_1_@stbi__tga_test:bb.a
stbi__skip.exit:                                  ; preds = %bb.t, %.thread.i
  %i.dh = phi ptr [ %.pre101, %bb.t ], [ %i.cs, %.thread.i ] ; 2 uses
  %i.di = phi ptr [ %.pre, %bb.t ], [ %i.dg, %.thread.i ] ; 3 uses
  %i.dj = icmp ult ptr %i.di, %i.dh
  br i1 %i.dj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %stbi__skip.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 1 ; 2 uses
  store ptr %i.dk, ptr %i.a, align 8, !tbaa !16
  %i.dl = load i8, ptr %i.di, align 1, !tbaa !24
  br label %stbi__get8.exit79

bb.v:                                             ; preds = %stbi__skip.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !13
  %.not.i74 = icmp eq i32 %i.dn, 0
  br i1 %.not.i74, label %stbi__get8.exit79.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = load ptr, ptr %i.cu, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !22
  %i.du = tail call i32 %i.do(ptr noundef %i.dq, ptr noundef nonnull %i.dr, i32 noundef %i.dt) #37, !inline_history !54 ; 2 uses
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !15
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !14
  %i.ee = add nsw i32 %i.ed, %i.eb
  store i32 %i.ee, ptr %i.ec, align 8, !tbaa !14
  %i.ef = icmp eq i32 %i.du, 0
  br i1 %i.ef, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.dm, align 8, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.dr, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i76

bb.y:                                             ; preds = %bb.w
  %i.eh = sext i32 %i.du to i64
  %i.ei = getelementptr inbounds i8, ptr %i.dr, i64 %i.eh
  %.pre.i75 = load i8, ptr %i.dr, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i76

stbi__refill_buffer.exit.i76:                     ; preds = %bb.y, %bb.x
  %i.ej = phi i8 [ 0, %bb.x ], [ %.pre.i75, %bb.y ]
  %.sink.i.i77 = phi ptr [ %i.eg, %bb.x ], [ %i.ei, %bb.y ] ; 2 uses
  store ptr %.sink.i.i77, ptr %i.c, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %stbi__get8.exit79

stbi__get8.exit79:                                ; preds = %bb.u, %stbi__refill_buffer.exit.i76
  %.pre.i84 = phi ptr [ %i.dk, %bb.u ], [ %i.ek, %stbi__refill_buffer.exit.i76 ] ; 2 uses
  %i.el = phi ptr [ %i.dh, %bb.u ], [ %.sink.i.i77, %stbi__refill_buffer.exit.i76 ] ; 2 uses
  %.0.i78 = phi i8 [ %i.dl, %bb.u ], [ %i.ej, %stbi__refill_buffer.exit.i76 ]
  switch i8 %.0.i78, label %stbi__get8.exit79.thread [
    i8 32, label %bb.z
    i8 24, label %bb.z
    i8 16, label %bb.z
    i8 15, label %bb.z
    i8 8, label %bb.z
  ]

bb.z:                                             ; preds = %stbi__get8.exit79, %stbi__get8.exit79, %stbi__get8.exit79, %stbi__get8.exit79, %stbi__get8.exit79
  %i.em = load ptr, ptr %i.cu, align 8, !tbaa !8
  %.not.i80 = icmp eq ptr %i.em, null
  br i1 %.not.i80, label %.thread.i81, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %.pre.i84 to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = trunc i64 %i.ep to i32                  ; 2 uses
  %i.er = icmp slt i32 %i.eq, 4
  br i1 %i.er, label %bb.ab, label %.thread.i81

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.el, ptr %i.a, align 8, !tbaa !16
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !58
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !21
  %i.ew = sub nsw i32 4, %i.eq
  tail call void %i.et(ptr noundef %i.ev, i32 noundef %i.ew) #37, !inline_history !59
  br label %stbi__skip.exit85

.thread.i81:                                      ; preds = %bb.z, %bb.aa
  %i.ex = getelementptr inbounds nuw i8, ptr %.pre.i84, i64 4
  store ptr %i.ex, ptr %i.a, align 8, !tbaa !16
  br label %stbi__skip.exit85

bb.ac:                                            ; preds = %stbi__get8.exit71
  %i.ey = and i8 %.0.i70, -10
  %or.cond15.not = icmp eq i8 %i.ey, 2
  br i1 %or.cond15.not, label %bb.ad, label %stbi__get8.exit79.thread

bb.ad:                                            ; preds = %bb.ac
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !8
  %.not.i86 = icmp eq ptr %i.fa, null
  br i1 %.not.i86, label %.thread.i87, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fb = ptrtoint ptr %i.cs to i64
  %i.fc = ptrtoint ptr %.pre.i90 to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = trunc i64 %i.fd to i32                  ; 2 uses
  %i.ff = icmp slt i32 %i.fe, 9
  br i1 %i.ff, label %bb.af, label %.thread.i87

bb.af:                                            ; preds = %bb.ae
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !16
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !58
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !21
  %i.fk = sub nsw i32 9, %i.fe
  tail call void %i.fh(ptr noundef %i.fj, i32 noundef %i.fk) #37, !inline_history !59
  br label %stbi__skip.exit85

.thread.i87:                                      ; preds = %bb.ad, %bb.ae
  %i.fl = getelementptr inbounds nuw i8, ptr %.pre.i90, i64 9
  store ptr %i.fl, ptr %i.a, align 8, !tbaa !16
  br label %stbi__skip.exit85

stbi__skip.exit85:                                ; preds = %.thread.i87, %bb.af, %.thread.i81, %bb.ab
  %i.fm = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %stbi__get8.exit79.thread, label %bb.ag

bb.ag:                                            ; preds = %stbi__skip.exit85
  %i.fo = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %stbi__get8.exit79.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fq = load ptr, ptr %i.a, align 8, !tbaa !16  ; 3 uses
  %i.fr = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.fs = icmp ult ptr %i.fq, %i.fr
  br i1 %i.fs, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 1
  store ptr %i.ft, ptr %i.a, align 8, !tbaa !16
  %i.fu = load i8, ptr %i.fq, align 1, !tbaa !24
  br label %stbi__get8.exit97

bb.aj:                                            ; preds = %bb.ah
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !13
  %.not.i92 = icmp eq i32 %i.fw, 0
  br i1 %.not.i92, label %stbi__get8.exit97, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !21
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !22
  %i.ge = tail call i32 %i.fy(ptr noundef %i.ga, ptr noundef nonnull %i.gb, i32 noundef %i.gd) #37, !inline_history !54 ; 2 uses
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !15
  %i.gi = ptrtoint ptr %i.gf to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !14
  %i.go = add nsw i32 %i.gn, %i.gl
  store i32 %i.go, ptr %i.gm, align 8, !tbaa !14
  %i.gp = icmp eq i32 %i.ge, 0
  br i1 %i.gp, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.fv, align 8, !tbaa !13
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.gb, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i94

bb.am:                                            ; preds = %bb.ak
  %i.gr = sext i32 %i.ge to i64
  %i.gs = getelementptr inbounds i8, ptr %i.gb, i64 %i.gr
  %.pre.i93 = load i8, ptr %i.gb, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i94

stbi__refill_buffer.exit.i94:                     ; preds = %bb.am, %bb.al
  %i.gt = phi i8 [ 0, %bb.al ], [ %.pre.i93, %bb.am ]
  %.sink.i.i95 = phi ptr [ %i.gq, %bb.al ], [ %i.gs, %bb.am ]
  store ptr %.sink.i.i95, ptr %i.c, align 8, !tbaa !18
  br label %stbi__get8.exit97

stbi__get8.exit97:                                ; preds = %bb.ai, %bb.aj, %stbi__refill_buffer.exit.i94
  %.0.i96 = phi i8 [ %i.fu, %bb.ai ], [ %i.gt, %stbi__refill_buffer.exit.i94 ], [ 0, %bb.aj ] ; 2 uses
  br i1 %.not, label %bb.an, label %switch.early.test

switch.early.test:                                ; preds = %stbi__get8.exit97
  %i.gu = add i8 %.0.i96, -8
  %switch.and = and i8 %i.gu, -9
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %i.gv = zext i1 %switch.selectcmp to i32
  br label %stbi__get8.exit79.thread

bb.an:                                            ; preds = %stbi__get8.exit97
  %switch.tableidx = add i8 %.0.i96, -8           ; 2 uses
  %i.gw = icmp ult i8 %switch.tableidx, 25
  br i1 %i.gw, label %switch.lookup, label %stbi__get8.exit79.thread

switch.lookup:                                    ; preds = %bb.an
  %i.gx = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.stbi__tga_test, i64 %i.gx
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %stbi__get8.exit79.thread

stbi__get8.exit79.thread:                         ; preds = %switch.lookup, %bb.an, %bb.v, %switch.early.test, %stbi__get8.exit79, %bb.ag, %stbi__skip.exit85, %bb.ac, %bb.q, %stbi__get8.exit65
  %.0 = phi i32 [ 0, %stbi__get8.exit65 ], [ 0, %bb.q ], [ 0, %stbi__get8.exit79 ], [ 0, %stbi__skip.exit85 ], [ 0, %bb.ag ], [ 0, %bb.ac ], [ 0, %bb.an ], [ %switch.ext, %switch.lookup ], [ %i.gv, %switch.early.test ], [ 0, %bb.v ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gz = load <2 x ptr>, ptr %i.gy, align 8, !tbaa !26
  store <2 x ptr> %i.gz, ptr %i.a, align 8, !tbaa !26
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi__tga_load(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4, ptr nofree readnone captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 49 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 20 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 3 uses
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !16
  %i.h = load i8, ptr %i.c, align 1, !tbaa !24
  br label %stbi__get8.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !13
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %stbi__get8.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !22
  %i.r = tail call i32 %i.l(ptr noundef %i.n, ptr noundef nonnull %i.o, i32 noundef %i.q) #37, !inline_history !54 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !14
  %i.ab = add nsw i32 %i.aa, %i.y
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !14
  %i.ac = icmp eq i32 %i.r, 0
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.o, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = sext i32 %i.r to i64
  %i.af = getelementptr inbounds i8, ptr %i.o, i64 %i.ae
  %.pre.i = load i8, ptr %i.o, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.f, %bb.e
  %i.ag = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ad, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !16
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.b, %bb.c, %stbi__refill_buffer.exit.i
  %i.ai = phi ptr [ %i.e, %bb.b ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.aj = phi ptr [ %i.g, %bb.b ], [ %i.ah, %stbi__refill_buffer.exit.i ], [ %i.c, %bb.c ] ; 4 uses
  %.0.i = phi i8 [ %i.h, %bb.b ], [ %i.ag, %stbi__refill_buffer.exit.i ], [ 0, %bb.c ] ; 3 uses
  %i.ak = zext i8 %.0.i to i32                    ; 2 uses
  %i.al = icmp ult ptr %i.aj, %i.ai
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %stbi__get8.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  store ptr %i.am, ptr %i.b, align 8, !tbaa !16
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !24
  br label %stbi__get8.exit226

bb.h:                                             ; preds = %stbi__get8.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !13
  %.not.i221 = icmp eq i32 %i.ap, 0
  br i1 %.not.i221, label %stbi__get8.exit226, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !22
  %i.ax = tail call i32 %i.ar(ptr noundef %i.at, ptr noundef nonnull %i.au, i32 noundef %i.aw) #37, !inline_history !54 ; 2 uses
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !15
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !14
  %i.bh = add nsw i32 %i.bg, %i.be
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !14
  %i.bi = icmp eq i32 %i.ax, 0
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ao, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.au, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i223

bb.k:                                             ; preds = %bb.i
  %i.bk = sext i32 %i.ax to i64
  %i.bl = getelementptr inbounds i8, ptr %i.au, i64 %i.bk
  %.pre.i222 = load i8, ptr %i.au, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i223

stbi__refill_buffer.exit.i223:                    ; preds = %bb.k, %bb.j
  %i.bm = phi i8 [ 0, %bb.j ], [ %.pre.i222, %bb.k ]
  %.sink.i.i224 = phi ptr [ %i.bj, %bb.j ], [ %i.bl, %bb.k ] ; 2 uses
  store ptr %.sink.i.i224, ptr %i.d, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !16
  br label %stbi__get8.exit226

stbi__get8.exit226:                               ; preds = %bb.g, %bb.h, %stbi__refill_buffer.exit.i223
  %i.bo = phi ptr [ %i.ai, %bb.g ], [ %.sink.i.i224, %stbi__refill_buffer.exit.i223 ], [ %i.ai, %bb.h ]
  %i.bp = phi ptr [ %i.am, %bb.g ], [ %i.bn, %stbi__refill_buffer.exit.i223 ], [ %i.aj, %bb.h ] ; 3 uses
  %.0.i225 = phi i8 [ %i.an, %bb.g ], [ %i.bm, %stbi__refill_buffer.exit.i223 ], [ 0, %bb.h ]
  %i.bq = icmp ult ptr %i.bp, %i.bo
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %stbi__get8.exit226
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.br, ptr %i.b, align 8, !tbaa !16
  %i.bs = load i8, ptr %i.bp, align 1, !tbaa !24
  br label %stbi__get8.exit232

bb.m:                                             ; preds = %stbi__get8.exit226
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !13
  %.not.i227 = icmp eq i32 %i.bu, 0
  br i1 %.not.i227, label %stbi__get8.exit232, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !22
  %i.cc = tail call i32 %i.bw(ptr noundef %i.by, ptr noundef nonnull %i.bz, i32 noundef %i.cb) #37, !inline_history !54 ; 2 uses
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !15
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !14
  %i.cm = add nsw i32 %i.cl, %i.cj
end_hunk_1
