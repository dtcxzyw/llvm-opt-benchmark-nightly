Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/elbg?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@avpriv_elbg_do:bb.a
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.az, %i.ax                ; 4 uses
  %i.bb = icmp ugt i64 %i.ba, 2147483647
  br i1 %i.bb, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !36
  %i.be = zext i32 %i.bd to i64
  %i.bf = icmp samesign ugt i64 %i.ba, %i.be
  br i1 %i.bf, label %bb.ac, label %.thread110

bb.ac:                                            ; preds = %bb.ab
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  tail call void @av_freep(ptr noundef nonnull %i.bg) #9
  %i.bh = tail call ptr @av_malloc_array(i64 noundef %i.ba, i64 noundef 4) #9 ; 2 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !37
  %.not108 = icmp eq ptr %i.bh, null
  br i1 %.not108, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bc, align 8, !tbaa !36
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.bi = trunc nuw nsw i64 %i.ba to i32
  store i32 %i.bi, ptr %i.bc, align 8, !tbaa !36
  br label %.thread110

.thread110:                                       ; preds = %bb.ab, %bb.ae, %bb.z
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !37
  tail call fastcc void @init_elbg(ptr noundef %i.c, ptr noundef %1, ptr noundef %i.bk, i32 noundef %3, i32 noundef %6)
  tail call fastcc void @do_elbg(ptr noundef %i.c, ptr noundef %1, i32 noundef %3, i32 noundef %6)
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.aa, %bb.b, %.thread110, %bb.x, %bb.t, %bb.p, %bb.l, %bb.h, %bb.d
  %.1 = phi i32 [ 0, %.thread110 ], [ -12, %bb.b ], [ -12, %bb.x ], [ -12, %bb.t ], [ -12, %bb.p ], [ -12, %bb.l ], [ -12, %bb.h ], [ -12, %bb.d ], [ -12, %bb.ad ], [ -34, %bb.aa ]
  ret i32 %.1
}

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #1

declare void @av_freep(ptr noundef) local_unnamed_addr #1

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @init_elbg(ptr noalias nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 6 uses
  %i.c = sext i32 %3 to i64                       ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 5 uses
  %i.f = sext i32 %i.e to i64
  %i.g = mul nsw i64 %i.f, 24
  %i.h = icmp slt i64 %i.g, %i.c
  br i1 %i.h, label %.preheader, label %.preheader39

.preheader39:                                     ; preds = %bb.a
  %i.i = icmp sgt i32 %i.e, 0
  br i1 %i.i, label %.lr.ph, label %common.ret57

.lr.ph:                                           ; preds = %.preheader39
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  %i.l = sext i32 %i.b to i64                     ; 7 uses
  %i.m = shl nsw i64 %i.l, 2                      ; 3 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.n = icmp eq i32 %i.e, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.o = sdiv i32 %3, 8                           ; 5 uses
  %i.p = icmp sgt i32 %3, 7
  br i1 %i.p, label %.lr.ph42, label %._crit_edge

.lr.ph42:                                         ; preds = %.preheader
  %i.q = sext i32 %i.b to i64                     ; 4 uses
  %i.r = shl nsw i64 %i.q, 2                      ; 3 uses
  %wide.trip.count47 = zext nneg i32 %i.o to i64  ; 2 uses
  %xtraiter52 = and i64 %wide.trip.count47, 1
  %i.s = and i32 %3, 2147483640
  %i.t = icmp eq i32 %i.s, 8
  br i1 %i.t, label %.epil.preheader51, label %.lr.ph42.new

.lr.ph42.new:                                     ; preds = %.lr.ph42
  %unroll_iter55 = and i64 %wide.trip.count47, 268435454
  br label %bb.b

common.ret.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %common.ret57, label %.epil.preheader

.epil.preheader:                                  ; preds = %common.ret.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %common.ret.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod50 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod50)
  %i.u = mul nsw i64 %indvars.iv.epil.init, %i.l
  %i.v = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.u
  %i.w = mul nuw nsw i64 %indvars.iv.epil.init, 433494437
  %i.x = srem i64 %i.w, %i.c
  %i.y = mul nsw i64 %i.x, %i.l
  %i.z = getelementptr inbounds [4 x i8], ptr %1, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.v, ptr align 4 %i.z, i64 %i.m, i1 false)
  br label %common.ret57

common.ret57:                                     ; preds = %.preheader39, %common.ret.loopexit.unr-lcssa, %.epil.preheader, %._crit_edge
  ret void

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %._crit_edge, label %.epil.preheader51

.epil.preheader51:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph42
  %indvars.iv44.epil.init = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next45.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.aa = mul nuw nsw i64 %indvars.iv44.epil.init, 433494437
  %i.ab = urem i64 %i.aa, %i.c
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = mul nsw i64 %indvars.iv44.epil.init, %i.q
  %i.ae = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ad
  %i.af = mul nsw i32 %i.b, %i.ac
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ae, ptr align 4 %i.ah, i64 %i.r, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader51, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.ai = mul nsw i32 %i.b, %i.o
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aj
  %i.al = shl nsw i32 %4, 1                       ; 2 uses
  tail call fastcc void @init_elbg(ptr noundef %0, ptr noundef %2, ptr noundef %i.ak, i32 noundef %i.o, i32 noundef %i.al)
  tail call fastcc void @do_elbg(ptr noundef %0, ptr noundef %2, i32 noundef %i.o, i32 noundef %i.al)
  br label %common.ret57

