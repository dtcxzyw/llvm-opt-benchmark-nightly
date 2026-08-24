Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 283
begin_hunk_0_@_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij:bb.a
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !93
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i16 %i.fh, ptr %i.fk, align 2, !tbaa !93
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 6 ; 2 uses
  %i.fm = add nuw nsw i32 %.0144.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter197
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.j, !llvm.loop !111

.epilog-lcssa:                                    ; preds = %bb.j, %.unr-lcssa
  %.lcssa = phi ptr [ %i.gn, %.unr-lcssa ], [ %i.fl, %bb.j ]
  store ptr %.lcssa, ptr %i.el, align 8, !tbaa !90
  %i.fn = and i32 %2, 65535
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fp = add i32 %i.ej, %i.fn
  store i32 %i.fp, ptr %i.fo, align 4, !tbaa !55
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph145.new
  %i.fq = phi ptr [ %.promoted147, %.lr.ph145.new ], [ %i.gn, %bb.k ] ; 13 uses
  %.0144 = phi i32 [ 2, %.lr.ph145.new ], [ %i.go, %bb.k ] ; 5 uses
  %niter204 = phi i32 [ 0, %.lr.ph145.new ], [ %niter204.next.3, %bb.k ]
  store i16 %i.ek, ptr %i.fq, align 2, !tbaa !93
  %i.fr = add i32 %i.ej, %.0144
  %i.fs = trunc i32 %i.fr to i16                  ; 2 uses
  %i.ft = add i16 %i.fs, -1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !93
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i16 %i.fs, ptr %i.fv, align 2, !tbaa !93
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 6
  %i.fx = or disjoint i32 %.0144, 1
  store i16 %i.ek, ptr %i.fw, align 2, !tbaa !93
  %i.fy = add i32 %i.ej, %i.fx
  %i.fz = trunc i32 %i.fy to i16                  ; 2 uses
  %i.ga = add i16 %i.fz, -1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !93
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 10
  store i16 %i.fz, ptr %i.gc, align 2, !tbaa !93
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store i16 %i.ek, ptr %i.gd, align 2, !tbaa !93
  %.reass = add i32 %.0144, %invariant.op
  %i.ge = trunc i32 %.reass to i16                ; 2 uses
  %i.gf = add i16 %i.ge, -1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fq, i64 14
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !93
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i16 %i.ge, ptr %i.gh, align 2, !tbaa !93
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fq, i64 18
  store i16 %i.ek, ptr %i.gi, align 2, !tbaa !93
  %.reass212 = add i32 %.0144, %invariant.op211
  %i.gj = trunc i32 %.reass212 to i16             ; 2 uses
  %i.gk = add i16 %i.gj, -1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !93
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fq, i64 22
  store i16 %i.gj, ptr %i.gm, align 2, !tbaa !93
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fq, i64 24 ; 3 uses
  %i.go = add nuw nsw i32 %.0144, 4               ; 2 uses
  %niter204.next.3 = add i32 %niter204, 4         ; 2 uses
  %niter204.ncmp.3 = icmp eq i32 %niter204.next.3, %unroll_iter203
  br i1 %niter204.ncmp.3, label %.unr-lcssa, label %bb.k, !llvm.loop !113

bb.l:                                             ; preds = %._crit_edge140, %.epilog-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = fcmp ugt float %2, 0.000000e+00
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !62
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !63
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.c, 1
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sdiv i32 %i.c, 2
  %i.i = add nsw i32 %i.h, %i.c
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i:  ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ %i.i, %bb.d ], [ 8, %bb.c ]
  %i.k = tail call noundef i32 @llvm.smax.i32(i32 %i.j, i32 %i.g) ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3
  %i.n = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.m) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  %i.q = load i32, ptr %i.b, align 8, !tbaa !64
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.n, ptr nonnull align 4 %i.p, i64 %i.s, i1 false)
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !63
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.t)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  store ptr %i.n, ptr %i.o, align 8, !tbaa !63
  store i32 %i.k, ptr %i.d, align 4, !tbaa !62
  %.pre3.i = load i32, ptr %i.b, align 8, !tbaa !64
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i, %bb.f
  %i.u = phi i32 [ %i.c, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.f ]
  %i.v = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %i.n, %bb.f ]
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %1, align 4
  store i64 %i.y, ptr %i.x, align 4
  %i.z = load i32, ptr %i.b, align 8, !tbaa !64
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !64
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %i.ab = icmp slt i32 %5, 1
  br i1 %i.ab, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ac = fadd float %2, f0x3F7FFFEF
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 436
  %i.ai = sext i32 %i.ad to i64
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !22
  %i.al = zext i8 %i.ak to i32
  br label %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit

bb.j:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.an = load float, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  %i.ao = fcmp olt float %i.an, %2
  %i.ap = select i1 %i.ao, float %i.an, float %2
  %i.aq = fdiv float %i.ap, %2
  %i.ar = fsub float 1.000000e+00, %i.aq
  %i.as = tail call float @acosf(float noundef %i.ar) #40
  %i.at = fdiv float f0x40490FDB, %i.as
  %i.au = tail call float @llvm.ceil.f32(float %i.at)
  %i.av = fptosi float %i.au to i32
  %i.aw = add nsw i32 %i.av, 1
  %i.ax = sdiv i32 %i.aw, 2
  %i.ay = shl nsw i32 %i.ax, 1
  %i.az = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 4)
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.az, i32 512)
  br label %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit

_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit: ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.al, %bb.i ], [ %i.ba, %bb.j ]
  %.rhs.trunc = trunc nuw nsw i32 %.0.i to i16
  %i.bb = udiv i16 48, %.rhs.trunc
  %.zext = zext nneg i16 %i.bb to i32
  br label %bb.k

bb.k:                                             ; preds = %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit, %bb.g
  %.0 = phi i32 [ %.zext, %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit ], [ %5, %bb.g ] ; 2 uses
  %i.bc = icmp eq i32 %.0, 0
  %i.bd = tail call i32 @llvm.umin.i32(i32 %.0, i32 12) ; 2 uses
  %i.be = select i1 %i.bc, i32 1, i32 %i.bd       ; 9 uses
  %i.bf = sub nsw i32 %4, %3
  %i.bg = tail call noundef range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.bf, i1 true) ; 3 uses
  %i.bh = add nuw nsw i32 %i.bg, 1
  %i.bi = icmp samesign ugt i32 %i.be, 1
  br i1 %i.bi, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bj = udiv i32 %i.bg, %i.be                   ; 2 uses
  %i.bk = add nuw nsw i32 %i.bj, 1
  %i.bl = urem i32 %i.bg, %i.be                   ; 2 uses
  %.not121 = icmp eq i32 %i.bl, 0
  br i1 %.not121, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = add nuw nsw i32 %i.bj, 2
  %i.bn = sub nuw nsw i32 %i.be, %i.bl
  %.neg.lhs.trunc = trunc nuw nsw i32 %i.bn to i8
  %.neg120132 = lshr i8 %.neg.lhs.trunc, 1
  %.neg120 = sub nsw i8 0, %.neg120132
  %.neg.sext = sext i8 %.neg120 to i32
  %i.bo = add nsw i32 %i.be, %.neg.sext
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.188 = phi i1 [ false, %bb.k ], [ false, %bb.l ], [ true, %bb.m ]
  %.185 = phi i32 [ %i.bh, %bb.k ], [ %i.bk, %bb.l ], [ %i.bm, %bb.m ]
  %.2 = phi i32 [ 1, %bb.k ], [ %i.bd, %bb.l ], [ %i.bo, %bb.m ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !114 ; 2 uses
  %i.br = add nsw i32 %i.bq, %.185                ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !62 ; 4 uses
  %i.bu = icmp sgt i32 %i.br, %i.bt
  br i1 %i.bu, label %bb.o, label %._ZN8ImVectorI6ImVec2E6resizeEi.exit_crit_edge

._ZN8ImVectorI6ImVec2E6resizeEi.exit_crit_edge:   ; preds = %bb.n
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !115
  br label %_ZN8ImVectorI6ImVec2E6resizeEi.exit

bb.o:                                             ; preds = %bb.n
  %.not.i.i117 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i117, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i118, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = sdiv i32 %i.bt, 2
  %i.bw = add nsw i32 %i.bv, %i.bt
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i118

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i118: ; preds = %bb.p, %bb.o
  %i.bx = phi i32 [ %i.bw, %bb.p ], [ 8, %bb.o ]
  %i.by = tail call noundef i32 @llvm.smax.i32(i32 %i.bx, i32 %i.br) ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = shl nsw i64 %i.bz, 3
  %i.cb = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ca) ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !63 ; 2 uses
  %.not6.i.i119 = icmp eq ptr %i.cd, null
  br i1 %.not6.i.i119, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i118
  %i.ce = load i32, ptr %i.bp, align 8, !tbaa !64
  %i.cf = sext i32 %i.ce to i64
  %i.cg = shl nsw i64 %i.cf, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cb, ptr nonnull align 4 %i.cd, i64 %i.cg, i1 false)
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !63
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ch)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i118
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !63
  store i32 %i.by, ptr %i.bs, align 4, !tbaa !62
  br label %_ZN8ImVectorI6ImVec2E6resizeEi.exit

