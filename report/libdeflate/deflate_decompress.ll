Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/deflate_decompress?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@libdeflate_deflate_decompress_ex:bb.a
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
  %7 = and i64 %.3646, 1
  %.not744 = icmp eq i64 %7, 0
  %i.at = trunc i64 %.3646 to i32                 ; 4 uses
  %i.au = lshr i32 %i.at, 1
  %i.av = and i32 %i.au, 3
  switch i32 %i.av, label %default.unreachable [
    i32 2, label %bb.g
    i32 0, label %bb.at
    i32 1, label %bb.az
    i32 3, label %.thread836
  ], !prof !19

bb.g:                                             ; preds = %.loopexit916
  %i.aw = lshr i32 %i.at, 3
  %i.ax = and i32 %i.aw, 31
  %i.ay = add nuw nsw i32 %i.ax, 257              ; 2 uses
  %i.az = lshr i32 %i.at, 8
  %i.ba = and i32 %i.az, 31
  %i.bb = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.bc = lshr i32 %i.at, 13                      ; 2 uses
  %i.bd = and i32 %i.bc, 15
  store i8 0, ptr %i.j, align 8, !tbaa !20
  %i.be = lshr i64 %.3646, 17
  %i.bf = trunc i64 %i.be to i8
  %i.bg = and i8 %i.bf, 7
  store i8 %i.bg, ptr %i.l, align 8, !tbaa !17
  %i.bh = lshr i64 %.3646, 20                     ; 3 uses
  %i.bi = add i32 %.2620, -20                     ; 6 uses
  %i.bj = ptrtoint ptr %.3676 to i64
  %i.bk = sub i64 %i.i, %i.bj
  %i.bl = icmp ugt i64 %i.bk, 7
  br i1 %i.bl, label %bb.h, label %.preheader908, !prof !15

.preheader908:                                    ; preds = %bb.g
  %i.bm = and i32 %i.bi, 255                      ; 2 uses
  %i.bn = icmp samesign ult i32 %i.bm, 56
  br i1 %i.bn, label %.lr.ph973, label %.loopexit909

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i807 = load i64, ptr %.3676, align 1
  %i.bo = and i32 %i.bi, 255
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl i64 %.0.copyload.i807, %i.bp
  %i.br = or i64 %i.bq, %i.bh
  %i.bs = getelementptr inbounds nuw i8, ptr %.3676, i64 7
  %i.bt = lshr i32 %i.bi, 3
  %i.bu = and i32 %i.bt, 7
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bs, i64 %i.bw
  %i.by = or i32 %i.bi, 56
  br label %.loopexit909

.lr.ph973:                                        ; preds = %.preheader908, %bb.k
  %i.bz = phi i32 [ %i.cj, %bb.k ], [ %i.bm, %.preheader908 ]
  %.4615972 = phi i64 [ %.5616, %bb.k ], [ %.3614, %.preheader908 ] ; 2 uses
  %.3621971 = phi i32 [ %i.ci, %bb.k ], [ %i.bi, %.preheader908 ]
  %.4647970 = phi i64 [ %.5648, %bb.k ], [ %i.bh, %.preheader908 ] ; 2 uses
  %.4677969 = phi ptr [ %.5678, %bb.k ], [ %.3676, %.preheader908 ] ; 4 uses
  %.not749 = icmp eq ptr %.4677969, %i.e
  br i1 %.not749, label %bb.j, label %bb.i, !prof !16

bb.i:                                             ; preds = %.lr.ph973
  %i.ca = getelementptr inbounds nuw i8, ptr %.4677969, i64 1
  %i.cb = load i8, ptr %.4677969, align 1, !tbaa !17
  %i.cc = zext i8 %i.cb to i64
  %i.cd = zext nneg i32 %i.bz to i64
  %i.ce = shl nuw nsw i64 %i.cc, %i.cd
  %i.cf = or i64 %i.ce, %.4647970
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph973
  %i.cg = add i64 %.4615972, 1                    ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, 8
  br i1 %i.ch, label %.thread836, label %bb.k, !prof !16

bb.k:                                             ; preds = %bb.j, %bb.i
  %.5678 = phi ptr [ %i.ca, %bb.i ], [ %.4677969, %bb.j ] ; 2 uses
  %.5648 = phi i64 [ %i.cf, %bb.i ], [ %.4647970, %bb.j ] ; 2 uses
  %.5616 = phi i64 [ %.4615972, %bb.i ], [ %i.cg, %bb.j ] ; 2 uses
  %i.ci = add i32 %.3621971, 8                    ; 3 uses
  %i.cj = and i32 %i.ci, 255                      ; 2 uses
  %i.ck = icmp samesign ult i32 %i.cj, 56
  br i1 %i.ck, label %.lr.ph973, label %.loopexit909, !llvm.loop !36

.loopexit909:                                     ; preds = %bb.k, %.preheader908, %bb.h
  %.6679 = phi ptr [ %i.bx, %bb.h ], [ %.3676, %.preheader908 ], [ %.5678, %bb.k ]
  %.6649 = phi i64 [ %i.br, %bb.h ], [ %i.bh, %.preheader908 ], [ %.5648, %bb.k ]
  %.4622 = phi i32 [ %i.by, %bb.h ], [ %i.bi, %.preheader908 ], [ %i.ci, %bb.k ]
  %.6617 = phi i64 [ %.3614, %bb.h ], [ %.3614, %.preheader908 ], [ %.5616, %bb.k ]
  %i.cl = and i32 %i.bc, 15
  %narrow = add nuw nsw i32 %i.cl, 3              ; 2 uses
  %8 = zext nneg i32 %narrow to i64               ; 2 uses
  %xtraiter = and i64 %8, 1
  %unroll_iter = and i64 %8, 30
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.loopexit909
  %indvars.iv1050 = phi i64 [ 2, %.loopexit909 ], [ %indvars.iv.next1051.1, %bb.l ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.loopexit909 ], [ %indvars.iv.next.1, %bb.l ] ; 3 uses
  %.7650 = phi i64 [ %.6649, %.loopexit909 ], [ %i.cz, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.loopexit909 ], [ %niter.next.1, %bb.l ]
  %i.cm = trunc i64 %.7650 to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !17
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  store i8 %i.cn, ptr %i.cr, align 1, !tbaa !17
  %i.cs = lshr i64 %.7650, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = and i8 %i.ct, 7
  %i.cv = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv.next
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !17
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %i.cx
  store i8 %i.cu, ptr %i.cy, align 1, !tbaa !17
  %i.cz = lshr i64 %.7650, 6                      ; 4 uses
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
  %i.da = trunc i64 %i.cz to i8
  %i.db = and i8 %i.da, 7
  %i.dc = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv.next.1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !17
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %i.de
  store i8 %i.db, ptr %i.df, align 1, !tbaa !17
  %i.dg = lshr i64 %i.cz, 3
  br label %.preheader907

.preheader907:                                    ; preds = %.preheader907.unr-lcssa, %.epil.preheader
  %indvars.iv1050.lcssa = phi i64 [ %indvars.iv.next1051, %.preheader907.unr-lcssa ], [ %indvars.iv.next1051.1, %.epil.preheader ]
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next, %.preheader907.unr-lcssa ], [ %indvars.iv.next.1, %.epil.preheader ]
  %.lcssa1173 = phi i64 [ %i.cz, %.preheader907.unr-lcssa ], [ %i.dg, %.epil.preheader ]
  %i.dh = add i32 %.4622, -9
  %.neg1094 = mul nsw i32 %i.bd, -3
  %i.di = add i32 %.neg1094, %i.dh
  %i.dj = icmp samesign ult i64 %indvars.iv.lcssa, 18
  br i1 %i.dj, label %.lr.ph979, label %._crit_edge