bb.b:                                             ; preds = %bb.b, %.lr.ph42.new
  %indvars.iv44 = phi i64 [ 0, %.lr.ph42.new ], [ %indvars.iv.next45.1, %bb.b ] ; 4 uses
  %niter56 = phi i64 [ 0, %.lr.ph42.new ], [ %niter56.next.1, %bb.b ]
  %i.am = mul nuw nsw i64 %indvars.iv44, 433494437
  %i.an = urem i64 %i.am, %i.c
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = mul nsw i64 %indvars.iv44, %i.q
  %i.aq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ap
  %i.ar = mul nsw i32 %i.b, %i.ao
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %1, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aq, ptr align 4 %i.at, i64 %i.r, i1 false)
  %indvars.iv.next45 = or disjoint i64 %indvars.iv44, 1 ; 2 uses
  %i.au = mul nuw nsw i64 %indvars.iv.next45, 433494437
  %i.av = urem i64 %i.au, %i.c
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = mul nsw i64 %indvars.iv.next45, %i.q
  %i.ay = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ax
  %i.az = mul nsw i32 %i.b, %i.aw
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ay, ptr align 4 %i.bb, i64 %i.r, i1 false)
  %indvars.iv.next45.1 = add nuw nsw i64 %indvars.iv44, 2 ; 2 uses
  %niter56.next.1 = add i64 %niter56, 2           ; 2 uses
  %niter56.ncmp.1 = icmp eq i64 %niter56.next.1, %unroll_iter55
  br i1 %niter56.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !38

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.bc = mul nsw i64 %indvars.iv, %i.l
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bc
  %i.be = mul nuw nsw i64 %indvars.iv, 433494437
  %i.bf = srem i64 %i.be, %i.c
  %i.bg = mul nsw i64 %i.bf, %i.l
  %i.bh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bd, ptr align 4 %i.bh, i64 %i.m, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bi = mul nsw i64 %indvars.iv.next, %i.l
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bi
  %i.bk = mul nuw nsw i64 %indvars.iv.next, 433494437
  %i.bl = srem i64 %i.bk, %i.c
  %i.bm = mul nsw i64 %i.bl, %i.l
  %i.bn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bj, ptr align 4 %i.bn, i64 %i.m, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %common.ret.loopexit.unr-lcssa, label %bb.c, !llvm.loop !39
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @do_elbg(ptr noalias nofree noundef nonnull captures(none) initializes((0, 4), (56, 64)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.c, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21   ; 8 uses
  %i.j = sext i32 %i.i to i64                     ; 6 uses
  %i.k = shl nsw i64 %i.j, 2                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 8 uses
  %i.n = shl nsw i64 %i.j, 3
  %i.o = icmp sgt i32 %2, 0                       ; 2 uses
  %i.p = icmp sgt i32 %i.i, 0                     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20   ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !22   ; 49 uses
  %i.u = mul nsw i32 %i.t, %i.i
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = zext i32 %i.i to i64                     ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = icmp sgt i32 %i.t, 0                    ; 14 uses
  %wide.trip.count.i140 = zext i32 %i.t to i64    ; 22 uses
  %i.ad = sext i32 %i.t to i64                    ; 9 uses
  %i.ae = icmp sgt i32 %i.t, 0
  %wide.trip.count.i = zext i32 %i.t to i64       ; 3 uses
  %i.af = sext i32 %i.t to i64                    ; 5 uses
  %wide.trip.count198 = zext i32 %2 to i64        ; 3 uses
  %i.ag = icmp sgt i32 %i.t, 0
  %wide.trip.count.i.i.i = zext nneg i32 %i.t to i64
  %i.ah = shl nsw i32 %i.t, 1
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nsw i64 %i.ad, 2                    ; 3 uses
  %i.ak = mul nsw i32 %i.t, 3
  %i.al = sext i32 %i.ak to i64
  %.idx = shl nsw i64 %i.al, 2
  %i.am = shl nsw i32 %i.t, 2                     ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.ai, 2
  %.not.i74.i.i.i = icmp eq i32 %i.t, 0
  %.not.i74.i.i.i326 = icmp eq i32 %i.t, 0
  %.not.i80.i.i.i = icmp eq i32 %i.t, %i.am
  %wide.trip.count224 = zext nneg i32 %2 to i64
  %i.ap = add nsw i64 %i.j, -1                    ; 2 uses
  %i.aq = add nsw i64 %i.ad, -1                   ; 2 uses
  %i.ar = add nsw i64 %wide.trip.count.i140, -1   ; 6 uses
  %i.as = icmp eq i64 %i.ap, 0
  %unroll_iter = and i64 %i.j, 2147483646
  %i.at = and i32 %i.i, 1
  %lcmp.mod.not = icmp eq i32 %i.at, 0
  %lcmp.mod366 = trunc i32 %i.i to i1
  %i.au = icmp eq i64 %i.aq, 0
  %unroll_iter370 = and i64 %i.ad, 2147483646
  %i.av = and i32 %i.t, 1
  %lcmp.mod368.not = icmp eq i32 %i.av, 0
  %lcmp.mod369 = trunc i32 %i.t to i1
  %i.aw = icmp eq i64 %i.aq, 0
  %unroll_iter375 = and i64 %i.ad, 2147483646
  %i.ax = and i32 %i.t, 1
  %lcmp.mod373.not = icmp eq i32 %i.ax, 0
  %lcmp.mod374 = trunc i32 %i.t to i1
  %xtraiter378 = and i64 %wide.trip.count.i140, 1
  %i.ay = icmp eq i64 %i.ar, 0
  %unroll_iter381 = and i64 %wide.trip.count.i140, 2147483646
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  %lcmp.mod380 = trunc i32 %i.t to i1
  %min.iters.check348 = icmp ult i32 %i.t, 8
  %n.vec350 = and i64 %i.af, -8                   ; 3 uses
  %cmp.n355 = icmp eq i64 %n.vec350, %i.af
  %min.iters.check = icmp ult i32 %i.t, 4
  %n.vec = and i64 %i.af, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.af
  %xtraiter383 = and i64 %wide.trip.count.i140, 1
  %i.az = icmp eq i64 %i.ar, 0
  %unroll_iter386 = and i64 %wide.trip.count.i140, 2147483646
  %lcmp.mod384.not = icmp eq i64 %xtraiter383, 0
  %lcmp.mod385 = trunc i32 %i.t to i1
  %xtraiter389 = and i64 %wide.trip.count.i140, 1
  %i.ba = icmp eq i64 %i.ar, 0
  %unroll_iter392 = and i64 %wide.trip.count.i140, 2147483646
  %lcmp.mod390.not = icmp eq i64 %xtraiter389, 0
  %lcmp.mod391 = trunc i32 %i.t to i1
  %xtraiter395 = and i64 %wide.trip.count.i140, 1
  %i.bb = icmp eq i64 %i.ar, 0
  %unroll_iter398 = and i64 %wide.trip.count.i140, 2147483646
  %lcmp.mod396.not = icmp eq i64 %xtraiter395, 0
  %lcmp.mod397 = trunc i32 %i.t to i1
  %i.bc = icmp eq i64 %i.ap, 0
  %unroll_iter404 = and i64 %i.j, 2147483646
  %i.bd = and i32 %i.i, 1
  %lcmp.mod402.not = icmp eq i32 %i.bd, 0
  %lcmp.mod403 = trunc i32 %i.i to i1
  %xtraiter406 = and i64 %wide.trip.count198, 3   ; 3 uses
  %i.be = icmp ult i32 %2, 4
  %unroll_iter409 = and i64 %wide.trip.count198, 2147483644
  %lcmp.mod407.not = icmp eq i64 %xtraiter406, 0
  %lcmp.mod408 = icmp ne i64 %xtraiter406, 0
  %xtraiter412 = and i64 %wide.trip.count.i140, 1
  %i.bf = icmp eq i64 %i.ar, 0
  %unroll_iter416 = and i64 %wide.trip.count.i140, 2147483646
  %lcmp.mod414.not = icmp eq i64 %xtraiter412, 0
  %lcmp.mod415 = trunc i32 %i.t to i1
  %xtraiter419 = and i64 %wide.trip.count.i140, 1
  %i.bg = icmp eq i64 %i.ar, 0
  %unroll_iter423 = and i64 %wide.trip.count.i140, 2147483646
  %lcmp.mod421.not = icmp eq i64 %xtraiter419, 0
  %lcmp.mod422 = trunc i32 %i.t to i1
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge178, %bb.a
  %.promoted169183 = phi i32 [ 2147483647, %bb.a ], [ %.promoted169181, %._crit_edge178 ]
  %.0112 = phi i32 [ 0, %bb.a ], [ %i.bh, %._crit_edge178 ]
  %.0110 = phi i32 [ 0, %bb.a ], [ %.1111.lcssa, %._crit_edge178 ] ; 2 uses
  %i.bh = add nuw nsw i32 %.0112, 1               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %i.k, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.n, i1 false)
  store i32 0, ptr %0, align 8, !tbaa !70
  br i1 %i.o, label %.lr.ph165, label %bb.g

.lr.ph165:                                        ; preds = %bb.b
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph165, %._crit_edge
  %indvars.iv195 = phi i64 [ 0, %.lr.ph165 ], [ %indvars.iv.next196, %._crit_edge ] ; 4 uses
  %spec.select168 = phi i32 [ 0, %.lr.ph165 ], [ %spec.select, %._crit_edge ]
  %.0109163 = phi ptr [ %i.e, %.lr.ph165 ], [ %i.da, %._crit_edge ] ; 4 uses
  %.1111162 = phi i32 [ %.0110, %.lr.ph165 ], [ %.2.lcssa, %._crit_edge ] ; 4 uses
  %i.bj = mul nsw i64 %indvars.iv195, %i.af
  %i.bk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bj ; 2 uses
  %i.bl = mul nsw i32 %i.t, %.1111162
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bm
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %.01723.i = phi i32 [ %i.by, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !71
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !71
  %i.bs = sub nsw i32 %i.bp, %i.br
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = mul nsw i64 %i.bt, %i.bt                ; 2 uses
  %i.bv = sext i32 %.01723.i to i64
  %i.bw = sub nsw i64 2147483647, %i.bu
  %.not.i = icmp sgt i64 %i.bw, %i.bv
  br i1 %.not.i, label %bb.d, label %distance_limited.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.bx = trunc i64 %i.bu to i32
  %i.by = add i32 %.01723.i, %i.bx                ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %distance_limited.exit, label %.lr.ph.i, !llvm.loop !40

distance_limited.exit:                            ; preds = %.lr.ph.i, %bb.d
  %.2.i = phi i32 [ 2147483647, %.lr.ph.i ], [ %i.by, %bb.d ] ; 2 uses
  br i1 %i.p, label %.lr.ph.i126.us, label %._crit_edge

.lr.ph.i126.us:                                   ; preds = %distance_limited.exit, %distance_limited.exit133.loopexit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %distance_limited.exit133.loopexit.us ], [ 0, %distance_limited.exit ] ; 3 uses
  %.0108156.us = phi i32 [ %spec.select124.us, %distance_limited.exit133.loopexit.us ], [ %.2.i, %distance_limited.exit ] ; 4 uses
  %.2155.us = phi i32 [ %spec.select123.us, %distance_limited.exit133.loopexit.us ], [ %.1111162, %distance_limited.exit ]
  %i.bz = mul nuw nsw i64 %indvars.iv, %wide.trip.count.i
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bz
  %i.cb = sext i32 %.0108156.us to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i126.us
  %indvars.iv.i128.us = phi i64 [ 0, %.lr.ph.i126.us ], [ %indvars.iv.next.i131.us, %bb.f ] ; 3 uses
  %.01723.i129.us = phi i32 [ 0, %.lr.ph.i126.us ], [ %i.cm, %bb.f ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i128.us
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !71
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.i128.us
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !71
  %i.cg = sub nsw i32 %i.cd, %i.cf
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = mul nsw i64 %i.ch, %i.ch                ; 2 uses
  %i.cj = sext i32 %.01723.i129.us to i64
  %i.ck = sub nsw i64 %i.cb, %i.ci
  %.not.i130.us = icmp sgt i64 %i.ck, %i.cj
  br i1 %.not.i130.us, label %bb.f, label %distance_limited.exit133.loopexit.us

bb.f:                                             ; preds = %bb.e
  %i.cl = trunc i64 %i.ci to i32
  %i.cm = add i32 %.01723.i129.us, %i.cl          ; 2 uses
  %indvars.iv.next.i131.us = add nuw nsw i64 %indvars.iv.i128.us, 1 ; 2 uses
  %exitcond.not.i132.us = icmp eq i64 %indvars.iv.next.i131.us, %wide.trip.count.i
  br i1 %exitcond.not.i132.us, label %distance_limited.exit133.loopexit.us, label %bb.e, !llvm.loop !40

distance_limited.exit133.loopexit.us:             ; preds = %bb.f, %bb.e
  %.2.i125.ph.us = phi i32 [ %.0108156.us, %bb.e ], [ %i.cm, %bb.f ] ; 2 uses
  %i.cn = icmp slt i32 %.2.i125.ph.us, %.0108156.us
  %i.co = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select123.us = select i1 %i.cn, i32 %i.co, i32 %.2155.us ; 2 uses
  %spec.select124.us = tail call i32 @llvm.smin.i32(i32 %.2.i125.ph.us, i32 %.0108156.us) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond194.not = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %exitcond194.not, label %._crit_edge, label %.lr.ph.i126.us, !llvm.loop !41

._crit_edge:                                      ; preds = %distance_limited.exit133.loopexit.us, %bb.c, %distance_limited.exit
  %.2.lcssa = phi i32 [ %.1111162, %distance_limited.exit ], [ %.1111162, %bb.c ], [ %spec.select123.us, %distance_limited.exit133.loopexit.us ] ; 4 uses
  %.0108.lcssa = phi i32 [ %.2.i, %distance_limited.exit ], [ 0, %bb.c ], [ %spec.select124.us, %distance_limited.exit133.loopexit.us ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv195 ; 2 uses
  store i32 %.2.lcssa, ptr %i.cp, align 4, !tbaa !71
  %spec.select = tail call i32 @llvm.sadd.sat.i32(i32 %.0108.lcssa, i32 %spec.select168) ; 3 uses
  %i.cq = sext i32 %.2.lcssa to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !71
  %i.ct = tail call i32 @llvm.sadd.sat.i32(i32 %.0108.lcssa, i32 %i.cs)
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !71
  %i.cu = trunc nuw nsw i64 %indvars.iv195 to i32
  store i32 %i.cu, ptr %.0109163, align 8, !tbaa !73
  %i.cv = load i32, ptr %i.cp, align 4, !tbaa !71
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.cw ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !74
  %i.cz = getelementptr inbounds nuw i8, ptr %.0109163, i64 8
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !75
  store ptr %.0109163, ptr %i.cx, align 8, !tbaa !74
  %i.da = getelementptr inbounds nuw i8, ptr %.0109163, i64 16
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %._crit_edge166, label %bb.c, !llvm.loop !42

._crit_edge166:                                   ; preds = %._crit_edge
  store i32 %spec.select, ptr %0, align 8, !tbaa !70
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge166, %bb.b
  %.promoted169180 = phi i32 [ %spec.select, %._crit_edge166 ], [ 0, %bb.b ] ; 3 uses
  %.1111.lcssa = phi i32 [ %.2.lcssa, %._crit_edge166 ], [ %.0110, %bb.b ]
  br i1 %i.p, label %.lr.ph.i.i, label %do_shiftings.exit

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.db = load ptr, ptr %i.y, align 8, !tbaa !25  ; 9 uses
  %i.dc = sext i32 %.promoted169180 to i64        ; 3 uses
  br i1 %i.as, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %.01315.i.i = phi i64 [ %spec.select.i.i.1, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !71
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = mul nsw i64 %i.df, %i.z
  %i.dh = icmp sgt i64 %i.dg, %i.dc
  %i.di = select i1 %i.dh, i64 %i.df, i64 0
  %spec.select.i.i = add nsw i64 %i.di, %.01315.i.i ; 2 uses
  %i.dj = tail call i64 @llvm.smin.i64(i64 %spec.select.i.i, i64 2147483647)
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i.i
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !71
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.i.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !71
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %i.dp = mul nsw i64 %i.do, %i.z
  %i.dq = icmp sgt i64 %i.dp, %i.dc
  %i.dr = select i1 %i.dq, i64 %i.do, i64 0
  %spec.select.i.i.1 = add nsw i64 %i.dr, %spec.select.i.i ; 3 uses
  %i.ds = tail call i64 @llvm.smin.i64(i64 %spec.select.i.i.1, i64 2147483647)
  %i.dt = trunc i64 %i.ds to i32
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.i.i
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !71
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i134.unr-lcssa, label %.lr.ph.i.i.new, !llvm.loop !43

.lr.ph.i134.unr-lcssa:                            ; preds = %.lr.ph.i.i.new
  br i1 %lcmp.mod.not, label %.lr.ph.i134, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i134.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %.lr.ph.i134.unr-lcssa ] ; 2 uses
  %.01315.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.1, %.lr.ph.i134.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod366)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.i.epil.init
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !71
  %i.dx = sext i32 %i.dw to i64                   ; 2 uses
  %i.dy = mul nsw i64 %i.dx, %i.z
  %i.dz = icmp sgt i64 %i.dy, %i.dc
  %i.ea = select i1 %i.dz, i64 %i.dx, i64 0
  %spec.select.i.i.epil = add nsw i64 %i.ea, %.01315.i.i.epil.init
  %i.eb = tail call i64 @llvm.smin.i64(i64 %spec.select.i.i.epil, i64 2147483647)
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i.i.epil.init
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !71
  br label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %.lr.ph.i134.unr-lcssa, %.epil.preheader
  %i.ee = getelementptr [4 x i8], ptr %i.db, i64 %i.z
  %i.ef = getelementptr i8, ptr %i.ee, i64 -4
  %i.eg = getelementptr [4 x i8], ptr %i.db, i64 %i.j
  %i.eh = getelementptr i8, ptr %i.eg, i64 -4     ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %try_shift_candidate.exit.i, %.lr.ph.i134
  %i.ei = phi i32 [ %.promoted169180, %.lr.ph.i134 ], [ %i.xz, %try_shift_candidate.exit.i ] ; 7 uses
  %indvars.iv.i135 = phi i64 [ 0, %.lr.ph.i134 ], [ %indvars.iv.next.i136, %try_shift_candidate.exit.i ] ; 7 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i135 ; 4 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !71
  %i.el = sext i32 %i.ek to i64
  %i.em = mul nsw i64 %i.el, %i.z
  %i.en = sext i32 %i.ei to i64
  %i.eo = icmp slt i64 %i.em, %i.en
  br i1 %i.eo, label %bb.i, label %try_shift_candidate.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ep = load i32, ptr %i.ef, align 4, !tbaa !71 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %do_shiftings.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i32 %i.ep, 2147483647
  %i.er = load ptr, ptr %i.aa, align 8, !tbaa !19 ; 7 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 256 ; 3 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !77 ; 7 uses
  %i.eu = add i32 %i.et, 40
  %i.ev = and i32 %i.eu, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !71
  %i.ez = add i32 %i.et, 9
  %i.fa = and i32 %i.ez, 63
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !71
  %i.fe = add i32 %i.fd, %i.ey                    ; 3 uses
  %i.ff = and i32 %i.et, 63
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.fg
  store i32 %i.fe, ptr %i.fh, align 4, !tbaa !71
  %i.fi = add i32 %i.et, 1                        ; 2 uses
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.fi, ptr %i.es, align 4, !tbaa !77
  %i.fj = load i32, ptr %i.eh, align 4, !tbaa !71
  %i.fk = urem i32 %i.fe, %i.fj
  %i.fl = add nuw i32 %i.fk, 1
  %i.fm = zext i32 %i.fl to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.fn = zext i32 %i.fe to i64
  %i.fo = add i32 %i.et, 41
  %i.fp = and i32 %i.fo, 63
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !71
  %i.ft = add i32 %i.et, 10
  %i.fu = and i32 %i.ft, 63
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !71
  %i.fy = add i32 %i.fx, %i.fs                    ; 2 uses
  %i.fz = and i32 %i.fi, 63
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.ga
  store i32 %i.fy, ptr %i.gb, align 4, !tbaa !71
  %i.gc = add i32 %i.et, 2
  store i32 %i.gc, ptr %i.es, align 4, !tbaa !77
  %i.gd = zext i32 %i.fy to i64
  %i.ge = shl nuw i64 %i.fn, 32
  %i.gf = or disjoint i64 %i.ge, %i.gd
  %i.gg = load i32, ptr %i.eh, align 4, !tbaa !71
  %i.gh = sext i32 %i.gg to i64
  %i.gi = urem i64 %i.gf, %i.gh
  %i.gj = add nuw i64 %i.gi, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i.i = phi i64 [ %i.fm, %bb.k ], [ %i.gj, %bb.l ]
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.i13.i = phi i64 [ %indvars.iv.next.i14.i, %bb.n ], [ 0, %bb.m ] ; 8 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i13.i
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !71
  %i.gm = sext i32 %i.gl to i64
  %i.gn = icmp ugt i64 %.0.i.i, %i.gm
  %indvars.iv.next.i14.i = add nuw nsw i64 %indvars.iv.i13.i, 1
  br i1 %i.gn, label %bb.n, label %get_high_utility_cell.exit.i, !llvm.loop !44

get_high_utility_cell.exit.i:                     ; preds = %bb.n
  %i.go = trunc nuw nsw i64 %indvars.iv.i135 to i32 ; 2 uses
  %i.gp = mul nsw i32 %i.t, %i.go
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.gq
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.r, %get_high_utility_cell.exit.i
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %bb.r ], [ 0, %get_high_utility_cell.exit.i ] ; 3 uses
  %.026.i.i = phi i32 [ %.2.i.i, %bb.r ], [ 2147483647, %get_high_utility_cell.exit.i ] ; 5 uses
  %.01824.i.i = phi i32 [ %.220.i.i, %bb.r ], [ 0, %get_high_utility_cell.exit.i ] ; 2 uses
  %.not.i16.i = icmp eq i64 %indvars.iv.i135, %indvars.iv201
  br i1 %.not.i16.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i15.i
  %i.gs = trunc nuw nsw i64 %indvars.iv201 to i32 ; 2 uses
  %i.gt = mul nsw i32 %i.t, %i.gs
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.gu
  br i1 %i.ag, label %.lr.ph.i.i.i, label %distance_limited.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o
  %i.gw = sext i32 %.026.i.i to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.q ] ; 3 uses
  %.01723.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.hh, %bb.q ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.i.i.i
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !71
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv.i.i.i
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !71
  %i.hb = sub nsw i32 %i.gy, %i.ha
  %i.hc = sext i32 %i.hb to i64                   ; 2 uses
  %i.hd = mul nsw i64 %i.hc, %i.hc                ; 2 uses
  %i.he = sext i32 %.01723.i.i.i to i64
  %i.hf = sub nsw i64 %i.gw, %i.hd
  %.not.i.i.i = icmp sgt i64 %i.hf, %i.he
  br i1 %.not.i.i.i, label %bb.q, label %distance_limited.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.hg = trunc i64 %i.hd to i32
  %i.hh = add i32 %.01723.i.i.i, %i.hg            ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %distance_limited.exit.i.i, label %bb.p, !llvm.loop !40
