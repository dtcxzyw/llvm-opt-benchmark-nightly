Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@ReadBase128:bb.a
  %i.s = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not.3 = icmp eq i32 %i.s, 0
  br i1 %.not.3, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.t = shl nuw nsw i64 %i.p, 7
  %i.u = and i8 %i.r, 127
  %i.v = zext nneg i8 %i.u to i64
  %i.w = or disjoint i64 %i.t, %i.v               ; 2 uses
  %i.x = icmp sgt i8 %i.r, -1
  br i1 %i.x, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not.4 = icmp eq i32 %i.z, 0
  br i1 %.not.4, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %.not16.4 = icmp samesign ult i8 %i.af, 16
  br i1 %.not16.4, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.aa = shl nuw nsw i64 %i.w, 7
  %i.ab = and i8 %i.y, 127
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = or disjoint i64 %i.aa, %i.ac
  %i.ae = icmp sgt i8 %i.y, -1
  br i1 %i.ae, label %bb.m, label %.loopexit

bb.k:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.b, -128
  br i1 %.not28, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = and i8 %i.b, 127                        ; 2 uses
  %i.ag = zext nneg i8 %i.af to i64               ; 2 uses
  %i.ah = icmp sgt i8 %i.b, -1
  br i1 %i.ah, label %bb.m, label %bb.b

bb.m:                                             ; preds = %bb.j, %bb.g, %bb.e, %bb.c, %bb.l
  %.lcssa = phi i64 [ %i.ag, %bb.l ], [ %i.i, %bb.c ], [ %i.p, %bb.e ], [ %i.w, %bb.g ], [ %i.ad, %bb.j ]
  store i64 %.lcssa, ptr %1, align 8, !tbaa !162
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.a, %bb.b, %bb.d, %bb.f, %bb.h, %bb.i, %bb.j, %bb.m
  %.014 = phi i32 [ 0, %bb.m ], [ %i.s, %bb.f ], [ %i.c, %bb.a ], [ 8, %bb.k ], [ %i.e, %bb.b ], [ %i.z, %bb.h ], [ 8, %bb.i ], [ %i.l, %bb.d ], [ 8, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Read255UShort(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !18
  %i.b = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  switch i8 %i.b, label %bb.h [
    i8 -3, label %bb.c
    i8 -1, label %bb.d
    i8 -2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %0, ptr noundef nonnull %i.a) #27
  %i.e = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not22 = icmp eq i32 %i.e, 0
  br i1 %.not22, label %.sink.split, label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.f = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27
  %i.g = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not21 = icmp eq i32 %i.g, 0
  br i1 %.not21, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.h = zext i8 %i.f to i16
  %i.i = add nuw nsw i16 %i.h, 253
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.j = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not20 = icmp eq i32 %i.k, 0
  br i1 %.not20, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.l = zext i8 %i.j to i16
  %i.m = add nuw nsw i16 %i.l, 506
  br label %.sink.split

bb.h:                                             ; preds = %bb.b
  %i.n = zext i8 %i.b to i16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  %.sink = phi i16 [ %i.n, %bb.h ], [ %i.m, %bb.g ], [ %i.i, %bb.e ], [ %i.d, %bb.c ]
  store i16 %.sink, ptr %1, align 2, !tbaa !237
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.f, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ %i.k, %bb.f ], [ %i.c, %bb.a ], [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ 0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.0
}

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @compute_ULong_sum(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #14 {
bb.a:
  %i.a = and i64 %1, -4                           ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add i64 %1, -4                           ; 2 uses
  %i.c = lshr i64 %i.b, 2
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.b, 12
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, 9223372036854775804
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01823.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ai, %.preheader.loopexit.unr-lcssa ]
  %.02022.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ae, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod45 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.01823.epil = phi i64 [ %i.j, %.lr.ph.epil ], [ %.01823.epil.init, %.lr.ph.epil.preheader ]
  %.02022.epil = phi ptr [ %i.f, %.lr.ph.epil ], [ %.02022.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.02022.epil, i64 4 ; 2 uses
  %i.g = load i32, ptr %.02022.epil, align 1
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  %i.i = zext i32 %i.h to i64
  %i.j = add i64 %.01823.epil, %i.i               ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.loopexit, label %.lr.ph.epil, !llvm.loop !651

.preheader.loopexit:                              ; preds = %.lr.ph.epil, %.preheader.loopexit.unr-lcssa
  %.lcssa42 = phi ptr [ %i.ae, %.preheader.loopexit.unr-lcssa ], [ %i.f, %.lr.ph.epil ]
  %.lcssa41 = phi i64 [ %i.ai, %.preheader.loopexit.unr-lcssa ], [ %i.j, %.lr.ph.epil ]
  %i.k = and i64 %1, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.020.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa42, %.preheader.loopexit ] ; 2 uses
  %.018.lcssa = phi i64 [ 0, %bb.a ], [ %.lcssa41, %.preheader.loopexit ] ; 3 uses
  %.017.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %.preheader.loopexit ]
  %i.l = icmp ult i64 %.017.lcssa, %1
  br i1 %i.l, label %.lr.ph31.preheader, label %._crit_edge

.lr.ph31.preheader:                               ; preds = %.preheader
  %i.m = and i64 %1, 3                            ; 3 uses
  %i.n = sub i64 %i.a, %1
  %i.o = icmp ugt i64 %i.n, -4
  br i1 %i.o, label %.lr.ph31.epil.preheader, label %.lr.ph31

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01823 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ]
  %.02022 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.p = getelementptr inbounds nuw i8, ptr %.02022, i64 4
  %i.q = load i32, ptr %.02022, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = zext i32 %i.r to i64
  %i.t = add i64 %.01823, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.02022, i64 8
  %i.v = load i32, ptr %i.p, align 1
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = add i64 %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.02022, i64 12
  %i.aa = load i32, ptr %i.u, align 1
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.02022, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.z, align 1
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add i64 %i.ad, %i.ah                    ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !652

