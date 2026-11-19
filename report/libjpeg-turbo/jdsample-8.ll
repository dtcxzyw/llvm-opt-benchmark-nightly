Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdsample-8?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@h2v1_fancy_upsample:bb.a
  %.030.lcssa = phi ptr [ %.03032, %bb.b ], [ %i.af, %middle.block ], [ %.030.lcssa58.unr, %.lr.ph.prol.loopexit ], [ %.030.1, %.lr.ph ]
  %i.dc = load i8, ptr %.031.lcssa, align 1, !tbaa !32 ; 2 uses
  %i.dd = zext i8 %i.dc to i16
  %i.de = mul nuw nsw i16 %i.dd, 3
  %i.df = getelementptr inbounds i8, ptr %.031.lcssa, i64 -1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !32
  %i.dh = zext i8 %i.dg to i16
  %i.di = add nuw nsw i16 %i.dh, 1
  %i.dj = add nuw nsw i16 %i.di, %i.de
  %i.dk = lshr i16 %i.dj, 2
  %i.dl = trunc nuw i16 %i.dk to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 3
  store i8 %i.dl, ptr %.030.lcssa, align 1, !tbaa !32
  store i8 %i.dc, ptr %i.dm, align 1, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dn = load i32, ptr %i.b, align 4, !tbaa !39
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvars.iv.next, %i.do
  br i1 %i.dp, label %bb.b, label %._crit_edge43, !llvm.loop !88

._crit_edge43:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

declare i32 @jsimd_set_h2v1_upsample(ptr noundef) local_unnamed_addr #3