end_hunk_0
begin_hunk_1_@do_elbg:bb.a
  %.140.i.i.i = phi ptr [ %i.ui, %distance_limited.exit106.i.cont.i.i ], [ %.075.i.i.i272291300, %vect_division.exit88.i.i.i ] ; 2 uses
  %i.tf = load i32, ptr %.140.i.i.i, align 8, !tbaa !73
  %i.tg = mul nsw i32 %i.tf, %i.t
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds [4 x i8], ptr %1, i64 %i.th ; 2 uses
  br i1 %i.ac, label %.lr.ph.i90.i.i.i, label %distance_limited.exit106.i.thread.i.i

.lr.ph.i90.i.i.i:                                 ; preds = %.lr.ph.i99.i.i, %bb.ag
  %indvars.iv.i92.i.i.i = phi i64 [ %indvars.iv.next.i95.i.i.i, %bb.ag ], [ 0, %.lr.ph.i99.i.i ] ; 3 uses
  %.01723.i93.i.i.i = phi i32 [ %i.tt, %bb.ag ], [ 0, %.lr.ph.i99.i.i ] ; 2 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv.i92.i.i.i
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !71
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %indvars.iv.i92.i.i.i
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !71
  %i.tn = sub nsw i32 %i.tk, %i.tm
  %i.to = sext i32 %i.tn to i64                   ; 2 uses
  %i.tp = mul nsw i64 %i.to, %i.to                ; 2 uses
  %i.tq = sext i32 %.01723.i93.i.i.i to i64
  %i.tr = sub nsw i64 2147483647, %i.tp
  %.not.i94.i.i.i = icmp sgt i64 %i.tr, %i.tq
  br i1 %.not.i94.i.i.i, label %bb.ag, label %distance_limited.exit97.i.i.i

