Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 354
begin_hunk_0_@_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij:bb.a
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !240
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i16 %i.fs, ptr %i.fv, align 2, !tbaa !240
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 6 ; 2 uses
  %i.fx = add nuw nsw i32 %.0144.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter187
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa191, label %bb.n, !llvm.loop !259

.epilog-lcssa191:                                 ; preds = %bb.n, %.unr-lcssa185
  %.lcssa = phi ptr [ %i.gy, %.unr-lcssa185 ], [ %i.fw, %bb.n ]
  store ptr %.lcssa, ptr %i.ew, align 8, !tbaa !105
  %i.fy = and i32 %2, 65535
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ga = add i32 %i.eu, %i.fy
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !75
  br label %bb.p

bb.o:                                             ; preds = %bb.o, %.lr.ph145.new
  %i.gb = phi ptr [ %.promoted147, %.lr.ph145.new ], [ %i.gy, %bb.o ] ; 13 uses
  %.0144 = phi i32 [ 2, %.lr.ph145.new ], [ %i.gz, %bb.o ] ; 5 uses
  %niter195 = phi i32 [ 0, %.lr.ph145.new ], [ %niter195.next.3, %bb.o ]
  store i16 %i.ev, ptr %i.gb, align 2, !tbaa !240
  %i.gc = add i32 %i.eu, %.0144
  %i.gd = trunc i32 %i.gc to i16                  ; 2 uses
  %i.ge = add i16 %i.gd, -1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 2
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !240
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store i16 %i.gd, ptr %i.gg, align 2, !tbaa !240
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 6
  %i.gi = or disjoint i32 %.0144, 1
  store i16 %i.ev, ptr %i.gh, align 2, !tbaa !240
  %i.gj = add i32 %i.eu, %i.gi
  %i.gk = trunc i32 %i.gj to i16                  ; 2 uses
  %i.gl = add i16 %i.gk, -1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !240
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gb, i64 10
  store i16 %i.gk, ptr %i.gn, align 2, !tbaa !240
  %i.go = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  store i16 %i.ev, ptr %i.go, align 2, !tbaa !240
  %.reass = add i32 %.0144, %invariant.op
  %i.gp = trunc i32 %.reass to i16                ; 2 uses
  %i.gq = add i16 %i.gp, -1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 14
  store i16 %i.gq, ptr %i.gr, align 2, !tbaa !240
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i16 %i.gp, ptr %i.gs, align 2, !tbaa !240
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gb, i64 18
  store i16 %i.ev, ptr %i.gt, align 2, !tbaa !240
  %.reass203 = add i32 %.0144, %invariant.op202
  %i.gu = trunc i32 %.reass203 to i16             ; 2 uses
  %i.gv = add i16 %i.gu, -1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  store i16 %i.gv, ptr %i.gw, align 2, !tbaa !240
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gb, i64 22
  store i16 %i.gu, ptr %i.gx, align 2, !tbaa !240
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gb, i64 24 ; 3 uses
  %i.gz = add nuw nsw i32 %.0144, 4               ; 2 uses
  %niter195.next.3 = add i32 %niter195, 4         ; 2 uses
  %niter195.ncmp.3 = icmp eq i32 %niter195.next.3, %unroll_iter194
  br i1 %niter195.ncmp.3, label %.unr-lcssa185, label %bb.o, !llvm.loop !260

bb.p:                                             ; preds = %._crit_edge140, %.epilog-lcssa191, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = fcmp olt float %2, 5.000000e-01
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !83   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !82
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !28
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
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  %i.q = load i32, ptr %i.b, align 8, !tbaa !83
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.n, ptr nonnull align 4 %i.p, i64 %i.s, i1 false)
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !28
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.t)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  store ptr %i.n, ptr %i.o, align 8, !tbaa !28
  store i32 %i.k, ptr %i.d, align 4, !tbaa !82
  %.pre3.i = load i32, ptr %i.b, align 8, !tbaa !83
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i, %bb.f
  %i.u = phi i32 [ %i.c, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.f ]
  %i.v = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %i.n, %bb.f ]
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %1, align 4
  store i64 %i.y, ptr %i.x, align 4
  %i.z = load i32, ptr %i.b, align 8, !tbaa !83
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !83
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %i.ab = icmp slt i32 %5, 1
  br i1 %i.ab, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ac = fadd float %2, 9.990000e-01
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  %or.cond.i = icmp ult i32 %i.ad, 64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 500
  %i.ah = zext nneg i32 %i.ad to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !31
  %i.ak = zext i8 %i.aj to i32
  br label %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit

bb.j:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.am = load float, ptr %i.al, align 4, !tbaa !30 ; 2 uses
  %i.an = fcmp olt float %i.am, %2
  %i.ao = select i1 %i.an, float %i.am, float %2
  %i.ap = fdiv float %i.ao, %2
  %i.aq = fsub float 1.000000e+00, %i.ap
  %i.ar = tail call float @acosf(float noundef %i.aq) #38
  %i.as = fdiv float f0x40490FDB, %i.ar
  %i.at = tail call float @llvm.ceil.f32(float %i.as)
  %i.au = fptosi float %i.at to i32
  %i.av = add nsw i32 %i.au, 1
  %i.aw = sdiv i32 %i.av, 2
  %i.ax = shl nsw i32 %i.aw, 1
  %i.ay = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 4)
  %i.az = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 512)
  br label %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit

