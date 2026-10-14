Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_write?download=true
inline.NumInlined: 97
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 28
begin_hunk_0_@stbiw__crc32:bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.078 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = lshr i32 %.078, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !17
  %i.f = zext i8 %i.e to i32
  %i.g = and i32 %.078, 255
  %i.h = xor i32 %i.g, %i.f
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @__const.stbiw__crc32.crc_table, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12
  %i.l = xor i32 %i.k, %i.c                       ; 2 uses
  %i.m = lshr i32 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !17
  %i.q = zext i8 %i.p to i32
  %i.r = and i32 %i.l, 255
  %i.s = xor i32 %i.r, %i.q
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @__const.stbiw__crc32.crc_table, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12
  %i.w = xor i32 %i.v, %i.m                       ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.x = lshr i32 %.078.epil.init, 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.z = load i8, ptr %i.y, align 1, !tbaa !17
  %i.aa = zext i8 %i.z to i32
  %i.ab = and i32 %.078.epil.init, 255
  %i.ac = xor i32 %i.ab, %i.aa
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @__const.stbiw__crc32.crc_table, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = xor i32 %i.af, %i.x
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi i32 [ %i.w, %._crit_edge.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.epil.preheader ]
  %i.ah = xor i32 %.lcssa, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %i.ah, %._crit_edge.loopexit ]
  ret i32 %.07.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbiw__wpcrc(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.b = sext i32 %1 to i64
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 3 uses
  %i.f = icmp sgt i32 %1, -4
  br i1 %i.f, label %.lr.ph.preheader.i, label %stbiw__crc32.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = add nsw i32 %1, 4                        ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.g to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.078.i = phi i32 [ -1, %.lr.ph.preheader.i.new ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.i = lshr i32 %.078.i, 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17
  %i.l = zext i8 %i.k to i32
  %i.m = and i32 %.078.i, 255
  %i.n = xor i32 %i.m, %i.l
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @__const.stbiw__crc32.crc_table, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %i.r = xor i32 %i.q, %i.i                       ; 2 uses
  %i.s = lshr i32 %i.r, 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !17
  %i.w = zext i8 %i.v to i32
  %i.x = and i32 %i.r, 255
  %i.y = xor i32 %i.x, %i.w
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @__const.stbiw__crc32.crc_table, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.ac = xor i32 %i.ab, %i.s                     ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !2

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %.078.i.epil.init = phi i32 [ -1, %.lr.ph.preheader.i ], [ %i.ac, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.ad = lshr i32 %.078.i.epil.init, 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i.epil.init
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17
  %i.ag = zext i8 %i.af to i32
  %i.ah = and i32 %.078.i.epil.init, 255
  %i.ai = xor i32 %i.ah, %i.ag
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @__const.stbiw__crc32.crc_table, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12
  %i.am = xor i32 %i.al, %i.ad
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i32 [ %i.ac, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.am, %.lr.ph.i.epil.preheader ]
  %i.an = xor i32 %.lcssa, -1
  br label %stbiw__crc32.exit

stbiw__crc32.exit:                                ; preds = %bb.a, %._crit_edge.loopexit.i
  %.07.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.an, %._crit_edge.loopexit.i ] ; 4 uses
  %i.ao = lshr i32 %.07.lcssa.i, 24
  %i.ap = trunc nuw i32 %i.ao to i8
  store i8 %i.ap, ptr %i.a, align 1, !tbaa !17
  %i.aq = lshr i32 %.07.lcssa.i, 16
  %i.ar = trunc i32 %i.aq to i8
  %i.as = load ptr, ptr %0, align 8, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !17
  %i.au = lshr i32 %.07.lcssa.i, 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = load ptr, ptr %0, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !17
  %i.ay = trunc i32 %.07.lcssa.i to i8
  %i.az = load ptr, ptr %0, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !17
  %i.bb = load ptr, ptr %0, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store ptr %i.bc, ptr %0, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i8 @stbiw__paeth(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #19 {
bb.a:
  %i.a = add nsw i32 %1, %0
  %i.b = sub i32 %i.a, %2                         ; 3 uses
  %i.c = sub nsw i32 %i.b, %0
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true) ; 2 uses
  %i.e = sub nsw i32 %i.b, %1
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true) ; 2 uses
  %i.g = sub nsw i32 %i.b, %2
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.g, i1 true) ; 2 uses
  %.not = icmp samesign ugt i32 %i.d, %i.f
  %.not20 = icmp samesign ugt i32 %i.d, %i.h
  %or.cond = select i1 %.not, i1 true, i1 %.not20
  %.not21 = icmp samesign ugt i32 %i.f, %i.h
  %. = select i1 %.not21, i32 %2, i32 %1
  %.0.in = select i1 %or.cond, i32 %., i32 %0
  %.0 = trunc i32 %.0.in to i8
  ret i8 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbiw__encode_png_line(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #21 {
bb.a:
  %.not = icmp eq i32 %4, 0
  %i.a = select i1 %.not, ptr @__const.stbiw__encode_png_line.firstmap, ptr @__const.stbiw__encode_png_line.mapping
  %i.b = sext i32 %6 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12   ; 3 uses
  %i.e = load i32, ptr @stbi__flip_vertically_on_write, align 4, !tbaa !12
  %.not136 = icmp eq i32 %i.e, 0                  ; 2 uses
  %i.f = xor i32 %4, -1
  %i.g = add i32 %3, %i.f
  %i.h = select i1 %.not136, i32 %4, i32 %i.g
  %i.i = mul i32 %i.h, %1
  %i.j = sext i32 %i.i to i64                     ; 8 uses
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j ; 77 uses
  %i.l = sub nsw i32 0, %1
  %i.m = select i1 %.not136, i32 %1, i32 %i.l     ; 4 uses
  %i.n = icmp eq i32 %i.d, 0
  br i1 %i.n, label %bb.b, label %.preheader160

.preheader160:                                    ; preds = %bb.a
  %i.o = icmp sgt i32 %5, 0
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader160
  %i.p = sext i32 %i.m to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.q = mul nsw i32 %5, %2
  %i.r = sext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %i.k, i64 %i.r, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 11 uses
  switch i32 %i.d, label %bb.i [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.t = load i8, ptr %i.s, align 1, !tbaa !17
  br label %.sink.split

bb.d:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1, !tbaa !17
  %i.w = sub nsw i64 %indvars.iv, %i.p
  %i.x = getelementptr inbounds i8, ptr %i.k, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  %i.z = sub i8 %i.v, %i.y
  br label %.sink.split

bb.e:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ac = sub nsw i64 %indvars.iv, %i.p
  %i.ad = getelementptr inbounds i8, ptr %i.k, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !17
  %i.af = lshr i8 %i.ae, 1
  %i.ag = sub i8 %i.ab, %i.af
  br label %.sink.split

bb.f:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.aj = sub nsw i64 %indvars.iv, %i.p
  %i.ak = getelementptr inbounds i8, ptr %i.k, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  %i.am = sub i8 %i.ai, %i.al
  br label %.sink.split

bb.g:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  br label %.sink.split

bb.h:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i8 [ %i.t, %bb.c ], [ %i.z, %bb.d ], [ %i.ag, %bb.e ], [ %i.am, %bb.f ], [ %i.ao, %bb.g ], [ %i.aq, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  store i8 %.sink, ptr %i.ar, align 1, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !71

._crit_edge:                                      ; preds = %bb.i, %.preheader160
  switch i32 %i.d, label %.loopexit [
    i32 1, label %.preheader
    i32 2, label %.preheader150
    i32 3, label %.preheader152
    i32 4, label %.preheader154
    i32 5, label %.preheader156
    i32 6, label %.preheader158
  ]

.preheader158:                                    ; preds = %._crit_edge
  %i.as = mul nsw i32 %5, %2                      ; 2 uses
  %i.at = icmp slt i32 %5, %i.as
  br i1 %i.at, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader158
  %i.au = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count183 = sext i32 %i.as to i64     ; 4 uses
  %i.av = sub nsw i64 %wide.trip.count183, %i.au  ; 7 uses
  %min.iters.check = icmp ult i64 %i.av, 8
  br i1 %min.iters.check, label %.lr.ph163.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %8 = ptrtoaddr ptr %7 to i64                    ; 2 uses
  %9 = ptrtoaddr ptr %0 to i64
  %i.aw = add i64 %9, %i.j                        ; 2 uses
  %i.ax = add i64 %8, %i.au
  %i.ay = sub i64 %i.aw, %i.ax
  %diff.check = icmp ugt i64 %i.ay, -32
  %i.az = sub i64 %i.aw, %8
  %diff.check228 = icmp ugt i64 %i.az, -32
  %conflict.rdx = or i1 %diff.check, %diff.check228
  br i1 %conflict.rdx, label %.lr.ph163.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check229 = icmp ult i64 %i.av, 32
  br i1 %min.iters.check229, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.av, 24
  %n.vec = and i64 %i.av, -32                     ; 4 uses
  %i.bb = add nsw i64 %n.vec, %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = add i64 %index, %i.au                   ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.k, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <16 x i8>, ptr %i.bd, align 1, !tbaa !17
  %wide.load230 = load <16 x i8>, ptr %i.be, align 1, !tbaa !17
  %i.bf = getelementptr inbounds i8, ptr %i.k, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load231 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !17
  %wide.load232 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !17
  %i.bh = sub <16 x i8> %wide.load, %wide.load231
  %i.bi = sub <16 x i8> %wide.load230, %wide.load232
  %i.bj = getelementptr inbounds i8, ptr %7, i64 %i.bc ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <16 x i8> %i.bh, ptr %i.bj, align 1, !tbaa !17
  store <16 x i8> %i.bi, ptr %i.bk, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph163.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec233 = and i64 %i.av, -8                   ; 3 uses
  %i.bm = add nsw i64 %n.vec233, %i.au
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index234 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next237, %vec.epilog.vector.body ] ; 3 uses
  %i.bn = add i64 %index234, %i.au                ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.k, i64 %i.bn
  %wide.load235 = load <8 x i8>, ptr %i.bo, align 1, !tbaa !17
  %i.bp = getelementptr inbounds i8, ptr %i.k, i64 %index234
  %wide.load236 = load <8 x i8>, ptr %i.bp, align 1, !tbaa !17
  %i.bq = sub <8 x i8> %wide.load235, %wide.load236
  %i.br = getelementptr inbounds i8, ptr %7, i64 %i.bn
  store <8 x i8> %i.bq, ptr %i.br, align 1, !tbaa !17
  %index.next237 = add nuw i64 %index234, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next237, %n.vec233
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !73

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n238 = icmp eq i64 %i.av, %n.vec233
  br i1 %cmp.n238, label %.loopexit, label %.lr.ph163.preheader

.lr.ph163.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv180.ph = phi i64 [ %i.au, %iter.check ], [ %i.au, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ] ; 7 uses
  %i.bt = sub nsw i64 %wide.trip.count183, %indvars.iv180.ph
  %xtraiter = and i64 %i.bt, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph163.prol.loopexit, label %.lr.ph163.prol

.lr.ph163.prol:                                   ; preds = %.lr.ph163.preheader
  %i.bu = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv180.ph
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  %i.bw = sub nsw i64 %indvars.iv180.ph, %i.au
  %i.bx = getelementptr inbounds i8, ptr %i.k, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !17
  %i.bz = sub i8 %i.bv, %i.by
  %i.ca = getelementptr inbounds i8, ptr %7, i64 %indvars.iv180.ph
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !17
  %indvars.iv.next181.prol = add nsw i64 %indvars.iv180.ph, 1
  br label %.lr.ph163.prol.loopexit

.lr.ph163.prol.loopexit:                          ; preds = %.lr.ph163.prol, %.lr.ph163.preheader
  %indvars.iv180.unr = phi i64 [ %indvars.iv180.ph, %.lr.ph163.preheader ], [ %indvars.iv.next181.prol, %.lr.ph163.prol ]
  %i.cb = add nsw i64 %wide.trip.count183, -1
  %i.cc = icmp eq i64 %indvars.iv180.ph, %i.cb
  br i1 %i.cc, label %.loopexit, label %.lr.ph163

.preheader156:                                    ; preds = %._crit_edge
  %i.cd = mul nsw i32 %5, %2                      ; 2 uses
  %i.ce = icmp slt i32 %5, %i.cd
  br i1 %i.ce, label %iter.check259, label %.loopexit

iter.check259:                                    ; preds = %.preheader156
  %i.cf = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count188 = sext i32 %i.cd to i64     ; 4 uses
  %i.cg = sub nsw i64 %wide.trip.count188, %i.cf  ; 7 uses
  %min.iters.check244 = icmp ult i64 %i.cg, 8
  br i1 %min.iters.check244, label %.lr.ph165.preheader, label %vector.memcheck240

vector.memcheck240:                               ; preds = %iter.check259
  %10 = ptrtoaddr ptr %7 to i64                   ; 2 uses
  %11 = ptrtoaddr ptr %0 to i64
  %i.ch = add i64 %11, %i.j                       ; 2 uses
  %i.ci = add i64 %10, %i.cf
  %i.cj = sub i64 %i.ch, %i.ci
  %diff.check241 = icmp ugt i64 %i.cj, -32
  %i.ck = sub i64 %i.ch, %10
  %diff.check242 = icmp ugt i64 %i.ck, -32
  %conflict.rdx243 = or i1 %diff.check241, %diff.check242
  br i1 %conflict.rdx243, label %.lr.ph165.preheader, label %vector.main.loop.iter.check245

vector.main.loop.iter.check245:                   ; preds = %vector.memcheck240
  %min.iters.check246 = icmp ult i64 %i.cg, 32
  br i1 %min.iters.check246, label %vec.epilog.ph263, label %vector.ph247

vector.ph247:                                     ; preds = %vector.main.loop.iter.check245
  %i.cl = and i64 %i.cg, 24
  %n.vec248 = and i64 %i.cg, -32                  ; 4 uses
  %i.cm = add nsw i64 %n.vec248, %i.cf
  br label %vector.body249

vector.body249:                                   ; preds = %vector.ph247, %vector.body249
  %index250 = phi i64 [ 0, %vector.ph247 ], [ %index.next255, %vector.body249 ] ; 3 uses
  %i.cn = add i64 %index250, %i.cf                ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.k, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load251 = load <16 x i8>, ptr %i.co, align 1, !tbaa !17
  %wide.load252 = load <16 x i8>, ptr %i.cp, align 1, !tbaa !17
  %i.cq = getelementptr inbounds i8, ptr %i.k, i64 %index250 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load253 = load <16 x i8>, ptr %i.cq, align 1, !tbaa !17
  %wide.load254 = load <16 x i8>, ptr %i.cr, align 1, !tbaa !17
  %i.cs = lshr <16 x i8> %wide.load253, splat (i8 1)
  %i.ct = lshr <16 x i8> %wide.load254, splat (i8 1)
  %i.cu = sub <16 x i8> %wide.load251, %i.cs
  %i.cv = sub <16 x i8> %wide.load252, %i.ct
  %i.cw = getelementptr inbounds i8, ptr %7, i64 %i.cn ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <16 x i8> %i.cu, ptr %i.cw, align 1, !tbaa !17
  store <16 x i8> %i.cv, ptr %i.cx, align 1, !tbaa !17
  %index.next255 = add nuw i64 %index250, 32      ; 2 uses
  %i.cy = icmp eq i64 %index.next255, %n.vec248
  br i1 %i.cy, label %middle.block256, label %vector.body249, !llvm.loop !74

middle.block256:                                  ; preds = %vector.body249
  %cmp.n257 = icmp eq i64 %i.cg, %n.vec248
  br i1 %cmp.n257, label %.loopexit, label %vec.epilog.iter.check261

vec.epilog.iter.check261:                         ; preds = %middle.block256
  %min.epilog.iters.check262 = icmp eq i64 %i.cl, 0
  br i1 %min.epilog.iters.check262, label %.lr.ph165.preheader, label %vec.epilog.ph263, !prof !90

vec.epilog.ph263:                                 ; preds = %vector.main.loop.iter.check245, %vec.epilog.iter.check261
  %vec.epilog.resume.val258 = phi i64 [ %n.vec248, %vec.epilog.iter.check261 ], [ 0, %vector.main.loop.iter.check245 ]
  %n.vec264 = and i64 %i.cg, -8                   ; 3 uses
  %i.cz = add nsw i64 %n.vec264, %i.cf
  br label %vec.epilog.vector.body265

vec.epilog.vector.body265:                        ; preds = %vec.epilog.vector.body265, %vec.epilog.ph263
  %index266 = phi i64 [ %vec.epilog.resume.val258, %vec.epilog.ph263 ], [ %index.next269, %vec.epilog.vector.body265 ] ; 3 uses
  %i.da = add i64 %index266, %i.cf                ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.k, i64 %i.da
  %wide.load267 = load <8 x i8>, ptr %i.db, align 1, !tbaa !17
  %i.dc = getelementptr inbounds i8, ptr %i.k, i64 %index266
  %wide.load268 = load <8 x i8>, ptr %i.dc, align 1, !tbaa !17
  %i.dd = lshr <8 x i8> %wide.load268, splat (i8 1)
  %i.de = sub <8 x i8> %wide.load267, %i.dd
  %i.df = getelementptr inbounds i8, ptr %7, i64 %i.da
  store <8 x i8> %i.de, ptr %i.df, align 1, !tbaa !17
  %index.next269 = add nuw i64 %index266, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next269, %n.vec264
  br i1 %i.dg, label %vec.epilog.middle.block270, label %vec.epilog.vector.body265, !llvm.loop !75

vec.epilog.middle.block270:                       ; preds = %vec.epilog.vector.body265
  %cmp.n271 = icmp eq i64 %i.cg, %n.vec264
  br i1 %cmp.n271, label %.loopexit, label %.lr.ph165.preheader

.lr.ph165.preheader:                              ; preds = %iter.check259, %vector.memcheck240, %vec.epilog.iter.check261, %vec.epilog.middle.block270
  %indvars.iv185.ph = phi i64 [ %i.cf, %iter.check259 ], [ %i.cf, %vector.memcheck240 ], [ %i.cm, %vec.epilog.iter.check261 ], [ %i.cz, %vec.epilog.middle.block270 ] ; 7 uses
  %i.dh = sub nsw i64 %wide.trip.count188, %indvars.iv185.ph
  %xtraiter418 = and i64 %i.dh, 1
  %lcmp.mod419.not = icmp eq i64 %xtraiter418, 0
  br i1 %lcmp.mod419.not, label %.lr.ph165.prol.loopexit, label %.lr.ph165.prol

.lr.ph165.prol:                                   ; preds = %.lr.ph165.preheader
  %i.di = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv185.ph
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !17
  %i.dk = sub nsw i64 %indvars.iv185.ph, %i.cf
  %i.dl = getelementptr inbounds i8, ptr %i.k, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !17
  %i.dn = lshr i8 %i.dm, 1
  %i.do = sub i8 %i.dj, %i.dn
  %i.dp = getelementptr inbounds i8, ptr %7, i64 %indvars.iv185.ph
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !17
  %indvars.iv.next186.prol = add nsw i64 %indvars.iv185.ph, 1
  br label %.lr.ph165.prol.loopexit

.lr.ph165.prol.loopexit:                          ; preds = %.lr.ph165.prol, %.lr.ph165.preheader
  %indvars.iv185.unr = phi i64 [ %indvars.iv185.ph, %.lr.ph165.preheader ], [ %indvars.iv.next186.prol, %.lr.ph165.prol ]
  %i.dq = add nsw i64 %wide.trip.count188, -1
  %i.dr = icmp eq i64 %indvars.iv185.ph, %i.dq
  br i1 %i.dr, label %.loopexit, label %.lr.ph165

.preheader154:                                    ; preds = %._crit_edge
  %i.ds = mul nsw i32 %5, %2                      ; 2 uses
  %i.dt = icmp slt i32 %5, %i.ds
  br i1 %i.dt, label %iter.check296, label %.loopexit

iter.check296:                                    ; preds = %.preheader154
  %i.du = sext i32 %5 to i64                      ; 13 uses
  %i.dv = sext i32 %i.m to i64                    ; 4 uses
  %wide.trip.count193 = sext i32 %i.ds to i64     ; 2 uses
  %i.dw = sub nsw i64 %wide.trip.count193, %i.du  ; 7 uses
  %min.iters.check281 = icmp ult i64 %i.dw, 4
  br i1 %min.iters.check281, label %.lr.ph167.preheader, label %vector.memcheck273

vector.memcheck273:                               ; preds = %iter.check296
  %12 = ptrtoaddr ptr %7 to i64                   ; 3 uses
  %13 = ptrtoaddr ptr %0 to i64                   ; 2 uses
  %i.dx = add i64 %12, %i.dv                      ; 2 uses
  %i.dy = add i64 %i.dx, %i.du
  %i.dz = add i64 %13, %i.j
  %i.ea = sub i64 %i.dz, %i.dy
  %diff.check274 = icmp ugt i64 %i.ea, -16
  %i.eb = add i64 %13, %i.j                       ; 3 uses
  %i.ec = sub i64 %i.eb, %i.dx
  %diff.check275 = icmp ugt i64 %i.ec, -16
  %conflict.rdx276 = or i1 %diff.check274, %diff.check275
  %i.ed = add i64 %12, %i.du
  %i.ee = sub i64 %i.eb, %i.ed
  %diff.check277 = icmp ugt i64 %i.ee, -16
  %conflict.rdx278 = or i1 %conflict.rdx276, %diff.check277
  %i.ef = sub i64 %i.eb, %12
  %diff.check279 = icmp ugt i64 %i.ef, -16
  %conflict.rdx280 = or i1 %conflict.rdx278, %diff.check279
  br i1 %conflict.rdx280, label %.lr.ph167.preheader, label %vector.main.loop.iter.check282

vector.main.loop.iter.check282:                   ; preds = %vector.memcheck273
  %min.iters.check283 = icmp ult i64 %i.dw, 16
  br i1 %min.iters.check283, label %vec.epilog.ph300, label %vector.ph284

vector.ph284:                                     ; preds = %vector.main.loop.iter.check282
  %i.eg = and i64 %i.dw, 12
  %n.vec285 = and i64 %i.dw, -16                  ; 4 uses
  %i.eh = add nsw i64 %n.vec285, %i.du
  br label %vector.body286

vector.body286:                                   ; preds = %vector.ph284, %vector.body286
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next292, %vector.body286 ] ; 3 uses
  %i.ei = add i64 %index287, %i.du                ; 3 uses
  %i.ej = getelementptr inbounds i8, ptr %i.k, i64 %i.ei
  %wide.load288 = load <16 x i8>, ptr %i.ej, align 1, !tbaa !17
  %i.ek = getelementptr inbounds i8, ptr %i.k, i64 %index287
  %wide.load289 = load <16 x i8>, ptr %i.ek, align 1, !tbaa !17 ; 2 uses
  %i.el = zext <16 x i8> %wide.load289 to <16 x i32> ; 2 uses
  %i.em = sub nsw i64 %i.ei, %i.dv                ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.k, i64 %i.em
  %wide.load290 = load <16 x i8>, ptr %i.en, align 1, !tbaa !17 ; 2 uses
  %i.eo = zext <16 x i8> %wide.load290 to <16 x i32> ; 2 uses
  %i.ep = sub nsw i64 %i.em, %i.du
  %i.eq = getelementptr inbounds i8, ptr %i.k, i64 %i.ep
  %wide.load291 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !17 ; 2 uses
  %i.er = zext <16 x i8> %wide.load291 to <16 x i32> ; 2 uses
  %i.es = add nuw nsw <16 x i32> %i.eo, %i.el
  %i.et = sub nsw <16 x i32> %i.es, %i.er         ; 3 uses
  %i.eu = sub nsw <16 x i32> %i.et, %i.el
  %i.ev = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.eu, i1 true) ; 2 uses
  %i.ew = sub nsw <16 x i32> %i.et, %i.eo
  %i.ex = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ew, i1 true) ; 2 uses
  %i.ey = sub nsw <16 x i32> %i.et, %i.er
  %i.ez = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ey, i1 true) ; 2 uses
  %i.fa = icmp samesign ugt <16 x i32> %i.ev, %i.ex
  %i.fb = icmp samesign ugt <16 x i32> %i.ev, %i.ez
  %i.fc = select <16 x i1> %i.fa, <16 x i1> splat (i1 true), <16 x i1> %i.fb
  %i.fd = icmp samesign ugt <16 x i32> %i.ex, %i.ez
  %i.fe = select <16 x i1> %i.fd, <16 x i8> %wide.load291, <16 x i8> %wide.load290
  %i.ff = select <16 x i1> %i.fc, <16 x i8> %i.fe, <16 x i8> %wide.load289
  %i.fg = sub <16 x i8> %wide.load288, %i.ff
  %i.fh = getelementptr inbounds i8, ptr %7, i64 %i.ei
  store <16 x i8> %i.fg, ptr %i.fh, align 1, !tbaa !17
  %index.next292 = add nuw i64 %index287, 16      ; 2 uses
  %i.fi = icmp eq i64 %index.next292, %n.vec285
  br i1 %i.fi, label %middle.block293, label %vector.body286, !llvm.loop !76