bb.ag:                                            ; preds = %.lr.ph.i90.i.i.i
  %i.ts = trunc i64 %i.tp to i32
  %i.tt = add i32 %.01723.i93.i.i.i, %i.ts        ; 2 uses
  %indvars.iv.next.i95.i.i.i = add nuw nsw i64 %indvars.iv.i92.i.i.i, 1 ; 2 uses
  %exitcond.not.i96.i.i.i = icmp eq i64 %indvars.iv.next.i95.i.i.i, %wide.trip.count.i140
  br i1 %exitcond.not.i96.i.i.i, label %distance_limited.exit97.i.i.i, label %.lr.ph.i90.i.i.i, !llvm.loop !40

distance_limited.exit97.i.i.i:                    ; preds = %bb.ag, %.lr.ph.i90.i.i.i
  %.2.i89.i.i.i = phi i32 [ 2147483647, %.lr.ph.i90.i.i.i ], [ %i.tt, %bb.ag ] ; 3 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %distance_limited.exit97.i.i.i
  %indvars.iv.i101.i.i.i = phi i64 [ 0, %distance_limited.exit97.i.i.i ], [ %indvars.iv.next.i104.i.i.i, %bb.ai ] ; 3 uses
  %.01723.i102.i.i.i = phi i32 [ 0, %distance_limited.exit97.i.i.i ], [ %i.ue, %bb.ai ] ; 2 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.i101.i.i.i
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !71
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %indvars.iv.i101.i.i.i
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !71
  %i.ty = sub nsw i32 %i.tv, %i.tx
  %i.tz = sext i32 %i.ty to i64                   ; 2 uses
  %i.ua = mul nsw i64 %i.tz, %i.tz                ; 2 uses
  %i.ub = sext i32 %.01723.i102.i.i.i to i64
  %i.uc = sub nsw i64 2147483647, %i.ua
  %.not.i103.i.i.i = icmp sgt i64 %i.uc, %i.ub
  br i1 %.not.i103.i.i.i, label %bb.ai, label %distance_limited.exit106.i.thread.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.ud = trunc i64 %i.ua to i32
  %i.ue = add i32 %.01723.i102.i.i.i, %i.ud       ; 3 uses
  %indvars.iv.next.i104.i.i.i = add nuw nsw i64 %indvars.iv.i101.i.i.i, 1 ; 2 uses
  %exitcond.not.i105.i.i.i = icmp eq i64 %indvars.iv.next.i104.i.i.i, %wide.trip.count.i140
  br i1 %exitcond.not.i105.i.i.i, label %distance_limited.exit106.i.i.i, label %bb.ah, !llvm.loop !40

distance_limited.exit106.i.thread.i.i:            ; preds = %bb.ah, %.lr.ph.i99.i.i
  %.2.i8917.i.ph.i.i = phi i32 [ 0, %.lr.ph.i99.i.i ], [ %.2.i89.i.i.i, %bb.ah ] ; 2 uses
  %.2.i98.i.ph.i.i = phi i32 [ 0, %.lr.ph.i99.i.i ], [ 2147483647, %bb.ah ] ; 2 uses
  %i.uf = icmp sgt i32 %.2.i8917.i.ph.i.i, %.2.i98.i.ph.i.i
  %.sroa.speculated213.i.i = select i1 %i.uf, i32 %.sroa.6.0.i.i, i32 %.sroa.0.0.i.i
  %.sroa.speculated.i214.i.i = tail call i32 @llvm.smin.i32(i32 %.2.i8917.i.ph.i.i, i32 %.2.i98.i.ph.i.i)
  %storemerge.i215.i.i = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.speculated.i214.i.i, i32 %.sroa.speculated213.i.i)
  br label %distance_limited.exit106.i.cont.i.i

distance_limited.exit106.i.i.i:                   ; preds = %bb.ai
  %i.ug = icmp sgt i32 %.2.i89.i.i.i, %i.ue       ; 3 uses
  %.sroa.speculated.i.i = select i1 %i.ug, i32 %.sroa.6.0.i.i, i32 %.sroa.0.0.i.i
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %.2.i89.i.i.i, i32 %i.ue)
  %storemerge.i.i.i = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.speculated.i.i.i, i32 %.sroa.speculated.i.i) ; 2 uses
  %spec.select.i20.i = select i1 %i.ug, i32 %.sroa.0.0.i.i, i32 %storemerge.i.i.i
  %spec.select233.i.i = select i1 %i.ug, i32 %storemerge.i.i.i, i32 %.sroa.6.0.i.i
  br label %distance_limited.exit106.i.cont.i.i

distance_limited.exit106.i.cont.i.i:              ; preds = %distance_limited.exit106.i.i.i, %distance_limited.exit106.i.thread.i.i
  %.sroa.0.2.i.i = phi i32 [ %spec.select.i20.i, %distance_limited.exit106.i.i.i ], [ %storemerge.i215.i.i, %distance_limited.exit106.i.thread.i.i ] ; 2 uses
  %.sroa.6.2.i.i = phi i32 [ %spec.select233.i.i, %distance_limited.exit106.i.i.i ], [ %.sroa.6.0.i.i, %distance_limited.exit106.i.thread.i.i ] ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.140.i.i.i, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !75 ; 2 uses
  %.not62.i.i.i = icmp eq ptr %i.ui, null
  br i1 %.not62.i.i.i, label %simple_lbg.exit.i.i, label %.lr.ph.i99.i.i, !llvm.loop !59

