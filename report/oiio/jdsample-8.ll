loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@h2v1_upsample:bb.a
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %i.t, -4                     ; 4 uses
  %i.ai = getelementptr i8, ptr %i.n, i64 %n.vec35
  %i.aj = shl i64 %n.vec35, 1
  %i.ak = getelementptr i8, ptr %i.h, i64 %i.aj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %next.gep37 = getelementptr i8, ptr %i.n, i64 %index36
  %i.al = shl i64 %index36, 1
  %next.gep38 = getelementptr i8, ptr %i.h, i64 %i.al
  %wide.load39 = load <4 x i8>, ptr %next.gep37, align 1, !tbaa !39, !alias.scope !88
  %interleaved.vec40 = shufflevector <4 x i8> %wide.load39, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %interleaved.vec40, ptr %next.gep38, align 1, !tbaa !39, !alias.scope !91, !noalias !88
  %index.next41 = add nuw i64 %index36, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next41, %n.vec35
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !95

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.t, %n.vec35
  br i1 %cmp.n42, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01619.ph = phi ptr [ %i.n, %iter.check ], [ %i.n, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.01718.ph = phi ptr [ %i.h, %iter.check ], [ %i.h, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01619 = phi ptr [ %i.an, %.lr.ph ], [ %.01619.ph, %.lr.ph.preheader ] ; 2 uses
  %.01718 = phi ptr [ %i.aq, %.lr.ph ], [ %.01718.ph, %.lr.ph.preheader ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01619, i64 1
  %i.ao = load i8, ptr %.01619, align 1, !tbaa !39 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01718, i64 1
  store i8 %i.ao, ptr %.01718, align 1, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %.01718, i64 2 ; 2 uses
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !39
  %i.ar = icmp ult ptr %i.aq, %i.l
  br i1 %i.ar, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !96

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %i.b, align 4, !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.as = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.b, label %._crit_edge23, !llvm.loop !97

._crit_edge23:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h1v2_fancy_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !72     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !61   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge38

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !63   ; 3 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge38, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.split.us
  %i.g = phi i32 [ %i.az, %.split.us ], [ %i.c, %.preheader.lr.ph ]
  %i.h = phi i32 [ %i.ba, %.split.us ], [ %i.f, %.preheader.lr.ph ] ; 2 uses
  %i.i = phi i32 [ %i.bb, %.split.us ], [ %i.f, %.preheader.lr.ph ] ; 2 uses
  %i.j = phi i32 [ %i.bc, %.split.us ], [ 1, %.preheader.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next46, %.split.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.02237 = phi i32 [ %.us-phi, %.split.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %.not39 = icmp eq i32 %i.j, 0
  br i1 %.not39, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.l = sext i32 %.02237 to i64                  ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !77   ; 2 uses
  %.not40 = icmp eq i32 %i.i, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.split.preheader
  %i.n = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77
  %.028.in = getelementptr i8, ptr %i.k, i64 -8
  %.028 = load ptr, ptr %.028.in, align 8, !tbaa !77
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02433 = phi i32 [ %i.ab, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02632 = phi ptr [ %i.p, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.02731 = phi ptr [ %i.aa, %.lr.ph ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  %.12930 = phi ptr [ %i.t, %.lr.ph ], [ %.028, %.lr.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02632, i64 1
  %i.q = load i8, ptr %.02632, align 1, !tbaa !39
  %i.r = zext i8 %i.q to i16
  %i.s = mul nuw nsw i16 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %.12930, i64 1
  %i.u = load i8, ptr %.12930, align 1, !tbaa !39
  %i.v = zext i8 %i.u to i16
  %i.w = add nuw nsw i16 %i.v, 1
  %i.x = add nuw nsw i16 %i.w, %i.s
  %i.y = lshr i16 %i.x, 2
  %i.z = trunc nuw i16 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %.02731, i64 1
  store i8 %i.z, ptr %.02731, align 1, !tbaa !39
  %i.ab = add nuw i32 %.02433, 1                  ; 2 uses
  %i.ac = load i32, ptr %i.e, align 4, !tbaa !63  ; 2 uses
  %i.ad = icmp ult i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !98

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !77
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader.split.preheader
  %i.ae = phi i32 [ %i.ac, %._crit_edge.loopexit ], [ %i.h, %.preheader.split.preheader ]
  %i.af = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.m, %.preheader.split.preheader ]
  %.not40.1 = icmp eq i32 %i.ae, 0
  br i1 %.not40.1, label %._crit_edge.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %._crit_edge
  %i.ag = getelementptr [8 x i8], ptr %i.a, i64 %i.l
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !77
  %.028.in.1 = getelementptr i8, ptr %i.k, i64 8
  %.028.1 = load ptr, ptr %.028.in.1, align 8, !tbaa !77
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1, %.lr.ph.preheader.1
  %.02433.1 = phi i32 [ %i.av, %.lr.ph.1 ], [ 0, %.lr.ph.preheader.1 ]
  %.02632.1 = phi ptr [ %i.aj, %.lr.ph.1 ], [ %i.af, %.lr.ph.preheader.1 ] ; 2 uses
  %.02731.1 = phi ptr [ %i.au, %.lr.ph.1 ], [ %i.ai, %.lr.ph.preheader.1 ] ; 2 uses
  %.12930.1 = phi ptr [ %i.an, %.lr.ph.1 ], [ %.028.1, %.lr.ph.preheader.1 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02632.1, i64 1
  %i.ak = load i8, ptr %.02632.1, align 1, !tbaa !39
  %i.al = zext i8 %i.ak to i16
  %i.am = mul nuw nsw i16 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %.12930.1, i64 1
  %i.ao = load i8, ptr %.12930.1, align 1, !tbaa !39
  %i.ap = zext i8 %i.ao to i16
  %i.aq = add nuw nsw i16 %i.ap, 2
  %i.ar = add nuw nsw i16 %i.aq, %i.am
  %i.as = lshr i16 %i.ar, 2
  %i.at = trunc nuw i16 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.02731.1, i64 1
  store i8 %i.at, ptr %.02731.1, align 1, !tbaa !39
  %i.av = add nuw i32 %.02433.1, 1                ; 2 uses
  %i.aw = load i32, ptr %i.e, align 4, !tbaa !63  ; 2 uses
  %i.ax = icmp ult i32 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.1, label %._crit_edge.1, !llvm.loop !98

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %i.ay = phi i32 [ 0, %._crit_edge ], [ %i.aw, %.lr.ph.1 ] ; 3 uses
  %.pre48 = load i32, ptr %i.b, align 4, !tbaa !61
  br label %.split.us

.split.us:                                        ; preds = %.preheader, %._crit_edge.1
  %i.az = phi i32 [ %.pre48, %._crit_edge.1 ], [ %i.g, %.preheader ] ; 2 uses
  %i.ba = phi i32 [ %i.ay, %._crit_edge.1 ], [ %i.h, %.preheader ]
  %i.bb = phi i32 [ %i.ay, %._crit_edge.1 ], [ %i.i, %.preheader ]
  %i.bc = phi i32 [ %i.ay, %._crit_edge.1 ], [ 0, %.preheader ]
  %.us-phi = add i32 %.02237, 2                   ; 2 uses
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv, 1
  %i.bd = icmp slt i32 %.us-phi, %i.az
  br i1 %i.bd, label %.preheader, label %._crit_edge38, !llvm.loop !99

._crit_edge38:                                    ; preds = %.split.us, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_fancy_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !72     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !61
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge68

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge.1
  %indvars.iv.a = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next72, %._crit_edge.1 ] ; 2 uses
  %.04367 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.1 ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.a ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77   ; 4 uses
  %.049.in = getelementptr i8, ptr %i.f, i64 -8
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !77 ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04367
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = load i8, ptr %i.g, align 1, !tbaa !39
  %i.l = zext i8 %i.k to i32
  %i.m = mul nuw nsw i32 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %.049, i64 1
  %i.o = load i8, ptr %.049, align 1, !tbaa !39
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %i.m, %i.p               ; 6 uses
  %i.r = load i8, ptr %i.j, align 1, !tbaa !39
  %i.s = zext i8 %i.r to i32
  %i.t = mul nuw nsw i32 %i.s, 3
  %i.u = load i8, ptr %i.n, align 1, !tbaa !39
  %i.v = zext i8 %i.u to i32
  %i.w = add nuw nsw i32 %i.t, %i.v               ; 5 uses
  %i.x = shl nuw nsw i32 %i.q, 2
  %i.y = add nuw nsw i32 %i.x, 8
  %i.z = lshr i32 %i.y, 4
  %i.aa = trunc nuw i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.aa, ptr %i.i, align 1, !tbaa !39
  %i.ac = mul nuw nsw i32 %i.q, 3
  %i.ad = add nuw nsw i32 %i.ac, 7
  %i.ae = add nuw nsw i32 %i.ad, %i.w
  %i.af = lshr i32 %i.ae, 4
  %i.ag = trunc nuw i32 %i.af to i8
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !39
  %i.ah = load i32, ptr %i.e, align 4, !tbaa !63  ; 2 uses
  %i.ai = add i32 %i.ah, -2                       ; 6 uses
  %.04852 = getelementptr i8, ptr %i.i, i64 2     ; 7 uses
  %.not53 = icmp eq i32 %i.ai, 0
  br i1 %.not53, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.aj = getelementptr i8, ptr %.049, i64 2      ; 5 uses
  %i.ak = getelementptr i8, ptr %i.g, i64 2       ; 5 uses
  %i.al = zext i32 %i.ai to i64                   ; 2 uses
  %min.iters.check114 = icmp ult i32 %i.ai, 8
  br i1 %min.iters.check114, label %.lr.ph.preheader142, label %vector.memcheck99

vector.memcheck99:                                ; preds = %.lr.ph.preheader
  %scevgep100 = getelementptr i8, ptr %i.i, i64 4
  %i.am = add i32 %i.ah, -3
  %i.an = zext i32 %i.am to i64                   ; 3 uses
  %i.ao = shl nuw nsw i64 %i.an, 1
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.ao ; 2 uses
  %scevgep102 = getelementptr i8, ptr %i.g, i64 3
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.an
  %scevgep104 = getelementptr i8, ptr %.049, i64 3
  %scevgep105 = getelementptr i8, ptr %scevgep104, i64 %i.an
  %bound0106 = icmp ult ptr %.04852, %scevgep103
  %bound1107 = icmp ult ptr %i.ak, %scevgep101
  %found.conflict108 = and i1 %bound0106, %bound1107
  %bound0109 = icmp ult ptr %.04852, %scevgep105
  %bound1110 = icmp ult ptr %i.aj, %scevgep101
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %found.conflict108, %found.conflict111
  br i1 %conflict.rdx112, label %.lr.ph.preheader142, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck99
  %n.vec116 = and i64 %i.al, 4294967288           ; 6 uses
  %i.ap = shl nuw nsw i64 %n.vec116, 1            ; 2 uses
  %i.aq = getelementptr i8, ptr %.04852, i64 %i.ap ; 2 uses
  %i.ar = trunc nuw i64 %n.vec116 to i32
  %i.as = sub i32 %i.ai, %i.ar
  %i.at = getelementptr i8, ptr %i.i, i64 %i.ap   ; 2 uses
  %i.au = getelementptr i8, ptr %i.aj, i64 %n.vec116
  %i.av = getelementptr i8, ptr %i.ak, i64 %n.vec116
  %vector.recur.init119 = insertelement <8 x i32> poison, i32 %i.q, i64 7
  %vector.recur.init121 = insertelement <8 x i32> poison, i32 %i.w, i64 7
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next129, %vector.body117 ] ; 4 uses
  %vector.recur120 = phi <8 x i32> [ %vector.recur.init119, %vector.ph115 ], [ %i.bb, %vector.body117 ]
  %vector.recur122 = phi <8 x i32> [ %vector.recur.init121, %vector.ph115 ], [ %i.ba, %vector.body117 ]
  %i.aw = shl i64 %index118, 1
  %next.gep123 = getelementptr i8, ptr %.04852, i64 %i.aw
  %next.gep124 = getelementptr i8, ptr %i.aj, i64 %index118
  %next.gep125 = getelementptr i8, ptr %i.ak, i64 %index118
  %wide.load126 = load <8 x i8>, ptr %next.gep125, align 1, !tbaa !39, !alias.scope !101
  %i.ax = zext <8 x i8> %wide.load126 to <8 x i32>
  %i.ay = mul nuw nsw <8 x i32> %i.ax, splat (i32 3)
  %wide.load127 = load <8 x i8>, ptr %next.gep124, align 1, !tbaa !39, !alias.scope !104
  %i.az = zext <8 x i8> %wide.load127 to <8 x i32>
  %i.ba = add nuw nsw <8 x i32> %i.ay, %i.az      ; 6 uses
  %i.bb = shufflevector <8 x i32> %vector.recur122, <8 x i32> %i.ba, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.bc = shufflevector <8 x i32> %vector.recur120, <8 x i32> %i.bb, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bd = mul nuw nsw <8 x i32> %i.bb, splat (i32 3) ; 2 uses
  %i.be = add nuw nsw <8 x i32> %i.bc, splat (i32 8)
  %i.bf = add nuw nsw <8 x i32> %i.be, %i.bd
  %i.bg = add nuw nsw <8 x i32> %i.bd, splat (i32 7)
  %i.bh = add nuw nsw <8 x i32> %i.bg, %i.ba
  %i.bi = shufflevector <8 x i32> %i.bf, <8 x i32> %i.bh, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bj = lshr <16 x i32> %i.bi, splat (i32 4)
  %interleaved.vec128 = trunc nuw <16 x i32> %i.bj to <16 x i8>
  store <16 x i8> %interleaved.vec128, ptr %next.gep123, align 1, !tbaa !39, !alias.scope !106, !noalias !108
  %index.next129 = add nuw i64 %index118, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next129, %n.vec116
  br i1 %i.bk, label %middle.block130, label %vector.body117, !llvm.loop !109

middle.block130:                                  ; preds = %vector.body117
  %vector.recur.extract.for.phi131 = extractelement <8 x i32> %i.ba, i64 6
  %vector.recur.extract132 = extractelement <8 x i32> %i.ba, i64 6
  %vector.recur.extract133 = extractelement <8 x i32> %i.ba, i64 7 ; 2 uses
  %cmp.n134 = icmp eq i64 %n.vec116, %i.al
  br i1 %cmp.n134, label %._crit_edge, label %.lr.ph.preheader142

.lr.ph.preheader142:                              ; preds = %vector.memcheck99, %.lr.ph.preheader, %middle.block130
  %.04860.ph = phi ptr [ %.04852, %vector.memcheck99 ], [ %.04852, %.lr.ph.preheader ], [ %i.aq, %middle.block130 ]
  %.04559.ph = phi i32 [ %i.ai, %vector.memcheck99 ], [ %i.ai, %.lr.ph.preheader ], [ %i.as, %middle.block130 ]
  %.04658.ph = phi i32 [ %i.q, %vector.memcheck99 ], [ %i.q, %.lr.ph.preheader ], [ %vector.recur.extract132, %middle.block130 ]
  %.04757.ph = phi i32 [ %i.w, %vector.memcheck99 ], [ %i.w, %.lr.ph.preheader ], [ %vector.recur.extract133, %middle.block130 ]
  %.pn56.ph = phi ptr [ %i.i, %vector.memcheck99 ], [ %i.i, %.lr.ph.preheader ], [ %i.at, %middle.block130 ]
  %.15055.ph = phi ptr [ %i.aj, %vector.memcheck99 ], [ %i.aj, %.lr.ph.preheader ], [ %i.au, %middle.block130 ]
  %.05154.ph = phi ptr [ %i.ak, %vector.memcheck99 ], [ %i.ak, %.lr.ph.preheader ], [ %i.av, %middle.block130 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader142, %.lr.ph
  %.04860 = phi ptr [ %.048, %.lr.ph ], [ %.04860.ph, %.lr.ph.preheader142 ] ; 4 uses
  %.04559 = phi i32 [ %i.cd, %.lr.ph ], [ %.04559.ph, %.lr.ph.preheader142 ]
  %.04658 = phi i32 [ %.04757, %.lr.ph ], [ %.04658.ph, %.lr.ph.preheader142 ]
  %.04757 = phi i32 [ %i.bs, %.lr.ph ], [ %.04757.ph, %.lr.ph.preheader142 ] ; 3 uses
  %.pn56 = phi ptr [ %.04860, %.lr.ph ], [ %.pn56.ph, %.lr.ph.preheader142 ]
  %.15055 = phi ptr [ %i.bp, %.lr.ph ], [ %.15055.ph, %.lr.ph.preheader142 ] ; 2 uses
  %.05154 = phi ptr [ %i.bl, %.lr.ph ], [ %.05154.ph, %.lr.ph.preheader142 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05154, i64 1
  %i.bm = load i8, ptr %.05154, align 1, !tbaa !39
  %i.bn = zext i8 %i.bm to i32
  %i.bo = mul nuw nsw i32 %i.bn, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %.15055, i64 1
  %i.bq = load i8, ptr %.15055, align 1, !tbaa !39
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nuw nsw i32 %i.bo, %i.br            ; 3 uses
  %i.bt = mul nuw nsw i32 %.04757, 3              ; 2 uses
  %i.bu = add nuw nsw i32 %.04658, 8
  %i.bv = add nuw nsw i32 %i.bu, %i.bt
  %i.bw = lshr i32 %i.bv, 4
  %i.bx = trunc nuw i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.pn56, i64 3
  store i8 %i.bx, ptr %.04860, align 1, !tbaa !39
  %i.bz = add nuw nsw i32 %i.bt, 7
  %i.ca = add nuw nsw i32 %i.bz, %i.bs
  %i.cb = lshr i32 %i.ca, 4
  %i.cc = trunc nuw i32 %i.cb to i8
  store i8 %i.cc, ptr %i.by, align 1, !tbaa !39
  %i.cd = add i32 %.04559, -1                     ; 2 uses
  %.048 = getelementptr inbounds nuw i8, ptr %.04860, i64 2 ; 2 uses
  %.not = icmp eq i32 %i.cd, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %.lr.ph, %middle.block130, %.preheader
  %.pn.lcssa = phi ptr [ %i.i, %.preheader ], [ %i.at, %middle.block130 ], [ %.04860, %.lr.ph ]
  %.047.lcssa = phi i32 [ %i.w, %.preheader ], [ %vector.recur.extract133, %middle.block130 ], [ %i.bs, %.lr.ph ] ; 2 uses
  %.046.lcssa = phi i32 [ %i.q, %.preheader ], [ %vector.recur.extract.for.phi131, %middle.block130 ], [ %.04757, %.lr.ph ]
  %.048.lcssa = phi ptr [ %.04852, %.preheader ], [ %i.aq, %middle.block130 ], [ %.048, %.lr.ph ]
  %i.ce = mul nuw nsw i32 %.047.lcssa, 3
  %i.cf = add nuw nsw i32 %.046.lcssa, 8
  %i.cg = add nuw nsw i32 %i.cf, %i.ce
  %i.ch = lshr i32 %i.cg, 4
  %i.ci = trunc nuw i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 3
  store i8 %i.ci, ptr %.048.lcssa, align 1, !tbaa !39
  %i.ck = shl nuw nsw i32 %.047.lcssa, 2
  %i.cl = add nuw nsw i32 %i.ck, 4
  %i.cm = lshr i32 %i.cl, 4
  %i.cn = trunc nuw i32 %i.cm to i8
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !39
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !77  ; 4 uses
  %.049.in.1 = getelementptr i8, ptr %i.f, i64 8
  %.049.1 = load ptr, ptr %.049.in.1, align 8, !tbaa !77 ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %.04367, 2 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04367
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !77 ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.ct = load i8, ptr %i.co, align 1, !tbaa !39
  %i.cu = zext i8 %i.ct to i32
  %i.cv = mul nuw nsw i32 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %.049.1, i64 1
  %i.cx = load i8, ptr %.049.1, align 1, !tbaa !39
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add nuw nsw i32 %i.cv, %i.cy            ; 6 uses
  %i.da = load i8, ptr %i.cs, align 1, !tbaa !39
  %i.db = zext i8 %i.da to i32
  %i.dc = mul nuw nsw i32 %i.db, 3
  %i.dd = load i8, ptr %i.cw, align 1, !tbaa !39
  %i.de = zext i8 %i.dd to i32
  %i.df = add nuw nsw i32 %i.dc, %i.de            ; 5 uses
  %i.dg = shl nuw nsw i32 %i.cz, 2
  %i.dh = add nuw nsw i32 %i.dg, 8
  %i.di = lshr i32 %i.dh, 4
  %i.dj = trunc nuw i32 %i.di to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store i8 %i.dj, ptr %i.cr, align 1, !tbaa !39
  %i.dl = mul nuw nsw i32 %i.cz, 3
  %i.dm = add nuw nsw i32 %i.dl, 7
  %i.dn = add nuw nsw i32 %i.dm, %i.df
  %i.do = lshr i32 %i.dn, 4
  %i.dp = trunc nuw i32 %i.do to i8
  store i8 %i.dp, ptr %i.dk, align 1, !tbaa !39
  %i.dq = load i32, ptr %i.e, align 4, !tbaa !63  ; 2 uses
  %i.dr = add i32 %i.dq, -2                       ; 6 uses
  %.04852.1 = getelementptr i8, ptr %i.cr, i64 2  ; 7 uses
  %.not53.1 = icmp eq i32 %i.dr, 0
  br i1 %.not53.1, label %._crit_edge.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %._crit_edge
  %i.ds = getelementptr i8, ptr %.049.1, i64 2    ; 5 uses
  %i.dt = getelementptr i8, ptr %i.co, i64 2      ; 5 uses
  %i.du = zext i32 %i.dr to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.dr, 8
  br i1 %min.iters.check, label %.lr.ph.1.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.1
  %scevgep = getelementptr i8, ptr %i.cr, i64 4
  %i.dv = add i32 %i.dq, -3
  %i.dw = zext i32 %i.dv to i64                   ; 3 uses
  %i.dx = shl nuw nsw i64 %i.dw, 1
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.dx ; 2 uses
  %scevgep81 = getelementptr i8, ptr %i.co, i64 3
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.dw
  %scevgep83 = getelementptr i8, ptr %.049.1, i64 3
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.dw
  %bound0 = icmp ult ptr %.04852.1, %scevgep82
  %bound1 = icmp ult ptr %i.dt, %scevgep80
  %found.conflict = and i1 %bound0, %bound1
  %bound085 = icmp ult ptr %.04852.1, %scevgep84
  %bound186 = icmp ult ptr %i.ds, %scevgep80
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx = or i1 %found.conflict, %found.conflict87
  br i1 %conflict.rdx, label %.lr.ph.1.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.du, 4294967288              ; 6 uses
  %i.dy = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.dz = getelementptr i8, ptr %.04852.1, i64 %i.dy ; 2 uses
  %i.ea = trunc nuw i64 %n.vec to i32
  %i.eb = sub i32 %i.dr, %i.ea
  %i.ec = getelementptr i8, ptr %i.cr, i64 %i.dy  ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ds, i64 %n.vec
  %i.ee = getelementptr i8, ptr %i.dt, i64 %n.vec
  %vector.recur.init = insertelement <8 x i32> poison, i32 %i.cz, i64 7
  %vector.recur.init88 = insertelement <8 x i32> poison, i32 %i.df, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <8 x i32> [ %vector.recur.init, %vector.ph ], [ %i.ek, %vector.body ]
  %vector.recur89 = phi <8 x i32> [ %vector.recur.init88, %vector.ph ], [ %i.ej, %vector.body ]
  %i.ef = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.04852.1, i64 %i.ef
  %next.gep90 = getelementptr i8, ptr %i.ds, i64 %index
  %next.gep91 = getelementptr i8, ptr %i.dt, i64 %index
  %wide.load = load <8 x i8>, ptr %next.gep91, align 1, !tbaa !39, !alias.scope !111
  %i.eg = zext <8 x i8> %wide.load to <8 x i32>
  %i.eh = mul nuw nsw <8 x i32> %i.eg, splat (i32 3)
  %wide.load92 = load <8 x i8>, ptr %next.gep90, align 1, !tbaa !39, !alias.scope !114
  %i.ei = zext <8 x i8> %wide.load92 to <8 x i32>
  %i.ej = add nuw nsw <8 x i32> %i.eh, %i.ei      ; 6 uses
  %i.ek = shufflevector <8 x i32> %vector.recur89, <8 x i32> %i.ej, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.el = shufflevector <8 x i32> %vector.recur, <8 x i32> %i.ek, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.em = mul nuw nsw <8 x i32> %i.ek, splat (i32 3) ; 2 uses
  %i.en = add nuw nsw <8 x i32> %i.el, splat (i32 8)
  %i.eo = add nuw nsw <8 x i32> %i.en, %i.em
  %i.ep = add nuw nsw <8 x i32> %i.em, splat (i32 7)
  %i.eq = add nuw nsw <8 x i32> %i.ep, %i.ej
  %i.er = shufflevector <8 x i32> %i.eo, <8 x i32> %i.eq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.es = lshr <16 x i32> %i.er, splat (i32 4)
  %interleaved.vec = trunc nuw <16 x i32> %i.es to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !39, !alias.scope !116, !noalias !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract.for.phi = extractelement <8 x i32> %i.ej, i64 6
  %vector.recur.extract = extractelement <8 x i32> %i.ej, i64 6
  %vector.recur.extract93 = extractelement <8 x i32> %i.ej, i64 7 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.du
  br i1 %cmp.n, label %._crit_edge.1, label %.lr.ph.1.preheader

.lr.ph.1.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.1, %middle.block
  %.04860.1.ph = phi ptr [ %.04852.1, %vector.memcheck ], [ %.04852.1, %.lr.ph.preheader.1 ], [ %i.dz, %middle.block ]
  %.04559.1.ph = phi i32 [ %i.dr, %vector.memcheck ], [ %i.dr, %.lr.ph.preheader.1 ], [ %i.eb, %middle.block ]
  %.04658.1.ph = phi i32 [ %i.cz, %vector.memcheck ], [ %i.cz, %.lr.ph.preheader.1 ], [ %vector.recur.extract, %middle.block ]
  %.04757.1.ph = phi i32 [ %i.df, %vector.memcheck ], [ %i.df, %.lr.ph.preheader.1 ], [ %vector.recur.extract93, %middle.block ]
  %.pn56.1.ph = phi ptr [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph.preheader.1 ], [ %i.ec, %middle.block ]
  %.15055.1.ph = phi ptr [ %i.ds, %vector.memcheck ], [ %i.ds, %.lr.ph.preheader.1 ], [ %i.ed, %middle.block ]
  %.05154.1.ph = phi ptr [ %i.dt, %vector.memcheck ], [ %i.dt, %.lr.ph.preheader.1 ], [ %i.ee, %middle.block ]
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1.preheader, %.lr.ph.1
  %.04860.1 = phi ptr [ %.048.1, %.lr.ph.1 ], [ %.04860.1.ph, %.lr.ph.1.preheader ] ; 4 uses
  %.04559.1 = phi i32 [ %i.fm, %.lr.ph.1 ], [ %.04559.1.ph, %.lr.ph.1.preheader ]
  %.04658.1 = phi i32 [ %.04757.1, %.lr.ph.1 ], [ %.04658.1.ph, %.lr.ph.1.preheader ]
  %.04757.1 = phi i32 [ %i.fb, %.lr.ph.1 ], [ %.04757.1.ph, %.lr.ph.1.preheader ] ; 3 uses
  %.pn56.1 = phi ptr [ %.04860.1, %.lr.ph.1 ], [ %.pn56.1.ph, %.lr.ph.1.preheader ]
  %.15055.1 = phi ptr [ %i.ey, %.lr.ph.1 ], [ %.15055.1.ph, %.lr.ph.1.preheader ] ; 2 uses
  %.05154.1 = phi ptr [ %i.eu, %.lr.ph.1 ], [ %.05154.1.ph, %.lr.ph.1.preheader ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.05154.1, i64 1
  %i.ev = load i8, ptr %.05154.1, align 1, !tbaa !39
  %i.ew = zext i8 %i.ev to i32
  %i.ex = mul nuw nsw i32 %i.ew, 3
  %i.ey = getelementptr inbounds nuw i8, ptr %.15055.1, i64 1
  %i.ez = load i8, ptr %.15055.1, align 1, !tbaa !39
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nuw nsw i32 %i.ex, %i.fa            ; 3 uses
  %i.fc = mul nuw nsw i32 %.04757.1, 3            ; 2 uses
  %i.fd = add nuw nsw i32 %.04658.1, 8
  %i.fe = add nuw nsw i32 %i.fd, %i.fc
  %i.ff = lshr i32 %i.fe, 4
  %i.fg = trunc nuw i32 %i.ff to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %.pn56.1, i64 3
  store i8 %i.fg, ptr %.04860.1, align 1, !tbaa !39
  %i.fi = add nuw nsw i32 %i.fc, 7
  %i.fj = add nuw nsw i32 %i.fi, %i.fb
  %i.fk = lshr i32 %i.fj, 4
  %i.fl = trunc nuw i32 %i.fk to i8
  store i8 %i.fl, ptr %i.fh, align 1, !tbaa !39
  %i.fm = add i32 %.04559.1, -1                   ; 2 uses
  %.048.1 = getelementptr inbounds nuw i8, ptr %.04860.1, i64 2 ; 2 uses
  %.not.1 = icmp eq i32 %i.fm, 0
  br i1 %.not.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !120

._crit_edge.1:                                    ; preds = %.lr.ph.1, %middle.block, %._crit_edge
  %.pn.lcssa.1 = phi ptr [ %i.cr, %._crit_edge ], [ %i.ec, %middle.block ], [ %.04860.1, %.lr.ph.1 ]
  %.047.lcssa.1 = phi i32 [ %i.df, %._crit_edge ], [ %vector.recur.extract93, %middle.block ], [ %i.fb, %.lr.ph.1 ] ; 2 uses
  %.046.lcssa.1 = phi i32 [ %i.cz, %._crit_edge ], [ %vector.recur.extract.for.phi, %middle.block ], [ %.04757.1, %.lr.ph.1 ]
  %.048.lcssa.1 = phi ptr [ %.04852.1, %._crit_edge ], [ %i.dz, %middle.block ], [ %.048.1, %.lr.ph.1 ]
  %i.fn = mul nuw nsw i32 %.047.lcssa.1, 3
  %i.fo = add nuw nsw i32 %.046.lcssa.1, 8
  %i.fp = add nuw nsw i32 %i.fo, %i.fn
  %i.fq = lshr i32 %i.fp, 4
  %i.fr = trunc nuw i32 %i.fq to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %.pn.lcssa.1, i64 3
  store i8 %i.fr, ptr %.048.lcssa.1, align 1, !tbaa !39
  %i.ft = shl nuw nsw i32 %.047.lcssa.1, 2
  %i.fu = add nuw nsw i32 %i.ft, 4
  %i.fv = lshr i32 %i.fu, 4
  %i.fw = trunc nuw i32 %i.fv to i8
  store i8 %i.fw, ptr %i.fs, align 1, !tbaa !39
  %4 = trunc nsw i64 %indvars.iv.next.1 to i32
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv.a, 1
  %i.fx = load i32, ptr %i.b, align 4, !tbaa !61
  %5 = icmp sgt i32 %i.fx, %4
  br i1 %5, label %.preheader, label %._crit_edge68, !llvm.loop !121

._crit_edge68:                                    ; preds = %._crit_edge.1, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v2_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !72     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !61
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph30, label %._crit_edge31

.lr.ph30:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph30, %._crit_edge
  %indvars.iv32 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next33, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %indvars34 = trunc i64 %indvars.iv to i32       ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77   ; 11 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 6 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77   ; 8 uses
  %i.n = add i64 %i.h, %i.j
  %i.o = add i64 %i.h, 2
  %umax40 = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.p = xor i64 %i.h, -1
  %i.q = add i64 %umax40, %i.p                    ; 3 uses
  %i.r = lshr i64 %i.q, 1
  %i.s = add nuw i64 %i.r, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.q, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.g, i64 2
  %i.t = add i64 %i.h, %i.j
  %i.u = add i64 %i.h, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.u)
  %i.v = xor i64 %i.h, -1
  %i.w = add i64 %umax, %i.v                      ; 2 uses
  %i.x = and i64 %i.w, -2
  %scevgep37 = getelementptr i8, ptr %scevgep, i64 %i.x
  %scevgep38 = getelementptr i8, ptr %i.m, i64 1
  %i.y = lshr i64 %i.w, 1
  %scevgep39 = getelementptr i8, ptr %scevgep38, i64 %i.y
  %bound0 = icmp ult ptr %i.g, %scevgep39
  %bound1 = icmp ult ptr %i.m, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i64 %i.q, 30
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 5 uses
  %i.aa = getelementptr i8, ptr %i.m, i64 %n.vec
  %i.ab = shl i64 %n.vec, 1
  %i.ac = getelementptr i8, ptr %i.g, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.ad = shl i64 %index, 1                       ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.g, i64 %i.ad
  %i.ae = getelementptr i8, ptr %i.g, i64 %i.ad
  %next.gep43 = getelementptr i8, ptr %i.ae, i64 16
  %i.af = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !122
  %wide.load44 = load <8 x i8>, ptr %i.af, align 1, !tbaa !39, !alias.scope !122
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec, ptr %next.gep42, align 1, !tbaa !39, !alias.scope !125, !noalias !122
  %interleaved.vec45 = shufflevector <8 x i8> %wide.load44, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec45, ptr %next.gep43, align 1, !tbaa !39, !alias.scope !125, !noalias !122
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %i.s, -4                     ; 4 uses
  %i.ah = getelementptr i8, ptr %i.m, i64 %n.vec47
  %i.ai = shl i64 %n.vec47, 1
  %i.aj = getelementptr i8, ptr %i.g, i64 %i.ai
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 3 uses
  %next.gep49 = getelementptr i8, ptr %i.m, i64 %index48
  %i.ak = shl i64 %index48, 1
  %next.gep50 = getelementptr i8, ptr %i.g, i64 %i.ak
  %wide.load51 = load <4 x i8>, ptr %next.gep49, align 1, !tbaa !39, !alias.scope !122
  %interleaved.vec52 = shufflevector <4 x i8> %wide.load51, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %interleaved.vec52, ptr %next.gep50, align 1, !tbaa !39, !alias.scope !125, !noalias !122
  %index.next53 = add nuw i64 %index48, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !128

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %i.s, %n.vec47
  br i1 %cmp.n54, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02326.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  %.02425.ph = phi ptr [ %i.g, %iter.check ], [ %i.g, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02326 = phi ptr [ %i.am, %.lr.ph ], [ %.02326.ph, %.lr.ph.preheader ] ; 2 uses
  %.02425 = phi ptr [ %i.ap, %.lr.ph ], [ %.02425.ph, %.lr.ph.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02326, i64 1
  %i.an = load i8, ptr %.02326, align 1, !tbaa !39 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02425, i64 1
  store i8 %i.an, ptr %.02425, align 1, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %.02425, i64 2 ; 2 uses
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !39
  %i.aq = icmp ult ptr %i.ap, %i.k
  br i1 %i.aq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !129

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %i.e, align 8, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ar = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.b ]
  %i.as = or disjoint i32 %indvars34, 1
  tail call void @jcopy_sample_rows(ptr noundef nonnull %i.a, i32 noundef %indvars34, ptr noundef nonnull %i.a, i32 noundef %i.as, i32 noundef 1, i32 noundef %i.ar) #7
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.at = load i32, ptr %i.b, align 4, !tbaa !61
  %i.au = trunc nuw i64 %indvars.iv.next to i32
  %i.av = icmp sgt i32 %i.at, %i.au
  br i1 %i.av, label %bb.b, label %._crit_edge31, !llvm.loop !130

._crit_edge31:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @int_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !72     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !131
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39
  %.fr50 = freeze i8 %i.i                         ; 4 uses
  %i.j = zext i8 %.fr50 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 258
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.g
  %i.m = load i8, ptr %i.l, align 1, !tbaa !39
  %.fr = freeze i8 %i.m                           ; 4 uses
  %i.n = zext i8 %.fr to i32                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !61   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge44

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %.not = icmp eq i8 %.fr50, 0
  %i.s = icmp ugt i8 %.fr, 1                      ; 2 uses
  %i.t = add nsw i32 %i.n, -1                     ; 2 uses
  br i1 %.not, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.u = zext i8 %.fr50 to i64                    ; 2 uses
  br i1 %i.s, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %i.v = zext i8 %.fr50 to i64
  %i.w = zext nneg i8 %.fr to i64
  br label %.lr.ph.split.us.split

end_hunk_0