middle.block293:                                  ; preds = %vector.body286
  %cmp.n294 = icmp eq i64 %i.dw, %n.vec285
  br i1 %cmp.n294, label %.loopexit, label %vec.epilog.iter.check298

vec.epilog.iter.check298:                         ; preds = %middle.block293
  %min.epilog.iters.check299 = icmp eq i64 %i.eg, 0
  br i1 %min.epilog.iters.check299, label %.lr.ph167.preheader, label %vec.epilog.ph300, !prof !91

vec.epilog.ph300:                                 ; preds = %vector.main.loop.iter.check282, %vec.epilog.iter.check298
  %vec.epilog.resume.val295 = phi i64 [ %n.vec285, %vec.epilog.iter.check298 ], [ 0, %vector.main.loop.iter.check282 ]
  %n.vec301 = and i64 %i.dw, -4                   ; 3 uses
  %i.fj = add nsw i64 %n.vec301, %i.du
  br label %vec.epilog.vector.body302

vec.epilog.vector.body302:                        ; preds = %vec.epilog.vector.body302, %vec.epilog.ph300
  %index303 = phi i64 [ %vec.epilog.resume.val295, %vec.epilog.ph300 ], [ %index.next308, %vec.epilog.vector.body302 ] ; 3 uses
  %i.fk = add i64 %index303, %i.du                ; 3 uses
  %i.fl = getelementptr inbounds i8, ptr %i.k, i64 %i.fk
  %wide.load304 = load <4 x i8>, ptr %i.fl, align 1, !tbaa !17
  %i.fm = getelementptr inbounds i8, ptr %i.k, i64 %index303
  %wide.load305 = load <4 x i8>, ptr %i.fm, align 1, !tbaa !17 ; 2 uses
  %i.fn = zext <4 x i8> %wide.load305 to <4 x i32> ; 2 uses
  %i.fo = sub nsw i64 %i.fk, %i.dv                ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.k, i64 %i.fo
  %wide.load306 = load <4 x i8>, ptr %i.fp, align 1, !tbaa !17 ; 2 uses
  %i.fq = zext <4 x i8> %wide.load306 to <4 x i32> ; 2 uses
  %i.fr = sub nsw i64 %i.fo, %i.du
  %i.fs = getelementptr inbounds i8, ptr %i.k, i64 %i.fr
  %wide.load307 = load <4 x i8>, ptr %i.fs, align 1, !tbaa !17 ; 2 uses
  %i.ft = zext <4 x i8> %wide.load307 to <4 x i32> ; 2 uses
  %i.fu = add nuw nsw <4 x i32> %i.fq, %i.fn
  %i.fv = sub nsw <4 x i32> %i.fu, %i.ft          ; 3 uses
  %i.fw = sub nsw <4 x i32> %i.fv, %i.fn
  %i.fx = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fw, i1 true) ; 2 uses
  %i.fy = sub nsw <4 x i32> %i.fv, %i.fq
  %i.fz = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fy, i1 true) ; 2 uses
  %i.ga = sub nsw <4 x i32> %i.fv, %i.ft
  %i.gb = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ga, i1 true) ; 2 uses
  %i.gc = icmp samesign ugt <4 x i32> %i.fx, %i.fz
  %i.gd = icmp samesign ugt <4 x i32> %i.fx, %i.gb
  %i.ge = select <4 x i1> %i.gc, <4 x i1> splat (i1 true), <4 x i1> %i.gd
  %i.gf = icmp samesign ugt <4 x i32> %i.fz, %i.gb
  %i.gg = select <4 x i1> %i.gf, <4 x i8> %wide.load307, <4 x i8> %wide.load306
  %i.gh = select <4 x i1> %i.ge, <4 x i8> %i.gg, <4 x i8> %wide.load305
  %i.gi = sub <4 x i8> %wide.load304, %i.gh
  %i.gj = getelementptr inbounds i8, ptr %7, i64 %i.fk
  store <4 x i8> %i.gi, ptr %i.gj, align 1, !tbaa !17
  %index.next308 = add nuw i64 %index303, 4       ; 2 uses
  %i.gk = icmp eq i64 %index.next308, %n.vec301
  br i1 %i.gk, label %vec.epilog.middle.block309, label %vec.epilog.vector.body302, !llvm.loop !77