simple_lbg.exit.i.i:                              ; preds = %distance_limited.exit106.i.cont.i.i, %._crit_edge26.thread.i.i.i.thread, %vect_division.exit88.i.i.i
  %.sroa.0.1.i.i = phi i32 [ 0, %vect_division.exit88.i.i.i ], [ 0, %._crit_edge26.thread.i.i.i.thread ], [ %.sroa.0.2.i.i, %distance_limited.exit106.i.cont.i.i ] ; 3 uses
  %.sroa.6.1.i.i = phi i32 [ 0, %vect_division.exit88.i.i.i ], [ 0, %._crit_edge26.thread.i.i.i.thread ], [ %.sroa.6.2.i.i, %distance_limited.exit106.i.cont.i.i ] ; 2 uses
  %spec.select.i.i.i = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.6.1.i.i, i32 %.sroa.0.1.i.i)
  %i.uj = sext i32 %spec.select.i.i.i to i64      ; 2 uses
  %i.uk = sub nsw i64 2147483647, %i.pc
  %.not.i19.i = icmp sgt i64 %i.uk, %i.uj
  %i.ul = add nsw i64 %i.uj, %i.pc
  %.062.i.i = select i1 %.not.i19.i, i64 %i.ul, i64 2147483647 ; 3 uses
  %i.um = icmp sgt i64 %i.kr, %.062.i.i
  br i1 %i.um, label %.preheader, label %try_shift_candidate.exit.i

.preheader:                                       ; preds = %simple_lbg.exit.i.i, %.preheader
  %.033.i.i.i = phi ptr [ %i.uo, %.preheader ], [ %i.km, %simple_lbg.exit.i.i ] ; 2 uses
  %i.un = load ptr, ptr %.033.i.i.i, align 8, !tbaa !74 ; 2 uses
  %.not.i111.i.i = icmp eq ptr %i.un, null
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  br i1 %.not.i111.i.i, label %bb.aj, label %.preheader, !llvm.loop !60

bb.aj:                                            ; preds = %.preheader
  %i.up = load ptr, ptr %i.hs, align 8, !tbaa !74
  store ptr %i.up, ptr %.033.i.i.i, align 8, !tbaa !74
  store ptr null, ptr %i.hs, align 8, !tbaa !74
  %i.uq = load ptr, ptr %i.pb, align 8, !tbaa !74 ; 3 uses
  store ptr null, ptr %i.pb, align 8, !tbaa !74
  %.not353.i.i.i = icmp eq ptr %i.uq, null
  br i1 %.not353.i.i.i, label %shift_codebook.exit.i.i, label %.lr.ph.i112.i.i

.lr.ph.i112.i.i:                                  ; preds = %bb.aj
  br i1 %i.ac, label %.lr.ph.i.us.i116.i.i, label %.lr.ph.split.i.i.i

.lr.ph.i.us.i116.i.i:                             ; preds = %.lr.ph.i112.i.i, %distance_limited.exit44.loopexit.us.i.i.i
  %.04.us.i.i.i = phi ptr [ %i.us, %distance_limited.exit44.loopexit.us.i.i.i ], [ %i.uq, %.lr.ph.i112.i.i ] ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.04.us.i.i.i, i64 8 ; 2 uses
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !75 ; 2 uses
  %i.ut = load i32, ptr %.04.us.i.i.i, align 8, !tbaa !73
  %i.uu = mul nsw i32 %i.ut, %i.t
  %i.uv = sext i32 %i.uu to i64
  %i.uw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.uv ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i.us.i116.i.i
  %indvars.iv.i.us.i117.i.i = phi i64 [ 0, %.lr.ph.i.us.i116.i.i ], [ %indvars.iv.next.i.us.i121.i.i, %bb.al ] ; 3 uses
  %.01723.i.us.i118.i.i = phi i32 [ 0, %.lr.ph.i.us.i116.i.i ], [ %i.vh, %bb.al ] ; 2 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.i.us.i117.i.i
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !71
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv.i.us.i117.i.i
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !71
  %i.vb = sub nsw i32 %i.uy, %i.va
  %i.vc = sext i32 %i.vb to i64                   ; 2 uses
  %i.vd = mul nsw i64 %i.vc, %i.vc                ; 2 uses
  %i.ve = sext i32 %.01723.i.us.i118.i.i to i64
  %i.vf = sub nsw i64 2147483647, %i.vd
  %.not.i.us.i119.i.i = icmp sgt i64 %i.vf, %i.ve
  br i1 %.not.i.us.i119.i.i, label %bb.al, label %.lr.ph.i37.us.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.vg = trunc i64 %i.vd to i32
  %i.vh = add i32 %.01723.i.us.i118.i.i, %i.vg    ; 2 uses
  %indvars.iv.next.i.us.i121.i.i = add nuw nsw i64 %indvars.iv.i.us.i117.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i122.i.i = icmp eq i64 %indvars.iv.next.i.us.i121.i.i, %wide.trip.count.i140
  br i1 %exitcond.not.i.us.i122.i.i, label %.lr.ph.i37.us.i.i.i, label %bb.ak, !llvm.loop !40

.lr.ph.i37.us.i.i.i:                              ; preds = %bb.al, %bb.ak
  %.2.i.us.i120.i.i = phi i32 [ 2147483647, %bb.ak ], [ %i.vh, %bb.al ]
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %.lr.ph.i37.us.i.i.i
  %indvars.iv.i39.us.i.i.i = phi i64 [ 0, %.lr.ph.i37.us.i.i.i ], [ %indvars.iv.next.i42.us.i.i.i, %bb.an ] ; 3 uses
  %.01723.i40.us.i.i.i = phi i32 [ 0, %.lr.ph.i37.us.i.i.i ], [ %i.vs, %bb.an ] ; 2 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.i39.us.i.i.i
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !71
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.i39.us.i.i.i
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !71
  %i.vm = sub nsw i32 %i.vj, %i.vl
  %i.vn = sext i32 %i.vm to i64                   ; 2 uses
  %i.vo = mul nsw i64 %i.vn, %i.vn                ; 2 uses
  %i.vp = sext i32 %.01723.i40.us.i.i.i to i64
  %i.vq = sub nsw i64 2147483647, %i.vo
  %.not.i41.us.i.i.i = icmp sgt i64 %i.vq, %i.vp
  br i1 %.not.i41.us.i.i.i, label %bb.an, label %distance_limited.exit44.loopexit.us.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.vr = trunc i64 %i.vo to i32
  %i.vs = add i32 %.01723.i40.us.i.i.i, %i.vr     ; 2 uses
  %indvars.iv.next.i42.us.i.i.i = add nuw nsw i64 %indvars.iv.i39.us.i.i.i, 1 ; 2 uses
  %exitcond.not.i43.us.i.i.i = icmp eq i64 %indvars.iv.next.i42.us.i.i.i, %wide.trip.count.i140
  br i1 %exitcond.not.i43.us.i.i.i, label %distance_limited.exit44.loopexit.us.i.i.i, label %bb.am, !llvm.loop !40

distance_limited.exit44.loopexit.us.i.i.i:        ; preds = %bb.an, %bb.am
  %.2.i36.ph.us.i.i.i = phi i32 [ 2147483647, %bb.am ], [ %i.vs, %bb.an ]
  %i.vt = icmp sgt i32 %.2.i.us.i120.i.i, %.2.i36.ph.us.i.i.i
  %.sroa.speculated.i = select i1 %i.vt, i64 %indvars.iv.i13.i, i64 %indvars.iv.i135
  %sext.i = shl i64 %.sroa.speculated.i, 32
  %i.vu = ashr exact i64 %sext.i, 29
  %i.vv = getelementptr inbounds i8, ptr %i.m, i64 %i.vu ; 2 uses
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !74
  store ptr %i.vw, ptr %i.ur, align 8, !tbaa !75
  store ptr %.04.us.i.i.i, ptr %i.vv, align 8, !tbaa !74
  %.not35.us.i.i.i = icmp eq ptr %i.us, null
  br i1 %.not35.us.i.i.i, label %shift_codebook.exit.i.i, label %.lr.ph.i.us.i116.i.i, !llvm.loop !61

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i112.i.i
  %.pre.i114.i.i = load ptr, ptr %i.hs, align 8, !tbaa !74
  br label %distance_limited.exit44.i.i.i

distance_limited.exit44.i.i.i:                    ; preds = %distance_limited.exit44.i.i.i, %.lr.ph.split.i.i.i
  %i.vx = phi ptr [ %.pre.i114.i.i, %.lr.ph.split.i.i.i ], [ %.04.i.i.i, %distance_limited.exit44.i.i.i ]
  %.04.i.i.i = phi ptr [ %i.uq, %.lr.ph.split.i.i.i ], [ %i.vz, %distance_limited.exit44.i.i.i ] ; 4 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 8 ; 2 uses
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !75 ; 2 uses
  store ptr %i.vx, ptr %i.vy, align 8, !tbaa !75
  store ptr %.04.i.i.i, ptr %i.hs, align 8, !tbaa !74
  %.not35.i.i.i = icmp eq ptr %i.vz, null
  br i1 %.not35.i.i.i, label %shift_codebook.exit.i.i.thread, label %distance_limited.exit44.i.i.i, !llvm.loop !61

shift_codebook.exit.i.i.thread:                   ; preds = %distance_limited.exit44.i.i.i
  %i.wa = sub nsw i64 %.062.i.i, %i.kr
  %i.wb = trunc i64 %i.wa to i32
  %i.wc = add i32 %i.ei, %i.wb                    ; 2 uses
  store i32 %i.wc, ptr %0, align 8, !tbaa !70
  store i32 %.sroa.0.1.i.i, ptr %i.ej, align 4, !tbaa !71
  br label %.lr.ph.i123.i.i

