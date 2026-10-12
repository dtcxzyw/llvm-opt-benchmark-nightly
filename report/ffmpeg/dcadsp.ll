Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dcadsp?download=true
inline.NumInlined: 34
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 26
begin_hunk_0_@dmix_add_c:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !12, !alias.scope !85
  %i.g = sext <4 x i32> %wide.load to <4 x i64>
  %i.h = mul nsw <4 x i64> %broadcast.splat, %i.g
  %i.i = add nsw <4 x i64> %i.h, splat (i64 16384)
  %i.j = lshr <4 x i64> %i.i, splat (i64 15)
  %i.k = trunc <4 x i64> %i.j to <4 x i32>
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load11 = load <4 x i32>, ptr %i.l, align 4, !tbaa !12, !alias.scope !86, !noalias !85
  %i.m = add <4 x i32> %wide.load11, %i.k
  store <4 x i32> %i.m, ptr %i.l, align 4, !tbaa !12, !alias.scope !86, !noalias !85
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, %i.b
  %i.s = add nsw i64 %i.r, 16384
  %i.t = lshr i64 %i.s, 15
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !12
  %i.x = add i32 %i.w, %i.u
  store i32 %i.x, ptr %i.v, align 4, !tbaa !12
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.y = icmp eq i64 %3, %.neg
  br i1 %i.y, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, %i.b
  %i.ad = add nsw i64 %i.ac, 16384
  %i.ae = lshr i64 %i.ad, 15
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !12
  %i.ai = add i32 %i.ah, %i.af
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, %i.b
  %i.an = add nsw i64 %i.am, 16384
  %i.ao = lshr i64 %i.an, 15
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12
  %i.as = add i32 %i.ar, %i.ap
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %3
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !84

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @dmix_scale_c(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2) #3 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %2, 9223372036854775804        ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !12
  %i.d = sext <4 x i32> %wide.load to <4 x i64>
  %i.e = mul nsw <4 x i64> %broadcast.splat, %i.d
  %i.f = add nsw <4 x i64> %i.e, splat (i64 16384)
  %i.g = lshr <4 x i64> %i.f, splat (i64 15)
  %i.h = trunc <4 x i64> %i.g to <4 x i32>
  store <4 x i32> %i.h, ptr %i.c, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.l, %i.b
  %i.n = add nsw i64 %i.m, 16384
  %i.o = lshr i64 %i.n, 15
  %i.p = trunc i64 %i.o to i32
  store i32 %i.p, ptr %i.j, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !88

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @dmix_scale_inv_c(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2) #3 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %2, 9223372036854775804        ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !12
  %i.d = sext <4 x i32> %wide.load to <4 x i64>
  %i.e = mul nsw <4 x i64> %broadcast.splat, %i.d
  %i.f = add nsw <4 x i64> %i.e, splat (i64 32768)
  %i.g = lshr <4 x i64> %i.f, splat (i64 16)
  %i.h = trunc <4 x i64> %i.g to <4 x i32>
  store <4 x i32> %i.h, ptr %i.c, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.l, %i.b
  %i.n = add nsw i64 %i.m, 32768
  %i.o = lshr i64 %i.n, 16
  %i.p = trunc i64 %i.o to i32
  store i32 %i.p, ptr %i.j, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @assemble_freq_bands_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) #3 {