_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit: ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.ak, %bb.i ], [ %i.az, %bb.j ]
  %.rhs.trunc = trunc nuw nsw i32 %.0.i to i16
  %i.ba = udiv i16 48, %.rhs.trunc
  %.zext = zext nneg i16 %i.ba to i32
  br label %bb.k

bb.k:                                             ; preds = %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit, %bb.g
  %.0 = phi i32 [ %.zext, %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit ], [ %5, %bb.g ] ; 2 uses
  %i.bb = icmp eq i32 %.0, 0
  %i.bc = tail call i32 @llvm.umin.i32(i32 %.0, i32 12) ; 2 uses
  %i.bd = select i1 %i.bb, i32 1, i32 %i.bc       ; 9 uses
  %i.be = sub nsw i32 %4, %3
  %i.bf = tail call noundef i32 @llvm.abs.i32(i32 %i.be, i1 true) ; 3 uses
  %i.bg = add nuw nsw i32 %i.bf, 1
  %i.bh = icmp samesign ugt i32 %i.bd, 1
  br i1 %i.bh, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bi = udiv i32 %i.bf, %i.bd                   ; 2 uses
  %i.bj = add nuw nsw i32 %i.bi, 1
  %i.bk = urem i32 %i.bf, %i.bd                   ; 2 uses
  %.not121 = icmp eq i32 %i.bk, 0
  br i1 %.not121, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = add nuw nsw i32 %i.bi, 2
  %i.bm = sub nsw i32 %i.bd, %i.bk
  %.neg.lhs.trunc = trunc nsw i32 %i.bm to i8
  %.neg120 = sdiv i8 %.neg.lhs.trunc, -2
  %.neg.sext = sext i8 %.neg120 to i32
  %i.bn = add nsw i32 %i.bd, %.neg.sext
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.188 = phi i1 [ false, %bb.k ], [ false, %bb.l ], [ true, %bb.m ]
  %.185 = phi i32 [ %i.bg, %bb.k ], [ %i.bj, %bb.l ], [ %i.bl, %bb.m ]
  %.2 = phi i32 [ 1, %bb.k ], [ %i.bc, %bb.l ], [ %i.bn, %bb.m ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !261 ; 2 uses
  %i.bq = add nsw i32 %i.bp, %.185                ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !82 ; 4 uses
  %i.bt = icmp sgt i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.o, label %._ZN8ImVectorI6ImVec2E6resizeEi.exit_crit_edge

._ZN8ImVectorI6ImVec2E6resizeEi.exit_crit_edge:   ; preds = %bb.n
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !262
  br label %_ZN8ImVectorI6ImVec2E6resizeEi.exit

bb.o:                                             ; preds = %bb.n
  %.not.i.i117 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i117, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i118, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = sdiv i32 %i.bs, 2
  %i.bv = add nsw i32 %i.bu, %i.bs
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i118

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i118: ; preds = %bb.p, %bb.o
  %i.bw = phi i32 [ %i.bv, %bb.p ], [ 8, %bb.o ]
  %i.bx = tail call noundef i32 @llvm.smax.i32(i32 %i.bw, i32 %i.bq) ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 3
  %i.ca = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bz) ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !28 ; 2 uses
  %.not6.i.i119 = icmp eq ptr %i.cc, null
  br i1 %.not6.i.i119, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i118
  %i.cd = load i32, ptr %i.bo, align 8, !tbaa !83
  %i.ce = sext i32 %i.cd to i64
  %i.cf = shl nsw i64 %i.ce, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ca, ptr nonnull align 4 %i.cc, i64 %i.cf, i1 false)
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !28
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.cg)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i118
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !28
  store i32 %i.bx, ptr %i.br, align 4, !tbaa !82
  br label %_ZN8ImVectorI6ImVec2E6resizeEi.exit

_ZN8ImVectorI6ImVec2E6resizeEi.exit:              ; preds = %._ZN8ImVectorI6ImVec2E6resizeEi.exit_crit_edge, %bb.r
  %i.ch = phi ptr [ %.pre, %._ZN8ImVectorI6ImVec2E6resizeEi.exit_crit_edge ], [ %i.ca, %bb.r ]
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !83
  %i.ci = sext i32 %i.bp to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.ci ; 3 uses
  %or.cond = icmp ugt i32 %3, 47
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN8ImVectorI6ImVec2E6resizeEi.exit
  %i.ck = srem i32 %3, 48                         ; 3 uses
  %i.cl = icmp slt i32 %i.ck, 0
  %i.cm = add nsw i32 %i.ck, 48
  %spec.select = select i1 %i.cl, i32 %i.cm, i32 %i.ck
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN8ImVectorI6ImVec2E6resizeEi.exit
  %.090 = phi i32 [ %3, %_ZN8ImVectorI6ImVec2E6resizeEi.exit ], [ %spec.select, %bb.s ] ; 4 uses
  %.not = icmp slt i32 %4, %3
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !35 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 112 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cr = load float, ptr %1, align 4, !tbaa !234 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  br i1 %.not, label %.preheader, label %.preheader122