.lr.ph31:                                         ; preds = %.lr.ph31.preheader, %.lr.ph31
  %.030 = phi i32 [ %i.bk, %.lr.ph31 ], [ 24, %.lr.ph31.preheader ] ; 5 uses
  %.11928 = phi i64 [ %i.bj, %.lr.ph31 ], [ %.018.lcssa, %.lr.ph31.preheader ]
  %.12127 = phi ptr [ %i.be, %.lr.ph31 ], [ %.020.lcssa, %.lr.ph31.preheader ] ; 5 uses
  %niter52 = phi i64 [ %niter52.next.3, %.lr.ph31 ], [ 0, %.lr.ph31.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.12127, i64 1
  %i.ak = load i8, ptr %.12127, align 1, !tbaa !17
  %i.al = zext i8 %i.ak to i32
  %i.am = shl i32 %i.al, %.030
  %i.an = zext i32 %i.am to i64
  %i.ao = add i64 %.11928, %i.an
  %i.ap = add nsw i32 %.030, -8
  %i.aq = getelementptr inbounds nuw i8, ptr %.12127, i64 2
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !17
  %i.as = zext i8 %i.ar to i32
  %i.at = shl i32 %i.as, %i.ap
  %i.au = zext i32 %i.at to i64
  %i.av = add i64 %i.ao, %i.au
  %i.aw = add nsw i32 %.030, -16
  %i.ax = getelementptr inbounds nuw i8, ptr %.12127, i64 3
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !17
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl i32 %i.az, %i.aw
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add i64 %i.av, %i.bb
  %i.bd = add nsw i32 %.030, -24
  %i.be = getelementptr inbounds nuw i8, ptr %.12127, i64 4 ; 2 uses
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl i32 %i.bg, %i.bd
  %i.bi = zext i32 %i.bh to i64
  %i.bj = add i64 %i.bc, %i.bi                    ; 3 uses
  %i.bk = add nsw i32 %.030, -32                  ; 2 uses
  %niter52.next.3 = add i64 %niter52, 4           ; 2 uses
  %niter52.ncmp.3 = icmp eq i64 %niter52.next.3, 0
  br i1 %niter52.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph31, !llvm.loop !653

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph31
  %lcmp.mod48.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod48.not, label %._crit_edge, label %.lr.ph31.epil.preheader

.lr.ph31.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph31.preheader
  %.030.epil.init = phi i32 [ 24, %.lr.ph31.preheader ], [ %i.bk, %._crit_edge.loopexit.unr-lcssa ]
  %.11928.epil.init = phi i64 [ %.018.lcssa, %.lr.ph31.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %.12127.epil.init = phi ptr [ %.020.lcssa, %.lr.ph31.preheader ], [ %i.be, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph31.epil

.lr.ph31.epil:                                    ; preds = %.lr.ph31.epil, %.lr.ph31.epil.preheader
  %.030.epil = phi i32 [ %i.br, %.lr.ph31.epil ], [ %.030.epil.init, %.lr.ph31.epil.preheader ] ; 2 uses
  %.11928.epil = phi i64 [ %i.bq, %.lr.ph31.epil ], [ %.11928.epil.init, %.lr.ph31.epil.preheader ]
  %.12127.epil = phi ptr [ %i.bl, %.lr.ph31.epil ], [ %.12127.epil.init, %.lr.ph31.epil.preheader ] ; 2 uses
  %epil.iter47 = phi i64 [ %epil.iter47.next, %.lr.ph31.epil ], [ 0, %.lr.ph31.epil.preheader ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.12127.epil, i64 1
  %i.bm = load i8, ptr %.12127.epil, align 1, !tbaa !17
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl i32 %i.bn, %.030.epil
  %i.bp = zext i32 %i.bo to i64
  %i.bq = add i64 %.11928.epil, %i.bp             ; 2 uses
  %i.br = add nsw i32 %.030.epil, -8
  %epil.iter47.next = add i64 %epil.iter47, 1     ; 2 uses
  %epil.iter47.cmp.not = icmp eq i64 %epil.iter47.next, %i.m
  br i1 %epil.iter47.cmp.not, label %._crit_edge, label %.lr.ph31.epil, !llvm.loop !654

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph31.epil, %.preheader
  %.119.lcssa = phi i64 [ %.018.lcssa, %.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ], [ %i.bq, %.lr.ph31.epil ]
  ret i64 %.119.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_tags(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !227
  %i.b = load ptr, ptr %1, align 8, !tbaa !227
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !220
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !220
  %.0 = tail call i32 @llvm.ucmp.i32.i32(i32 %i.d, i32 %i.f)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @reconstruct_font(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 19 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 26 uses
  %i.g = alloca i32, align 4                      ; 74 uses
  %i.h = alloca ptr, align 8                      ; 7 uses
  %i.i = alloca i64, align 8                      ; 9 uses
  %i.j = alloca i64, align 8                      ; 27 uses
  %i.k = alloca i16, align 2                      ; 8 uses
  %i.l = alloca i8, align 1                       ; 7 uses
  %i.m = alloca i16, align 2                      ; 10 uses
  %i.n = alloca i64, align 8                      ; 8 uses
  %i.o = alloca i16, align 2                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %i.q = alloca i16, align 2                      ; 7 uses
  %i.r = alloca i32, align 4                      ; 7 uses
  %i.s = alloca i32, align 4                      ; 6 uses
  %i.t = alloca i32, align 4                      ; 9 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #27
  store i32 0, ptr %i.t, align 4, !tbaa !18
  %i.v = load ptr, ptr %5, align 8, !tbaa !208    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load i16, ptr %i.w, align 8, !tbaa !217  ; 3 uses
  %i.y = zext i16 %i.x to i64                     ; 6 uses
  %i.z = shl nuw nsw i64 %i.y, 4
  %i.aa = or disjoint i64 %i.z, 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #27
  store i64 0, ptr %i.u, align 8, !tbaa !162
  %i.ab = load i64, ptr %4, align 8, !tbaa !250
  %.not.i = icmp eq i16 %i.x, 0                   ; 2 uses
  br i1 %.not.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.y
  br i1 %exitcond.not.i, label %find_table.exit, label %.lr.ph.i, !llvm.loop !655

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !227 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !220
  %i.ai = icmp eq i32 %i.ah, 1735162214
  br i1 %i.ai, label %find_table.exit, label %bb.b

find_table.exit:                                  ; preds = %bb.b, %.lr.ph.i
  %.08.i = phi ptr [ %i.af, %.lr.ph.i ], [ null, %bb.b ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %.08.i, ptr %i.aj, align 8, !tbaa !656
  br label %.lr.ph.i148

bb.c:                                             ; preds = %.lr.ph.i148
  %indvars.iv.next.i150 = add nuw nsw i64 %indvars.iv.i149, 1 ; 2 uses
  %exitcond.not.i151 = icmp eq i64 %indvars.iv.next.i150, %i.y
  br i1 %exitcond.not.i151, label %find_table.exit153.thr_comm, label %.lr.ph.i148, !llvm.loop !655

.lr.ph.i148:                                      ; preds = %find_table.exit, %bb.c
  %indvars.iv.i149 = phi i64 [ %indvars.iv.next.i150, %bb.c ], [ 0, %find_table.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i149
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !227 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !220
  %i.ao = icmp eq i32 %i.an, 1819239265
  br i1 %i.ao, label %find_table.exit153, label %bb.c

find_table.exit153.thr_comm:                      ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !657
  %.not = icmp eq ptr %.08.i, null
  br i1 %.not, label %bb.d, label %bb.en

find_table.exit153:                               ; preds = %.lr.ph.i148
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.al, ptr %i.aq, align 8, !tbaa !657
  %i.ar = icmp eq ptr %.08.i, null
  br i1 %i.ar, label %bb.en, label %.thread278

.thread278:                                       ; preds = %find_table.exit153
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !223
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !223
  %i.aw = xor i64 %i.av, %i.at
  %i.ax = and i64 %i.aw, 256
  %.not131 = icmp eq i64 %i.ax, 0
  br i1 %.not131, label %bb.d, label %bb.en

bb.d:                                             ; preds = %find_table.exit153.thr_comm, %.thread, %.thread278
  %i.ay = phi ptr [ %i.ac, %.thread ], [ %i.aj, %.thread278 ], [ %i.aj, %find_table.exit153.thr_comm ] ; 11 uses
  %i.az = phi ptr [ %i.ad, %.thread ], [ %i.aq, %.thread278 ], [ %i.ap, %find_table.exit153.thr_comm ] ; 5 uses
  %i.ba = call ptr @ft_mem_alloc(ptr noundef %7, i64 noundef 80, ptr noundef nonnull %i.t) #27 ; 69 uses
  %i.bb = load i32, ptr %i.t, align 4, !tbaa !18
  %.not132 = icmp eq i32 %i.bb, 0
  br i1 %.not132, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  call void @FT_Stream_OpenMemory(ptr noundef %i.ba, ptr noundef %0, i64 noundef %1) #27
  br i1 %.not.i, label %find_table.exit219.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %wide.trip.count = zext i16 %i.x to i64
  br label %bb.g

bb.f:                                             ; preds = %pad4.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.i213, label %bb.g, !llvm.loop !658

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.0124433 = phi i8 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 4 uses
  %.0125432 = phi i64 [ %i.ab, %.lr.ph ], [ %i.aap, %bb.f ]
  %.0247430 = phi i64 [ 12, %.lr.ph ], [ %.2249, %bb.f ] ; 4 uses
  %.0250429 = phi i16 [ 0, %.lr.ph ], [ %.1251290, %bb.f ] ; 7 uses
  %.0257428 = phi i64 [ %i.aa, %.lr.ph ], [ %.6263, %bb.f ] ; 27 uses
  %.0264427 = phi ptr [ %i.v, %.lr.ph ], [ %.8, %bb.f ] ; 13 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !227 ; 6 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !18 ; 8 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !162 ; 6 uses
  %.sroa.1713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %.sroa.1713.0.copyload = load i64, ptr %.sroa.1713.0..sroa_idx, align 8, !tbaa !162 ; 2 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !162 ; 4 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !162 ; 9 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %.sroa.27.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !162
  %i.bh = call i32 @FT_Stream_Seek(ptr noundef %i.ba, i64 noundef %.sroa.18.0.copyload) #27 ; 3 uses
  store i32 %i.bh, ptr %i.t, align 4, !tbaa !18
  %.not134 = icmp ne i32 %i.bh, 0
  %i.bi = add i64 %.sroa.23.0.copyload, %.sroa.18.0.copyload
  %i.bj = icmp ugt i64 %i.bi, %1
  %or.cond = select i1 %.not134, i1 true, i1 %i.bj
  br i1 %or.cond, label %.thread313, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = icmp eq i32 %.sroa.3.0.copyload, 1751672161
  br i1 %i.bk, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #27
  %i.bl = call i32 @FT_Stream_Skip(ptr noundef %i.ba, i64 noundef 34) #27 ; 2 uses
  store i32 %i.bl, ptr %i.s, align 4, !tbaa !18
  %.not.i154 = icmp eq i32 %i.bl, 0
  br i1 %.not.i154, label %bb.j, label %read_num_hmetrics.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bm = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.s) #27 ; 2 uses
  %i.bn = load i32, ptr %i.s, align 4, !tbaa !18
  %.not4.i = icmp eq i32 %i.bn, 0
  br i1 %.not4.i, label %.thread286, label %read_num_hmetrics.exit.thread

read_num_hmetrics.exit.thread:                    ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #27
  br label %.thread313thread-pre-split

bb.k:                                             ; preds = %bb.h
  store i16 %.0250429, ptr %i.bc, align 2, !tbaa !659
  %i.bo = and i64 %.sroa.1713.0.copyload, 256
  %.not136.not = icmp eq i64 %i.bo, 0
  br i1 %.not136.not, label %bb.l, label %bb.r

.thread286:                                       ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #27
  store i16 %i.bm, ptr %i.bc, align 2, !tbaa !659
  %i.bp = and i64 %.sroa.1713.0.copyload, 256
  %.not136.not288 = icmp eq i64 %i.bp, 0
  br i1 %.not136.not288, label %.thread292, label %.thread313thread-pre-split

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp eq i32 %.sroa.3.0.copyload, 1751474532
  br i1 %i.bq, label %bb.m, label %.thread292

bb.m:                                             ; preds = %bb.l
  %i.br = icmp ult i64 %.sroa.23.0.copyload, 12
  br i1 %i.br, label %.thread313thread-pre-split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.18.0.copyload
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 0, ptr %i.bt, align 1
  br label %.thread292

.thread292:                                       ; preds = %.thread286, %bb.n, %bb.l
  %.1251289294 = phi i16 [ %.0250429, %bb.l ], [ %.0250429, %bb.n ], [ %i.bm, %.thread286 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.18.0.copyload ; 4 uses
  %i.bv = and i64 %.sroa.23.0.copyload, -4        ; 3 uses
  %.not.i155 = icmp eq i64 %i.bv, 0
  br i1 %.not.i155, label %.preheader.i, label %.lr.ph.i156.preheader

.lr.ph.i156.preheader:                            ; preds = %.thread292
  %i.bw = add i64 %.sroa.23.0.copyload, -4        ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %xtraiter824 = and i64 %i.by, 3                 ; 3 uses
  %i.bz = icmp ult i64 %i.bw, 12
  br i1 %i.bz, label %.lr.ph.i156.epil.preheader, label %.lr.ph.i156.preheader.new

.lr.ph.i156.preheader.new:                        ; preds = %.lr.ph.i156.preheader
  %unroll_iter = and i64 %i.by, 9223372036854775804
  br label %.lr.ph.i156

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i156
  %lcmp.mod825.not = icmp eq i64 %xtraiter824, 0
  br i1 %lcmp.mod825.not, label %.preheader.i, label %.lr.ph.i156.epil.preheader

.lr.ph.i156.epil.preheader:                       ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i156.preheader
  %.01823.i.epil.init = phi i64 [ 0, %.lr.ph.i156.preheader ], [ %i.db, %.preheader.i.loopexit.unr-lcssa ]
  %.02022.i.epil.init = phi ptr [ %i.bu, %.lr.ph.i156.preheader ], [ %i.cx, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod828 = icmp ne i64 %xtraiter824, 0
  call void @llvm.assume(i1 %lcmp.mod828)
  br label %.lr.ph.i156.epil

.lr.ph.i156.epil:                                 ; preds = %.lr.ph.i156.epil, %.lr.ph.i156.epil.preheader
  %.01823.i.epil = phi i64 [ %i.ce, %.lr.ph.i156.epil ], [ %.01823.i.epil.init, %.lr.ph.i156.epil.preheader ]
  %.02022.i.epil = phi ptr [ %i.ca, %.lr.ph.i156.epil ], [ %.02022.i.epil.init, %.lr.ph.i156.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i156.epil ], [ 0, %.lr.ph.i156.epil.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.02022.i.epil, i64 4 ; 2 uses
  %i.cb = load i32, ptr %.02022.i.epil, align 1
  %i.cc = call i32 @llvm.bswap.i32(i32 %i.cb)
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add i64 %.01823.i.epil, %i.cd           ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter824
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i156.epil, !llvm.loop !660

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i156.epil, %.thread292
  %.020.lcssa.i = phi ptr [ %i.bu, %.thread292 ], [ %i.cx, %.preheader.i.loopexit.unr-lcssa ], [ %i.ca, %.lr.ph.i156.epil ] ; 2 uses
  %.018.lcssa.i = phi i64 [ 0, %.thread292 ], [ %i.db, %.preheader.i.loopexit.unr-lcssa ], [ %i.ce, %.lr.ph.i156.epil ] ; 3 uses
  %.not327 = icmp eq i64 %i.bv, %.sroa.23.0.copyload
  br i1 %.not327, label %compute_ULong_sum.exit, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %.preheader.i
  %i.cf = and i64 %.sroa.23.0.copyload, 3         ; 3 uses
  %i.cg = sub i64 %i.bv, %.sroa.23.0.copyload
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %.lr.ph31.i.epil.preheader, label %.lr.ph31.i

.lr.ph.i156:                                      ; preds = %.lr.ph.i156, %.lr.ph.i156.preheader.new
  %.01823.i = phi i64 [ 0, %.lr.ph.i156.preheader.new ], [ %i.db, %.lr.ph.i156 ]
  %.02022.i = phi ptr [ %i.bu, %.lr.ph.i156.preheader.new ], [ %i.cx, %.lr.ph.i156 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i156.preheader.new ], [ %niter.next.3, %.lr.ph.i156 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.02022.i, i64 4
  %i.cj = load i32, ptr %.02022.i, align 1
  %i.ck = call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cl = zext i32 %i.ck to i64
  %i.cm = add i64 %.01823.i, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.02022.i, i64 8
  %i.co = load i32, ptr %i.ci, align 1
  %i.cp = call i32 @llvm.bswap.i32(i32 %i.co)
  %i.cq = zext i32 %i.cp to i64
  %i.cr = add i64 %i.cm, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.02022.i, i64 12
  %i.ct = load i32, ptr %i.cn, align 1
  %i.cu = call i32 @llvm.bswap.i32(i32 %i.ct)
  %i.cv = zext i32 %i.cu to i64
  %i.cw = add i64 %i.cr, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.02022.i, i64 16 ; 3 uses
  %i.cy = load i32, ptr %i.cs, align 1
  %i.cz = call i32 @llvm.bswap.i32(i32 %i.cy)
  %i.da = zext i32 %i.cz to i64
  %i.db = add i64 %i.cw, %i.da                    ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i156, !llvm.loop !652

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %.030.i = phi i32 [ %i.ed, %.lr.ph31.i ], [ 24, %.lr.ph31.i.preheader ] ; 5 uses
  %.11928.i = phi i64 [ %i.ec, %.lr.ph31.i ], [ %.018.lcssa.i, %.lr.ph31.i.preheader ]
  %.12127.i = phi ptr [ %i.dx, %.lr.ph31.i ], [ %.020.lcssa.i, %.lr.ph31.i.preheader ] ; 5 uses
  %niter835 = phi i64 [ %niter835.next.3, %.lr.ph31.i ], [ 0, %.lr.ph31.i.preheader ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.12127.i, i64 1
  %i.dd = load i8, ptr %.12127.i, align 1, !tbaa !17
  %i.de = zext i8 %i.dd to i32
  %i.df = shl i32 %i.de, %.030.i
  %i.dg = zext i32 %i.df to i64
  %i.dh = add i64 %.11928.i, %i.dg
  %i.di = add nsw i32 %.030.i, -8
  %i.dj = getelementptr inbounds nuw i8, ptr %.12127.i, i64 2
  %i.dk = load i8, ptr %i.dc, align 1, !tbaa !17
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl i32 %i.dl, %i.di
  %i.dn = zext i32 %i.dm to i64
  %i.do = add i64 %i.dh, %i.dn
  %i.dp = add nsw i32 %.030.i, -16
  %i.dq = getelementptr inbounds nuw i8, ptr %.12127.i, i64 3
  %i.dr = load i8, ptr %i.dj, align 1, !tbaa !17
  %i.ds = zext i8 %i.dr to i32
  %i.dt = shl i32 %i.ds, %i.dp
  %i.du = zext i32 %i.dt to i64
  %i.dv = add i64 %i.do, %i.du
  %i.dw = add nsw i32 %.030.i, -24
  %i.dx = getelementptr inbounds nuw i8, ptr %.12127.i, i64 4 ; 2 uses
  %i.dy = load i8, ptr %i.dq, align 1, !tbaa !17
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl i32 %i.dz, %i.dw
  %i.eb = zext i32 %i.ea to i64
  %i.ec = add i64 %i.dv, %i.eb                    ; 3 uses
  %i.ed = add nsw i32 %.030.i, -32                ; 2 uses
  %niter835.next.3 = add i64 %niter835, 4         ; 2 uses
  %niter835.ncmp.3 = icmp eq i64 %niter835.next.3, 0
  br i1 %niter835.ncmp.3, label %compute_ULong_sum.exit.loopexit.unr-lcssa, label %.lr.ph31.i, !llvm.loop !653

compute_ULong_sum.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph31.i
  %lcmp.mod831.not = icmp eq i64 %i.cf, 0
  br i1 %lcmp.mod831.not, label %compute_ULong_sum.exit, label %.lr.ph31.i.epil.preheader

.lr.ph31.i.epil.preheader:                        ; preds = %compute_ULong_sum.exit.loopexit.unr-lcssa, %.lr.ph31.i.preheader
  %.030.i.epil.init = phi i32 [ 24, %.lr.ph31.i.preheader ], [ %i.ed, %compute_ULong_sum.exit.loopexit.unr-lcssa ]
  %.11928.i.epil.init = phi i64 [ %.018.lcssa.i, %.lr.ph31.i.preheader ], [ %i.ec, %compute_ULong_sum.exit.loopexit.unr-lcssa ]
  %.12127.i.epil.init = phi ptr [ %.020.lcssa.i, %.lr.ph31.i.preheader ], [ %i.dx, %compute_ULong_sum.exit.loopexit.unr-lcssa ]
  %lcmp.mod833 = icmp ne i64 %i.cf, 0
  call void @llvm.assume(i1 %lcmp.mod833)
  br label %.lr.ph31.i.epil

.lr.ph31.i.epil:                                  ; preds = %.lr.ph31.i.epil, %.lr.ph31.i.epil.preheader
  %.030.i.epil = phi i32 [ %i.ek, %.lr.ph31.i.epil ], [ %.030.i.epil.init, %.lr.ph31.i.epil.preheader ] ; 2 uses
  %.11928.i.epil = phi i64 [ %i.ej, %.lr.ph31.i.epil ], [ %.11928.i.epil.init, %.lr.ph31.i.epil.preheader ]
  %.12127.i.epil = phi ptr [ %i.ee, %.lr.ph31.i.epil ], [ %.12127.i.epil.init, %.lr.ph31.i.epil.preheader ] ; 2 uses
  %epil.iter830 = phi i64 [ %epil.iter830.next, %.lr.ph31.i.epil ], [ 0, %.lr.ph31.i.epil.preheader ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.12127.i.epil, i64 1
  %i.ef = load i8, ptr %.12127.i.epil, align 1, !tbaa !17
  %i.eg = zext i8 %i.ef to i32
  %i.eh = shl i32 %i.eg, %.030.i.epil
  %i.ei = zext i32 %i.eh to i64
  %i.ej = add i64 %.11928.i.epil, %i.ei           ; 2 uses
  %i.ek = add nsw i32 %.030.i.epil, -8
  %epil.iter830.next = add i64 %epil.iter830, 1   ; 2 uses
  %epil.iter830.cmp.not = icmp eq i64 %epil.iter830.next, %i.cf
  br i1 %epil.iter830.cmp.not, label %compute_ULong_sum.exit, label %.lr.ph31.i.epil, !llvm.loop !661

compute_ULong_sum.exit:                           ; preds = %compute_ULong_sum.exit.loopexit.unr-lcssa, %.lr.ph31.i.epil, %.preheader.i
  %.119.lcssa.i = phi i64 [ %.018.lcssa.i, %.preheader.i ], [ %i.ec, %compute_ULong_sum.exit.loopexit.unr-lcssa ], [ %i.ej, %.lr.ph31.i.epil ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #27
  store i32 0, ptr %i.r, align 4, !tbaa !18
  %i.el = add i64 %.sroa.23.0.copyload, %.0257428 ; 5 uses
  %i.em = icmp ugt i64 %i.el, 31457280
  br i1 %i.em, label %write_buf.exit.thread, label %bb.o

bb.o:                                             ; preds = %compute_ULong_sum.exit
  %i.en = load i64, ptr %6, align 8, !tbaa !162   ; 2 uses
  %i.eo = icmp ugt i64 %i.el, %i.en
  br i1 %i.eo, label %bb.p, label %write_buf.exit

bb.p:                                             ; preds = %bb.o
  %i.ep = call ptr @ft_mem_qrealloc(ptr noundef %7, i64 noundef 1, i64 noundef %i.en, i64 noundef %i.el, ptr noundef %.0264427, ptr noundef nonnull %i.r) #27
  %i.eq = load i32, ptr %i.r, align 4, !tbaa !18
  %.not.i159 = icmp eq i32 %i.eq, 0
  br i1 %.not.i159, label %bb.q, label %write_buf.exit.thread

bb.q:                                             ; preds = %bb.p
  store i64 %i.el, ptr %6, align 8, !tbaa !162
  br label %write_buf.exit

write_buf.exit.thread:                            ; preds = %compute_ULong_sum.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #27
  br label %.thread313thread-pre-split

write_buf.exit:                                   ; preds = %bb.o, %bb.q
  %.0.i158 = phi ptr [ %i.ep, %bb.q ], [ %.0264427, %bb.o ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i158, i64 %.0257428
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.er, ptr readonly align 1 %i.bu, i64 %.sroa.23.0.copyload, i1 false)
  %.pre25.i = load i32, ptr %i.r, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #27
  %.not141 = icmp eq i32 %.pre25.i, 0
  br i1 %.not141, label %bb.dz, label %.thread313thread-pre-split

bb.r:                                             ; preds = %bb.k
  switch i32 %.sroa.3.0.copyload, label %.thread313thread-pre-split [
    i32 1735162214, label %bb.s
    i32 1819239265, label %bb.cr
    i32 1752003704, label %bb.cs
  ]

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i32 0, ptr %i.g, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  store ptr %.0264427, ptr %i.h, align 8, !tbaa !208
  %i.es = call i64 @FT_Stream_Pos(ptr noundef %i.ba) #27 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  store i64 %.0257428, ptr %i.i, align 8, !tbaa !162
  %i.et = call ptr @ft_mem_qrealloc(ptr noundef %7, i64 noundef 24, i64 noundef 0, i64 noundef 7, ptr noundef null, ptr noundef nonnull %i.g) #27 ; 22 uses
  %i.eu = load i32, ptr %i.g, align 4, !tbaa !18
  %.not.i160 = icmp eq i32 %i.eu, 0
  br i1 %.not.i160, label %bb.t, label %reconstruct_glyf.exit

bb.t:                                             ; preds = %bb.s
  %i.ev = call i32 @FT_Stream_Skip(ptr noundef %i.ba, i64 noundef 2) #27 ; 2 uses
  store i32 %i.ev, ptr %i.g, align 4, !tbaa !18
  %.not330.i = icmp eq i32 %i.ev, 0
  br i1 %.not330.i, label %bb.u, label %reconstruct_glyf.exit

bb.u:                                             ; preds = %bb.t
  %i.ew = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.g) #27
  %i.ex = load i32, ptr %i.g, align 4, !tbaa !18
  %.not331.i = icmp eq i32 %i.ex, 0
  br i1 %.not331.i, label %bb.v, label %reconstruct_glyf.exit

bb.v:                                             ; preds = %bb.u
  %i.ey = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.g) #27 ; 4 uses
  %i.ez = load i32, ptr %i.g, align 4, !tbaa !18
  %.not332.i = icmp eq i32 %i.ez, 0
  br i1 %.not332.i, label %bb.w, label %reconstruct_glyf.exit

bb.w:                                             ; preds = %bb.v
  %i.fa = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.g) #27 ; 2 uses
  %i.fb = load i32, ptr %i.g, align 4, !tbaa !18
  %.not333.i = icmp eq i32 %i.fb, 0
  br i1 %.not333.i, label %bb.x, label %reconstruct_glyf.exit

bb.x:                                             ; preds = %bb.w
  store i16 %i.ey, ptr %i.bd, align 8, !tbaa !662
  %.not334.i = icmp eq i16 %i.fa, 0
  %i.fc = zext i16 %i.ey to i64                   ; 5 uses
  %i.fd = add nuw nsw i64 %i.fc, 1
  %i.fe = select i1 %.not334.i, i64 1, i64 2
  %i.ff = shl nuw nsw i64 %i.fd, %i.fe
  %i.fg = load ptr, ptr %i.az, align 8, !tbaa !657
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !221
  %.not335.i = icmp eq i64 %i.fi, %i.ff
  br i1 %.not335.i, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x
  %i.fj = load ptr, ptr %i.ay, align 8, !tbaa !656
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !222
  %i.fm = icmp ult i64 %i.fl, 36
  br i1 %i.fm, label %.thread.i, label %.preheader435.preheader.i

.preheader435.preheader.i:                        ; preds = %bb.y
  %i.fn = call i32 @FT_Stream_ReadULong(ptr noundef %i.ba, ptr noundef nonnull %i.g) #27 ; 2 uses
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = load i32, ptr %i.g, align 4, !tbaa !18
  %.not385.i = icmp eq i32 %i.fp, 0
  br i1 %.not385.i, label %bb.z, label %reconstruct_glyf.exit

bb.z:                                             ; preds = %.preheader435.preheader.i
  %i.fq = load ptr, ptr %i.ay, align 8, !tbaa !656
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !222
  %i.ft = add i64 %i.fs, -36
  %i.fu = icmp ult i64 %i.ft, %i.fo
  br i1 %i.fu, label %.thread.i, label %.preheader435.1.i

.preheader435.1.i:                                ; preds = %bb.z
  %i.fv = add i64 %i.es, 36                       ; 2 uses
  store i64 %i.fv, ptr %i.et, align 8, !tbaa !663
  %i.fw = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 4 uses
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !665
  %i.fx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %i.fo, ptr %i.fx, align 8, !tbaa !666
  %i.fy = add i32 %i.fn, 36                       ; 2 uses
  %i.fz = call i32 @FT_Stream_ReadULong(ptr noundef %i.ba, ptr noundef nonnull %i.g) #27 ; 2 uses
  %i.ga = zext i32 %i.fz to i64                   ; 2 uses
  %i.gb = load i32, ptr %i.g, align 4, !tbaa !18
  %.not385.1.i = icmp eq i32 %i.gb, 0
  br i1 %.not385.1.i, label %bb.aa, label %reconstruct_glyf.exit

bb.aa:                                            ; preds = %.preheader435.1.i
  %i.gc = load ptr, ptr %i.ay, align 8, !tbaa !656
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
end_hunk_0
begin_hunk_1_@triplet_decode:bb.a
  %i.ax = add nuw nsw i32 %i.aw, %i.av            ; 2 uses
  %i.ay = and i8 %i.d, 2
  %.not.i100 = icmp eq i8 %i.ay, 0
  %i.az = sub nsw i32 0, %i.ax
  %i.ba = select i1 %.not.i100, i32 %i.az, i32 %i.ax
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.bb = icmp samesign ult i8 %i.f, 120
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.lhs.trunc = add nsw i8 %i.f, -84              ; 2 uses
  %i.bc = udiv i8 %.lhs.trunc, 12
  %.zext = zext nneg i8 %i.bc to i32
  %i.bd = shl nuw nsw i32 %.zext, 8
  %i.be = or disjoint i32 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %.085140 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nuw nsw i32 %i.be, %i.bh            ; 2 uses
  %i.bj = and i8 %i.d, 1
  %.not.i101 = icmp eq i8 %i.bj, 0
  %i.bk = sub nsw i32 0, %i.bi
  %i.bl = select i1 %.not.i101, i32 %i.bk, i32 %i.bi
  %i.bm = urem i8 %.lhs.trunc, 12
  %.zext136 = zext nneg i8 %i.bm to i32
  %i.bn = shl nuw nsw i32 %.zext136, 6
  %i.bo = and i32 %i.bn, 768
  %i.bp = or disjoint i32 %i.bo, 1
  %i.bq = getelementptr i8, ptr %i.bf, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17
  %i.bs = zext i8 %i.br to i32
  %i.bt = add nuw nsw i32 %i.bp, %i.bs            ; 2 uses
  %i.bu = and i8 %i.d, 2
  %.not.i102 = icmp eq i8 %i.bu, 0
  %i.bv = sub nsw i32 0, %i.bt
  %i.bw = select i1 %.not.i102, i32 %i.bv, i32 %i.bt
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bx = icmp samesign ult i8 %i.f, 124
  %i.by = getelementptr i8, ptr %1, i64 %.085140  ; 7 uses
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !17
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !17
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 4
  %i.cf = lshr i32 %i.cb, 4
  %i.cg = or disjoint i32 %i.ce, %i.cf            ; 2 uses
  %i.ch = and i8 %i.d, 1
  %.not.i103 = icmp eq i8 %i.ch, 0
  %i.ci = sub nsw i32 0, %i.cg
  %i.cj = select i1 %.not.i103, i32 %i.ci, i32 %i.cg
  %i.ck = shl nuw nsw i32 %i.cb, 8
  %i.cl = and i32 %i.ck, 3840
  %i.cm = getelementptr i8, ptr %i.by, i64 2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !17
  %i.co = zext i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cl, %i.co            ; 2 uses
  %i.cq = and i8 %i.d, 2
  %.not.i104 = icmp eq i8 %i.cq, 0
  %i.cr = sub nsw i32 0, %i.cp
  %i.cs = select i1 %.not.i104, i32 %i.cr, i32 %i.cp
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ct = load i8, ptr %i.by, align 1, !tbaa !17
  %i.cu = zext i8 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 8
  %i.cw = getelementptr i8, ptr %i.by, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !17
  %i.cy = zext i8 %i.cx to i32
  %i.cz = or disjoint i32 %i.cv, %i.cy            ; 2 uses
  %i.da = and i8 %i.d, 1
  %.not.i105 = icmp eq i8 %i.da, 0
  %i.db = sub nsw i32 0, %i.cz
  %i.dc = select i1 %.not.i105, i32 %i.db, i32 %i.cz
  %i.dd = getelementptr i8, ptr %i.by, i64 2
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !17
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 8
  %i.dh = getelementptr i8, ptr %i.by, i64 3
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !17
  %i.dj = zext i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dg, %i.dj            ; 2 uses
  %i.dl = and i8 %i.d, 2
  %.not.i106 = icmp eq i8 %i.dl, 0
  %i.dm = sub nsw i32 0, %i.dk
  %i.dn = select i1 %.not.i106, i32 %i.dm, i32 %i.dk
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.k, %bb.n, %bb.m, %bb.i
  %.087 = phi i32 [ %i.dc, %bb.n ], [ %i.ah, %bb.g ], [ %i.as, %bb.i ], [ %i.bl, %bb.k ], [ %i.cj, %bb.m ] ; 3 uses
  %.086 = phi i32 [ %i.dn, %bb.n ], [ 0, %bb.g ], [ %i.ba, %bb.i ], [ %i.bw, %bb.k ], [ %i.cs, %bb.m ]
  %i.do = icmp sgt i32 %.0114138, 0
  %i.dp = sub nuw nsw i32 2147483647, %.0114138
  %i.dq = icmp sgt i32 %.087, %i.dp
  %or.cond.i = select i1 %i.do, i1 %i.dq, i1 false
  br i1 %or.cond.i, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = icmp slt i32 %.0114138, 0
  %i.ds = sub nsw i32 -2147483648, %.0114138
  %i.dt = icmp slt i32 %.087, %i.ds
  %or.cond12.i = select i1 %i.dr, i1 %i.dt, i1 false
  br i1 %or.cond12.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %.thread122, %bb.p
  %.087119127 = phi i32 [ 0, %.thread122 ], [ %.087, %bb.p ]
  %.086120126 = phi i32 [ %i.w, %.thread122 ], [ %.086, %bb.p ] ; 3 uses
  %i.du = add nsw i32 %.087119127, %.0114138      ; 2 uses
  %i.dv = icmp sgt i32 %.0139, 0
  %i.dw = sub nuw nsw i32 2147483647, %.0139
  %i.dx = icmp sgt i32 %.086120126, %i.dw
  %or.cond.i107 = select i1 %i.dv, i1 %i.dx, i1 false
  br i1 %or.cond.i107, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dy = icmp slt i32 %.0139, 0
  %i.dz = sub nsw i32 -2147483648, %.0139
  %i.ea = icmp slt i32 %.086120126, %i.dz
  %or.cond12.i108 = select i1 %i.dy, i1 %i.ea, i1 false
  br i1 %or.cond12.i108, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = add nsw i32 %.086120126, %.0139         ; 2 uses
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %i.b ; 3 uses
  store i32 %i.du, ptr %i.ec, align 4, !tbaa !685
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.eb, ptr %i.ed, align 4, !tbaa !687
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i8 %i.e, ptr %i.ee, align 4, !tbaa !688
  %i.ef = add i32 %.083141, 1                     ; 2 uses
  %i.eg = zext i32 %i.ef to i64                   ; 2 uses
  %i.eh = icmp ugt i64 %3, %i.eg
  br i1 %i.eh, label %.lr.ph, label %._crit_edge, !llvm.loop !689

._crit_edge:                                      ; preds = %bb.s, %.preheader
  %.085.lcssa = phi i64 [ 0, %.preheader ], [ %i.k, %bb.s ]
  store i64 %.085.lcssa, ptr %5, align 8, !tbaa !162
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.r, %bb.o, %bb.p, %bb.d, %bb.a, %._crit_edge
  %.2 = phi i32 [ 0, %._crit_edge ], [ 8, %bb.a ], [ 8, %bb.d ], [ 8, %bb.p ], [ 8, %bb.o ], [ 8, %bb.r ], [ 8, %bb.q ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @compute_bbox(i64 noundef range(i64 0, 134217728) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #15 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !685    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !687  ; 6 uses
  %.not73 = icmp eq i64 %0, 1
  br i1 %.not73, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.d = add nsw i64 %0, -1                       ; 3 uses
  %xtraiter = and i64 %i.d, 1
  %i.e = icmp eq i64 %0, 2
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.159 = phi i32 [ %i.a, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ]
  %.14858 = phi i32 [ %i.c, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ]
  %.15156 = phi i32 [ %i.c, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ]
  %.15355 = phi i32 [ %i.a, %.lr.ph.preheader.new ], [ %i.u, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.f = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !685  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !687  ; 2 uses
  %i.j = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %.159)
  %i.k = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %.14858)
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %.15355)
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %.15156)
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !685  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load i32, ptr %i.q, align 4, !tbaa !687  ; 2 uses
  %i.s = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %i.j) ; 3 uses
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.k) ; 3 uses
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.l) ; 3 uses
  %i.v = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %i.m) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !690

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.159.epil.init = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ]
  %.14858.epil.init = phi i32 [ %i.c, %.lr.ph.preheader ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ]
  %.15156.epil.init = phi i32 [ %i.c, %.lr.ph.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %.15355.epil.init = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod84 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod84)
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv.epil.init ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !685  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !687  ; 2 uses
  %i.aa = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.159.epil.init)
  %i.ab = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %.14858.epil.init)
  %i.ac = tail call i32 @llvm.smax.i32(i32 %i.x, i32 %.15355.epil.init)
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.z, i32 %.15156.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a, %bb.b
  %.153.lcssa = phi i32 [ %i.a, %bb.b ], [ 0, %bb.a ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.epil.preheader ] ; 2 uses
  %.151.lcssa = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %.lr.ph.epil.preheader ] ; 2 uses
  %.148.lcssa = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.epil.preheader ] ; 2 uses
  %.1.lcssa = phi i32 [ %i.a, %bb.b ], [ 0, %bb.a ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %.lr.ph.epil.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.af = lshr i32 %.1.lcssa, 8
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !17
  %i.ai = trunc i32 %.1.lcssa to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !17
  %i.ak = lshr i32 %.148.lcssa, 8
  %i.al = trunc i32 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !17
  %i.an = trunc i32 %.148.lcssa to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %i.an, ptr %i.am, align 1, !tbaa !17
  %i.ap = lshr i32 %.153.lcssa, 8
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.aq, ptr %i.ao, align 1, !tbaa !17
  %i.as = trunc i32 %.153.lcssa to i8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !17
  %i.au = lshr i32 %.151.lcssa, 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.av, ptr %i.at, align 1, !tbaa !17
  %i.ax = trunc i32 %.151.lcssa to i8
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !17
  %i.ay = trunc i32 %.1.lcssa to i16
  store i16 %i.ay, ptr %3, align 2, !tbaa !237
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 9) i32 @store_points(i64 noundef range(i64 0, 134217728) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext range(i8 0, 2) %4, ptr nofree noundef captures(none) %5, i64 noundef range(i64 5120, 0) %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #15 {
bb.a:
  %i.a = zext i16 %2 to i32
  %i.b = shl nuw nsw i32 %i.a, 1
  %i.c = add nuw nsw i32 %i.b, 12
  %i.d = zext i16 %3 to i32
  %i.e = add nuw nsw i32 %i.c, %i.d               ; 6 uses
  %.not197 = icmp eq i64 %0, 0
  br i1 %.not197, label %.thread220, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not236 = icmp eq i8 %4, 0
  %i.f = trunc nuw nsw i64 %0 to i32
  %.sroa.0.0.copyload.peel = load i32, ptr %1, align 4, !tbaa !18 ; 4 uses
  %.sroa.5.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.5.0.copyload.peel = load i32, ptr %.sroa.5.0..sroa_idx.peel, align 4, !tbaa !18 ; 4 uses
  %.sroa.7.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload.peel = load i8, ptr %.sroa.7.0..sroa_idx.peel, align 4, !tbaa !17
  %.not167.peel = icmp ne i8 %.sroa.7.0.copyload.peel, 0
  %i.g = zext i1 %.not167.peel to i8              ; 2 uses
  %i.h = or disjoint i8 %i.g, 64
  %.0126.peel = select i1 %.not236, i8 %i.g, i8 %i.h ; 3 uses
  %i.i = icmp eq i32 %.sroa.0.0.copyload.peel, 0
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = add i32 %.sroa.0.0.copyload.peel, 255
  %or.cond4.peel = icmp ult i32 %i.j, 511
  br i1 %or.cond4.peel, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = icmp sgt i32 %.sroa.0.0.copyload.peel, 0
  %i.l = select i1 %i.k, i8 18, i8 2
  %i.m = or disjoint i8 %.0126.peel, %i.l
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.n = or disjoint i8 %.0126.peel, 16
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.1136.peel = phi i32 [ 0, %bb.d ], [ 1, %bb.c ], [ 2, %bb.b ] ; 2 uses
  %.1.peel = phi i8 [ %i.n, %bb.d ], [ %i.m, %bb.c ], [ %.0126.peel, %bb.b ] ; 3 uses
  %i.o = icmp eq i32 %.sroa.5.0.copyload.peel, 0
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add i32 %.sroa.5.0.copyload.peel, 255
  %or.cond6.peel = icmp ult i32 %i.p, 511
  br i1 %or.cond6.peel, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = icmp sgt i32 %.sroa.5.0.copyload.peel, 0
  %i.r = select i1 %i.q, i8 36, i8 4
  %i.s = or i8 %.1.peel, %i.r
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.t = or i8 %.1.peel, 32
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.1134.peel = phi i32 [ 0, %bb.h ], [ 1, %bb.g ], [ 2, %bb.f ] ; 2 uses
  %.2.peel = phi i8 [ %i.t, %bb.h ], [ %i.s, %bb.g ], [ %.1.peel, %bb.f ] ; 3 uses
  %8 = icmp eq i8 %.2.peel, -1
  br i1 %8, label %bb.j, label %9

9:                                                ; preds = %bb.i
  %10 = zext nneg i32 %i.e to i64                 ; 2 uses
  %.not170.peel = icmp ugt i64 %6, %10
  br i1 %.not170.peel, label %11, label %.critedge

11:                                               ; preds = %9
  %12 = add nuw nsw i32 %i.e, 1
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 %10
  store i8 %.2.peel, ptr %13, align 1, !tbaa !17
  br label %17

bb.j:                                             ; preds = %bb.i
  %i.u = add nsw i32 %i.e, -1
  %14 = zext i32 %i.u to i64
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 %14 ; 2 uses
  %15 = load i8, ptr %i.v, align 1, !tbaa !17
  %16 = or i8 %15, 8
  store i8 %16, ptr %i.v, align 1, !tbaa !17
  br label %17

17:                                               ; preds = %bb.j, %11
  %.3.peel = phi i32 [ %i.e, %bb.j ], [ %12, %11 ] ; 2 uses
  %.2145.peel = phi i8 [ 1, %bb.j ], [ 0, %11 ]   ; 2 uses
  %.not237 = icmp eq i64 %0, 1
  br i1 %.not237, label %._crit_edge, label %.lr.ph.peel.newph

.lr.ph.peel.newph:                                ; preds = %17, %bb.aa
  %i.w = phi i64 [ %i.bg, %bb.aa ], [ 1, %17 ]
  %.0131184 = phi i32 [ %i.bf, %bb.aa ], [ 1, %17 ]
  %.0133183 = phi i32 [ %.1134, %bb.aa ], [ %.1134.peel, %17 ] ; 3 uses
  %.0135182 = phi i32 [ %.1136, %bb.aa ], [ %.1136.peel, %17 ] ; 3 uses
  %.0137181 = phi i32 [ %.sroa.5.0.copyload, %bb.aa ], [ %.sroa.5.0.copyload.peel, %17 ] ; 2 uses
  %.0140180 = phi i32 [ %.sroa.0.0.copyload, %bb.aa ], [ %.sroa.0.0.copyload.peel, %17 ] ; 2 uses
  %.0143179 = phi i8 [ %.2145, %bb.aa ], [ %.2145.peel, %17 ] ; 4 uses
  %.0146178 = phi i8 [ %.2, %bb.aa ], [ %.2.peel, %17 ]
  %.0148177 = phi i32 [ %.3, %bb.aa ], [ %.3.peel, %17 ] ; 5 uses
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.w ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.x, align 4, !tbaa !18 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !18 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !17
  %.not167 = icmp ne i8 %.sroa.7.0.copyload, 0
  %i.y = zext i1 %.not167 to i8                   ; 3 uses
  %i.z = sub nsw i32 %.sroa.0.0.copyload, %.0140180 ; 2 uses
  %i.aa = sub nsw i32 %.sroa.5.0.copyload, %.0137181 ; 2 uses
  %i.ab = icmp eq i32 %.sroa.0.0.copyload, %.0140180
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.peel.newph
  %i.ac = or disjoint i8 %i.y, 16
  br label %bb.o

bb.l:                                             ; preds = %.lr.ph.peel.newph
  %i.ad = add i32 %i.z, 255
  %or.cond4 = icmp ult i32 %i.ad, 511
  br i1 %or.cond4, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = icmp sgt i32 %i.z, 0
  %i.af = select i1 %i.ae, i8 18, i8 2
  %i.ag = or disjoint i8 %i.af, %i.y
  %i.ah = add i32 %.0135182, 1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ai = add i32 %.0135182, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %.1136 = phi i32 [ %.0135182, %bb.k ], [ %i.ah, %bb.m ], [ %i.ai, %bb.n ] ; 2 uses
  %.1 = phi i8 [ %i.ac, %bb.k ], [ %i.ag, %bb.m ], [ %i.y, %bb.n ] ; 3 uses
  %i.aj = icmp eq i32 %.sroa.5.0.copyload, %.0137181
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = or i8 %.1, 32
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.al = add i32 %i.aa, 255
  %or.cond6 = icmp ult i32 %i.al, 511
  br i1 %or.cond6, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.am = icmp sgt i32 %i.aa, 0
  %i.an = select i1 %i.am, i8 36, i8 4
  %i.ao = or i8 %.1, %i.an
  %i.ap = add i32 %.0133183, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.aq = add i32 %.0133183, 2
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.p
  %.1134 = phi i32 [ %.0133183, %bb.p ], [ %i.ap, %bb.r ], [ %i.aq, %bb.s ] ; 2 uses
  %.2 = phi i8 [ %i.ak, %bb.p ], [ %i.ao, %bb.r ], [ %.1, %bb.s ] ; 3 uses
  %i.ar = icmp eq i8 %.2, %.0146178
  %i.as = icmp ne i8 %.0143179, -1
  %or.cond9 = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond9, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.at = add i32 %.0148177, -1
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 %i.au ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !17
  %i.ax = or i8 %i.aw, 8
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !17
  %i.ay = add nuw i8 %.0143179, 1
  br label %bb.aa

bb.v:                                             ; preds = %bb.t
  %.not168 = icmp eq i8 %.0143179, 0
  br i1 %.not168, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = zext i32 %.0148177 to i64               ; 2 uses
  %.not169 = icmp ugt i64 %6, %i.az
  br i1 %.not169, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.ba = add i32 %.0148177, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 %i.az
  store i8 %.0143179, ptr %i.bb, align 1, !tbaa !17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.1149 = phi i32 [ %i.ba, %bb.x ], [ %.0148177, %bb.v ] ; 2 uses
  %i.bc = zext i32 %.1149 to i64                  ; 2 uses
  %.not170 = icmp ugt i64 %6, %i.bc
  br i1 %.not170, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.bd = add i32 %.1149, 1
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 %i.bc
  store i8 %.2, ptr %i.be, align 1, !tbaa !17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.u
  %.3 = phi i32 [ %.0148177, %bb.u ], [ %i.bd, %bb.z ] ; 2 uses
  %.2145 = phi i8 [ %i.ay, %bb.u ], [ 0, %bb.z ]  ; 2 uses
  %i.bf = add nuw nsw i32 %.0131184, 1            ; 3 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = icmp samesign ult i32 %i.bf, %i.f
  br i1 %i.bh, label %.lr.ph.peel.newph, label %._crit_edge, !llvm.loop !691

._crit_edge:                                      ; preds = %bb.aa, %17
  %.3.lcssa = phi i32 [ %.3.peel, %17 ], [ %.3, %bb.aa ] ; 3 uses
  %.2145.lcssa = phi i8 [ %.2145.peel, %17 ], [ %.2145, %bb.aa ] ; 2 uses
  %.1134.lcssa234 = phi i32 [ %.1134.peel, %17 ], [ %.1134, %bb.aa ]
  %.1136.lcssa233 = phi i32 [ %.1136.peel, %17 ], [ %.1136, %bb.aa ] ; 3 uses
  %.not = icmp eq i8 %.2145.lcssa, 0
  br i1 %.not, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.bi = zext i32 %.3.lcssa to i64               ; 2 uses
  %.not166 = icmp ugt i64 %6, %i.bi
  br i1 %.not166, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.bj = add i32 %.3.lcssa, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 %i.bi
  store i8 %.2145.lcssa, ptr %i.bk, align 1, !tbaa !17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge
  %.4 = phi i32 [ %i.bj, %bb.ac ], [ %.3.lcssa, %._crit_edge ] ; 4 uses
  %i.bl = add i32 %.1134.lcssa234, %.1136.lcssa233 ; 2 uses
  %i.bm = icmp ult i32 %i.bl, %.1136.lcssa233
  br i1 %i.bm, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bn = add i32 %.4, %i.bl                      ; 2 uses
  %i.bo = icmp ult i32 %i.bn, %.4
  %i.bp = zext i32 %i.bn to i64
  %i.bq = icmp ult i64 %6, %i.bp
  %or.cond172 = or i1 %i.bo, %i.bq
  br i1 %or.cond172, label %.critedge, label %bb.af

.thread220:                                       ; preds = %bb.a
  %i.br = zext nneg i32 %i.e to i64
  %i.bs = icmp ult i64 %6, %i.br
  br i1 %i.bs, label %.critedge, label %._crit_edge195

bb.af:                                            ; preds = %bb.ae
  %i.bt = add i32 %.4, %.1136.lcssa233
  br label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.af, %bb.an
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.an ], [ 0, %bb.af ] ; 2 uses
  %.0127192 = phi i32 [ %.1128, %bb.an ], [ %i.bt, %bb.af ] ; 5 uses
  %.0129191 = phi i32 [ %.1130, %bb.an ], [ %.4, %bb.af ] ; 5 uses
  %.2139189 = phi i32 [ %i.by, %bb.an ], [ 0, %bb.af ] ; 2 uses
  %.2142188 = phi i32 [ %i.bv, %bb.an ], [ 0, %bb.af ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !685 ; 3 uses
  %i.bw = sub nsw i32 %i.bv, %.2142188            ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !687 ; 3 uses
  %i.bz = sub nsw i32 %i.by, %.2139189            ; 4 uses
  %i.ca = icmp eq i32 %i.bv, %.2142188
  br i1 %i.ca, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph194
  %i.cb = add i32 %i.bw, 255
  %or.cond11 = icmp ult i32 %i.cb, 511
  br i1 %or.cond11, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cc = tail call i32 @llvm.abs.i32(i32 %i.bw, i1 true)
  %i.cd = trunc nuw i32 %i.cc to i8
  %i.ce = add i32 %.0129191, 1
  %i.cf = zext i32 %.0129191 to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 %i.cf
  store i8 %i.cd, ptr %i.cg, align 1, !tbaa !17
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ch = zext i32 %.0129191 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 %i.ch ; 2 uses
  %i.cj = lshr i32 %i.bw, 8
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !17
  %i.cm = trunc i32 %i.bw to i8
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !17
  %i.cn = add i32 %.0129191, 2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %.lr.ph194
  %.1130 = phi i32 [ %.0129191, %.lr.ph194 ], [ %i.ce, %bb.ah ], [ %i.cn, %bb.ai ]
  %i.co = icmp eq i32 %i.by, %.2139189
  br i1 %i.co, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cp = add i32 %i.bz, 255
  %or.cond13 = icmp ult i32 %i.cp, 511
  br i1 %or.cond13, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cq = tail call i32 @llvm.abs.i32(i32 %i.bz, i1 true)
  %i.cr = trunc nuw i32 %i.cq to i8
  %i.cs = add i32 %.0127192, 1
  %i.ct = zext i32 %.0127192 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 %i.ct
  store i8 %i.cr, ptr %i.cu, align 1, !tbaa !17
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.cv = zext i32 %.0127192 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 %i.cv ; 2 uses
  %i.cx = lshr i32 %i.bz, 8
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !17
  %i.da = trunc i32 %i.bz to i8
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !17
  %i.db = add i32 %.0127192, 2
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.aj
  %.1128 = phi i32 [ %.0127192, %bb.aj ], [ %i.cs, %bb.al ], [ %i.db, %bb.am ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %0
  br i1 %exitcond.not, label %._crit_edge195, label %.lr.ph194, !llvm.loop !692

._crit_edge195:                                   ; preds = %bb.an, %.thread220
  %.0127.lcssa = phi i32 [ %i.e, %.thread220 ], [ %.1128, %bb.an ]
  %i.dc = zext i32 %.0127.lcssa to i64
  store i64 %i.dc, ptr %7, align 8, !tbaa !162
  br label %.critedge

.critedge:                                        ; preds = %9, %bb.y, %bb.w, %.thread220, %bb.ad, %bb.ae, %bb.ab, %._crit_edge195
  %.2153 = phi i32 [ 8, %bb.ad ], [ 0, %._crit_edge195 ], [ 8, %bb.ab ], [ 8, %bb.ae ], [ 8, %.thread220 ], [ 8, %bb.w ], [ 8, %bb.y ], [ 8, %9 ]
  ret i32 %.2153
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @store_loca(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 1, 65537) %1, i16 noundef zeroext %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 0, ptr %i.b, align 4, !tbaa !18
  %i.c = load ptr, ptr %4, align 8, !tbaa !208    ; 2 uses
  %i.d = load i64, ptr %6, align 8, !tbaa !162    ; 2 uses
  %.not = icmp eq i16 %2, 0                       ; 2 uses
  %i.e = select i1 %.not, i64 1, i64 2
  %i.f = shl nuw nsw i64 %1, %i.e                 ; 8 uses
  %i.g = call ptr @ft_mem_qalloc(ptr noundef %7, i64 noundef %i.f, ptr noundef nonnull %i.b) #27 ; 9 uses
  %i.h = load i32, ptr %i.b, align 4, !tbaa !18
  %.not46 = icmp eq i32 %i.h, 0
  br i1 %.not46, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.a
  br i1 %.not, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %xtraiter = and i64 %1, 1
  %i.i = icmp eq i64 %1, 1
  br i1 %i.i, label %.preheader.split.epil.preheader, label %.preheader.split.preheader.new

.preheader.split.preheader.new:                   ; preds = %.preheader.split.preheader
  %unroll_iter = and i64 %1, 131070
  br label %.preheader.split

.preheader.split.us.preheader:                    ; preds = %.preheader
  %xtraiter89 = and i64 %1, 3                     ; 3 uses
  %i.j = icmp samesign ult i64 %1, 4
  br i1 %i.j, label %.preheader.split.us.epil.preheader, label %.preheader.split.us.preheader.new

.preheader.split.us.preheader.new:                ; preds = %.preheader.split.us.preheader
  %unroll_iter92 = and i64 %1, 131068
  br label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader.split.us, %.preheader.split.us.preheader.new
  %indvars.iv72 = phi i64 [ 0, %.preheader.split.us.preheader.new ], [ %indvars.iv.next73.3, %.preheader.split.us ] ; 5 uses
  %.04166.us = phi ptr [ %i.g, %.preheader.split.us.preheader.new ], [ %i.as, %.preheader.split.us ] ; 9 uses
  %niter93 = phi i64 [ 0, %.preheader.split.us.preheader.new ], [ %niter93.next.3, %.preheader.split.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !162  ; 2 uses
  %i.m = lshr i64 %i.l, 1
  %i.n = lshr i64 %i.l, 9
  %i.o = trunc i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.04166.us, i64 1
  store i8 %i.o, ptr %.04166.us, align 1, !tbaa !17
  %i.q = trunc i64 %i.m to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.04166.us, i64 2
  store i8 %i.q, ptr %i.p, align 1, !tbaa !17
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv72
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !162  ; 2 uses
  %i.v = lshr i64 %i.u, 1
  %i.w = lshr i64 %i.u, 9
  %i.x = trunc i64 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %.04166.us, i64 3
  store i8 %i.x, ptr %i.r, align 1, !tbaa !17
  %i.z = trunc i64 %i.v to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %.04166.us, i64 4
  store i8 %i.z, ptr %i.y, align 1, !tbaa !17
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv72
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !162 ; 2 uses
  %i.ae = lshr i64 %i.ad, 1
  %i.af = lshr i64 %i.ad, 9
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.04166.us, i64 5
  store i8 %i.ag, ptr %i.aa, align 1, !tbaa !17
  %i.ai = trunc i64 %i.ae to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.04166.us, i64 6
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !17
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv72
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !162 ; 2 uses
  %i.an = lshr i64 %i.am, 1
  %i.ao = lshr i64 %i.am, 9
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.04166.us, i64 7
  store i8 %i.ap, ptr %i.aj, align 1, !tbaa !17
  %i.ar = trunc i64 %i.an to i8
  %i.as = getelementptr inbounds nuw i8, ptr %.04166.us, i64 8 ; 2 uses
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !17
  %indvars.iv.next73.3 = add nuw nsw i64 %indvars.iv72, 4 ; 2 uses
  %niter93.next.3 = add nuw nsw i64 %niter93, 4   ; 2 uses
  %niter93.ncmp.3 = icmp eq i64 %niter93.next.3, %unroll_iter92
  br i1 %niter93.ncmp.3, label %.split.us.loopexit.unr-lcssa, label %.preheader.split.us, !llvm.loop !693

.preheader.split:                                 ; preds = %.preheader.split, %.preheader.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader.split.preheader.new ], [ %indvars.iv.next.1, %.preheader.split ] ; 3 uses
  %.04166 = phi ptr [ %i.g, %.preheader.split.preheader.new ], [ %i.bt, %.preheader.split ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.split.preheader.new ], [ %niter.next.1, %.preheader.split ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.au = load i64, ptr %i.at, align 8, !tbaa !162 ; 4 uses
  %i.av = lshr i64 %i.au, 24
  %i.aw = trunc i64 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %.04166, i64 1
  store i8 %i.aw, ptr %.04166, align 1, !tbaa !17
  %i.ay = lshr i64 %i.au, 16
  %i.az = trunc i64 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %.04166, i64 2
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !17
  %i.bb = lshr i64 %i.au, 8
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.04166, i64 3
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !17
  %i.be = trunc i64 %i.au to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %.04166, i64 4
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !17
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !162 ; 4 uses
  %i.bj = lshr i64 %i.bi, 24
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.04166, i64 5
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !17
  %i.bm = lshr i64 %i.bi, 16
  %i.bn = trunc i64 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.04166, i64 6
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !17
  %i.bp = lshr i64 %i.bi, 8
  %i.bq = trunc i64 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %.04166, i64 7
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !17
  %i.bs = trunc i64 %i.bi to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %.04166, i64 8 ; 2 uses
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split.us.loopexit87.unr-lcssa, label %.preheader.split, !llvm.loop !693

.split.us.loopexit.unr-lcssa:                     ; preds = %.preheader.split.us
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.split.us, label %.preheader.split.us.epil.preheader

.preheader.split.us.epil.preheader:               ; preds = %.split.us.loopexit.unr-lcssa, %.preheader.split.us.preheader
  %indvars.iv72.epil.init = phi i64 [ 0, %.preheader.split.us.preheader ], [ %indvars.iv.next73.3, %.split.us.loopexit.unr-lcssa ]
  %.04166.us.epil.init = phi ptr [ %i.g, %.preheader.split.us.preheader ], [ %i.as, %.split.us.loopexit.unr-lcssa ]
  %lcmp.mod91 = icmp ne i64 %xtraiter89, 0
  call void @llvm.assume(i1 %lcmp.mod91)
  br label %.preheader.split.us.epil

.preheader.split.us.epil:                         ; preds = %.preheader.split.us.epil, %.preheader.split.us.epil.preheader
  %indvars.iv72.epil = phi i64 [ %indvars.iv.next73.epil, %.preheader.split.us.epil ], [ %indvars.iv72.epil.init, %.preheader.split.us.epil.preheader ] ; 2 uses
  %.04166.us.epil = phi ptr [ %i.cb, %.preheader.split.us.epil ], [ %.04166.us.epil.init, %.preheader.split.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.split.us.epil ], [ 0, %.preheader.split.us.epil.preheader ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv72.epil
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !162 ; 2 uses
  %i.bw = lshr i64 %i.bv, 1
  %i.bx = lshr i64 %i.bv, 9
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.04166.us.epil, i64 1
  store i8 %i.by, ptr %.04166.us.epil, align 1, !tbaa !17
  %i.ca = trunc i64 %i.bw to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %.04166.us.epil, i64 2
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !17
  %indvars.iv.next73.epil = add nuw nsw i64 %indvars.iv72.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter89
  br i1 %epil.iter.cmp.not, label %.split.us, label %.preheader.split.us.epil, !llvm.loop !694

.split.us.loopexit87.unr-lcssa:                   ; preds = %.preheader.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.us, label %.preheader.split.epil.preheader

.preheader.split.epil.preheader:                  ; preds = %.split.us.loopexit87.unr-lcssa, %.preheader.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.split.preheader ], [ %indvars.iv.next.1, %.split.us.loopexit87.unr-lcssa ]
  %.04166.epil.init = phi ptr [ %i.g, %.preheader.split.preheader ], [ %i.bt, %.split.us.loopexit87.unr-lcssa ] ; 4 uses
  %lcmp.mod88 = trunc i64 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod88)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !162 ; 4 uses
  %i.ce = lshr i64 %i.cd, 24
  %i.cf = trunc i64 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.04166.epil.init, i64 1
  store i8 %i.cf, ptr %.04166.epil.init, align 1, !tbaa !17
  %i.ch = lshr i64 %i.cd, 16
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.04166.epil.init, i64 2
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !17
  %i.ck = lshr i64 %i.cd, 8
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.04166.epil.init, i64 3
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !17
  %i.cn = trunc i64 %i.cd to i8
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !17
  br label %.split.us

.split.us:                                        ; preds = %.preheader.split.epil.preheader, %.split.us.loopexit87.unr-lcssa, %.split.us.loopexit.unr-lcssa, %.preheader.split.us.epil
  %i.co = and i64 %i.f, 1048572                   ; 3 uses
  %.not.i = icmp eq i64 %i.co, 0
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.split.us
end_hunk_1