shift_codebook.exit.i.i:                          ; preds = %distance_limited.exit44.loopexit.us.i.i.i, %bb.aj
  %.09.i.i.i.pr = load ptr, ptr %i.hs, align 8, !tbaa !74 ; 2 uses
  %i.wd = sub nsw i64 %.062.i.i, %i.kr
  %i.we = trunc i64 %i.wd to i32
  %i.wf = add i32 %i.ei, %i.we                    ; 3 uses
  store i32 %i.wf, ptr %0, align 8, !tbaa !70
  store i32 %.sroa.0.1.i.i, ptr %i.ej, align 4, !tbaa !71
  %.not10.i.i.i = icmp eq ptr %.09.i.i.i.pr, null
  br i1 %.not10.i.i.i, label %update_utility_and_n_cb.exit.i.i, label %.lr.ph.i123.i.i

.lr.ph.i123.i.i:                                  ; preds = %shift_codebook.exit.i.i.thread, %shift_codebook.exit.i.i
  %i.wg = phi i32 [ %i.wc, %shift_codebook.exit.i.i.thread ], [ %i.wf, %shift_codebook.exit.i.i ]
  %.09.i.i.i146 = phi ptr [ %.04.i.i.i, %shift_codebook.exit.i.i.thread ], [ %.09.i.i.i.pr, %shift_codebook.exit.i.i ]
  %i.wh = load ptr, ptr %i.x, align 8, !tbaa !18
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i123.i.i
  %.011.i.i.i = phi ptr [ %.09.i.i.i146, %.lr.ph.i123.i.i ], [ %.0.i124.i.i, %bb.ao ] ; 2 uses
  %i.wi = load i32, ptr %.011.i.i.i, align 8, !tbaa !73
  %i.wj = sext i32 %i.wi to i64
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.wh, i64 %i.wj
  store i32 %i.go, ptr %i.wk, align 4, !tbaa !71
  %i.wl = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %.0.i124.i.i = load ptr, ptr %i.wl, align 8, !tbaa !74 ; 2 uses
  %.not.i125.i.i = icmp eq ptr %.0.i124.i.i, null
  br i1 %.not.i125.i.i, label %update_utility_and_n_cb.exit.i.i, label %bb.ao, !llvm.loop !62

update_utility_and_n_cb.exit.i.i:                 ; preds = %bb.ao, %shift_codebook.exit.i.i
  %i.wm = phi i32 [ %i.wf, %shift_codebook.exit.i.i ], [ %i.wg, %bb.ao ] ; 3 uses
  store i32 %.sroa.6.1.i.i, ptr %i.hm, align 4, !tbaa !71
  %.09.i.1.i.i = load ptr, ptr %i.pb, align 8, !tbaa !74 ; 2 uses
  %.not10.i.1.i.i = icmp eq ptr %.09.i.1.i.i, null
  br i1 %.not10.i.1.i.i, label %update_utility_and_n_cb.exit.1.i.i, label %.lr.ph.i123.1.i.i

.lr.ph.i123.1.i.i:                                ; preds = %update_utility_and_n_cb.exit.i.i
  %i.wn = load ptr, ptr %i.x, align 8, !tbaa !18
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i123.1.i.i
  %.011.i.1.i.i = phi ptr [ %.09.i.1.i.i, %.lr.ph.i123.1.i.i ], [ %.0.i124.1.i.i, %bb.ap ] ; 2 uses
  %i.wo = load i32, ptr %.011.i.1.i.i, align 8, !tbaa !73
  %i.wp = sext i32 %i.wo to i64
  %i.wq = getelementptr inbounds [4 x i8], ptr %i.wn, i64 %i.wp
  store i32 %i.hj, ptr %i.wq, align 4, !tbaa !71
  %i.wr = getelementptr inbounds nuw i8, ptr %.011.i.1.i.i, i64 8
  %.0.i124.1.i.i = load ptr, ptr %i.wr, align 8, !tbaa !74 ; 2 uses
  %.not.i125.1.i.i = icmp eq ptr %.0.i124.1.i.i, null
  br i1 %.not.i125.1.i.i, label %update_utility_and_n_cb.exit.1.i.i, label %bb.ap, !llvm.loop !62

update_utility_and_n_cb.exit.1.i.i:               ; preds = %bb.ap, %update_utility_and_n_cb.exit.i.i
  store i32 %.2.i83.i.i, ptr %i.hp, align 4, !tbaa !71
  %.09.i.2.i.i = load ptr, ptr %i.km, align 8, !tbaa !74 ; 2 uses
  %.not10.i.2.i.i = icmp eq ptr %.09.i.2.i.i, null
  br i1 %.not10.i.2.i.i, label %.lr.ph.i128.i.i, label %.lr.ph.i123.2.i.i

.lr.ph.i123.2.i.i:                                ; preds = %update_utility_and_n_cb.exit.1.i.i
  %i.ws = load ptr, ptr %i.x, align 8, !tbaa !18
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.lr.ph.i123.2.i.i
  %.011.i.2.i.i = phi ptr [ %.09.i.2.i.i, %.lr.ph.i123.2.i.i ], [ %.0.i124.2.i.i, %bb.aq ] ; 2 uses
  %i.wt = load i32, ptr %.011.i.2.i.i, align 8, !tbaa !73
  %i.wu = sext i32 %i.wt to i64
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.ws, i64 %i.wu
  store i32 %.220.i.i, ptr %i.wv, align 4, !tbaa !71
  %i.ww = getelementptr inbounds nuw i8, ptr %.011.i.2.i.i, i64 8
  %.0.i124.2.i.i = load ptr, ptr %i.ww, align 8, !tbaa !74 ; 2 uses
  %.not.i125.2.i.i = icmp eq ptr %.0.i124.2.i.i, null
  br i1 %.not.i125.2.i.i, label %.lr.ph.i128.i.i, label %bb.aq, !llvm.loop !62

.lr.ph.i128.i.i:                                  ; preds = %bb.aq, %update_utility_and_n_cb.exit.1.i.i
  %i.wx = sext i32 %i.wm to i64                   ; 3 uses
  br i1 %i.bc, label %.epil.preheader400, label %.lr.ph.i128.i.i.new

.lr.ph.i128.i.i.new:                              ; preds = %.lr.ph.i128.i.i, %.lr.ph.i128.i.i.new
  %indvars.iv.i129.i.i = phi i64 [ %indvars.iv.next.i131.i.i.1, %.lr.ph.i128.i.i.new ], [ 0, %.lr.ph.i128.i.i ] ; 4 uses
  %.01315.i.i.i = phi i64 [ %spec.select.i130.i.i.1, %.lr.ph.i128.i.i.new ], [ 0, %.lr.ph.i128.i.i ]
  %niter405 = phi i64 [ %niter405.next.1, %.lr.ph.i128.i.i.new ], [ 0, %.lr.ph.i128.i.i ]
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i129.i.i
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !71
  %i.xa = sext i32 %i.wz to i64                   ; 2 uses
  %i.xb = mul nsw i64 %i.xa, %i.z
  %i.xc = icmp sgt i64 %i.xb, %i.wx
  %i.xd = select i1 %i.xc, i64 %i.xa, i64 0
  %spec.select.i130.i.i = add nsw i64 %i.xd, %.01315.i.i.i ; 2 uses
  %i.xe = tail call i64 @llvm.smin.i64(i64 %spec.select.i130.i.i, i64 2147483647)
  %i.xf = trunc i64 %i.xe to i32
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i129.i.i
  store i32 %i.xf, ptr %i.xg, align 4, !tbaa !71
  %indvars.iv.next.i131.i.i = or disjoint i64 %indvars.iv.i129.i.i, 1 ; 2 uses
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.i131.i.i
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !71
  %i.xj = sext i32 %i.xi to i64                   ; 2 uses
  %i.xk = mul nsw i64 %i.xj, %i.z
  %i.xl = icmp sgt i64 %i.xk, %i.wx
  %i.xm = select i1 %i.xl, i64 %i.xj, i64 0
  %spec.select.i130.i.i.1 = add nsw i64 %i.xm, %spec.select.i130.i.i ; 3 uses
  %i.xn = tail call i64 @llvm.smin.i64(i64 %spec.select.i130.i.i.1, i64 2147483647)
  %i.xo = trunc i64 %i.xn to i32
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.i131.i.i
  store i32 %i.xo, ptr %i.xp, align 4, !tbaa !71
  %indvars.iv.next.i131.i.i.1 = add nuw nsw i64 %indvars.iv.i129.i.i, 2 ; 2 uses
  %niter405.next.1 = add i64 %niter405, 2         ; 2 uses
  %niter405.ncmp.1 = icmp eq i64 %niter405.next.1, %unroll_iter404
  br i1 %niter405.ncmp.1, label %try_shift_candidate.exit.i.loopexit.unr-lcssa, label %.lr.ph.i128.i.i.new, !llvm.loop !43

try_shift_candidate.exit.i.loopexit.unr-lcssa:    ; preds = %.lr.ph.i128.i.i.new
  br i1 %lcmp.mod402.not, label %try_shift_candidate.exit.i, label %.epil.preheader400