.lr.ph979:                                        ; preds = %.preheader907, %.lr.ph979
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %.lr.ph979 ], [ %indvars.iv1050.lcssa, %.preheader907 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv1052
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !17
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.dm
  store i8 0, ptr %i.dn, align 1, !tbaa !17
  %indvars.iv.next1053 = add nuw nsw i64 %indvars.iv1052, 1
  %i.do = icmp samesign ult i64 %indvars.iv1052, 18
  br i1 %i.do, label %.lr.ph979, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph979, %.preheader907
  %i.dp = tail call fastcc noundef zeroext i1 @build_decode_table(ptr noundef nonnull %i.m, ptr noundef nonnull %0, i32 noundef 19, ptr noundef nonnull @precode_decode_results, i32 noundef 7, i32 noundef 7, ptr noundef nonnull %i.n, ptr noundef null)
  br i1 %i.dp, label %.preheader905, label %.thread836, !prof !15

.preheader905:                                    ; preds = %._crit_edge
  %i.dq = add nuw nsw i32 %i.ay, %i.bb            ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader905, %bb.ar
  %.7680 = phi ptr [ %.10683, %bb.ar ], [ %.6679, %.preheader905 ] ; 8 uses
  %.8651 = phi i64 [ %.13656, %bb.ar ], [ %.lcssa1173, %.preheader905 ] ; 4 uses
  %.6624 = phi i32 [ %.10628, %bb.ar ], [ %i.di, %.preheader905 ] ; 11 uses
  %.7 = phi i64 [ %.10, %bb.ar ], [ %.6617, %.preheader905 ] ; 4 uses
  %.2587 = phi i32 [ %.4589, %bb.ar ], [ 0, %.preheader905 ] ; 10 uses
  %i.dr = and i32 %.6624, 255                     ; 3 uses
  %i.ds = icmp samesign ult i32 %i.dr, 14
  br i1 %i.ds, label %bb.n, label %.loopexit899

bb.n:                                             ; preds = %bb.m
  %i.dt = ptrtoint ptr %.7680 to i64
  %i.du = sub i64 %i.i, %i.dt
  %i.dv = icmp ugt i64 %i.du, 7
  br i1 %i.dv, label %bb.o, label %.lr.ph984, !prof !15

bb.o:                                             ; preds = %bb.n
  %.0.copyload.i806 = load i64, ptr %.7680, align 1
  %i.dw = zext nneg i32 %i.dr to i64
  %i.dx = shl i64 %.0.copyload.i806, %i.dw
  %i.dy = or i64 %i.dx, %.8651
  %i.dz = getelementptr inbounds nuw i8, ptr %.7680, i64 7
  %i.ea = lshr i32 %.6624, 3
  %i.eb = and i32 %i.ea, 7
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = sub nsw i64 0, %i.ec
  %i.ee = getelementptr inbounds i8, ptr %i.dz, i64 %i.ed
  %i.ef = or i32 %.6624, 56
  br label %.loopexit899

.lr.ph984:                                        ; preds = %bb.n
  %.not750 = icmp eq ptr %.7680, %i.e
  br i1 %.not750, label %bb.q, label %bb.p, !prof !16

bb.p:                                             ; preds = %.lr.ph984
  %i.eg = getelementptr inbounds nuw i8, ptr %.7680, i64 1
  %i.eh = load i8, ptr %.7680, align 1, !tbaa !17
  %i.ei = zext i8 %i.eh to i64
  %i.ej = zext nneg i32 %i.dr to i64
  %i.ek = shl nuw nsw i64 %i.ei, %i.ej
  %i.el = or i64 %i.ek, %.8651
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph984
  %i.em = add i64 %.7, 1                          ; 2 uses
  %i.en = icmp ugt i64 %i.em, 8
  br i1 %i.en, label %.thread836, label %bb.r, !prof !16

bb.r:                                             ; preds = %bb.q, %bb.p
  %.9682 = phi ptr [ %i.eg, %bb.p ], [ %.7680, %bb.q ] ; 5 uses
  %.10653 = phi i64 [ %i.el, %bb.p ], [ %.8651, %bb.q ] ; 3 uses
  %.9 = phi i64 [ %.7, %bb.p ], [ %i.em, %bb.q ]  ; 3 uses
  %i.eo = add i32 %.6624, 8                       ; 2 uses
  %i.ep = and i32 %i.eo, 255                      ; 2 uses
  %i.eq = icmp samesign ult i32 %i.ep, 56
  br i1 %i.eq, label %.lr.ph984.1, label %.loopexit899

.lr.ph984.1:                                      ; preds = %bb.r
  %.not750.1 = icmp eq ptr %.9682, %i.e
  br i1 %.not750.1, label %bb.t, label %bb.s, !prof !16

bb.s:                                             ; preds = %.lr.ph984.1
  %i.er = getelementptr inbounds nuw i8, ptr %.9682, i64 1
  %i.es = load i8, ptr %.9682, align 1, !tbaa !17
  %i.et = zext i8 %i.es to i64
  %i.eu = zext nneg i32 %i.ep to i64
  %i.ev = shl nuw nsw i64 %i.et, %i.eu
  %i.ew = or i64 %i.ev, %.10653
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph984.1
  %i.ex = add i64 %.9, 1                          ; 2 uses
  %i.ey = icmp ugt i64 %i.ex, 8
  br i1 %i.ey, label %.thread836, label %bb.u, !prof !16

bb.u:                                             ; preds = %bb.t, %bb.s
  %.9682.1 = phi ptr [ %i.er, %bb.s ], [ %.9682, %bb.t ] ; 5 uses
  %.10653.1 = phi i64 [ %i.ew, %bb.s ], [ %.10653, %bb.t ] ; 3 uses
  %.9.1 = phi i64 [ %.9, %bb.s ], [ %i.ex, %bb.t ] ; 3 uses
  %i.ez = add i32 %.6624, 16                      ; 2 uses
  %i.fa = and i32 %i.ez, 255                      ; 2 uses
  %i.fb = icmp samesign ult i32 %i.fa, 56
  br i1 %i.fb, label %.lr.ph984.2, label %.loopexit899

.lr.ph984.2:                                      ; preds = %bb.u
  %.not750.2 = icmp eq ptr %.9682.1, %i.e
  br i1 %.not750.2, label %bb.w, label %bb.v, !prof !16

bb.v:                                             ; preds = %.lr.ph984.2
  %i.fc = getelementptr inbounds nuw i8, ptr %.9682.1, i64 1
  %i.fd = load i8, ptr %.9682.1, align 1, !tbaa !17
  %i.fe = zext i8 %i.fd to i64
  %i.ff = zext nneg i32 %i.fa to i64
  %i.fg = shl nuw nsw i64 %i.fe, %i.ff
  %i.fh = or i64 %i.fg, %.10653.1
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph984.2
  %i.fi = add i64 %.9.1, 1                        ; 2 uses
  %i.fj = icmp ugt i64 %i.fi, 8
  br i1 %i.fj, label %.thread836, label %bb.x, !prof !16

bb.x:                                             ; preds = %bb.w, %bb.v
  %.9682.2 = phi ptr [ %i.fc, %bb.v ], [ %.9682.1, %bb.w ] ; 5 uses
  %.10653.2 = phi i64 [ %i.fh, %bb.v ], [ %.10653.1, %bb.w ] ; 3 uses
  %.9.2 = phi i64 [ %.9.1, %bb.v ], [ %i.fi, %bb.w ] ; 3 uses
  %i.fk = add i32 %.6624, 24                      ; 2 uses
  %i.fl = and i32 %i.fk, 255                      ; 2 uses
  %i.fm = icmp samesign ult i32 %i.fl, 56
  br i1 %i.fm, label %.lr.ph984.3, label %.loopexit899

.lr.ph984.3:                                      ; preds = %bb.x
  %.not750.3 = icmp eq ptr %.9682.2, %i.e
  br i1 %.not750.3, label %bb.z, label %bb.y, !prof !16

bb.y:                                             ; preds = %.lr.ph984.3
  %i.fn = getelementptr inbounds nuw i8, ptr %.9682.2, i64 1
  %i.fo = load i8, ptr %.9682.2, align 1, !tbaa !17
  %i.fp = zext i8 %i.fo to i64
  %i.fq = zext nneg i32 %i.fl to i64
  %i.fr = shl nuw nsw i64 %i.fp, %i.fq
  %i.fs = or i64 %i.fr, %.10653.2
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph984.3
  %i.ft = add i64 %.9.2, 1                        ; 2 uses
  %i.fu = icmp ugt i64 %i.ft, 8
  br i1 %i.fu, label %.thread836, label %bb.aa, !prof !16

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.9682.3 = phi ptr [ %i.fn, %bb.y ], [ %.9682.2, %bb.z ] ; 5 uses
  %.10653.3 = phi i64 [ %i.fs, %bb.y ], [ %.10653.2, %bb.z ] ; 3 uses
  %.9.3 = phi i64 [ %.9.2, %bb.y ], [ %i.ft, %bb.z ] ; 3 uses
  %i.fv = add i32 %.6624, 32                      ; 2 uses
  %i.fw = and i32 %i.fv, 255                      ; 2 uses
  %i.fx = icmp samesign ult i32 %i.fw, 56
  br i1 %i.fx, label %.lr.ph984.4, label %.loopexit899

.lr.ph984.4:                                      ; preds = %bb.aa
  %.not750.4 = icmp eq ptr %.9682.3, %i.e
  br i1 %.not750.4, label %bb.ac, label %bb.ab, !prof !16

bb.ab:                                            ; preds = %.lr.ph984.4
  %i.fy = getelementptr inbounds nuw i8, ptr %.9682.3, i64 1
  %i.fz = load i8, ptr %.9682.3, align 1, !tbaa !17
  %i.ga = zext i8 %i.fz to i64
  %i.gb = zext nneg i32 %i.fw to i64
  %i.gc = shl nuw nsw i64 %i.ga, %i.gb
  %i.gd = or i64 %i.gc, %.10653.3
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph984.4
  %i.ge = add i64 %.9.3, 1                        ; 2 uses
  %i.gf = icmp ugt i64 %i.ge, 8
  br i1 %i.gf, label %.thread836, label %bb.ad, !prof !16

bb.ad:                                            ; preds = %bb.ac, %bb.ab
end_hunk_0
begin_hunk_1_@deflate_decompress_default:bb.a
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !17 ; 3 uses
  %i.wj = and i32 %i.wi, 255
  %i.wk = zext nneg i32 %i.wj to i64
  %i.wl = lshr i64 %i.vw, %i.wk
  %i.wm = sub i32 %i.vx, %i.wi
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.loopexit894
  %.30 = phi i64 [ %i.wl, %bb.cv ], [ %i.vw, %.loopexit894 ] ; 5 uses
  %.2642 = phi i64 [ %i.vw, %bb.cv ], [ %.29672, %.loopexit894 ]
  %.26 = phi i32 [ %i.wm, %bb.cv ], [ %i.vx, %.loopexit894 ] ; 4 uses
  %.5600 = phi i32 [ %i.wi, %bb.cv ], [ %i.vt, %.loopexit894 ] ; 5 uses
  %i.wn = lshr i32 %.5600, 16                     ; 2 uses
  %.not774 = icmp sgt i32 %.5600, -1
  br i1 %.not774, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.wo = icmp eq ptr %.6706, %i.a
  br i1 %i.wo, label %.thread836, label %bb.cy, !prof !16

bb.cy:                                            ; preds = %bb.cx
  %i.wp = trunc i32 %i.wn to i8
  %i.wq = getelementptr inbounds nuw i8, ptr %.6706, i64 1
  store i8 %i.wp, ptr %.6706, align 1, !tbaa !17
  br label %.loopexit904.backedge

bb.cz:                                            ; preds = %bb.cw
  %i.wr = and i32 %.5600, 8192
  %.not775 = icmp eq i32 %i.wr, 0
  br i1 %.not775, label %bb.da, label %.thread869, !prof !15

bb.da:                                            ; preds = %bb.cz
  %i.ws = and i32 %.5600, 255
  %i.wt = zext nneg i32 %i.ws to i64
  %notmask776 = shl nsw i64 -1, %i.wt
  %i.wu = xor i64 %notmask776, -1
  %i.wv = and i64 %.2642, %i.wu
  %i.ww = lshr i32 %.5600, 8
  %i.wx = and i32 %i.ww, 223
  %i.wy = zext nneg i32 %i.wx to i64
  %i.wz = lshr i64 %i.wv, %i.wy
  %i.xa = trunc i64 %i.wz to i32
  %i.xb = add i32 %i.wn, %i.xa
  %i.xc = zext i32 %i.xb to i64                   ; 3 uses
  %i.xd = ptrtoint ptr %.6706 to i64              ; 5 uses
  %i.xe = sub i64 %i.k, %i.xd
  %i.xf = icmp slt i64 %i.xe, %i.xc
  br i1 %i.xf, label %.thread836, label %bb.db, !prof !16

bb.db:                                            ; preds = %bb.da
  %i.xg = and i64 %.30, 255
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xg
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !14 ; 4 uses
  %i.xj = and i32 %i.xi, 32768
  %.not777 = icmp eq i32 %i.xj, 0
  br i1 %.not777, label %bb.dd, label %bb.dc, !prof !15

bb.dc:                                            ; preds = %bb.db
  %i.xk = lshr i64 %.30, 8                        ; 2 uses
  %i.xl = add i32 %.26, -8
  %i.xm = lshr i32 %i.xi, 16
  %i.xn = zext nneg i32 %i.xm to i64
  %i.xo = lshr i32 %i.xi, 8
  %i.xp = and i32 %i.xo, 63
  %i.xq = zext nneg i32 %i.xp to i64
  %notmask778 = shl nsw i64 -1, %i.xq
  %i.xr = xor i64 %notmask778, -1
  %i.xs = and i64 %i.xk, %i.xr
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xs
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %i.xn
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !14
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.31 = phi i64 [ %i.xk, %bb.dc ], [ %.30, %bb.db ] ; 2 uses
  %.27 = phi i32 [ %i.xl, %bb.dc ], [ %.26, %bb.db ]
  %.6 = phi i32 [ %i.xv, %bb.dc ], [ %i.xi, %bb.db ] ; 4 uses
  %i.xw = lshr i32 %.6, 16
  %i.xx = and i32 %.6, 255
  %i.xy = zext nneg i32 %i.xx to i64              ; 2 uses
  %notmask779 = shl nsw i64 -1, %i.xy
  %i.xz = xor i64 %notmask779, -1
  %i.ya = and i64 %.31, %i.xz
  %i.yb = lshr i32 %.6, 8
  %i.yc = and i32 %i.yb, 255
  %i.yd = zext nneg i32 %i.yc to i64
  %i.ye = lshr i64 %i.ya, %i.yd
  %i.yf = trunc i64 %i.ye to i32
  %i.yg = add i32 %i.xw, %i.yf                    ; 2 uses
  %i.yh = lshr i64 %.31, %i.xy                    ; 3 uses
  %i.yi = sub i32 %.27, %.6                       ; 3 uses
  %i.yj = zext i32 %i.yg to i64                   ; 2 uses
  %i.yk = sub i64 %i.xd, %i.q
  %.not780 = icmp slt i64 %i.yk, %i.yj
  br i1 %.not780, label %.thread836, label %iter.check, !prof !16

iter.check:                                       ; preds = %bb.dd
  %i.yl = sub nsw i64 0, %i.yj
  %i.ym = getelementptr inbounds i8, ptr %.6706, i64 %i.yl ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.6706, i64 %i.xc ; 4 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 1
  %i.yp = load i8, ptr %i.ym, align 1, !tbaa !17
  %i.yq = getelementptr inbounds nuw i8, ptr %.6706, i64 1
  store i8 %i.yp, ptr %.6706, align 1, !tbaa !17
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ym, i64 2 ; 5 uses
  %i.ys = load i8, ptr %i.yo, align 1, !tbaa !17
  %i.yt = getelementptr inbounds nuw i8, ptr %.6706, i64 2 ; 5 uses
  store i8 %i.ys, ptr %i.yq, align 1, !tbaa !17
  %i.yu = add i64 %i.xd, %i.xc
  %i.yv = add i64 %i.xd, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.yu, i64 %i.yv)
  %i.yw = add i64 %umax, -2
  %i.yx = sub i64 %i.yw, %i.xd                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.yx, 8
  %i.yy = add i32 %i.yg, -1
  %diff.check = icmp ult i32 %i.yy, 31
  %or.cond1160 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1160, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1147 = icmp ult i64 %i.yx, 32
  br i1 %min.iters.check1147, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.yz = and i64 %i.yx, 24
  %n.vec = and i64 %i.yx, -32                     ; 5 uses
  %i.za = getelementptr i8, ptr %i.yr, i64 %n.vec
  %i.zb = getelementptr i8, ptr %i.yt, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.yr, i64 %index ; 2 uses
  %next.gep1148 = getelementptr i8, ptr %i.yt, i64 %index ; 2 uses
  %i.zc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17
  %wide.load1149 = load <16 x i8>, ptr %i.zc, align 1, !tbaa !17
  %i.zd = getelementptr i8, ptr %next.gep1148, i64 16
  store <16 x i8> %wide.load, ptr %next.gep1148, align 1, !tbaa !17
  store <16 x i8> %wide.load1149, ptr %i.zd, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ze = icmp eq i64 %index.next, %n.vec
  br i1 %i.ze, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yx, %n.vec
  br i1 %cmp.n, label %.loopexit904.backedge, label %vec.epilog.iter.check

