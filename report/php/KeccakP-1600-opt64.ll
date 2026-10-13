Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/KeccakP-1600-opt64?download=true
inline.NumInlined: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@KeccakP1600_AddLanes:bb.a
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !14
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bp ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !14
  %i.bu = xor i64 %i.bt, %i.br
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !14
  %i.bv = or disjoint i32 %.180, 2
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !14
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bw ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !14
  %i.cb = xor i64 %i.ca, %i.by
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !14
  %i.cc = or disjoint i32 %.180, 3
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cd ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !14
  %i.ci = xor i64 %i.ch, %i.cf
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !14
  %i.cj = add i32 %i.bh, 4                        ; 2 uses
  %.not74 = icmp ugt i32 %i.cj, %2
  br i1 %.not74, label %.preheader, label %.lr.ph81, !llvm.loop !23

.lr.ph85:                                         ; preds = %.preheader, %.lr.ph85
  %i.ck = phi i32 [ %i.cy, %.lr.ph85 ], [ %i.bg, %.preheader ] ; 3 uses
  %.284 = phi i32 [ %i.ck, %.lr.ph85 ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %i.cl = zext i32 %.284 to i64                   ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !14
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cl ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !14
  %i.cq = xor i64 %i.cp, %i.cn
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !14
  %i.cr = or disjoint i32 %.284, 1
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !14
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !14
  %i.cx = xor i64 %i.cw, %i.cu
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !14
  %i.cy = add i32 %i.ck, 2                        ; 2 uses
  %.not75 = icmp ugt i32 %i.cy, %2
  br i1 %.not75, label %._crit_edge, label %.lr.ph85, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph85, %.preheader
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader ], [ %i.ck, %.lr.ph85 ] ; 2 uses
  %i.cz = icmp ult i32 %.2.lcssa, %2
  br i1 %i.cz, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.da = zext i32 %.2.lcssa to i64               ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !14
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.da ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !14
  %i.df = xor i64 %i.de, %i.dc
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @KeccakP1600_AddBytes(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %3, 3                           ; 2 uses
  tail call void @KeccakP1600_AddLanes(ptr noundef %0, ptr noundef %1, i32 noundef %i.d)
  %i.e = and i32 %3, -8
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 2 uses
  %i.h = and i32 %3, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  switch i32 %i.h, label %bb.d [
    i32 0, label %KeccakP1600_AddBytesInLane.exit
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.g, align 1, !tbaa !15
  %i.j = zext i8 %i.i to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !14
  %i.k = zext nneg i32 %i.h to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr readonly align 1 %i.g, i64 %i.k, i1 false)
  %.0..0..0..0..0..0..pre.i = load i64, ptr %i.b, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0..0..0..i = phi i64 [ %.0..0..0..0..0..0..pre.i, %bb.d ], [ %i.j, %bb.c ]
  %i.l = zext nneg i32 %i.d to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14
  %i.o = xor i64 %i.n, %.0..0..0..i
  store i64 %i.o, ptr %i.m, align 8, !tbaa !14
  br label %KeccakP1600_AddBytesInLane.exit

KeccakP1600_AddBytesInLane.exit:                  ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.p = lshr i32 %2, 3                           ; 2 uses
  %i.q = and i32 %2, 7                            ; 2 uses
  %.not36 = icmp eq i32 %3, 0
  br i1 %.not36, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.r = sub nuw nsw i32 8, %i.q
  %spec.select.peel = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %3) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %cond.peel = icmp eq i32 %spec.select.peel, 1
  br i1 %cond.peel, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.preheader
  store i64 0, ptr %i.a, align 8, !tbaa !14
  %i.s = zext nneg i32 %spec.select.peel to i64   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %i.s, i1 false)
  %.0..0..0..0..0..0..pre.i34.peel = load i64, ptr %i.a, align 8, !tbaa !14
  br label %KeccakP1600_AddBytesInLane.exit35.peel

bb.h:                                             ; preds = %.lr.ph.preheader
  %i.t = load i8, ptr %1, align 1, !tbaa !15
  %i.u = zext i8 %i.t to i64
  br label %KeccakP1600_AddBytesInLane.exit35.peel