vec.epilog.middle.block309:                       ; preds = %vec.epilog.vector.body302
  %cmp.n310 = icmp eq i64 %i.dw, %n.vec301
  br i1 %cmp.n310, label %.loopexit, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %iter.check296, %vector.memcheck273, %vec.epilog.iter.check298, %vec.epilog.middle.block309
  %indvars.iv190.ph = phi i64 [ %i.du, %iter.check296 ], [ %i.du, %vector.memcheck273 ], [ %i.eh, %vec.epilog.iter.check298 ], [ %i.fj, %vec.epilog.middle.block309 ]
  br label %.lr.ph167

.preheader152:                                    ; preds = %._crit_edge
  %i.gl = mul nsw i32 %5, %2                      ; 2 uses
  %i.gm = icmp slt i32 %5, %i.gl
  br i1 %i.gm, label %iter.check332, label %.loopexit

iter.check332:                                    ; preds = %.preheader152
  %i.gn = sext i32 %5 to i64                      ; 11 uses
  %i.go = sext i32 %i.m to i64                    ; 6 uses
  %wide.trip.count198 = sext i32 %i.gl to i64     ; 4 uses
  %i.gp = sub nsw i64 %wide.trip.count198, %i.gn  ; 7 uses
  %min.iters.check318 = icmp ult i64 %i.gp, 4
  br i1 %min.iters.check318, label %.lr.ph169.preheader, label %vector.memcheck312