_ZN8ImVectorI6ImVec2E6resizeEi.exit:              ; preds = %._ZN8ImVectorI6ImVec2E6resizeEi.exit_crit_edge, %bb.r
  %i.ci = phi ptr [ %.pre, %._ZN8ImVectorI6ImVec2E6resizeEi.exit_crit_edge ], [ %i.cb, %bb.r ]
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !64
  %i.cj = sext i32 %i.bq to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cj ; 3 uses
  %or.cond = icmp ugt i32 %3, 47
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN8ImVectorI6ImVec2E6resizeEi.exit
  %i.cl = srem i32 %3, 48                         ; 3 uses
  %i.cm = icmp slt i32 %i.cl, 0
  %i.cn = add nsw i32 %i.cl, 48
  %spec.select = select i1 %i.cm, i32 %i.cn, i32 %i.cl
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN8ImVectorI6ImVec2E6resizeEi.exit
  %.090 = phi i32 [ %3, %_ZN8ImVectorI6ImVec2E6resizeEi.exit ], [ %spec.select, %bb.s ] ; 4 uses
  %.not = icmp slt i32 %4, %3
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !40 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cs = load float, ptr %1, align 4, !tbaa !91  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  br i1 %.not, label %.preheader, label %.preheader122

.preheader122:                                    ; preds = %bb.t
  %i.cu = sext i32 %.090 to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cu
  %i.cw = load float, ptr %i.cr, align 4, !tbaa !92
  %i.cx = load <2 x float>, ptr %i.cv, align 8, !tbaa !9
  %i.cy = insertelement <2 x float> poison, float %2, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.da = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.db = insertelement <2 x float> %i.da, float %i.cw, i64 1
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cz, <2 x float> %i.db)
  store <2 x float> %i.dc, ptr %i.ck, align 4, !tbaa !9
  %i.dd = add nsw i32 %.2, %3                     ; 2 uses
  %.not113.peel = icmp sgt i32 %i.dd, %4
  br i1 %.not113.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %.preheader122
  %i.de = add nsw i32 %.090, %.2
  br label %bb.u

.preheader:                                       ; preds = %bb.t
  %i.df = zext nneg i32 %.090 to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.df
  %i.dh = load float, ptr %i.cr, align 4, !tbaa !92
  %i.di = load <2 x float>, ptr %i.dg, align 8, !tbaa !9
  %i.dj = insertelement <2 x float> poison, float %2, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dl = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.dh, i64 1
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.dk, <2 x float> %i.dm)
  store <2 x float> %i.dn, ptr %i.ck, align 4, !tbaa !9
  %i.do = sub nsw i32 %3, %.2                     ; 2 uses
  %.not112.peel = icmp slt i32 %i.do, %4
  br i1 %.not112.peel, label %.loopexit, label %.peel.next136

.peel.next136:                                    ; preds = %.preheader
  %i.dp = sub nsw i32 %.090, %.2
  br label %bb.v

bb.u:                                             ; preds = %.peel.next, %bb.u
  %.089126 = phi i32 [ %i.dd, %.peel.next ], [ %i.dy, %bb.u ]
  %.191125 = phi i32 [ %i.de, %.peel.next ], [ %i.dz, %bb.u ] ; 3 uses
  %.095124 = phi ptr [ %i.ct, %.peel.next ], [ %i.dx, %bb.u ] ; 2 uses
  %i.dq = icmp sgt i32 %.191125, 47
  %i.dr = add nsw i32 %.191125, -48
  %spec.select114 = select i1 %i.dq, i32 %i.dr, i32 %.191125 ; 2 uses
  %i.ds = sext i32 %spec.select114 to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.ds
  %i.du = load <2 x float>, ptr %i.dt, align 8, !tbaa !9
  %i.dv = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.cz, <2 x float> %i.dv)
  store <2 x float> %i.dw, ptr %.095124, align 4, !tbaa !9
  %i.dx = getelementptr inbounds nuw i8, ptr %.095124, i64 8 ; 2 uses
  %i.dy = add nsw i32 %i.be, %.089126             ; 2 uses
  %i.dz = add nsw i32 %spec.select114, %i.be
  %.not113 = icmp sgt i32 %i.dy, %4
  br i1 %.not113, label %.loopexit, label %bb.u, !llvm.loop !116

bb.v:                                             ; preds = %.peel.next136, %bb.v
  %.086130 = phi i32 [ %i.do, %.peel.next136 ], [ %i.ei, %bb.v ]
  %.393129 = phi i32 [ %i.dp, %.peel.next136 ], [ %i.ej, %bb.v ] ; 3 uses
  %.196128 = phi ptr [ %i.ct, %.peel.next136 ], [ %i.eh, %bb.v ] ; 2 uses
  %i.ea = icmp slt i32 %.393129, 0
  %i.eb = add nsw i32 %.393129, 48
  %spec.select115 = select i1 %i.ea, i32 %i.eb, i32 %.393129 ; 2 uses
  %i.ec = sext i32 %spec.select115 to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.ec
  %i.ee = load <2 x float>, ptr %i.ed, align 8, !tbaa !9
  %i.ef = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.dk, <2 x float> %i.ef)
  store <2 x float> %i.eg, ptr %.196128, align 4, !tbaa !9
  %i.eh = getelementptr inbounds nuw i8, ptr %.196128, i64 8 ; 2 uses
  %i.ei = sub nsw i32 %.086130, %i.be             ; 2 uses
  %i.ej = sub nsw i32 %spec.select115, %i.be
  %.not112 = icmp slt i32 %i.ei, %4
  br i1 %.not112, label %.loopexit, label %bb.v, !llvm.loop !117

.loopexit:                                        ; preds = %bb.u, %bb.v, %.preheader122, %.preheader
  %.297 = phi ptr [ %i.eh, %bb.v ], [ %i.ct, %.preheader ], [ %i.ct, %.preheader122 ], [ %i.dx, %bb.u ]
  br i1 %.188, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.ek = srem i32 %4, 48                         ; 3 uses
  %i.el = icmp slt i32 %i.ek, 0
  %i.em = add nsw i32 %i.ek, 48
  %spec.select116 = select i1 %i.el, i32 %i.em, i32 %i.ek
  %i.en = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.eo = zext nneg i32 %spec.select116 to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load <2 x float>, ptr %i.ep, align 8, !tbaa !9
  %i.er = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.es = insertelement <2 x float> poison, float %2, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.et, <2 x float> %i.er)
  store <2 x float> %i.eu, ptr %.297, align 4, !tbaa !9
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.w, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList11_PathArcToNERK6ImVec2fffi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = fcmp ugt float %2, 0.000000e+00
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 11 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64   ; 7 uses
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !62
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !63
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

end_hunk_0
begin_hunk_1_@_Z31ImFontAtlasBuildPackCustomRectsP11ImFontAtlasPv:bb.a
  %i.bg = tail call noundef i32 @llvm.smax.i32(i32 %i.ba, i32 %i.bf)
  store i32 %i.bg, ptr %i.w, align 4, !tbaa !236
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %._crit_edge32, label %bb.g, !llvm.loop !504
}

