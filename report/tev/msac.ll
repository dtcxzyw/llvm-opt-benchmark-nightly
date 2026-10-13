Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/msac?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dav1d_msac_decode_bool_c:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = lshr i32 %i.b, 8
  %i.f = lshr i32 %1, 6
  %i.g = mul i32 %i.e, %i.f
  %i.h = lshr i32 %i.g, 1
  %i.i = add nuw i32 %i.h, 4                      ; 3 uses
  %i.j = zext i32 %i.i to i64
  %i.k = shl i64 %i.j, 48                         ; 2 uses
  %.not = icmp ult i64 %i.d, %i.k                 ; 3 uses
  %i.l = select i1 %.not, i64 0, i64 %i.k
  %i.m = sub i64 %i.d, %i.l
  %i.n = shl i32 %i.i, 1
  %i.o = sub i32 %i.b, %i.n
  %i.p = select i1 %.not, i32 0, i32 %i.o
  %i.q = add i32 %i.p, %i.i                       ; 3 uses
  %i.r = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.q, i1 true)
  %i.s = xor i32 %i.r, 16                         ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !15   ; 2 uses
  %i.v = icmp ult i32 %i.q, 65536
  tail call void @llvm.assume(i1 %i.v)
  %i.w = zext nneg i32 %i.s to i64
  %i.x = shl i64 %i.m, %i.w                       ; 2 uses
  store i64 %i.x, ptr %i.c, align 8, !tbaa !14
  %i.y = shl nuw nsw i32 %i.q, %i.s
  store i32 %i.y, ptr %i.a, align 8, !tbaa !13
  %i.z = sub nsw i32 %i.u, %i.s                   ; 2 uses
  store i32 %i.z, ptr %i.t, align 4, !tbaa !15
  %i.aa = icmp ult i32 %i.u, %i.s
  br i1 %i.aa, label %bb.b, label %ctx_norm.exit

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17
  %i.ae = sub i32 40, %i.z
  %i.af = zext i32 %i.ae to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.e ], [ %i.af, %bb.b ] ; 5 uses
  %.020.i.i = phi ptr [ %i.aj, %bb.e ], [ %i.ab, %bb.b ] ; 4 uses
  %.0.i.i = phi i64 [ %i.ao, %bb.e ], [ %i.x, %bb.b ] ; 2 uses
  %.not.i.i = icmp ult ptr %.020.i.i, %i.ad
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = shl i64 -256, %indvars.iv.i.i
  %i.ah = xor i64 %i.ag, -1
  %i.ai = or i64 %.0.i.i, %i.ah
  br label %ctx_refill.exit.i

bb.e:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 1 ; 2 uses
  %i.ak = load i8, ptr %.020.i.i, align 1, !tbaa !18
  %i.al = xor i8 %i.ak, -1
  %i.am = zext i8 %i.al to i64
  %i.an = shl i64 %i.am, %indvars.iv.i.i
  %i.ao = or i64 %i.an, %.0.i.i                   ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -8 ; 2 uses
  %i.ap = trunc nuw i64 %indvars.iv.i.i to i32
  %i.aq = icmp sgt i32 %i.ap, 7
  br i1 %i.aq, label %bb.c, label %ctx_refill.exit.i

ctx_refill.exit.i:                                ; preds = %bb.e, %bb.d
  %.121.i.i = phi ptr [ %.020.i.i, %bb.d ], [ %i.aj, %bb.e ]
  %.119.in.i.i = phi i64 [ %indvars.iv.i.i, %bb.d ], [ %indvars.iv.next.i.i, %bb.e ]
  %.1.i.i = phi i64 [ %i.ai, %bb.d ], [ %i.ao, %bb.e ]
  %.119.i.i = trunc i64 %.119.in.i.i to i32
  store i64 %.1.i.i, ptr %i.c, align 8, !tbaa !14
  %i.ar = sub i32 40, %.119.i.i
  store i32 %i.ar, ptr %i.t, align 4, !tbaa !15
  store ptr %.121.i.i, ptr %0, align 8, !tbaa !16
  br label %ctx_norm.exit