vector.memcheck312:                               ; preds = %iter.check332
  %14 = ptrtoaddr ptr %7 to i64                   ; 3 uses
  %15 = ptrtoaddr ptr %0 to i64
  %i.gq = add i64 %15, %i.j                       ; 3 uses
  %i.gr = add i64 %14, %i.go
  %i.gs = sub i64 %i.gq, %i.gr
  %diff.check313 = icmp ugt i64 %i.gs, -16
  %i.gt = add i64 %14, %i.gn
  %i.gu = sub i64 %i.gq, %i.gt
  %diff.check314 = icmp ugt i64 %i.gu, -16
  %conflict.rdx315 = or i1 %diff.check313, %diff.check314
  %i.gv = sub i64 %i.gq, %14
  %diff.check316 = icmp ugt i64 %i.gv, -16
  %conflict.rdx317 = or i1 %conflict.rdx315, %diff.check316
  br i1 %conflict.rdx317, label %.lr.ph169.preheader, label %vector.main.loop.iter.check319

vector.main.loop.iter.check319:                   ; preds = %vector.memcheck312
  %min.iters.check320 = icmp ult i64 %i.gp, 16
  br i1 %min.iters.check320, label %vec.epilog.ph336, label %vector.ph321

vector.ph321:                                     ; preds = %vector.main.loop.iter.check319
  %i.gw = and i64 %i.gp, 12
  %n.vec322 = and i64 %i.gp, -16                  ; 4 uses
  %i.gx = add nsw i64 %n.vec322, %i.gn
  br label %vector.body323

