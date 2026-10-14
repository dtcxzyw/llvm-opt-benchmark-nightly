Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij:bb.a
.epil.preheader202:                               ; preds = %.unr-lcssa201, %.lr.ph149
  %.epil.init206 = phi ptr [ %.promoted151, %.lr.ph149 ], [ %i.hf, %.unr-lcssa201 ]
  %.0148.epil.init = phi i32 [ 2, %.lr.ph149 ], [ %i.hg, %.unr-lcssa201 ]
  %lcmp.mod210 = icmp ne i32 %xtraiter203, 0
  tail call void @llvm.assume(i1 %lcmp.mod210)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader202
  %i.fx = phi ptr [ %.epil.init206, %.epil.preheader202 ], [ %i.gd, %bb.p ] ; 4 uses
  %.0148.epil = phi i32 [ %.0148.epil.init, %.epil.preheader202 ], [ %i.ge, %bb.p ] ; 2 uses
  %epil.iter204 = phi i32 [ 0, %.epil.preheader202 ], [ %epil.iter204.next, %bb.p ]
  store i16 %i.eu, ptr %i.fx, align 2, !tbaa !243
  %i.fy = add i32 %i.et, %.0148.epil
  %i.fz = trunc i32 %i.fy to i16                  ; 2 uses
  %i.ga = add i16 %i.fz, -1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !243
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  store i16 %i.fz, ptr %i.gc, align 2, !tbaa !243
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 6 ; 2 uses
  %i.ge = add nuw nsw i32 %.0148.epil, 1
  %epil.iter204.next = add i32 %epil.iter204, 1   ; 2 uses
  %epil.iter204.cmp.not = icmp eq i32 %epil.iter204.next, %xtraiter203
  br i1 %epil.iter204.cmp.not, label %.epilog-lcssa208, label %bb.p, !llvm.loop !577

.epilog-lcssa208:                                 ; preds = %bb.p, %.unr-lcssa201
  %.lcssa = phi ptr [ %i.hf, %.unr-lcssa201 ], [ %i.gd, %bb.p ]
  store ptr %.lcssa, ptr %i.ev, align 8, !tbaa !113
  %i.gf = and i32 %2, 65535
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gh = add i32 %i.et, %i.gf
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !92
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph149.new
  %i.gi = phi ptr [ %.promoted151, %.lr.ph149.new ], [ %i.hf, %bb.q ] ; 13 uses
  %.0148 = phi i32 [ 2, %.lr.ph149.new ], [ %i.hg, %bb.q ] ; 5 uses
  %niter212 = phi i32 [ 0, %.lr.ph149.new ], [ %niter212.next.3, %bb.q ]
  store i16 %i.eu, ptr %i.gi, align 2, !tbaa !243
  %i.gj = add i32 %i.et, %.0148
  %i.gk = trunc i32 %i.gj to i16                  ; 2 uses
  %i.gl = add i16 %i.gk, -1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !243
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store i16 %i.gk, ptr %i.gn, align 2, !tbaa !243
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 6
  %i.gp = or disjoint i32 %.0148, 1
  store i16 %i.eu, ptr %i.go, align 2, !tbaa !243
  %i.gq = add i32 %i.et, %i.gp
  %i.gr = trunc i32 %i.gq to i16                  ; 2 uses
  %i.gs = add i16 %i.gr, -1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !243
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gi, i64 10
  store i16 %i.gr, ptr %i.gu, align 2, !tbaa !243
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store i16 %i.eu, ptr %i.gv, align 2, !tbaa !243
  %.reass = add i32 %.0148, %invariant.op
  %i.gw = trunc i32 %.reass to i16                ; 2 uses
  %i.gx = add i16 %i.gw, -1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gi, i64 14
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !243
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store i16 %i.gw, ptr %i.gz, align 2, !tbaa !243
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gi, i64 18
  store i16 %i.eu, ptr %i.ha, align 2, !tbaa !243
  %.reass223 = add i32 %.0148, %invariant.op222
  %i.hb = trunc i32 %.reass223 to i16             ; 2 uses
  %i.hc = add i16 %i.hb, -1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gi, i64 20
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !243
  %i.he = getelementptr inbounds nuw i8, ptr %i.gi, i64 22
  store i16 %i.hb, ptr %i.he, align 2, !tbaa !243
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gi, i64 24 ; 3 uses
  %i.hg = add nuw nsw i32 %.0148, 4               ; 2 uses
  %niter212.next.3 = add i32 %niter212, 4         ; 2 uses
  %niter212.ncmp.3 = icmp eq i32 %niter212.next.3, %unroll_iter211
  br i1 %niter212.ncmp.3, label %.unr-lcssa201, label %bb.q, !llvm.loop !578