KeccakP1600_AddBytesInLane.exit35.peel:           ; preds = %bb.h, %bb.g
  %.pre-phi = phi i64 [ 1, %bb.h ], [ %i.s, %bb.g ]
  %.0..0..0..i33.peel = phi i64 [ %i.u, %bb.h ], [ %.0..0..0..0..0..0..pre.i34.peel, %bb.g ]
  %i.v = shl nuw nsw i32 %i.q, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %.0..0..0..i33.peel, %i.w
  %i.y = zext nneg i32 %i.p to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !14
  %i.ab = xor i64 %i.aa, %i.x
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = sub nuw i32 %3, %spec.select.peel       ; 2 uses
  %.not.peel = icmp eq i32 %i.ac, 0
  br i1 %.not.peel, label %.loopexit, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %KeccakP1600_AddBytesInLane.exit35.peel
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.pre-phi
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.peel.next, %KeccakP1600_AddBytesInLane.exit35
  %.02740 = phi ptr [ %i.am, %KeccakP1600_AddBytesInLane.exit35 ], [ %i.ad, %.lr.ph.peel.next ] ; 3 uses
  %.02938.in = phi i32 [ %.02938, %KeccakP1600_AddBytesInLane.exit35 ], [ %i.p, %.lr.ph.peel.next ]
  %.03037 = phi i32 [ %i.al, %KeccakP1600_AddBytesInLane.exit35 ], [ %i.ac, %.lr.ph.peel.next ] ; 3 uses
  %.02938 = add i32 %.02938.in, 1                 ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.03037, i32 8) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %cond = icmp eq i32 %.03037, 1
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.ae = load i8, ptr %.02740, align 1, !tbaa !15
  %i.af = zext i8 %i.ae to i64
  br label %KeccakP1600_AddBytesInLane.exit35

bb.j:                                             ; preds = %.lr.ph
  store i64 0, ptr %i.a, align 8, !tbaa !14
  %i.ag = zext nneg i32 %spec.select to i64       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %.02740, i64 %i.ag, i1 false)
  %.0..0..0..0..0..0..pre.i34 = load i64, ptr %i.a, align 8, !tbaa !14
  br label %KeccakP1600_AddBytesInLane.exit35

KeccakP1600_AddBytesInLane.exit35:                ; preds = %bb.j, %bb.i
  %.pre-phi43 = phi i64 [ %i.ag, %bb.j ], [ 1, %bb.i ]
  %.0..0..0..i33 = phi i64 [ %.0..0..0..0..0..0..pre.i34, %bb.j ], [ %i.af, %bb.i ]
  %i.ah = zext i32 %.02938 to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !14
  %i.ak = xor i64 %i.aj, %.0..0..0..i33
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = sub nuw i32 %.03037, %spec.select       ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02740, i64 %.pre-phi43
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !25

