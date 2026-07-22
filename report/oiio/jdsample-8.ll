loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@h2v1_upsample:bb.a
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.t, -4                     ; 4 uses
  %i.ah = getelementptr i8, ptr %i.n, i64 %n.vec36
  %i.ai = shl i64 %n.vec36, 1
  %i.aj = getelementptr i8, ptr %i.h, i64 %i.ai
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 3 uses
  %next.gep38 = getelementptr i8, ptr %i.n, i64 %index37
  %i.ak = shl i64 %index37, 1
  %next.gep39 = getelementptr i8, ptr %i.h, i64 %i.ak
  %wide.load40 = load <4 x i8>, ptr %next.gep38, align 1, !tbaa !39, !alias.scope !88
  %interleaved.vec41 = shufflevector <4 x i8> %wide.load40, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %interleaved.vec41, ptr %next.gep39, align 1, !tbaa !39, !alias.scope !91, !noalias !88
  %index.next42 = add nuw i64 %index37, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next42, %n.vec36
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !95

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.t, %n.vec36
  br i1 %cmp.n43, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01619.ph = phi ptr [ %i.n, %iter.check ], [ %i.n, %vector.memcheck ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  %.01718.ph = phi ptr [ %i.h, %iter.check ], [ %i.h, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01619 = phi ptr [ %i.am, %.lr.ph ], [ %.01619.ph, %.lr.ph.preheader ] ; 2 uses
  %.01718 = phi ptr [ %i.ap, %.lr.ph ], [ %.01718.ph, %.lr.ph.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01619, i64 1
  %i.an = load i8, ptr %.01619, align 1, !tbaa !39 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01718, i64 1
  store i8 %i.an, ptr %.01718, align 1, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %.01718, i64 2 ; 2 uses
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !39
  %i.aq = icmp ult ptr %i.ap, %i.l
  br i1 %i.aq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !96

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %i.b, align 4, !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ar = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %bb.b, label %._crit_edge23, !llvm.loop !97

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
  %indvars.iv = phi i32 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %._crit_edge.1 ] ; 3 uses
  %4 = sext i32 %indvars.iv to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.a ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77   ; 4 uses
  %.049.in = getelementptr i8, ptr %i.f, i64 -8
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !77 ; 4 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %i.a, i64 %4
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
  br i1 %min.iters.check114, label %.lr.ph.preheader143, label %vector.memcheck99

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
  br i1 %conflict.rdx112, label %.lr.ph.preheader143, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck99
  %n.vec117 = and i64 %i.al, 4294967288           ; 6 uses
  %i.ap = shl nuw nsw i64 %n.vec117, 1            ; 2 uses
  %i.aq = getelementptr i8, ptr %.04852, i64 %i.ap ; 2 uses
  %i.ar = trunc nuw i64 %n.vec117 to i32
  %i.as = sub i32 %i.ai, %i.ar
  %i.at = getelementptr i8, ptr %i.i, i64 %i.ap   ; 2 uses
  %i.au = getelementptr i8, ptr %i.aj, i64 %n.vec117
  %i.av = getelementptr i8, ptr %i.ak, i64 %n.vec117
  %vector.recur.init120 = insertelement <8 x i32> poison, i32 %i.q, i64 7
  %vector.recur.init122 = insertelement <8 x i32> poison, i32 %i.w, i64 7
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph115
  %index119 = phi i64 [ 0, %vector.ph115 ], [ %index.next130, %vector.body118 ] ; 4 uses
  %vector.recur121 = phi <8 x i32> [ %vector.recur.init120, %vector.ph115 ], [ %i.bb, %vector.body118 ]
  %vector.recur123 = phi <8 x i32> [ %vector.recur.init122, %vector.ph115 ], [ %i.ba, %vector.body118 ]
  %i.aw = shl i64 %index119, 1
  %next.gep124 = getelementptr i8, ptr %.04852, i64 %i.aw
  %next.gep125 = getelementptr i8, ptr %i.aj, i64 %index119
  %next.gep126 = getelementptr i8, ptr %i.ak, i64 %index119
  %wide.load127 = load <8 x i8>, ptr %next.gep126, align 1, !tbaa !39, !alias.scope !101
  %i.ax = zext <8 x i8> %wide.load127 to <8 x i32>
  %i.ay = mul nuw nsw <8 x i32> %i.ax, splat (i32 3)
  %wide.load128 = load <8 x i8>, ptr %next.gep125, align 1, !tbaa !39, !alias.scope !104
  %i.az = zext <8 x i8> %wide.load128 to <8 x i32>
  %i.ba = add nuw nsw <8 x i32> %i.ay, %i.az      ; 6 uses
  %i.bb = shufflevector <8 x i32> %vector.recur123, <8 x i32> %i.ba, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.bc = shufflevector <8 x i32> %vector.recur121, <8 x i32> %i.bb, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bd = mul nuw nsw <8 x i32> %i.bb, splat (i32 3) ; 2 uses
  %i.be = add nuw nsw <8 x i32> %i.bc, splat (i32 8)
  %i.bf = add nuw nsw <8 x i32> %i.be, %i.bd
  %i.bg = add nuw nsw <8 x i32> %i.bd, splat (i32 7)
  %i.bh = add nuw nsw <8 x i32> %i.bg, %i.ba
  %i.bi = shufflevector <8 x i32> %i.bf, <8 x i32> %i.bh, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bj = lshr <16 x i32> %i.bi, splat (i32 4)
  %interleaved.vec129 = trunc nuw <16 x i32> %i.bj to <16 x i8>
  store <16 x i8> %interleaved.vec129, ptr %next.gep124, align 1, !tbaa !39, !alias.scope !106, !noalias !108
  %index.next130 = add nuw i64 %index119, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next130, %n.vec117
  br i1 %i.bk, label %middle.block131, label %vector.body118, !llvm.loop !109

middle.block131:                                  ; preds = %vector.body118
  %vector.recur.extract.for.phi132 = extractelement <8 x i32> %i.ba, i64 6
  %vector.recur.extract133 = extractelement <8 x i32> %i.ba, i64 6
  %vector.recur.extract134 = extractelement <8 x i32> %i.ba, i64 7 ; 2 uses
  %cmp.n135 = icmp eq i64 %n.vec117, %i.al
  br i1 %cmp.n135, label %._crit_edge, label %.lr.ph.preheader143

.lr.ph.preheader143:                              ; preds = %vector.memcheck99, %.lr.ph.preheader, %middle.block131
  %.04860.ph = phi ptr [ %.04852, %vector.memcheck99 ], [ %.04852, %.lr.ph.preheader ], [ %i.aq, %middle.block131 ]
  %.04559.ph = phi i32 [ %i.ai, %vector.memcheck99 ], [ %i.ai, %.lr.ph.preheader ], [ %i.as, %middle.block131 ]
  %.04658.ph = phi i32 [ %i.q, %vector.memcheck99 ], [ %i.q, %.lr.ph.preheader ], [ %vector.recur.extract133, %middle.block131 ]
  %.04757.ph = phi i32 [ %i.w, %vector.memcheck99 ], [ %i.w, %.lr.ph.preheader ], [ %vector.recur.extract134, %middle.block131 ]
  %.pn56.ph = phi ptr [ %i.i, %vector.memcheck99 ], [ %i.i, %.lr.ph.preheader ], [ %i.at, %middle.block131 ]
  %.15055.ph = phi ptr [ %i.aj, %vector.memcheck99 ], [ %i.aj, %.lr.ph.preheader ], [ %i.au, %middle.block131 ]
  %.05154.ph = phi ptr [ %i.ak, %vector.memcheck99 ], [ %i.ak, %.lr.ph.preheader ], [ %i.av, %middle.block131 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader143, %.lr.ph
  %.04860 = phi ptr [ %.048, %.lr.ph ], [ %.04860.ph, %.lr.ph.preheader143 ] ; 4 uses
  %.04559 = phi i32 [ %i.cd, %.lr.ph ], [ %.04559.ph, %.lr.ph.preheader143 ]
  %.04658 = phi i32 [ %.04757, %.lr.ph ], [ %.04658.ph, %.lr.ph.preheader143 ]
  %.04757 = phi i32 [ %i.bs, %.lr.ph ], [ %.04757.ph, %.lr.ph.preheader143 ] ; 3 uses
  %.pn56 = phi ptr [ %.04860, %.lr.ph ], [ %.pn56.ph, %.lr.ph.preheader143 ]
  %.15055 = phi ptr [ %i.bp, %.lr.ph ], [ %.15055.ph, %.lr.ph.preheader143 ] ; 2 uses
  %.05154 = phi ptr [ %i.bl, %.lr.ph ], [ %.05154.ph, %.lr.ph.preheader143 ] ; 2 uses
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

._crit_edge:                                      ; preds = %.lr.ph, %middle.block131, %.preheader
  %.pn.lcssa = phi ptr [ %i.i, %.preheader ], [ %i.at, %middle.block131 ], [ %.04860, %.lr.ph ]
  %.047.lcssa = phi i32 [ %i.w, %.preheader ], [ %vector.recur.extract134, %middle.block131 ], [ %i.bs, %.lr.ph ] ; 2 uses
  %.046.lcssa = phi i32 [ %i.q, %.preheader ], [ %vector.recur.extract.for.phi132, %middle.block131 ], [ %.04757, %.lr.ph ]
  %.048.lcssa = phi ptr [ %.04852, %.preheader ], [ %i.aq, %middle.block131 ], [ %.048, %.lr.ph ]
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
  %indvars.iv.next72.1 = add i32 %indvars.iv, 2
  %i.cp = getelementptr [8 x i8], ptr %i.a, i64 %4
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
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
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv.a, 1
  %i.fx = load i32, ptr %i.b, align 4, !tbaa !61
  %5 = icmp slt i32 %indvars.iv.next72.1, %i.fx
  %indvars.iv.next = add i32 %indvars.iv, 2
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
  %i.h = ptrtoint ptr %i.g to i64                 ; 6 uses
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
  %i.x = lshr i64 %i.w, 1
  %i.y = and i64 %i.w, -2
  %scevgep37 = getelementptr i8, ptr %scevgep, i64 %i.y
  %scevgep38 = getelementptr i8, ptr %i.m, i64 1
  %scevgep39 = getelementptr i8, ptr %scevgep38, i64 %i.x
  %bound0 = icmp ult ptr %i.g, %scevgep39
  %bound1 = icmp ult ptr %i.m, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i64 %i.q, 30
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 5 uses
  %i.z = getelementptr i8, ptr %i.m, i64 %n.vec
  %i.aa = shl i64 %n.vec, 1
  %i.ab = getelementptr i8, ptr %i.g, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.ac = shl i64 %index, 1                       ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.g, i64 %i.ac
  %i.ad = getelementptr i8, ptr %i.g, i64 %i.ac
  %next.gep43 = getelementptr i8, ptr %i.ad, i64 16
  %i.ae = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !122
  %wide.load44 = load <8 x i8>, ptr %i.ae, align 1, !tbaa !39, !alias.scope !122
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec, ptr %next.gep42, align 1, !tbaa !39, !alias.scope !125, !noalias !122
  %interleaved.vec45 = shufflevector <8 x i8> %wide.load44, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec45, ptr %next.gep43, align 1, !tbaa !39, !alias.scope !125, !noalias !122
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %i.s, -4                     ; 4 uses
  %i.ag = getelementptr i8, ptr %i.m, i64 %n.vec48
  %i.ah = shl i64 %n.vec48, 1
  %i.ai = getelementptr i8, ptr %i.g, i64 %i.ah
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 3 uses
  %next.gep50 = getelementptr i8, ptr %i.m, i64 %index49
  %i.aj = shl i64 %index49, 1
  %next.gep51 = getelementptr i8, ptr %i.g, i64 %i.aj
  %wide.load52 = load <4 x i8>, ptr %next.gep50, align 1, !tbaa !39, !alias.scope !122
  %interleaved.vec53 = shufflevector <4 x i8> %wide.load52, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %interleaved.vec53, ptr %next.gep51, align 1, !tbaa !39, !alias.scope !125, !noalias !122
  %index.next54 = add nuw i64 %index49, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next54, %n.vec48
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !128

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i64 %i.s, %n.vec48
  br i1 %cmp.n55, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02326.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %.02425.ph = phi ptr [ %i.g, %iter.check ], [ %i.g, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02326 = phi ptr [ %i.al, %.lr.ph ], [ %.02326.ph, %.lr.ph.preheader ] ; 2 uses
  %.02425 = phi ptr [ %i.ao, %.lr.ph ], [ %.02425.ph, %.lr.ph.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02326, i64 1
  %i.am = load i8, ptr %.02326, align 1, !tbaa !39 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02425, i64 1
  store i8 %i.am, ptr %.02425, align 1, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %.02425, i64 2 ; 2 uses
  store i8 %i.am, ptr %i.an, align 1, !tbaa !39
  %i.ap = icmp ult ptr %i.ao, %i.k
  br i1 %i.ap, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !129

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %i.e, align 8, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.aq = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.b ]
  %i.ar = or disjoint i32 %indvars34, 1
  tail call void @jcopy_sample_rows(ptr noundef nonnull %i.a, i32 noundef %indvars34, ptr noundef nonnull %i.a, i32 noundef %i.ar, i32 noundef 1, i32 noundef %i.aq) #7
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.as = load i32, ptr %i.b, align 4, !tbaa !61
  %i.at = trunc nuw i64 %indvars.iv.next to i32
  %i.au = icmp sgt i32 %i.as, %i.at
  br i1 %i.au, label %bb.b, label %._crit_edge31, !llvm.loop !130

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

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %i.x = add nuw nsw i64 %i.j, 4294967295
  %i.y = and i64 %i.x, 4294967295
  %i.z = zext i8 %.fr to i64
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %._crit_edge.split.us.us.us
  %indvars.iv67.a = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %indvars.iv.next68, %._crit_edge.split.us.us.us ] ; 2 uses
  %indvars.iv65 = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %indvars.iv.next66, %._crit_edge.split.us.us.us ] ; 3 uses
  %indvars69 = trunc i64 %indvars.iv65 to i32     ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv65
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !77 ; 2 uses
  %i.ac = load i32, ptr %i.r, align 8, !tbaa !66  ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %.not54 = icmp eq i32 %i.ac, 0
  br i1 %.not54, label %._crit_edge.split.us.us.us, label %.lr.ph.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph.split.us.split.us
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv67.a
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !77
  br label %.lr.ph.us.us.us

._crit_edge.split.us.us.us.loopexit:              ; preds = %.lr.ph.us.us.us
  %.pre72 = load i32, ptr %i.r, align 8, !tbaa !66
  br label %._crit_edge.split.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %._crit_edge.split.us.us.us.loopexit, %.lr.ph.split.us.split.us
  %i.ah = phi i32 [ %.pre72, %._crit_edge.split.us.us.us.loopexit ], [ 0, %.lr.ph.split.us.split.us ]
  %i.ai = add nuw nsw i32 %indvars69, 1
  tail call void @jcopy_sample_rows(ptr noundef nonnull %i.c, i32 noundef %indvars69, ptr noundef nonnull %i.c, i32 noundef %i.ai, i32 noundef %i.t, i32 noundef %i.ah) #7
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67.a, 1
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, %i.z ; 2 uses
  %i.aj = load i32, ptr %i.o, align 4, !tbaa !61
  %i.ak = trunc nuw i64 %indvars.iv.next66 to i32
  %i.al = icmp sgt i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.split.us.split.us, label %._crit_edge44, !llvm.loop !132

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %.lr.ph.us.us.us
  %.03239.us.us.us.a = phi ptr [ %i.ab, %.lr.ph.us.us.us.preheader ], [ %indvars.iv67, %.lr.ph.us.us.us ] ; 2 uses
  %.03338.us.us.us = phi ptr [ %i.ag, %.lr.ph.us.us.us.preheader ], [ %scevgep64, %.lr.ph.us.us.us ] ; 2 uses
  %4 = getelementptr i8, ptr %.03239.us.us.us.a, i64 %i.y
  %indvars.iv67 = getelementptr i8, ptr %4, i64 1 ; 2 uses
  %5 = load i8, ptr %.03338.us.us.us, align 1, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr align 1 %.03239.us.us.us.a, i8 %5, i64 %i.u, i1 false), !tbaa !39
  %scevgep64 = getelementptr inbounds nuw i8, ptr %.03338.us.us.us, i64 1
  %i.am = icmp ult ptr %indvars.iv67, %i.ae
  br i1 %i.am, label %.lr.ph.us.us.us, label %._crit_edge.split.us.us.us.loopexit, !llvm.loop !133

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %._crit_edge.split.us.us
  %i.an = phi i32 [ %i.p, %.lr.ph.split.us.split.preheader ], [ %i.av, %._crit_edge.split.us.us ]
  %indvars.iv59 = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next60, %._crit_edge.split.us.us ] ; 2 uses
  %indvars.iv.a = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next, %._crit_edge.split.us.us ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.a
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !77 ; 2 uses
  %i.aq = load i32, ptr %i.r, align 8, !tbaa !66  ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  %.not53 = icmp eq i32 %i.aq, 0
  br i1 %.not53, label %._crit_edge.split.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph.split.us.split
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv59
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !77
  br label %.lr.ph.us.us

