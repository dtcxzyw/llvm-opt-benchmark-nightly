Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/set?download=true
inline.NumInlined: 29
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@sf_addset:bb.a

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.au = icmp ult i64 %indvars.iv.ph, 3
  br i1 %i.au, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.1
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !4
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.2
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !4
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not24.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not24.3, label %.loopexit, label %scalar.ph, !llvm.loop !64

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @sf_delset(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.d = mul nsw i32 %i.c, %1
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !34
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 4, !tbaa !34
  %i.j = mul nsw i32 %i.i, %i.c
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.k ; 7 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = and i32 %i.m, 1023                       ; 2 uses
  %i.o = zext nneg i32 %i.n to i64                ; 5 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.n, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.q = sub nsw i64 %i.k, %i.e
  %i.r = shl nsw i64 %i.q, 2
  %i.s = add nsw i64 %i.r, -1
  %diff.check = icmp ult i64 %i.s, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 2040                     ; 3 uses
  %i.t = sub nsw i64 %i.o, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = sub i64 %i.o, %index                     ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -12
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -28
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !4
  %wide.load5 = load <4 x i32>, ptr %i.x, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.u ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -12
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -28
  store <4 x i32> %wide.load, ptr %i.z, align 4, !tbaa !4
  store <4 x i32> %wide.load5, ptr %i.aa, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %set_copy.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.o, %vector.memcheck ], [ %i.o, %bb.a ], [ %i.t, %middle.block ] ; 4 uses
  %i.ac = add nsw i64 %indvars.iv.i.ph, 1
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.prol
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.prol
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !4
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !66

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.ag = icmp ult i64 %indvars.iv.i.ph, 3
  br i1 %i.ag, label %set_copy.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !4
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.1
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i.1
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !4
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.2
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i.2
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !4
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4
  %.not.i.3 = icmp eq i64 %indvars.iv.next.i.2, 0
  br i1 %.not.i.3, label %set_copy.exit, label %scalar.ph, !llvm.loop !67