bb.r:                                             ; preds = %bb.j, %.epilog-lcssa208, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = fcmp olt float %2, 5.000000e-01
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !100  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !99
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !47
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
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  %i.q = load i32, ptr %i.b, align 8, !tbaa !100
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.n, ptr nonnull align 4 %i.p, i64 %i.s, i1 false)
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !47
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.t)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  store ptr %i.n, ptr %i.o, align 8, !tbaa !47
  store i32 %i.k, ptr %i.d, align 4, !tbaa !99
  %.pre3.i = load i32, ptr %i.b, align 8, !tbaa !100
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i, %bb.f
  %i.u = phi i32 [ %i.c, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.f ]
  %i.v = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %i.n, %bb.f ]
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %1, align 4
  store i64 %i.y, ptr %i.x, align 4
  %i.z = load i32, ptr %i.b, align 8, !tbaa !100
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !100
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %i.ab = icmp slt i32 %5, 1
  br i1 %i.ab, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ac = fadd float %2, 9.990000e-01
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  %or.cond.i = icmp ult i32 %i.ad, 64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !73 ; 2 uses
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 500
  %i.ah = zext nneg i32 %i.ad to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !50
  %i.ak = zext i8 %i.aj to i32
  br label %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit

bb.j:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.am = load float, ptr %i.al, align 4, !tbaa !49 ; 2 uses
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
  %i.bd = select i1 %i.bb, i32 1, i32 %i.bc       ; 10 uses
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
  %i.bm = sub nuw nsw i32 %i.bd, %i.bk
  %.neg.lhs.trunc = trunc nuw nsw i32 %i.bm to i8
  %.neg120132 = lshr i8 %.neg.lhs.trunc, 1
  %.neg120 = sub nsw i8 0, %.neg120132
  %.neg.sext = sext i8 %.neg120 to i32
  %i.bn = add nsw i32 %i.bd, %.neg.sext
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.188 = phi i1 [ false, %bb.k ], [ false, %bb.l ], [ true, %bb.m ]
  %.185 = phi i32 [ %i.bg, %bb.k ], [ %i.bj, %bb.l ], [ %i.bl, %bb.m ]
  %.2 = phi i32 [ %i.bd, %bb.k ], [ %i.bc, %bb.l ], [ %i.bn, %bb.m ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !250 ; 2 uses
  %i.bq = add nsw i32 %i.bp, %.185                ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !99 ; 4 uses
  %i.bt = icmp sgt i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.o, label %._ZN8ImVectorI6ImVec2E6resizeEi.exit_crit_edge

._ZN8ImVectorI6ImVec2E6resizeEi.exit_crit_edge:   ; preds = %bb.n
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !251
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
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !47 ; 2 uses
  %.not6.i.i119 = icmp eq ptr %i.cc, null
  br i1 %.not6.i.i119, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i118
  %i.cd = load i32, ptr %i.bo, align 8, !tbaa !100
  %i.ce = sext i32 %i.cd to i64
  %i.cf = shl nsw i64 %i.ce, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ca, ptr nonnull align 4 %i.cc, i64 %i.cf, i1 false)
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !47
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.cg)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i118
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !47
  store i32 %i.bx, ptr %i.br, align 4, !tbaa !99
  br label %_ZN8ImVectorI6ImVec2E6resizeEi.exit

_ZN8ImVectorI6ImVec2E6resizeEi.exit:              ; preds = %._ZN8ImVectorI6ImVec2E6resizeEi.exit_crit_edge, %bb.r
  %i.ch = phi ptr [ %.pre, %._ZN8ImVectorI6ImVec2E6resizeEi.exit_crit_edge ], [ %i.ca, %bb.r ]
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !100
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
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !73 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 112 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cr = load float, ptr %1, align 4, !tbaa !237 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  br i1 %.not, label %.preheader, label %.preheader122