._crit_edge.split.us.us.loopexit:                 ; preds = %.lr.ph.us.us
  %.pre = load i32, ptr %i.o, align 4, !tbaa !61
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.loopexit, %.lr.ph.split.us.split
  %i.av = phi i32 [ %.pre, %._crit_edge.split.us.us.loopexit ], [ %i.an, %.lr.ph.split.us.split ] ; 2 uses
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, %i.w ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %.lr.ph.split.us.split, label %._crit_edge44, !llvm.loop !132

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %.lr.ph.us.us
  %.03239.us.us.a = phi ptr [ %i.ap, %.lr.ph.us.us.preheader ], [ %indvars.iv, %.lr.ph.us.us ] ; 2 uses
  %.03338.us.us = phi ptr [ %i.au, %.lr.ph.us.us.preheader ], [ %scevgep, %.lr.ph.us.us ] ; 2 uses
  %indvars.iv = getelementptr i8, ptr %.03239.us.us.a, i64 %i.v ; 2 uses
  %6 = load i8, ptr %.03338.us.us, align 1, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr align 1 %.03239.us.us.a, i8 %6, i64 %i.u, i1 false), !tbaa !39
  %scevgep = getelementptr inbounds nuw i8, ptr %.03338.us.us, i64 1
  %i.ay = icmp ult ptr %indvars.iv, %i.as
  br i1 %i.ay, label %.lr.ph.us.us, label %._crit_edge.split.us.us.loopexit, !llvm.loop !133

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.b
  %.042.us45 = phi i32 [ %i.bb, %bb.b ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.az = load i32, ptr %i.r, align 8, !tbaa !66
  %.not52 = icmp eq i32 %i.az, 0
  br i1 %.not52, label %bb.b, label %.loopexit.preheader

bb.b:                                             ; preds = %.lr.ph.split.split.us
  %i.ba = add nuw nsw i32 %.042.us45, 1
  tail call void @jcopy_sample_rows(ptr noundef %i.c, i32 noundef %.042.us45, ptr noundef %i.c, i32 noundef %i.ba, i32 noundef %i.t, i32 noundef 0) #7
  %i.bb = add nuw nsw i32 %.042.us45, %i.n        ; 2 uses
  %i.bc = load i32, ptr %i.o, align 4, !tbaa !61
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %.lr.ph.split.split.us, label %._crit_edge44, !llvm.loop !132

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.be = load i32, ptr %i.r, align 8, !tbaa !66
  %.not51 = icmp eq i32 %i.be, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.split, %bb.d
  %.042 = phi i32 [ 0, %.lr.ph.split.split ], [ %i.bf, %bb.d ]
  br i1 %.not51, label %bb.d, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %bb.c, %.lr.ph.split.split.us
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader, %.loopexit
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.bf = add nuw nsw i32 %.042, %i.n             ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.p
  br i1 %i.bg, label %bb.c, label %._crit_edge44, !llvm.loop !132

._crit_edge44:                                    ; preds = %._crit_edge.split.us.us, %._crit_edge.split.us.us.us, %bb.d, %bb.b, %bb.a
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !21, i64 568}
!8 = !{!"jpeg_decompress_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !13, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !14, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !15, i64 160, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !17, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !4, i64 296, !10, i64 304, !4, i64 312, !4, i64 316, !4, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !4, i64 372, !4, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !18, i64 384, !18, i64 386, !4, i64 388, !5, i64 392, !4, i64 396, !19, i64 400, !4, i64 408, !4, i64 412, !4, i64 416, !4, i64 420, !4, i64 424, !20, i64 432, !4, i64 440, !5, i64 448, !4, i64 480, !4, i64 484, !4, i64 488, !5, i64 492, !4, i64 532, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !17, i64 552, !4, i64 560, !4, i64 564, !21, i64 568, !22, i64 576, !23, i64 584, !24, i64 592, !25, i64 600, !26, i64 608, !27, i64 616, !28, i64 624, !29, i64 632, !30, i64 640, !31, i64 648}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"p2 omnipotent char", !16, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"p1 int", !10, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_struct", !10, i64 0}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!32 = !{!33, !4, i64 20}
!33 = !{!"jpeg_decomp_master", !10, i64 0, !10, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !5, i64 32, !5, i64 72, !4, i64 112, !4, i64 116, !19, i64 120}
!34 = !{!8, !4, i64 296}
!35 = !{!8, !9, i64 0}
!36 = !{!37, !4, i64 40}
!37 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !38, i64 128, !15, i64 136, !4, i64 144, !15, i64 152, !4, i64 160, !4, i64 164}
!38 = !{!"long", !5, i64 0}
!39 = !{!5, !5, i64 0}
!40 = !{!37, !10, i64 0}
!41 = !{!33, !4, i64 112}
!42 = !{!8, !11, i64 8}
!43 = !{!44, !10, i64 0}
!44 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !38, i64 88, !38, i64 96}
!45 = !{!8, !29, i64 632}
!46 = !{!47, !10, i64 0}
!47 = !{!"", !48, i64 0, !5, i64 40, !5, i64 120, !4, i64 200, !4, i64 204, !5, i64 208, !5, i64 248, !5, i64 258}
!48 = !{!"jpeg_upsampler", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !4, i64 32}
!49 = !{!47, !10, i64 8}
!50 = !{!47, !4, i64 32}
!51 = !{!8, !4, i64 396}
!52 = !{!8, !4, i64 100}
!53 = !{!8, !4, i64 416}
!54 = !{!8, !4, i64 56}
!55 = !{!8, !10, i64 304}
!56 = !{!57, !4, i64 8}
!57 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !10, i64 80, !10, i64 88}
!58 = !{!57, !4, i64 36}
!59 = !{!57, !4, i64 12}
!60 = !{!8, !4, i64 408}
!61 = !{!8, !4, i64 412}
!62 = !{!57, !4, i64 52}
!63 = !{!57, !4, i64 44}
!64 = !{!10, !10, i64 0}
!65 = !{!44, !10, i64 16}
!66 = !{!8, !4, i64 136}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!47, !4, i64 200}
!70 = !{!8, !4, i64 140}
!71 = !{!47, !4, i64 204}
!72 = !{!15, !15, i64 0}
!73 = distinct !{!73, !68}
!74 = !{!8, !30, i64 640}
!75 = !{!76, !10, i64 8}
!76 = !{!"jpeg_color_deconverter", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!77 = !{!20, !20, i64 0}
!78 = !{!79}
!79 = distinct !{!79, !80}
!80 = distinct !{!80, !"LVerDomain"}
!81 = !{!82}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !68, !84, !85}
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = !{!"llvm.loop.unroll.runtime.disable"}
!86 = distinct !{!86, !68, !84}
!87 = distinct !{!87, !68}
!88 = !{!89}
!89 = distinct !{!89, !90}
!90 = distinct !{!90, !"LVerDomain"}
!91 = !{!92}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !68, !84, !85}
!94 = !{!"branch_weights", i32 4, i32 12}
!95 = distinct !{!95, !68, !84, !85}
!96 = distinct !{!96, !68, !84}
!97 = distinct !{!97, !68}
!98 = distinct !{!98, !68}
!99 = distinct !{!99, !68, !100}
!100 = !{!"llvm.loop.unswitch.partial.disable"}
!101 = !{!102}
!102 = distinct !{!102, !103}
!103 = distinct !{!103, !"LVerDomain"}
!104 = !{!105}
!105 = distinct !{!105, !103}
!106 = !{!107}
!107 = distinct !{!107, !103}
!108 = !{!102, !105}
!109 = distinct !{!109, !68, !84, !85}
!110 = distinct !{!110, !68, !84}
!111 = !{!112}
!112 = distinct !{!112, !113}
!113 = distinct !{!113, !"LVerDomain"}
!114 = !{!115}
!115 = distinct !{!115, !113}
!116 = !{!117}
!117 = distinct !{!117, !113}
!118 = !{!112, !115}
!119 = distinct !{!119, !68, !84, !85}
!120 = distinct !{!120, !68, !84}
!121 = distinct !{!121, !68}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !68, !84, !85}
!128 = distinct !{!128, !68, !84, !85}
!129 = distinct !{!129, !68, !84}
!130 = distinct !{!130, !68}
end_hunk_0