ctx_norm.exit:                                    ; preds = %bb.a, %ctx_refill.exit.i
  %i.as = zext i1 %.not to i32
  ret i32 %i.as
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i32 @dav1d_msac_decode_symbol_adapt_c(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = lshr i64 %i.b, 48
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %i.g = lshr i32 %i.f, 8
  %i.h = icmp ult i64 %2, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !20   ; 4 uses
  %i.k = icmp ult i16 %i.j, 33
  tail call void @llvm.assume(i1 %i.k)
  %i.l = trunc nuw nsw i64 %2 to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv71 = phi i32 [ %indvars.iv.next72, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %.050 = phi i32 [ %i.w, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %.049 = phi i32 [ %i.m, %bb.b ], [ -1, %bb.a ]
  %i.m = add i32 %.049, 1                         ; 5 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !20
  %i.q = lshr i16 %i.p, 6
  %i.r = zext nneg i16 %i.q to i32
  %i.s = mul i32 %i.g, %i.r
  %i.t = lshr i32 %i.s, 1
  %i.u = sub i32 %i.l, %i.m
  %i.v = shl i32 %i.u, 2
  %i.w = add i32 %i.t, %i.v                       ; 4 uses
  %i.x = icmp ugt i32 %i.w, %i.d
  %indvars.iv.next72 = add i32 %indvars.iv71, 1
  br i1 %i.x, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = icmp ule i32 %.050, %i.f
  tail call void @llvm.assume(i1 %i.y)
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = shl nuw i64 %i.z, 48
  %i.ab = sub i64 %i.b, %i.aa
  %i.ac = sub i32 %.050, %i.w                     ; 3 uses
  %i.ad = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ac, i1 true)
  %i.ae = xor i32 %i.ad, 16                       ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !15 ; 2 uses
  %i.ah = icmp ult i32 %i.ac, 65536
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = zext nneg i32 %i.ae to i64
  %i.aj = shl i64 %i.ab, %i.ai                    ; 2 uses
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !14
  %i.ak = shl nuw nsw i32 %i.ac, %i.ae
  store i32 %i.ak, ptr %i.e, align 8, !tbaa !13
  %i.al = sub nsw i32 %i.ag, %i.ae                ; 2 uses
  store i32 %i.al, ptr %i.af, align 4, !tbaa !15
  %i.am = icmp ult i32 %i.ag, %i.ae
  br i1 %i.am, label %bb.d, label %ctx_norm.exit

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %0, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !17
  %i.aq = sub i32 40, %i.al
  %i.ar = zext i32 %i.aq to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.g ], [ %i.ar, %bb.d ] ; 5 uses
  %.020.i.i = phi ptr [ %i.av, %bb.g ], [ %i.an, %bb.d ] ; 4 uses
  %.0.i.i = phi i64 [ %i.ba, %bb.g ], [ %i.aj, %bb.d ] ; 2 uses
  %.not.i.i = icmp ult ptr %.020.i.i, %i.ap
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = shl i64 -256, %indvars.iv.i.i
  %i.at = xor i64 %i.as, -1
  %i.au = or i64 %.0.i.i, %i.at
  br label %ctx_refill.exit.i

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 1 ; 2 uses
  %i.aw = load i8, ptr %.020.i.i, align 1, !tbaa !18
  %i.ax = xor i8 %i.aw, -1
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl i64 %i.ay, %indvars.iv.i.i
  %i.ba = or i64 %i.az, %.0.i.i                   ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -8 ; 2 uses
  %i.bb = trunc nuw i64 %indvars.iv.i.i to i32
  %i.bc = icmp sgt i32 %i.bb, 7
  br i1 %i.bc, label %bb.e, label %ctx_refill.exit.i

ctx_refill.exit.i:                                ; preds = %bb.g, %bb.f
  %.121.i.i = phi ptr [ %.020.i.i, %bb.f ], [ %i.av, %bb.g ]
  %.119.in.i.i = phi i64 [ %indvars.iv.i.i, %bb.f ], [ %indvars.iv.next.i.i, %bb.g ]
  %.1.i.i = phi i64 [ %i.au, %bb.f ], [ %i.ba, %bb.g ]
  %.119.i.i = trunc i64 %.119.in.i.i to i32
  store i64 %.1.i.i, ptr %i.a, align 8, !tbaa !14
  %i.bd = sub i32 40, %.119.i.i
  store i32 %i.bd, ptr %i.af, align 4, !tbaa !15
  store ptr %.121.i.i, ptr %0, align 8, !tbaa !16
  br label %ctx_norm.exit

ctx_norm.exit:                                    ; preds = %bb.c, %ctx_refill.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !21
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %ctx_norm.exit
  %i.bg = lshr i16 %i.j, 4
  %narrow = or disjoint i16 %i.bg, 4
  %i.bh = zext nneg i16 %narrow to i32
  %i.bi = icmp samesign ugt i64 %2, 2
  %i.bj = zext i1 %i.bi to i32
  %i.bk = add nuw nsw i32 %i.bh, %i.bj            ; 8 uses
  %.not62 = icmp eq i32 %i.m, 0
  br i1 %.not62, label %.preheader, label %iter.check

iter.check:                                       ; preds = %bb.h
  %wide.trip.count = zext i32 %indvars.iv71 to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %indvars.iv71, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check90 = icmp ult i32 %indvars.iv71, 16
  br i1 %min.iters.check90, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 4294967280   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.bm, align 2, !tbaa !20 ; 2 uses
  %wide.load91 = load <8 x i16>, ptr %i.bn, align 2, !tbaa !20 ; 2 uses
  %i.bo = zext <8 x i16> %wide.load to <8 x i32>
  %i.bp = zext <8 x i16> %wide.load91 to <8 x i32>
  %i.bq = sub nsw <8 x i32> splat (i32 32768), %i.bo
  %i.br = sub nsw <8 x i32> splat (i32 32768), %i.bp
  %i.bs = ashr <8 x i32> %i.bq, %broadcast.splat
  %i.bt = ashr <8 x i32> %i.br, %broadcast.splat
  %i.bu = trunc nsw <8 x i32> %i.bs to <8 x i16>
  %i.bv = trunc nsw <8 x i32> %i.bt to <8 x i16>
  %i.bw = add <8 x i16> %wide.load, %i.bu
  %i.bx = add <8 x i16> %wide.load91, %i.bv
  store <8 x i16> %i.bw, ptr %i.bm, align 2, !tbaa !20
  store <8 x i16> %i.bx, ptr %i.bn, align 2, !tbaa !20
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec92 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %broadcast.splatinsert93 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat94 = shufflevector <4 x i32> %broadcast.splatinsert93, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index95 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index95 ; 2 uses
  %wide.load96 = load <4 x i16>, ptr %i.bz, align 2, !tbaa !20 ; 2 uses
  %i.ca = zext <4 x i16> %wide.load96 to <4 x i32>
  %i.cb = sub nsw <4 x i32> splat (i32 32768), %i.ca
  %i.cc = ashr <4 x i32> %i.cb, %broadcast.splat94
  %i.cd = trunc nsw <4 x i32> %i.cc to <4 x i16>
  %i.ce = add <4 x i16> %wide.load96, %i.cd
  store <4 x i16> %i.ce, ptr %i.bz, align 2, !tbaa !20
  %index.next97 = add nuw i64 %index95, 4         ; 2 uses
  %i.cf = icmp eq i64 %index.next97, %n.vec92
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %n.vec92, %wide.trip.count
  br i1 %cmp.n98, label %.preheader.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec92, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.cg = zext i32 %indvars.iv71 to i64
  br label %.preheader

.preheader:                                       ; preds = %bb.h, %.preheader.loopexit
  %.0.lcssa = phi i64 [ %i.cg, %.preheader.loopexit ], [ 0, %bb.h ] ; 5 uses
  %i.ch = icmp samesign ugt i64 %2, %.0.lcssa
  br i1 %i.ch, label %vec.epilog.ph119, label %._crit_edge

vec.epilog.ph119:                                 ; preds = %.preheader
  %3 = sub nuw nsw i64 %2, %.0.lcssa
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph61.preheader, label %vec.epilog.vector.body123

vec.epilog.vector.body123:                        ; preds = %vec.epilog.ph119, %vec.epilog.vector.body123
  %indvars.iv73.prol = phi i64 [ %indvars.iv.next74.prol, %vec.epilog.vector.body123 ], [ %.0.lcssa, %vec.epilog.ph119 ] ; 2 uses
  %index124 = phi i64 [ %index.next126, %vec.epilog.vector.body123 ], [ 0, %vec.epilog.ph119 ]
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv73.prol ; 2 uses
  %4 = load i16, ptr %i.ci, align 2, !tbaa !20    ; 2 uses
  %5 = zext i16 %4 to i32
  %6 = lshr i32 %5, %i.bk
  %7 = trunc nuw nsw i32 %6 to i16
  %8 = sub i16 %4, %7
  store i16 %8, ptr %i.ci, align 2, !tbaa !20
  %indvars.iv.next74.prol = add nuw nsw i64 %indvars.iv73.prol, 1 ; 2 uses
  %index.next126 = add i64 %index124, 1           ; 2 uses
  %i.cj = icmp eq i64 %index.next126, %xtraiter
  br i1 %i.cj, label %.lr.ph61.preheader, label %vec.epilog.vector.body123, !llvm.loop !24

.lr.ph61.preheader:                               ; preds = %vec.epilog.vector.body123, %vec.epilog.ph119
  %indvars.iv73.ph = phi i64 [ %.0.lcssa, %vec.epilog.ph119 ], [ %indvars.iv.next74.prol, %vec.epilog.vector.body123 ]
  %9 = sub nsw i64 %.0.lcssa, %2
  %10 = icmp ugt i64 %9, -4
  br i1 %10, label %._crit_edge, label %.lr.ph61

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !20 ; 2 uses
  %i.cm = zext i16 %i.cl to i32
  %i.cn = sub nsw i32 32768, %i.cm
  %i.co = ashr i32 %i.cn, %i.bk
  %i.cp = trunc nsw i32 %i.co to i16
  %i.cq = add i16 %i.cl, %i.cp
  store i16 %i.cq, ptr %i.ck, align 2, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !25

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %.lr.ph61
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %.lr.ph61 ], [ %indvars.iv73.ph, %.lr.ph61.preheader ] ; 5 uses
  %11 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv73 ; 2 uses
  %12 = load i16, ptr %11, align 2, !tbaa !20     ; 2 uses
  %13 = zext i16 %12 to i32
  %14 = lshr i32 %13, %i.bk
  %15 = trunc nuw nsw i32 %14 to i16
  %16 = sub i16 %12, %15
  store i16 %16, ptr %11, align 2, !tbaa !20
  %17 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv73
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 2 ; 2 uses
  %19 = load i16, ptr %18, align 2, !tbaa !20     ; 2 uses
  %20 = zext i16 %19 to i32
  %21 = lshr i32 %20, %i.bk
  %22 = trunc nuw nsw i32 %21 to i16
  %23 = sub i16 %19, %22
  store i16 %23, ptr %18, align 2, !tbaa !20
  %24 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv73
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 4 ; 2 uses
  %26 = load i16, ptr %25, align 2, !tbaa !20     ; 2 uses
  %27 = zext i16 %26 to i32
  %28 = lshr i32 %27, %i.bk
  %29 = trunc nuw nsw i32 %28 to i16
  %30 = sub i16 %26, %29
  store i16 %30, ptr %25, align 2, !tbaa !20
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv73
  %31 = getelementptr inbounds nuw i8, ptr %i.cr, i64 6 ; 2 uses
  %i.cs = load i16, ptr %31, align 2, !tbaa !20   ; 2 uses
  %i.ct = zext i16 %i.cs to i32
  %i.cu = lshr i32 %i.ct, %i.bk
  %i.cv = trunc nuw nsw i32 %i.cu to i16
  %i.cw = sub i16 %i.cs, %i.cv
  store i16 %i.cw, ptr %31, align 2, !tbaa !20
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 4 ; 2 uses
  %i.cx = icmp samesign ugt i64 %2, %indvars.iv.next74
  br i1 %i.cx, label %.lr.ph61, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph61.preheader, %.lr.ph61, %.preheader
  %i.cy = icmp samesign ult i16 %i.j, 32
  %i.cz = zext i1 %i.cy to i16
  %i.da = add nuw nsw i16 %i.j, %i.cz
  store i16 %i.da, ptr %i.i, align 2, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %ctx_norm.exit
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dav1d_msac_decode_bool_adapt_c(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !20
  %i.b = zext i16 %i.a to i32
  %i.c = tail call i32 @dav1d_msac_decode_bool_sse2(ptr noundef %0, i32 noundef %i.b) #6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !20   ; 3 uses
  %i.h = lshr i16 %i.g, 4
  %narrow = add nuw nsw i16 %i.h, 4
  %i.i = zext nneg i16 %narrow to i32             ; 2 uses
  %.not15 = icmp eq i32 %i.c, 0
  %i.j = load i16, ptr %1, align 2, !tbaa !20     ; 3 uses
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sub nsw i32 32768, %i.k
  %i.m = ashr i32 %i.l, %i.i
  %i.n = trunc nsw i32 %i.m to i16
  %i.o = add i16 %i.j, %i.n
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = lshr i32 %i.k, %i.i
  %i.q = trunc nuw nsw i32 %i.p to i16
  %i.r = sub i16 %i.j, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i16 [ %i.r, %bb.d ], [ %i.o, %bb.c ]
  store i16 %storemerge, ptr %1, align 2, !tbaa !20
  %i.s = icmp ult i16 %i.g, 32
  %i.t = zext i1 %i.s to i16
  %i.u = add i16 %i.g, %i.t
  store i16 %i.u, ptr %i.f, align 2, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret i32 %i.c
}