.preheader122:                                    ; preds = %bb.t
  %i.ct = sext i32 %.090 to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.ct
  %i.cv = load float, ptr %i.cq, align 4, !tbaa !238
  %i.cw = load <2 x float>, ptr %i.cu, align 8, !tbaa !29
  %i.cx = insertelement <2 x float> poison, float %2, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cz = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cv, i64 1
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.cy, <2 x float> %i.da)
  store <2 x float> %i.db, ptr %i.cj, align 4, !tbaa !29
  %i.dc = add nsw i32 %.2, %3                     ; 2 uses
  %.not113.peel = icmp sgt i32 %i.dc, %4
  br i1 %.not113.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %.preheader122
  %i.dd = add nsw i32 %.090, %.2
  br label %bb.u

.preheader:                                       ; preds = %bb.t
  %i.de = zext nneg i32 %.090 to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.de
  %i.dg = load float, ptr %i.cq, align 4, !tbaa !238
  %i.dh = load <2 x float>, ptr %i.df, align 8, !tbaa !29
  %i.di = insertelement <2 x float> poison, float %2, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dk = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.dg, i64 1
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.dj, <2 x float> %i.dl)
  store <2 x float> %i.dm, ptr %i.cj, align 4, !tbaa !29
  %i.dn = sub nsw i32 %3, %.2                     ; 2 uses
  %.not112.peel = icmp slt i32 %i.dn, %4
  br i1 %.not112.peel, label %.loopexit, label %.peel.next137

.peel.next137:                                    ; preds = %.preheader
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
  %i.dt = load <2 x float>, ptr %i.ds, align 8, !tbaa !29
  %i.du = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.cy, <2 x float> %i.du)
  store <2 x float> %i.dv, ptr %.095124, align 4, !tbaa !29
  %i.dw = getelementptr inbounds nuw i8, ptr %.095124, i64 8 ; 2 uses
  %i.dx = add nsw i32 %i.bd, %.089126             ; 2 uses
  %i.dy = add nsw i32 %spec.select114, %i.bd
  %.not113 = icmp sgt i32 %i.dx, %4
  br i1 %.not113, label %.loopexit, label %bb.u, !llvm.loop !579

bb.v:                                             ; preds = %.peel.next137, %bb.v
  %.086130 = phi i32 [ %i.dn, %.peel.next137 ], [ %i.eh, %bb.v ]
  %.393129 = phi i32 [ %i.do, %.peel.next137 ], [ %i.ei, %bb.v ] ; 3 uses
  %.196128 = phi ptr [ %i.cs, %.peel.next137 ], [ %i.eg, %bb.v ] ; 2 uses
  %i.dz = icmp slt i32 %.393129, 0
  %i.ea = add nsw i32 %.393129, 48
  %spec.select115 = select i1 %i.dz, i32 %i.ea, i32 %.393129 ; 2 uses
  %i.eb = sext i32 %spec.select115 to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.eb
  %i.ed = load <2 x float>, ptr %i.ec, align 8, !tbaa !29
  %i.ee = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.dj, <2 x float> %i.ee)
  store <2 x float> %i.ef, ptr %.196128, align 4, !tbaa !29
  %i.eg = getelementptr inbounds nuw i8, ptr %.196128, i64 8 ; 2 uses
  %i.eh = sub nsw i32 %.086130, %i.bd             ; 2 uses
  %i.ei = sub nsw i32 %spec.select115, %i.bd
  %.not112 = icmp slt i32 %i.eh, %4
  br i1 %.not112, label %.loopexit, label %bb.v, !llvm.loop !580

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
  %i.ep = load <2 x float>, ptr %i.eo, align 8, !tbaa !29
  %i.eq = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.er = insertelement <2 x float> poison, float %2, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.es, <2 x float> %i.eq)
  store <2 x float> %i.et, ptr %.297, align 4, !tbaa !29
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.w, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList11_PathArcToNERK6ImVec2fffi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = fcmp olt float %2, 5.000000e-01
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 11 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !100  ; 7 uses
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !99
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !47
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.c, 1
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sdiv i32 %i.c, 2
  %i.i = add nsw i32 %i.h, %i.c
end_hunk_0
