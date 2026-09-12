Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/deflate_decompress?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@libdeflate_deflate_decompress_ex:bb.a
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @libdeflate_deflate_decompress(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile ptr, ptr @decompress_impl, align 8, !tbaa !9
  %i.b = tail call i32 %i.a(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null, ptr noundef %5) #10, !inline_history !28
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @libdeflate_alloc_decompressor_ex(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !30
  %.not = icmp eq i64 %i.a, 24
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %.not13 = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr @libdeflate_default_malloc_func, align 8
  %i.e = select i1 %.not13, ptr %i.d, ptr %i.c
  %i.f = tail call ptr %i.e(i64 noundef 11568) #10 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11568) %i.f, i8 0, i64 11568, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %.not14 = icmp eq ptr %i.i, null
  %i.j = load ptr, ptr @libdeflate_default_free_func, align 8
  %i.k = select i1 %.not14, ptr %i.j, ptr %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 11560
  store ptr %i.k, ptr %i.l, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @libdeflate_alloc_decompressor() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @libdeflate_default_malloc_func, align 8
  %i.b = tail call ptr %i.a(i64 noundef 11568) #10, !inline_history !33 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %libdeflate_alloc_decompressor_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11568) %i.b, i8 0, i64 11568, i1 false)
  %i.d = load ptr, ptr @libdeflate_default_free_func, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 11560
  store ptr %i.d, ptr %i.e, align 8, !tbaa !13
  br label %libdeflate_alloc_decompressor_ex.exit

libdeflate_alloc_decompressor_ex.exit:            ; preds = %bb.a, %bb.b
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @libdeflate_free_decompressor(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  tail call void %i.b(ptr noundef nonnull %0) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dispatch_decomp(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = load volatile i32, ptr @libdeflate_x86_cpu_features, align 4, !tbaa !14
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %arch_select_decompress_func.exit

bb.b:                                             ; preds = %bb.a
  tail call void @libdeflate_init_x86_cpu_features() #10
  br label %arch_select_decompress_func.exit

arch_select_decompress_func.exit:                 ; preds = %bb.a, %bb.b
  %i.c = load volatile i32, ptr @libdeflate_x86_cpu_features, align 4, !tbaa !14
  %i.d = and i32 %i.c, 16
  %.not.i = icmp eq i32 %i.d, 0
  %spec.store.select = select i1 %.not.i, ptr @deflate_decompress_default, ptr @deflate_decompress_bmi2 ; 2 uses
  store volatile ptr %spec.store.select, ptr @decompress_impl, align 8, !tbaa !9
  %i.e = tail call i32 %spec.store.select(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) #10, !callees !34
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4) i32 @deflate_decompress_default(ptr noalias nofree noundef captures(address_is_null) %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 4 uses
  %i.b = tail call i64 @llvm.umin.i64(i64 %4, i64 299)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 18 uses
  %i.f = tail call i64 @llvm.umin.i64(i64 %2, i64 25)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 2 uses
  %i.i = ptrtoint ptr %i.e to i64                 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11552 ; 3 uses
  %i.k = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10976 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9368 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 11556 ; 2 uses
  %i.q = ptrtoint ptr %3 to i64                   ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 144
  %scevgep1043 = getelementptr i8, ptr %0, i64 256
  %scevgep1045 = getelementptr i8, ptr %0, i64 280
  %scevgep1047 = getelementptr i8, ptr %0, i64 288
  br label %bb.b

bb.b:                                             ; preds = %.thread869, %bb.a
  %.0700 = phi ptr [ %3, %bb.a ], [ %.8708, %.thread869 ] ; 6 uses
  %.0673 = phi ptr [ %1, %bb.a ], [ %.26699, %.thread869 ] ; 5 uses
  %.0643 = phi i64 [ 0, %bb.a ], [ %.33, %.thread869 ] ; 3 uses
  %.0618 = phi i32 [ 0, %bb.a ], [ %.29, %.thread869 ] ; 6 uses
  %.0611 = phi i64 [ 0, %bb.a ], [ %.21, %.thread869 ] ; 3 uses
  %i.r = ptrtoint ptr %.0673 to i64
  %i.s = sub i64 %i.i, %i.r
  %i.t = icmp ugt i64 %i.s, 7
  br i1 %i.t, label %bb.c, label %.preheader915, !prof !15

.preheader915:                                    ; preds = %bb.b
  %i.u = and i32 %.0618, 255                      ; 2 uses
  %i.v = icmp samesign ult i32 %i.u, 56
  br i1 %i.v, label %.lr.ph, label %.loopexit916

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i808 = load i64, ptr %.0673, align 1
  %i.w = and i32 %.0618, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl i64 %.0.copyload.i808, %i.x
  %i.z = or i64 %i.y, %.0643
  %i.aa = getelementptr inbounds nuw i8, ptr %.0673, i64 7
  %i.ab = lshr i32 %.0618, 3
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = or i32 %.0618, 56
  br label %.loopexit916

.lr.ph:                                           ; preds = %.preheader915, %bb.f
  %i.ah = phi i32 [ %i.ar, %bb.f ], [ %i.u, %.preheader915 ]
  %.1612953 = phi i64 [ %.2613, %bb.f ], [ %.0611, %.preheader915 ] ; 2 uses
  %.1619952 = phi i32 [ %i.aq, %bb.f ], [ %.0618, %.preheader915 ]
  %.1644951 = phi i64 [ %.2645, %bb.f ], [ %.0643, %.preheader915 ] ; 2 uses
  %.1674950 = phi ptr [ %.2675, %bb.f ], [ %.0673, %.preheader915 ] ; 4 uses
  %.not = icmp eq ptr %.1674950, %i.e
  br i1 %.not, label %bb.e, label %bb.d, !prof !16

bb.d:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.1674950, i64 1
  %i.aj = load i8, ptr %.1674950, align 1, !tbaa !17
  %i.ak = zext i8 %i.aj to i64
  %i.al = zext nneg i32 %i.ah to i64
  %i.am = shl nuw nsw i64 %i.ak, %i.al
  %i.an = or i64 %i.am, %.1644951
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ao = add i64 %.1612953, 1                    ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 8
  br i1 %i.ap, label %.thread836, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2675 = phi ptr [ %i.ai, %bb.d ], [ %.1674950, %bb.e ] ; 2 uses
  %.2645 = phi i64 [ %i.an, %bb.d ], [ %.1644951, %bb.e ] ; 2 uses
  %.2613 = phi i64 [ %.1612953, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  %i.aq = add i32 %.1619952, 8                    ; 3 uses
  %i.ar = and i32 %i.aq, 255                      ; 2 uses
  %i.as = icmp samesign ult i32 %i.ar, 56
  br i1 %i.as, label %.lr.ph, label %.loopexit916, !llvm.loop !35

.loopexit916:                                     ; preds = %bb.f, %.preheader915, %bb.c
  %.3676 = phi ptr [ %i.af, %bb.c ], [ %.0673, %.preheader915 ], [ %.2675, %bb.f ] ; 8 uses
  %.3646 = phi i64 [ %i.z, %bb.c ], [ %.0643, %.preheader915 ], [ %.2645, %bb.f ] ; 5 uses
  %.2620 = phi i32 [ %i.ag, %bb.c ], [ %.0618, %.preheader915 ], [ %i.aq, %bb.f ] ; 3 uses
  %.3614 = phi i64 [ %.0611, %bb.c ], [ %.0611, %.preheader915 ], [ %.2613, %bb.f ] ; 7 uses
  %i.at = and i64 %.3646, 1
  %.not744 = icmp eq i64 %i.at, 0
  %7 = trunc i64 %.3646 to i32                    ; 4 uses
  %8 = lshr i32 %7, 1
  %i.au = and i32 %8, 3
  switch i32 %i.au, label %default.unreachable [
    i32 2, label %bb.g
    i32 0, label %bb.at
    i32 1, label %bb.az
    i32 3, label %.thread836
  ], !prof !19

bb.g:                                             ; preds = %.loopexit916
  %9 = lshr i32 %7, 3
  %i.av = and i32 %9, 31
  %i.aw = add nuw nsw i32 %i.av, 257              ; 2 uses
  %10 = lshr i32 %7, 8
  %i.ax = and i32 %10, 31
  %i.ay = add nuw nsw i32 %i.ax, 1                ; 2 uses
  %11 = lshr i32 %7, 13                           ; 2 uses
  %i.az = and i32 %11, 15
  store i8 0, ptr %i.j, align 8, !tbaa !20
  %i.ba = lshr i64 %.3646, 17
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = and i8 %i.bb, 7
  store i8 %i.bc, ptr %i.l, align 8, !tbaa !17
  %i.bd = lshr i64 %.3646, 20                     ; 3 uses
  %i.be = add i32 %.2620, -20                     ; 6 uses
  %i.bf = ptrtoint ptr %.3676 to i64
  %i.bg = sub i64 %i.i, %i.bf
  %i.bh = icmp ugt i64 %i.bg, 7
  br i1 %i.bh, label %bb.h, label %.preheader908, !prof !15

.preheader908:                                    ; preds = %bb.g
  %i.bi = and i32 %i.be, 255                      ; 2 uses
  %i.bj = icmp samesign ult i32 %i.bi, 56
  br i1 %i.bj, label %.lr.ph973, label %.loopexit909

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i807 = load i64, ptr %.3676, align 1
  %i.bk = and i32 %i.be, 255
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl i64 %.0.copyload.i807, %i.bl
  %i.bn = or i64 %i.bm, %i.bd
  %i.bo = getelementptr inbounds nuw i8, ptr %.3676, i64 7
  %i.bp = lshr i32 %i.be, 3
  %i.bq = and i32 %i.bp, 7
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 %i.bs
  %i.bu = or i32 %i.be, 56
  br label %.loopexit909

.lr.ph973:                                        ; preds = %.preheader908, %bb.k
  %i.bv = phi i32 [ %i.cf, %bb.k ], [ %i.bi, %.preheader908 ]
  %.4615972 = phi i64 [ %.5616, %bb.k ], [ %.3614, %.preheader908 ] ; 2 uses
  %.3621971 = phi i32 [ %i.ce, %bb.k ], [ %i.be, %.preheader908 ]
  %.4647970 = phi i64 [ %.5648, %bb.k ], [ %i.bd, %.preheader908 ] ; 2 uses
  %.4677969 = phi ptr [ %.5678, %bb.k ], [ %.3676, %.preheader908 ] ; 4 uses
  %.not749 = icmp eq ptr %.4677969, %i.e
  br i1 %.not749, label %bb.j, label %bb.i, !prof !16

bb.i:                                             ; preds = %.lr.ph973
  %i.bw = getelementptr inbounds nuw i8, ptr %.4677969, i64 1
  %i.bx = load i8, ptr %.4677969, align 1, !tbaa !17
  %i.by = zext i8 %i.bx to i64
  %i.bz = zext nneg i32 %i.bv to i64
  %i.ca = shl nuw nsw i64 %i.by, %i.bz
  %i.cb = or i64 %i.ca, %.4647970
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph973
  %i.cc = add i64 %.4615972, 1                    ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, 8
  br i1 %i.cd, label %.thread836, label %bb.k, !prof !16

bb.k:                                             ; preds = %bb.j, %bb.i
  %.5678 = phi ptr [ %i.bw, %bb.i ], [ %.4677969, %bb.j ] ; 2 uses
  %.5648 = phi i64 [ %i.cb, %bb.i ], [ %.4647970, %bb.j ] ; 2 uses
  %.5616 = phi i64 [ %.4615972, %bb.i ], [ %i.cc, %bb.j ] ; 2 uses
  %i.ce = add i32 %.3621971, 8                    ; 3 uses
  %i.cf = and i32 %i.ce, 255                      ; 2 uses
  %i.cg = icmp samesign ult i32 %i.cf, 56
  br i1 %i.cg, label %.lr.ph973, label %.loopexit909, !llvm.loop !36

.loopexit909:                                     ; preds = %bb.k, %.preheader908, %bb.h
  %.6679 = phi ptr [ %i.bt, %bb.h ], [ %.3676, %.preheader908 ], [ %.5678, %bb.k ]
  %.6649 = phi i64 [ %i.bn, %bb.h ], [ %i.bd, %.preheader908 ], [ %.5648, %bb.k ]
  %.4622 = phi i32 [ %i.bu, %bb.h ], [ %i.be, %.preheader908 ], [ %i.ce, %bb.k ]
  %.6617 = phi i64 [ %.3614, %bb.h ], [ %.3614, %.preheader908 ], [ %.5616, %bb.k ]
  %12 = and i32 %11, 15
  %narrow = add nuw nsw i32 %12, 3                ; 2 uses
  %13 = zext nneg i32 %narrow to i64              ; 2 uses
  %xtraiter = and i64 %13, 1
  %unroll_iter = and i64 %13, 30
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.loopexit909
  %indvars.iv1050 = phi i64 [ 2, %.loopexit909 ], [ %indvars.iv.next1051.1, %bb.l ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.loopexit909 ], [ %indvars.iv.next.1, %bb.l ] ; 3 uses
  %.7650 = phi i64 [ %.6649, %.loopexit909 ], [ %i.cu, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.loopexit909 ], [ %niter.next.1, %bb.l ]
  %i.ch = trunc i64 %.7650 to i8
  %i.ci = and i8 %i.ch, 7
  %i.cj = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !17
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl
  store i8 %i.ci, ptr %i.cm, align 1, !tbaa !17
  %i.cn = lshr i64 %.7650, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.co = trunc i64 %i.cn to i8
  %i.cp = and i8 %i.co, 7
  %i.cq = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv.next
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !17
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %i.cs
  store i8 %i.cp, ptr %i.ct, align 1, !tbaa !17
  %i.cu = lshr i64 %.7650, 6                      ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %indvars.iv.next1051.1 = add nuw nsw i64 %indvars.iv1050, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader907.unr-lcssa, label %bb.l, !llvm.loop !37

.preheader907.unr-lcssa:                          ; preds = %bb.l
  %indvars.iv.next1051 = or disjoint i64 %indvars.iv1050, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader907, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader907.unr-lcssa
  %lcmp.mod1190 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod1190)
  %i.cv = trunc i64 %i.cu to i8
  %i.cw = and i8 %i.cv, 7
  %i.cx = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv.next.1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !17
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %i.cz
  store i8 %i.cw, ptr %i.da, align 1, !tbaa !17
  %i.db = lshr i64 %i.cu, 3
  br label %.preheader907

.preheader907:                                    ; preds = %.preheader907.unr-lcssa, %.epil.preheader
  %indvars.iv1050.lcssa = phi i64 [ %indvars.iv.next1051, %.preheader907.unr-lcssa ], [ %indvars.iv.next1051.1, %.epil.preheader ]
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next, %.preheader907.unr-lcssa ], [ %indvars.iv.next.1, %.epil.preheader ]
  %.lcssa1173 = phi i64 [ %i.cu, %.preheader907.unr-lcssa ], [ %i.db, %.epil.preheader ]
  %i.dc = add i32 %.4622, -9
  %.neg1094 = mul nsw i32 %i.az, -3
  %i.dd = add i32 %.neg1094, %i.dc
  %i.de = icmp samesign ult i64 %indvars.iv.lcssa, 18
  br i1 %i.de, label %.lr.ph979, label %._crit_edge

.lr.ph979:                                        ; preds = %.preheader907, %.lr.ph979
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %.lr.ph979 ], [ %indvars.iv1050.lcssa, %.preheader907 ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv1052
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !17
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %i.dh
  store i8 0, ptr %i.di, align 1, !tbaa !17
  %indvars.iv.next1053 = add nuw nsw i64 %indvars.iv1052, 1
  %i.dj = icmp samesign ult i64 %indvars.iv1052, 18
  br i1 %i.dj, label %.lr.ph979, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph979, %.preheader907
  %i.dk = tail call fastcc noundef zeroext i1 @build_decode_table(ptr noundef nonnull %i.m, ptr noundef nonnull %0, i32 noundef 19, ptr noundef nonnull @precode_decode_results, i32 noundef 7, i32 noundef 7, ptr noundef nonnull %i.n, ptr noundef null)
  br i1 %i.dk, label %.preheader905, label %.thread836, !prof !15

.preheader905:                                    ; preds = %._crit_edge
  %i.dl = add nuw nsw i32 %i.aw, %i.ay            ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader905, %bb.ar
  %.7680 = phi ptr [ %.10683, %bb.ar ], [ %.6679, %.preheader905 ] ; 8 uses
  %.8651 = phi i64 [ %.13656, %bb.ar ], [ %.lcssa1173, %.preheader905 ] ; 4 uses
  %.6624 = phi i32 [ %.10628, %bb.ar ], [ %i.dd, %.preheader905 ] ; 11 uses
  %.7 = phi i64 [ %.10, %bb.ar ], [ %.6617, %.preheader905 ] ; 4 uses
  %.2587 = phi i32 [ %.4589, %bb.ar ], [ 0, %.preheader905 ] ; 10 uses
  %i.dm = and i32 %.6624, 255                     ; 3 uses
  %i.dn = icmp samesign ult i32 %i.dm, 14
  br i1 %i.dn, label %bb.n, label %.loopexit899

bb.n:                                             ; preds = %bb.m
  %i.do = ptrtoint ptr %.7680 to i64
  %i.dp = sub i64 %i.i, %i.do
  %i.dq = icmp ugt i64 %i.dp, 7
  br i1 %i.dq, label %bb.o, label %.lr.ph984, !prof !15

bb.o:                                             ; preds = %bb.n
  %.0.copyload.i806 = load i64, ptr %.7680, align 1
  %i.dr = zext nneg i32 %i.dm to i64
  %i.ds = shl i64 %.0.copyload.i806, %i.dr
  %i.dt = or i64 %i.ds, %.8651
  %i.du = getelementptr inbounds nuw i8, ptr %.7680, i64 7
  %i.dv = lshr i32 %.6624, 3
  %i.dw = and i32 %i.dv, 7
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.du, i64 %i.dy
  %i.ea = or i32 %.6624, 56
  br label %.loopexit899

.lr.ph984:                                        ; preds = %bb.n
  %.not750 = icmp eq ptr %.7680, %i.e
  br i1 %.not750, label %bb.q, label %bb.p, !prof !16

bb.p:                                             ; preds = %.lr.ph984
  %i.eb = getelementptr inbounds nuw i8, ptr %.7680, i64 1
  %i.ec = load i8, ptr %.7680, align 1, !tbaa !17
  %i.ed = zext i8 %i.ec to i64
  %i.ee = zext nneg i32 %i.dm to i64
  %i.ef = shl nuw nsw i64 %i.ed, %i.ee
  %i.eg = or i64 %i.ef, %.8651
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph984
  %i.eh = add i64 %.7, 1                          ; 2 uses
  %i.ei = icmp ugt i64 %i.eh, 8
  br i1 %i.ei, label %.thread836, label %bb.r, !prof !16

bb.r:                                             ; preds = %bb.q, %bb.p
  %.9682 = phi ptr [ %i.eb, %bb.p ], [ %.7680, %bb.q ] ; 5 uses
  %.10653 = phi i64 [ %i.eg, %bb.p ], [ %.8651, %bb.q ] ; 3 uses
  %.9 = phi i64 [ %.7, %bb.p ], [ %i.eh, %bb.q ]  ; 3 uses
  %i.ej = add i32 %.6624, 8                       ; 2 uses
  %i.ek = and i32 %i.ej, 255                      ; 2 uses
  %i.el = icmp samesign ult i32 %i.ek, 56
  br i1 %i.el, label %.lr.ph984.1, label %.loopexit899

.lr.ph984.1:                                      ; preds = %bb.r
  %.not750.1 = icmp eq ptr %.9682, %i.e
  br i1 %.not750.1, label %bb.t, label %bb.s, !prof !16

bb.s:                                             ; preds = %.lr.ph984.1
  %i.em = getelementptr inbounds nuw i8, ptr %.9682, i64 1
  %i.en = load i8, ptr %.9682, align 1, !tbaa !17
  %i.eo = zext i8 %i.en to i64
  %i.ep = zext nneg i32 %i.ek to i64
  %i.eq = shl nuw nsw i64 %i.eo, %i.ep
  %i.er = or i64 %i.eq, %.10653
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph984.1
  %i.es = add i64 %.9, 1                          ; 2 uses
  %i.et = icmp ugt i64 %i.es, 8
  br i1 %i.et, label %.thread836, label %bb.u, !prof !16

bb.u:                                             ; preds = %bb.t, %bb.s
  %.9682.1 = phi ptr [ %i.em, %bb.s ], [ %.9682, %bb.t ] ; 5 uses
  %.10653.1 = phi i64 [ %i.er, %bb.s ], [ %.10653, %bb.t ] ; 3 uses
  %.9.1 = phi i64 [ %.9, %bb.s ], [ %i.es, %bb.t ] ; 3 uses
  %i.eu = add i32 %.6624, 16                      ; 2 uses
  %i.ev = and i32 %i.eu, 255                      ; 2 uses
  %i.ew = icmp samesign ult i32 %i.ev, 56
  br i1 %i.ew, label %.lr.ph984.2, label %.loopexit899

.lr.ph984.2:                                      ; preds = %bb.u
  %.not750.2 = icmp eq ptr %.9682.1, %i.e
  br i1 %.not750.2, label %bb.w, label %bb.v, !prof !16

bb.v:                                             ; preds = %.lr.ph984.2
  %i.ex = getelementptr inbounds nuw i8, ptr %.9682.1, i64 1
  %i.ey = load i8, ptr %.9682.1, align 1, !tbaa !17
  %i.ez = zext i8 %i.ey to i64
  %i.fa = zext nneg i32 %i.ev to i64
  %i.fb = shl nuw nsw i64 %i.ez, %i.fa
  %i.fc = or i64 %i.fb, %.10653.1
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph984.2
  %i.fd = add i64 %.9.1, 1                        ; 2 uses
  %i.fe = icmp ugt i64 %i.fd, 8
  br i1 %i.fe, label %.thread836, label %bb.x, !prof !16

bb.x:                                             ; preds = %bb.w, %bb.v
  %.9682.2 = phi ptr [ %i.ex, %bb.v ], [ %.9682.1, %bb.w ] ; 5 uses
  %.10653.2 = phi i64 [ %i.fc, %bb.v ], [ %.10653.1, %bb.w ] ; 3 uses
  %.9.2 = phi i64 [ %.9.1, %bb.v ], [ %i.fd, %bb.w ] ; 3 uses
  %i.ff = add i32 %.6624, 24                      ; 2 uses
  %i.fg = and i32 %i.ff, 255                      ; 2 uses
  %i.fh = icmp samesign ult i32 %i.fg, 56
  br i1 %i.fh, label %.lr.ph984.3, label %.loopexit899

.lr.ph984.3:                                      ; preds = %bb.x
  %.not750.3 = icmp eq ptr %.9682.2, %i.e
  br i1 %.not750.3, label %bb.z, label %bb.y, !prof !16

bb.y:                                             ; preds = %.lr.ph984.3
  %i.fi = getelementptr inbounds nuw i8, ptr %.9682.2, i64 1
  %i.fj = load i8, ptr %.9682.2, align 1, !tbaa !17
  %i.fk = zext i8 %i.fj to i64
  %i.fl = zext nneg i32 %i.fg to i64
  %i.fm = shl nuw nsw i64 %i.fk, %i.fl
  %i.fn = or i64 %i.fm, %.10653.2
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph984.3
  %i.fo = add i64 %.9.2, 1                        ; 2 uses
  %i.fp = icmp ugt i64 %i.fo, 8
  br i1 %i.fp, label %.thread836, label %bb.aa, !prof !16

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.9682.3 = phi ptr [ %i.fi, %bb.y ], [ %.9682.2, %bb.z ] ; 5 uses
  %.10653.3 = phi i64 [ %i.fn, %bb.y ], [ %.10653.2, %bb.z ] ; 3 uses
  %.9.3 = phi i64 [ %.9.2, %bb.y ], [ %i.fo, %bb.z ] ; 3 uses
  %i.fq = add i32 %.6624, 32                      ; 2 uses
  %i.fr = and i32 %i.fq, 255                      ; 2 uses
  %i.fs = icmp samesign ult i32 %i.fr, 56
  br i1 %i.fs, label %.lr.ph984.4, label %.loopexit899

.lr.ph984.4:                                      ; preds = %bb.aa
  %.not750.4 = icmp eq ptr %.9682.3, %i.e
  br i1 %.not750.4, label %bb.ac, label %bb.ab, !prof !16

bb.ab:                                            ; preds = %.lr.ph984.4
  %i.ft = getelementptr inbounds nuw i8, ptr %.9682.3, i64 1
  %i.fu = load i8, ptr %.9682.3, align 1, !tbaa !17
  %i.fv = zext i8 %i.fu to i64
  %i.fw = zext nneg i32 %i.fr to i64
  %i.fx = shl nuw nsw i64 %i.fv, %i.fw
  %i.fy = or i64 %i.fx, %.10653.3
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph984.4
  %i.fz = add i64 %.9.3, 1                        ; 2 uses
  %i.ga = icmp ugt i64 %i.fz, 8
  br i1 %i.ga, label %.thread836, label %bb.ad, !prof !16

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.9682.4 = phi ptr [ %i.ft, %bb.ab ], [ %.9682.3, %bb.ac ] ; 5 uses
  %.10653.4 = phi i64 [ %i.fy, %bb.ab ], [ %.10653.3, %bb.ac ] ; 3 uses
  %.9.4 = phi i64 [ %.9.3, %bb.ab ], [ %i.fz, %bb.ac ] ; 3 uses
end_hunk_0
begin_hunk_1_@deflate_decompress_default:bb.a
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17
  %wide.load1149 = load <16 x i8>, ptr %i.yx, align 1, !tbaa !17
  %i.yy = getelementptr i8, ptr %next.gep1148, i64 16
  store <16 x i8> %wide.load, ptr %next.gep1148, align 1, !tbaa !17
  store <16 x i8> %wide.load1149, ptr %i.yy, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.yz = icmp eq i64 %index.next, %n.vec
  br i1 %i.yz, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ys, %n.vec
  br i1 %cmp.n, label %.loopexit904.backedge, label %vec.epilog.iter.check

.loopexit904.backedge:                            ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.cy
  %.6706.be = phi ptr [ %i.yi, %vec.epilog.middle.block ], [ %i.yi, %middle.block ], [ %i.wl, %bb.cy ], [ %i.yi, %vec.epilog.scalar.ph ]
  %.26669.be = phi i64 [ %i.yc, %vec.epilog.middle.block ], [ %i.yc, %middle.block ], [ %.30, %bb.cy ], [ %i.yc, %vec.epilog.scalar.ph ]
  %.23.be = phi i32 [ %i.yd, %vec.epilog.middle.block ], [ %i.yd, %middle.block ], [ %.26, %bb.cy ], [ %i.yd, %vec.epilog.scalar.ph ]
  br label %.loopexit904

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.yu, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1151 = and i64 %i.ys, -8                  ; 4 uses
  %i.za = getelementptr i8, ptr %i.ym, i64 %n.vec1151
  %i.zb = getelementptr i8, ptr %i.yo, i64 %n.vec1151
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1156, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1153 = getelementptr i8, ptr %i.ym, i64 %index1152
  %next.gep1154 = getelementptr i8, ptr %i.yo, i64 %index1152
  %wide.load1155 = load <8 x i8>, ptr %next.gep1153, align 1, !tbaa !17
  store <8 x i8> %wide.load1155, ptr %next.gep1154, align 1, !tbaa !17
  %index.next1156 = add nuw i64 %index1152, 8     ; 2 uses
  %i.zc = icmp eq i64 %index.next1156, %n.vec1151
  br i1 %i.zc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1157 = icmp eq i64 %i.ys, %n.vec1151
  br i1 %cmp.n1157, label %.loopexit904.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0578.ph = phi ptr [ %i.ym, %iter.check ], [ %i.yv, %vec.epilog.iter.check ], [ %i.za, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %i.yo, %iter.check ], [ %i.yw, %vec.epilog.iter.check ], [ %i.zb, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0578 = phi ptr [ %i.zd, %vec.epilog.scalar.ph ], [ %.0578.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.zf, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.0578, i64 1
  %i.ze = load i8, ptr %.0578, align 1, !tbaa !17
  %i.zf = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %i.ze, ptr %.0, align 1, !tbaa !17
  %i.zg = icmp ult ptr %i.zf, %i.yi
  br i1 %i.zg, label %vec.epilog.scalar.ph, label %.loopexit904.backedge, !llvm.loop !46

.thread869:                                       ; preds = %bb.bl, %bb.bi, %bb.cz, %bb.ay
  %.8708 = phi ptr [ %.6706, %bb.cz ], [ %i.jn, %bb.ay ], [ %.3703, %bb.bi ], [ %.3703, %bb.bl ] ; 3 uses
  %.26699 = phi ptr [ %.24697, %bb.cz ], [ %i.jm, %bb.ay ], [ %.16689, %bb.bi ], [ %.16689, %bb.bl ] ; 2 uses
  %.33 = phi i64 [ %.30, %bb.cz ], [ 0, %bb.ay ], [ %.20663, %bb.bi ], [ %i.mp, %bb.bl ]
  %.29 = phi i32 [ %.26, %bb.cz ], [ 0, %bb.ay ], [ %.17635, %bb.bi ], [ %i.mq, %bb.bl ] ; 2 uses
  %.21 = phi i64 [ %.19, %bb.cz ], [ 0, %bb.ay ], [ %.15, %bb.bi ], [ %.15, %bb.bl ] ; 3 uses
  br i1 %.not744, label %bb.b, label %bb.de

bb.de:                                            ; preds = %.thread869
  %i.zh = lshr i32 %.29, 3
  %i.zi = and i32 %i.zh, 31
  %i.zj = zext nneg i32 %i.zi to i64              ; 2 uses
  %.not781 = icmp ugt i64 %.21, %i.zj
  br i1 %.not781, label %.thread836, label %bb.df, !prof !16

bb.df:                                            ; preds = %bb.de
  %.not782 = icmp eq ptr %5, null
  br i1 %.not782, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.neg783 = sub nsw i64 %.21, %i.zj
  %i.zk = getelementptr inbounds i8, ptr %.26699, i64 %.neg783
  %i.zl = ptrtoint ptr %i.zk to i64
  %i.zm = ptrtoint ptr %1 to i64
  %i.zn = sub i64 %i.zl, %i.zm
  store i64 %i.zn, ptr %5, align 8, !tbaa !27
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.not784 = icmp eq ptr %6, null
  br i1 %.not784, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.zo = ptrtoint ptr %.8708 to i64
  %i.zp = sub i64 %i.zo, %i.q
  store i64 %i.zp, ptr %6, align 8, !tbaa !27
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %.not785 = icmp eq ptr %.8708, %i.a
  br i1 %.not785, label %bb.dk, label %.thread836

bb.dk:                                            ; preds = %bb.dj, %bb.di
  br label %.thread836

.thread836:                                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %._crit_edge, %bb.as, %.loopexit916, %bb.ba, %.thread843, %bb.e, %bb.j, %bb.am, %bb.bs, %bb.dd, %bb.da, %bb.cx, %bb.q, %bb.t, %bb.w, %bb.z, %bb.ac, %bb.af, %bb.ai, %bb.cb, %bb.ce, %bb.ch, %bb.ck, %bb.cn, %bb.cq, %bb.ct, %bb.dj, %bb.de, %bb.dk
  %.14723 = phi i32 [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %bb.am ], [ 1, %bb.dd ], [ 0, %bb.dk ], [ 1, %bb.de ], [ 2, %bb.dj ], [ 1, %bb.bs ], [ 1, %bb.j ], [ 1, %bb.cb ], [ 1, %bb.ct ], [ 1, %bb.cq ], [ 1, %bb.cn ], [ 1, %bb.ck ], [ 1, %bb.ch ], [ 1, %bb.ce ], [ 1, %bb.ai ], [ 1, %bb.af ], [ 1, %bb.ac ], [ 1, %bb.z ], [ 1, %bb.w ], [ 1, %bb.t ], [ 3, %bb.cx ], [ 3, %bb.da ], [ 1, %bb.au ], [ 1, %bb.av ], [ 3, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.as ], [ 1, %._crit_edge ], [ 1, %.loopexit916 ], [ 1, %bb.at ], [ 1, %.thread843 ], [ 1, %bb.ba ]
  ret i32 %.14723
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4) i32 @deflate_decompress_bmi2(ptr noalias nofree noundef captures(address_is_null) %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 4 uses
  %i.b = tail call i64 @llvm.umin.i64(i64 %4, i64 299)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 18 uses
  %i.f = tail call i64 @llvm.umin.i64(i64 %2, i64 25)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 2 uses
  %i.i = ptrtoint ptr %i.e to i64                 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11552 ; 3 uses
  %i.k = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10976 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9368 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 11556 ; 2 uses
  %i.q = ptrtoint ptr %3 to i64                   ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 144
  %scevgep1043 = getelementptr i8, ptr %0, i64 256
  %scevgep1045 = getelementptr i8, ptr %0, i64 280
  %scevgep1047 = getelementptr i8, ptr %0, i64 288
  br label %bb.b

bb.b:                                             ; preds = %.thread869, %bb.a
  %.0700 = phi ptr [ %3, %bb.a ], [ %.8708, %.thread869 ] ; 6 uses
  %.0673 = phi ptr [ %1, %bb.a ], [ %.26699, %.thread869 ] ; 5 uses
  %.0643 = phi i64 [ 0, %bb.a ], [ %.33, %.thread869 ] ; 3 uses
  %.0618 = phi i32 [ 0, %bb.a ], [ %.29, %.thread869 ] ; 6 uses
  %.0611 = phi i64 [ 0, %bb.a ], [ %.21, %.thread869 ] ; 3 uses
  %i.r = ptrtoint ptr %.0673 to i64
  %i.s = sub i64 %i.i, %i.r
  %i.t = icmp ugt i64 %i.s, 7
  br i1 %i.t, label %bb.c, label %.preheader915, !prof !15

.preheader915:                                    ; preds = %bb.b
  %i.u = and i32 %.0618, 255                      ; 2 uses
  %i.v = icmp samesign ult i32 %i.u, 56
  br i1 %i.v, label %.lr.ph, label %.loopexit916

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i808 = load i64, ptr %.0673, align 1
  %i.w = and i32 %.0618, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl i64 %.0.copyload.i808, %i.x
  %i.z = or i64 %i.y, %.0643
  %i.aa = getelementptr inbounds nuw i8, ptr %.0673, i64 7
  %i.ab = lshr i32 %.0618, 3
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = or i32 %.0618, 56
  br label %.loopexit916

.lr.ph:                                           ; preds = %.preheader915, %bb.f
  %i.ah = phi i32 [ %i.ar, %bb.f ], [ %i.u, %.preheader915 ]
  %.1612953 = phi i64 [ %.2613, %bb.f ], [ %.0611, %.preheader915 ] ; 2 uses
  %.1619952 = phi i32 [ %i.aq, %bb.f ], [ %.0618, %.preheader915 ]
  %.1644951 = phi i64 [ %.2645, %bb.f ], [ %.0643, %.preheader915 ] ; 2 uses
  %.1674950 = phi ptr [ %.2675, %bb.f ], [ %.0673, %.preheader915 ] ; 4 uses
  %.not = icmp eq ptr %.1674950, %i.e
  br i1 %.not, label %bb.e, label %bb.d, !prof !16

bb.d:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.1674950, i64 1
  %i.aj = load i8, ptr %.1674950, align 1, !tbaa !17
  %i.ak = zext i8 %i.aj to i64
  %i.al = zext nneg i32 %i.ah to i64
  %i.am = shl nuw nsw i64 %i.ak, %i.al
  %i.an = or i64 %i.am, %.1644951
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ao = add i64 %.1612953, 1                    ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 8
  br i1 %i.ap, label %.thread836, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2675 = phi ptr [ %i.ai, %bb.d ], [ %.1674950, %bb.e ] ; 2 uses
  %.2645 = phi i64 [ %i.an, %bb.d ], [ %.1644951, %bb.e ] ; 2 uses
  %.2613 = phi i64 [ %.1612953, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  %i.aq = add i32 %.1619952, 8                    ; 3 uses
  %i.ar = and i32 %i.aq, 255                      ; 2 uses
  %i.as = icmp samesign ult i32 %i.ar, 56
  br i1 %i.as, label %.lr.ph, label %.loopexit916, !llvm.loop !47

.loopexit916:                                     ; preds = %bb.f, %.preheader915, %bb.c
  %.3676 = phi ptr [ %i.af, %bb.c ], [ %.0673, %.preheader915 ], [ %.2675, %bb.f ] ; 8 uses
  %.3646 = phi i64 [ %i.z, %bb.c ], [ %.0643, %.preheader915 ], [ %.2645, %bb.f ] ; 5 uses
  %.2620 = phi i32 [ %i.ag, %bb.c ], [ %.0618, %.preheader915 ], [ %i.aq, %bb.f ] ; 3 uses
  %.3614 = phi i64 [ %.0611, %bb.c ], [ %.0611, %.preheader915 ], [ %.2613, %bb.f ] ; 7 uses
  %i.at = and i64 %.3646, 1
  %.not744 = icmp eq i64 %i.at, 0
  %7 = trunc i64 %.3646 to i32                    ; 4 uses
  %8 = lshr i32 %7, 1
  %i.au = and i32 %8, 3
  switch i32 %i.au, label %default.unreachable [
    i32 2, label %bb.g
    i32 0, label %bb.at
    i32 1, label %bb.az
    i32 3, label %.thread836
  ], !prof !19

bb.g:                                             ; preds = %.loopexit916
  %9 = lshr i32 %7, 3
  %i.av = and i32 %9, 31
  %i.aw = add nuw nsw i32 %i.av, 257              ; 2 uses
  %10 = lshr i32 %7, 8
  %i.ax = and i32 %10, 31
  %i.ay = add nuw nsw i32 %i.ax, 1                ; 2 uses
  %11 = lshr i32 %7, 13                           ; 2 uses
  %i.az = and i32 %11, 15
  store i8 0, ptr %i.j, align 8, !tbaa !20
  %i.ba = lshr i64 %.3646, 17
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = and i8 %i.bb, 7
  store i8 %i.bc, ptr %i.l, align 8, !tbaa !17
  %i.bd = lshr i64 %.3646, 20                     ; 3 uses
  %i.be = add i32 %.2620, -20                     ; 6 uses
  %i.bf = ptrtoint ptr %.3676 to i64
  %i.bg = sub i64 %i.i, %i.bf
  %i.bh = icmp ugt i64 %i.bg, 7
  br i1 %i.bh, label %bb.h, label %.preheader908, !prof !15

.preheader908:                                    ; preds = %bb.g
  %i.bi = and i32 %i.be, 255                      ; 2 uses
  %i.bj = icmp samesign ult i32 %i.bi, 56
  br i1 %i.bj, label %.lr.ph973, label %.loopexit909

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i807 = load i64, ptr %.3676, align 1
  %i.bk = and i32 %i.be, 255
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl i64 %.0.copyload.i807, %i.bl
  %i.bn = or i64 %i.bm, %i.bd
  %i.bo = getelementptr inbounds nuw i8, ptr %.3676, i64 7
  %i.bp = lshr i32 %i.be, 3
  %i.bq = and i32 %i.bp, 7
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 %i.bs
  %i.bu = or i32 %i.be, 56
  br label %.loopexit909

.lr.ph973:                                        ; preds = %.preheader908, %bb.k
  %i.bv = phi i32 [ %i.cf, %bb.k ], [ %i.bi, %.preheader908 ]
  %.4615972 = phi i64 [ %.5616, %bb.k ], [ %.3614, %.preheader908 ] ; 2 uses
  %.3621971 = phi i32 [ %i.ce, %bb.k ], [ %i.be, %.preheader908 ]
  %.4647970 = phi i64 [ %.5648, %bb.k ], [ %i.bd, %.preheader908 ] ; 2 uses
  %.4677969 = phi ptr [ %.5678, %bb.k ], [ %.3676, %.preheader908 ] ; 4 uses
  %.not749 = icmp eq ptr %.4677969, %i.e
  br i1 %.not749, label %bb.j, label %bb.i, !prof !16

bb.i:                                             ; preds = %.lr.ph973
  %i.bw = getelementptr inbounds nuw i8, ptr %.4677969, i64 1
  %i.bx = load i8, ptr %.4677969, align 1, !tbaa !17
  %i.by = zext i8 %i.bx to i64
  %i.bz = zext nneg i32 %i.bv to i64
  %i.ca = shl nuw nsw i64 %i.by, %i.bz
  %i.cb = or i64 %i.ca, %.4647970
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph973
  %i.cc = add i64 %.4615972, 1                    ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, 8
  br i1 %i.cd, label %.thread836, label %bb.k, !prof !16

bb.k:                                             ; preds = %bb.j, %bb.i
  %.5678 = phi ptr [ %i.bw, %bb.i ], [ %.4677969, %bb.j ] ; 2 uses
  %.5648 = phi i64 [ %i.cb, %bb.i ], [ %.4647970, %bb.j ] ; 2 uses
  %.5616 = phi i64 [ %.4615972, %bb.i ], [ %i.cc, %bb.j ] ; 2 uses
  %i.ce = add i32 %.3621971, 8                    ; 3 uses
  %i.cf = and i32 %i.ce, 255                      ; 2 uses
  %i.cg = icmp samesign ult i32 %i.cf, 56
  br i1 %i.cg, label %.lr.ph973, label %.loopexit909, !llvm.loop !48

.loopexit909:                                     ; preds = %bb.k, %.preheader908, %bb.h
  %.6679 = phi ptr [ %i.bt, %bb.h ], [ %.3676, %.preheader908 ], [ %.5678, %bb.k ]
  %.6649 = phi i64 [ %i.bn, %bb.h ], [ %i.bd, %.preheader908 ], [ %.5648, %bb.k ]
  %.4622 = phi i32 [ %i.bu, %bb.h ], [ %i.be, %.preheader908 ], [ %i.ce, %bb.k ]
  %.6617 = phi i64 [ %.3614, %bb.h ], [ %.3614, %.preheader908 ], [ %.5616, %bb.k ]
  %12 = and i32 %11, 15
  %narrow = add nuw nsw i32 %12, 3                ; 2 uses
  %13 = zext nneg i32 %narrow to i64              ; 2 uses
  %xtraiter = and i64 %13, 1
  %unroll_iter = and i64 %13, 30
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.loopexit909
  %indvars.iv1050 = phi i64 [ 2, %.loopexit909 ], [ %indvars.iv.next1051.1, %bb.l ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.loopexit909 ], [ %indvars.iv.next.1, %bb.l ] ; 3 uses
  %.7650 = phi i64 [ %.6649, %.loopexit909 ], [ %i.cu, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.loopexit909 ], [ %niter.next.1, %bb.l ]
  %i.ch = trunc i64 %.7650 to i8
  %i.ci = and i8 %i.ch, 7
  %i.cj = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !17
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl
  store i8 %i.ci, ptr %i.cm, align 1, !tbaa !17
  %i.cn = lshr i64 %.7650, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.co = trunc i64 %i.cn to i8
  %i.cp = and i8 %i.co, 7
  %i.cq = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv.next
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !17
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %i.cs
  store i8 %i.cp, ptr %i.ct, align 1, !tbaa !17
  %i.cu = lshr i64 %.7650, 6                      ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %indvars.iv.next1051.1 = add nuw nsw i64 %indvars.iv1050, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader907.unr-lcssa, label %bb.l, !llvm.loop !49

.preheader907.unr-lcssa:                          ; preds = %bb.l
  %indvars.iv.next1051 = or disjoint i64 %indvars.iv1050, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader907, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader907.unr-lcssa
  %lcmp.mod1190 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod1190)
  %i.cv = trunc i64 %i.cu to i8
  %i.cw = and i8 %i.cv, 7
  %i.cx = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv.next.1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !17
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %i.cz
  store i8 %i.cw, ptr %i.da, align 1, !tbaa !17
  %i.db = lshr i64 %i.cu, 3
  br label %.preheader907

.preheader907:                                    ; preds = %.preheader907.unr-lcssa, %.epil.preheader
  %indvars.iv1050.lcssa = phi i64 [ %indvars.iv.next1051, %.preheader907.unr-lcssa ], [ %indvars.iv.next1051.1, %.epil.preheader ]
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next, %.preheader907.unr-lcssa ], [ %indvars.iv.next.1, %.epil.preheader ]
  %.lcssa1173 = phi i64 [ %i.cu, %.preheader907.unr-lcssa ], [ %i.db, %.epil.preheader ]
  %i.dc = add i32 %.4622, -9
  %.neg1094 = mul nsw i32 %i.az, -3
  %i.dd = add i32 %.neg1094, %i.dc
  %i.de = icmp samesign ult i64 %indvars.iv.lcssa, 18
  br i1 %i.de, label %.lr.ph979, label %._crit_edge

.lr.ph979:                                        ; preds = %.preheader907, %.lr.ph979
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %.lr.ph979 ], [ %indvars.iv1050.lcssa, %.preheader907 ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv1052
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !17
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %i.dh
  store i8 0, ptr %i.di, align 1, !tbaa !17
  %indvars.iv.next1053 = add nuw nsw i64 %indvars.iv1052, 1
  %i.dj = icmp samesign ult i64 %indvars.iv1052, 18
  br i1 %i.dj, label %.lr.ph979, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %.lr.ph979, %.preheader907
  %i.dk = tail call fastcc noundef zeroext i1 @build_decode_table(ptr noundef nonnull %i.m, ptr noundef nonnull %0, i32 noundef 19, ptr noundef nonnull @precode_decode_results, i32 noundef 7, i32 noundef 7, ptr noundef nonnull %i.n, ptr noundef null)
  br i1 %i.dk, label %.preheader905, label %.thread836, !prof !15

.preheader905:                                    ; preds = %._crit_edge
  %i.dl = add nuw nsw i32 %i.aw, %i.ay            ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader905, %bb.ar
  %.7680 = phi ptr [ %.10683, %bb.ar ], [ %.6679, %.preheader905 ] ; 8 uses
  %.8651 = phi i64 [ %.13656, %bb.ar ], [ %.lcssa1173, %.preheader905 ] ; 4 uses
  %.6624 = phi i32 [ %.10628, %bb.ar ], [ %i.dd, %.preheader905 ] ; 11 uses
  %.7 = phi i64 [ %.10, %bb.ar ], [ %.6617, %.preheader905 ] ; 4 uses
  %.2587 = phi i32 [ %.4589, %bb.ar ], [ 0, %.preheader905 ] ; 10 uses
  %i.dm = and i32 %.6624, 255                     ; 3 uses
  %i.dn = icmp samesign ult i32 %i.dm, 14
  br i1 %i.dn, label %bb.n, label %.loopexit899

bb.n:                                             ; preds = %bb.m
  %i.do = ptrtoint ptr %.7680 to i64
  %i.dp = sub i64 %i.i, %i.do
  %i.dq = icmp ugt i64 %i.dp, 7
  br i1 %i.dq, label %bb.o, label %.lr.ph984, !prof !15

bb.o:                                             ; preds = %bb.n
  %.0.copyload.i806 = load i64, ptr %.7680, align 1
  %i.dr = zext nneg i32 %i.dm to i64
  %i.ds = shl i64 %.0.copyload.i806, %i.dr
  %i.dt = or i64 %i.ds, %.8651
  %i.du = getelementptr inbounds nuw i8, ptr %.7680, i64 7
  %i.dv = lshr i32 %.6624, 3
  %i.dw = and i32 %i.dv, 7
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.du, i64 %i.dy
  %i.ea = or i32 %.6624, 56
  br label %.loopexit899

.lr.ph984:                                        ; preds = %bb.n
  %.not750 = icmp eq ptr %.7680, %i.e
  br i1 %.not750, label %bb.q, label %bb.p, !prof !16

bb.p:                                             ; preds = %.lr.ph984
  %i.eb = getelementptr inbounds nuw i8, ptr %.7680, i64 1
  %i.ec = load i8, ptr %.7680, align 1, !tbaa !17
  %i.ed = zext i8 %i.ec to i64
  %i.ee = zext nneg i32 %i.dm to i64
  %i.ef = shl nuw nsw i64 %i.ed, %i.ee
  %i.eg = or i64 %i.ef, %.8651
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph984
  %i.eh = add i64 %.7, 1                          ; 2 uses
  %i.ei = icmp ugt i64 %i.eh, 8
  br i1 %i.ei, label %.thread836, label %bb.r, !prof !16

bb.r:                                             ; preds = %bb.q, %bb.p
  %.9682 = phi ptr [ %i.eb, %bb.p ], [ %.7680, %bb.q ] ; 5 uses
  %.10653 = phi i64 [ %i.eg, %bb.p ], [ %.8651, %bb.q ] ; 3 uses
  %.9 = phi i64 [ %.7, %bb.p ], [ %i.eh, %bb.q ]  ; 3 uses
  %i.ej = add i32 %.6624, 8                       ; 2 uses
  %i.ek = and i32 %i.ej, 255                      ; 2 uses
  %i.el = icmp samesign ult i32 %i.ek, 56
  br i1 %i.el, label %.lr.ph984.1, label %.loopexit899

.lr.ph984.1:                                      ; preds = %bb.r
  %.not750.1 = icmp eq ptr %.9682, %i.e
  br i1 %.not750.1, label %bb.t, label %bb.s, !prof !16

bb.s:                                             ; preds = %.lr.ph984.1
  %i.em = getelementptr inbounds nuw i8, ptr %.9682, i64 1
  %i.en = load i8, ptr %.9682, align 1, !tbaa !17
  %i.eo = zext i8 %i.en to i64
  %i.ep = zext nneg i32 %i.ek to i64
  %i.eq = shl nuw nsw i64 %i.eo, %i.ep
  %i.er = or i64 %i.eq, %.10653
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph984.1
  %i.es = add i64 %.9, 1                          ; 2 uses
  %i.et = icmp ugt i64 %i.es, 8
  br i1 %i.et, label %.thread836, label %bb.u, !prof !16

bb.u:                                             ; preds = %bb.t, %bb.s
  %.9682.1 = phi ptr [ %i.em, %bb.s ], [ %.9682, %bb.t ] ; 5 uses
  %.10653.1 = phi i64 [ %i.er, %bb.s ], [ %.10653, %bb.t ] ; 3 uses
  %.9.1 = phi i64 [ %.9, %bb.s ], [ %i.es, %bb.t ] ; 3 uses
  %i.eu = add i32 %.6624, 16                      ; 2 uses
  %i.ev = and i32 %i.eu, 255                      ; 2 uses
  %i.ew = icmp samesign ult i32 %i.ev, 56
  br i1 %i.ew, label %.lr.ph984.2, label %.loopexit899

.lr.ph984.2:                                      ; preds = %bb.u
  %.not750.2 = icmp eq ptr %.9682.1, %i.e
  br i1 %.not750.2, label %bb.w, label %bb.v, !prof !16

bb.v:                                             ; preds = %.lr.ph984.2
  %i.ex = getelementptr inbounds nuw i8, ptr %.9682.1, i64 1
  %i.ey = load i8, ptr %.9682.1, align 1, !tbaa !17
  %i.ez = zext i8 %i.ey to i64
  %i.fa = zext nneg i32 %i.ev to i64
  %i.fb = shl nuw nsw i64 %i.ez, %i.fa
  %i.fc = or i64 %i.fb, %.10653.1
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph984.2
  %i.fd = add i64 %.9.1, 1                        ; 2 uses
  %i.fe = icmp ugt i64 %i.fd, 8
  br i1 %i.fe, label %.thread836, label %bb.x, !prof !16

bb.x:                                             ; preds = %bb.w, %bb.v
  %.9682.2 = phi ptr [ %i.ex, %bb.v ], [ %.9682.1, %bb.w ] ; 5 uses
  %.10653.2 = phi i64 [ %i.fc, %bb.v ], [ %.10653.1, %bb.w ] ; 3 uses
  %.9.2 = phi i64 [ %.9.1, %bb.v ], [ %i.fd, %bb.w ] ; 3 uses
  %i.ff = add i32 %.6624, 24                      ; 2 uses
  %i.fg = and i32 %i.ff, 255                      ; 2 uses
  %i.fh = icmp samesign ult i32 %i.fg, 56
  br i1 %i.fh, label %.lr.ph984.3, label %.loopexit899

.lr.ph984.3:                                      ; preds = %bb.x
  %.not750.3 = icmp eq ptr %.9682.2, %i.e
  br i1 %.not750.3, label %bb.z, label %bb.y, !prof !16

bb.y:                                             ; preds = %.lr.ph984.3
  %i.fi = getelementptr inbounds nuw i8, ptr %.9682.2, i64 1
  %i.fj = load i8, ptr %.9682.2, align 1, !tbaa !17
  %i.fk = zext i8 %i.fj to i64
  %i.fl = zext nneg i32 %i.fg to i64
  %i.fm = shl nuw nsw i64 %i.fk, %i.fl
  %i.fn = or i64 %i.fm, %.10653.2
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph984.3
  %i.fo = add i64 %.9.2, 1                        ; 2 uses
  %i.fp = icmp ugt i64 %i.fo, 8
  br i1 %i.fp, label %.thread836, label %bb.aa, !prof !16

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.9682.3 = phi ptr [ %i.fi, %bb.y ], [ %.9682.2, %bb.z ] ; 5 uses
  %.10653.3 = phi i64 [ %i.fn, %bb.y ], [ %.10653.2, %bb.z ] ; 3 uses
  %.9.3 = phi i64 [ %.9.2, %bb.y ], [ %i.fo, %bb.z ] ; 3 uses
  %i.fq = add i32 %.6624, 32                      ; 2 uses
  %i.fr = and i32 %i.fq, 255                      ; 2 uses
  %i.fs = icmp samesign ult i32 %i.fr, 56
  br i1 %i.fs, label %.lr.ph984.4, label %.loopexit899

.lr.ph984.4:                                      ; preds = %bb.aa
  %.not750.4 = icmp eq ptr %.9682.3, %i.e
  br i1 %.not750.4, label %bb.ac, label %bb.ab, !prof !16

bb.ab:                                            ; preds = %.lr.ph984.4
  %i.ft = getelementptr inbounds nuw i8, ptr %.9682.3, i64 1
  %i.fu = load i8, ptr %.9682.3, align 1, !tbaa !17
  %i.fv = zext i8 %i.fu to i64
  %i.fw = zext nneg i32 %i.fr to i64
  %i.fx = shl nuw nsw i64 %i.fv, %i.fw
  %i.fy = or i64 %i.fx, %.10653.3
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph984.4
  %i.fz = add i64 %.9.3, 1                        ; 2 uses
  %i.ga = icmp ugt i64 %i.fz, 8
  br i1 %i.ga, label %.thread836, label %bb.ad, !prof !16

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.9682.4 = phi ptr [ %i.ft, %bb.ab ], [ %.9682.3, %bb.ac ] ; 5 uses
  %.10653.4 = phi i64 [ %i.fy, %bb.ab ], [ %.10653.3, %bb.ac ] ; 3 uses
  %.9.4 = phi i64 [ %.9.3, %bb.ab ], [ %i.fz, %bb.ac ] ; 3 uses
end_hunk_1