vector.body323:                                   ; preds = %vector.ph321, %vector.body323
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next328, %vector.body323 ] ; 3 uses
  %i.gy = add i64 %index324, %i.gn                ; 3 uses
  %i.gz = getelementptr inbounds i8, ptr %i.k, i64 %i.gy
  %wide.load325 = load <16 x i8>, ptr %i.gz, align 1, !tbaa !17
  %i.ha = getelementptr inbounds i8, ptr %i.k, i64 %index324
  %wide.load326 = load <16 x i8>, ptr %i.ha, align 1, !tbaa !17
  %i.hb = zext <16 x i8> %wide.load326 to <16 x i16>
  %i.hc = sub nsw i64 %i.gy, %i.go
  %i.hd = getelementptr inbounds i8, ptr %i.k, i64 %i.hc
  %wide.load327 = load <16 x i8>, ptr %i.hd, align 1, !tbaa !17
  %i.he = zext <16 x i8> %wide.load327 to <16 x i16>
  %i.hf = add nuw nsw <16 x i16> %i.he, %i.hb
  %i.hg = lshr <16 x i16> %i.hf, splat (i16 1)
  %i.hh = trunc nuw <16 x i16> %i.hg to <16 x i8>
  %i.hi = sub <16 x i8> %wide.load325, %i.hh
  %i.hj = getelementptr inbounds i8, ptr %7, i64 %i.gy
  store <16 x i8> %i.hi, ptr %i.hj, align 1, !tbaa !17
  %index.next328 = add nuw i64 %index324, 16      ; 2 uses
  %i.hk = icmp eq i64 %index.next328, %n.vec322
  br i1 %i.hk, label %middle.block329, label %vector.body323, !llvm.loop !78

middle.block329:                                  ; preds = %vector.body323
  %cmp.n330 = icmp eq i64 %i.gp, %n.vec322
  br i1 %cmp.n330, label %.loopexit, label %vec.epilog.iter.check334

vec.epilog.iter.check334:                         ; preds = %middle.block329
  %min.epilog.iters.check335 = icmp eq i64 %i.gw, 0
  br i1 %min.epilog.iters.check335, label %.lr.ph169.preheader, label %vec.epilog.ph336, !prof !91

vec.epilog.ph336:                                 ; preds = %vector.main.loop.iter.check319, %vec.epilog.iter.check334
  %vec.epilog.resume.val331 = phi i64 [ %n.vec322, %vec.epilog.iter.check334 ], [ 0, %vector.main.loop.iter.check319 ]
  %n.vec337 = and i64 %i.gp, -4                   ; 3 uses
  %i.hl = add nsw i64 %n.vec337, %i.gn
  br label %vec.epilog.vector.body338

vec.epilog.vector.body338:                        ; preds = %vec.epilog.vector.body338, %vec.epilog.ph336
  %index339 = phi i64 [ %vec.epilog.resume.val331, %vec.epilog.ph336 ], [ %index.next343, %vec.epilog.vector.body338 ] ; 3 uses
  %i.hm = add i64 %index339, %i.gn                ; 3 uses
  %i.hn = getelementptr inbounds i8, ptr %i.k, i64 %i.hm
  %wide.load340 = load <4 x i8>, ptr %i.hn, align 1, !tbaa !17
  %i.ho = getelementptr inbounds i8, ptr %i.k, i64 %index339
  %wide.load341 = load <4 x i8>, ptr %i.ho, align 1, !tbaa !17
  %i.hp = zext <4 x i8> %wide.load341 to <4 x i16>
  %i.hq = sub nsw i64 %i.hm, %i.go
  %i.hr = getelementptr inbounds i8, ptr %i.k, i64 %i.hq
  %wide.load342 = load <4 x i8>, ptr %i.hr, align 1, !tbaa !17
  %i.hs = zext <4 x i8> %wide.load342 to <4 x i16>
  %i.ht = add nuw nsw <4 x i16> %i.hs, %i.hp
  %i.hu = lshr <4 x i16> %i.ht, splat (i16 1)
  %i.hv = trunc nuw <4 x i16> %i.hu to <4 x i8>
  %i.hw = sub <4 x i8> %wide.load340, %i.hv
  %i.hx = getelementptr inbounds i8, ptr %7, i64 %i.hm
  store <4 x i8> %i.hw, ptr %i.hx, align 1, !tbaa !17
  %index.next343 = add nuw i64 %index339, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next343, %n.vec337
  br i1 %i.hy, label %vec.epilog.middle.block344, label %vec.epilog.vector.body338, !llvm.loop !79

vec.epilog.middle.block344:                       ; preds = %vec.epilog.vector.body338
  %cmp.n345 = icmp eq i64 %i.gp, %n.vec337
  br i1 %cmp.n345, label %.loopexit, label %.lr.ph169.preheader

.lr.ph169.preheader:                              ; preds = %iter.check332, %vector.memcheck312, %vec.epilog.iter.check334, %vec.epilog.middle.block344
  %indvars.iv195.ph = phi i64 [ %i.gn, %iter.check332 ], [ %i.gn, %vector.memcheck312 ], [ %i.gx, %vec.epilog.iter.check334 ], [ %i.hl, %vec.epilog.middle.block344 ] ; 8 uses
  %i.hz = sub nsw i64 %wide.trip.count198, %indvars.iv195.ph
  %xtraiter420 = and i64 %i.hz, 1
  %lcmp.mod421.not = icmp eq i64 %xtraiter420, 0
  br i1 %lcmp.mod421.not, label %.lr.ph169.prol.loopexit, label %.lr.ph169.prol

.lr.ph169.prol:                                   ; preds = %.lr.ph169.preheader
  %i.ia = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv195.ph
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !17
  %i.ic = sub nsw i64 %indvars.iv195.ph, %i.gn
  %i.id = getelementptr inbounds i8, ptr %i.k, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !17
  %i.if = zext i8 %i.ie to i16
  %i.ig = sub nsw i64 %indvars.iv195.ph, %i.go
  %i.ih = getelementptr inbounds i8, ptr %i.k, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !17
  %i.ij = zext i8 %i.ii to i16
  %i.ik = add nuw nsw i16 %i.ij, %i.if
  %i.il = lshr i16 %i.ik, 1
  %i.im = trunc nuw i16 %i.il to i8
  %i.in = sub i8 %i.ib, %i.im
  %i.io = getelementptr inbounds i8, ptr %7, i64 %indvars.iv195.ph
  store i8 %i.in, ptr %i.io, align 1, !tbaa !17
  %indvars.iv.next196.prol = add nsw i64 %indvars.iv195.ph, 1
  br label %.lr.ph169.prol.loopexit

