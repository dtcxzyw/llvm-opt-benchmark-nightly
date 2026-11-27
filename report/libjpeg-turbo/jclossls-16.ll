Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jclossls-16?download=true
inline.NumInlined: 9
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@simple_downscale:iter.check
  %i.bo = getelementptr inbounds nuw i8, ptr %.03, i64 8
  store i16 %i.bn, ptr %i.bi, align 2, !tbaa !43
  %i.bp = add i32 %.0, -4                         ; 2 uses
  %.not.3 = icmp eq i32 %i.bp, 0
  br i1 %.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !56

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @noscale(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = shl nuw nsw i64 %i.a, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2, ptr align 2 %1, i64 %i.b, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal void @jpeg_difference_first_row(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 9 uses
  %i.c = load i16, ptr %2, align 2, !tbaa !43
  %i.d = zext i16 %i.c to i32                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !37
  %i.i = xor i32 %i.h, -1
  %i.j = add i32 %i.f, %i.i
  %.neg = shl nsw i32 -1, %i.j
  %i.k = add nsw i32 %.neg, %i.d
  store i32 %i.k, ptr %4, align 4, !tbaa !40
  %i.l = add i32 %5, -1                           ; 5 uses
  %.not51 = icmp eq i32 %i.l, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  br i1 %min.iters.check, label %.lr.ph.preheader59, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.m, 4294967288               ; 5 uses
  %i.n = trunc nuw i64 %n.vec to i32
  %i.o = sub i32 %i.l, %i.n
  %i.p = shl nuw nsw i64 %n.vec, 2
  %i.q = getelementptr i8, ptr %4, i64 %i.p
  %i.r = shl nuw nsw i64 %n.vec, 1
  %i.s = getelementptr i8, ptr %2, i64 %i.r
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.d, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.z, %vector.body ]
  %i.t = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %4, i64 %i.t  ; 2 uses
  %i.u = shl i64 %index, 1
  %next.gep55 = getelementptr i8, ptr %2, i64 %i.u ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %next.gep55, i64 2
  %i.x = getelementptr inbounds nuw i8, ptr %next.gep55, i64 10
  %wide.load = load <4 x i16>, ptr %i.w, align 2, !tbaa !43
  %wide.load56 = load <4 x i16>, ptr %i.x, align 2, !tbaa !43
  %i.y = zext <4 x i16> %wide.load to <4 x i32>   ; 3 uses
  %i.z = zext <4 x i16> %wide.load56 to <4 x i32> ; 4 uses
  %i.aa = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.y, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ab = shufflevector <4 x i32> %i.y, <4 x i32> %i.z, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ac = sub nsw <4 x i32> %i.y, %i.aa
  %i.ad = sub nsw <4 x i32> %i.z, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %i.ac, ptr %i.v, align 4, !tbaa !40
  store <4 x i32> %i.ad, ptr %i.ae, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.z, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader59

.lr.ph.preheader59:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.l, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  %.054.ph = phi i32 [ %i.d, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.pn5053.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  %.pn52.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader59, %.lr.ph
  %i.ag = phi i32 [ %i.ak, %.lr.ph ], [ %.ph, %.lr.ph.preheader59 ]
  %.054 = phi i32 [ %i.ai, %.lr.ph ], [ %.054.ph, %.lr.ph.preheader59 ]
  %.pn5053 = phi ptr [ %.045, %.lr.ph ], [ %.pn5053.ph, %.lr.ph.preheader59 ]
  %.pn52 = phi ptr [ %.046, %.lr.ph ], [ %.pn52.ph, %.lr.ph.preheader59 ]
  %.045 = getelementptr inbounds nuw i8, ptr %.pn5053, i64 4 ; 2 uses
  %.046 = getelementptr inbounds nuw i8, ptr %.pn52, i64 2 ; 2 uses
  %i.ah = load i16, ptr %.046, align 2, !tbaa !43
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = sub nsw i32 %i.ai, %.054
  store i32 %i.aj, ptr %.045, align 4, !tbaa !40
  %i.ak = add i32 %i.ag, -1                       ; 2 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !38
  %.not48 = icmp eq i32 %i.am, 0
  br i1 %.not48, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ao = sext i32 %1 to i64                      ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !40
  %i.ar = add i32 %i.aq, -1                       ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !40
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b
  %i.at = load i32, ptr %i.al, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.av = load i32, ptr %i.au, align 8, !tbaa !39
  %i.aw = udiv i32 %i.at, %i.av
  store i32 %i.aw, ptr %i.ap, align 4, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ao
  store ptr @jpeg_difference_first_row, ptr %i.ay, align 8, !tbaa !41
  br label %bb.l

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !61 ; 2 uses
  switch i32 %i.ba, label %bb.k [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bc = sext i32 %1 to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc
  store ptr @jpeg_difference1, ptr %i.bd, align 8, !tbaa !41
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bf = sext i32 %1 to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  store ptr @jpeg_difference2, ptr %i.bg, align 8, !tbaa !41
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bi = sext i32 %1 to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bi
  store ptr @jpeg_difference3, ptr %i.bj, align 8, !tbaa !41
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bl = sext i32 %1 to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  store ptr @jpeg_difference4, ptr %i.bm, align 8, !tbaa !41
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bo = sext i32 %1 to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  store ptr @jpeg_difference5, ptr %i.bp, align 8, !tbaa !41
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.br = sext i32 %1 to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.br
  store ptr @jpeg_difference6, ptr %i.bs, align 8, !tbaa !41
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bu = sext i32 %1 to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bu
  store ptr @jpeg_difference7, ptr %i.bv, align 8, !tbaa !41
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.bw = load ptr, ptr %0, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %6 = zext i32 %i.ba to i64
  %7 = shl nuw i64 %6, 32
  %8 = or disjoint i64 %7, 16
  store i64 %8, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !62
  %i.ca = load ptr, ptr %0, align 8, !tbaa !26
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !32
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !63
  %i.ce = load ptr, ptr %0, align 8, !tbaa !26
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 52
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !32
  %i.cg = load i32, ptr %i.g, align 8, !tbaa !37
  %i.ch = load ptr, ptr %0, align 8, !tbaa !26
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !32
  %i.cj = load ptr, ptr %0, align 8, !tbaa !26
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !33
  tail call void %i.ck(ptr noundef nonnull %0) #5
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @jpeg_difference1(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load i16, ptr %2, align 2, !tbaa !43
  %i.d = zext i16 %i.c to i32                     ; 3 uses
  %i.e = load i16, ptr %3, align 2, !tbaa !43
  %i.f = zext i16 %i.e to i32
  %i.g = sub nsw i32 %i.d, %i.f
  store i32 %i.g, ptr %4, align 4, !tbaa !40
  %i.h = add i32 %5, -1                           ; 5 uses
  %.not21 = icmp eq i32 %i.h, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, 4294967288               ; 5 uses
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %i.h, %i.j
  %i.l = shl nuw nsw i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %i.n = shl nuw nsw i64 %n.vec, 1
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.d, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.v, %vector.body ]
  %i.p = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %4, i64 %i.p  ; 2 uses
  %i.q = shl i64 %index, 1
  %next.gep25 = getelementptr i8, ptr %2, i64 %i.q ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep25, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep25, i64 10
  %wide.load = load <4 x i16>, ptr %i.s, align 2, !tbaa !43
  %wide.load26 = load <4 x i16>, ptr %i.t, align 2, !tbaa !43
  %i.u = zext <4 x i16> %wide.load to <4 x i32>   ; 3 uses
  %i.v = zext <4 x i16> %wide.load26 to <4 x i32> ; 4 uses
  %i.w = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.u, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.x = shufflevector <4 x i32> %i.u, <4 x i32> %i.v, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.y = sub nsw <4 x i32> %i.u, %i.w
  %i.z = sub nsw <4 x i32> %i.v, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %i.y, ptr %i.r, align 4, !tbaa !40
  store <4 x i32> %i.z, ptr %i.aa, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.v, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader29

.lr.ph.preheader29:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.024.ph = phi i32 [ %i.d, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.pn2023.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.pn22.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader29, %.lr.ph
  %i.ac = phi i32 [ %i.ag, %.lr.ph ], [ %.ph, %.lr.ph.preheader29 ]
  %.024 = phi i32 [ %i.ae, %.lr.ph ], [ %.024.ph, %.lr.ph.preheader29 ]
  %.pn2023 = phi ptr [ %.016, %.lr.ph ], [ %.pn2023.ph, %.lr.ph.preheader29 ]
  %.pn22 = phi ptr [ %.017, %.lr.ph ], [ %.pn22.ph, %.lr.ph.preheader29 ]
  %.016 = getelementptr inbounds nuw i8, ptr %.pn2023, i64 4 ; 2 uses
  %.017 = getelementptr inbounds nuw i8, ptr %.pn22, i64 2 ; 2 uses
  %i.ad = load i16, ptr %.017, align 2, !tbaa !43
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = sub nsw i32 %i.ae, %.024
  store i32 %i.af, ptr %.016, align 4, !tbaa !40
  %i.ag = add i32 %i.ac, -1                       ; 2 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !65

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !38
  %.not19 = icmp eq i32 %i.ai, 0
  br i1 %.not19, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ak = sext i32 %1 to i64                      ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ak ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !40
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4, !tbaa !40
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ap = load i32, ptr %i.ah, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !39
  %i.as = udiv i32 %i.ap, %i.ar
  store i32 %i.as, ptr %i.al, align 4, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ak
  store ptr @jpeg_difference_first_row, ptr %i.au, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @jpeg_difference2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load i16, ptr %3, align 2, !tbaa !43
  %i.d = zext i16 %i.c to i32
  %i.e = load i16, ptr %2, align 2, !tbaa !43
  %i.f = zext i16 %i.e to i32
  %i.g = sub nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %4, align 4, !tbaa !40
  %i.h = add i32 %5, -1                           ; 5 uses
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph.preheader38, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, 4294967288               ; 5 uses
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %i.h, %i.j
  %i.l = shl nuw nsw i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %i.n = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.o = getelementptr i8, ptr %3, i64 %i.n
  %i.p = getelementptr i8, ptr %2, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %4, i64 %i.q  ; 2 uses
  %i.r = shl i64 %index, 1                        ; 2 uses
  %next.gep30 = getelementptr i8, ptr %3, i64 %i.r ; 2 uses
  %next.gep31 = getelementptr i8, ptr %2, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep31, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep30, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep30, i64 10
  %wide.load = load <4 x i16>, ptr %i.u, align 2, !tbaa !43
  %wide.load32 = load <4 x i16>, ptr %i.v, align 2, !tbaa !43
  %i.w = zext <4 x i16> %wide.load to <4 x i32>
  %i.x = zext <4 x i16> %wide.load32 to <4 x i32>
  %i.y = getelementptr inbounds nuw i8, ptr %next.gep31, i64 10
  %wide.load33 = load <4 x i16>, ptr %i.t, align 2, !tbaa !43
  %wide.load34 = load <4 x i16>, ptr %i.y, align 2, !tbaa !43
  %i.z = zext <4 x i16> %wide.load33 to <4 x i32>
  %i.aa = zext <4 x i16> %wide.load34 to <4 x i32>
  %i.ab = sub nsw <4 x i32> %i.z, %i.w
  %i.ac = sub nsw <4 x i32> %i.aa, %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %i.ab, ptr %i.s, align 4, !tbaa !40
  store <4 x i32> %i.ac, ptr %i.ad, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader38
end_hunk_0