.preheader122:                                    ; preds = %bb.t
  %i.ct = sext i32 %.090 to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.ct
  %i.cv = load float, ptr %i.cq, align 4, !tbaa !235
  %i.cw = load <2 x float>, ptr %i.cu, align 8, !tbaa !8
  %i.cx = insertelement <2 x float> poison, float %2, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cz = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cv, i64 1
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.cy, <2 x float> %i.da)
  store <2 x float> %i.db, ptr %i.cj, align 4, !tbaa !8
  %i.dc = add nsw i32 %.2, %3                     ; 2 uses
  %.not113.peel = icmp sgt i32 %i.dc, %4
  br i1 %.not113.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %.preheader122
  %i.dd = add nsw i32 %.090, %.2
  br label %bb.u

.preheader:                                       ; preds = %bb.t
  %i.de = zext nneg i32 %.090 to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.de
  %i.dg = load float, ptr %i.cq, align 4, !tbaa !235
  %i.dh = load <2 x float>, ptr %i.df, align 8, !tbaa !8
  %i.di = insertelement <2 x float> poison, float %2, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dk = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.dg, i64 1
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.dj, <2 x float> %i.dl)
  store <2 x float> %i.dm, ptr %i.cj, align 4, !tbaa !8
  %i.dn = sub nsw i32 %3, %.2                     ; 2 uses
  %.not112.peel = icmp slt i32 %i.dn, %4
  br i1 %.not112.peel, label %.loopexit, label %.peel.next136

.peel.next136:                                    ; preds = %.preheader
  %i.do = sub nsw i32 %.090, %.2
  br label %bb.v

bb.u:                                             ; preds = %.peel.next, %bb.u
  %.089126 = phi i32 [ %i.dc, %.peel.next ], [ %i.dx, %bb.u ]
  %.191125 = phi i32 [ %i.dd, %.peel.next ], [ %i.dy, %bb.u ] ; 3 uses
  %.095124 = phi ptr [ %i.cs, %.peel.next ], [ %i.dw, %bb.u ] ; 2 uses
  %i.dp = icmp sgt i32 %.191125, 47
  %i.dq = add nsw i32 %.191125, -48
  %spec.select114 = select i1 %i.dp, i32 %i.dq, i32 %.191125 ; 2 uses
  %i.dr = sext i32 %spec.select114 to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.dr
  %i.dt = load <2 x float>, ptr %i.ds, align 8, !tbaa !8
  %i.du = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.cy, <2 x float> %i.du)
  store <2 x float> %i.dv, ptr %.095124, align 4, !tbaa !8
  %i.dw = getelementptr inbounds nuw i8, ptr %.095124, i64 8 ; 2 uses
  %i.dx = add nsw i32 %i.bd, %.089126             ; 2 uses
  %i.dy = add nsw i32 %spec.select114, %i.bd
  %.not113 = icmp sgt i32 %i.dx, %4
  br i1 %.not113, label %.loopexit, label %bb.u, !llvm.loop !263

bb.v:                                             ; preds = %.peel.next136, %bb.v
  %.086130 = phi i32 [ %i.dn, %.peel.next136 ], [ %i.eh, %bb.v ]
  %.393129 = phi i32 [ %i.do, %.peel.next136 ], [ %i.ei, %bb.v ] ; 3 uses
  %.196128 = phi ptr [ %i.cs, %.peel.next136 ], [ %i.eg, %bb.v ] ; 2 uses
  %i.dz = icmp slt i32 %.393129, 0
  %i.ea = add nsw i32 %.393129, 48
  %spec.select115 = select i1 %i.dz, i32 %i.ea, i32 %.393129 ; 2 uses
  %i.eb = sext i32 %spec.select115 to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.eb
  %i.ed = load <2 x float>, ptr %i.ec, align 8, !tbaa !8
  %i.ee = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.dj, <2 x float> %i.ee)
  store <2 x float> %i.ef, ptr %.196128, align 4, !tbaa !8
  %i.eg = getelementptr inbounds nuw i8, ptr %.196128, i64 8 ; 2 uses
  %i.eh = sub nsw i32 %.086130, %i.bd             ; 2 uses
  %i.ei = sub nsw i32 %spec.select115, %i.bd
  %.not112 = icmp slt i32 %i.eh, %4
  br i1 %.not112, label %.loopexit, label %bb.v, !llvm.loop !264

.loopexit:                                        ; preds = %bb.u, %bb.v, %.preheader122, %.preheader
  %.297 = phi ptr [ %i.eg, %bb.v ], [ %i.cs, %.preheader ], [ %i.cs, %.preheader122 ], [ %i.dw, %bb.u ]
  br i1 %.188, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.ej = srem i32 %4, 48                         ; 3 uses
  %i.ek = icmp slt i32 %i.ej, 0
  %i.el = add nsw i32 %i.ej, 48
  %spec.select116 = select i1 %i.ek, i32 %i.el, i32 %i.ej
  %i.em = getelementptr inbounds nuw i8, ptr %i.co, i64 112
  %i.en = zext nneg i32 %spec.select116 to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.en
  %i.ep = load <2 x float>, ptr %i.eo, align 8, !tbaa !8
  %i.eq = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.er = insertelement <2 x float> poison, float %2, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.es, <2 x float> %i.eq)
  store <2 x float> %i.et, ptr %.297, align 4, !tbaa !8
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.w, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList11_PathArcToNERK6ImVec2fffi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = fcmp olt float %2, 5.000000e-01
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 11 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !83   ; 7 uses
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !82
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !28
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