bb.a:
  %5 = ptrtoaddr ptr %1 to i64
  %i.a = icmp sgt i64 %4, 0
  br i1 %i.a, label %.lr.ph.i, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4, !tbaa !12
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.d = shl i64 %4, 2                            ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %2, i64 %i.d
  %bound0 = icmp ult ptr %1, %i.f
  %bound1 = icmp ult ptr %2, %i.e
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, 9223372036854775804        ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !12, !alias.scope !120
  %i.h = sext <4 x i32> %wide.load to <4 x i64>
  %i.i = mul nsw <4 x i64> %broadcast.splat, %i.h
  %i.j = add nsw <4 x i64> %i.i, splat (i64 2097152)
  %i.k = lshr <4 x i64> %i.j, splat (i64 22)
  %i.l = trunc <4 x i64> %i.k to <4 x i32>
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %wide.load88 = load <4 x i32>, ptr %i.m, align 4, !tbaa !12, !alias.scope !121, !noalias !120
  %i.n = sub <4 x i32> %wide.load88, %i.l
  store <4 x i32> %i.n, ptr %i.m, align 4, !tbaa !12, !alias.scope !121, !noalias !120
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.lr.ph.i44, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.ph
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, %i.c
  %i.t = add nsw i64 %i.s, 2097152
  %i.u = lshr i64 %i.t, 22
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.ph ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12
  %i.y = sub i32 %i.x, %i.v
  store i32 %i.y, ptr %i.w, align 4, !tbaa !12
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.z = icmp eq i64 %4, %.neg
  br i1 %i.z, label %.lr.ph.i44, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %i.c
  %i.ae = add nsw i64 %i.ad, 2097152
  %i.af = lshr i64 %i.ae, 22
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !12
  %i.aj = sub i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.am, %i.c
  %i.ao = add nsw i64 %i.an, 2097152
  %i.ap = lshr i64 %i.ao, 22
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !12
  %i.at = sub i32 %i.as, %i.aq
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !12
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %4
  br i1 %exitcond.not.i.1, label %.lr.ph.i44, label %scalar.ph, !llvm.loop !95

.lr.ph.i44:                                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !12
  %i.aw = sext i32 %i.av to i64                   ; 4 uses
  %min.iters.check95 = icmp ult i64 %4, 4
  br i1 %min.iters.check95, label %scalar.ph94.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %.lr.ph.i44
  %i.ax = shl i64 %4, 2                           ; 2 uses
  %i.ay = getelementptr i8, ptr %2, i64 %i.ax
  %i.az = getelementptr i8, ptr %1, i64 %i.ax
  %bound097 = icmp ult ptr %2, %i.az
  %bound198 = icmp ult ptr %1, %i.ay
  %found.conflict99 = and i1 %bound097, %bound198
  br i1 %found.conflict99, label %scalar.ph94.preheader, label %vector.ph100