.lr.ph169.prol.loopexit:                          ; preds = %.lr.ph169.prol, %.lr.ph169.preheader
  %indvars.iv195.unr = phi i64 [ %indvars.iv195.ph, %.lr.ph169.preheader ], [ %indvars.iv.next196.prol, %.lr.ph169.prol ]
  %i.ip = add nsw i64 %wide.trip.count198, -1
  %i.iq = icmp eq i64 %indvars.iv195.ph, %i.ip
  br i1 %i.iq, label %.loopexit, label %.lr.ph169

.preheader150:                                    ; preds = %._crit_edge
  %i.ir = mul nsw i32 %5, %2                      ; 2 uses
  %i.is = icmp slt i32 %5, %i.ir
  br i1 %i.is, label %iter.check366, label %.loopexit

iter.check366:                                    ; preds = %.preheader150
  %i.it = sext i32 %5 to i64                      ; 7 uses
  %i.iu = sext i32 %i.m to i64                    ; 6 uses
  %wide.trip.count203 = sext i32 %i.ir to i64     ; 4 uses
  %i.iv = sub nsw i64 %wide.trip.count203, %i.it  ; 7 uses
  %min.iters.check351 = icmp ult i64 %i.iv, 8
  br i1 %min.iters.check351, label %.lr.ph171.preheader, label %vector.memcheck347

vector.memcheck347:                               ; preds = %iter.check366
  %16 = ptrtoaddr ptr %7 to i64                   ; 2 uses
  %17 = ptrtoaddr ptr %0 to i64
  %i.iw = add i64 %17, %i.j                       ; 2 uses
  %i.ix = add i64 %16, %i.iu
  %i.iy = sub i64 %i.iw, %i.ix
  %diff.check348 = icmp ugt i64 %i.iy, -32
  %i.iz = sub i64 %i.iw, %16
  %diff.check349 = icmp ugt i64 %i.iz, -32
  %conflict.rdx350 = or i1 %diff.check348, %diff.check349
  br i1 %conflict.rdx350, label %.lr.ph171.preheader, label %vector.main.loop.iter.check352

vector.main.loop.iter.check352:                   ; preds = %vector.memcheck347
  %min.iters.check353 = icmp ult i64 %i.iv, 32
  br i1 %min.iters.check353, label %vec.epilog.ph370, label %vector.ph354

vector.ph354:                                     ; preds = %vector.main.loop.iter.check352
  %i.ja = and i64 %i.iv, 24
  %n.vec355 = and i64 %i.iv, -32                  ; 4 uses
  %i.jb = add nsw i64 %n.vec355, %i.it
  br label %vector.body356

vector.body356:                                   ; preds = %vector.ph354, %vector.body356
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next362, %vector.body356 ] ; 2 uses
  %i.jc = add i64 %index357, %i.it                ; 3 uses
  %i.jd = getelementptr inbounds i8, ptr %i.k, i64 %i.jc ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load358 = load <16 x i8>, ptr %i.jd, align 1, !tbaa !17
  %wide.load359 = load <16 x i8>, ptr %i.je, align 1, !tbaa !17
  %i.jf = sub nsw i64 %i.jc, %i.iu
  %i.jg = getelementptr inbounds i8, ptr %i.k, i64 %i.jf ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %wide.load360 = load <16 x i8>, ptr %i.jg, align 1, !tbaa !17
  %wide.load361 = load <16 x i8>, ptr %i.jh, align 1, !tbaa !17
  %i.ji = sub <16 x i8> %wide.load358, %wide.load360
  %i.jj = sub <16 x i8> %wide.load359, %wide.load361
  %i.jk = getelementptr inbounds i8, ptr %7, i64 %i.jc ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store <16 x i8> %i.ji, ptr %i.jk, align 1, !tbaa !17
  store <16 x i8> %i.jj, ptr %i.jl, align 1, !tbaa !17
  %index.next362 = add nuw i64 %index357, 32      ; 2 uses
  %i.jm = icmp eq i64 %index.next362, %n.vec355
  br i1 %i.jm, label %middle.block363, label %vector.body356, !llvm.loop !80

middle.block363:                                  ; preds = %vector.body356
  %cmp.n364 = icmp eq i64 %i.iv, %n.vec355
  br i1 %cmp.n364, label %.loopexit, label %vec.epilog.iter.check368

vec.epilog.iter.check368:                         ; preds = %middle.block363
  %min.epilog.iters.check369 = icmp eq i64 %i.ja, 0
  br i1 %min.epilog.iters.check369, label %.lr.ph171.preheader, label %vec.epilog.ph370, !prof !90

vec.epilog.ph370:                                 ; preds = %vector.main.loop.iter.check352, %vec.epilog.iter.check368
  %vec.epilog.resume.val365 = phi i64 [ %n.vec355, %vec.epilog.iter.check368 ], [ 0, %vector.main.loop.iter.check352 ]
  %n.vec371 = and i64 %i.iv, -8                   ; 3 uses
  %i.jn = add nsw i64 %n.vec371, %i.it
  br label %vec.epilog.vector.body372

vec.epilog.vector.body372:                        ; preds = %vec.epilog.vector.body372, %vec.epilog.ph370
  %index373 = phi i64 [ %vec.epilog.resume.val365, %vec.epilog.ph370 ], [ %index.next376, %vec.epilog.vector.body372 ] ; 2 uses
  %i.jo = add i64 %index373, %i.it                ; 3 uses
  %i.jp = getelementptr inbounds i8, ptr %i.k, i64 %i.jo
  %wide.load374 = load <8 x i8>, ptr %i.jp, align 1, !tbaa !17
  %i.jq = sub nsw i64 %i.jo, %i.iu
  %i.jr = getelementptr inbounds i8, ptr %i.k, i64 %i.jq
  %wide.load375 = load <8 x i8>, ptr %i.jr, align 1, !tbaa !17
  %i.js = sub <8 x i8> %wide.load374, %wide.load375
  %i.jt = getelementptr inbounds i8, ptr %7, i64 %i.jo
  store <8 x i8> %i.js, ptr %i.jt, align 1, !tbaa !17
  %index.next376 = add nuw i64 %index373, 8       ; 2 uses
  %i.ju = icmp eq i64 %index.next376, %n.vec371
  br i1 %i.ju, label %vec.epilog.middle.block377, label %vec.epilog.vector.body372, !llvm.loop !81

vec.epilog.middle.block377:                       ; preds = %vec.epilog.vector.body372
  %cmp.n378 = icmp eq i64 %i.iv, %n.vec371
  br i1 %cmp.n378, label %.loopexit, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %iter.check366, %vector.memcheck347, %vec.epilog.iter.check368, %vec.epilog.middle.block377
  %indvars.iv200.ph = phi i64 [ %i.it, %iter.check366 ], [ %i.it, %vector.memcheck347 ], [ %i.jb, %vec.epilog.iter.check368 ], [ %i.jn, %vec.epilog.middle.block377 ] ; 7 uses
  %i.jv = sub nsw i64 %wide.trip.count203, %indvars.iv200.ph
  %xtraiter422 = and i64 %i.jv, 1
  %lcmp.mod423.not = icmp eq i64 %xtraiter422, 0
  br i1 %lcmp.mod423.not, label %.lr.ph171.prol.loopexit, label %.lr.ph171.prol