end_hunk_0
begin_hunk_1_@_ZL14stbtt__cff_intP10stbtt__buf:bb.a
  %.0.i23 = phi i32 [ %i.t, %bb.e ], [ %i.n, %bb.d ]
  %i.u = add nuw nsw i32 %.0.i23, 108
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit

bb.f:                                             ; preds = %bb.c
  %or.cond5 = icmp slt i8 %i.i, -1
  br i1 %or.cond5, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = shl nuw nsw i32 %i.j, 8                  ; 2 uses
  %.not.i25 = icmp slt i32 %i.f, %i.d
  br i1 %.not.i25, label %bb.h, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit27

bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.b, 2
  store i32 %i.w, ptr %i.a, align 8, !tbaa !710
  %i.x = sext i32 %i.f to i64
  %i.y = getelementptr inbounds i8, ptr %i.e, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !31
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.v, %i.aa
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit27

_ZL15stbtt__buf_get8P10stbtt__buf.exit27:         ; preds = %bb.g, %bb.h
  %.0.i26 = phi i32 [ %i.ab, %bb.h ], [ %i.v, %bb.g ]
  %i.ac = sub nsw i32 64148, %.0.i26
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit

bb.i:                                             ; preds = %bb.f
  switch i8 %i.i, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit [
    i8 28, label %bb.j
    i8 29, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %.not.i.i = icmp slt i32 %i.f, %i.d
  br i1 %.not.i.i, label %bb.k, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ad = add nsw i32 %i.b, 2                     ; 2 uses
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !710
  %i.ae = sext i32 %i.f to i64
  %i.af = getelementptr inbounds i8, ptr %i.e, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !31
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i:         ; preds = %bb.k, %bb.j
  %i.aj = phi i32 [ %i.ad, %bb.k ], [ %i.f, %bb.j ] ; 3 uses
  %.0.i.i = phi i32 [ %i.ai, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.not.i.i.1 = icmp slt i32 %i.aj, %i.d
  br i1 %.not.i.i.1, label %bb.l, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit

bb.l:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.a, align 8, !tbaa !710
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds i8, ptr %i.e, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !31
  %i.ao = zext i8 %i.an to i32
  %i.ap = or disjoint i32 %.0.i.i, %i.ao
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit

bb.m:                                             ; preds = %bb.i
  %.not.i.i31 = icmp slt i32 %i.f, %i.d
  br i1 %.not.i.i31, label %bb.n, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32

bb.n:                                             ; preds = %bb.m
  %i.aq = add nsw i32 %i.b, 2                     ; 2 uses
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !710
  %i.ar = sext i32 %i.f to i64
  %i.as = getelementptr inbounds i8, ptr %i.e, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !31
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32:       ; preds = %bb.n, %bb.m
  %i.aw = phi i32 [ %i.aq, %bb.n ], [ %i.f, %bb.m ] ; 4 uses
  %.0.i.i33 = phi i32 [ %i.av, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.not.i.i31.1 = icmp slt i32 %i.aw, %i.d
  br i1 %.not.i.i31.1, label %bb.o, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.1

bb.o:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32
  %i.ax = add nsw i32 %i.aw, 1                    ; 2 uses
  store i32 %i.ax, ptr %i.a, align 8, !tbaa !710
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds i8, ptr %i.e, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !31
  %i.bb = zext i8 %i.ba to i32
  %i.bc = or disjoint i32 %.0.i.i33, %i.bb
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.1:     ; preds = %bb.o, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32
  %i.bd = phi i32 [ %i.ax, %bb.o ], [ %i.aw, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32 ] ; 4 uses
  %.0.i.i33.1 = phi i32 [ %i.bc, %bb.o ], [ %.0.i.i33, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32 ]
  %i.be = shl nuw nsw i32 %.0.i.i33.1, 8          ; 2 uses
  %.not.i.i31.2 = icmp slt i32 %i.bd, %i.d
  br i1 %.not.i.i31.2, label %bb.p, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.2

bb.p:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.1
  %i.bf = add nsw i32 %i.bd, 1                    ; 2 uses
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !710
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds i8, ptr %i.e, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !31
  %i.bj = zext i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.be, %i.bj
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.2

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.2:     ; preds = %bb.p, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.1
  %i.bl = phi i32 [ %i.bf, %bb.p ], [ %i.bd, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.1 ] ; 3 uses
  %.0.i.i33.2 = phi i32 [ %i.bk, %bb.p ], [ %i.be, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.1 ]
  %i.bm = shl nuw i32 %.0.i.i33.2, 8              ; 2 uses
  %.not.i.i31.3 = icmp slt i32 %i.bl, %i.d
  br i1 %.not.i.i31.3, label %bb.q, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit

bb.q:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.2
  %i.bn = add nsw i32 %i.bl, 1
  store i32 %i.bn, ptr %i.a, align 8, !tbaa !710
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds i8, ptr %i.e, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !31
  %i.br = zext i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bm, %i.br
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit

_ZL14stbtt__buf_getP10stbtt__bufi.exit:           ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.2, %bb.q, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i, %bb.l, %bb.a, %bb.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit27, %_ZL15stbtt__buf_get8P10stbtt__buf.exit24, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ %i.u, %_ZL15stbtt__buf_get8P10stbtt__buf.exit24 ], [ %i.ac, %_ZL15stbtt__buf_get8P10stbtt__buf.exit27 ], [ %.0.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i ], [ 0, %bb.a ], [ 0, %bb.i ], [ %i.ap, %bb.l ], [ %i.bs, %bb.q ], [ %i.bm, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.2 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @_ZL20stbtt_FindGlyphIndexPK14stbtt_fontinfoi(ptr nofree readonly %.8.val, i32 %.56.val, i32 noundef range(i32 0, 65536) %0) unnamed_addr #32 {
bb.a:
  %i.a = zext i32 %.56.val to i64                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.a ; 21 uses
  %.val173 = load i8, ptr %i.b, align 1, !tbaa !31
  %i.c = getelementptr i8, ptr %i.b, i64 1
  %.val174 = load i8, ptr %i.c, align 1, !tbaa !31
  %i.d = zext i8 %.val173 to i16
  %i.e = shl nuw i16 %i.d, 8
  %i.f = zext i8 %.val174 to i16
  %i.g = or disjoint i16 %i.e, %i.f               ; 3 uses
  switch i16 %i.g, label %bb.l [
    i16 0, label %bb.b
    i16 6, label %bb.d
    i16 2, label %.loopexit
    i16 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.val171 = load i8, ptr %i.h, align 1, !tbaa !31
  %i.i = getelementptr i8, ptr %i.b, i64 3
  %.val172 = load i8, ptr %i.i, align 1, !tbaa !31
  %i.j = zext i8 %.val171 to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = zext i8 %.val172 to i32
  %i.m = or disjoint i32 %i.k, %i.l
  %i.n = add nsw i32 %i.m, -6
  %i.o = icmp slt i32 %0, %i.n
  br i1 %i.o, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.q = zext nneg i32 %0 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !31
  %i.t = zext i8 %i.s to i32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.val169 = load i8, ptr %i.u, align 1, !tbaa !31
  %i.v = getelementptr i8, ptr %i.b, i64 7
  %.val170 = load i8, ptr %i.v, align 1, !tbaa !31
  %i.w = zext i8 %.val169 to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = zext i8 %.val170 to i32
  %i.z = or disjoint i32 %i.x, %i.y               ; 3 uses
  %.not143 = icmp samesign ult i32 %0, %i.z
  br i1 %.not143, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val167 = load i8, ptr %i.aa, align 1, !tbaa !31
  %i.ab = zext i8 %.val167 to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = getelementptr i8, ptr %i.b, i64 9
  %.val168 = load i8, ptr %i.ad, align 1, !tbaa !31
  %i.ae = zext i8 %.val168 to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = add nuw nsw i32 %i.af, %i.z
  %i.ah = icmp samesign ult i32 %0, %i.ag
  br i1 %i.ah, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.aj = sub nsw i32 %0, %i.z
  %i.ak = shl nsw i32 %i.aj, 1
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 2 uses
  %.val165 = load i8, ptr %i.am, align 1, !tbaa !31
  %i.an = getelementptr i8, ptr %i.am, i64 1
  %.val166 = load i8, ptr %i.an, align 1, !tbaa !31
  %i.ao = zext i8 %.val165 to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = zext i8 %.val166 to i32
  %i.ar = or disjoint i32 %i.ap, %i.aq
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.val163 = load i8, ptr %i.as, align 1, !tbaa !31
  %i.at = getelementptr i8, ptr %i.b, i64 7
  %.val164 = load i8, ptr %i.at, align 1, !tbaa !31
  %i.au = zext i8 %.val163 to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = zext i8 %.val164 to i32
  %i.ax = or disjoint i32 %i.av, %i.aw            ; 2 uses
  %i.ay = lshr i32 %i.ax, 1                       ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.val159 = load i8, ptr %i.az, align 1, !tbaa !31
  %i.ba = getelementptr i8, ptr %i.b, i64 11
  %.val160 = load i8, ptr %i.ba, align 1, !tbaa !31
  %i.bb = zext i8 %.val159 to i16
  %i.bc = shl nuw i16 %i.bb, 8                    ; 2 uses
  %i.bd = zext i8 %.val160 to i16                 ; 3 uses
  %i.be = or disjoint i16 %i.bc, %i.bd            ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.val157 = load i8, ptr %i.bf, align 1, !tbaa !31
  %i.bg = getelementptr i8, ptr %i.b, i64 13
  %.val158 = load i8, ptr %i.bg, align 1, !tbaa !31
  %i.bh = zext i8 %.val157 to i16
  %i.bi = shl nuw i16 %i.bh, 8
  %i.bj = add i32 %.56.val, 14
  %i.bk = and i8 %.val158, -2
  %.masked = zext i8 %i.bk to i16
  %i.bl = or disjoint i16 %i.bi, %.masked         ; 2 uses
  %i.bm = zext i32 %i.bj to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.bm ; 2 uses
  %i.bo = zext i16 %i.bl to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo ; 2 uses
  %.val155 = load i8, ptr %i.bp, align 1, !tbaa !31
  %i.bq = getelementptr i8, ptr %i.bp, i64 1
  %.val156 = load i8, ptr %i.bq, align 1, !tbaa !31
  %i.br = zext i8 %.val155 to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = zext i8 %.val156 to i32
  %i.bu = or disjoint i32 %i.bs, %i.bt
  %.not = icmp samesign ult i32 %0, %i.bu
  %i.bv = zext i16 %i.bl to i32
  %i.bw = select i1 %.not, i32 0, i32 %i.bv
  %.0123 = add i32 %.56.val, 12
  %i.bx = add i32 %.0123, %i.bw                   ; 4 uses
  %.not1427 = icmp eq i16 %i.be, 0
  br i1 %.not1427, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val161 = load i8, ptr %i.by, align 1, !tbaa !31
  %i.bz = zext i8 %.val161 to i16
  %i.ca = shl nuw i16 %i.bz, 8
  %i.cb = getelementptr i8, ptr %i.b, i64 9
  %.val162 = load i8, ptr %i.cb, align 1, !tbaa !31
  %i.cc = zext i8 %.val162 to i16
  %i.cd = or disjoint i16 %i.ca, %i.cc            ; 2 uses
  %i.ce = or disjoint i16 %i.bc, %i.bd
  %xtraiter = and i16 %i.bd, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.0127.prol = lshr i16 %i.cd, 1                 ; 2 uses
  %i.cf = zext i32 %i.bx to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cf
  %i.ch = and i16 %.0127.prol, 32766              ; 2 uses
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci ; 2 uses
  %.val153.prol = load i8, ptr %i.cj, align 1, !tbaa !31
  %i.ck = getelementptr i8, ptr %i.cj, i64 1
  %.val154.prol = load i8, ptr %i.ck, align 1, !tbaa !31
  %i.cl = zext i8 %.val153.prol to i32
  %i.cm = shl nuw nsw i32 %i.cl, 8
  %i.cn = zext i8 %.val154.prol to i32
  %i.co = or disjoint i32 %i.cm, %i.cn
  %i.cp = icmp samesign ugt i32 %0, %i.co
  %i.cq = zext nneg i16 %i.ch to i32
  %i.cr = select i1 %i.cp, i32 %i.cq, i32 0
  %.2125.prol = add i32 %i.cr, %i.bx              ; 2 uses
  %i.cs = add nsw i16 %i.be, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2125.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.112410.unr = phi i32 [ %i.bx, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.01269.unr = phi i16 [ %i.be, %.lr.ph.preheader ], [ %i.cs, %.lr.ph.prol ]
  %.0127.in8.unr = phi i16 [ %i.cd, %.lr.ph.preheader ], [ %.0127.prol, %.lr.ph.prol ]
  %i.ct = icmp eq i16 %i.ce, 1
  br i1 %i.ct, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.112410 = phi i32 [ %.2125.1, %.lr.ph ], [ %.112410.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.01269 = phi i16 [ %i.du, %.lr.ph ], [ %.01269.unr, %.lr.ph.prol.loopexit ]
  %.0127.in8 = phi i16 [ %.0127.1, %.lr.ph ], [ %.0127.in8.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0127 = lshr i16 %.0127.in8, 1
  %i.cu = zext i32 %.112410 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cu
  %i.cw = and i16 %.0127, 32766                   ; 2 uses
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cx ; 2 uses
  %.val153 = load i8, ptr %i.cy, align 1, !tbaa !31
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  %.val154 = load i8, ptr %i.cz, align 1, !tbaa !31
  %i.da = zext i8 %.val153 to i32
  %i.db = shl nuw nsw i32 %i.da, 8
  %i.dc = zext i8 %.val154 to i32
  %i.dd = or disjoint i32 %i.db, %i.dc
  %i.de = icmp samesign ugt i32 %0, %i.dd
  %i.df = zext nneg i16 %i.cw to i32
  %i.dg = select i1 %i.de, i32 %i.df, i32 0
  %.2125 = add i32 %i.dg, %.112410                ; 2 uses
  %.0127.1 = lshr i16 %.0127.in8, 2               ; 2 uses
  %i.dh = zext i32 %.2125 to i64
  %i.di = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.dh
  %i.dj = and i16 %.0127.1, 16382                 ; 2 uses
  %i.dk = zext nneg i16 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dk ; 2 uses
  %.val153.1 = load i8, ptr %i.dl, align 1, !tbaa !31
  %i.dm = getelementptr i8, ptr %i.dl, i64 1
  %.val154.1 = load i8, ptr %i.dm, align 1, !tbaa !31
  %i.dn = zext i8 %.val153.1 to i32
  %i.do = shl nuw nsw i32 %i.dn, 8
  %i.dp = zext i8 %.val154.1 to i32
  %i.dq = or disjoint i32 %i.do, %i.dp
  %i.dr = icmp samesign ugt i32 %0, %i.dq
  %i.ds = zext nneg i16 %i.dj to i32
  %i.dt = select i1 %i.dr, i32 %i.ds, i32 0
  %.2125.1 = add i32 %i.dt, %.2125                ; 2 uses
  %i.du = add i16 %.01269, -2                     ; 2 uses
  %.not142.1 = icmp eq i16 %i.du, 0
  br i1 %.not142.1, label %._crit_edge, label %.lr.ph, !llvm.loop !846

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.g
  %.1124.lcssa = phi i32 [ %i.bx, %bb.g ], [ %.2125.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2125.1, %.lr.ph ]
  %reass.sub = sub i32 %.1124.lcssa, %.56.val
  %i.dv = add i32 %reass.sub, 131060
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 3 uses
  %i.dx = and i32 %i.ax, 65534
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %i.eb = and i32 %i.dv, 131070
  %i.ec = zext nneg i32 %i.eb to i64              ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ec ; 2 uses
  %.val151 = load i8, ptr %i.ed, align 1, !tbaa !31
  %i.ee = getelementptr i8, ptr %i.ed, i64 1
  %.val152 = load i8, ptr %i.ee, align 1, !tbaa !31
  %i.ef = zext i8 %.val151 to i32
  %i.eg = shl nuw nsw i32 %i.ef, 8
  %i.eh = zext i8 %.val152 to i32
  %i.ei = or disjoint i32 %i.eg, %i.eh            ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ec ; 2 uses
  %.val149 = load i8, ptr %i.ej, align 1, !tbaa !31
  %i.ek = getelementptr i8, ptr %i.ej, i64 1
  %.val150 = load i8, ptr %i.ek, align 1, !tbaa !31
  %i.el = zext i8 %.val149 to i32
  %i.em = shl nuw nsw i32 %i.el, 8
  %i.en = zext i8 %.val150 to i32
  %i.eo = or disjoint i32 %i.em, %i.en
  %i.ep = icmp samesign ult i32 %0, %i.ei
  %i.eq = icmp samesign ugt i32 %0, %i.eo
  %or.cond145 = select i1 %i.ep, i1 true, i1 %i.eq
  br i1 %or.cond145, label %bb.k, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.er = mul nuw nsw i32 %i.ay, 6
  %i.es = zext nneg i32 %i.er to i64              ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ec ; 2 uses
  %.val147 = load i8, ptr %i.ev, align 1, !tbaa !31
  %i.ew = getelementptr i8, ptr %i.ev, i64 1
  %.val148 = load i8, ptr %i.ew, align 1, !tbaa !31
  %i.ex = zext i8 %.val147 to i16
  %i.ey = shl nuw i16 %i.ex, 8
  %i.ez = zext i8 %.val148 to i16
  %i.fa = or disjoint i16 %i.ey, %i.ez            ; 2 uses
  %i.fb = icmp eq i16 %i.fa, 0
  br i1 %i.fb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fc = shl nuw nsw i32 %i.ay, 2
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ec ; 2 uses
  %.val175 = load i8, ptr %i.fg, align 1, !tbaa !31
  %i.fh = getelementptr i8, ptr %i.fg, i64 1
  %.val176 = load i8, ptr %i.fh, align 1, !tbaa !31
  %i.fi = zext i8 %.val175 to i32
  %i.fj = shl nuw nsw i32 %i.fi, 8
  %i.fk = zext i8 %.val176 to i32
  %i.fl = or disjoint i32 %i.fj, %i.fk
  %i.fm = add nuw nsw i32 %i.fl, %0
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.fn = zext i16 %i.fa to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.fn
  %i.fp = sub nsw i32 %0, %i.ei
  %i.fq = shl nsw i32 %i.fp, 1
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.a
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.es
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ec ; 2 uses
  %.val = load i8, ptr %i.fw, align 1, !tbaa !31
  %i.fx = getelementptr i8, ptr %i.fw, i64 1
  %.val146 = load i8, ptr %i.fx, align 1, !tbaa !31
  %i.fy = zext i8 %.val to i32
  %i.fz = shl nuw nsw i32 %i.fy, 8
  %i.ga = zext i8 %.val146 to i32
  %i.gb = or disjoint i32 %i.fz, %i.ga
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %._crit_edge
  %.2132.shrunk = phi i32 [ %i.gb, %bb.j ], [ %i.fm, %bb.i ], [ 0, %._crit_edge ]
  %.2132 = and i32 %.2132.shrunk, 65535
  br label %.loopexit

bb.l:                                             ; preds = %bb.a
  %i.gc = icmp eq i16 %i.g, 12
  %i.gd = and i16 %i.g, -2
  %or.cond = icmp eq i16 %i.gd, 12
  br i1 %or.cond, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.gf = load i32, ptr %i.ge, align 1
  %i.gg = tail call i32 @llvm.bswap.i32(i32 %i.gf) ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %.lr.ph14, label %.loopexit

.lr.ph14:                                         ; preds = %bb.m
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph14, %bb.q
  %.012 = phi i32 [ %i.gg, %.lr.ph14 ], [ %.2, %bb.q ] ; 2 uses
  %.012011 = phi i32 [ 0, %.lr.ph14 ], [ %.2122, %bb.q ] ; 3 uses
  %i.gj = sub nsw i32 %.012, %.012011
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = add nuw nsw i32 %i.gk, %.012011         ; 3 uses
  %i.gm = mul nsw i32 %i.gl, 12
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gn ; 3 uses
  %i.gp = load i32, ptr %i.go, align 1
  %i.gq = tail call i32 @llvm.bswap.i32(i32 %i.gp) ; 2 uses
  %i.gr = icmp ult i32 %0, %i.gq
  br i1 %i.gr, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gt = load i32, ptr %i.gs, align 1
  %i.gu = tail call i32 @llvm.bswap.i32(i32 %i.gt)
  %i.gv = icmp ugt i32 %0, %i.gu
  br i1 %i.gv, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.gw = add nuw nsw i32 %i.gl, 1
  br label %bb.q

.thread:                                          ; preds = %bb.o
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gy = load i32, ptr %i.gx, align 1
  %i.gz = tail call i32 @llvm.bswap.i32(i32 %i.gy)
  %i.ha = sub nsw i32 %0, %i.gq
  %i.hb = select i1 %i.gc, i32 %i.ha, i32 0
  %.5 = add i32 %i.gz, %i.hb
  br label %.loopexit

bb.q:                                             ; preds = %bb.p, %bb.n
  %.2122 = phi i32 [ %.012011, %bb.n ], [ %i.gw, %bb.p ] ; 2 uses
  %.2 = phi i32 [ %i.gl, %bb.n ], [ %.012, %bb.p ] ; 2 uses
  %i.hc = icmp slt i32 %.2122, %.2
  br i1 %i.hc, label %bb.n, label %.loopexit, !llvm.loop !847

.loopexit:                                        ; preds = %bb.q, %bb.m, %.thread, %bb.l, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.k
  %.8 = phi i32 [ 0, %bb.l ], [ 0, %bb.b ], [ 0, %bb.d ], [ %.2132, %bb.k ], [ 0, %bb.a ], [ %i.t, %bb.c ], [ %i.ar, %bb.f ], [ 0, %bb.e ], [ %.5, %.thread ], [ 0, %bb.m ], [ 0, %bb.q ]
  ret i32 %.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL31stbtt_GetGlyphBitmapBoxSubpixelPK14stbtt_fontinfoiffffPiS2_S2_S2_(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 1, 0) %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7) unnamed_addr #21 {
bb.a:
  %8 = alloca %struct.stbtt__csctx, align 8       ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !848
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i64 56, i1 false)
  store i32 1, ptr %8, align 8
  %i.c = call fastcc noundef i32 @_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx(ptr noundef nonnull readonly %0, i32 noundef range(i32 1, 0) %1, ptr noundef %8)
  %.not.i.i = icmp eq i32 %i.c, 0                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i, i32 0, i32 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, i32 0, i32 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %.not.i.i, i32 0, i32 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %.not.i.i, i32 0, i32 %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !714
  %.not.i40.i = icmp slt i32 %1, %i.q
  br i1 %.not.i40.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.s = load i32, ptr %i.r, align 4, !tbaa !718  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %i.s, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !704
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !697  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !702
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = shl nsw i32 %1, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae ; 4 uses
  %.val28.i.i = load i8, ptr %i.af, align 1, !tbaa !31
  %i.ag = getelementptr i8, ptr %i.af, i64 1
  %.val29.i.i = load i8, ptr %i.ag, align 1, !tbaa !31
  %i.ah = zext i8 %.val28.i.i to i32
  %i.ai = zext i8 %.val29.i.i to i32
  %i.aj = shl nuw nsw i32 %i.ah, 9
  %i.ak = shl nuw nsw i32 %i.ai, 1
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %.val.i.i = load i8, ptr %i.am, align 1, !tbaa !31
  %i.an = getelementptr i8, ptr %i.af, i64 3
  %.val27.i.i = load i8, ptr %i.an, align 1, !tbaa !31
  %i.ao = zext i8 %.val.i.i to i32
  %i.ap = zext i8 %.val27.i.i to i32
  %i.aq = shl nuw nsw i32 %i.ao, 9
  %i.ar = shl nuw nsw i32 %i.ap, 1
  %i.as = or disjoint i32 %i.ar, %i.aq
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.at = shl nsw i32 %1, 2
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.az = load i32, ptr %i.ay, align 1
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i.i = phi i32 [ %i.ba, %bb.g ], [ %i.as, %bb.f ]
  %.pn.i.i = phi i32 [ %i.ax, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %.023.i.i = add i32 %.pn.i.i, %i.w              ; 2 uses
  %i.bb = icmp eq i32 %.pn.i.i, %.sink.i.i
  %i.bc = icmp slt i32 %.023.i.i, 0
  %or.cond.i = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = zext nneg i32 %.023.i.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %.val38.i = load i8, ptr %i.bf, align 1, !tbaa !31
  %i.bg = getelementptr i8, ptr %i.be, i64 3
  %.val39.i = load i8, ptr %i.bg, align 1, !tbaa !31
  %i.bh = zext i8 %.val38.i to i16
  %i.bi = shl nuw i16 %i.bh, 8
  %i.bj = zext i8 %.val39.i to i16
  %i.bk = or disjoint i16 %i.bi, %i.bj
  %i.bl = sext i16 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.val36.i = load i8, ptr %i.bm, align 1, !tbaa !31
  %i.bn = getelementptr i8, ptr %i.be, i64 5
  %.val37.i = load i8, ptr %i.bn, align 1, !tbaa !31
  %i.bo = zext i8 %.val36.i to i16
  %i.bp = shl nuw i16 %i.bo, 8
  %i.bq = zext i8 %.val37.i to i16
  %i.br = or disjoint i16 %i.bp, %i.bq
  %i.bs = sext i16 %i.br to i32
end_hunk_1