.loopexit904.backedge:                            ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.cy
  %.6706.be = phi ptr [ %i.yn, %vec.epilog.middle.block ], [ %i.yn, %middle.block ], [ %i.wq, %bb.cy ], [ %i.yn, %vec.epilog.scalar.ph ]
  %.26669.be = phi i64 [ %i.yh, %vec.epilog.middle.block ], [ %i.yh, %middle.block ], [ %.30, %bb.cy ], [ %i.yh, %vec.epilog.scalar.ph ]
  %.23.be = phi i32 [ %i.yi, %vec.epilog.middle.block ], [ %i.yi, %middle.block ], [ %.26, %bb.cy ], [ %i.yi, %vec.epilog.scalar.ph ]
  br label %.loopexit904

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.yz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1151 = and i64 %i.yx, -8                  ; 4 uses
  %i.zf = getelementptr i8, ptr %i.yr, i64 %n.vec1151
  %i.zg = getelementptr i8, ptr %i.yt, i64 %n.vec1151
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1156, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1153 = getelementptr i8, ptr %i.yr, i64 %index1152
  %next.gep1154 = getelementptr i8, ptr %i.yt, i64 %index1152
  %wide.load1155 = load <8 x i8>, ptr %next.gep1153, align 1, !tbaa !17
  store <8 x i8> %wide.load1155, ptr %next.gep1154, align 1, !tbaa !17
  %index.next1156 = add nuw i64 %index1152, 8     ; 2 uses
  %i.zh = icmp eq i64 %index.next1156, %n.vec1151
  br i1 %i.zh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1157 = icmp eq i64 %i.yx, %n.vec1151
  br i1 %cmp.n1157, label %.loopexit904.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0578.ph = phi ptr [ %i.yr, %iter.check ], [ %i.za, %vec.epilog.iter.check ], [ %i.zf, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %i.yt, %iter.check ], [ %i.zb, %vec.epilog.iter.check ], [ %i.zg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0578 = phi ptr [ %i.zi, %vec.epilog.scalar.ph ], [ %.0578.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.zk, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.0578, i64 1
  %i.zj = load i8, ptr %.0578, align 1, !tbaa !17
  %i.zk = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %i.zj, ptr %.0, align 1, !tbaa !17
  %i.zl = icmp ult ptr %i.zk, %i.yn
  br i1 %i.zl, label %vec.epilog.scalar.ph, label %.loopexit904.backedge, !llvm.loop !46

.thread869:                                       ; preds = %bb.bl, %bb.bi, %bb.cz, %bb.ay
  %.8708 = phi ptr [ %.6706, %bb.cz ], [ %i.js, %bb.ay ], [ %.3703, %bb.bi ], [ %.3703, %bb.bl ] ; 3 uses
  %.26699 = phi ptr [ %.24697, %bb.cz ], [ %i.jr, %bb.ay ], [ %.16689, %bb.bi ], [ %.16689, %bb.bl ] ; 2 uses
  %.33 = phi i64 [ %.30, %bb.cz ], [ 0, %bb.ay ], [ %.20663, %bb.bi ], [ %i.mu, %bb.bl ]
  %.29 = phi i32 [ %.26, %bb.cz ], [ 0, %bb.ay ], [ %.17635, %bb.bi ], [ %i.mv, %bb.bl ] ; 2 uses
  %.21 = phi i64 [ %.19, %bb.cz ], [ 0, %bb.ay ], [ %.15, %bb.bi ], [ %.15, %bb.bl ] ; 3 uses
  br i1 %.not744, label %bb.b, label %bb.de

bb.de:                                            ; preds = %.thread869
  %i.zm = lshr i32 %.29, 3
  %i.zn = and i32 %i.zm, 31
  %i.zo = zext nneg i32 %i.zn to i64              ; 2 uses
  %.not781 = icmp ugt i64 %.21, %i.zo
  br i1 %.not781, label %.thread836, label %bb.df, !prof !16

bb.df:                                            ; preds = %bb.de
  %.not782 = icmp eq ptr %5, null
  br i1 %.not782, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.neg783 = sub nsw i64 %.21, %i.zo
  %i.zp = getelementptr inbounds i8, ptr %.26699, i64 %.neg783
  %i.zq = ptrtoint ptr %i.zp to i64
  %i.zr = ptrtoint ptr %1 to i64
  %i.zs = sub i64 %i.zq, %i.zr
  store i64 %i.zs, ptr %5, align 8, !tbaa !27
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.not784 = icmp eq ptr %6, null
  br i1 %.not784, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.zt = ptrtoint ptr %.8708 to i64
  %i.zu = sub i64 %i.zt, %i.q
  store i64 %i.zu, ptr %6, align 8, !tbaa !27
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
  %7 = and i64 %.3646, 1
  %.not744 = icmp eq i64 %7, 0
  %i.at = trunc i64 %.3646 to i32                 ; 4 uses
  %i.au = lshr i32 %i.at, 1
  %i.av = and i32 %i.au, 3
  switch i32 %i.av, label %default.unreachable [
    i32 2, label %bb.g
    i32 0, label %bb.at
    i32 1, label %bb.az
    i32 3, label %.thread836
  ], !prof !19

bb.g:                                             ; preds = %.loopexit916
  %i.aw = lshr i32 %i.at, 3
  %i.ax = and i32 %i.aw, 31
  %i.ay = add nuw nsw i32 %i.ax, 257              ; 2 uses
  %i.az = lshr i32 %i.at, 8
  %i.ba = and i32 %i.az, 31
  %i.bb = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.bc = lshr i32 %i.at, 13                      ; 2 uses
  %i.bd = and i32 %i.bc, 15
  store i8 0, ptr %i.j, align 8, !tbaa !20
  %i.be = lshr i64 %.3646, 17
  %i.bf = trunc i64 %i.be to i8
  %i.bg = and i8 %i.bf, 7
  store i8 %i.bg, ptr %i.l, align 8, !tbaa !17
  %i.bh = lshr i64 %.3646, 20                     ; 3 uses
  %i.bi = add i32 %.2620, -20                     ; 6 uses
  %i.bj = ptrtoint ptr %.3676 to i64
  %i.bk = sub i64 %i.i, %i.bj
  %i.bl = icmp ugt i64 %i.bk, 7
  br i1 %i.bl, label %bb.h, label %.preheader908, !prof !15

.preheader908:                                    ; preds = %bb.g
  %i.bm = and i32 %i.bi, 255                      ; 2 uses
  %i.bn = icmp samesign ult i32 %i.bm, 56
  br i1 %i.bn, label %.lr.ph973, label %.loopexit909

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i807 = load i64, ptr %.3676, align 1
  %i.bo = and i32 %i.bi, 255
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl i64 %.0.copyload.i807, %i.bp
  %i.br = or i64 %i.bq, %i.bh
  %i.bs = getelementptr inbounds nuw i8, ptr %.3676, i64 7
  %i.bt = lshr i32 %i.bi, 3
  %i.bu = and i32 %i.bt, 7
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bs, i64 %i.bw
  %i.by = or i32 %i.bi, 56
  br label %.loopexit909

.lr.ph973:                                        ; preds = %.preheader908, %bb.k
  %i.bz = phi i32 [ %i.cj, %bb.k ], [ %i.bm, %.preheader908 ]
  %.4615972 = phi i64 [ %.5616, %bb.k ], [ %.3614, %.preheader908 ] ; 2 uses
  %.3621971 = phi i32 [ %i.ci, %bb.k ], [ %i.bi, %.preheader908 ]
  %.4647970 = phi i64 [ %.5648, %bb.k ], [ %i.bh, %.preheader908 ] ; 2 uses
  %.4677969 = phi ptr [ %.5678, %bb.k ], [ %.3676, %.preheader908 ] ; 4 uses
  %.not749 = icmp eq ptr %.4677969, %i.e
  br i1 %.not749, label %bb.j, label %bb.i, !prof !16

bb.i:                                             ; preds = %.lr.ph973
  %i.ca = getelementptr inbounds nuw i8, ptr %.4677969, i64 1
  %i.cb = load i8, ptr %.4677969, align 1, !tbaa !17
  %i.cc = zext i8 %i.cb to i64
  %i.cd = zext nneg i32 %i.bz to i64
  %i.ce = shl nuw nsw i64 %i.cc, %i.cd
  %i.cf = or i64 %i.ce, %.4647970
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph973
  %i.cg = add i64 %.4615972, 1                    ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, 8
  br i1 %i.ch, label %.thread836, label %bb.k, !prof !16

bb.k:                                             ; preds = %bb.j, %bb.i
  %.5678 = phi ptr [ %i.ca, %bb.i ], [ %.4677969, %bb.j ] ; 2 uses
  %.5648 = phi i64 [ %i.cf, %bb.i ], [ %.4647970, %bb.j ] ; 2 uses
  %.5616 = phi i64 [ %.4615972, %bb.i ], [ %i.cg, %bb.j ] ; 2 uses
  %i.ci = add i32 %.3621971, 8                    ; 3 uses
  %i.cj = and i32 %i.ci, 255                      ; 2 uses
  %i.ck = icmp samesign ult i32 %i.cj, 56
  br i1 %i.ck, label %.lr.ph973, label %.loopexit909, !llvm.loop !48

.loopexit909:                                     ; preds = %bb.k, %.preheader908, %bb.h
  %.6679 = phi ptr [ %i.bx, %bb.h ], [ %.3676, %.preheader908 ], [ %.5678, %bb.k ]
  %.6649 = phi i64 [ %i.br, %bb.h ], [ %i.bh, %.preheader908 ], [ %.5648, %bb.k ]
  %.4622 = phi i32 [ %i.by, %bb.h ], [ %i.bi, %.preheader908 ], [ %i.ci, %bb.k ]
  %.6617 = phi i64 [ %.3614, %bb.h ], [ %.3614, %.preheader908 ], [ %.5616, %bb.k ]
  %i.cl = and i32 %i.bc, 15
  %narrow = add nuw nsw i32 %i.cl, 3              ; 2 uses
  %8 = zext nneg i32 %narrow to i64               ; 2 uses
  %xtraiter = and i64 %8, 1
  %unroll_iter = and i64 %8, 30
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.loopexit909
  %indvars.iv1050 = phi i64 [ 2, %.loopexit909 ], [ %indvars.iv.next1051.1, %bb.l ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.loopexit909 ], [ %indvars.iv.next.1, %bb.l ] ; 3 uses
  %.7650 = phi i64 [ %.6649, %.loopexit909 ], [ %i.cz, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.loopexit909 ], [ %niter.next.1, %bb.l ]
  %i.cm = trunc i64 %.7650 to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !17
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  store i8 %i.cn, ptr %i.cr, align 1, !tbaa !17
  %i.cs = lshr i64 %.7650, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = and i8 %i.ct, 7
  %i.cv = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv.next
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !17
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %i.cx
  store i8 %i.cu, ptr %i.cy, align 1, !tbaa !17
  %i.cz = lshr i64 %.7650, 6                      ; 4 uses
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
  %i.da = trunc i64 %i.cz to i8
  %i.db = and i8 %i.da, 7
  %i.dc = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv.next.1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !17
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %i.de
  store i8 %i.db, ptr %i.df, align 1, !tbaa !17
  %i.dg = lshr i64 %i.cz, 3
  br label %.preheader907

.preheader907:                                    ; preds = %.preheader907.unr-lcssa, %.epil.preheader
  %indvars.iv1050.lcssa = phi i64 [ %indvars.iv.next1051, %.preheader907.unr-lcssa ], [ %indvars.iv.next1051.1, %.epil.preheader ]
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next, %.preheader907.unr-lcssa ], [ %indvars.iv.next.1, %.epil.preheader ]
  %.lcssa1173 = phi i64 [ %i.cz, %.preheader907.unr-lcssa ], [ %i.dg, %.epil.preheader ]
  %i.dh = add i32 %.4622, -9
  %.neg1094 = mul nsw i32 %i.bd, -3
  %i.di = add i32 %.neg1094, %i.dh
  %i.dj = icmp samesign ult i64 %indvars.iv.lcssa, 18
  br i1 %i.dj, label %.lr.ph979, label %._crit_edge

.lr.ph979:                                        ; preds = %.preheader907, %.lr.ph979
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %.lr.ph979 ], [ %indvars.iv1050.lcssa, %.preheader907 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv1052
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !17
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.dm
  store i8 0, ptr %i.dn, align 1, !tbaa !17
  %indvars.iv.next1053 = add nuw nsw i64 %indvars.iv1052, 1
  %i.do = icmp samesign ult i64 %indvars.iv1052, 18
  br i1 %i.do, label %.lr.ph979, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %.lr.ph979, %.preheader907
  %i.dp = tail call fastcc noundef zeroext i1 @build_decode_table(ptr noundef nonnull %i.m, ptr noundef nonnull %0, i32 noundef 19, ptr noundef nonnull @precode_decode_results, i32 noundef 7, i32 noundef 7, ptr noundef nonnull %i.n, ptr noundef null)
  br i1 %i.dp, label %.preheader905, label %.thread836, !prof !15

.preheader905:                                    ; preds = %._crit_edge
  %i.dq = add nuw nsw i32 %i.ay, %i.bb            ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader905, %bb.ar
  %.7680 = phi ptr [ %.10683, %bb.ar ], [ %.6679, %.preheader905 ] ; 8 uses
  %.8651 = phi i64 [ %.13656, %bb.ar ], [ %.lcssa1173, %.preheader905 ] ; 4 uses
  %.6624 = phi i32 [ %.10628, %bb.ar ], [ %i.di, %.preheader905 ] ; 11 uses
  %.7 = phi i64 [ %.10, %bb.ar ], [ %.6617, %.preheader905 ] ; 4 uses
  %.2587 = phi i32 [ %.4589, %bb.ar ], [ 0, %.preheader905 ] ; 10 uses
  %i.dr = and i32 %.6624, 255                     ; 3 uses
  %i.ds = icmp samesign ult i32 %i.dr, 14
  br i1 %i.ds, label %bb.n, label %.loopexit899

bb.n:                                             ; preds = %bb.m
  %i.dt = ptrtoint ptr %.7680 to i64
  %i.du = sub i64 %i.i, %i.dt
  %i.dv = icmp ugt i64 %i.du, 7
  br i1 %i.dv, label %bb.o, label %.lr.ph984, !prof !15

bb.o:                                             ; preds = %bb.n
  %.0.copyload.i806 = load i64, ptr %.7680, align 1
  %i.dw = zext nneg i32 %i.dr to i64
  %i.dx = shl i64 %.0.copyload.i806, %i.dw
  %i.dy = or i64 %i.dx, %.8651
  %i.dz = getelementptr inbounds nuw i8, ptr %.7680, i64 7
  %i.ea = lshr i32 %.6624, 3
  %i.eb = and i32 %i.ea, 7
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = sub nsw i64 0, %i.ec
  %i.ee = getelementptr inbounds i8, ptr %i.dz, i64 %i.ed
  %i.ef = or i32 %.6624, 56
  br label %.loopexit899

.lr.ph984:                                        ; preds = %bb.n
  %.not750 = icmp eq ptr %.7680, %i.e
  br i1 %.not750, label %bb.q, label %bb.p, !prof !16

bb.p:                                             ; preds = %.lr.ph984
  %i.eg = getelementptr inbounds nuw i8, ptr %.7680, i64 1
  %i.eh = load i8, ptr %.7680, align 1, !tbaa !17
  %i.ei = zext i8 %i.eh to i64
  %i.ej = zext nneg i32 %i.dr to i64
  %i.ek = shl nuw nsw i64 %i.ei, %i.ej
  %i.el = or i64 %i.ek, %.8651
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph984
  %i.em = add i64 %.7, 1                          ; 2 uses
  %i.en = icmp ugt i64 %i.em, 8
  br i1 %i.en, label %.thread836, label %bb.r, !prof !16

bb.r:                                             ; preds = %bb.q, %bb.p
  %.9682 = phi ptr [ %i.eg, %bb.p ], [ %.7680, %bb.q ] ; 5 uses
  %.10653 = phi i64 [ %i.el, %bb.p ], [ %.8651, %bb.q ] ; 3 uses
  %.9 = phi i64 [ %.7, %bb.p ], [ %i.em, %bb.q ]  ; 3 uses
  %i.eo = add i32 %.6624, 8                       ; 2 uses
  %i.ep = and i32 %i.eo, 255                      ; 2 uses
  %i.eq = icmp samesign ult i32 %i.ep, 56
  br i1 %i.eq, label %.lr.ph984.1, label %.loopexit899

.lr.ph984.1:                                      ; preds = %bb.r
  %.not750.1 = icmp eq ptr %.9682, %i.e
  br i1 %.not750.1, label %bb.t, label %bb.s, !prof !16

bb.s:                                             ; preds = %.lr.ph984.1
  %i.er = getelementptr inbounds nuw i8, ptr %.9682, i64 1
  %i.es = load i8, ptr %.9682, align 1, !tbaa !17
  %i.et = zext i8 %i.es to i64
  %i.eu = zext nneg i32 %i.ep to i64
  %i.ev = shl nuw nsw i64 %i.et, %i.eu
  %i.ew = or i64 %i.ev, %.10653
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph984.1
  %i.ex = add i64 %.9, 1                          ; 2 uses
  %i.ey = icmp ugt i64 %i.ex, 8
  br i1 %i.ey, label %.thread836, label %bb.u, !prof !16

bb.u:                                             ; preds = %bb.t, %bb.s
  %.9682.1 = phi ptr [ %i.er, %bb.s ], [ %.9682, %bb.t ] ; 5 uses
  %.10653.1 = phi i64 [ %i.ew, %bb.s ], [ %.10653, %bb.t ] ; 3 uses
  %.9.1 = phi i64 [ %.9, %bb.s ], [ %i.ex, %bb.t ] ; 3 uses
  %i.ez = add i32 %.6624, 16                      ; 2 uses
  %i.fa = and i32 %i.ez, 255                      ; 2 uses
  %i.fb = icmp samesign ult i32 %i.fa, 56
  br i1 %i.fb, label %.lr.ph984.2, label %.loopexit899

.lr.ph984.2:                                      ; preds = %bb.u
  %.not750.2 = icmp eq ptr %.9682.1, %i.e
  br i1 %.not750.2, label %bb.w, label %bb.v, !prof !16

bb.v:                                             ; preds = %.lr.ph984.2
  %i.fc = getelementptr inbounds nuw i8, ptr %.9682.1, i64 1
  %i.fd = load i8, ptr %.9682.1, align 1, !tbaa !17
  %i.fe = zext i8 %i.fd to i64
  %i.ff = zext nneg i32 %i.fa to i64
  %i.fg = shl nuw nsw i64 %i.fe, %i.ff
  %i.fh = or i64 %i.fg, %.10653.1
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph984.2
  %i.fi = add i64 %.9.1, 1                        ; 2 uses
  %i.fj = icmp ugt i64 %i.fi, 8
  br i1 %i.fj, label %.thread836, label %bb.x, !prof !16

bb.x:                                             ; preds = %bb.w, %bb.v
  %.9682.2 = phi ptr [ %i.fc, %bb.v ], [ %.9682.1, %bb.w ] ; 5 uses
  %.10653.2 = phi i64 [ %i.fh, %bb.v ], [ %.10653.1, %bb.w ] ; 3 uses
  %.9.2 = phi i64 [ %.9.1, %bb.v ], [ %i.fi, %bb.w ] ; 3 uses
  %i.fk = add i32 %.6624, 24                      ; 2 uses
  %i.fl = and i32 %i.fk, 255                      ; 2 uses
  %i.fm = icmp samesign ult i32 %i.fl, 56
  br i1 %i.fm, label %.lr.ph984.3, label %.loopexit899

.lr.ph984.3:                                      ; preds = %bb.x
  %.not750.3 = icmp eq ptr %.9682.2, %i.e
  br i1 %.not750.3, label %bb.z, label %bb.y, !prof !16

bb.y:                                             ; preds = %.lr.ph984.3
  %i.fn = getelementptr inbounds nuw i8, ptr %.9682.2, i64 1
  %i.fo = load i8, ptr %.9682.2, align 1, !tbaa !17
  %i.fp = zext i8 %i.fo to i64
  %i.fq = zext nneg i32 %i.fl to i64
  %i.fr = shl nuw nsw i64 %i.fp, %i.fq
  %i.fs = or i64 %i.fr, %.10653.2
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph984.3
  %i.ft = add i64 %.9.2, 1                        ; 2 uses
  %i.fu = icmp ugt i64 %i.ft, 8
  br i1 %i.fu, label %.thread836, label %bb.aa, !prof !16

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.9682.3 = phi ptr [ %i.fn, %bb.y ], [ %.9682.2, %bb.z ] ; 5 uses
  %.10653.3 = phi i64 [ %i.fs, %bb.y ], [ %.10653.2, %bb.z ] ; 3 uses
  %.9.3 = phi i64 [ %.9.2, %bb.y ], [ %i.ft, %bb.z ] ; 3 uses
  %i.fv = add i32 %.6624, 32                      ; 2 uses
  %i.fw = and i32 %i.fv, 255                      ; 2 uses
  %i.fx = icmp samesign ult i32 %i.fw, 56
  br i1 %i.fx, label %.lr.ph984.4, label %.loopexit899

.lr.ph984.4:                                      ; preds = %bb.aa
  %.not750.4 = icmp eq ptr %.9682.3, %i.e
  br i1 %.not750.4, label %bb.ac, label %bb.ab, !prof !16

bb.ab:                                            ; preds = %.lr.ph984.4
  %i.fy = getelementptr inbounds nuw i8, ptr %.9682.3, i64 1
  %i.fz = load i8, ptr %.9682.3, align 1, !tbaa !17
  %i.ga = zext i8 %i.fz to i64
  %i.gb = zext nneg i32 %i.fw to i64
  %i.gc = shl nuw nsw i64 %i.ga, %i.gb
  %i.gd = or i64 %i.gc, %.10653.3
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph984.4
  %i.ge = add i64 %.9.3, 1                        ; 2 uses
  %i.gf = icmp ugt i64 %i.ge, 8
  br i1 %i.gf, label %.thread836, label %bb.ad, !prof !16

bb.ad:                                            ; preds = %bb.ac, %bb.ab
end_hunk_1
begin_hunk_2_@deflate_decompress_bmi2:bb.a
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !17 ; 3 uses
  %i.wj = and i32 %i.wi, 255
  %i.wk = zext nneg i32 %i.wj to i64
  %i.wl = lshr i64 %i.vw, %i.wk
  %i.wm = sub i32 %i.vx, %i.wi
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.loopexit894
  %.30 = phi i64 [ %i.wl, %bb.cv ], [ %i.vw, %.loopexit894 ] ; 5 uses
  %.2642 = phi i64 [ %i.vw, %bb.cv ], [ %.29672, %.loopexit894 ]
  %.26 = phi i32 [ %i.wm, %bb.cv ], [ %i.vx, %.loopexit894 ] ; 4 uses
  %.5600 = phi i32 [ %i.wi, %bb.cv ], [ %i.vt, %.loopexit894 ] ; 5 uses
  %i.wn = lshr i32 %.5600, 16                     ; 2 uses
  %.not774 = icmp sgt i32 %.5600, -1
  br i1 %.not774, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.wo = icmp eq ptr %.6706, %i.a
  br i1 %i.wo, label %.thread836, label %bb.cy, !prof !16

bb.cy:                                            ; preds = %bb.cx
  %i.wp = trunc i32 %i.wn to i8
  %i.wq = getelementptr inbounds nuw i8, ptr %.6706, i64 1
  store i8 %i.wp, ptr %.6706, align 1, !tbaa !17
  br label %.loopexit904.backedge

bb.cz:                                            ; preds = %bb.cw
  %i.wr = and i32 %.5600, 8192
  %.not775 = icmp eq i32 %i.wr, 0
  br i1 %.not775, label %bb.da, label %.thread869, !prof !15

bb.da:                                            ; preds = %bb.cz
  %i.ws = and i32 %.5600, 255
  %i.wt = zext nneg i32 %i.ws to i64
  %notmask776 = shl nsw i64 -1, %i.wt
  %i.wu = xor i64 %notmask776, -1
  %i.wv = and i64 %.2642, %i.wu
  %i.ww = lshr i32 %.5600, 8
  %i.wx = and i32 %i.ww, 223
  %i.wy = zext nneg i32 %i.wx to i64
  %i.wz = lshr i64 %i.wv, %i.wy
  %i.xa = trunc i64 %i.wz to i32
  %i.xb = add i32 %i.wn, %i.xa
  %i.xc = zext i32 %i.xb to i64                   ; 3 uses
  %i.xd = ptrtoint ptr %.6706 to i64              ; 5 uses
  %i.xe = sub i64 %i.k, %i.xd
  %i.xf = icmp slt i64 %i.xe, %i.xc
  br i1 %i.xf, label %.thread836, label %bb.db, !prof !16

bb.db:                                            ; preds = %bb.da
  %i.xg = and i64 %.30, 255
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xg
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !14 ; 4 uses
  %i.xj = and i32 %i.xi, 32768
  %.not777 = icmp eq i32 %i.xj, 0
  br i1 %.not777, label %bb.dd, label %bb.dc, !prof !15

bb.dc:                                            ; preds = %bb.db
  %i.xk = lshr i64 %.30, 8                        ; 2 uses
  %i.xl = add i32 %.26, -8
  %i.xm = lshr i32 %i.xi, 16
  %i.xn = zext nneg i32 %i.xm to i64
  %i.xo = lshr i32 %i.xi, 8
  %i.xp = and i32 %i.xo, 63
  %i.xq = zext nneg i32 %i.xp to i64
  %notmask778 = shl nsw i64 -1, %i.xq
  %i.xr = xor i64 %notmask778, -1
  %i.xs = and i64 %i.xk, %i.xr
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xs
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %i.xn
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !14
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.31 = phi i64 [ %i.xk, %bb.dc ], [ %.30, %bb.db ] ; 2 uses
  %.27 = phi i32 [ %i.xl, %bb.dc ], [ %.26, %bb.db ]
  %.6 = phi i32 [ %i.xv, %bb.dc ], [ %i.xi, %bb.db ] ; 4 uses
  %i.xw = lshr i32 %.6, 16
  %i.xx = and i32 %.6, 255
  %i.xy = zext nneg i32 %i.xx to i64              ; 2 uses
  %notmask779 = shl nsw i64 -1, %i.xy
  %i.xz = xor i64 %notmask779, -1
  %i.ya = and i64 %.31, %i.xz
  %i.yb = lshr i32 %.6, 8
  %i.yc = and i32 %i.yb, 255
  %i.yd = zext nneg i32 %i.yc to i64
  %i.ye = lshr i64 %i.ya, %i.yd
  %i.yf = trunc i64 %i.ye to i32
  %i.yg = add i32 %i.xw, %i.yf                    ; 2 uses
  %i.yh = lshr i64 %.31, %i.xy                    ; 3 uses
  %i.yi = sub i32 %.27, %.6                       ; 3 uses
  %i.yj = zext i32 %i.yg to i64                   ; 2 uses
  %i.yk = sub i64 %i.xd, %i.q
  %.not780 = icmp slt i64 %i.yk, %i.yj
  br i1 %.not780, label %.thread836, label %iter.check, !prof !16

iter.check:                                       ; preds = %bb.dd
  %i.yl = sub nsw i64 0, %i.yj
  %i.ym = getelementptr inbounds i8, ptr %.6706, i64 %i.yl ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.6706, i64 %i.xc ; 4 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 1
  %i.yp = load i8, ptr %i.ym, align 1, !tbaa !17
  %i.yq = getelementptr inbounds nuw i8, ptr %.6706, i64 1
  store i8 %i.yp, ptr %.6706, align 1, !tbaa !17
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ym, i64 2 ; 5 uses
  %i.ys = load i8, ptr %i.yo, align 1, !tbaa !17
  %i.yt = getelementptr inbounds nuw i8, ptr %.6706, i64 2 ; 5 uses
  store i8 %i.ys, ptr %i.yq, align 1, !tbaa !17
  %i.yu = add i64 %i.xd, %i.xc
  %i.yv = add i64 %i.xd, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.yu, i64 %i.yv)
  %i.yw = add i64 %umax, -2
  %i.yx = sub i64 %i.yw, %i.xd                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.yx, 8
  %i.yy = add i32 %i.yg, -1
  %diff.check = icmp ult i32 %i.yy, 31
  %or.cond1160 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1160, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1147 = icmp ult i64 %i.yx, 32
  br i1 %min.iters.check1147, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.yz = and i64 %i.yx, 24
  %n.vec = and i64 %i.yx, -32                     ; 5 uses
  %i.za = getelementptr i8, ptr %i.yr, i64 %n.vec
  %i.zb = getelementptr i8, ptr %i.yt, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.yr, i64 %index ; 2 uses
  %next.gep1148 = getelementptr i8, ptr %i.yt, i64 %index ; 2 uses
  %i.zc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17
  %wide.load1149 = load <16 x i8>, ptr %i.zc, align 1, !tbaa !17
  %i.zd = getelementptr i8, ptr %next.gep1148, i64 16
  store <16 x i8> %wide.load, ptr %next.gep1148, align 1, !tbaa !17
  store <16 x i8> %wide.load1149, ptr %i.zd, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ze = icmp eq i64 %index.next, %n.vec
  br i1 %i.ze, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yx, %n.vec
  br i1 %cmp.n, label %.loopexit904.backedge, label %vec.epilog.iter.check