.lr.ph171.prol:                                   ; preds = %.lr.ph171.preheader
  %i.jw = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv200.ph
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !17
  %i.jy = sub nsw i64 %indvars.iv200.ph, %i.iu
  %i.jz = getelementptr inbounds i8, ptr %i.k, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !17
  %i.kb = sub i8 %i.jx, %i.ka
  %i.kc = getelementptr inbounds i8, ptr %7, i64 %indvars.iv200.ph
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !17
  %indvars.iv.next201.prol = add nsw i64 %indvars.iv200.ph, 1
  br label %.lr.ph171.prol.loopexit

.lr.ph171.prol.loopexit:                          ; preds = %.lr.ph171.prol, %.lr.ph171.preheader
  %indvars.iv200.unr = phi i64 [ %indvars.iv200.ph, %.lr.ph171.preheader ], [ %indvars.iv.next201.prol, %.lr.ph171.prol ]
  %i.kd = add nsw i64 %wide.trip.count203, -1
  %i.ke = icmp eq i64 %indvars.iv200.ph, %i.kd
  br i1 %i.ke, label %.loopexit, label %.lr.ph171

.preheader:                                       ; preds = %._crit_edge
  %i.kf = mul nsw i32 %5, %2                      ; 2 uses
  %i.kg = icmp slt i32 %5, %i.kf
  br i1 %i.kg, label %iter.check399, label %.loopexit

iter.check399:                                    ; preds = %.preheader
  %i.kh = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count208 = sext i32 %i.kf to i64     ; 4 uses
  %i.ki = sub nsw i64 %wide.trip.count208, %i.kh  ; 7 uses
  %min.iters.check384 = icmp ult i64 %i.ki, 8
  br i1 %min.iters.check384, label %.lr.ph173.preheader, label %vector.memcheck380

vector.memcheck380:                               ; preds = %iter.check399
  %18 = ptrtoaddr ptr %7 to i64                   ; 2 uses
  %19 = ptrtoaddr ptr %0 to i64
  %i.kj = add i64 %19, %i.j                       ; 2 uses
  %i.kk = add i64 %18, %i.kh
  %i.kl = sub i64 %i.kj, %i.kk
  %diff.check381 = icmp ugt i64 %i.kl, -32
  %i.km = sub i64 %i.kj, %18
  %diff.check382 = icmp ugt i64 %i.km, -32
  %conflict.rdx383 = or i1 %diff.check381, %diff.check382
  br i1 %conflict.rdx383, label %.lr.ph173.preheader, label %vector.main.loop.iter.check385

vector.main.loop.iter.check385:                   ; preds = %vector.memcheck380
  %min.iters.check386 = icmp ult i64 %i.ki, 32
  br i1 %min.iters.check386, label %vec.epilog.ph403, label %vector.ph387

vector.ph387:                                     ; preds = %vector.main.loop.iter.check385
  %i.kn = and i64 %i.ki, 24
  %n.vec388 = and i64 %i.ki, -32                  ; 4 uses
  %i.ko = add nsw i64 %n.vec388, %i.kh
  br label %vector.body389

vector.body389:                                   ; preds = %vector.ph387, %vector.body389
  %index390 = phi i64 [ 0, %vector.ph387 ], [ %index.next395, %vector.body389 ] ; 3 uses
  %i.kp = add i64 %index390, %i.kh                ; 2 uses
  %i.kq = getelementptr inbounds i8, ptr %i.k, i64 %i.kp ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %wide.load391 = load <16 x i8>, ptr %i.kq, align 1, !tbaa !17
  %wide.load392 = load <16 x i8>, ptr %i.kr, align 1, !tbaa !17
  %i.ks = getelementptr inbounds i8, ptr %i.k, i64 %index390 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %wide.load393 = load <16 x i8>, ptr %i.ks, align 1, !tbaa !17
  %wide.load394 = load <16 x i8>, ptr %i.kt, align 1, !tbaa !17
  %i.ku = sub <16 x i8> %wide.load391, %wide.load393
  %i.kv = sub <16 x i8> %wide.load392, %wide.load394
  %i.kw = getelementptr inbounds i8, ptr %7, i64 %i.kp ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  store <16 x i8> %i.ku, ptr %i.kw, align 1, !tbaa !17
  store <16 x i8> %i.kv, ptr %i.kx, align 1, !tbaa !17
  %index.next395 = add nuw i64 %index390, 32      ; 2 uses
  %i.ky = icmp eq i64 %index.next395, %n.vec388
  br i1 %i.ky, label %middle.block396, label %vector.body389, !llvm.loop !82

middle.block396:                                  ; preds = %vector.body389
  %cmp.n397 = icmp eq i64 %i.ki, %n.vec388
  br i1 %cmp.n397, label %.loopexit, label %vec.epilog.iter.check401

vec.epilog.iter.check401:                         ; preds = %middle.block396
  %min.epilog.iters.check402 = icmp eq i64 %i.kn, 0
  br i1 %min.epilog.iters.check402, label %.lr.ph173.preheader, label %vec.epilog.ph403, !prof !90

vec.epilog.ph403:                                 ; preds = %vector.main.loop.iter.check385, %vec.epilog.iter.check401
  %vec.epilog.resume.val398 = phi i64 [ %n.vec388, %vec.epilog.iter.check401 ], [ 0, %vector.main.loop.iter.check385 ]
  %n.vec404 = and i64 %i.ki, -8                   ; 3 uses
  %i.kz = add nsw i64 %n.vec404, %i.kh
  br label %vec.epilog.vector.body405

vec.epilog.vector.body405:                        ; preds = %vec.epilog.vector.body405, %vec.epilog.ph403
  %index406 = phi i64 [ %vec.epilog.resume.val398, %vec.epilog.ph403 ], [ %index.next409, %vec.epilog.vector.body405 ] ; 3 uses
  %i.la = add i64 %index406, %i.kh                ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %i.k, i64 %i.la
  %wide.load407 = load <8 x i8>, ptr %i.lb, align 1, !tbaa !17
  %i.lc = getelementptr inbounds i8, ptr %i.k, i64 %index406
  %wide.load408 = load <8 x i8>, ptr %i.lc, align 1, !tbaa !17
  %i.ld = sub <8 x i8> %wide.load407, %wide.load408
  %i.le = getelementptr inbounds i8, ptr %7, i64 %i.la
  store <8 x i8> %i.ld, ptr %i.le, align 1, !tbaa !17
  %index.next409 = add nuw i64 %index406, 8       ; 2 uses
  %i.lf = icmp eq i64 %index.next409, %n.vec404
  br i1 %i.lf, label %vec.epilog.middle.block410, label %vec.epilog.vector.body405, !llvm.loop !83

vec.epilog.middle.block410:                       ; preds = %vec.epilog.vector.body405
  %cmp.n411 = icmp eq i64 %i.ki, %n.vec404
  br i1 %cmp.n411, label %.loopexit, label %.lr.ph173.preheader

.lr.ph173.preheader:                              ; preds = %iter.check399, %vector.memcheck380, %vec.epilog.iter.check401, %vec.epilog.middle.block410
  %indvars.iv205.ph = phi i64 [ %i.kh, %iter.check399 ], [ %i.kh, %vector.memcheck380 ], [ %i.ko, %vec.epilog.iter.check401 ], [ %i.kz, %vec.epilog.middle.block410 ] ; 7 uses
  %i.lg = sub nsw i64 %wide.trip.count208, %indvars.iv205.ph
  %xtraiter424 = and i64 %i.lg, 1
  %lcmp.mod425.not = icmp eq i64 %xtraiter424, 0
  br i1 %lcmp.mod425.not, label %.lr.ph173.prol.loopexit, label %.lr.ph173.prol

.lr.ph173.prol:                                   ; preds = %.lr.ph173.preheader
  %i.lh = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv205.ph
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !17
  %i.lj = sub nsw i64 %indvars.iv205.ph, %i.kh
  %i.lk = getelementptr inbounds i8, ptr %i.k, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !17
  %i.lm = sub i8 %i.li, %i.ll
  %i.ln = getelementptr inbounds i8, ptr %7, i64 %indvars.iv205.ph
  store i8 %i.lm, ptr %i.ln, align 1, !tbaa !17
  %indvars.iv.next206.prol = add nsw i64 %indvars.iv205.ph, 1
  br label %.lr.ph173.prol.loopexit