.loopexit:                                        ; preds = %KeccakP1600_AddBytesInLane.exit35, %KeccakP1600_AddBytesInLane.exit35.peel, %bb.f, %KeccakP1600_AddBytesInLane.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @KeccakP1600_OverwriteBytesInLane(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  switch i32 %1, label %bb.c [
    i32 20, label %bb.b
    i32 17, label %bb.b
    i32 12, label %bb.b
    i32 8, label %bb.b
    i32 2, label %bb.b
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.c = shl nuw nsw i32 %1, 3
  %i.d = add i32 %3, %i.c                         ; 9 uses
  %wide.trip.count = zext i32 %4 to i64           ; 9 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.e = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = xor i32 %i.d, -1
  %i.h = icmp ult i32 %i.g, %i.f
  %i.i = icmp ugt i64 %i.e, 4294967295
  %i.j = or i1 %i.h, %i.i
  br i1 %i.j, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.k = zext i32 %i.d to i64
  %i.l = add i64 %i.a, %i.k
  %i.m = sub i64 %i.b, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i32 %4, 32
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <16 x i8>, ptr %i.o, align 1, !tbaa !15
  %wide.load32 = load <16 x i8>, ptr %i.p, align 1, !tbaa !15
  %i.q = xor <16 x i8> %wide.load, splat (i8 -1)
  %i.r = xor <16 x i8> %wide.load32, splat (i8 -1)
  %i.s = trunc nuw i64 %index to i32
  %i.t = add i32 %i.d, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <16 x i8> %i.q, ptr %i.v, align 1, !tbaa !15
  store <16 x i8> %i.r, ptr %i.w, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %index34
  %wide.load35 = load <4 x i8>, ptr %i.y, align 1, !tbaa !15
  %i.z = xor <4 x i8> %wide.load35, splat (i8 -1)
  %i.aa = trunc nuw i64 %index34 to i32
  %i.ab = add i32 %i.d, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  store <4 x i8> %i.z, ptr %i.ad, align 1, !tbaa !15
  %index.next36 = add nuw i64 %index34, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next36, %n.vec33
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %n.vec33, %wide.trip.count
  br i1 %cmp.n37, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec33, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.prol
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  %i.ah = xor i8 %i.ag, -1
  %i.ai = trunc nuw i64 %indvars.iv.prol to i32
  %i.aj = add i32 %i.d, %i.ai
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  store i8 %i.ah, ptr %i.al, align 1, !tbaa !15
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !28

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.am = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !15
  %i.aq = xor i8 %i.ap, -1
  %i.ar = trunc nuw i64 %indvars.iv to i32
  %i.as = add i32 %i.d, %i.ar
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at
  store i8 %i.aq, ptr %i.au, align 1, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !15
  %i.ax = xor i8 %i.aw, -1
  %i.ay = trunc nuw i64 %indvars.iv.next to i32
  %i.az = add i32 %i.d, %i.ay
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba
  store i8 %i.ax, ptr %i.bb, align 1, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !15
  %i.be = xor i8 %i.bd, -1
  %i.bf = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.bg = add i32 %i.d, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh
  store i8 %i.be, ptr %i.bi, align 1, !tbaa !15
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.bl = xor i8 %i.bk, -1
  %i.bm = trunc nuw i64 %indvars.iv.next.2 to i32
  %i.bn = add i32 %i.d, %i.bm
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo
  store i8 %i.bl, ptr %i.bp, align 1, !tbaa !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !29

bb.c:                                             ; preds = %bb.a
  %i.bq = shl i32 %1, 3
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br
  %i.bt = zext i32 %3 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  %i.bv = zext i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %2, i64 %i.bv, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @KeccakP1600_OverwriteLanes(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.b = trunc nuw i64 %indvars.iv to i32
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  switch i32 %i.b, label %.lr.ph.1 [
    i32 20, label %bb.b
    i32 2, label %bb.b
    i32 12, label %bb.b
    i32 8, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.e = xor i64 %i.d, -1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ %i.d, %.lr.ph ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %.sink, ptr %i.f, align 8, !tbaa !14
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.g = trunc nuw i64 %indvars.iv.next to i32
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  switch i32 %i.g, label %bb.d [
    i32 1, label %bb.c
    i32 17, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.1, %.lr.ph.1
  %i.j = xor i64 %i.i, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.1
  %.sink.1 = phi i64 [ %i.j, %bb.c ], [ %i.i, %.lr.ph.1 ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store i64 %.sink.1, ptr %i.k, align 8, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
end_hunk_0
begin_hunk_1_@KeccakP1600_ExtractLanes:bb.a
  %i.u = xor i64 %i.t, -1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !14
  %i.v = icmp ugt i32 %2, 20
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !14
  %i.y = xor i64 %i.x, -1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.e, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @KeccakP1600_ExtractBytes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [1 x i64], align 8                ; 8 uses
  %.sroa.0 = alloca i64, align 8                  ; 4 uses
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %3, 3                           ; 3 uses
  %i.d = and i32 %3, -8
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr readonly align 1 %0, i64 %i.e, i1 false)
  %i.f = icmp ugt i32 %3, 15
  br i1 %i.f, label %bb.c, label %KeccakP1600_ExtractLanes.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = xor i64 %i.h, -1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !14
  %.not.i = icmp eq i32 %i.c, 2
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i, label %KeccakP1600_ExtractLanes.exit.thread, label %bb.d

KeccakP1600_ExtractLanes.exit.thread:             ; preds = %bb.c
  %i.k = and i32 %3, 7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.j, align 8, !tbaa !14
  %i.o = xor i64 %i.n, -1
  store i64 %i.o, ptr %i.j, align 8, !tbaa !14
  %i.p = icmp ugt i32 %3, 71
  br i1 %i.p, label %bb.e, label %KeccakP1600_ExtractLanes.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !14
  %i.s = xor i64 %i.r, -1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !14
  %i.t = icmp ugt i32 %3, 103
  br i1 %i.t, label %bb.f, label %KeccakP1600_ExtractLanes.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !14
  %i.w = xor i64 %i.v, -1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !14
  %i.x = icmp ugt i32 %3, 143
  br i1 %i.x, label %bb.g, label %KeccakP1600_ExtractLanes.exit

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !14
  %i.aa = xor i64 %i.z, -1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !14
  %i.ab = icmp ugt i32 %3, 167
  br i1 %i.ab, label %bb.h, label %KeccakP1600_ExtractLanes.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !14
  %i.ae = xor i64 %i.ad, -1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !14
  br label %KeccakP1600_ExtractLanes.exit

KeccakP1600_ExtractLanes.exit:                    ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 6 uses
  %i.ag = and i32 %3, 7                           ; 6 uses
  %i.ah = zext nneg i32 %i.c to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !14 ; 6 uses
  switch i32 %i.c, label %KeccakP1600_ExtractBytesInLane.exit [
    i32 20, label %bb.i
    i32 17, label %bb.i
    i32 12, label %bb.i
    i32 8, label %bb.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %KeccakP1600_ExtractLanes.exit, %KeccakP1600_ExtractLanes.exit.thread, %KeccakP1600_ExtractLanes.exit, %KeccakP1600_ExtractLanes.exit, %KeccakP1600_ExtractLanes.exit, %KeccakP1600_ExtractLanes.exit
  %i.ak = phi i64 [ %i.m, %KeccakP1600_ExtractLanes.exit.thread ], [ %i.aj, %KeccakP1600_ExtractLanes.exit ], [ %i.aj, %KeccakP1600_ExtractLanes.exit ], [ %i.aj, %KeccakP1600_ExtractLanes.exit ], [ %i.aj, %KeccakP1600_ExtractLanes.exit ], [ %i.aj, %KeccakP1600_ExtractLanes.exit ]
  %i.al = phi i32 [ %i.k, %KeccakP1600_ExtractLanes.exit.thread ], [ %i.ag, %KeccakP1600_ExtractLanes.exit ], [ %i.ag, %KeccakP1600_ExtractLanes.exit ], [ %i.ag, %KeccakP1600_ExtractLanes.exit ], [ %i.ag, %KeccakP1600_ExtractLanes.exit ], [ %i.ag, %KeccakP1600_ExtractLanes.exit ]
  %i.am = phi ptr [ %i.j, %KeccakP1600_ExtractLanes.exit.thread ], [ %i.af, %KeccakP1600_ExtractLanes.exit ], [ %i.af, %KeccakP1600_ExtractLanes.exit ], [ %i.af, %KeccakP1600_ExtractLanes.exit ], [ %i.af, %KeccakP1600_ExtractLanes.exit ], [ %i.af, %KeccakP1600_ExtractLanes.exit ]
  %i.an = xor i64 %i.ak, -1
  br label %KeccakP1600_ExtractBytesInLane.exit

KeccakP1600_ExtractBytesInLane.exit:              ; preds = %KeccakP1600_ExtractLanes.exit, %bb.i
  %i.ao = phi i32 [ %i.al, %bb.i ], [ %i.ag, %KeccakP1600_ExtractLanes.exit ]
  %i.ap = phi ptr [ %i.am, %bb.i ], [ %i.af, %KeccakP1600_ExtractLanes.exit ]
  %.0.i = phi i64 [ %i.an, %bb.i ], [ %i.aj, %KeccakP1600_ExtractLanes.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i64 %.0.i, ptr %.sroa.0, align 8, !tbaa !14
  %i.aq = zext nneg i32 %i.ao to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 8 %.sroa.0, i64 %i.aq, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.loopexit

bb.j:                                             ; preds = %bb.a
  %i.ar = lshr i32 %2, 3                          ; 3 uses
  %i.as = and i32 %2, 7                           ; 2 uses
  %.not35 = icmp eq i32 %3, 0
  br i1 %.not35, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.at = sub nuw nsw i32 8, %i.as
  %spec.select.peel = tail call i32 @llvm.umin.i32(i32 %i.at, i32 %3) ; 2 uses
  %i.au = zext nneg i32 %i.ar to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !14 ; 2 uses
  switch i32 %i.ar, label %KeccakP1600_ExtractBytesInLane.exit34.peel [
    i32 20, label %bb.k
    i32 17, label %bb.k
    i32 12, label %bb.k
    i32 8, label %bb.k
    i32 2, label %bb.k
    i32 1, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader
  %i.ax = xor i64 %i.aw, -1
  br label %KeccakP1600_ExtractBytesInLane.exit34.peel

KeccakP1600_ExtractBytesInLane.exit34.peel:       ; preds = %bb.k, %.lr.ph.preheader
  %.0.i33.peel = phi i64 [ %i.ax, %bb.k ], [ %i.aw, %.lr.ph.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 %.0.i33.peel, ptr %i.a, align 8, !tbaa !14
  %i.ay = zext nneg i32 %i.as to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = zext nneg i32 %spec.select.peel to i64  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.az, i64 %i.ba, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.bb = sub i32 %3, %spec.select.peel           ; 2 uses
  %.not.peel = icmp eq i32 %i.bb, 0
  br i1 %.not.peel, label %.loopexit, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %KeccakP1600_ExtractBytesInLane.exit34.peel
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.ba
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.peel.next, %KeccakP1600_ExtractBytesInLane.exit34
  %.02739 = phi ptr [ %i.bj, %KeccakP1600_ExtractBytesInLane.exit34 ], [ %i.bc, %.lr.ph.peel.next ] ; 2 uses
  %.02937.in = phi i32 [ %.02937, %KeccakP1600_ExtractBytesInLane.exit34 ], [ %i.ar, %.lr.ph.peel.next ]
  %.03036 = phi i32 [ %i.bi, %KeccakP1600_ExtractBytesInLane.exit34 ], [ %i.bb, %.lr.ph.peel.next ] ; 2 uses
  %.02937 = add i32 %.02937.in, 1                 ; 3 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.03036, i32 8) ; 2 uses
  %i.bd = zext i32 %.02937 to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !14 ; 2 uses
  switch i32 %.02937, label %KeccakP1600_ExtractBytesInLane.exit34 [
    i32 20, label %bb.l
    i32 17, label %bb.l
    i32 12, label %bb.l
    i32 8, label %bb.l
    i32 2, label %bb.l
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.bg = xor i64 %i.bf, -1
  br label %KeccakP1600_ExtractBytesInLane.exit34

KeccakP1600_ExtractBytesInLane.exit34:            ; preds = %.lr.ph, %bb.l
  %.0.i33 = phi i64 [ %i.bg, %bb.l ], [ %i.bf, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 %.0.i33, ptr %i.a, align 8, !tbaa !14
  %i.bh = zext nneg i32 %spec.select to i64       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.02739, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.bh, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.bi = sub i32 %.03036, %spec.select           ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02739, i64 %i.bh
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !35

.loopexit:                                        ; preds = %KeccakP1600_ExtractBytesInLane.exit34, %KeccakP1600_ExtractBytesInLane.exit34.peel, %bb.j, %KeccakP1600_ExtractBytesInLane.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @KeccakP1600_ExtractAndAddBytesInLane(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = alloca [1 x i64], align 8                ; 8 uses
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  switch i32 %1, label %bb.c [
    i32 20, label %bb.b
    i32 17, label %bb.b
    i32 12, label %bb.b
    i32 8, label %bb.b
    i32 2, label %bb.b
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.g = xor i64 %i.f, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.027 = phi i64 [ %i.g, %bb.b ], [ %i.f, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i64 %.027, ptr %i.c, align 8, !tbaa !14
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.c
  %wide.trip.count = zext i32 %5 to i64           ; 9 uses
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.h = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = xor i32 %4, -1
  %i.k = icmp ult i32 %i.j, %i.i
  %i.l = icmp ugt i64 %i.h, 4294967295
  %i.m = or i1 %i.k, %i.l
  %i.n = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = or i1 %i.m, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check30 = icmp ult i32 %5, 32
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <16 x i8>, ptr %i.p, align 1, !tbaa !15
  %wide.load31 = load <16 x i8>, ptr %i.q, align 1, !tbaa !15
  %i.r = trunc nuw i64 %index to i32
  %i.s = add i32 %4, %i.r
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load32 = load <16 x i8>, ptr %i.u, align 1, !tbaa !15
  %wide.load33 = load <16 x i8>, ptr %i.v, align 1, !tbaa !15
  %i.w = xor <16 x i8> %wide.load32, %wide.load
  %i.x = xor <16 x i8> %wide.load33, %wide.load31
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <16 x i8> %i.w, ptr %i.y, align 1, !tbaa !15
  store <16 x i8> %i.x, ptr %i.z, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %index35
  %wide.load36 = load <4 x i8>, ptr %i.ab, align 1, !tbaa !15
  %i.ac = trunc nuw i64 %index35 to i32
  %i.ad = add i32 %4, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  %wide.load37 = load <4 x i8>, ptr %i.af, align 1, !tbaa !15
  %i.ag = xor <4 x i8> %wide.load37, %wide.load36
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %index35
  store <4 x i8> %i.ag, ptr %i.ah, align 1, !tbaa !15
  %index.next38 = add nuw i64 %index35, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next38, %n.vec34
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %n.vec34, %wide.trip.count
  br i1 %cmp.n39, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.ph
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !15
  %i.al = trunc nuw i64 %indvars.iv.ph to i32
  %i.am = add i32 %4, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !15
  %i.aq = xor i8 %i.ap, %i.ak
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.ph
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !15
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.as = add nsw i64 %wide.trip.count, -1
  %i.at = icmp eq i64 %indvars.iv.ph, %i.as
  br i1 %i.at, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !15
  %i.aw = trunc nuw i64 %indvars.iv to i32
  %i.ax = add i32 %4, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !15
  %i.bb = xor i8 %i.ba, %i.av
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15
  %i.bf = trunc nuw i64 %indvars.iv.next to i32
  %i.bg = add i32 %4, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !15
  %i.bk = xor i8 %i.bj, %i.be
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @KeccakP1600_ExtractAndAddLanes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %.not28 = icmp eq i32 %3, 0
  br i1 %.not28, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %3 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %3, 12
  br i1 %min.iters.check, label %.lr.ph.preheader35, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.d, -32
  %i.e = sub i64 %i.a, %i.c
  %diff.check31 = icmp ugt i64 %i.e, -32
  %conflict.rdx = or i1 %diff.check, %diff.check31
  br i1 %conflict.rdx, label %.lr.ph.preheader35, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !14
  %wide.load32 = load <2 x i64>, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load33 = load <2 x i64>, ptr %i.h, align 8, !tbaa !14
  %wide.load34 = load <2 x i64>, ptr %i.i, align 8, !tbaa !14
  %i.j = xor <2 x i64> %wide.load33, %wide.load
  %i.k = xor <2 x i64> %wide.load34, %wide.load32
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x i64> %i.j, ptr %i.l, align 8, !tbaa !14
  store <2 x i64> %i.k, ptr %i.m, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader35

.lr.ph.preheader35:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader35, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader35 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader35 ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.prol
  %i.p = load i64, ptr %i.o, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.prol
  %i.r = load i64, ptr %i.q, align 8, !tbaa !14
  %i.s = xor i64 %i.r, %i.p
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.prol
  store i64 %i.s, ptr %i.t, align 8, !tbaa !14
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !40

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader35
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader35 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
end_hunk_1