.loopexit904.backedge:                            ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.cy
  %.6706.be = phi ptr [ %i.yn, %vec.epilog.middle.block ], [ %i.yn, %middle.block ], [ %i.wq, %bb.cy ], [ %i.yn, %vec.epilog.scalar.ph ]
  %.26669.be = phi i64 [ %i.yh, %vec.epilog.middle.block ], [ %i.yh, %middle.block ], [ %.30, %bb.cy ], [ %i.yh, %vec.epilog.scalar.ph ]
  %.23.be = phi i32 [ %i.yi, %vec.epilog.middle.block ], [ %i.yi, %middle.block ], [ %.26, %bb.cy ], [ %i.yi, %vec.epilog.scalar.ph ]
  br label %.loopexit904

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.yz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1151 = and i64 %i.yx, -8                  ; 4 uses
  %i.zf = getelementptr i8, ptr %i.yr, i64 %n.vec1151
  %i.zg = getelementptr i8, ptr %i.yt, i64 %n.vec1151
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1156, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1153 = getelementptr i8, ptr %i.yr, i64 %index1152
  %next.gep1154 = getelementptr i8, ptr %i.yt, i64 %index1152
  %wide.load1155 = load <8 x i8>, ptr %next.gep1153, align 1, !tbaa !17
  store <8 x i8> %wide.load1155, ptr %next.gep1154, align 1, !tbaa !17
  %index.next1156 = add nuw i64 %index1152, 8     ; 2 uses
  %i.zh = icmp eq i64 %index.next1156, %n.vec1151
  br i1 %i.zh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1157 = icmp eq i64 %i.yx, %n.vec1151
  br i1 %cmp.n1157, label %.loopexit904.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0578.ph = phi ptr [ %i.yr, %iter.check ], [ %i.za, %vec.epilog.iter.check ], [ %i.zf, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %i.yt, %iter.check ], [ %i.zb, %vec.epilog.iter.check ], [ %i.zg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0578 = phi ptr [ %i.zi, %vec.epilog.scalar.ph ], [ %.0578.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.zk, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.0578, i64 1
  %i.zj = load i8, ptr %.0578, align 1, !tbaa !17
  %i.zk = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %i.zj, ptr %.0, align 1, !tbaa !17
  %i.zl = icmp ult ptr %i.zk, %i.yn
  br i1 %i.zl, label %vec.epilog.scalar.ph, label %.loopexit904.backedge, !llvm.loop !58

.thread869:                                       ; preds = %bb.bl, %bb.bi, %bb.cz, %bb.ay
  %.8708 = phi ptr [ %.6706, %bb.cz ], [ %i.js, %bb.ay ], [ %.3703, %bb.bi ], [ %.3703, %bb.bl ] ; 3 uses
  %.26699 = phi ptr [ %.24697, %bb.cz ], [ %i.jr, %bb.ay ], [ %.16689, %bb.bi ], [ %.16689, %bb.bl ] ; 2 uses
  %.33 = phi i64 [ %.30, %bb.cz ], [ 0, %bb.ay ], [ %.20663, %bb.bi ], [ %i.mu, %bb.bl ]
  %.29 = phi i32 [ %.26, %bb.cz ], [ 0, %bb.ay ], [ %.17635, %bb.bi ], [ %i.mv, %bb.bl ] ; 2 uses
  %.21 = phi i64 [ %.19, %bb.cz ], [ 0, %bb.ay ], [ %.15, %bb.bi ], [ %.15, %bb.bl ] ; 3 uses
  br i1 %.not744, label %bb.b, label %bb.de

bb.de:                                            ; preds = %.thread869
  %i.zm = lshr i32 %.29, 3
  %i.zn = and i32 %i.zm, 31
  %i.zo = zext nneg i32 %i.zn to i64              ; 2 uses
  %.not781 = icmp ugt i64 %.21, %i.zo
  br i1 %.not781, label %.thread836, label %bb.df, !prof !16

bb.df:                                            ; preds = %bb.de
  %.not782 = icmp eq ptr %5, null
  br i1 %.not782, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.neg783 = sub nsw i64 %.21, %i.zo
  %i.zp = getelementptr inbounds i8, ptr %.26699, i64 %.neg783
  %i.zq = ptrtoint ptr %i.zp to i64
  %i.zr = ptrtoint ptr %1 to i64
  %i.zs = sub i64 %i.zq, %i.zr
  store i64 %i.zs, ptr %5, align 8, !tbaa !27
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.not784 = icmp eq ptr %6, null
  br i1 %.not784, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.zt = ptrtoint ptr %.8708 to i64
  %i.zu = sub i64 %i.zt, %i.q
  store i64 %i.zu, ptr %6, align 8, !tbaa !27
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

declare void @libdeflate_init_x86_cpu_features() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @build_decode_table(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 7, 12) %4, i32 noundef range(i32 7, 16) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef writeonly captures(address_is_null) %7) unnamed_addr #6 {
.preheader222:
  %i.a = alloca [16 x i32], align 16              ; 19 uses
  %i.b = alloca [16 x i32], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = shl nuw nsw i32 %5, 2
  %narrow = add nuw nsw i32 %i.c, 4
  %i.d = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.d, i1 false), !tbaa !14
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %.preheader221.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader222
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %2, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !14
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader221.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !59