.epil.preheader400:                               ; preds = %try_shift_candidate.exit.i.loopexit.unr-lcssa, %.lr.ph.i128.i.i
  %indvars.iv.i129.i.i.epil.init = phi i64 [ 0, %.lr.ph.i128.i.i ], [ %indvars.iv.next.i131.i.i.1, %try_shift_candidate.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.01315.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i128.i.i ], [ %spec.select.i130.i.i.1, %try_shift_candidate.exit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod403)
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i129.i.i.epil.init
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !71
  %i.xs = sext i32 %i.xr to i64                   ; 2 uses
  %i.xt = mul nsw i64 %i.xs, %i.z
  %i.xu = icmp sgt i64 %i.xt, %i.wx
  %i.xv = select i1 %i.xu, i64 %i.xs, i64 0
  %spec.select.i130.i.i.epil = add nsw i64 %i.xv, %.01315.i.i.i.epil.init
  %i.xw = tail call i64 @llvm.smin.i64(i64 %spec.select.i130.i.i.epil, i64 2147483647)
  %i.xx = trunc i64 %i.xw to i32
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i129.i.i.epil.init
  store i32 %i.xx, ptr %i.xy, align 4, !tbaa !71
  br label %try_shift_candidate.exit.i

try_shift_candidate.exit.i:                       ; preds = %.epil.preheader400, %try_shift_candidate.exit.i.loopexit.unr-lcssa, %simple_lbg.exit.i.i, %get_closest_codebook.exit.i, %bb.h
  %i.xz = phi i32 [ %i.ei, %bb.h ], [ %i.ei, %simple_lbg.exit.i.i ], [ %i.ei, %get_closest_codebook.exit.i ], [ %i.wm, %try_shift_candidate.exit.i.loopexit.unr-lcssa ], [ %i.wm, %.epil.preheader400 ] ; 2 uses
  %indvars.iv.next.i136 = add nuw nsw i64 %indvars.iv.i135, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next.i136, %i.z
  br i1 %exitcond210.not, label %do_shiftings.exit, label %bb.h, !llvm.loop !63

do_shiftings.exit:                                ; preds = %bb.i, %try_shift_candidate.exit.i, %bb.g
  %.promoted169181 = phi i32 [ %.promoted169180, %bb.g ], [ %i.xz, %try_shift_candidate.exit.i ], [ %i.ei, %bb.i ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.k, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %i.w, i1 false)
  br i1 %i.o, label %.lr.ph175, label %.preheader149

.lr.ph175:                                        ; preds = %do_shiftings.exit
  %i.ya = load ptr, ptr %i.x, align 8, !tbaa !18  ; 6 uses
  br i1 %i.ac, label %.lr.ph172.us, label %.lr.ph175.split.preheader

.lr.ph175.split.preheader:                        ; preds = %.lr.ph175
  br i1 %i.be, label %.lr.ph175.split.epil.preheader, label %.lr.ph175.split

.lr.ph172.us:                                     ; preds = %.lr.ph175, %._crit_edge173.us
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %._crit_edge173.us ], [ 0, %.lr.ph175 ] ; 3 uses
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv221 ; 4 uses
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !71
  %i.yd = sext i32 %i.yc to i64
  %i.ye = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.yd ; 2 uses
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !71
  %i.yg = add nsw i32 %i.yf, 1
  store i32 %i.yg, ptr %i.ye, align 4, !tbaa !71
  %i.yh = mul nuw nsw i64 %indvars.iv221, %wide.trip.count.i140
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.yh ; 3 uses
  br i1 %i.bf, label %.epil.preheader411, label %.lr.ph172.us.new

.lr.ph172.us.new:                                 ; preds = %.lr.ph172.us, %.lr.ph172.us.new
  %indvars.iv216 = phi i64 [ %indvars.iv.next217.1, %.lr.ph172.us.new ], [ 0, %.lr.ph172.us ] ; 4 uses
  %niter417 = phi i64 [ %niter417.next.1, %.lr.ph172.us.new ], [ 0, %.lr.ph172.us ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv216
  %i.yi = load i32, ptr %gep, align 4, !tbaa !71
  %i.yj = load i32, ptr %i.yb, align 4, !tbaa !71
  %i.yk = mul nsw i32 %i.yj, %i.t
  %i.yl = trunc nuw nsw i64 %indvars.iv216 to i32
  %i.ym = add nsw i32 %i.yk, %i.yl
  %i.yn = sext i32 %i.ym to i64
  %i.yo = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.yn ; 2 uses
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !71
  %i.yq = add nsw i32 %i.yp, %i.yi
  store i32 %i.yq, ptr %i.yo, align 4, !tbaa !71
  %indvars.iv.next217 = or disjoint i64 %indvars.iv216, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next217
  %i.yr = load i32, ptr %gep.1, align 4, !tbaa !71
  %i.ys = load i32, ptr %i.yb, align 4, !tbaa !71
  %i.yt = mul nsw i32 %i.ys, %i.t
  %i.yu = trunc nuw nsw i64 %indvars.iv.next217 to i32
  %i.yv = add nsw i32 %i.yt, %i.yu
  %i.yw = sext i32 %i.yv to i64
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.yw ; 2 uses
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !71
  %i.yz = add nsw i32 %i.yy, %i.yr
  store i32 %i.yz, ptr %i.yx, align 4, !tbaa !71
  %indvars.iv.next217.1 = add nuw nsw i64 %indvars.iv216, 2 ; 2 uses
  %niter417.next.1 = add i64 %niter417, 2         ; 2 uses
  %niter417.ncmp.1 = icmp eq i64 %niter417.next.1, %unroll_iter416
  br i1 %niter417.ncmp.1, label %._crit_edge173.us.unr-lcssa, label %.lr.ph172.us.new, !llvm.loop !64

._crit_edge173.us.unr-lcssa:                      ; preds = %.lr.ph172.us.new
  br i1 %lcmp.mod414.not, label %._crit_edge173.us, label %.epil.preheader411

.epil.preheader411:                               ; preds = %._crit_edge173.us.unr-lcssa, %.lr.ph172.us
  %indvars.iv216.epil.init = phi i64 [ 0, %.lr.ph172.us ], [ %indvars.iv.next217.1, %._crit_edge173.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod415)
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv216.epil.init
  %i.za = load i32, ptr %gep.epil, align 4, !tbaa !71
  %i.zb = load i32, ptr %i.yb, align 4, !tbaa !71
  %i.zc = mul nsw i32 %i.zb, %i.t
  %i.zd = trunc nuw nsw i64 %indvars.iv216.epil.init to i32
  %i.ze = add nsw i32 %i.zc, %i.zd
  %i.zf = sext i32 %i.ze to i64
  %i.zg = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.zf ; 2 uses
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !71
  %i.zi = add nsw i32 %i.zh, %i.za
  store i32 %i.zi, ptr %i.zg, align 4, !tbaa !71
  br label %._crit_edge173.us

._crit_edge173.us:                                ; preds = %._crit_edge173.us.unr-lcssa, %.epil.preheader411
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count224
  br i1 %exitcond225.not, label %.preheader149, label %.lr.ph172.us, !llvm.loop !65

.preheader149.loopexit360.unr-lcssa:              ; preds = %.lr.ph175.split
  br i1 %lcmp.mod407.not, label %.preheader149, label %.lr.ph175.split.epil.preheader

.lr.ph175.split.epil.preheader:                   ; preds = %.preheader149.loopexit360.unr-lcssa, %.lr.ph175.split.preheader
  %indvars.iv211.epil.init = phi i64 [ 0, %.lr.ph175.split.preheader ], [ %indvars.iv.next212.3, %.preheader149.loopexit360.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod408)
  br label %.lr.ph175.split.epil

.lr.ph175.split.epil:                             ; preds = %.lr.ph175.split.epil, %.lr.ph175.split.epil.preheader
  %indvars.iv211.epil = phi i64 [ %indvars.iv.next212.epil, %.lr.ph175.split.epil ], [ %indvars.iv211.epil.init, %.lr.ph175.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph175.split.epil ], [ 0, %.lr.ph175.split.epil.preheader ]
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv211.epil
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !71
  %i.zl = sext i32 %i.zk to i64
  %i.zm = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.zl ; 2 uses
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !71
  %i.zo = add nsw i32 %i.zn, 1
  store i32 %i.zo, ptr %i.zm, align 4, !tbaa !71
  %indvars.iv.next212.epil = add nuw nsw i64 %indvars.iv211.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter406
  br i1 %epil.iter.cmp.not, label %.preheader149, label %.lr.ph175.split.epil, !llvm.loop !66

.preheader149:                                    ; preds = %.preheader149.loopexit360.unr-lcssa, %.lr.ph175.split.epil, %._crit_edge173.us, %do_shiftings.exit
  br i1 %i.p, label %.lr.ph177, label %._crit_edge178

.lr.ph175.split:                                  ; preds = %.lr.ph175.split.preheader, %.lr.ph175.split
  %indvars.iv211 = phi i64 [ %indvars.iv.next212.3, %.lr.ph175.split ], [ 0, %.lr.ph175.split.preheader ] ; 5 uses
  %niter410 = phi i64 [ %niter410.next.3, %.lr.ph175.split ], [ 0, %.lr.ph175.split.preheader ]
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv211
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !71
  %i.zr = sext i32 %i.zq to i64
  %i.zs = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.zr ; 2 uses
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !71
  %i.zu = add nsw i32 %i.zt, 1
  store i32 %i.zu, ptr %i.zs, align 4, !tbaa !71
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv211
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 4
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !71
  %i.zy = sext i32 %i.zx to i64
  %i.zz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.zy ; 2 uses
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !71
  %i.aab = add nsw i32 %i.aaa, 1
  store i32 %i.aab, ptr %i.zz, align 4, !tbaa !71
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv211
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !71
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aaf ; 2 uses
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !71
  %i.aai = add nsw i32 %i.aah, 1
  store i32 %i.aai, ptr %i.aag, align 4, !tbaa !71
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv211
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 12
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !71
  %i.aam = sext i32 %i.aal to i64
  %i.aan = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aam ; 2 uses
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !71
  %i.aap = add nsw i32 %i.aao, 1
  store i32 %i.aap, ptr %i.aan, align 4, !tbaa !71
  %indvars.iv.next212.3 = add nuw nsw i64 %indvars.iv211, 4 ; 2 uses
  %niter410.next.3 = add i64 %niter410, 4         ; 2 uses
  %niter410.ncmp.3 = icmp eq i64 %niter410.next.3, %unroll_iter409
  br i1 %niter410.ncmp.3, label %.preheader149.loopexit360.unr-lcssa, label %.lr.ph175.split, !llvm.loop !65

._crit_edge178:                                   ; preds = %vect_division.exit, %.preheader149
  %i.aaq = sub nsw i32 %.promoted169183, %.promoted169181
  %i.aar = sitofp nsz i32 %i.aaq to double
  %i.aas = sitofp nsz i32 %.promoted169181 to double
  %i.aat = fmul nnan nsz double %i.aas, 1.000000e-01
  %i.aau = fcmp nsz olt double %i.aat, %i.aar
  %i.aav = icmp slt i32 %i.bh, %3
  %i.aaw = select i1 %i.aau, i1 %i.aav, i1 false
  br i1 %i.aaw, label %bb.b, label %bb.ar, !llvm.loop !67

.lr.ph177:                                        ; preds = %.preheader149, %vect_division.exit
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %vect_division.exit ], [ 0, %.preheader149 ] ; 3 uses
  %i.aax = mul nsw i64 %indvars.iv226, %i.ad
  %i.aay = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.aax ; 3 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv226
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !71 ; 5 uses
  %i.abb = icmp sgt i32 %i.aba, 1
  %or.cond = select i1 %i.abb, i1 %i.ac, i1 false
  br i1 %or.cond, label %.lr.ph.i139, label %vect_division.exit