declare void @jsimd_h2v1_upsample(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v1_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #4 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.pre25 = load i32, ptr %i.e, align 8, !tbaa !43
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %i.f = phi i32 [ %i.c, %.lr.ph22 ], [ %i.ax, %._crit_edge ]
  %i.g = phi i32 [ %.pre25, %.lr.ph22 ], [ %i.ay, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 11 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 6 uses
  %i.k = zext i32 %i.g to i64                     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 8 uses
  %i.o = add i64 %i.j, %i.k
  %i.p = add i64 %i.j, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.p)
  %i.q = xor i64 %i.j, -1
  %i.r = add i64 %umax, %i.q                      ; 3 uses
  %i.s = lshr i64 %i.r, 1
  %i.t = add nuw i64 %i.s, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.r, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.u = add i64 %i.j, %i.k
  %i.v = add i64 %i.j, 2
  %i.w = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.v)
  %i.x = xor i64 %i.j, -1
  %i.y = add i64 %i.w, %i.x                       ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %i.aa = and i64 %i.y, -2
  %i.ab = getelementptr i8, ptr %i.i, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 2
  %i.ad = getelementptr i8, ptr %i.n, i64 %i.z
  %i.ae = getelementptr i8, ptr %i.ad, i64 1
  %bound0 = icmp ult ptr %i.i, %i.ae
  %bound1 = icmp ult ptr %i.n, %i.ac
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i64 %i.r, 30
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.t, 12
  %n.vec = and i64 %i.t, -16                      ; 5 uses
  %i.ag = shl i64 %n.vec, 1
  %i.ah = getelementptr i8, ptr %i.i, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.aj
  %i.ak = getelementptr i8, ptr %i.i, i64 %i.aj
  %next.gep31 = getelementptr i8, ptr %i.ak, i64 16
  %next.gep32 = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep32, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep32, align 1, !tbaa !32, !alias.scope !98
  %wide.load33 = load <8 x i8>, ptr %i.al, align 1, !tbaa !32, !alias.scope !98
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !32, !alias.scope !99, !noalias !98
  %interleaved.vec34 = shufflevector <8 x i8> %wide.load33, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec34, ptr %next.gep31, align 1, !tbaa !32, !alias.scope !99, !noalias !98
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %i.t, -4                     ; 4 uses
  %i.an = shl i64 %n.vec35, 1
  %i.ao = getelementptr i8, ptr %i.i, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.n, i64 %n.vec35
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %i.aq = shl i64 %index36, 1
  %next.gep37 = getelementptr i8, ptr %i.i, i64 %i.aq
  %next.gep38 = getelementptr i8, ptr %i.n, i64 %index36
  %wide.load39 = load <4 x i8>, ptr %next.gep38, align 1, !tbaa !32, !alias.scope !98
  %interleaved.vec40 = shufflevector <4 x i8> %wide.load39, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %interleaved.vec40, ptr %next.gep37, align 1, !tbaa !32, !alias.scope !99, !noalias !98
  %index.next41 = add nuw i64 %index36, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next41, %n.vec35
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !95

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.t, %n.vec35
  br i1 %cmp.n42, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01619.ph = phi ptr [ %i.i, %iter.check ], [ %i.i, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.01718.ph = phi ptr [ %i.n, %iter.check ], [ %i.n, %vector.memcheck ], [ %i.ai, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01619 = phi ptr [ %i.av, %.lr.ph ], [ %.01619.ph, %.lr.ph.preheader ] ; 3 uses
  %.01718 = phi ptr [ %i.as, %.lr.ph ], [ %.01718.ph, %.lr.ph.preheader ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01718, i64 1
  %i.at = load i8, ptr %.01718, align 1, !tbaa !32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01619, i64 1
  store i8 %i.at, ptr %.01619, align 1, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %.01619, i64 2 ; 2 uses
  store i8 %i.at, ptr %i.au, align 1, !tbaa !32
  %i.aw = icmp ult ptr %i.av, %i.l
  br i1 %i.aw, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !96

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %i.e, align 8, !tbaa !43
  %.pre26 = load i32, ptr %i.b, align 4, !tbaa !39
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ax = phi i32 [ %.pre26, %._crit_edge.loopexit ], [ %i.f, %bb.b ] ; 2 uses
  %i.ay = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = sext i32 %i.ax to i64
  %i.ba = icmp slt i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %bb.b, label %._crit_edge23, !llvm.loop !97

._crit_edge23:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h1v2_fancy_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #4 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !47     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge38

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge38, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.split.us
  %i.g = phi i32 [ %i.az, %.split.us ], [ %i.c, %.preheader.lr.ph ]
  %i.h = phi i32 [ %i.ba, %.split.us ], [ %i.f, %.preheader.lr.ph ] ; 2 uses
  %i.i = phi i32 [ %i.bb, %.split.us ], [ %i.f, %.preheader.lr.ph ] ; 2 uses
  %i.j = phi i32 [ %i.bc, %.split.us ], [ 1, %.preheader.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next46, %.split.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.02237.a = phi i32 [ %.us-phi, %.split.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %.not39 = icmp eq i32 %i.j, 0
  br i1 %.not39, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.l = sext i32 %.02237.a to i64                ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !48   ; 2 uses
  %.not40 = icmp eq i32 %i.i, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.split.preheader
  %i.n = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48
  %.027.in = getelementptr i8, ptr %i.k, i64 -8
  %.027 = load ptr, ptr %.027.in, align 8, !tbaa !48
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02433 = phi i32 [ %i.ab, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02632 = phi ptr [ %i.aa, %.lr.ph ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  %.12831 = phi ptr [ %i.t, %.lr.ph ], [ %.027, %.lr.ph.preheader ] ; 2 uses
  %.02930 = phi ptr [ %i.p, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02930, i64 1
  %i.q = load i8, ptr %.02930, align 1, !tbaa !32
  %i.r = zext i8 %i.q to i16
  %i.s = mul nuw nsw i16 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %.12831, i64 1
  %i.u = load i8, ptr %.12831, align 1, !tbaa !32
  %i.v = zext i8 %i.u to i16
  %i.w = add nuw nsw i16 %i.v, 1
  %i.x = add nuw nsw i16 %i.w, %i.s
  %i.y = lshr i16 %i.x, 2
  %i.z = trunc nuw i16 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %.02632, i64 1
  store i8 %i.z, ptr %.02632, align 1, !tbaa !32
  %i.ab = add nuw i32 %.02433, 1                  ; 2 uses
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !41  ; 2 uses
  %i.ad = icmp ult i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !100

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader.split.preheader
  %i.ae = phi i32 [ %i.ac, %._crit_edge.loopexit ], [ %i.h, %.preheader.split.preheader ]
  %i.af = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.m, %.preheader.split.preheader ]
  %.not40.1 = icmp eq i32 %i.ae, 0
  br i1 %.not40.1, label %._crit_edge.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %._crit_edge
  %i.ag = getelementptr [8 x i8], ptr %i.a, i64 %i.l
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48
  %.027.in.1 = getelementptr i8, ptr %i.k, i64 8
  %.027.1 = load ptr, ptr %.027.in.1, align 8, !tbaa !48
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1, %.lr.ph.preheader.1
  %.02433.1 = phi i32 [ %i.av, %.lr.ph.1 ], [ 0, %.lr.ph.preheader.1 ]
  %.02632.1 = phi ptr [ %i.au, %.lr.ph.1 ], [ %i.ai, %.lr.ph.preheader.1 ] ; 2 uses
  %.12831.1 = phi ptr [ %i.an, %.lr.ph.1 ], [ %.027.1, %.lr.ph.preheader.1 ] ; 2 uses
  %.02930.1 = phi ptr [ %i.aj, %.lr.ph.1 ], [ %i.af, %.lr.ph.preheader.1 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02930.1, i64 1
  %i.ak = load i8, ptr %.02930.1, align 1, !tbaa !32
  %i.al = zext i8 %i.ak to i16
  %i.am = mul nuw nsw i16 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %.12831.1, i64 1
  %i.ao = load i8, ptr %.12831.1, align 1, !tbaa !32
  %i.ap = zext i8 %i.ao to i16
  %i.aq = add nuw nsw i16 %i.ap, 2
  %i.ar = add nuw nsw i16 %i.aq, %i.am
  %i.as = lshr i16 %i.ar, 2
  %i.at = trunc nuw i16 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.02632.1, i64 1
  store i8 %i.at, ptr %.02632.1, align 1, !tbaa !32
  %i.av = add nuw i32 %.02433.1, 1                ; 2 uses
  %i.aw = load i32, ptr %i.e, align 8, !tbaa !41  ; 2 uses
  %i.ax = icmp ult i32 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.1, label %._crit_edge.1, !llvm.loop !100

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %i.ay = phi i32 [ 0, %._crit_edge ], [ %i.aw, %.lr.ph.1 ] ; 3 uses
  %.pre48 = load i32, ptr %i.b, align 4, !tbaa !39
  br label %.split.us

.split.us:                                        ; preds = %.preheader, %._crit_edge.1
  %i.az = phi i32 [ %.pre48, %._crit_edge.1 ], [ %i.g, %.preheader ] ; 2 uses
  %i.ba = phi i32 [ %i.ay, %._crit_edge.1 ], [ %i.h, %.preheader ]
  %i.bb = phi i32 [ %i.ay, %._crit_edge.1 ], [ %i.i, %.preheader ]
  %i.bc = phi i32 [ %i.ay, %._crit_edge.1 ], [ 0, %.preheader ]
  %.us-phi = add i32 %.02237.a, 2                 ; 2 uses
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv, 1
  %i.bd = icmp slt i32 %.us-phi, %i.az
  br i1 %i.bd, label %.preheader, label %._crit_edge38, !llvm.loop !101

._crit_edge38:                                    ; preds = %.split.us, %.preheader.lr.ph, %bb.a
  ret void
}

declare i32 @jsimd_set_h2v2_fancy_upsample(ptr noundef) local_unnamed_addr #3

declare void @jsimd_h2v2_fancy_upsample(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_fancy_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #4 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !47     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge68

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge.1
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next72, %._crit_edge.1 ] ; 2 uses
  %.04367 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.1 ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 4 uses
  %.049.in = getelementptr i8, ptr %i.f, i64 -8
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !48 ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04367
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = load i8, ptr %i.g, align 1, !tbaa !32
  %i.l = zext i8 %i.k to i32
  %i.m = mul nuw nsw i32 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %.049, i64 1
  %i.o = load i8, ptr %.049, align 1, !tbaa !32
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %i.m, %i.p               ; 6 uses
  %i.r = load i8, ptr %i.j, align 1, !tbaa !32
  %i.s = zext i8 %i.r to i32
  %i.t = mul nuw nsw i32 %i.s, 3
  %i.u = load i8, ptr %i.n, align 1, !tbaa !32
  %i.v = zext i8 %i.u to i32
  %i.w = add nuw nsw i32 %i.t, %i.v               ; 5 uses
  %i.x = shl nuw nsw i32 %i.q, 2
  %i.y = add nuw nsw i32 %i.x, 8
  %i.z = lshr i32 %i.y, 4
  %i.aa = trunc nuw i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.aa, ptr %i.i, align 1, !tbaa !32
  %i.ac = mul nuw nsw i32 %i.q, 3
  %i.ad = add nuw nsw i32 %i.ac, 7
  %i.ae = add nuw nsw i32 %i.ad, %i.w
  %i.af = lshr i32 %i.ae, 4
  %i.ag = trunc nuw i32 %i.af to i8
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !32
  %i.ah = load i32, ptr %i.e, align 8, !tbaa !41  ; 2 uses
  %i.ai = add i32 %i.ah, -2                       ; 6 uses
  %.04852 = getelementptr i8, ptr %i.i, i64 2     ; 7 uses
  %.not53 = icmp eq i32 %i.ai, 0
  br i1 %.not53, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.aj = getelementptr i8, ptr %.049, i64 2      ; 5 uses
  %i.ak = getelementptr i8, ptr %i.g, i64 2       ; 5 uses
  %i.al = zext i32 %i.ai to i64                   ; 2 uses
  %min.iters.check116 = icmp ult i32 %i.ai, 8
  br i1 %min.iters.check116, label %.lr.ph.preheader152, label %vector.memcheck117

vector.memcheck117:                               ; preds = %.lr.ph.preheader
  %i.am = add i32 %i.ah, -3
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = getelementptr i8, ptr %i.i, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 4      ; 2 uses
  %i.ar = add nuw nsw i64 %i.an, 3                ; 2 uses
  %i.as = getelementptr i8, ptr %i.g, i64 %i.ar
  %i.at = getelementptr i8, ptr %.049, i64 %i.ar
  %bound0118 = icmp ult ptr %.04852, %i.as
  %bound1119 = icmp ult ptr %i.ak, %i.aq
  %found.conflict120 = and i1 %bound0118, %bound1119
  %bound0121 = icmp ult ptr %.04852, %i.at
  %bound1122 = icmp ult ptr %i.aj, %i.aq
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx124 = or i1 %found.conflict120, %found.conflict123
  br i1 %conflict.rdx124, label %.lr.ph.preheader152, label %vector.ph125

vector.ph125:                                     ; preds = %vector.memcheck117
  %n.vec126 = and i64 %i.al, 4294967288           ; 6 uses
  %i.au = shl nuw nsw i64 %n.vec126, 1            ; 2 uses
  %i.av = getelementptr i8, ptr %.04852, i64 %i.au ; 2 uses
  %i.aw = trunc nuw i64 %n.vec126 to i32
  %i.ax = sub i32 %i.ai, %i.aw
  %i.ay = getelementptr i8, ptr %i.i, i64 %i.au   ; 2 uses
  %i.az = getelementptr i8, ptr %i.aj, i64 %n.vec126
  %i.ba = getelementptr i8, ptr %i.ak, i64 %n.vec126
  %vector.recur.init129 = insertelement <8 x i32> poison, i32 %i.q, i64 7
  %vector.recur.init131 = insertelement <8 x i32> poison, i32 %i.w, i64 7
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next139, %vector.body127 ] ; 4 uses
  %vector.recur130 = phi <8 x i32> [ %vector.recur.init129, %vector.ph125 ], [ %i.bg, %vector.body127 ]
  %vector.recur132 = phi <8 x i32> [ %vector.recur.init131, %vector.ph125 ], [ %i.bf, %vector.body127 ]
  %i.bb = shl i64 %index128, 1
  %next.gep133 = getelementptr i8, ptr %.04852, i64 %i.bb
  %next.gep134 = getelementptr i8, ptr %i.aj, i64 %index128
  %next.gep135 = getelementptr i8, ptr %i.ak, i64 %index128
  %wide.load136 = load <8 x i8>, ptr %next.gep135, align 1, !tbaa !32, !alias.scope !116
  %i.bc = zext <8 x i8> %wide.load136 to <8 x i32>
  %i.bd = mul nuw nsw <8 x i32> %i.bc, splat (i32 3)
  %wide.load137 = load <8 x i8>, ptr %next.gep134, align 1, !tbaa !32, !alias.scope !117
  %i.be = zext <8 x i8> %wide.load137 to <8 x i32>
  %i.bf = add nuw nsw <8 x i32> %i.bd, %i.be      ; 6 uses
  %i.bg = shufflevector <8 x i32> %vector.recur132, <8 x i32> %i.bf, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.bh = shufflevector <8 x i32> %vector.recur130, <8 x i32> %i.bg, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bi = mul nuw nsw <8 x i32> %i.bg, splat (i32 3) ; 2 uses
  %i.bj = add nuw nsw <8 x i32> %i.bh, splat (i32 8)
  %i.bk = add nuw nsw <8 x i32> %i.bj, %i.bi
  %i.bl = add nuw nsw <8 x i32> %i.bi, splat (i32 7)
  %i.bm = add nuw nsw <8 x i32> %i.bl, %i.bf
  %i.bn = shufflevector <8 x i32> %i.bk, <8 x i32> %i.bm, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bo = lshr <16 x i32> %i.bn, splat (i32 4)
  %interleaved.vec138 = trunc nuw <16 x i32> %i.bo to <16 x i8>
  store <16 x i8> %interleaved.vec138, ptr %next.gep133, align 1, !tbaa !32, !alias.scope !118, !noalias !119
  %index.next139 = add nuw i64 %index128, 8       ; 2 uses
  %i.bp = icmp eq i64 %index.next139, %n.vec126
  br i1 %i.bp, label %middle.block140, label %vector.body127, !llvm.loop !107

middle.block140:                                  ; preds = %vector.body127
  %vector.recur.extract.for.phi141 = extractelement <8 x i32> %i.bf, i64 6
  %vector.recur.extract142 = extractelement <8 x i32> %i.bf, i64 6
  %vector.recur.extract143 = extractelement <8 x i32> %i.bf, i64 7 ; 2 uses
  %cmp.n144 = icmp eq i64 %n.vec126, %i.al
  br i1 %cmp.n144, label %._crit_edge, label %.lr.ph.preheader152

.lr.ph.preheader152:                              ; preds = %vector.memcheck117, %.lr.ph.preheader, %middle.block140
  %.04860.ph = phi ptr [ %.04852, %vector.memcheck117 ], [ %.04852, %.lr.ph.preheader ], [ %i.av, %middle.block140 ]
  %.04559.ph = phi i32 [ %i.ai, %vector.memcheck117 ], [ %i.ai, %.lr.ph.preheader ], [ %i.ax, %middle.block140 ]
  %.04658.ph = phi i32 [ %i.q, %vector.memcheck117 ], [ %i.q, %.lr.ph.preheader ], [ %vector.recur.extract142, %middle.block140 ]
  %.04757.ph = phi i32 [ %i.w, %vector.memcheck117 ], [ %i.w, %.lr.ph.preheader ], [ %vector.recur.extract143, %middle.block140 ]
  %.pn56.ph = phi ptr [ %i.i, %vector.memcheck117 ], [ %i.i, %.lr.ph.preheader ], [ %i.ay, %middle.block140 ]
  %.15055.ph = phi ptr [ %i.aj, %vector.memcheck117 ], [ %i.aj, %.lr.ph.preheader ], [ %i.az, %middle.block140 ]
  %.05154.ph = phi ptr [ %i.ak, %vector.memcheck117 ], [ %i.ak, %.lr.ph.preheader ], [ %i.ba, %middle.block140 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader152, %.lr.ph
  %.04860 = phi ptr [ %.048, %.lr.ph ], [ %.04860.ph, %.lr.ph.preheader152 ] ; 4 uses
  %.04559 = phi i32 [ %i.ci, %.lr.ph ], [ %.04559.ph, %.lr.ph.preheader152 ]
  %.04658 = phi i32 [ %.04757, %.lr.ph ], [ %.04658.ph, %.lr.ph.preheader152 ]
  %.04757 = phi i32 [ %i.bx, %.lr.ph ], [ %.04757.ph, %.lr.ph.preheader152 ] ; 3 uses
  %.pn56 = phi ptr [ %.04860, %.lr.ph ], [ %.pn56.ph, %.lr.ph.preheader152 ]
  %.15055 = phi ptr [ %i.bu, %.lr.ph ], [ %.15055.ph, %.lr.ph.preheader152 ] ; 2 uses
  %.05154 = phi ptr [ %i.bq, %.lr.ph ], [ %.05154.ph, %.lr.ph.preheader152 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.05154, i64 1
  %i.br = load i8, ptr %.05154, align 1, !tbaa !32
  %i.bs = zext i8 %i.br to i32
  %i.bt = mul nuw nsw i32 %i.bs, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %.15055, i64 1
  %i.bv = load i8, ptr %.15055, align 1, !tbaa !32
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nuw nsw i32 %i.bt, %i.bw            ; 3 uses
  %i.by = mul nuw nsw i32 %.04757, 3              ; 2 uses
  %i.bz = add nuw nsw i32 %.04658, 8
  %i.ca = add nuw nsw i32 %i.bz, %i.by
  %i.cb = lshr i32 %i.ca, 4
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %.pn56, i64 3
  store i8 %i.cc, ptr %.04860, align 1, !tbaa !32
  %i.ce = add nuw nsw i32 %i.by, 7
  %i.cf = add nuw nsw i32 %i.ce, %i.bx
  %i.cg = lshr i32 %i.cf, 4
  %i.ch = trunc nuw i32 %i.cg to i8
  store i8 %i.ch, ptr %i.cd, align 1, !tbaa !32
  %i.ci = add i32 %.04559, -1                     ; 2 uses
  %.048 = getelementptr inbounds nuw i8, ptr %.04860, i64 2 ; 2 uses
  %.not = icmp eq i32 %i.ci, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !108

._crit_edge:                                      ; preds = %.lr.ph, %middle.block140, %.preheader
  %.pn.lcssa = phi ptr [ %i.i, %.preheader ], [ %i.ay, %middle.block140 ], [ %.04860, %.lr.ph ]
  %.047.lcssa = phi i32 [ %i.w, %.preheader ], [ %vector.recur.extract143, %middle.block140 ], [ %i.bx, %.lr.ph ] ; 2 uses
  %.046.lcssa = phi i32 [ %i.q, %.preheader ], [ %vector.recur.extract.for.phi141, %middle.block140 ], [ %.04757, %.lr.ph ]
  %.048.lcssa = phi ptr [ %.04852, %.preheader ], [ %i.av, %middle.block140 ], [ %.048, %.lr.ph ]
  %i.cj = mul nuw nsw i32 %.047.lcssa, 3
  %i.ck = add nuw nsw i32 %.046.lcssa, 8
  %i.cl = add nuw nsw i32 %i.ck, %i.cj
  %i.cm = lshr i32 %i.cl, 4
  %i.cn = trunc nuw i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 3
  store i8 %i.cn, ptr %.048.lcssa, align 1, !tbaa !32
  %i.cp = shl nuw nsw i32 %.047.lcssa, 2
  %i.cq = add nuw nsw i32 %i.cp, 4
  %i.cr = lshr i32 %i.cq, 4
  %i.cs = trunc nuw i32 %i.cr to i8
  store i8 %i.cs, ptr %i.co, align 1, !tbaa !32
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !48  ; 4 uses
end_hunk_0