.preheader221.preheader.loopexit.unr-lcssa:       ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader221.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader221.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader221.preheader.loopexit.unr-lcssa ]
  %lcmp.mod375 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod375)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !17
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !14
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader221.preheader, label %.lr.ph.epil, !llvm.loop !60

.preheader221.preheader:                          ; preds = %.preheader221.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader222
  br label %.preheader221

.preheader221:                                    ; preds = %.preheader221.preheader, %bb.a
  %.0185236 = phi i32 [ %i.aq, %bb.a ], [ %5, %.preheader221.preheader ] ; 3 uses
  %i.am = zext i32 %.0185236 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !14
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.a, label %.critedge

bb.a:                                             ; preds = %.preheader221
  %i.aq = add nsw i32 %.0185236, -1               ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 1
  br i1 %i.ar, label %.preheader221, label %.critedge, !llvm.loop !61

.critedge:                                        ; preds = %bb.a, %.preheader221
  %.0185.lcssa = phi i32 [ 1, %bb.a ], [ %.0185236, %.preheader221 ] ; 7 uses
  %.not198 = icmp eq ptr %7, null
  br i1 %.not198, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.as = tail call i32 @llvm.umin.i32(i32 %4, i32 %.0185.lcssa) ; 2 uses
  store i32 %i.as, ptr %7, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.0186 = phi i32 [ %i.as, %bb.b ], [ %4, %.critedge ] ; 12 uses
  store i32 0, ptr %i.b, align 16, !tbaa !14
  %i.at = load i32, ptr %i.a, align 16, !tbaa !14 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.at, ptr %i.au, align 4, !tbaa !14
  %i.av = icmp ugt i32 %.0185.lcssa, 1
  br i1 %i.av, label %.lr.ph239.preheader, label %._crit_edge