vector.ph100:                                     ; preds = %vector.memcheck96
  %n.vec101 = and i64 %4, 9223372036854775804     ; 3 uses
  %broadcast.splatinsert102 = insertelement <4 x i64> poison, i64 %i.aw, i64 0
  %broadcast.splat103 = shufflevector <4 x i64> %broadcast.splatinsert102, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph100
  %index105 = phi i64 [ 0, %vector.ph100 ], [ %index.next108, %vector.body104 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index105
  %wide.load106 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !12, !alias.scope !122
  %i.bb = sext <4 x i32> %wide.load106 to <4 x i64>
  %i.bc = mul nsw <4 x i64> %broadcast.splat103, %i.bb
  %i.bd = add nsw <4 x i64> %i.bc, splat (i64 2097152)
  %i.be = lshr <4 x i64> %i.bd, splat (i64 22)
  %i.bf = trunc <4 x i64> %i.be to <4 x i32>
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index105 ; 2 uses
  %wide.load107 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !12, !alias.scope !123, !noalias !122
  %i.bh = sub <4 x i32> %wide.load107, %i.bf
  store <4 x i32> %i.bh, ptr %i.bg, align 4, !tbaa !12, !alias.scope !123, !noalias !122
  %index.next108 = add nuw i64 %index105, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next108, %n.vec101
  br i1 %i.bi, label %middle.block109, label %vector.body104, !llvm.loop !99

middle.block109:                                  ; preds = %vector.body104
  %cmp.n110 = icmp eq i64 %4, %n.vec101
  br i1 %cmp.n110, label %.lr.ph.i49, label %scalar.ph94.preheader

scalar.ph94.preheader:                            ; preds = %vector.memcheck96, %.lr.ph.i44, %middle.block109
  %indvars.iv.i45.ph = phi i64 [ 0, %vector.memcheck96 ], [ 0, %.lr.ph.i44 ], [ %n.vec101, %middle.block109 ] ; 5 uses
  %.neg226 = or disjoint i64 %indvars.iv.i45.ph, 1
  %xtraiter203 = and i64 %4, 1
  %lcmp.mod204.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod204.not, label %scalar.ph94.prol.loopexit, label %scalar.ph94.prol

scalar.ph94.prol:                                 ; preds = %scalar.ph94.preheader
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i45.ph
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !12
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul nsw i64 %i.bl, %i.aw
  %i.bn = add nsw i64 %i.bm, 2097152
  %i.bo = lshr i64 %i.bn, 22
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i45.ph ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !12
  %i.bs = sub i32 %i.br, %i.bp
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !12
  %indvars.iv.next.i46.prol = or disjoint i64 %indvars.iv.i45.ph, 1
  br label %scalar.ph94.prol.loopexit

scalar.ph94.prol.loopexit:                        ; preds = %scalar.ph94.prol, %scalar.ph94.preheader
  %indvars.iv.i45.unr = phi i64 [ %indvars.iv.i45.ph, %scalar.ph94.preheader ], [ %indvars.iv.next.i46.prol, %scalar.ph94.prol ]
  %i.bt = icmp eq i64 %4, %.neg226
  br i1 %i.bt, label %.lr.ph.i49, label %scalar.ph94

scalar.ph94:                                      ; preds = %scalar.ph94.prol.loopexit, %scalar.ph94
  %indvars.iv.i45 = phi i64 [ %indvars.iv.next.i46.1, %scalar.ph94 ], [ %indvars.iv.i45.unr, %scalar.ph94.prol.loopexit ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i45
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !12
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul nsw i64 %i.bw, %i.aw
  %i.by = add nsw i64 %i.bx, 2097152
  %i.bz = lshr i64 %i.by, 22
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i45 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !12
  %i.cd = sub i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !12
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i46
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !12
  %i.cg = sext i32 %i.cf to i64
  %i.ch = mul nsw i64 %i.cg, %i.aw
  %i.ci = add nsw i64 %i.ch, 2097152
  %i.cj = lshr i64 %i.ci, 22
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i46 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !12
  %i.cn = sub i32 %i.cm, %i.ck
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !12
  %indvars.iv.next.i46.1 = add nuw nsw i64 %indvars.iv.i45, 2 ; 2 uses
  %exitcond.not.i47.1 = icmp eq i64 %indvars.iv.next.i46.1, %4
  br i1 %exitcond.not.i47.1, label %.lr.ph.i49, label %scalar.ph94, !llvm.loop !100

end_hunk_0
begin_hunk_1_@assemble_freq_bands_c:bb.a
  %unroll_iter = and i64 %4, 9223372036854775806
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  %lcmp.mod211 = trunc i64 %4 to i1
  %xtraiter213 = and i64 %4, 1
  %i.ge = icmp eq i64 %i.gc, 0
  %unroll_iter216 = and i64 %4, 9223372036854775806
  %lcmp.mod214.not = icmp eq i64 %xtraiter213, 0
  %lcmp.mod215 = trunc i64 %4 to i1
  %xtraiter219 = and i64 %4, 1
  %i.gf = icmp eq i64 %i.gc, 0
  %unroll_iter222 = and i64 %4, 9223372036854775806
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  %lcmp.mod221 = trunc i64 %4 to i1
  br label %.lr.ph.i59.us

.lr.ph.i59.us:                                    ; preds = %.lr.ph.i59.us.preheader, %filter1.exit72.loopexit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %filter1.exit72.loopexit.us ], [ 0, %.lr.ph.i59.us.preheader ] ; 2 uses
  %.04173.us = phi ptr [ %i.kb, %filter1.exit72.loopexit.us ], [ %1, %.lr.ph.i59.us.preheader ] ; 11 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !12
  %i.gj = sext i32 %i.gi to i64                   ; 3 uses
  br i1 %i.gd, label %.epil.preheader, label %.lr.ph.i59.us.new

.lr.ph.i59.us.new:                                ; preds = %.lr.ph.i59.us, %.lr.ph.i59.us.new
  %indvars.iv.i60.us = phi i64 [ %indvars.iv.next.i61.us.1, %.lr.ph.i59.us.new ], [ 0, %.lr.ph.i59.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i59.us.new ], [ 0, %.lr.ph.i59.us ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i60.us
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !12
  %i.gm = sext i32 %i.gl to i64
  %i.gn = mul nsw i64 %i.gm, %i.gj
  %i.go = add nsw i64 %i.gn, 4194304
  %i.gp = lshr i64 %i.go, 23
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.04173.us, i64 %indvars.iv.i60.us ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !12
  %i.gt = sub i32 %i.gs, %i.gq
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !12
  %indvars.iv.next.i61.us = or disjoint i64 %indvars.iv.i60.us, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i61.us
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !12
  %i.gw = sext i32 %i.gv to i64
  %i.gx = mul nsw i64 %i.gw, %i.gj
  %i.gy = add nsw i64 %i.gx, 4194304
  %i.gz = lshr i64 %i.gy, 23
  %i.ha = trunc i64 %i.gz to i32
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.04173.us, i64 %indvars.iv.next.i61.us ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !12
  %i.hd = sub i32 %i.hc, %i.ha
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !12
  %indvars.iv.next.i61.us.1 = add nuw nsw i64 %indvars.iv.i60.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i63.us.unr-lcssa, label %.lr.ph.i59.us.new, !llvm.loop !111

.lr.ph.i63.us.unr-lcssa:                          ; preds = %.lr.ph.i59.us.new
  br i1 %lcmp.mod210.not, label %.lr.ph.i63.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i63.us.unr-lcssa, %.lr.ph.i59.us
  %indvars.iv.i60.us.epil.init = phi i64 [ 0, %.lr.ph.i59.us ], [ %indvars.iv.next.i61.us.1, %.lr.ph.i63.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod211)
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i60.us.epil.init
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !12
  %i.hg = sext i32 %i.hf to i64
  %i.hh = mul nsw i64 %i.hg, %i.gj
  %i.hi = add nsw i64 %i.hh, 4194304
  %i.hj = lshr i64 %i.hi, 23
  %i.hk = trunc i64 %i.hj to i32
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.04173.us, i64 %indvars.iv.i60.us.epil.init ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !12
  %i.hn = sub i32 %i.hm, %i.hk
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !12
  br label %.lr.ph.i63.us

.lr.ph.i63.us:                                    ; preds = %.lr.ph.i63.us.unr-lcssa, %.epil.preheader
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !12
  %i.hq = sext i32 %i.hp to i64                   ; 3 uses
  br i1 %i.ge, label %.epil.preheader212, label %.lr.ph.i63.us.new

.lr.ph.i63.us.new:                                ; preds = %.lr.ph.i63.us, %.lr.ph.i63.us.new
  %indvars.iv.i64.us = phi i64 [ %indvars.iv.next.i65.us.1, %.lr.ph.i63.us.new ], [ 0, %.lr.ph.i63.us ] ; 4 uses
  %niter217 = phi i64 [ %niter217.next.1, %.lr.ph.i63.us.new ], [ 0, %.lr.ph.i63.us ]
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.04173.us, i64 %indvars.iv.i64.us
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !12
  %i.ht = sext i32 %i.hs to i64
  %i.hu = mul nsw i64 %i.ht, %i.hq
  %i.hv = add nsw i64 %i.hu, 4194304
  %i.hw = lshr i64 %i.hv, 23
  %i.hx = trunc i64 %i.hw to i32
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i64.us ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !12
  %i.ia = sub i32 %i.hz, %i.hx
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !12
  %indvars.iv.next.i65.us = or disjoint i64 %indvars.iv.i64.us, 1 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.04173.us, i64 %indvars.iv.next.i65.us
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !12
  %i.id = sext i32 %i.ic to i64
  %i.ie = mul nsw i64 %i.id, %i.hq
  %i.if = add nsw i64 %i.ie, 4194304
  %i.ig = lshr i64 %i.if, 23
  %i.ih = trunc i64 %i.ig to i32
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i65.us ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !12
  %i.ik = sub i32 %i.ij, %i.ih
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !12
  %indvars.iv.next.i65.us.1 = add nuw nsw i64 %indvars.iv.i64.us, 2 ; 2 uses
  %niter217.next.1 = add i64 %niter217, 2         ; 2 uses
  %niter217.ncmp.1 = icmp eq i64 %niter217.next.1, %unroll_iter216
  br i1 %niter217.ncmp.1, label %.lr.ph.i68.us.unr-lcssa, label %.lr.ph.i63.us.new, !llvm.loop !111

.lr.ph.i68.us.unr-lcssa:                          ; preds = %.lr.ph.i63.us.new
  br i1 %lcmp.mod214.not, label %.lr.ph.i68.us, label %.epil.preheader212

.epil.preheader212:                               ; preds = %.lr.ph.i68.us.unr-lcssa, %.lr.ph.i63.us
  %indvars.iv.i64.us.epil.init = phi i64 [ 0, %.lr.ph.i63.us ], [ %indvars.iv.next.i65.us.1, %.lr.ph.i68.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod215)
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.04173.us, i64 %indvars.iv.i64.us.epil.init
  %i.im = load i32, ptr %i.il, align 4, !tbaa !12
  %i.in = sext i32 %i.im to i64
  %i.io = mul nsw i64 %i.in, %i.hq
  %i.ip = add nsw i64 %i.io, 4194304
  %i.iq = lshr i64 %i.ip, 23
  %i.ir = trunc i64 %i.iq to i32
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i64.us.epil.init ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !12
  %i.iu = sub i32 %i.it, %i.ir
  store i32 %i.iu, ptr %i.is, align 4, !tbaa !12
  br label %.lr.ph.i68.us

.lr.ph.i68.us:                                    ; preds = %.lr.ph.i68.us.unr-lcssa, %.epil.preheader212
  %i.iv = load i32, ptr %i.gh, align 4, !tbaa !12
  %i.iw = sext i32 %i.iv to i64                   ; 3 uses
  br i1 %i.gf, label %.epil.preheader218, label %.lr.ph.i68.us.new

.lr.ph.i68.us.new:                                ; preds = %.lr.ph.i68.us, %.lr.ph.i68.us.new
  %indvars.iv.i69.us = phi i64 [ %indvars.iv.next.i70.us.1, %.lr.ph.i68.us.new ], [ 0, %.lr.ph.i68.us ] ; 4 uses
  %niter223 = phi i64 [ %niter223.next.1, %.lr.ph.i68.us.new ], [ 0, %.lr.ph.i68.us ]
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i69.us
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !12
  %i.iz = sext i32 %i.iy to i64
  %i.ja = mul nsw i64 %i.iz, %i.iw
  %i.jb = add nsw i64 %i.ja, 4194304
  %i.jc = lshr i64 %i.jb, 23
  %i.jd = trunc i64 %i.jc to i32
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.04173.us, i64 %indvars.iv.i69.us ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !12
  %i.jg = sub i32 %i.jf, %i.jd
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !12
  %indvars.iv.next.i70.us = or disjoint i64 %indvars.iv.i69.us, 1 ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i70.us
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !12
  %i.jj = sext i32 %i.ji to i64
  %i.jk = mul nsw i64 %i.jj, %i.iw
  %i.jl = add nsw i64 %i.jk, 4194304
  %i.jm = lshr i64 %i.jl, 23
  %i.jn = trunc i64 %i.jm to i32
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.04173.us, i64 %indvars.iv.next.i70.us ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !12
  %i.jq = sub i32 %i.jp, %i.jn
  store i32 %i.jq, ptr %i.jo, align 4, !tbaa !12
  %indvars.iv.next.i70.us.1 = add nuw nsw i64 %indvars.iv.i69.us, 2 ; 2 uses
  %niter223.next.1 = add i64 %niter223, 2         ; 2 uses
  %niter223.ncmp.1 = icmp eq i64 %niter223.next.1, %unroll_iter222
  br i1 %niter223.ncmp.1, label %filter1.exit72.loopexit.us.unr-lcssa, label %.lr.ph.i68.us.new, !llvm.loop !111

filter1.exit72.loopexit.us.unr-lcssa:             ; preds = %.lr.ph.i68.us.new
  br i1 %lcmp.mod220.not, label %filter1.exit72.loopexit.us, label %.epil.preheader218

.epil.preheader218:                               ; preds = %filter1.exit72.loopexit.us.unr-lcssa, %.lr.ph.i68.us
  %indvars.iv.i69.us.epil.init = phi i64 [ 0, %.lr.ph.i68.us ], [ %indvars.iv.next.i70.us.1, %filter1.exit72.loopexit.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod221)
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i69.us.epil.init
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !12
  %i.jt = sext i32 %i.js to i64
  %i.ju = mul nsw i64 %i.jt, %i.iw
  %i.jv = add nsw i64 %i.ju, 4194304
  %i.jw = lshr i64 %i.jv, 23
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.04173.us, i64 %indvars.iv.i69.us.epil.init ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !12
  %i.ka = sub i32 %i.jz, %i.jx
  store i32 %i.ka, ptr %i.jy, align 4, !tbaa !12
  br label %filter1.exit72.loopexit.us

filter1.exit72.loopexit.us:                       ; preds = %filter1.exit72.loopexit.us.unr-lcssa, %.epil.preheader218
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %.04173.us, i64 -4 ; 6 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.i59.us, !llvm.loop !112

.preheader:                                       ; preds = %filter1.exit72.loopexit.us
  %min.iters.check183 = icmp ult i64 %4, 20
  br i1 %min.iters.check183, label %.lr.ph.preheader, label %vector.memcheck173

vector.memcheck173:                               ; preds = %.preheader
  %i.kc = shl i64 %4, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.kc  ; 2 uses
  %i.kd = shl i64 %4, 2                           ; 2 uses
  %scevgep174 = getelementptr i8, ptr %2, i64 %i.kd
  %i.ke = ptrtoaddr ptr %i.kb to i64
  %reass.sub = sub i64 %i.ke, %5
  %i.kf = getelementptr i8, ptr %1, i64 %i.kd
  %i.kg = getelementptr i8, ptr %i.kf, i64 %reass.sub
  %scevgep175 = getelementptr i8, ptr %i.kg, i64 4
  %bound0176 = icmp ult ptr %0, %scevgep174
  %bound1177 = icmp ult ptr %2, %scevgep
  %found.conflict178 = and i1 %bound0176, %bound1177
  %bound0179 = icmp ult ptr %0, %scevgep175
  %bound1180 = icmp ult ptr %.04173.us, %scevgep
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx = or i1 %found.conflict178, %found.conflict181
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck173
  %n.vec185 = and i64 %4, 9223372036854775804     ; 5 uses
  %i.kh = shl i64 %n.vec185, 3
  %i.ki = getelementptr i8, ptr %0, i64 %i.kh
  %i.kj = shl i64 %n.vec185, 2                    ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kb, i64 %i.kj
  %i.kl = getelementptr i8, ptr %2, i64 %i.kj
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next196, %vector.body186 ] ; 3 uses
  %i.km = shl i64 %index187, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.km
  %i.kn = getelementptr i8, ptr %0, i64 %i.km
  %next.gep188 = getelementptr i8, ptr %i.kn, i64 16
  %i.ko = shl i64 %index187, 2                    ; 2 uses
  %next.gep189 = getelementptr i8, ptr %i.kb, i64 %i.ko ; 2 uses
  %next.gep190 = getelementptr i8, ptr %2, i64 %i.ko ; 2 uses
  %i.kp = getelementptr i8, ptr %next.gep190, i64 8
  %wide.load191 = load <2 x i32>, ptr %next.gep190, align 4, !tbaa !12, !alias.scope !128
  %wide.load192 = load <2 x i32>, ptr %i.kp, align 4, !tbaa !12, !alias.scope !128
  %i.kq = getelementptr inbounds nuw i8, ptr %next.gep189, i64 4
  %i.kr = getelementptr inbounds nuw i8, ptr %next.gep189, i64 12
  %wide.load193 = load <2 x i32>, ptr %i.kq, align 4, !tbaa !12, !alias.scope !129
  %wide.load194 = load <2 x i32>, ptr %i.kr, align 4, !tbaa !12, !alias.scope !129
  %interleaved.vec = shufflevector <2 x i32> %wide.load191, <2 x i32> %wide.load193, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %next.gep, align 4, !tbaa !12, !alias.scope !130, !noalias !131
  %interleaved.vec195 = shufflevector <2 x i32> %wide.load192, <2 x i32> %wide.load194, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec195, ptr %next.gep188, align 4, !tbaa !12, !alias.scope !130, !noalias !131
  %index.next196 = add nuw i64 %index187, 4       ; 2 uses
  %i.ks = icmp eq i64 %index.next196, %n.vec185
  br i1 %i.ks, label %middle.block197, label %vector.body186, !llvm.loop !117

middle.block197:                                  ; preds = %vector.body186
  %cmp.n198 = icmp eq i64 %4, %n.vec185
  br i1 %cmp.n198, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck173, %.preheader, %middle.block197
  %indvars.iv82.ph = phi i64 [ 0, %vector.memcheck173 ], [ 0, %.preheader ], [ %n.vec185, %middle.block197 ] ; 3 uses
  %.04077.ph = phi ptr [ %0, %vector.memcheck173 ], [ %0, %.preheader ], [ %i.ki, %middle.block197 ] ; 2 uses
  %.14276.ph = phi ptr [ %i.kb, %vector.memcheck173 ], [ %i.kb, %.preheader ], [ %i.kk, %middle.block197 ] ; 2 uses
  %.04375.ph = phi ptr [ %2, %vector.memcheck173 ], [ %2, %.preheader ], [ %i.kl, %middle.block197 ] ; 2 uses
  %xtraiter224 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod225.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod225.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv82.prol = phi i64 [ %indvars.iv.next83.prol, %.lr.ph.prol ], [ %indvars.iv82.ph, %.lr.ph.preheader ]
  %.04077.prol = phi ptr [ %i.ky, %.lr.ph.prol ], [ %.04077.ph, %.lr.ph.preheader ] ; 3 uses
  %.14276.prol = phi ptr [ %i.kw, %.lr.ph.prol ], [ %.14276.ph, %.lr.ph.preheader ]
  %.04375.prol = phi ptr [ %i.kt, %.lr.ph.prol ], [ %.04375.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.04375.prol, i64 4 ; 2 uses
  %i.ku = load i32, ptr %.04375.prol, align 4, !tbaa !12
  %i.kv = getelementptr inbounds nuw i8, ptr %.04077.prol, i64 4
  store i32 %i.ku, ptr %.04077.prol, align 4, !tbaa !12
  %i.kw = getelementptr inbounds nuw i8, ptr %.14276.prol, i64 4 ; 3 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !12
  %i.ky = getelementptr inbounds nuw i8, ptr %.04077.prol, i64 8 ; 2 uses
  store i32 %i.kx, ptr %i.kv, align 4, !tbaa !12
  %indvars.iv.next83.prol = add nuw nsw i64 %indvars.iv82.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter224
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !118

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv82.unr = phi i64 [ %indvars.iv82.ph, %.lr.ph.preheader ], [ %indvars.iv.next83.prol, %.lr.ph.prol ]
  %.04077.unr = phi ptr [ %.04077.ph, %.lr.ph.preheader ], [ %i.ky, %.lr.ph.prol ]
  %.14276.unr = phi ptr [ %.14276.ph, %.lr.ph.preheader ], [ %i.kw, %.lr.ph.prol ]
  %.04375.unr = phi ptr [ %.04375.ph, %.lr.ph.preheader ], [ %i.kt, %.lr.ph.prol ]
  %i.kz = sub nsw i64 %indvars.iv82.ph, %4
  %i.la = icmp ugt i64 %i.kz, -4
  br i1 %i.la, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv82 = phi i64 [ %indvars.iv.next83.3, %.lr.ph ], [ %indvars.iv82.unr, %.lr.ph.prol.loopexit ]
  %.04077 = phi ptr [ %i.ly, %.lr.ph ], [ %.04077.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.14276 = phi ptr [ %i.lw, %.lr.ph ], [ %.14276.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.04375 = phi ptr [ %i.lt, %.lr.ph ], [ %.04375.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.04375, i64 4
  %i.lc = load i32, ptr %.04375, align 4, !tbaa !12
  %i.ld = getelementptr inbounds nuw i8, ptr %.04077, i64 4
  store i32 %i.lc, ptr %.04077, align 4, !tbaa !12
  %i.le = getelementptr inbounds nuw i8, ptr %.14276, i64 4
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !12
  %i.lg = getelementptr inbounds nuw i8, ptr %.04077, i64 8
  store i32 %i.lf, ptr %i.ld, align 4, !tbaa !12
  %i.lh = getelementptr inbounds nuw i8, ptr %.04375, i64 8
  %i.li = load i32, ptr %i.lb, align 4, !tbaa !12
  %i.lj = getelementptr inbounds nuw i8, ptr %.04077, i64 12
  store i32 %i.li, ptr %i.lg, align 4, !tbaa !12
  %i.lk = getelementptr inbounds nuw i8, ptr %.14276, i64 8
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !12
  %i.lm = getelementptr inbounds nuw i8, ptr %.04077, i64 16
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !12
  %i.ln = getelementptr inbounds nuw i8, ptr %.04375, i64 12
  %i.lo = load i32, ptr %i.lh, align 4, !tbaa !12
  %i.lp = getelementptr inbounds nuw i8, ptr %.04077, i64 20
  store i32 %i.lo, ptr %i.lm, align 4, !tbaa !12
  %i.lq = getelementptr inbounds nuw i8, ptr %.14276, i64 12
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !12
  %i.ls = getelementptr inbounds nuw i8, ptr %.04077, i64 24
  store i32 %i.lr, ptr %i.lp, align 4, !tbaa !12
  %i.lt = getelementptr inbounds nuw i8, ptr %.04375, i64 16
  %i.lu = load i32, ptr %i.ln, align 4, !tbaa !12
  %i.lv = getelementptr inbounds nuw i8, ptr %.04077, i64 28
  store i32 %i.lu, ptr %i.ls, align 4, !tbaa !12
  %i.lw = getelementptr inbounds nuw i8, ptr %.14276, i64 16 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !12
  %i.ly = getelementptr inbounds nuw i8, ptr %.04077, i64 32
  store i32 %i.lx, ptr %i.lv, align 4, !tbaa !12
  %indvars.iv.next83.3 = add nuw nsw i64 %indvars.iv82, 4 ; 2 uses
  %exitcond85.not.3 = icmp eq i64 %indvars.iv.next83.3, %4
  br i1 %exitcond85.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !119

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block197, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @lbr_bank_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load <2 x float>, ptr %2, align 4, !tbaa !19
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.d = load <2 x float>, ptr %i.a, align 4, !tbaa !19 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !19 ; 3 uses
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.h = icmp sgt i64 %4, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load <2 x float>, ptr %i.k, align 4, !tbaa !19 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.n = load float, ptr %i.m, align 4, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load float, ptr %i.o, align 4, !tbaa !19 ; 3 uses
  %i.q = fneg nsz <2 x float> %i.d                ; 2 uses
  %i.r = extractelement <2 x float> %i.l, i64 0
  %i.s = fneg nsz float %i.r
  %i.t = fneg nsz float %i.j
  %i.u = fneg nsz float %i.p
  %i.v = insertelement <4 x float> poison, float %i.s, i64 0
  %i.w = insertelement <4 x float> %i.v, float %i.p, i64 2
  %i.x = insertelement <4 x float> %i.w, float %i.u, i64 3
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.z = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aa = insertelement <2 x float> %i.z, float %i.t, i64 1
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.ac = insertelement <2 x float> %i.z, float %i.p, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ae = insertelement <4 x float> poison, float %i.n, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = shufflevector <2 x float> %i.d, <2 x float> %i.q, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ah = shufflevector <2 x float> %i.q, <2 x float> %i.d, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.ai = icmp samesign ugt i64 %4, 13
  br i1 %i.ai, label %.lr.ph107.preheader, label %._crit_edge

.lr.ph107.preheader:                              ; preds = %.preheader
  %i.aj = add nsw i64 %4, -2
  %i.ak = add nsw i64 %4, -13                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ak, 4
  br i1 %min.iters.check, label %.lr.ph107.preheader115, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph107.preheader
  %n.vec = and i64 %i.ak, -4                      ; 3 uses
  %i.al = add i64 %n.vec, 12
  %broadcast.splat = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat114 = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index ; 2 uses
  %i.an = getelementptr [16 x i8], ptr %0, i64 %index ; 2 uses
  %i.ao = getelementptr [16 x i8], ptr %0, i64 %index ; 2 uses
  %i.ap = getelementptr [16 x i8], ptr %0, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 204
  %i.ar = getelementptr i8, ptr %i.an, i64 220
  %i.as = getelementptr i8, ptr %i.ao, i64 236
  %i.at = getelementptr i8, ptr %i.ap, i64 252
  %i.au = load float, ptr %i.aq, align 4, !tbaa !19
  %i.av = load float, ptr %i.ar, align 4, !tbaa !19
  %i.aw = load float, ptr %i.as, align 4, !tbaa !19
end_hunk_1