set_copy.exit:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @sf_print(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %ps1.exit
  %.09 = phi i32 [ %i.bh, %ps1.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.078 = phi ptr [ %i.bg, %ps1.exit ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %i.g = load i32, ptr %.078, align 4, !tbaa !4
  %i.h = shl i32 %i.g, 5
  %i.i = and i32 %i.h, 32736                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 91, ptr @s1, align 16, !tbaa !68
  %.not37.i = icmp eq i32 %i.i, 0
  br i1 %.not37.i, label %ps1.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.g
  %.036.i = phi i32 [ %.1.i, %bb.g ], [ 1, %.lr.ph ] ; 2 uses
  %.02235.i = phi i32 [ %.3.i, %bb.g ], [ 1, %.lr.ph ] ; 4 uses
  %.02734.i = phi i32 [ %i.az, %bb.g ], [ 0, %.lr.ph ] ; 4 uses
  %i.j = lshr i32 %.02734.i, 5
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.078, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = and i32 %.02734.i, 31
  %i.p = shl nuw i32 1, %i.o
  %i.q = and i32 %i.p, %i.n
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.not30.i = icmp eq i32 %.036.i, 0
  br i1 %.not30.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add nsw i32 %.02235.i, 1
  %i.s = sext i32 %.02235.i to i64
  %i.t = getelementptr inbounds i8, ptr @s1, i64 %i.s
  store i8 44, ptr %i.t, align 1, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.123.i = phi i32 [ %.02235.i, %bb.b ], [ %i.r, %bb.c ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv40.i = phi i32 [ %indvars.iv.next41.i, %bb.e ], [ 1, %bb.d ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.026.i = phi i32 [ %i.y, %bb.e ], [ %.02734.i, %bb.d ] ; 3 uses
  %i.u = urem i32 %.026.i, 10
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.w, ptr %i.x, align 1, !tbaa !68
  %i.y = udiv i32 %.026.i, 10
  %.not31.i = icmp samesign ult i32 %.026.i, 10
  %indvars.iv.next41.i = add i32 %indvars.iv40.i, 1
  br i1 %.not31.i, label %iter.check, label %bb.e

iter.check:                                       ; preds = %bb.e
  %1 = sext i32 %indvars.iv40.i to i64            ; 6 uses
  %i.z = sext i32 %.123.i to i64                  ; 5 uses
  %2 = tail call i64 @llvm.smax.i64(i64 %1, i64 1) ; 5 uses
  %min.iters.check = icmp slt i32 %indvars.iv40.i, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp slt i32 %indvars.iv40.i, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %2, 24
  %n.vec = and i64 %2, 2147483616                 ; 5 uses
  %i.ab = add nsw i64 %n.vec, %i.z                ; 3 uses
  %3 = sub nsw i64 %1, %n.vec
  %invariant.gep.a = getelementptr i8, ptr %i.a, i64 %1
  %invariant.gep29.a = getelementptr i8, ptr @s1, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = xor i64 %index, -1
  %gep.a = getelementptr i8, ptr %invariant.gep.a, i64 %i.ac ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %gep.a, i64 -15
  %i.ae = getelementptr inbounds i8, ptr %gep.a, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ad, align 1, !tbaa !68
  %wide.load13 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !68
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse14 = shufflevector <16 x i8> %wide.load13, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep30.a = getelementptr i8, ptr %invariant.gep29.a, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %gep30.a, i64 16
  store <16 x i8> %reverse, ptr %gep30.a, align 1, !tbaa !68
  store <16 x i8> %reverse14, ptr %i.af, align 1, !tbaa !68
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %ind.escape = add nsw i64 %i.ab, -1
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %2, 2147483640               ; 4 uses
  %i.ah = add nsw i64 %n.vec16, %i.z              ; 3 uses
  %4 = sub nsw i64 %1, %n.vec16
  %invariant.gep31 = getelementptr i8, ptr %i.a, i64 %1
  %invariant.gep33 = getelementptr i8, ptr @s1, i64 %i.z
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 3 uses
  %i.ai = xor i64 %index17, -1
  %gep32 = getelementptr i8, ptr %invariant.gep31, i64 %i.ai
  %i.aj = getelementptr inbounds i8, ptr %gep32, i64 -7
  %wide.load18 = load <8 x i8>, ptr %i.aj, align 1, !tbaa !68
  %reverse19 = shufflevector <8 x i8> %wide.load18, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep34 = getelementptr i8, ptr %invariant.gep33, i64 %index17
  store <8 x i8> %reverse19, ptr %gep34, align 1, !tbaa !68
  %index.next20 = add nuw i64 %index17, 8         ; 2 uses
  %i.ak = icmp eq i64 %index.next20, %n.vec16
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape21 = add nsw i64 %i.ah, -1
  %cmp.n22 = icmp eq i64 %2, %n.vec16
  br i1 %cmp.n22, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv44.i.ph = phi i64 [ %i.z, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  %indvars.iv42.i.ph = phi i64 [ %1, %iter.check ], [ %3, %vec.epilog.iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %.preheader.i ], [ %indvars.iv44.i.ph, %.preheader.i.preheader ] ; 3 uses
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %.preheader.i ], [ %indvars.iv42.i.ph, %.preheader.i.preheader ] ; 2 uses
  %indvars.iv.next43.i = add nsw i64 %indvars.iv42.i, -1 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next43.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !68
  %indvars.iv.next45.i = add nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr @s1, i64 %indvars.iv44.i
  store i8 %i.am, ptr %i.an, align 1, !tbaa !68
  %i.ao = icmp sgt i64 %indvars.iv42.i, 1
  br i1 %i.ao, label %.preheader.i, label %.loopexit, !llvm.loop !72

.loopexit:                                        ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %indvars.iv44.i.lcssa = phi i64 [ %ind.escape21, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %indvars.iv44.i, %.preheader.i ] ; 3 uses
  %indvars.iv.next45.i.lcssa = phi i64 [ %i.ah, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %indvars.iv.next45.i, %.preheader.i ] ; 2 uses
  %i.ap = trunc nsw i64 %indvars.iv.next45.i.lcssa to i32
  %i.aq = icmp sgt i64 %indvars.iv44.i.lcssa, 104
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.ar = trunc nsw i64 %indvars.iv44.i.lcssa to i32
  %i.as = and i64 %indvars.iv.next45.i.lcssa, 4294967295
  %i.at = getelementptr inbounds nuw i8, ptr @s1, i64 %i.as
  store i8 46, ptr %i.at, align 1, !tbaa !68
  %i.au = and i64 %indvars.iv44.i.lcssa, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr @s1, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 46, ptr %i.aw, align 1, !tbaa !68
  %i.ax = add nuw nsw i32 %i.ar, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  store i8 46, ptr %i.ay, align 1, !tbaa !68
  br label %ps1.exit

bb.g:                                             ; preds = %.loopexit, %.lr.ph.i
  %.3.i = phi i32 [ %i.ap, %.loopexit ], [ %.02235.i, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i32 [ 0, %.loopexit ], [ %.036.i, %.lr.ph.i ]
  %i.az = add nuw nsw i32 %.02734.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.az, %i.i
  br i1 %exitcond.not.i, label %ps1.exit, label %.lr.ph.i

ps1.exit:                                         ; preds = %bb.g, %.lr.ph, %bb.f
  %.4.i = phi i32 [ %i.ax, %bb.f ], [ 1, %.lr.ph ], [ %.3.i, %bb.g ]
  %i.ba = sext i32 %.4.i to i64
  %i.bb = getelementptr inbounds i8, ptr @s1, i64 %i.ba ; 2 uses
  store i8 93, ptr %i.bb, align 1, !tbaa !68
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  store i8 0, ptr %i.bc, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.09, ptr noundef nonnull @s1) ; 0 uses
  %i.be = load i32, ptr %0, align 8, !tbaa !35
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %.078, i64 %i.bf
  %i.bh = add nuw nsw i32 %.09, 1                 ; 2 uses
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !34
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %ps1.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #18

; Function Attrs: nofree nounwind uwtable
define dso_local void @sf_bm_print(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %pbv1.exit
  %.010 = phi i32 [ 0, %.lr.ph ], [ %i.aw, %pbv1.exit ] ; 2 uses
  %.089 = phi ptr [ %i.e, %.lr.ph ], [ %i.av, %pbv1.exit ] ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28   ; 5 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader.i, label %pbv1.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.g to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.i = icmp eq i32 %i.g, 1
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.j = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.k = lshr i64 %indvars.iv.i, 5
  %i.l = and i64 %i.k, 134217727
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.089, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = and i32 %i.j, 30
  %i.q = shl nuw nsw i32 1, %i.p
  %i.r = and i32 %i.q, %i.o
  %.not.i = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not.i, i8 48, i8 49
  %i.t = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.i
  store i8 %i.s, ptr %i.t, align 2, !tbaa !68
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.u = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.v = lshr i64 %indvars.iv.i, 5
  %i.w = and i64 %i.v, 134217727
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.089, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = and i32 %i.u, 31
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = and i32 %i.ab, %i.z
  %.not.i.1 = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not.i.1, i8 48, i8 49
  %i.ae = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.next.i
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !68
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %pbv1.exit.loopexit.unr-lcssa, label %.lr.ph.i

pbv1.exit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pbv1.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %pbv1.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %pbv1.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod12 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.af = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.ag = lshr i64 %indvars.iv.i.epil.init, 5
  %i.ah = and i64 %i.ag, 134217727
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.089, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = and i32 %i.af, 31
  %i.am = shl nuw i32 1, %i.al
  %i.an = and i32 %i.am, %i.ak
  %.not.i.epil = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not.i.epil, i8 48, i8 49
  %i.ap = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.i.epil.init
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !68
  br label %pbv1.exit

pbv1.exit:                                        ; preds = %.lr.ph.i.epil.preheader, %pbv1.exit.loopexit.unr-lcssa, %bb.b
  %i.aq = sext i32 %i.g to i64
  %i.ar = getelementptr inbounds i8, ptr @s1, i64 %i.aq
  store i8 0, ptr %i.ar, align 1, !tbaa !68
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.010, ptr noundef nonnull @s1) ; 0 uses
  %i.at = load i32, ptr %0, align 8, !tbaa !35
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.089, i64 %i.au
  %i.aw = add nuw nsw i32 %.010, 1                ; 2 uses
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !34
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %pbv1.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @sf_write(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %i.b, i32 noundef %i.d) #25 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !34
  %i.i = load i32, ptr %1, align 8, !tbaa !35
  %i.j = mul nsw i32 %i.i, %i.h                   ; 2 uses
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 2
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %.idx
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %set_write.exit.peel.next
  %.014 = phi ptr [ %i.ae, %set_write.exit.peel.next ], [ %i.g, %bb.a ] ; 4 uses
  %i.n = load i32, ptr %.014, align 4, !tbaa !4   ; 2 uses
  %i.o = and i32 %i.n, 1023                       ; 3 uses
  %i.p = zext nneg i32 %i.o to i64
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %set_write.exit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
end_hunk_0
begin_hunk_1_@set_write:bb.a

.peel.begin:                                      ; preds = %bb.a, %bb.d
  %i.j = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.l) #25 ; 0 uses
  %indvars.iv.next.peel = add nuw nsw i64 %i.j, 1
  %i.n = and i64 %indvars.iv.next.peel, 7
  %i.o = icmp ne i64 %i.n, 0
  %.not12.peel = icmp eq i64 %i.j, %i.c
  %or.cond.peel = or i1 %.not12.peel, %i.o
  br i1 %or.cond.peel, label %.peel.next15, label %bb.e

bb.e:                                             ; preds = %.peel.begin
  %i.p = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0) ; 0 uses
  br label %.peel.next15

.peel.next15:                                     ; preds = %.peel.begin, %bb.e
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @sf_bm_read(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #25 ; 0 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !4    ; 3 uses
  %i.f = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  store ptr %i.j, ptr @set_family_garbage, align 8, !tbaa !47
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.h, %bb.b ], [ %i.f, %bb.c ] ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.e, ptr %i.k, align 4, !tbaa !28
  %i.l = icmp slt i32 %i.e, 33
  %i.m = add nsw i32 %i.e, -1
  %i.n = lshr i32 %i.m, 5
  %i.o = add nuw nsw i32 %i.n, 2
  %i.p = select i1 %i.l, i32 2, i32 %i.o          ; 2 uses
  store i32 %i.p, ptr %.0.i, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.d, ptr %i.q, align 8, !tbaa !49
  %i.r = sext i32 %i.d to i64
  %i.s = zext nneg i32 %i.p to i64
  %i.t = shl nsw i64 %i.r, 2
  %i.u = mul nsw i64 %i.t, %i.s
  %i.v = call noalias ptr @malloc(i64 noundef %i.u) #24
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 3 uses
  store i32 0, ptr %i.x, align 4, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !40
  %i.z = load i32, ptr %i.a, align 4, !tbaa !4
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph18, label %._crit_edge19

.lr.ph18:                                         ; preds = %sf_new.exit, %bb.h
  %.01517 = phi i32 [ %i.bk, %bb.h ], [ 0, %sf_new.exit ]
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.ac = load i32, ptr %.0.i, align 8, !tbaa !35
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !34  ; 2 uses
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.x, align 4, !tbaa !34
  %i.af = mul nsw i32 %i.ad, %i.ac
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ag ; 3 uses
  %i.ai = load i32, ptr %i.k, align 4, !tbaa !28  ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 33
  %i.ak = add nsw i32 %i.ai, -1
  %i.al = lshr i32 %i.ak, 5
  %i.am = add nuw nsw i32 %i.al, 1
  %i.an = select i1 %i.aj, i32 1, i32 %i.am       ; 3 uses
  store i32 %i.an, ptr %i.ah, align 4, !tbaa !4
  %i.ao = shl nuw nsw i32 %i.an, 2
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = add nsw i32 %i.an, -1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 2                ; 2 uses
  %i.at = sub nsw i64 %i.ap, %i.as
  %scevgep.i = getelementptr i8, ptr %i.ah, i64 %i.at
  %i.au = add nuw nsw i64 %i.as, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.au, i1 false), !tbaa !4
  %i.av = load i32, ptr %i.b, align 4, !tbaa !4
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph18, %bb.f
  %.016 = phi i32 [ %i.bg, %bb.f ], [ 0, %.lr.ph18 ] ; 3 uses
  %i.ax = call i32 @getc(ptr noundef %0)
  switch i32 %i.ax, label %bb.e [
    i32 48, label %bb.f
    i32 49, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.ay = and i32 %.016, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i32 %.016, 5
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = or i32 %i.be, %i.az
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !4
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.9) #25
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.d, %bb.e
  %i.bg = add nuw nsw i32 %.016, 1                ; 2 uses
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !4
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %.lr.ph18
  %i.bj = call i32 @getc(ptr noundef %0)
  %.not = icmp eq i32 %i.bj, 10
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.10) #25
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.bk = add nuw nsw i32 %.01517, 1              ; 2 uses
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !4
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %.lr.ph18, label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.h, %sf_new.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.0.i
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @ps1(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !4
  %i.c = shl i32 %i.b, 5
  %i.d = and i32 %i.c, 32736                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 91, ptr @s1, align 16, !tbaa !68
  %.not37 = icmp eq i32 %i.d, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.036 = phi i32 [ %.1, %bb.g ], [ 1, %bb.a ]    ; 2 uses
  %.02235 = phi i32 [ %.3, %bb.g ], [ 1, %bb.a ]  ; 4 uses
  %.02734 = phi i32 [ %i.au, %bb.g ], [ 0, %bb.a ] ; 4 uses
  %i.e = lshr i32 %.02734, 5
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = and i32 %.02734, 31
  %i.k = shl nuw i32 1, %i.j
  %i.l = and i32 %i.i, %i.k
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not30 = icmp eq i32 %.036, 0
  br i1 %.not30, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %.02235, 1
  %i.n = sext i32 %.02235 to i64
  %i.o = getelementptr inbounds i8, ptr @s1, i64 %i.n
  store i8 44, ptr %i.o, align 1, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.123 = phi i32 [ %.02235, %bb.b ], [ %i.m, %bb.c ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv40 = phi i32 [ %indvars.iv.next41, %bb.e ], [ 1, %bb.d ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.026 = phi i32 [ %i.t, %bb.e ], [ %.02734, %bb.d ] ; 3 uses
  %i.p = urem i32 %.026, 10
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.r, ptr %i.s, align 1, !tbaa !68
  %i.t = udiv i32 %.026, 10
  %.not31 = icmp samesign ult i32 %.026, 10
  %indvars.iv.next41 = add i32 %indvars.iv40, 1
  br i1 %.not31, label %iter.check, label %bb.e

iter.check:                                       ; preds = %bb.e
  %1 = sext i32 %indvars.iv40 to i64              ; 6 uses
  %i.u = sext i32 %.123 to i64                    ; 5 uses
  %2 = tail call i64 @llvm.smax.i64(i64 %1, i64 1) ; 5 uses
  %min.iters.check = icmp slt i32 %indvars.iv40, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check51 = icmp slt i32 %indvars.iv40, 32
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %2, 24
  %n.vec = and i64 %2, 2147483616                 ; 5 uses
  %i.w = add nsw i64 %n.vec, %i.u                 ; 3 uses
  %3 = sub nsw i64 %1, %n.vec
  %invariant.gep.a = getelementptr i8, ptr %i.a, i64 %1
  %invariant.gep69.a = getelementptr i8, ptr @s1, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = xor i64 %index, -1
  %gep.a = getelementptr i8, ptr %invariant.gep.a, i64 %i.x ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %gep.a, i64 -15
  %i.z = getelementptr inbounds i8, ptr %gep.a, i64 -31
  %wide.load = load <16 x i8>, ptr %i.y, align 1, !tbaa !68
  %wide.load52 = load <16 x i8>, ptr %i.z, align 1, !tbaa !68
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse53 = shufflevector <16 x i8> %wide.load52, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep70.a = getelementptr i8, ptr %invariant.gep69.a, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %gep70.a, i64 16
  store <16 x i8> %reverse, ptr %gep70.a, align 1, !tbaa !68
  store <16 x i8> %reverse53, ptr %i.aa, align 1, !tbaa !68
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %ind.escape = add nsw i64 %i.w, -1
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit64, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = and i64 %2, 2147483640               ; 4 uses
  %i.ac = add nsw i64 %n.vec55, %i.u              ; 3 uses
  %4 = sub nsw i64 %1, %n.vec55
  %invariant.gep71 = getelementptr i8, ptr %i.a, i64 %1
  %invariant.gep73 = getelementptr i8, ptr @s1, i64 %i.u
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 3 uses
  %i.ad = xor i64 %index56, -1
  %gep72 = getelementptr i8, ptr %invariant.gep71, i64 %i.ad
  %i.ae = getelementptr inbounds i8, ptr %gep72, i64 -7
  %wide.load57 = load <8 x i8>, ptr %i.ae, align 1, !tbaa !68
  %reverse58 = shufflevector <8 x i8> %wide.load57, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep74 = getelementptr i8, ptr %invariant.gep73, i64 %index56
  store <8 x i8> %reverse58, ptr %gep74, align 1, !tbaa !68
  %index.next59 = add nuw i64 %index56, 8         ; 2 uses
  %i.af = icmp eq i64 %index.next59, %n.vec55
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape60 = add nsw i64 %i.ac, -1
  %cmp.n61 = icmp eq i64 %2, %n.vec55
  br i1 %cmp.n61, label %.loopexit64, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv44.ph = phi i64 [ %i.u, %iter.check ], [ %i.w, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  %indvars.iv42.ph = phi i64 [ %1, %iter.check ], [ %3, %vec.epilog.iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.preheader ], [ %indvars.iv44.ph, %.preheader.preheader ] ; 3 uses
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.preheader ], [ %indvars.iv42.ph, %.preheader.preheader ] ; 2 uses
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, -1 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next43
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !68
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr @s1, i64 %indvars.iv44
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !68
  %i.aj = icmp sgt i64 %indvars.iv42, 1
  br i1 %i.aj, label %.preheader, label %.loopexit64, !llvm.loop !78

.loopexit64:                                      ; preds = %.preheader, %vec.epilog.middle.block, %middle.block
  %indvars.iv44.lcssa = phi i64 [ %ind.escape60, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %indvars.iv44, %.preheader ] ; 3 uses
  %indvars.iv.next45.lcssa = phi i64 [ %i.ac, %vec.epilog.middle.block ], [ %i.w, %middle.block ], [ %indvars.iv.next45, %.preheader ] ; 2 uses
  %i.ak = trunc nsw i64 %indvars.iv.next45.lcssa to i32
  %i.al = icmp sgt i64 %indvars.iv44.lcssa, 104
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit64
  %i.am = trunc nsw i64 %indvars.iv44.lcssa to i32
  %i.an = and i64 %indvars.iv.next45.lcssa, 4294967295
  %i.ao = getelementptr inbounds nuw i8, ptr @s1, i64 %i.an
  store i8 46, ptr %i.ao, align 1, !tbaa !68
  %i.ap = and i64 %indvars.iv44.lcssa, 4294967295
  %i.aq = getelementptr inbounds nuw i8, ptr @s1, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store i8 46, ptr %i.ar, align 1, !tbaa !68
  %i.as = add nuw nsw i32 %i.am, 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  store i8 46, ptr %i.at, align 1, !tbaa !68
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph, %.loopexit64
  %.3 = phi i32 [ %i.ak, %.loopexit64 ], [ %.02235, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ 0, %.loopexit64 ], [ %.036, %.lr.ph ]
  %i.au = add nuw nsw i32 %.02734, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.g, %bb.a, %bb.f
  %.4 = phi i32 [ %i.as, %bb.f ], [ 1, %bb.a ], [ %.3, %bb.g ]
  %i.av = sext i32 %.4 to i64
  %i.aw = getelementptr inbounds i8, ptr @s1, i64 %i.av ; 2 uses
  store i8 93, ptr %i.aw, align 1, !tbaa !68
  %i.ax = getelementptr i8, ptr %i.aw, i64 1
  store i8 0, ptr %i.ax, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr @s1
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @pbv1(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = lshr i64 %indvars.iv, 5
  %i.e = and i64 %i.d, 134217727
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = and i32 %i.c, 30
  %i.j = shl nuw nsw i32 1, %i.i
  %i.k = and i32 %i.h, %i.j
  %.not = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not, i8 48, i8 49
  %i.m = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv
  store i8 %i.l, ptr %i.m, align 2, !tbaa !68
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.n = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.o = lshr i64 %indvars.iv, 5
  %i.p = and i64 %i.o, 134217727
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = and i32 %i.n, 31
  %i.u = shl nuw i32 1, %i.t
  %i.v = and i32 %i.s, %i.u
  %.not.1 = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.1, i8 48, i8 49
  %i.x = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.next
  store i8 %i.w, ptr %i.x, align 1, !tbaa !68
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod10 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.y = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.z = lshr i64 %indvars.iv.epil.init, 5
  %i.aa = and i64 %i.z, 134217727
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = and i32 %i.y, 31
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = and i32 %i.ad, %i.af
  %.not.epil = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not.epil, i8 48, i8 49
  %i.ai = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.epil.init
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.aj = sext i32 %1 to i64
  %i.ak = getelementptr inbounds i8, ptr @s1, i64 %i.aj
  store i8 0, ptr %i.ak, align 1, !tbaa !68
  ret ptr @s1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @set_adjcnt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023                       ; 2 uses
  %.not19 = icmp eq i32 %i.b, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph18.preheader

.lr.ph18.preheader:                               ; preds = %bb.a
  %i.c = shl nuw nsw i32 %i.b, 5
  %i.d = and i32 %i.a, 1023
  %i.e = zext nneg i32 %i.d to i64
  br label %.lr.ph18

.loopexit:                                        ; preds = %bb.c, %.lr.ph18
  %i.f = icmp sgt i64 %indvars.iv23, 1
  br i1 %i.f, label %.lr.ph18, label %._crit_edge

.lr.ph18:                                         ; preds = %.lr.ph18.preheader, %.loopexit
  %indvars.iv23 = phi i64 [ %i.e, %.lr.ph18.preheader ], [ %indvars.iv.next24, %.loopexit ] ; 3 uses
  %indvars.iv.in = phi i32 [ %i.c, %.lr.ph18.preheader ], [ %indvars.iv, %.loopexit ]
  %indvars.iv = add nsw i32 %indvars.iv.in, -32   ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv23
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, -1
  %.not14 = icmp eq i32 %i.h, 0
  br i1 %.not14, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph18
  %i.i = zext i32 %indvars.iv to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv20 = phi i64 [ %i.i, %.lr.ph.preheader ], [ %indvars.iv.next21, %bb.c ] ; 2 uses
  %.016 = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.n, %bb.c ] ; 2 uses
  %i.j = and i32 %.016, 1
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv20 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = add nsw i32 %i.l, %2
  store i32 %i.m, ptr %i.k, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %i.n = lshr i32 %.016, 1                        ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define dso_local noalias noundef ptr @sf_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #24 ; 3 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
end_hunk_1
begin_hunk_2_@sf_transpose:bb.a
  %i.bz = getelementptr inbounds [4 x i8], ptr %.13845, i64 %i.bf
  %i.ca = add nuw nsw i32 %.146, 1                ; 2 uses
  %exitcond49.not = icmp eq i32 %i.ca, %i.ba
  br i1 %exitcond49.not, label %._crit_edge47.split, label %.preheader

._crit_edge47.split:                              ; preds = %._crit_edge44, %._crit_edge.thread, %._crit_edge
  %i.cb = phi ptr [ %i.bd, %._crit_edge.thread ], [ %i.az, %._crit_edge ], [ %i.az, %._crit_edge44 ] ; 2 uses
  %i.cc = phi ptr [ %i.bc, %._crit_edge.thread ], [ %i.ay, %._crit_edge ], [ %i.ay, %._crit_edge44 ]
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %sf_free.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge47.split
  tail call void @free(ptr noundef nonnull %i.cb) #25
  store ptr null, ptr %i.cc, align 8, !tbaa !33
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %._crit_edge47.split, %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.cd, align 8, !tbaa !48
  store ptr %0, ptr @set_family_garbage, align 8, !tbaa !47
  ret ptr %.0.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_permute(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  store ptr %i.g, ptr @set_family_garbage, align 8, !tbaa !47
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ]
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.c ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %2, ptr %i.i, align 4, !tbaa !28
  %i.j = icmp slt i32 %2, 33                      ; 2 uses
  %i.k = add nsw i32 %2, -1
  %i.l = lshr i32 %i.k, 5                         ; 2 uses
  %i.m = add nuw nsw i32 %i.l, 2
  %i.n = select i1 %i.j, i32 2, i32 %i.m          ; 2 uses
  store i32 %i.n, ptr %.0.i, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.b, ptr %i.o, align 8, !tbaa !49
  %i.p = sext i32 %i.b to i64
  %i.q = shl nuw nsw i32 %i.n, 2
  %i.r = zext nneg i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, %i.p
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.w, align 8, !tbaa !40
  %i.x = load i32, ptr %i.a, align 4, !tbaa !34   ; 3 uses
  store i32 %i.x, ptr %i.v, align 4, !tbaa !34
  %i.y = load i32, ptr %.0.i, align 8, !tbaa !35  ; 3 uses
  %i.z = mul nsw i32 %i.y, %i.x                   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %.idx = shl nuw nsw i64 %i.aa, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %i.ac = icmp sgt i32 %i.z, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sf_new.exit
  %i.ad = add nuw nsw i32 %i.l, 1
  %i.ae = select i1 %i.j, i32 1, i32 %i.ad        ; 3 uses
  %i.af = shl nuw nsw i32 %i.ae, 2
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = add nsw i32 %i.ae, -1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2                ; 2 uses
  %i.ak = sub nsw i64 %i.ag, %i.aj
  %i.al = add nuw nsw i64 %i.aj, 4
  %i.am = sext i32 %i.y to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.04445 = phi ptr [ %i.t, %.lr.ph ], [ %i.an, %bb.d ] ; 3 uses
  store i32 %i.ae, ptr %.04445, align 4, !tbaa !4
  %scevgep = getelementptr i8, ptr %.04445, i64 %i.ak
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.al, i1 false), !tbaa !4
  %i.an = getelementptr inbounds [4 x i8], ptr %.04445, i64 %i.am ; 2 uses
  %i.ao = icmp ult ptr %i.an, %i.ab
  br i1 %i.ao, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %sf_new.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33 ; 5 uses
  %i.ar = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.as = mul nsw i32 %i.ar, %i.x                 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %.idx52 = shl nsw i64 %i.at, 2
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %.idx52 ; 2 uses
  %i.av = icmp sgt i32 %i.as, 0
  br i1 %i.av, label %.preheader.lr.ph, label %._crit_edge51

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.aw = icmp sgt i32 %2, 0
  %i.ax = sext i32 %i.ar to i64                   ; 2 uses
  br i1 %i.aw, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.ay = sext i32 %i.y to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge48.us
  %.04350.us = phi ptr [ %i.bs, %._crit_edge48.us ], [ %i.t, %.preheader.us.preheader ] ; 2 uses
  %.149.us = phi ptr [ %i.bt, %._crit_edge48.us ], [ %i.aq, %.preheader.us.preheader ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4  ; 2 uses
  %i.bb = ashr i32 %i.ba, 5
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %.149.us, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = and i32 %i.ba, 31
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = and i32 %i.bh, %i.bf
  %.not.us = icmp eq i32 %i.bi, 0
  br i1 %.not.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = and i32 %i.bj, 31
  %i.bl = shl nuw i32 1, %i.bk
  %i.bm = lshr i64 %indvars.iv, 5
  %i.bn = and i64 %i.bm, 134217727
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.04350.us, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = or i32 %i.bq, %i.bl
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge48.us, label %bb.e

._crit_edge48.us:                                 ; preds = %bb.g
  %i.bs = getelementptr inbounds [4 x i8], ptr %.04350.us, i64 %i.ay
  %i.bt = getelementptr inbounds [4 x i8], ptr %.149.us, i64 %i.ax ; 2 uses
  %i.bu = icmp ult ptr %i.bt, %i.au
  br i1 %i.bu, label %.preheader.us, label %._crit_edge51

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.149 = phi ptr [ %i.bv, %.preheader ], [ %i.aq, %.preheader.lr.ph ]
  %i.bv = getelementptr inbounds [4 x i8], ptr %.149, i64 %i.ax ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.au
  br i1 %i.bw, label %.preheader, label %._crit_edge51

._crit_edge51:                                    ; preds = %.preheader, %._crit_edge48.us, %._crit_edge
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %sf_free.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge51
  tail call void @free(ptr noundef nonnull %i.aq) #25
  store ptr null, ptr %i.ap, align 8, !tbaa !33
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %._crit_edge51, %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %i.bx, align 8, !tbaa !48
  store ptr %0, ptr @set_family_garbage, align 8, !tbaa !47
  ret ptr %.0.i
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9, !10}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9, !10}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9, !10}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9, !10}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9, !10}
!27 = distinct !{!27, !9}
!28 = !{!29, !5, i64 4}
!29 = !{!"set_family", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !30, i64 24, !32, i64 32}
!30 = !{!"p1 int", !31, i64 0}
!31 = !{!"any pointer", !6, i64 0}
!32 = !{!"p1 _ZTS10set_family", !31, i64 0}
!33 = !{!29, !30, i64 24}
!34 = !{!29, !5, i64 12}
!35 = !{!29, !5, i64 0}
!36 = distinct !{!36, !9, !10}
!37 = distinct !{!37, !10, !9}
!38 = distinct !{!38, !9, !10}
!39 = distinct !{!39, !10, !9}
!40 = !{!29, !5, i64 16}
!41 = distinct !{!41, !9, !10}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9, !10}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !9}
!47 = !{!32, !32, i64 0}
!48 = !{!29, !32, i64 32}
!49 = !{!29, !5, i64 8}
!50 = distinct !{!50, !9, !10}
!51 = distinct !{!51, !12}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !9, !10}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !9}
!56 = distinct !{!56, !9, !10}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9, !10}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !9}
!62 = distinct !{!62, !9, !10}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !9}
!65 = distinct !{!65, !9, !10}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !9}
!68 = !{!6, !6, i64 0}
!69 = distinct !{!69, !9, !10}
!70 = !{!"branch_weights", i32 8, i32 24}
!71 = distinct !{!71, !9, !10}
!72 = distinct !{!72, !10, !9}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.peeled.count", i32 1}
!75 = distinct !{!75, !74}
!76 = distinct !{!76, !9, !10}
!77 = distinct !{!77, !9, !10}
!78 = distinct !{!78, !10, !9}
!79 = distinct !{!79, !12}
end_hunk_2