.lr.ph239.preheader:                              ; preds = %bb.c
  %wide.trip.count293 = zext i32 %.0185.lcssa to i64
  %i.aw = add nsw i64 %wide.trip.count293, -1     ; 3 uses
  %xtraiter376 = and i64 %i.aw, 1
  %i.ax = icmp eq i32 %.0185.lcssa, 2
  br i1 %i.ax, label %.lr.ph239.epil.preheader, label %.lr.ph239.preheader.new

.lr.ph239.preheader.new:                          ; preds = %.lr.ph239.preheader
  %unroll_iter381 = and i64 %i.aw, -2
  br label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239, %.lr.ph239.preheader.new
  %i.ay = phi i32 [ %i.at, %.lr.ph239.preheader.new ], [ %i.bf, %.lr.ph239 ]
  %indvars.iv290 = phi i64 [ 1, %.lr.ph239.preheader.new ], [ %indvars.iv.next291.1, %.lr.ph239 ] ; 3 uses
  %.0152238 = phi i32 [ 0, %.lr.ph239.preheader.new ], [ %i.bk, %.lr.ph239 ]
  %niter382 = phi i64 [ 0, %.lr.ph239.preheader.new ], [ %niter382.next.1, %.lr.ph239 ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv290
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !14 ; 2 uses
  %i.bb = add i32 %i.ba, %i.ay                    ; 2 uses
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next291
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !14
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next291
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !14 ; 2 uses
  %i.bf = add i32 %i.be, %i.bb                    ; 3 uses
  %indvars.iv.next291.1 = add nuw nsw i64 %indvars.iv290, 2 ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next291.1
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !14
  %i.bh = shl i32 %.0152238, 2
  %i.bi = shl i32 %i.ba, 1
  %i.bj = add i32 %i.bh, %i.bi
  %i.bk = add i32 %i.be, %i.bj                    ; 3 uses
  %niter382.next.1 = add nuw i64 %niter382, 2     ; 2 uses
  %niter382.ncmp.1 = icmp eq i64 %niter382.next.1, %unroll_iter381
  br i1 %niter382.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph239, !llvm.loop !62

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph239
  %lcmp.mod378.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod378.not, label %._crit_edge.loopexit, label %.lr.ph239.epil.preheader

.lr.ph239.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph239.preheader
  %.epil.init = phi i32 [ %i.at, %.lr.ph239.preheader ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv290.epil.init = phi i64 [ 1, %.lr.ph239.preheader ], [ %indvars.iv.next291.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0152238.epil.init = phi i32 [ 0, %.lr.ph239.preheader ], [ %i.bk, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod380 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod380)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv290.epil.init
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !14 ; 2 uses
  %i.bn = add i32 %i.bm, %.epil.init
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv290.epil.init
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !14
  %i.bq = shl i32 %.0152238.epil.init, 1
  %i.br = add i32 %i.bm, %i.bq
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph239.epil.preheader
  %.lcssa374 = phi i32 [ %i.bk, %._crit_edge.loopexit.unr-lcssa ], [ %i.br, %.lr.ph239.epil.preheader ]
  %i.bs = shl i32 %.lcssa374, 1
  %i.bt = zext i32 %.0185.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit
  %.1160.lcssa = phi i64 [ %i.bt, %._crit_edge.loopexit ], [ 1, %bb.c ]
  %.0152.lcssa = phi i32 [ %i.bs, %._crit_edge.loopexit ], [ 0, %bb.c ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1160.lcssa
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !14
  %i.bw = add i32 %i.bv, %.0152.lcssa             ; 4 uses
  br i1 %.not, label %._crit_edge244, label %.lr.ph243.preheader

.lr.ph243.preheader:                              ; preds = %._crit_edge
  %wide.trip.count298 = zext i32 %2 to i64        ; 2 uses
  %xtraiter383 = and i64 %wide.trip.count298, 1
  %i.bx = icmp eq i32 %2, 1
  br i1 %i.bx, label %.lr.ph243.epil.preheader, label %.lr.ph243.preheader.new

.lr.ph243.preheader.new:                          ; preds = %.lr.ph243.preheader
  %unroll_iter387 = and i64 %wide.trip.count298, 4294967294
  br label %.lr.ph243

.lr.ph243:                                        ; preds = %.lr.ph243, %.lr.ph243.preheader.new
  %indvars.iv295 = phi i64 [ 0, %.lr.ph243.preheader.new ], [ %indvars.iv.next296.1, %.lr.ph243 ] ; 4 uses
  %niter388 = phi i64 [ 0, %.lr.ph243.preheader.new ], [ %niter388.next.1, %.lr.ph243 ]
  %i.by = trunc i64 %indvars.iv295 to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv295
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !17
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !14 ; 2 uses
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !14
  %i.cf = zext i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.cf
  store i16 %i.by, ptr %i.cg, align 2, !tbaa !75
  %indvars.iv.next296 = or disjoint i64 %indvars.iv295, 1 ; 2 uses
  %i.ch = trunc i64 %indvars.iv.next296 to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next296
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !17
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !14 ; 2 uses
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !14
  %i.co = zext i32 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.co
  store i16 %i.ch, ptr %i.cp, align 2, !tbaa !75
  %indvars.iv.next296.1 = add nuw nsw i64 %indvars.iv295, 2 ; 2 uses
  %niter388.next.1 = add i64 %niter388, 2         ; 2 uses
  %niter388.ncmp.1 = icmp eq i64 %niter388.next.1, %unroll_iter387
  br i1 %niter388.ncmp.1, label %._crit_edge244.loopexit.unr-lcssa, label %.lr.ph243, !llvm.loop !63

._crit_edge244.loopexit.unr-lcssa:                ; preds = %.lr.ph243
  %lcmp.mod385.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod385.not, label %._crit_edge244.loopexit, label %.lr.ph243.epil.preheader

.lr.ph243.epil.preheader:                         ; preds = %._crit_edge244.loopexit.unr-lcssa, %.lr.ph243.preheader
  %indvars.iv295.epil.init = phi i64 [ 0, %.lr.ph243.preheader ], [ %indvars.iv.next296.1, %._crit_edge244.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod386 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod386)
  %i.cq = trunc i64 %indvars.iv295.epil.init to i16
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv295.epil.init
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !17
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !14 ; 2 uses
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !14
  %i.cx = zext i32 %i.cv to i64
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.cx
  store i16 %i.cq, ptr %i.cy, align 2, !tbaa !75
  br label %._crit_edge244.loopexit

._crit_edge244.loopexit:                          ; preds = %._crit_edge244.loopexit.unr-lcssa, %.lr.ph243.epil.preheader
  %.pre304 = load i32, ptr %i.b, align 16, !tbaa !14
  %i.cz = zext i32 %.pre304 to i64
  br label %._crit_edge244

._crit_edge244:                                   ; preds = %._crit_edge244.loopexit, %._crit_edge
  %i.da = phi i64 [ %i.cz, %._crit_edge244.loopexit ], [ 0, %._crit_edge ]
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.da ; 3 uses
  %i.dc = shl nuw i32 1, %.0185.lcssa             ; 2 uses
  %i.dd = icmp ugt i32 %i.bw, %i.dc
  br i1 %i.dd, label %.thread212, label %bb.d, !prof !16

bb.d:                                             ; preds = %._crit_edge244
  %i.de = icmp ult i32 %i.bw, %i.dc
  br i1 %i.de, label %bb.e, label %.preheader220, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.df = icmp eq i32 %i.bw, 0
  br i1 %i.df, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dg = add i32 %.0185.lcssa, -1
  %i.dh = shl nuw i32 1, %i.dg
  %i.di = icmp ne i32 %i.bw, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = icmp ne i32 %i.dk, 1
  %or.cond = select i1 %i.di, i1 true, i1 %i.dl
  br i1 %or.cond, label %.thread212, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dm = load i16, ptr %i.db, align 2, !tbaa !75
  %i.dn = zext i16 %i.dm to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.2174 = phi i64 [ %i.dn, %bb.g ], [ 0, %bb.e ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.2174
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !14
  %i.dq = add i32 %i.dp, 257
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %.0143271 = phi i32 [ 0, %bb.h ], [ %i.dt, %bb.i ] ; 2 uses
  %i.dr = zext i32 %.0143271 to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dr
  store i32 %i.dq, ptr %i.ds, align 4, !tbaa !14
  %i.dt = add i32 %.0143271, 1                    ; 2 uses
  %.0143.highbits = lshr i32 %i.dt, %.0186
  %i.du = icmp eq i32 %.0143.highbits, 0
  br i1 %i.du, label %bb.i, label %.thread212, !llvm.loop !64

.preheader220:                                    ; preds = %bb.d, %.preheader220
  %indvars.iv300 = phi i64 [ %indvars.iv.next301, %.preheader220 ], [ 1, %bb.d ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv300
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !14 ; 3 uses
  %i.dx = icmp eq i32 %i.dw, 0
  %indvars.iv.next301 = add nuw i64 %indvars.iv300, 1
  br i1 %i.dx, label %.preheader220, label %bb.j, !llvm.loop !65

bb.j:                                             ; preds = %.preheader220
  %i.dy = trunc nuw i64 %indvars.iv300 to i32     ; 4 uses
  %.not200245 = icmp ult i32 %.0186, %i.dy
  br i1 %.not200245, label %._crit_edge251, label %.preheader219.preheader

.preheader219.preheader:                          ; preds = %bb.j
  %i.dz = shl nuw i32 1, %i.dy
  br label %.preheader219

.preheader219:                                    ; preds = %.preheader219.preheader, %bb.n
  %.0150250 = phi i32 [ %.5, %bb.n ], [ %i.dz, %.preheader219.preheader ] ; 5 uses
  %.0154249 = phi i32 [ %i.fp, %bb.n ], [ %i.dw, %.preheader219.preheader ]
  %.3162248 = phi i32 [ %i.fi, %bb.n ], [ %i.dy, %.preheader219.preheader ] ; 7 uses
  %.0167247 = phi i32 [ %i.fg, %bb.n ], [ 0, %.preheader219.preheader ]
  %.0182246 = phi ptr [ %i.fa, %bb.n ], [ %i.db, %.preheader219.preheader ]
  %i.ea = mul i32 %.3162248, 257
  %i.eb = add i32 %.0150250, -1                   ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.preheader219, %.thread
  %.1183 = phi ptr [ %i.fa, %.thread ], [ %.0182246, %.preheader219 ] ; 2 uses
  %.1168 = phi i32 [ %i.fg, %.thread ], [ %.0167247, %.preheader219 ] ; 4 uses
  %.1155 = phi i32 [ %i.fh, %.thread ], [ %.0154249, %.preheader219 ]
  %i.ec = load i16, ptr %.1183, align 2, !tbaa !75
  %i.ed = zext i16 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !14
  %i.eg = add i32 %i.ea, %i.ef
  %i.eh = zext i32 %.1168 to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eh
  store i32 %i.eg, ptr %i.ei, align 4, !tbaa !14
  %.not203 = icmp eq i32 %.1168, %i.eb
  br i1 %.not203, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.k
  %i.ej = icmp ult i32 %.3162248, %.0186
  br i1 %i.ej, label %.lr.ph258.preheader, label %.thread212

.lr.ph258.preheader:                              ; preds = %.preheader
  %i.ek = sub nuw i32 %.0186, %.3162248
  %.neg = add i32 %.3162248, 1
  %xtraiter391 = and i32 %i.ek, 1
  %lcmp.mod392.not = icmp eq i32 %xtraiter391, 0
  br i1 %lcmp.mod392.not, label %.lr.ph258.prol.loopexit, label %.lr.ph258.prol

.lr.ph258.prol:                                   ; preds = %.lr.ph258.preheader
  %i.el = zext i32 %.0150250 to i64               ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.el
  %i.en = shl nuw nsw i64 %i.el, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.em, ptr nonnull align 4 %0, i64 %i.en, i1 false)
  %i.eo = shl i32 %.0150250, 1
  %i.ep = add nuw nsw i32 %.3162248, 1
  br label %.lr.ph258.prol.loopexit

.lr.ph258.prol.loopexit:                          ; preds = %.lr.ph258.prol, %.lr.ph258.preheader
  %.2257.unr = phi i32 [ %.0150250, %.lr.ph258.preheader ], [ %i.eo, %.lr.ph258.prol ]
  %.5164256.unr = phi i32 [ %.3162248, %.lr.ph258.preheader ], [ %i.ep, %.lr.ph258.prol ]
  %i.eq = icmp eq i32 %.0186, %.neg
  br i1 %i.eq, label %.thread212, label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.prol.loopexit, %.lr.ph258
  %.2257 = phi i32 [ %i.ey, %.lr.ph258 ], [ %.2257.unr, %.lr.ph258.prol.loopexit ] ; 3 uses
  %.5164256 = phi i32 [ %i.ez, %.lr.ph258 ], [ %.5164256.unr, %.lr.ph258.prol.loopexit ]
  %i.er = zext i32 %.2257 to i64                  ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.er
  %i.et = shl nuw nsw i64 %i.er, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.es, ptr nonnull align 4 %0, i64 %i.et, i1 false)
  %i.eu = shl i32 %.2257, 1
  %i.ev = zext i32 %i.eu to i64                   ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ev
  %i.ex = shl nuw nsw i64 %i.ev, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ew, ptr nonnull align 4 %0, i64 %i.ex, i1 false)
  %i.ey = shl i32 %.2257, 2
  %i.ez = add nuw nsw i32 %.5164256, 2            ; 2 uses
  %exitcond303.not.1 = icmp eq i32 %i.ez, %.0186
  br i1 %exitcond303.not.1, label %.thread212, label %.lr.ph258, !llvm.loop !66

.thread:                                          ; preds = %bb.k
  %i.fa = getelementptr inbounds nuw i8, ptr %.1183, i64 2 ; 3 uses
  %i.fb = xor i32 %.1168, %i.eb
  %i.fc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fb, i1 true)
  %i.fd = lshr exact i32 -2147483648, %i.fc       ; 2 uses
  %i.fe = add i32 %i.fd, -1
  %i.ff = and i32 %i.fe, %.1168
  %i.fg = or i32 %i.ff, %i.fd                     ; 3 uses
  %i.fh = add i32 %.1155, -1                      ; 2 uses
  %.not204 = icmp eq i32 %i.fh, 0
  br i1 %.not204, label %.preheader218, label %bb.k, !llvm.loop !67

.preheader218:                                    ; preds = %.thread, %bb.m
  %.7166 = phi i32 [ %i.fi, %bb.m ], [ %.3162248, %.thread ]
  %.4 = phi i32 [ %.5, %bb.m ], [ %.0150250, %.thread ] ; 3 uses
  %i.fi = add i32 %.7166, 1                       ; 5 uses
  %.not205 = icmp ugt i32 %i.fi, %.0186           ; 2 uses
  br i1 %.not205, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader218
  %i.fj = zext i32 %.4 to i64                     ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fj
  %i.fl = shl nuw nsw i64 %i.fj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fk, ptr align 4 %0, i64 %i.fl, i1 false)
  %i.fm = shl i32 %.4, 1
  br label %bb.m

bb.m:                                             ; preds = %.preheader218, %bb.l
  %.5 = phi i32 [ %i.fm, %bb.l ], [ %.4, %.preheader218 ] ; 2 uses
  %i.fn = zext i32 %i.fi to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !14 ; 3 uses
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %.preheader218, label %bb.n, !llvm.loop !68

bb.n:                                             ; preds = %bb.m
  br i1 %.not205, label %._crit_edge251, label %.preheader219, !llvm.loop !69

._crit_edge251:                                   ; preds = %bb.n, %bb.j
  %.0182.lcssa = phi ptr [ %i.db, %bb.j ], [ %i.fa, %bb.n ]
  %.0167.lcssa = phi i32 [ 0, %bb.j ], [ %i.fg, %bb.n ]
  %.3162.lcssa = phi i32 [ %i.dy, %bb.j ], [ %i.fi, %bb.n ]
  %.0154.lcssa = phi i32 [ %i.dw, %bb.j ], [ %i.fp, %bb.n ]
  %i.fr = shl nuw nsw i32 1, %.0186               ; 2 uses
  %i.fs = add nsw i32 %i.fr, -1
  %invariant.op = or disjoint i32 %.0186, 49152
  br label %.loopexit.outer

.loopexit.outer:                                  ; preds = %.lr.ph268, %._crit_edge251
  %.2184.ph = phi ptr [ %.0182.lcssa, %._crit_edge251 ], [ %i.gx, %.lr.ph268 ]
  %.3170.ph = phi i32 [ %.0167.lcssa, %._crit_edge251 ], [ %i.hd, %.lr.ph268 ]
  %.8.ph = phi i32 [ %.3162.lcssa, %._crit_edge251 ], [ %i.hg, %.lr.ph268 ] ; 3 uses
  %.2156.ph = phi i32 [ %.0154.lcssa, %._crit_edge251 ], [ %i.hj, %.lr.ph268 ]
  %.6.ph = phi i32 [ %i.fr, %._crit_edge251 ], [ %.7, %.lr.ph268 ]
  %.0148.ph = phi i32 [ -1, %._crit_edge251 ], [ %.1149, %.lr.ph268 ]
  %.0146.ph = phi i32 [ 0, %._crit_edge251 ], [ %.1147, %.lr.ph268 ]
  %.pre = sub i32 %.8.ph, %.0186                  ; 4 uses
  %.pre306 = shl nuw i32 1, %.pre                 ; 3 uses
  %i.ft = mul i32 %.pre, 257
  %notmask = shl nsw i32 -1, %.8.ph
  %i.fu = xor i32 %notmask, -1                    ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.outer, %bb.r
  %.2184 = phi ptr [ %i.gx, %bb.r ], [ %.2184.ph, %.loopexit.outer ] ; 2 uses
  %.3170 = phi i32 [ %i.hd, %bb.r ], [ %.3170.ph, %.loopexit.outer ] ; 5 uses
  %.2156 = phi i32 [ %i.he, %bb.r ], [ %.2156.ph, %.loopexit.outer ] ; 3 uses
  %.6 = phi i32 [ %.7, %bb.r ], [ %.6.ph, %.loopexit.outer ] ; 4 uses
  %.0148 = phi i32 [ %.1149, %bb.r ], [ %.0148.ph, %.loopexit.outer ] ; 2 uses
  %.0146 = phi i32 [ %.1147, %bb.r ], [ %.0146.ph, %.loopexit.outer ]
  %i.fv = and i32 %.3170, %i.fs                   ; 3 uses
  %.not201 = icmp eq i32 %i.fv, %.0148
  br i1 %.not201, label %._crit_edge305, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.fw = icmp ult i32 %.2156, %.pre306
  br i1 %i.fw, label %.lr.ph262, label %._crit_edge263

.lr.ph262:                                        ; preds = %bb.o, %.lr.ph262
  %.0145260 = phi i32 [ %i.fx, %.lr.ph262 ], [ %.pre, %bb.o ]
  %.1153259 = phi i32 [ %i.gd, %.lr.ph262 ], [ %.2156, %bb.o ]
  %i.fx = add i32 %.0145260, 1                    ; 4 uses
  %i.fy = shl nuw i32 %.1153259, 1
  %i.fz = add i32 %i.fx, %.0186
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !14
  %i.gd = add i32 %i.gc, %i.fy                    ; 2 uses
  %i.ge = shl nuw i32 1, %i.fx                    ; 2 uses
  %i.gf = icmp ult i32 %i.gd, %i.ge
  br i1 %i.gf, label %.lr.ph262, label %._crit_edge263, !llvm.loop !70

._crit_edge263:                                   ; preds = %.lr.ph262, %bb.o
  %.0145.lcssa = phi i32 [ %.pre, %bb.o ], [ %i.fx, %.lr.ph262 ]
  %.lcssa = phi i32 [ %.pre306, %bb.o ], [ %i.ge, %.lr.ph262 ]
  %i.gg = add i32 %.lcssa, %.6
  %i.gh = shl i32 %.6, 16
  %i.gi = shl i32 %.0145.lcssa, 8
  %i.gj = or i32 %i.gh, %i.gi
  %.reass = or i32 %i.gj, %invariant.op
  %i.gk = zext nneg i32 %i.fv to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gk
  store i32 %.reass, ptr %i.gl, align 4, !tbaa !14
  br label %._crit_edge305

._crit_edge305:                                   ; preds = %.loopexit, %._crit_edge263
  %.7 = phi i32 [ %i.gg, %._crit_edge263 ], [ %.6, %.loopexit ] ; 3 uses
  %.1149 = phi i32 [ %i.fv, %._crit_edge263 ], [ %.0148, %.loopexit ] ; 2 uses
  %.1147 = phi i32 [ %.6, %._crit_edge263 ], [ %.0146, %.loopexit ] ; 3 uses
  %i.gm = load i16, ptr %.2184, align 2, !tbaa !75
  %i.gn = zext i16 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !14
  %i.gq = add i32 %i.ft, %i.gp
  %i.gr = lshr i32 %.3170, %.0186
  %i.gs = add i32 %.1147, %i.gr
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %._crit_edge305
  %.0 = phi i32 [ %i.gs, %._crit_edge305 ], [ %i.gv, %bb.p ] ; 2 uses
  %i.gt = zext i32 %.0 to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gt
  store i32 %i.gq, ptr %i.gu, align 4, !tbaa !14
  %i.gv = add i32 %.0, %.pre306                   ; 2 uses
  %i.gw = icmp ult i32 %i.gv, %.7
  br i1 %i.gw, label %bb.p, label %bb.q, !llvm.loop !71

bb.q:                                             ; preds = %bb.p
  %.not202 = icmp eq i32 %.3170, %i.fu
  br i1 %.not202, label %.thread212, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gx = getelementptr inbounds nuw i8, ptr %.2184, i64 2 ; 2 uses
  %i.gy = xor i32 %.3170, %i.fu
  %i.gz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gy, i1 true)
  %i.ha = lshr exact i32 -2147483648, %i.gz       ; 2 uses
  %i.hb = add i32 %i.ha, -1
  %i.hc = and i32 %i.hb, %.3170
  %i.hd = or i32 %i.hc, %i.ha                     ; 2 uses
  %i.he = add i32 %.2156, -1                      ; 2 uses
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %.lr.ph268, label %.loopexit

.lr.ph268:                                        ; preds = %bb.r, %.lr.ph268
  %.9266 = phi i32 [ %i.hg, %.lr.ph268 ], [ %.8.ph, %bb.r ]
  %i.hg = add i32 %.9266, 1                       ; 3 uses
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !14 ; 2 uses
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %.lr.ph268, label %.loopexit.outer, !llvm.loop !72

.thread212:                                       ; preds = %.lr.ph258.prol.loopexit, %.lr.ph258, %bb.q, %bb.i, %.preheader, %bb.f, %._crit_edge244
  %.6181 = phi i1 [ true, %bb.q ], [ false, %._crit_edge244 ], [ true, %.preheader ], [ false, %bb.f ], [ true, %bb.i ], [ true, %.lr.ph258 ], [ true, %.lr.ph258.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i1 %.6181
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8
end_hunk_2