.lr.ph173.prol.loopexit:                          ; preds = %.lr.ph173.prol, %.lr.ph173.preheader
  %indvars.iv205.unr = phi i64 [ %indvars.iv205.ph, %.lr.ph173.preheader ], [ %indvars.iv.next206.prol, %.lr.ph173.prol ]
  %i.lo = add nsw i64 %wide.trip.count208, -1
  %i.lp = icmp eq i64 %indvars.iv205.ph, %i.lo
  br i1 %i.lp, label %.loopexit, label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.prol.loopexit, %.lr.ph173
  %indvars.iv205 = phi i64 [ %indvars.iv.next206.1, %.lr.ph173 ], [ %indvars.iv205.unr, %.lr.ph173.prol.loopexit ] ; 5 uses
  %i.lq = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv205
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !17
  %i.ls = sub nsw i64 %indvars.iv205, %i.kh
  %i.lt = getelementptr inbounds i8, ptr %i.k, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !17
  %i.lv = sub i8 %i.lr, %i.lu
  %i.lw = getelementptr inbounds i8, ptr %7, i64 %indvars.iv205
  store i8 %i.lv, ptr %i.lw, align 1, !tbaa !17
  %indvars.iv.next206 = add nsw i64 %indvars.iv205, 1 ; 3 uses
  %i.lx = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv.next206
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !17
  %i.lz = sub nsw i64 %indvars.iv.next206, %i.kh
  %i.ma = getelementptr inbounds i8, ptr %i.k, i64 %i.lz
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !17
  %i.mc = sub i8 %i.ly, %i.mb
  %i.md = getelementptr inbounds i8, ptr %7, i64 %indvars.iv.next206
  store i8 %i.mc, ptr %i.md, align 1, !tbaa !17
  %indvars.iv.next206.1 = add nsw i64 %indvars.iv205, 2 ; 2 uses
  %exitcond209.not.1 = icmp eq i64 %indvars.iv.next206.1, %wide.trip.count208
  br i1 %exitcond209.not.1, label %.loopexit, label %.lr.ph173, !llvm.loop !84

.lr.ph171:                                        ; preds = %.lr.ph171.prol.loopexit, %.lr.ph171
  %indvars.iv200 = phi i64 [ %indvars.iv.next201.1, %.lr.ph171 ], [ %indvars.iv200.unr, %.lr.ph171.prol.loopexit ] ; 5 uses
  %i.me = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv200
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !17
  %i.mg = sub nsw i64 %indvars.iv200, %i.iu
  %i.mh = getelementptr inbounds i8, ptr %i.k, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !17
  %i.mj = sub i8 %i.mf, %i.mi
  %i.mk = getelementptr inbounds i8, ptr %7, i64 %indvars.iv200
  store i8 %i.mj, ptr %i.mk, align 1, !tbaa !17
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, 1 ; 3 uses
  %i.ml = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv.next201
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !17
  %i.mn = sub nsw i64 %indvars.iv.next201, %i.iu
  %i.mo = getelementptr inbounds i8, ptr %i.k, i64 %i.mn
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !17
  %i.mq = sub i8 %i.mm, %i.mp
  %i.mr = getelementptr inbounds i8, ptr %7, i64 %indvars.iv.next201
  store i8 %i.mq, ptr %i.mr, align 1, !tbaa !17
  %indvars.iv.next201.1 = add nsw i64 %indvars.iv200, 2 ; 2 uses
  %exitcond204.not.1 = icmp eq i64 %indvars.iv.next201.1, %wide.trip.count203
  br i1 %exitcond204.not.1, label %.loopexit, label %.lr.ph171, !llvm.loop !85

.lr.ph169:                                        ; preds = %.lr.ph169.prol.loopexit, %.lr.ph169
  %indvars.iv195 = phi i64 [ %indvars.iv.next196.1, %.lr.ph169 ], [ %indvars.iv195.unr, %.lr.ph169.prol.loopexit ] ; 6 uses
  %i.ms = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv195
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !17
  %i.mu = sub nsw i64 %indvars.iv195, %i.gn
  %i.mv = getelementptr inbounds i8, ptr %i.k, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !17
  %i.mx = zext i8 %i.mw to i16
  %i.my = sub nsw i64 %indvars.iv195, %i.go
  %i.mz = getelementptr inbounds i8, ptr %i.k, i64 %i.my
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !17
  %i.nb = zext i8 %i.na to i16
  %i.nc = add nuw nsw i16 %i.nb, %i.mx
  %i.nd = lshr i16 %i.nc, 1
  %i.ne = trunc nuw i16 %i.nd to i8
  %i.nf = sub i8 %i.mt, %i.ne
  %i.ng = getelementptr inbounds i8, ptr %7, i64 %indvars.iv195
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !17
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, 1 ; 4 uses
  %i.nh = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv.next196
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !17
  %i.nj = sub nsw i64 %indvars.iv.next196, %i.gn
  %i.nk = getelementptr inbounds i8, ptr %i.k, i64 %i.nj
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !17
  %i.nm = zext i8 %i.nl to i16
  %i.nn = sub nsw i64 %indvars.iv.next196, %i.go
  %i.no = getelementptr inbounds i8, ptr %i.k, i64 %i.nn
  %i.np = load i8, ptr %i.no, align 1, !tbaa !17
  %i.nq = zext i8 %i.np to i16
  %i.nr = add nuw nsw i16 %i.nq, %i.nm
  %i.ns = lshr i16 %i.nr, 1
  %i.nt = trunc nuw i16 %i.ns to i8
  %i.nu = sub i8 %i.ni, %i.nt
  %i.nv = getelementptr inbounds i8, ptr %7, i64 %indvars.iv.next196
  store i8 %i.nu, ptr %i.nv, align 1, !tbaa !17
  %indvars.iv.next196.1 = add nsw i64 %indvars.iv195, 2 ; 2 uses
  %exitcond199.not.1 = icmp eq i64 %indvars.iv.next196.1, %wide.trip.count198
  br i1 %exitcond199.not.1, label %.loopexit, label %.lr.ph169, !llvm.loop !86

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %.lr.ph167 ], [ %indvars.iv190.ph, %.lr.ph167.preheader ] ; 5 uses
  %i.nw = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv190
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !17
  %i.ny = sub nsw i64 %indvars.iv190, %i.du
  %i.nz = getelementptr inbounds i8, ptr %i.k, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !17  ; 2 uses
  %i.ob = zext i8 %i.oa to i32                    ; 2 uses
  %i.oc = sub nsw i64 %indvars.iv190, %i.dv       ; 2 uses
  %i.od = getelementptr inbounds i8, ptr %i.k, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !17  ; 2 uses
  %i.of = zext i8 %i.oe to i32                    ; 2 uses
  %i.og = sub nsw i64 %i.oc, %i.du
  %i.oh = getelementptr inbounds i8, ptr %i.k, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !17  ; 2 uses
  %i.oj = zext i8 %i.oi to i32                    ; 2 uses
  %i.ok = add nuw nsw i32 %i.of, %i.ob
  %i.ol = sub nsw i32 %i.ok, %i.oj                ; 3 uses
  %i.om = sub nsw i32 %i.ol, %i.ob
  %i.on = tail call i32 @llvm.abs.i32(i32 %i.om, i1 true) ; 2 uses
  %i.oo = sub nsw i32 %i.ol, %i.of
  %i.op = tail call i32 @llvm.abs.i32(i32 %i.oo, i1 true) ; 2 uses
  %i.oq = sub nsw i32 %i.ol, %i.oj
end_hunk_0