; Function Attrs: mustprogress nofree uwtable
define internal fastcc void @_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti(ptr nofree noundef captures(address) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #29 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge59.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.b = icmp ult i32 %2, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.e, ptr %i.d, align 4, !tbaa !395
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.h, ptr %i.g, align 4, !tbaa !395
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.k, ptr %i.j, align 4, !tbaa !395
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.n, ptr %i.m, align 4, !tbaa !395
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next.3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  store i32 %i.q, ptr %i.p, align 4, !tbaa !395
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next.4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.t = trunc nuw nsw i64 %indvars.iv.next.4 to i32
  store i32 %i.t, ptr %i.s, align 4, !tbaa !395
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next.5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = trunc nuw nsw i64 %indvars.iv.next.5 to i32
  store i32 %i.w, ptr %i.v, align 4, !tbaa !395
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next.6
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = trunc nuw nsw i64 %indvars.iv.next.6 to i32
  store i32 %i.z, ptr %i.y, align 4, !tbaa !395
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph58.unr-lcssa, label %.lr.ph, !llvm.loop !505

._crit_edge59.thread:                             ; preds = %bb.a
  %i.aa = sext i32 %2 to i64                      ; 2 uses
  tail call void @qsort(ptr noundef %1, i64 noundef %i.aa, i64 noundef 16, ptr noundef nonnull @_ZL19rect_height_comparePKvS0_)
  tail call void @qsort(ptr noundef %1, i64 noundef %i.aa, i64 noundef 16, ptr noundef nonnull @_ZL19rect_original_orderPKvS0_)
  br label %._crit_edge64

.lr.ph58.unr-lcssa:                               ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph58, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph58.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.lr.ph58.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.epil
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !395
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph58, label %.lr.ph.epil, !llvm.loop !506

.lr.ph58:                                         ; preds = %.lr.ph.epil, %.lr.ph58.unr-lcssa
  %i.ae = zext nneg i32 %2 to i64                 ; 2 uses
  tail call void @qsort(ptr noundef nonnull %1, i64 noundef %i.ae, i64 noundef 16, ptr noundef nonnull @_ZL19rect_height_comparePKvS0_)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %wide.trip.count70 = zext nneg i32 %2 to i64    ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph58, %bb.al
  %indvars.iv67 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next68, %bb.al ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv67 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i16, ptr %i.al, align 4, !tbaa !374 ; 2 uses
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = icmp eq i16 %i.am, 0
  br i1 %i.ao, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 6
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !376 ; 2 uses
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 10
  store i16 0, ptr %i.as, align 2, !tbaa !396
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i16 0, ptr %i.at, align 4, !tbaa !404
  br label %bb.al

bb.e:                                             ; preds = %bb.c
  %i.au = zext i16 %i.aq to i32                   ; 4 uses
  %i.av = load i32, ptr %i.af, align 8, !tbaa !392 ; 2 uses
  %i.aw = add nsw i32 %i.an, -1
  %i.ax = add i32 %i.aw, %i.av                    ; 2 uses
  %i.ay = srem i32 %i.ax, %i.av
  %i.az = sub nsw i32 %i.ax, %i.ay                ; 11 uses
  %i.ba = load i32, ptr %0, align 8, !tbaa !389   ; 3 uses
  %i.bb = icmp sgt i32 %i.az, %i.ba
  br i1 %i.bb, label %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = load i32, ptr %i.ag, align 4, !tbaa !390 ; 4 uses
  %i.bd = icmp slt i32 %i.bc, %i.au
  br i1 %i.bd, label %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %i.ah, align 8, !tbaa !388 ; 5 uses
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !393
  %i.bg = zext i16 %i.bf to i32                   ; 3 uses
  %i.bh = add nsw i32 %i.az, %i.bg                ; 2 uses
  %.not128.i.i = icmp sgt i32 %i.bh, %i.ba
  br i1 %.not128.i.i, label %.._crit_edge.thread.i_crit_edge.i, label %.lr.ph.i.i

.._crit_edge.thread.i_crit_edge.i:                ; preds = %bb.g
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !386
  br label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.bi = icmp sgt i32 %i.az, 0
  %i.bj = load i32, ptr %i.ai, align 8, !tbaa !386 ; 3 uses
  %i.bk = icmp eq i32 %i.bj, 0                    ; 2 uses
  br i1 %i.bi, label %.lr.ph.i.preheader.us.i.i, label %.lr.ph.split.i.i

.lr.ph.i.preheader.us.i.i:                        ; preds = %.lr.ph.i.i, %bb.r
  %i.bl = phi i32 [ %i.cw, %bb.r ], [ %i.bh, %.lr.ph.i.i ]
  %i.bm = phi i32 [ %i.cv, %bb.r ], [ %i.bg, %.lr.ph.i.i ] ; 3 uses
  %.0133.us.i.i = phi ptr [ %.1.us.i.i, %bb.r ], [ null, %.lr.ph.i.i ] ; 3 uses
  %.074132.us.i.i = phi ptr [ %i.ct, %bb.r ], [ %i.be, %.lr.ph.i.i ] ; 2 uses
  %.077131.us.i.i = phi ptr [ %i.cs, %bb.r ], [ %i.ah, %.lr.ph.i.i ] ; 2 uses
  %.080130.us.i.i = phi i32 [ %.181.us.i.i, %bb.r ], [ 1073741824, %.lr.ph.i.i ] ; 6 uses
  %.088129.us.i.i = phi i32 [ %.189.us.i.i, %bb.r ], [ 1073741824, %.lr.ph.i.i ] ; 4 uses
  br label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %bb.l, %.lr.ph.i.preheader.us.i.i
  %i.bn = phi i32 [ %.pre-phi.i.us.i.i, %bb.l ], [ %i.bm, %.lr.ph.i.preheader.us.i.i ] ; 3 uses
  %.0364.i.us.i.i = phi i32 [ %.1.i.us.i.i, %bb.l ], [ 0, %.lr.ph.i.preheader.us.i.i ]
  %.0373.i.us.i.i = phi i32 [ %.138.i.us.i.i, %bb.l ], [ 0, %.lr.ph.i.preheader.us.i.i ] ; 4 uses
  %.0392.i.us.i.i = phi i32 [ %.140.i.us.i.i, %bb.l ], [ 0, %.lr.ph.i.preheader.us.i.i ] ; 4 uses
  %.0411.i.us.i.i = phi ptr [ %i.cl, %bb.l ], [ %.074132.us.i.i, %.lr.ph.i.preheader.us.i.i ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !394
  %i.bq = zext i16 %i.bp to i32                   ; 5 uses
  %i.br = icmp slt i32 %.0392.i.us.i.i, %i.bq
  br i1 %i.br, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.us.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !379 ; 2 uses
  %i.bu = load i16, ptr %i.bt, align 8, !tbaa !393
  %i.bv = zext i16 %i.bu to i32                   ; 2 uses
  %i.bw = sub nsw i32 %i.bv, %i.bn                ; 2 uses
  %i.bx = add nsw i32 %i.bw, %.0373.i.us.i.i
  %i.by = icmp sgt i32 %i.bx, %i.az
  %i.bz = sub nsw i32 %i.az, %.0373.i.us.i.i
  %spec.select.i.us.i.i = select i1 %i.by, i32 %i.bz, i32 %i.bw ; 2 uses
  %i.ca = sub nuw nsw i32 %.0392.i.us.i.i, %i.bq
  %i.cb = mul nsw i32 %spec.select.i.us.i.i, %i.ca
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph.i.us.i.i
  %i.cc = sub nsw i32 %i.bq, %.0392.i.us.i.i
  %i.cd = mul nsw i32 %i.cc, %.0373.i.us.i.i      ; 2 uses
  %i.ce = icmp slt i32 %i.bn, %i.bm
  %i.cf = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !379 ; 3 uses
  %i.ch = load i16, ptr %i.cg, align 8, !tbaa !393
  %i.ci = zext i16 %i.ch to i32                   ; 4 uses
  br i1 %i.ce, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = sub nsw i32 %i.ci, %i.bn
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ck = sub nsw i32 %i.ci, %i.bm
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.pre-phi.i.us.i.i = phi i32 [ %i.ci, %bb.k ], [ %i.ci, %bb.j ], [ %i.bv, %bb.h ] ; 2 uses
  %i.cl = phi ptr [ %i.cg, %bb.k ], [ %i.cg, %bb.j ], [ %i.bt, %bb.h ]
  %.140.i.us.i.i = phi i32 [ %i.bq, %bb.k ], [ %i.bq, %bb.j ], [ %.0392.i.us.i.i, %bb.h ] ; 7 uses
  %.pn.i.us.i.i = phi i32 [ %i.ck, %bb.k ], [ %i.cj, %bb.j ], [ %spec.select.i.us.i.i, %bb.h ]
  %.pn46.i.us.i.i = phi i32 [ %i.cd, %bb.k ], [ %i.cd, %bb.j ], [ %i.cb, %bb.h ]
  %.1.i.us.i.i = add nsw i32 %.pn46.i.us.i.i, %.0364.i.us.i.i ; 3 uses
  %.138.i.us.i.i = add nsw i32 %.pn.i.us.i.i, %.0373.i.us.i.i
  %i.cm = icmp samesign ugt i32 %i.bl, %.pre-phi.i.us.i.i
  br i1 %i.cm, label %.lr.ph.i.us.i.i, label %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit.loopexit.us.i.i, !llvm.loop !507

bb.m:                                             ; preds = %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit.loopexit.us.i.i
  %i.cn = add nuw nsw i32 %.140.i.us.i.i, %i.au
  %.not103.us.i.i = icmp sgt i32 %i.cn, %i.bc
  br i1 %.not103.us.i.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = icmp slt i32 %.140.i.us.i.i, %.080130.us.i.i
  br i1 %i.co, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = icmp eq i32 %.140.i.us.i.i, %.080130.us.i.i
  %i.cq = icmp slt i32 %.1.i.us.i.i, %.088129.us.i.i
  %or.cond.us.i.i = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %or.cond.us.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %bb.r

bb.q:                                             ; preds = %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit.loopexit.us.i.i
  %i.cr = icmp slt i32 %.140.i.us.i.i, %.080130.us.i.i
  %spec.select.us.i.i = tail call i32 @llvm.smin.i32(i32 %.140.i.us.i.i, i32 %.080130.us.i.i)
  %spec.select104.us.i.i = select i1 %i.cr, ptr %.077131.us.i.i, ptr %.0133.us.i.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %.189.us.i.i = phi i32 [ %.088129.us.i.i, %bb.m ], [ %.088129.us.i.i, %bb.o ], [ %.1.i.us.i.i, %bb.p ], [ %.088129.us.i.i, %bb.q ] ; 3 uses
  %.181.us.i.i = phi i32 [ %.080130.us.i.i, %bb.m ], [ %.080130.us.i.i, %bb.o ], [ %.140.i.us.i.i, %bb.p ], [ %spec.select.us.i.i, %bb.q ] ; 3 uses
  %.1.us.i.i = phi ptr [ %.0133.us.i.i, %bb.m ], [ %.0133.us.i.i, %bb.o ], [ %.077131.us.i.i, %bb.p ], [ %spec.select104.us.i.i, %bb.q ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.074132.us.i.i, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !379 ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 8, !tbaa !393
  %i.cv = zext i16 %i.cu to i32                   ; 2 uses
  %i.cw = add nuw nsw i32 %i.az, %i.cv            ; 2 uses
  %.not.us.i.i = icmp sgt i32 %i.cw, %i.ba
  br i1 %.not.us.i.i, label %._crit_edge.i.i, label %.lr.ph.i.preheader.us.i.i, !llvm.loop !508

_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit.loopexit.us.i.i: ; preds = %bb.l
  br i1 %i.bk, label %bb.q, label %bb.m

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %spec.select.i = select i1 %i.bk, i32 1073741824, i32 0
  br label %._crit_edge.thread208.i.i

._crit_edge.i.i:                                  ; preds = %bb.r
  %i.cx = icmp eq ptr %.1.us.i.i, null
  br i1 %i.cx, label %._crit_edge.thread.i.i, label %._crit_edge.thread208.i.i

._crit_edge.thread208.i.i:                        ; preds = %._crit_edge.i.i, %.lr.ph.split.i.i
  %.0.lcssa214.i.i = phi ptr [ %.1.us.i.i, %._crit_edge.i.i ], [ %i.ah, %.lr.ph.split.i.i ] ; 2 uses
  %.080.lcssa213.i.i = phi i32 [ %.181.us.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph.split.i.i ]
  %.088.lcssa212.i.i = phi i32 [ %.189.us.i.i, %._crit_edge.i.i ], [ %spec.select.i, %.lr.ph.split.i.i ]
  %i.cy = load ptr, ptr %.0.lcssa214.i.i, align 8, !tbaa !509
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !393
  %i.da = zext i16 %i.cz to i32
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.thread208.i.i, %._crit_edge.i.i, %.._crit_edge.thread.i_crit_edge.i
  %i.db = phi i32 [ %i.bj, %._crit_edge.thread208.i.i ], [ %i.bj, %._crit_edge.i.i ], [ %.pre.i, %.._crit_edge.thread.i_crit_edge.i ]
  %.0.lcssa207.i.i = phi ptr [ %.0.lcssa214.i.i, %._crit_edge.thread208.i.i ], [ null, %._crit_edge.i.i ], [ null, %.._crit_edge.thread.i_crit_edge.i ] ; 2 uses
  %.080.lcssa206.i.i = phi i32 [ %.080.lcssa213.i.i, %._crit_edge.thread208.i.i ], [ %.181.us.i.i, %._crit_edge.i.i ], [ 1073741824, %.._crit_edge.thread.i_crit_edge.i ] ; 2 uses
  %.088.lcssa205.i.i = phi i32 [ %.088.lcssa212.i.i, %._crit_edge.thread208.i.i ], [ %.189.us.i.i, %._crit_edge.i.i ], [ 1073741824, %.._crit_edge.thread.i_crit_edge.i ]
  %i.dc = phi i32 [ %i.da, %._crit_edge.thread208.i.i ], [ 0, %._crit_edge.i.i ], [ 0, %.._crit_edge.thread.i_crit_edge.i ] ; 2 uses
  %i.dd = icmp eq i32 %i.db, 1
  br i1 %i.dd, label %.preheader127.i.i, label %_ZL28stbrp__skyline_find_best_posP13stbrp_contextii.exit.i

.preheader127.i.i:                                ; preds = %._crit_edge.thread.i.i
  %i.de = icmp sgt i32 %i.az, %i.bg
  br i1 %i.de, label %.lr.ph173.i.i, label %.preheader.i.i.preheader

.lr.ph173.i.i:                                    ; preds = %.preheader127.i.i, %.lr.ph173.i.i
  %.072172.i.i = phi ptr [ %i.dg, %.lr.ph173.i.i ], [ %i.be, %.preheader127.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.072172.i.i, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !379 ; 3 uses
  %i.dh = load i16, ptr %i.dg, align 8, !tbaa !393
  %i.di = zext i16 %i.dh to i32
  %i.dj = icmp sgt i32 %i.az, %i.di
  br i1 %i.dj, label %.lr.ph173.i.i, label %.preheader.i.i.preheader, !llvm.loop !510

.preheader.i.i.preheader:                         ; preds = %.lr.ph173.i.i, %.preheader127.i.i
  %.173180.i.i.ph = phi ptr [ %i.be, %.preheader127.i.i ], [ %i.dg, %.lr.ph173.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.ac
  %.2181.i.i = phi ptr [ %.3.i.i, %bb.ac ], [ %.0.lcssa207.i.i, %.preheader.i.i.preheader ] ; 2 uses
  %.173180.i.i = phi ptr [ %i.fa, %bb.ac ], [ %.173180.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.175179.i.i = phi ptr [ %.276.i.i, %bb.ac ], [ %i.be, %.preheader.i.i.preheader ]
  %.178178.i.i = phi ptr [ %.279.i.i, %bb.ac ], [ %i.ah, %.preheader.i.i.preheader ]
  %.282177.i.i = phi i32 [ %.383.i.i, %bb.ac ], [ %.080.lcssa206.i.i, %.preheader.i.i.preheader ] ; 4 uses
  %.085176.i.i = phi i32 [ %.186.i.i, %bb.ac ], [ %i.dc, %.preheader.i.i.preheader ] ; 3 uses
  %.290175.i.i = phi i32 [ %.391.i.i, %bb.ac ], [ %.088.lcssa205.i.i, %.preheader.i.i.preheader ] ; 4 uses
  %i.dk = load i16, ptr %.173180.i.i, align 8, !tbaa !393 ; 2 uses
  %i.dl = zext i16 %i.dk to i32                   ; 2 uses
  %i.dm = sub nsw i32 %i.dl, %i.az                ; 5 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader.i.i
  %.279.i.i = phi ptr [ %.178178.i.i, %.preheader.i.i ], [ %i.dn, %bb.s ] ; 2 uses
  %.276.i.i = phi ptr [ %.175179.i.i, %.preheader.i.i ], [ %i.do, %bb.s ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.276.i.i, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !379 ; 2 uses
  %i.dp = load i16, ptr %i.do, align 8, !tbaa !393
  %i.dq = zext i16 %i.dp to i32
  %.not100.i.i = icmp slt i32 %i.dm, %i.dq
  br i1 %.not100.i.i, label %bb.t, label %bb.s, !llvm.loop !511

bb.t:                                             ; preds = %bb.s
  %i.dr = load i16, ptr %.276.i.i, align 8, !tbaa !393 ; 2 uses
  %i.ds = icmp ugt i16 %i.dk, %i.dr
  br i1 %i.ds, label %.lr.ph.i110.preheader.i.i, label %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i

.lr.ph.i110.preheader.i.i:                        ; preds = %bb.t
  %i.dt = zext i16 %i.dr to i32
  br label %.lr.ph.i110.i.i

.lr.ph.i110.i.i:                                  ; preds = %bb.y, %.lr.ph.i110.preheader.i.i
  %i.du = phi i32 [ %.pre-phi.i116.i.i, %bb.y ], [ %i.dt, %.lr.ph.i110.preheader.i.i ] ; 3 uses
  %.0364.i111.i.i = phi i32 [ %.1.i120.i.i, %bb.y ], [ 0, %.lr.ph.i110.preheader.i.i ]
  %.0373.i112.i.i = phi i32 [ %.138.i121.i.i, %bb.y ], [ 0, %.lr.ph.i110.preheader.i.i ] ; 4 uses
  %.0392.i113.i.i = phi i32 [ %.140.i117.i.i, %bb.y ], [ 0, %.lr.ph.i110.preheader.i.i ] ; 4 uses
  %.0411.i114.i.i = phi ptr [ %i.es, %bb.y ], [ %.276.i.i, %.lr.ph.i110.preheader.i.i ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0411.i114.i.i, i64 2
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !394
  %i.dx = zext i16 %i.dw to i32                   ; 5 uses
  %i.dy = icmp slt i32 %.0392.i113.i.i, %i.dx
  br i1 %i.dy, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.lr.ph.i110.i.i
  %i.dz = sub nsw i32 %i.dx, %.0392.i113.i.i
  %i.ea = mul nsw i32 %i.dz, %.0373.i112.i.i      ; 2 uses
  %i.eb = icmp sgt i32 %i.dm, %i.du
  %i.ec = getelementptr inbounds nuw i8, ptr %.0411.i114.i.i, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !379 ; 3 uses
  %i.ee = load i16, ptr %i.ed, align 8, !tbaa !393
  %i.ef = zext i16 %i.ee to i32                   ; 4 uses
  br i1 %i.eb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eg = sub nsw i32 %i.ef, %i.dm
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.eh = sub nsw i32 %i.ef, %i.du
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.i110.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.0411.i114.i.i, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !379 ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 8, !tbaa !393
  %i.el = zext i16 %i.ek to i32                   ; 2 uses
  %i.em = sub nsw i32 %i.el, %i.du                ; 2 uses
  %i.en = add nsw i32 %i.em, %.0373.i112.i.i
  %i.eo = icmp sgt i32 %i.en, %i.az
  %i.ep = sub nsw i32 %i.az, %.0373.i112.i.i
  %spec.select.i115.i.i = select i1 %i.eo, i32 %i.ep, i32 %i.em ; 2 uses
  %i.eq = sub nuw nsw i32 %.0392.i113.i.i, %i.dx
  %i.er = mul nsw i32 %spec.select.i115.i.i, %i.eq
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.pre-phi.i116.i.i = phi i32 [ %i.ef, %bb.v ], [ %i.ef, %bb.w ], [ %i.el, %bb.x ] ; 2 uses
  %i.es = phi ptr [ %i.ed, %bb.v ], [ %i.ed, %bb.w ], [ %i.ej, %bb.x ]
  %.140.i117.i.i = phi i32 [ %i.dx, %bb.v ], [ %i.dx, %bb.w ], [ %.0392.i113.i.i, %bb.x ] ; 2 uses
  %.pn.i118.i.i = phi i32 [ %i.eg, %bb.v ], [ %i.eh, %bb.w ], [ %spec.select.i115.i.i, %bb.x ]
  %.pn46.i119.i.i = phi i32 [ %i.ea, %bb.v ], [ %i.ea, %bb.w ], [ %i.er, %bb.x ]
  %.1.i120.i.i = add nsw i32 %.pn46.i119.i.i, %.0364.i111.i.i ; 2 uses
  %.138.i121.i.i = add nsw i32 %.pn.i118.i.i, %.0373.i112.i.i
  %i.et = icmp samesign ult i32 %.pre-phi.i116.i.i, %i.dl
  br i1 %i.et, label %.lr.ph.i110.i.i, label %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i, !llvm.loop !507

_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i: ; preds = %bb.y, %bb.t
  %.039.lcssa.i108.i.i = phi i32 [ 0, %bb.t ], [ %.140.i117.i.i, %bb.y ] ; 4 uses
  %.036.lcssa.i109.i.i = phi i32 [ 0, %bb.t ], [ %.1.i120.i.i, %bb.y ] ; 3 uses
  %i.eu = add nuw nsw i32 %.039.lcssa.i108.i.i, %i.au
  %.not101.i.i = icmp sgt i32 %i.eu, %i.bc
  %.not102.i.i = icmp sgt i32 %.039.lcssa.i108.i.i, %.282177.i.i
  %or.cond106.i.i = select i1 %.not101.i.i, i1 true, i1 %.not102.i.i
  br i1 %or.cond106.i.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i
  %i.ev = icmp samesign ult i32 %.039.lcssa.i108.i.i, %.282177.i.i
  %i.ew = icmp slt i32 %.036.lcssa.i109.i.i, %.290175.i.i
  %or.cond126.i.i = select i1 %i.ev, i1 true, i1 %i.ew
  br i1 %or.cond126.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ex = icmp eq i32 %.036.lcssa.i109.i.i, %.290175.i.i
  %i.ey = icmp slt i32 %i.dm, %.085176.i.i
  %or.cond107.i.i = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %or.cond107.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i
  %.391.i.i = phi i32 [ %.036.lcssa.i109.i.i, %bb.ab ], [ %.290175.i.i, %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i ], [ %.290175.i.i, %bb.aa ]
  %.186.i.i = phi i32 [ %i.dm, %bb.ab ], [ %.085176.i.i, %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i ], [ %.085176.i.i, %bb.aa ] ; 2 uses
  %.383.i.i = phi i32 [ %.039.lcssa.i108.i.i, %bb.ab ], [ %.282177.i.i, %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i ], [ %.282177.i.i, %bb.aa ] ; 2 uses
  %.3.i.i = phi ptr [ %.279.i.i, %bb.ab ], [ %.2181.i.i, %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i ], [ %.2181.i.i, %bb.aa ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.173180.i.i, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !379 ; 2 uses
  %.not99.i.i = icmp eq ptr %i.fa, null
  br i1 %.not99.i.i, label %_ZL28stbrp__skyline_find_best_posP13stbrp_contextii.exit.i, label %.preheader.i.i, !llvm.loop !512

_ZL28stbrp__skyline_find_best_posP13stbrp_contextii.exit.i: ; preds = %bb.ac, %._crit_edge.thread.i.i
  %.287.i.i = phi i32 [ %i.dc, %._crit_edge.thread.i.i ], [ %.186.i.i, %bb.ac ] ; 3 uses
  %.484.i.i = phi i32 [ %.080.lcssa206.i.i, %._crit_edge.thread.i.i ], [ %.383.i.i, %bb.ac ] ; 2 uses
  %.4.i.i = phi ptr [ %.0.lcssa207.i.i, %._crit_edge.thread.i.i ], [ %.3.i.i, %bb.ac ] ; 3 uses
  %i.fb = icmp eq ptr %.4.i.i, null
  br i1 %i.fb, label %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %_ZL28stbrp__skyline_find_best_posP13stbrp_contextii.exit.i
  %i.fc = add nuw nsw i32 %.484.i.i, %i.au        ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, %i.bc
  br i1 %i.fd, label %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fe = load ptr, ptr %i.aj, align 8, !tbaa !387 ; 6 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fg = trunc i32 %.287.i.i to i16              ; 2 uses
  store i16 %i.fg, ptr %i.fe, align 8, !tbaa !393
  %i.fh = trunc i32 %i.fc to i16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !394
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !379
  store ptr %i.fk, ptr %i.aj, align 8, !tbaa !387
  %i.fl = load ptr, ptr %.4.i.i, align 8, !tbaa !509 ; 3 uses
  %i.fm = load i16, ptr %i.fl, align 8, !tbaa !393
  %i.fn = zext i16 %i.fm to i32
  %i.fo = icmp sgt i32 %.287.i.i, %i.fn
  br i1 %i.fo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !379
  store ptr %i.fe, ptr %i.fp, align 8, !tbaa !379
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store ptr %i.fe, ptr %.4.i.i, align 8, !tbaa !509
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i = phi ptr [ %i.fq, %bb.ag ], [ %i.fl, %bb.ah ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !379 ; 2 uses
  %.not54.i = icmp eq ptr %i.fs, null
  %.pre58.i = add nsw i32 %.287.i.i, %i.an        ; 3 uses
  br i1 %.not54.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai, %bb.aj
  %i.ft = phi ptr [ %i.fz, %bb.aj ], [ %i.fs, %bb.ai ] ; 4 uses
  %i.fu = phi ptr [ %i.fy, %bb.aj ], [ %i.fr, %bb.ai ]
  %.155.i = phi ptr [ %i.ft, %bb.aj ], [ %.0.i, %bb.ai ] ; 2 uses
  %i.fv = load i16, ptr %i.ft, align 8, !tbaa !393
  %i.fw = zext i16 %i.fv to i32
  %.not44.i = icmp slt i32 %.pre58.i, %i.fw
  br i1 %.not44.i, label %.critedge.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i
  %i.fx = load ptr, ptr %i.aj, align 8, !tbaa !387
  store ptr %i.fx, ptr %i.fu, align 8, !tbaa !379
  store ptr %.155.i, ptr %i.aj, align 8, !tbaa !387
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !379 ; 2 uses
  %.not.i = icmp eq ptr %i.fz, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !513

.critedge.i:                                      ; preds = %bb.aj, %.lr.ph.i, %bb.ai
  %.1.lcssa.i = phi ptr [ %.0.i, %bb.ai ], [ %.155.i, %.lr.ph.i ], [ %i.ft, %bb.aj ] ; 3 uses
  store ptr %.1.lcssa.i, ptr %i.fj, align 8, !tbaa !379
  %i.ga = load i16, ptr %.1.lcssa.i, align 8, !tbaa !393
  %i.gb = zext i16 %i.ga to i32
  %i.gc = icmp sgt i32 %.pre58.i, %i.gb
  br i1 %i.gc, label %bb.ak, label %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit

bb.ak:                                            ; preds = %.critedge.i
  %i.gd = trunc i32 %.pre58.i to i16
  store i16 %i.gd, ptr %.1.lcssa.i, align 8, !tbaa !393
  br label %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit

_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit: ; preds = %bb.ak, %.critedge.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i16 %i.fg, ptr %i.ge, align 4, !tbaa !404
  %i.gf = trunc i32 %.484.i.i to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ak, i64 10
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !396
  br label %bb.al

_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit.thread: ; preds = %bb.e, %bb.f, %bb.ad, %bb.ae, %_ZL28stbrp__skyline_find_best_posP13stbrp_contextii.exit.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ak, i64 10
  store i16 -1, ptr %i.gh, align 2, !tbaa !396
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i16 -1, ptr %i.gi, align 4, !tbaa !404
  br label %bb.al

bb.al:                                            ; preds = %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit, %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit.thread, %bb.d
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %._crit_edge59, label %bb.b, !llvm.loop !514

._crit_edge59:                                    ; preds = %bb.al
  tail call void @qsort(ptr noundef nonnull %1, i64 noundef %i.ae, i64 noundef 16, ptr noundef nonnull @_ZL19rect_original_orderPKvS0_)
  %xtraiter4 = and i64 %wide.trip.count70, 1
  %i.gj = icmp eq i32 %2, 1
  br i1 %i.gj, label %.lr.ph63.epil.preheader, label %._crit_edge59.new

._crit_edge59.new:                                ; preds = %._crit_edge59
  %unroll_iter8 = and i64 %wide.trip.count70, 2147483646
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %.thread.1, %._crit_edge59.new
  %indvars.iv72 = phi i64 [ 0, %._crit_edge59.new ], [ %indvars.iv.next73.1, %.thread.1 ] ; 3 uses
  %niter9 = phi i64 [ 0, %._crit_edge59.new ], [ %niter9.next.1, %.thread.1 ]
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv72 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load i16, ptr %i.gl, align 4, !tbaa !404
  %i.gn = icmp eq i16 %i.gm, -1
  br i1 %i.gn, label %bb.am, label %.thread

bb.am:                                            ; preds = %.lr.ph63
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 10
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !396
  %.fr = freeze i16 %i.gp
  %i.gq = icmp ne i16 %.fr, -1
  %i.gr = zext i1 %i.gq to i32
  br label %.thread

.thread:                                          ; preds = %.lr.ph63, %bb.am
  %.sink = phi i32 [ %i.gr, %bb.am ], [ 1, %.lr.ph63 ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  store i32 %.sink, ptr %i.gs, align 4, !tbaa !395
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv72 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load i16, ptr %i.gu, align 4, !tbaa !404
  %i.gw = icmp eq i16 %i.gv, -1
  br i1 %i.gw, label %bb.an, label %.thread.1

bb.an:                                            ; preds = %.thread
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 26
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !396
  %.fr.1 = freeze i16 %i.gy
  %i.gz = icmp ne i16 %.fr.1, -1
  %i.ha = zext i1 %i.gz to i32
  br label %.thread.1

.thread.1:                                        ; preds = %bb.an, %.thread
  %.sink.1 = phi i32 [ %i.ha, %bb.an ], [ 1, %.thread ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 28
  store i32 %.sink.1, ptr %i.hb, align 4, !tbaa !395
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %niter9.next.1 = add i64 %niter9, 2             ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5ImGui36RenderColorRectWithAlphaCheckerboardEP10ImDrawList6ImVec2S2_jfS2_fi:bb.a

bb.i:                                             ; preds = %bb.h
  %i.at = fcmp ugt float %i.al, %i.e
  %i.au = or i32 %.1, 64
  %.2 = select i1 %i.at, i32 %.1, i32 %i.au       ; 2 uses
  %i.av = fcmp ult float %i.ao, %i.f
  br i1 %i.av, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = or i32 %.2, 128
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.3 = phi i32 [ %i.aw, %bb.j ], [ %.2, %bb.i ], [ %.1, %bb.h ] ; 2 uses
  %i.ax = icmp eq i32 %.3, 256
  %or.cond = select i1 %i.n, i1 true, i1 %i.ax
  %i.ay = and i32 %.3, %spec.store.select
  %i.az = select i1 %or.cond, i32 256, i32 %i.ay  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  store float %i.al, ptr %10, align 8, !tbaa !91
  store float %i.z, ptr %i.o, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  store float %i.ao, ptr %11, align 8, !tbaa !91
  store float %i.ac, ptr %i.p, align 4, !tbaa !92
  %i.ba = and i32 %i.az, 496
  %i.bb = icmp eq i32 %i.ba, 256
  %or.cond.i = or i1 %i.r, %i.bb
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef 6, i32 noundef 4)
  %i.bc = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.bd = load i64, ptr %i.bc, align 8            ; 4 uses
  %i.be = load i32, ptr %i.v, align 4, !tbaa !55
  %i.bf = trunc i32 %i.be to i16                  ; 5 uses
  %i.bg = load ptr, ptr %i.w, align 8, !tbaa !90  ; 6 uses
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !93
  %i.bh = add i16 %i.bf, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !93
  %i.bj = add i16 %i.bf, 2                        ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !93
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  store i16 %i.bf, ptr %i.bl, align 2, !tbaa !93
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i16 %i.bj, ptr %i.bm, align 2, !tbaa !93
  %i.bn = add i16 %i.bf, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !93
  %i.bp = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.bq = load i64, ptr %10, align 8
  store i64 %i.bq, ptr %i.bp, align 4
  %i.br = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.bd, ptr %i.bs, align 4
  %i.bt = load ptr, ptr %i.x, align 8, !tbaa !88  ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i32 %i.j, ptr %i.bu, align 4, !tbaa !95
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  store float %i.ao, ptr %i.bv, align 4
  %.sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store float %i.z, ptr %.sroa_idx21.i.i, align 4
  %i.bw = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  store i64 %i.bd, ptr %i.bx, align 4
  %i.by = load ptr, ptr %i.x, align 8, !tbaa !88  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 36
  store i32 %i.j, ptr %i.bz, align 4, !tbaa !95
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cb = load i64, ptr %11, align 8
  store i64 %i.cb, ptr %i.ca, align 4
  %i.cc = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  store i64 %i.bd, ptr %i.cd, align 4
  %i.ce = load ptr, ptr %i.x, align 8, !tbaa !88  ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  store i32 %i.j, ptr %i.cf, align 4, !tbaa !95
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 60
  store float %i.al, ptr %i.cg, align 4
  %.sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  store float %i.ac, ptr %.sroa_idx19.i.i, align 4
  %i.ch = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 68
  store i64 %i.bd, ptr %i.ci, align 4
  %i.cj = load i32, ptr %i.v, align 4, !tbaa !55
  %i.ck = add i32 %i.cj, 4
  store i32 %i.ck, ptr %i.v, align 4, !tbaa !55
  %i.cl = load <2 x ptr>, ptr %i.x, align 8, !tbaa !85
  %i.cm = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 76
  store i32 %i.j, ptr %i.cn, align 4, !tbaa !95
  %i.co = getelementptr inbounds nuw i8, <2 x ptr> %i.cl, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.co, ptr %i.x, align 8, !tbaa !85
  br label %_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi.exit

bb.m:                                             ; preds = %bb.k
  call void @_ZN10ImDrawList8PathRectERK6ImVec2S2_fi(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull readonly align 4 dereferenceable(8) %10, ptr noundef nonnull readonly align 4 dereferenceable(8) %11, float noundef %6, i32 noundef %i.az)
  %i.cp = load ptr, ptr %i.t, align 8, !tbaa !115
  %i.cq = load i32, ptr %i.s, align 8, !tbaa !114
  tail call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.cp, i32 noundef %i.cq, i32 noundef %i.j)
  store i32 0, ptr %i.s, align 8, !tbaa !114
  br label %_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi.exit

_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi.exit
  %i.cr = tail call float @llvm.fmuladd.f32(float %4, float 2.000000e+00, float %.05363) ; 2 uses
  %i.cs = fcmp olt float %i.cr, %i.f
  br i1 %i.cs, label %bb.d, label %.loopexit, !llvm.loop !569

.loopexit:                                        ; preds = %bb.n, %bb.c, %.lr.ph66.split
  %i.ct = add nuw nsw i32 %.05564, 1
  br i1 %i.ab, label %.lr.ph66.split, label %.loopexit62, !llvm.loop !570

bb.o:                                             ; preds = %bb.a
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef %3, float noundef %6, i32 noundef %spec.store.select)
  br label %.loopexit62

.loopexit62:                                      ; preds = %.loopexit, %.lr.ph66, %bb.b, %bb.o
  ret void
}

declare noundef i32 @_ZN5ImGui11GetColorU32Ej(i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z18ImAlphaBlendColorsjj(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float>) #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @_ZL20stbtt_FindGlyphIndexPK14stbtt_fontinfoi(ptr nofree readonly %.8.val, i32 %.52.val, i32 noundef %0) unnamed_addr #33 {
bb.a:
  %i.a = zext i32 %.52.val to i64                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.a ; 21 uses
  %.val164 = load i8, ptr %i.b, align 1, !tbaa !22
  %i.c = getelementptr i8, ptr %i.b, i64 1
  %.val165 = load i8, ptr %i.c, align 1, !tbaa !22
  %i.d = zext i8 %.val164 to i16
  %i.e = shl nuw i16 %i.d, 8
  %i.f = zext i8 %.val165 to i16
  %i.g = or disjoint i16 %i.e, %i.f               ; 3 uses
  switch i16 %i.g, label %bb.m [
    i16 0, label %bb.b
    i16 6, label %bb.d
    i16 2, label %.loopexit
    i16 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.val162 = load i8, ptr %i.h, align 1, !tbaa !22
  %i.i = getelementptr i8, ptr %i.b, i64 3
  %.val163 = load i8, ptr %i.i, align 1, !tbaa !22
  %i.j = zext i8 %.val162 to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = zext i8 %.val163 to i32
  %i.m = or disjoint i32 %i.k, %i.l
  %i.n = add nsw i32 %i.m, -6
  %i.o = icmp slt i32 %0, %i.n
  br i1 %i.o, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.q = sext i32 %0 to i64
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !22
  %i.t = zext i8 %i.s to i32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.val160 = load i8, ptr %i.u, align 1, !tbaa !22
  %i.v = getelementptr i8, ptr %i.b, i64 7
  %.val161 = load i8, ptr %i.v, align 1, !tbaa !22
  %i.w = zext i8 %.val160 to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = zext i8 %.val161 to i32
  %i.z = or disjoint i32 %i.x, %i.y               ; 3 uses
  %.not138 = icmp ult i32 %0, %i.z
  br i1 %.not138, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val158 = load i8, ptr %i.aa, align 1, !tbaa !22
  %i.ab = zext i8 %.val158 to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = getelementptr i8, ptr %i.b, i64 9
  %.val159 = load i8, ptr %i.ad, align 1, !tbaa !22
  %i.ae = zext i8 %.val159 to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = add nuw nsw i32 %i.af, %i.z
  %i.ah = icmp ult i32 %0, %i.ag
  br i1 %i.ah, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.aj = sub nuw nsw i32 %0, %i.z
  %i.ak = shl nuw nsw i32 %i.aj, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 2 uses
  %.val156 = load i8, ptr %i.am, align 1, !tbaa !22
  %i.an = getelementptr i8, ptr %i.am, i64 1
  %.val157 = load i8, ptr %i.an, align 1, !tbaa !22
  %i.ao = zext i8 %.val156 to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = zext i8 %.val157 to i32
  %i.ar = or disjoint i32 %i.ap, %i.aq
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.val154 = load i8, ptr %i.as, align 1, !tbaa !22
  %i.at = getelementptr i8, ptr %i.b, i64 7
  %.val155 = load i8, ptr %i.at, align 1, !tbaa !22
  %i.au = zext i8 %.val154 to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = zext i8 %.val155 to i32
  %i.ax = or disjoint i32 %i.av, %i.aw            ; 2 uses
  %i.ay = lshr i32 %i.ax, 1                       ; 2 uses
  %i.az = icmp sgt i32 %0, 65535
  br i1 %i.az, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = add i32 %.52.val, 14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.val148 = load i8, ptr %i.bb, align 1, !tbaa !22
  %i.bc = zext i8 %.val148 to i16
  %i.bd = shl nuw i16 %i.bc, 8
  %i.be = getelementptr i8, ptr %i.b, i64 13
  %.val149 = load i8, ptr %i.be, align 1, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.val150 = load i8, ptr %i.bf, align 1, !tbaa !22
  %i.bg = zext i8 %.val150 to i16
  %i.bh = shl nuw i16 %i.bg, 8                    ; 2 uses
  %i.bi = getelementptr i8, ptr %i.b, i64 11
  %.val151 = load i8, ptr %i.bi, align 1, !tbaa !22
  %i.bj = zext i8 %.val151 to i16                 ; 3 uses
  %i.bk = or disjoint i16 %i.bh, %i.bj            ; 3 uses
  %i.bl = and i8 %.val149, -2
  %.masked = zext i8 %i.bl to i16
  %i.bm = or disjoint i16 %i.bd, %.masked         ; 2 uses
  %i.bn = zext i32 %i.ba to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.bn
  %i.bp = zext i16 %i.bm to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp ; 2 uses
  %.val146 = load i8, ptr %i.bq, align 1, !tbaa !22
  %i.br = getelementptr i8, ptr %i.bq, i64 1
  %.val147 = load i8, ptr %i.br, align 1, !tbaa !22
  %i.bs = zext i8 %.val146 to i32
  %i.bt = shl nuw nsw i32 %i.bs, 8
  %i.bu = zext i8 %.val147 to i32
  %i.bv = or disjoint i32 %i.bt, %i.bu
  %.not = icmp slt i32 %0, %i.bv
  %i.bw = zext i16 %i.bm to i32
  %i.bx = select i1 %.not, i32 0, i32 %i.bw
  %.0118 = add i32 %.52.val, 12
  %i.by = add i32 %.0118, %i.bx                   ; 4 uses
  %.not1377 = icmp eq i16 %i.bk, 0
  br i1 %.not1377, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val152 = load i8, ptr %i.bz, align 1, !tbaa !22
  %i.ca = zext i8 %.val152 to i16
  %i.cb = shl nuw i16 %i.ca, 8
  %i.cc = getelementptr i8, ptr %i.b, i64 9
  %.val153 = load i8, ptr %i.cc, align 1, !tbaa !22
  %i.cd = zext i8 %.val153 to i16
  %i.ce = or disjoint i16 %i.cb, %i.cd            ; 2 uses
  %i.cf = or disjoint i16 %i.bh, %i.bj
  %xtraiter = and i16 %i.bj, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.0122.prol = lshr i16 %i.ce, 1                 ; 2 uses
  %i.cg = zext i32 %i.by to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cg
  %i.ci = and i16 %.0122.prol, 32766              ; 2 uses
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cj ; 2 uses
  %.val144.prol = load i8, ptr %i.ck, align 1, !tbaa !22
  %i.cl = getelementptr i8, ptr %i.ck, i64 1
  %.val145.prol = load i8, ptr %i.cl, align 1, !tbaa !22
  %i.cm = zext i8 %.val144.prol to i32
  %i.cn = shl nuw nsw i32 %i.cm, 8
  %i.co = zext i8 %.val145.prol to i32
  %i.cp = or disjoint i32 %i.cn, %i.co
  %i.cq = icmp sgt i32 %0, %i.cp
  %i.cr = zext nneg i16 %i.ci to i32
  %i.cs = select i1 %i.cq, i32 %i.cr, i32 0
  %.2120.prol = add i32 %i.cs, %i.by              ; 2 uses
  %i.ct = add nsw i16 %i.bk, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2120.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2120.prol, %.lr.ph.prol ]
  %.111910.unr = phi i32 [ %i.by, %.lr.ph.preheader ], [ %.2120.prol, %.lr.ph.prol ]
  %.01219.unr = phi i16 [ %i.bk, %.lr.ph.preheader ], [ %i.ct, %.lr.ph.prol ]
  %.0122.in8.unr = phi i16 [ %i.ce, %.lr.ph.preheader ], [ %.0122.prol, %.lr.ph.prol ]
  %i.cu = icmp eq i16 %i.cf, 1
  br i1 %i.cu, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.111910 = phi i32 [ %.2120.1, %.lr.ph ], [ %.111910.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.01219 = phi i16 [ %i.dv, %.lr.ph ], [ %.01219.unr, %.lr.ph.prol.loopexit ]
  %.0122.in8 = phi i16 [ %.0122.1, %.lr.ph ], [ %.0122.in8.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0122 = lshr i16 %.0122.in8, 1
  %i.cv = zext i32 %.111910 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cv
  %i.cx = and i16 %.0122, 32766                   ; 2 uses
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cy ; 2 uses
  %.val144 = load i8, ptr %i.cz, align 1, !tbaa !22
  %i.da = getelementptr i8, ptr %i.cz, i64 1
  %.val145 = load i8, ptr %i.da, align 1, !tbaa !22
  %i.db = zext i8 %.val144 to i32
  %i.dc = shl nuw nsw i32 %i.db, 8
  %i.dd = zext i8 %.val145 to i32
  %i.de = or disjoint i32 %i.dc, %i.dd
  %i.df = icmp sgt i32 %0, %i.de
  %i.dg = zext nneg i16 %i.cx to i32
  %i.dh = select i1 %i.df, i32 %i.dg, i32 0
  %.2120 = add i32 %i.dh, %.111910                ; 2 uses
  %.0122.1 = lshr i16 %.0122.in8, 2               ; 2 uses
  %i.di = zext i32 %.2120 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.di
  %i.dk = and i16 %.0122.1, 16382                 ; 2 uses
  %i.dl = zext nneg i16 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dl ; 2 uses
  %.val144.1 = load i8, ptr %i.dm, align 1, !tbaa !22
  %i.dn = getelementptr i8, ptr %i.dm, i64 1
  %.val145.1 = load i8, ptr %i.dn, align 1, !tbaa !22
  %i.do = zext i8 %.val144.1 to i32
  %i.dp = shl nuw nsw i32 %i.do, 8
  %i.dq = zext i8 %.val145.1 to i32
  %i.dr = or disjoint i32 %i.dp, %i.dq
  %i.ds = icmp sgt i32 %0, %i.dr
  %i.dt = zext nneg i16 %i.dk to i32
  %i.du = select i1 %i.ds, i32 %i.dt, i32 0
  %.2120.1 = add i32 %i.du, %.2120                ; 2 uses
  %i.dv = add i16 %.01219, -2                     ; 2 uses
  %.not137.1 = icmp eq i16 %i.dv, 0
  br i1 %.not137.1, label %._crit_edge, label %.lr.ph, !llvm.loop !571

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.h
  %.1119.lcssa = phi i32 [ %i.by, %bb.h ], [ %.2120.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2120.1, %.lr.ph ]
  %reass.sub = sub i32 %.1119.lcssa, %.52.val
  %i.dw = add i32 %reass.sub, 131060
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 3 uses
  %i.dy = and i32 %i.ax, 65534
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  %i.ec = and i32 %i.dw, 131070
  %i.ed = zext nneg i32 %i.ec to i64              ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed ; 2 uses
  %.val142 = load i8, ptr %i.ee, align 1, !tbaa !22
  %i.ef = getelementptr i8, ptr %i.ee, i64 1
  %.val143 = load i8, ptr %i.ef, align 1, !tbaa !22
  %i.eg = zext i8 %.val142 to i32
  %i.eh = shl nuw nsw i32 %i.eg, 8
  %i.ei = zext i8 %.val143 to i32
  %i.ej = or disjoint i32 %i.eh, %i.ei            ; 2 uses
  %i.ek = icmp slt i32 %0, %i.ej
  br i1 %i.ek, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.el = mul nuw nsw i32 %i.ay, 6
  %i.em = zext nneg i32 %i.el to i64              ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ed ; 2 uses
  %.val140 = load i8, ptr %i.ep, align 1, !tbaa !22
  %i.eq = getelementptr i8, ptr %i.ep, i64 1
  %.val141 = load i8, ptr %i.eq, align 1, !tbaa !22
  %i.er = zext i8 %.val140 to i16
  %i.es = shl nuw i16 %i.er, 8
  %i.et = zext i8 %.val141 to i16
  %i.eu = or disjoint i16 %i.es, %i.et            ; 2 uses
  %i.ev = icmp eq i16 %i.eu, 0
  br i1 %i.ev, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ew = shl nuw nsw i32 %i.ay, 2
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ed ; 2 uses
  %.val166 = load i8, ptr %i.fa, align 1, !tbaa !22
  %i.fb = getelementptr i8, ptr %i.fa, i64 1
  %.val167 = load i8, ptr %i.fb, align 1, !tbaa !22
  %i.fc = zext i8 %.val166 to i32
  %i.fd = shl nuw nsw i32 %i.fc, 8
  %i.fe = zext i8 %.val167 to i32
  %i.ff = or disjoint i32 %i.fd, %i.fe
  %i.fg = add nuw nsw i32 %i.ff, %0
  br label %bb.l

end_hunk_2