declare i32 @dav1d_msac_decode_bool_sse2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dav1d_msac_decode_hi_tok_c(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @dav1d_msac_decode_symbol_adapt4_sse2(ptr noundef %0, ptr noundef %1, i64 noundef 3) #6 ; 2 uses
  %i.b = add i32 %i.a, 3
  %i.c = icmp eq i32 %i.a, 3
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @dav1d_msac_decode_symbol_adapt4_sse2(ptr noundef %0, ptr noundef %1, i64 noundef 3) #6 ; 2 uses
  %i.e = add i32 %i.d, 6
  %i.f = icmp eq i32 %i.d, 3
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @dav1d_msac_decode_symbol_adapt4_sse2(ptr noundef %0, ptr noundef %1, i64 noundef 3) #6 ; 2 uses
  %i.h = add i32 %i.g, 9
  %i.i = icmp eq i32 %i.g, 3
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @dav1d_msac_decode_symbol_adapt4_sse2(ptr noundef %0, ptr noundef %1, i64 noundef 3) #6
  %i.k = add i32 %i.j, 12
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ %i.k, %bb.d ], [ %i.h, %bb.c ], [ %i.e, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %.0
}

declare i32 @dav1d_msac_decode_symbol_adapt4_sse2(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @dav1d_msac_init(ptr nofree noundef writeonly captures(none) initializes((0, 36), (40, 48)) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 32768, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 -15, ptr %i.e, align 4, !tbaa !15
  %.not = icmp eq i32 %3, 0
  %i.f = zext i1 %.not to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.f, ptr %i.g, align 8, !tbaa !21
  %.not.i12.not = icmp eq i64 %2, 0
  br i1 %.not.i12.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %indvars.iv.i.lcssa = phi i64 [ 55, %bb.a ], [ 47, %bb.c ], [ 39, %bb.d ], [ 31, %bb.e ], [ 23, %bb.f ], [ 15, %bb.g ], [ 7, %bb.h ] ; 2 uses
  %.020.i.lcssa = phi ptr [ %1, %bb.a ], [ %i.m, %bb.c ], [ %i.r, %bb.d ], [ %i.x, %bb.e ], [ %i.ad, %bb.f ], [ %i.aj, %bb.g ], [ %i.ap, %bb.h ]
  %.0.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.q, %bb.c ], [ %i.w, %bb.d ], [ %i.ac, %bb.e ], [ %i.ai, %bb.f ], [ %i.ao, %bb.g ], [ %i.au, %bb.h ]
  %i.h = shl nsw i64 -256, %indvars.iv.i.lcssa
  %i.i = xor i64 %i.h, -1
  %i.j = or i64 %.0.i.lcssa, %i.i
  %i.k = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  %i.l = sub nsw i32 40, %i.k
  br label %ctx_refill.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.n = load i8, ptr %1, align 1, !tbaa !18
  %i.o = xor i8 %i.n, -1
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 55                 ; 2 uses
  %.not.i12.1.not = icmp eq i64 %2, 1
  br i1 %.not.i12.1.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.s = load i8, ptr %i.m, align 1, !tbaa !18
  %i.t = xor i8 %i.s, -1
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 47
  %i.w = or disjoint i64 %i.v, %i.q               ; 2 uses
  %.not.i12.2 = icmp samesign ugt i64 %2, 2
  br i1 %.not.i12.2, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.y = load i8, ptr %i.r, align 1, !tbaa !18
  %i.z = xor i8 %i.y, -1
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 39
  %i.ac = or disjoint i64 %i.ab, %i.w             ; 2 uses
  %.not.i12.3.not = icmp eq i64 %2, 3
  br i1 %.not.i12.3.not, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !18
  %i.af = xor i8 %i.ae, -1
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 31
  %i.ai = or disjoint i64 %i.ah, %i.ac            ; 2 uses
  %.not.i12.4 = icmp samesign ugt i64 %2, 4
  br i1 %.not.i12.4, label %bb.g, label %bb.b

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !18
  %i.al = xor i8 %i.ak, -1
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 23
  %i.ao = or disjoint i64 %i.an, %i.ai            ; 2 uses
  %.not.i12.5.not = icmp eq i64 %2, 5
  br i1 %.not.i12.5.not, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !18
  %i.ar = xor i8 %i.aq, -1
  %i.as = zext i8 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 15
  %i.au = or disjoint i64 %i.at, %i.ao            ; 2 uses
  %.not.i12.6 = icmp samesign ugt i64 %2, 6
  br i1 %.not.i12.6, label %ctx_refill.exit.loopexit, label %bb.b

ctx_refill.exit.loopexit:                         ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.aw = load i8, ptr %i.ap, align 1, !tbaa !18
  %i.ax = xor i8 %i.aw, -1
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 7
  %i.ba = or i64 %i.az, %i.au
  br label %ctx_refill.exit

ctx_refill.exit:                                  ; preds = %ctx_refill.exit.loopexit, %bb.b
  %.121.i = phi ptr [ %.020.i.lcssa, %bb.b ], [ %i.av, %ctx_refill.exit.loopexit ]
  %.119.in.i = phi i32 [ %i.l, %bb.b ], [ 41, %ctx_refill.exit.loopexit ]
  %.1.i = phi i64 [ %i.j, %bb.b ], [ %i.ba, %ctx_refill.exit.loopexit ]
  store i64 %.1.i, ptr %i.c, align 8, !tbaa !14
  store i32 %.119.in.i, ptr %i.e, align 4, !tbaa !15
  store ptr %.121.i, ptr %0, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load i32, ptr @dav1d_cpu_flags, align 4, !tbaa !30
  %i.bd = load i32, ptr @dav1d_cpu_flags_mask, align 4, !tbaa !30
  %i.be = and i32 %i.bd, %i.bc                    ; 2 uses
  %i.bf = and i32 %i.be, 1
  %.not.i = icmp eq i32 %i.bf, 0
  %spec.store.select = select i1 %.not.i, ptr @dav1d_msac_decode_symbol_adapt_c, ptr @dav1d_msac_decode_symbol_adapt16_sse2
  %i.bg = and i32 %i.be, 8
  %.not3.i = icmp eq i32 %i.bg, 0
  %spec.store.select13 = select i1 %.not3.i, ptr %spec.store.select, ptr @dav1d_msac_decode_symbol_adapt16_avx2
  store ptr %spec.store.select13, ptr %i.bb, align 8, !tbaa !31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

declare i32 @dav1d_msac_decode_symbol_adapt16_sse2(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @dav1d_msac_decode_symbol_adapt16_avx2(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"MsacContext", !10, i64 0, !10, i64 8, !11, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !9, i64 40}
!13 = !{!12, !6, i64 24}
!14 = !{!12, !11, i64 16}
!15 = !{!12, !6, i64 28}
!16 = !{!12, !10, i64 0}
!17 = !{!12, !10, i64 8}
!18 = !{!5, !5, i64 0}
!19 = !{!"short", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!12, !6, i64 32}
!22 = distinct !{!22, !26, !27}
!23 = distinct !{!23, !26, !27}
!24 = distinct !{!24, !29}
!25 = distinct !{!25, !27, !26}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"branch_weights", i32 4, i32 12}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = !{!6, !6, i64 0}
!31 = !{!12, !9, i64 40}
end_hunk_0