.lr.ph.i139:                                      ; preds = %.lr.ph177
  %i.abc = lshr i32 %i.aba, 1                     ; 4 uses
  %i.abd = sub nsw i32 0, %i.abc                  ; 3 uses
  br i1 %i.bg, label %.epil.preheader418, label %.lr.ph.i139.new

.lr.ph.i139.new:                                  ; preds = %.lr.ph.i139, %.lr.ph.i139.new
  %indvars.iv.i141 = phi i64 [ %indvars.iv.next.i142.1, %.lr.ph.i139.new ], [ 0, %.lr.ph.i139 ] ; 3 uses
  %niter424 = phi i64 [ %niter424.next.1, %.lr.ph.i139.new ], [ 0, %.lr.ph.i139 ]
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %indvars.iv.i141 ; 2 uses
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !71 ; 2 uses
  %i.abg = icmp slt i32 %i.abf, 0
  %.p.i = select i1 %i.abg, i32 %i.abd, i32 %i.abc
  %i.abh = add i32 %.p.i, %i.abf
  %i.abi = sdiv i32 %i.abh, %i.aba
  store i32 %i.abi, ptr %i.abe, align 4, !tbaa !71
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %indvars.iv.i141
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 4 ; 2 uses
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !71 ; 2 uses
  %i.abm = icmp slt i32 %i.abl, 0
  %.p.i.1 = select i1 %i.abm, i32 %i.abd, i32 %i.abc
  %i.abn = add i32 %.p.i.1, %i.abl
  %i.abo = sdiv i32 %i.abn, %i.aba
  store i32 %i.abo, ptr %i.abk, align 4, !tbaa !71
  %indvars.iv.next.i142.1 = add nuw nsw i64 %indvars.iv.i141, 2 ; 2 uses
  %niter424.next.1 = add i64 %niter424, 2         ; 2 uses
  %niter424.ncmp.1 = icmp eq i64 %niter424.next.1, %unroll_iter423
  br i1 %niter424.ncmp.1, label %vect_division.exit.loopexit.unr-lcssa, label %.lr.ph.i139.new, !llvm.loop !49

vect_division.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph.i139.new
  br i1 %lcmp.mod421.not, label %vect_division.exit, label %.epil.preheader418

.epil.preheader418:                               ; preds = %vect_division.exit.loopexit.unr-lcssa, %.lr.ph.i139
  %indvars.iv.i141.epil.init = phi i64 [ 0, %.lr.ph.i139 ], [ %indvars.iv.next.i142.1, %vect_division.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod422)
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %indvars.iv.i141.epil.init ; 2 uses
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !71 ; 2 uses
  %i.abr = icmp slt i32 %i.abq, 0
  %.p.i.epil = select i1 %i.abr, i32 %i.abd, i32 %i.abc
  %i.abs = add i32 %.p.i.epil, %i.abq
  %i.abt = sdiv i32 %i.abs, %i.aba
  store i32 %i.abt, ptr %i.abp, align 4, !tbaa !71
  br label %vect_division.exit

vect_division.exit:                               ; preds = %.epil.preheader418, %vect_division.exit.loopexit.unr-lcssa, %.lr.ph177
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %i.z
  br i1 %exitcond230.not, label %._crit_edge178, label %.lr.ph177, !llvm.loop !68

bb.ar:                                            ; preds = %._crit_edge178
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define void @avpriv_elbg_free(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @av_freep(ptr noundef nonnull %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @av_freep(ptr noundef nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @av_freep(ptr noundef nonnull %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.e) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @av_freep(ptr noundef nonnull %i.f) #9
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  tail call void @av_freep(ptr noundef nonnull %i.g) #9
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @av_freep(ptr noundef nonnull %i.h) #9
  tail call void @av_freep(ptr noundef nonnull %0) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS11ELBGContext", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 int", !9, i64 0}
!13 = !{!"any p2 pointer", !9, i64 0}
!14 = !{!"p2 _ZTS6cell_s", !13, i64 0}
!15 = !{!"p1 _ZTS5AVLFG", !9, i64 0}
!16 = !{!"p1 _ZTS6cell_s", !9, i64 0}
!17 = !{!"ELBGContext", !6, i64 0, !6, i64 4, !6, i64 8, !12, i64 16, !14, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !15, i64 80, !12, i64 88, !16, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128}
!18 = !{!17, !12, i64 48}
!19 = !{!17, !15, i64 80}
!20 = !{!17, !12, i64 16}
!21 = !{!17, !6, i64 8}
!22 = !{!17, !6, i64 4}
!23 = !{!17, !14, i64 24}
!24 = !{!17, !12, i64 32}
!25 = !{!17, !12, i64 40}
!26 = !{!17, !12, i64 72}
!27 = !{!17, !16, i64 96}
!28 = !{!17, !12, i64 88}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!17, !6, i64 116}
!31 = !{!17, !6, i64 104}
!32 = !{!17, !6, i64 108}
!33 = !{!17, !6, i64 112}
!34 = !{!17, !6, i64 124}
!35 = !{!17, !6, i64 120}
!36 = !{!17, !6, i64 128}
!37 = !{!17, !12, i64 64}
!38 = distinct !{!38, !29}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29}
!42 = distinct !{!42, !29}
!43 = distinct !{!43, !29}
!44 = distinct !{!44, !29}
!45 = distinct !{!45, !29}
!46 = distinct !{!46, !29}
!47 = distinct !{!47, !29}
!48 = distinct !{!48, !29, !78}
!49 = distinct !{!49, !29}
!50 = distinct !{!50, !29, !79, !80}
!51 = distinct !{!51, !29, !80, !79}
!52 = distinct !{!52, !29, !79, !80}
!53 = distinct !{!53, !29}
!54 = distinct !{!54, !29, !78}
!55 = distinct !{!55, !29, !80, !79}
!56 = distinct !{!56, !29}
!57 = distinct !{!57, !29}
!58 = distinct !{!58, !29}
!59 = distinct !{!59, !29}
!60 = distinct !{!60, !29}
!61 = distinct !{!61, !29}
!62 = distinct !{!62, !29}
!63 = distinct !{!63, !29}
!64 = distinct !{!64, !29}
!65 = distinct !{!65, !29}
!66 = distinct !{!66, !81}
!67 = distinct !{!67, !29}
!68 = distinct !{!68, !29}
!69 = !{!17, !12, i64 56}
!70 = !{!17, !6, i64 0}
!71 = !{!6, !6, i64 0}
!72 = !{!"cell_s", !6, i64 0, !16, i64 8}
!73 = !{!72, !6, i64 0}
!74 = !{!16, !16, i64 0}
!75 = !{!72, !16, i64 8}
!76 = !{!"AVLFG", !5, i64 0, !6, i64 256}
!77 = !{!76, !6, i64 256}
!78 = !{!"llvm.loop.unswitch.partial.disable"}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
