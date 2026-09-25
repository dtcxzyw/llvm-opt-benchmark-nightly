Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_draw?download=true
inline.NumInlined: 1448
inline.NumDeleted: 384
loop-unroll.NumCompletelyUnrolled: 298
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 350
begin_hunk_0_@_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 %i.g, ptr %i.aj, align 4
  %.sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i32 %i.i, ptr %.sroa_idx23, align 4
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !134 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store i32 %5, ptr %i.al, align 4, !tbaa !138
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.an = load i64, ptr %2, align 4
  store i64 %i.an, ptr %i.am, align 4
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !134
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load i64, ptr %4, align 4
  store i64 %i.aq, ptr %i.ap, align 4
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !134 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store i32 %5, ptr %i.as, align 4, !tbaa !138
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 60
  store i32 %i.d, ptr %i.at, align 4
  %.sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store i32 %i.f, ptr %.sroa_idx26, align 4
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !134 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 68
  store i32 %i.j, ptr %i.av, align 4
  %.sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store i32 %i.l, ptr %.sroa_idx22, align 4
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !94
  %i.ax = add i32 %i.aw, 4
  store i32 %i.ax, ptr %i.m, align 4, !tbaa !94
  %i.ay = load <2 x ptr>, ptr %i.z, align 8, !tbaa !139
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !134
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 76
  store i32 %5, ptr %i.ba, align 4, !tbaa !138
  %i.bb = getelementptr inbounds nuw i8, <2 x ptr> %i.ay, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.bb, ptr %i.z, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10ImDrawList10PrimQuadUVERK6ImVec2S2_S2_S2_S2_S2_S2_S2_j(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %8, i32 noundef %9) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !94
  %i.c = trunc i32 %i.b to i16                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115  ; 6 uses
  store i16 %i.c, ptr %i.e, align 2, !tbaa !136
  %i.f = add i16 %i.c, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 %i.f, ptr %i.g, align 2, !tbaa !136
  %i.h = add i16 %i.c, 2                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i16 %i.h, ptr %i.i, align 2, !tbaa !136
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i16 %i.c, ptr %i.j, align 2, !tbaa !136
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i16 %i.h, ptr %i.k, align 2, !tbaa !136
  %i.l = add i16 %i.c, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i16 %i.l, ptr %i.m, align 2, !tbaa !136
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134
  %i.p = load i64, ptr %1, align 4
  store i64 %i.p, ptr %i.o, align 4
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !134
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %5, align 4
  store i64 %i.s, ptr %i.r, align 4
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !134  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 %9, ptr %i.u, align 4, !tbaa !138
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.w = load i64, ptr %2, align 4
  store i64 %i.w, ptr %i.v, align 4
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !134
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.z = load i64, ptr %6, align 4
  store i64 %i.z, ptr %i.y, align 4
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !134 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  store i32 %9, ptr %i.ab, align 4, !tbaa !138
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ad = load i64, ptr %3, align 4
  store i64 %i.ad, ptr %i.ac, align 4
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !134
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load i64, ptr %7, align 4
  store i64 %i.ag, ptr %i.af, align 4
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !134 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i32 %9, ptr %i.ai, align 4, !tbaa !138
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 60
  %i.ak = load i64, ptr %4, align 4
  store i64 %i.ak, ptr %i.aj, align 4
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !134
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  %i.an = load i64, ptr %8, align 4
  store i64 %i.an, ptr %i.am, align 4
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !94
  %i.ap = add i32 %i.ao, 4
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !94
  %i.aq = load <2 x ptr>, ptr %i.n, align 8, !tbaa !139
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !134
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  store i32 %9, ptr %i.as, align 4, !tbaa !138
  %i.at = getelementptr inbounds nuw i8, <2 x ptr> %i.aq, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.at, ptr %i.n, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 2
  %i.b = icmp ult i32 %3, 16777216
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %4, 1
  %.not442 = icmp eq i32 %i.c, 0                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = load i64, ptr %i.e, align 8              ; 11 uses
  %i.g = add nsw i32 %2, -1                       ; 4 uses
  %i.h = select i1 %.not442, i32 %i.g, i32 %2     ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load float, ptr %i.i, align 8, !tbaa !105 ; 8 uses
  %i.k = fcmp ogt float %5, %i.j                  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !93   ; 2 uses
  %i.n = and i32 %i.m, 1
  %.not443 = icmp eq i32 %i.n, 0
  br i1 %.not443, label %.lr.ph557, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = and i32 %3, 16777215                     ; 4 uses
  %i.p = fcmp oge float %5, 1.000000e+00
  %i.q = select i1 %i.p, float %5, float 1.000000e+00 ; 6 uses
  %i.r = fptosi float %i.q to i32                 ; 3 uses
  %i.s = uitofp nneg i32 %i.r to float
  %i.t = fsub float %i.q, %i.s
  %i.u = and i32 %i.m, 2
  %i.v = icmp eq i32 %i.u, 0
  %i.w = icmp samesign ugt i32 %i.r, 31
  %or.cond.not452 = select i1 %i.v, i1 true, i1 %i.w
  %i.x = fcmp ugt float %i.t, f0x3727C5AC
  %or.cond3.not449 = select i1 %or.cond.not452, i1 true, i1 %i.x
  %i.y = fcmp une float %i.j, 1.000000e+00
  %.not447 = select i1 %or.cond3.not449, i1 true, i1 %i.y ; 8 uses
  %.v = select i1 %i.k, i32 18, i32 12
  %.v529 = select i1 %.not447, i32 %.v, i32 6
  %i.z = mul nsw i32 %.v529, %i.h
  br i1 %.not447, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i32 %2, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ab = shl nuw nsw i32 %2, 2
  %i.ac = mul nuw nsw i32 %2, 3
  %i.ad = select i1 %i.k, i32 %i.ab, i32 %i.ac
  %i.ae = select i1 %i.k, i32 5, i32 3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not445 = phi i32 [ 3, %bb.d ], [ %i.ae, %bb.e ]
  %i.af = phi i32 [ %i.aa, %bb.d ], [ %i.ad, %bb.e ] ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.z, i32 noundef %i.af)
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !75  ; 3 uses
  %i.ah = mul nuw nsw i32 %.not445, %2            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 76 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !101
  %.not.i = icmp sgt i32 %i.ah, %i.aj
  br i1 %.not.i, label %bb.g, label %.lr.ph.preheader

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 80 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51 ; 2 uses
  %.not4.i = icmp eq ptr %i.al, null
  br i1 %.not4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.al) #35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = zext nneg i32 %i.ah to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.an) #35
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !51
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !101
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !75
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i, %bb.f
  %i.ap = phi ptr [ %i.ag, %bb.f ], [ %.pre, %bb.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !140 ; 11 uses
  %i.as = zext nneg i32 %2 to i64                 ; 7 uses
  %i.at = getelementptr [8 x i8], ptr %i.ar, i64 %i.as ; 14 uses
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.k
  br i1 %.not442, label %bb.l, label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.au = icmp eq i64 %indvars.iv.next, %i.as
  %i.av = select i1 %i.au, i64 0, i64 %indvars.iv.next
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ay = load <2 x float>, ptr %i.aw, align 4, !tbaa !31
  %i.az = load <2 x float>, ptr %i.ax, align 4, !tbaa !31
  %i.ba = fsub <2 x float> %i.ay, %i.az           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.ba, %i.ba
  %i.bb = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bc = extractelement <2 x float> %i.ba, i64 0 ; 2 uses
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.bb) ; 2 uses
  %i.be = fcmp ogt float %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.bf = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bg = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.bf)
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.ba, %i.bh
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %i.bj = phi <2 x float> [ %i.bi, %bb.j ], [ %i.ba, %.lr.ph ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.bl = extractelement <2 x float> %i.bj, i64 1
  store float %i.bl, ptr %i.bk, align 4, !tbaa !129
  %i.bm = extractelement <2 x float> %i.bj, i64 0
  %i.bn = fneg float %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store float %i.bn, ptr %i.bo, align 4, !tbaa !130
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !563

bb.l:                                             ; preds = %._crit_edge
  %i.bp = getelementptr i8, ptr %i.at, i64 -16
  %i.bq = zext nneg i32 %i.g to i64               ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bq ; 5 uses
  %i.bs = load i64, ptr %i.bp, align 4
  store i64 %i.bs, ptr %i.br, align 4
  %or.cond5 = select i1 %.not447, i1 %i.k, i1 false
  br i1 %or.cond5, label %bb.s, label %bb.m

.thread:                                          ; preds = %._crit_edge
  %or.cond5526 = select i1 %.not447, i1 %i.k, i1 false
  br i1 %or.cond5526, label %.thread528, label %.thread527

.thread528:                                       ; preds = %.thread
  %i.bt = fsub float %i.q, %i.j
  %i.bu = fmul float %i.bt, 5.000000e-01
  br label %.lr.ph552

.thread527:                                       ; preds = %.thread
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.q, float 5.000000e-01, float 1.000000e+00)
  %i.bw = select i1 %.not447, float %i.j, float %i.bv
  br label %.lr.ph542

bb.m:                                             ; preds = %bb.l
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.q, float 5.000000e-01, float 1.000000e+00)
  %i.by = select i1 %.not447, float %i.j, float %i.bx ; 2 uses
  %i.bz = load <2 x float>, ptr %i.ar, align 4, !tbaa !31
  %i.ca = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cc = fmul <2 x float> %i.cb, %i.bz
  %i.cd = load <2 x float>, ptr %1, align 4, !tbaa !31
  %i.ce = fadd <2 x float> %i.cc, %i.cd
  store <2 x float> %i.ce, ptr %i.at, align 4
  %i.cf = load <2 x float>, ptr %i.ar, align 4, !tbaa !31
  %i.cg = fmul <2 x float> %i.cb, %i.cf
  %i.ch = load <2 x float>, ptr %1, align 4, !tbaa !31
  %i.ci = fsub <2 x float> %i.ch, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store <2 x float> %i.ci, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bq ; 2 uses
  %i.cl = load <2 x float>, ptr %i.br, align 4, !tbaa !31
  %i.cm = fmul <2 x float> %i.cb, %i.cl
  %i.cn = load <2 x float>, ptr %i.ck, align 4, !tbaa !31
  %i.co = fadd <2 x float> %i.cm, %i.cn
  %i.cp = shl nuw nsw i32 %i.g, 1
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cq ; 2 uses
  store <2 x float> %i.co, ptr %i.cr, align 4
  %i.cs = load <2 x float>, ptr %i.br, align 4, !tbaa !31
  %i.ct = fmul <2 x float> %i.cb, %i.cs
  %i.cu = load <2 x float>, ptr %i.ck, align 4, !tbaa !31
  %i.cv = fsub <2 x float> %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store <2 x float> %i.cv, ptr %i.cw, align 4
  br label %.lr.ph542

.lr.ph542:                                        ; preds = %bb.m, %.thread527
  %i.cx = phi float [ %i.bw, %.thread527 ], [ %i.by, %bb.m ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !94 ; 2 uses
  %i.da = select i1 %.not447, i32 3, i32 2
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %wide.trip.count564 = zext nneg i32 %i.h to i64 ; 2 uses
  %i.dc = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %.promoted624 = load ptr, ptr %i.db, align 8, !tbaa !115
  br label %.backedge

.lr.ph548:                                        ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %.pre592 = load ptr, ptr %i.de, align 8, !tbaa !134
  br label %bb.r

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph542
  %i.df = phi ptr [ %.promoted624, %.lr.ph542 ], [ %i.ff, %.backedge.backedge ] ; 13 uses
  %indvars.iv561 = phi i64 [ 0, %.lr.ph542 ], [ %indvars.iv.next562, %.backedge.backedge ] ; 2 uses
  %.0433539 = phi i32 [ %i.cz, %.lr.ph542 ], [ %i.dk, %.backedge.backedge ] ; 3 uses
  %indvars.iv.next562 = add nuw nsw i64 %indvars.iv561, 1 ; 5 uses
  %i.dg = icmp eq i64 %indvars.iv.next562, %i.as  ; 2 uses
  %i.dh = trunc nuw nsw i64 %indvars.iv.next562 to i32
  %i.di = select i1 %i.dg, i32 0, i32 %i.dh       ; 2 uses
  %i.dj = add i32 %.0433539, %i.da
  %i.dk = select i1 %i.dg, i32 %i.cz, i32 %i.dj   ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv561
  %i.dm = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.dm
  %i.do = load <2 x float>, ptr %i.dl, align 4, !tbaa !31
  %i.dp = load <2 x float>, ptr %i.dn, align 4, !tbaa !31
  %i.dq = fadd <2 x float> %i.do, %i.dp
  %i.dr = fmul <2 x float> %i.dq, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop616 = fmul <2 x float> %i.dr, %i.dr
  %i.ds = extractelement <2 x float> %foldExtExtBinop616, i64 1
  %i.dt = extractelement <2 x float> %i.dr, i64 0 ; 2 uses
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.ds) ; 2 uses
  %i.dv = fcmp ogt float %i.du, f0x358637BD
  br i1 %i.dv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.backedge
  %i.dw = fdiv float 1.000000e+00, %i.du          ; 2 uses
  %i.dx = fcmp ogt float %i.dw, 1.000000e+02
  %spec.store.select = select i1 %i.dx, float 1.000000e+02, float %i.dw
  %i.dy = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x float> %i.dr, %i.dz
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.backedge
  %i.eb = phi <2 x float> [ %i.ea, %bb.n ], [ %i.dr, %.backedge ]
  %i.ec = fmul <2 x float> %i.dd, %i.eb           ; 2 uses
  %i.ed = shl nuw nsw i32 %i.di, 1
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dm ; 2 uses
  %i.eh = load <2 x float>, ptr %i.eg, align 4, !tbaa !31
  %i.ei = fadd <2 x float> %i.ec, %i.eh
  store <2 x float> %i.ei, ptr %i.ef, align 4, !tbaa !31
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ek = load <2 x float>, ptr %i.eg, align 4, !tbaa !31
  %i.el = fsub <2 x float> %i.ek, %i.ec
  store <2 x float> %i.el, ptr %i.ej, align 4, !tbaa !31
  %i.em = trunc i32 %i.dk to i16                  ; 4 uses
  store i16 %i.em, ptr %i.df, align 2, !tbaa !136
  %i.en = trunc i32 %.0433539 to i16              ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !136
  %i.ep = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  br i1 %.not447, label %bb.p, label %.thread608

bb.p:                                             ; preds = %bb.o
  %i.er = trunc i32 %i.dk to i16
  %i.es = insertelement <2 x i16> poison, i16 %i.er, i64 0
  %i.et = trunc i32 %.0433539 to i16
  %i.eu = insertelement <2 x i16> %i.es, i16 %i.et, i64 1
  %i.ev = shufflevector <2 x i16> %i.eu, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ew = add i16 %i.en, 2                        ; 2 uses
  store i16 %i.ew, ptr %i.ep, align 2, !tbaa !136
  %i.ex = getelementptr inbounds nuw i8, ptr %i.df, i64 6
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !136
  %i.ey = add <4 x i16> %i.ev, <i16 2, i16 0, i16 1, i16 1> ; 2 uses
  store <4 x i16> %i.ey, ptr %i.eq, align 2, !tbaa !136
  %i.ez = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i16 %i.en, ptr %i.ez, align 2, !tbaa !136
  %i.fa = getelementptr inbounds nuw i8, ptr %i.df, i64 18
  store i16 %i.en, ptr %i.fa, align 2, !tbaa !136
  %i.fb = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  store i16 %i.em, ptr %i.fb, align 2, !tbaa !136
  %i.fc = getelementptr inbounds nuw i8, ptr %i.df, i64 22
  %i.fd = extractelement <4 x i16> %i.ey, i64 2
  store i16 %i.fd, ptr %i.fc, align 2, !tbaa !136
  %i.fe = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  store ptr %i.fe, ptr %i.db, align 8, !tbaa !115
  %exitcond565.not = icmp eq i64 %indvars.iv.next562, %wide.trip.count564
  br i1 %exitcond565.not, label %.lr.ph548, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.p, %.thread608
  %i.ff = phi ptr [ %i.fe, %bb.p ], [ %i.fk, %.thread608 ]
  br label %.backedge, !llvm.loop !564

.thread608:                                       ; preds = %bb.o
  %i.fg = getelementptr inbounds nuw i8, ptr %i.df, i64 10
  %i.fh = add i16 %i.en, 1                        ; 2 uses
  store i16 %i.fh, ptr %i.ep, align 2, !tbaa !136
  %i.fi = add i16 %i.em, 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.df, i64 6
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !136
  store i16 %i.fh, ptr %i.eq, align 2, !tbaa !136
  store i16 %i.em, ptr %i.fg, align 2, !tbaa !136
  %i.fk = getelementptr inbounds nuw i8, ptr %i.df, i64 12 ; 2 uses
  store ptr %i.fk, ptr %i.db, align 8, !tbaa !115
  %exitcond565.not610 = icmp eq i64 %indvars.iv.next562, %wide.trip.count564
  br i1 %exitcond565.not610, label %.lr.ph546, label %.backedge.backedge

.lr.ph546:                                        ; preds = %.thread608
  %i.fl = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !141
  %i.fo = zext nneg i32 %i.r to i64
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %i.fo ; 2 uses
  %i.fq = load <2 x i32>, ptr %i.fp, align 4, !tbaa !31
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !31
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %.pre591 = load ptr, ptr %i.fs, align 8, !tbaa !134
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph546, %bb.q
  %i.ft = phi ptr [ %.pre591, %.lr.ph546 ], [ %i.gh, %bb.q ]
  %indvars.iv566 = phi i64 [ 0, %.lr.ph546 ], [ %indvars.iv.next567, %bb.q ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv566, 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 4
  store i64 %i.fv, ptr %i.ft, align 4
  %i.fw = load ptr, ptr %i.fs, align 8, !tbaa !134
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store <2 x i32> %i.fq, ptr %i.fx, align 4
  %i.fy = load ptr, ptr %i.fs, align 8, !tbaa !134 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i32 %3, ptr %i.fz, align 4, !tbaa !138
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 20
  %i.gc = load i64, ptr %i.ga, align 4
  store i64 %i.gc, ptr %i.gb, align 4
  %i.gd = load ptr, ptr %i.fs, align 8, !tbaa !134
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 28
  store <2 x i32> %i.fr, ptr %i.ge, align 4
  %i.gf = load ptr, ptr %i.fs, align 8, !tbaa !134 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 36
  store i32 %3, ptr %i.gg, align 4, !tbaa !138
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 40 ; 2 uses
  store ptr %i.gh, ptr %i.fs, align 8, !tbaa !134
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next567, %i.as
  br i1 %exitcond570.not, label %.loopexit534, label %bb.q, !llvm.loop !565

bb.r:                                             ; preds = %.lr.ph548, %bb.r
  %i.gi = phi ptr [ %.pre592, %.lr.ph548 ], [ %i.hd, %bb.r ]
  %indvars.iv571 = phi i64 [ 0, %.lr.ph548 ], [ %indvars.iv.next572, %bb.r ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv571
  %i.gk = load i64, ptr %i.gj, align 4
  store i64 %i.gk, ptr %i.gi, align 4
  %i.gl = load ptr, ptr %i.de, align 8, !tbaa !134
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i64 %i.f, ptr %i.gm, align 4
  %i.gn = load ptr, ptr %i.de, align 8, !tbaa !134 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i32 %3, ptr %i.go, align 4, !tbaa !138
  %.idx606 = shl nuw nsw i64 %indvars.iv571, 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx606 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 20
  %i.gr = load i64, ptr %i.gp, align 4
  store i64 %i.gr, ptr %i.gq, align 4
  %i.gs = load ptr, ptr %i.de, align 8, !tbaa !134
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 28
  store i64 %i.f, ptr %i.gt, align 4
  %i.gu = load ptr, ptr %i.de, align 8, !tbaa !134 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 36
  store i32 %i.o, ptr %i.gv, align 4, !tbaa !138
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.gy = load i64, ptr %i.gw, align 4
  store i64 %i.gy, ptr %i.gx, align 4
  %i.gz = load ptr, ptr %i.de, align 8, !tbaa !134
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  store i64 %i.f, ptr %i.ha, align 4
  %i.hb = load ptr, ptr %i.de, align 8, !tbaa !134 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 56
  store i32 %i.o, ptr %i.hc, align 4, !tbaa !138
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 60 ; 2 uses
  store ptr %i.hd, ptr %i.de, align 8, !tbaa !134
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %exitcond575.not = icmp eq i64 %indvars.iv.next572, %i.as
  br i1 %exitcond575.not, label %.loopexit534, label %bb.r, !llvm.loop !566

bb.s:                                             ; preds = %bb.l
  %i.he = fsub float %i.q, %i.j
  %i.hf = fmul float %i.he, 5.000000e-01          ; 3 uses
  %i.hg = fadd float %i.j, %i.hf
  %i.hh = load <2 x float>, ptr %i.ar, align 4, !tbaa !31
  %i.hi = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hk = fmul <2 x float> %i.hj, %i.hh
  %i.hl = load <2 x float>, ptr %1, align 4, !tbaa !31
  %i.hm = fadd <2 x float> %i.hk, %i.hl
  store <2 x float> %i.hm, ptr %i.at, align 4
  %i.hn = load <2 x float>, ptr %i.ar, align 4, !tbaa !31 ; 2 uses
  %i.ho = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hq = fmul <2 x float> %i.hp, %i.hn           ; 2 uses
  %i.hr = load <2 x float>, ptr %1, align 4, !tbaa !31
  %i.hs = fadd <2 x float> %i.hq, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store <2 x float> %i.hs, ptr %i.ht, align 4
  %i.hu = load <2 x float>, ptr %1, align 4, !tbaa !31
  %i.hv = fsub <2 x float> %i.hu, %i.hq
  %i.hw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <2 x float> %i.hv, ptr %i.hw, align 4
  %i.hx = fmul <2 x float> %i.hj, %i.hn
  %i.hy = load <2 x float>, ptr %1, align 4, !tbaa !31
  %i.hz = fsub <2 x float> %i.hy, %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store <2 x float> %i.hz, ptr %i.ia, align 4
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bq ; 4 uses
  %i.ic = load <2 x float>, ptr %i.br, align 4, !tbaa !31
  %i.id = fmul <2 x float> %i.hj, %i.ic
  %i.ie = load <2 x float>, ptr %i.ib, align 4, !tbaa !31
  %i.if = fadd <2 x float> %i.id, %i.ie
  %i.ig = shl nuw nsw i32 %i.g, 2
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ih ; 4 uses
  store <2 x float> %i.if, ptr %i.ii, align 4
  %i.ij = load <2 x float>, ptr %i.br, align 4, !tbaa !31 ; 2 uses
  %i.ik = fmul <2 x float> %i.hp, %i.ij           ; 2 uses
  %i.il = load <2 x float>, ptr %i.ib, align 4, !tbaa !31
  %i.im = fadd <2 x float> %i.ik, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store <2 x float> %i.im, ptr %i.in, align 4
  %i.io = load <2 x float>, ptr %i.ib, align 4, !tbaa !31
  %i.ip = fsub <2 x float> %i.io, %i.ik
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <2 x float> %i.ip, ptr %i.iq, align 4
  %i.ir = fmul <2 x float> %i.hj, %i.ij
  %i.is = load <2 x float>, ptr %i.ib, align 4, !tbaa !31
  %i.it = fsub <2 x float> %i.is, %i.ir
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  store <2 x float> %i.it, ptr %i.iu, align 4
  br label %.lr.ph552

.lr.ph552:                                        ; preds = %bb.s, %.thread528
  %i.iv = phi float [ %i.bu, %.thread528 ], [ %i.hf, %bb.s ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !94 ; 2 uses
  %i.iy = fadd float %i.j, %i.iv
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load ptr, ptr %i.iz, align 8, !tbaa !115
  %wide.trip.count579 = zext nneg i32 %i.h to i64
  %i.ja = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.t

.lr.ph554:                                        ; preds = %bb.v
  store ptr %i.lp, ptr %i.iz, align 8, !tbaa !115
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %.pre593 = load ptr, ptr %i.je, align 8, !tbaa !134
  br label %bb.w

bb.t:                                             ; preds = %.lr.ph552, %bb.v
  %indvars.iv576 = phi i64 [ 0, %.lr.ph552 ], [ %indvars.iv.next577, %bb.v ] ; 2 uses
  %i.jf = phi ptr [ %.promoted, %.lr.ph552 ], [ %i.lp, %bb.v ] ; 9 uses
  %.0424549 = phi i32 [ %i.ix, %.lr.ph552 ], [ %spec.select, %bb.v ] ; 3 uses
  %indvars.iv.next577 = add nuw nsw i64 %indvars.iv576, 1 ; 4 uses
  %i.jg = icmp eq i64 %indvars.iv.next577, %i.as  ; 2 uses
  %i.jh = trunc nuw nsw i64 %indvars.iv.next577 to i32
  %i.ji = select i1 %i.jg, i32 0, i32 %i.jh       ; 2 uses
  %i.jj = add i32 %.0424549, 4
  %spec.select = select i1 %i.jg, i32 %i.ix, i32 %i.jj ; 3 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv576
  %i.jl = zext nneg i32 %i.ji to i64              ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.jl
  %i.jn = load <2 x float>, ptr %i.jk, align 4, !tbaa !31
  %i.jo = load <2 x float>, ptr %i.jm, align 4, !tbaa !31
  %i.jp = fadd <2 x float> %i.jn, %i.jo
  %i.jq = fmul <2 x float> %i.jp, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop618 = fmul <2 x float> %i.jq, %i.jq
  %i.jr = extractelement <2 x float> %foldExtExtBinop618, i64 1
  %i.js = extractelement <2 x float> %i.jq, i64 0 ; 2 uses
  %i.jt = tail call float @llvm.fmuladd.f32(float %i.js, float %i.js, float %i.jr) ; 2 uses
  %i.ju = fcmp ogt float %i.jt, f0x358637BD
  br i1 %i.ju, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jv = fdiv float 1.000000e+00, %i.jt          ; 2 uses
  %i.jw = fcmp ogt float %i.jv, 1.000000e+02
  %spec.store.select6 = select i1 %i.jw, float 1.000000e+02, float %i.jv
  %i.jx = insertelement <2 x float> poison, float %spec.store.select6, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jz = fmul <2 x float> %i.jq, %i.jy
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ka = phi <2 x float> [ %i.jz, %bb.u ], [ %i.jq, %bb.t ] ; 2 uses
  %i.kb = fmul <2 x float> %i.jb, %i.ka           ; 2 uses
  %i.kc = shl nuw nsw i32 %i.ji, 2
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.kd ; 4 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.jl ; 4 uses
  %i.kg = load <2 x float>, ptr %i.kf, align 4, !tbaa !31
  %i.kh = fadd <2 x float> %i.kb, %i.kg
  store <2 x float> %i.kh, ptr %i.ke, align 4, !tbaa !31
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kj = fmul <2 x float> %i.jd, %i.ka           ; 2 uses
  %i.kk = load <2 x float>, ptr %i.kf, align 4, !tbaa !31
  %i.kl = fadd <2 x float> %i.kj, %i.kk
  store <2 x float> %i.kl, ptr %i.ki, align 4, !tbaa !31
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kn = load <2 x float>, ptr %i.kf, align 4, !tbaa !31
  %i.ko = fsub <2 x float> %i.kn, %i.kj
  store <2 x float> %i.ko, ptr %i.km, align 4, !tbaa !31
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kq = load <2 x float>, ptr %i.kf, align 4, !tbaa !31
  %i.kr = fsub <2 x float> %i.kq, %i.kb
  store <2 x float> %i.kr, ptr %i.kp, align 4, !tbaa !31
  %i.ks = trunc i32 %spec.select to i16
  %i.kt = insertelement <2 x i16> poison, i16 %i.ks, i64 0
  %i.ku = trunc i32 %.0424549 to i16
  %i.kv = insertelement <2 x i16> %i.kt, i16 %i.ku, i64 1
  %i.kw = shufflevector <2 x i16> %i.kv, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.kx = trunc i32 %spec.select to i16           ; 3 uses
  %i.ky = trunc i32 %.0424549 to i16              ; 3 uses
  %i.kz = add <4 x i16> %i.kw, <i16 1, i16 1, i16 2, i16 2> ; 3 uses
  %i.la = shufflevector <4 x i16> %i.kz, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 0, i32 0, i32 1>
  %i.lb = add i16 %i.kx, 1
  store <8 x i16> %i.la, ptr %i.jf, align 2, !tbaa !136
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store i16 %i.ky, ptr %i.lc, align 2, !tbaa !136
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jf, i64 18
  store i16 %i.ky, ptr %i.ld, align 2, !tbaa !136
  %i.le = getelementptr inbounds nuw i8, ptr %i.jf, i64 20
  store i16 %i.kx, ptr %i.le, align 2, !tbaa !136
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jf, i64 22
  store i16 %i.lb, ptr %i.lf, align 2, !tbaa !136
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.lh = extractelement <4 x i16> %i.kz, i64 3   ; 2 uses
  store i16 %i.lh, ptr %i.lg, align 2, !tbaa !136
  %i.li = getelementptr inbounds nuw i8, ptr %i.jf, i64 26
  %i.lj = shufflevector <4 x i16> %i.kz, <4 x i16> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.lk = insertelement <4 x i16> %i.lj, i16 %i.ky, i64 1
  %i.ll = insertelement <4 x i16> %i.lk, i16 %i.kx, i64 3
  %i.lm = add <4 x i16> %i.ll, <i16 0, i16 3, i16 poison, i16 3>
  %i.ln = shufflevector <4 x i16> %i.lm, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x i16> %i.ln, ptr %i.li, align 2, !tbaa !136
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jf, i64 34
  store i16 %i.lh, ptr %i.lo, align 2, !tbaa !136
  %i.lp = getelementptr inbounds nuw i8, ptr %i.jf, i64 36 ; 2 uses
  %exitcond580.not = icmp eq i64 %indvars.iv.next577, %wide.trip.count579
  br i1 %exitcond580.not, label %.lr.ph554, label %bb.t, !llvm.loop !567

bb.w:                                             ; preds = %.lr.ph554, %bb.w
  %i.lq = phi ptr [ %.pre593, %.lr.ph554 ], [ %i.ms, %bb.w ]
  %indvars.iv581 = phi i64 [ 0, %.lr.ph554 ], [ %indvars.iv.next582, %bb.w ] ; 2 uses
  %.idx607 = shl nuw nsw i64 %indvars.iv581, 5
  %i.lr = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx607 ; 4 uses
  %i.ls = load i64, ptr %i.lr, align 4
  store i64 %i.ls, ptr %i.lq, align 4
  %i.lt = load ptr, ptr %i.je, align 8, !tbaa !134
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store i64 %i.f, ptr %i.lu, align 4
  %i.lv = load ptr, ptr %i.je, align 8, !tbaa !134 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store i32 %i.o, ptr %i.lw, align 4, !tbaa !138
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 20
  %i.lz = load i64, ptr %i.lx, align 4
  store i64 %i.lz, ptr %i.ly, align 4
  %i.ma = load ptr, ptr %i.je, align 8, !tbaa !134
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 28
  store i64 %i.f, ptr %i.mb, align 4
  %i.mc = load ptr, ptr %i.je, align 8, !tbaa !134 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 36
  store i32 %3, ptr %i.md, align 4, !tbaa !138
  %i.me = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 40
  %i.mg = load i64, ptr %i.me, align 4
  store i64 %i.mg, ptr %i.mf, align 4
  %i.mh = load ptr, ptr %i.je, align 8, !tbaa !134
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 48
  store i64 %i.f, ptr %i.mi, align 4
  %i.mj = load ptr, ptr %i.je, align 8, !tbaa !134 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 56
  store i32 %3, ptr %i.mk, align 4, !tbaa !138
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 60
  %i.mn = load i64, ptr %i.ml, align 4
  store i64 %i.mn, ptr %i.mm, align 4
  %i.mo = load ptr, ptr %i.je, align 8, !tbaa !134
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 68
  store i64 %i.f, ptr %i.mp, align 4
  %i.mq = load ptr, ptr %i.je, align 8, !tbaa !134 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 76
  store i32 %i.o, ptr %i.mr, align 4, !tbaa !138
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 80 ; 2 uses
  store ptr %i.ms, ptr %i.je, align 8, !tbaa !134
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %exitcond585.not = icmp eq i64 %indvars.iv.next582, %i.as
  br i1 %exitcond585.not, label %.loopexit534, label %bb.w, !llvm.loop !568

.loopexit534:                                     ; preds = %bb.q, %bb.r, %bb.w
  %i.mt = and i32 %i.af, 65535
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !94
  %i.mw = add i32 %i.mv, %i.mt
  store i32 %i.mw, ptr %i.mu, align 4, !tbaa !94
  br label %.loopexit

.lr.ph557:                                        ; preds = %bb.b
  %i.mx = mul nsw i32 %i.h, 6
  %i.my = shl nsw i32 %i.h, 2
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.mx, i32 noundef %i.my)
  %i.mz = fmul float %5, 5.000000e-01
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.nd = zext nneg i32 %2 to i64
  %wide.trip.count589 = zext nneg i32 %i.h to i64
  %i.ne = insertelement <2 x float> poison, float %i.mz, i64 0
  %i.nf = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph557, %bb.z
  %indvars.iv586 = phi i64 [ 0, %.lr.ph557 ], [ %indvars.iv.next587, %bb.z ] ; 2 uses
  %indvars.iv.next587 = add nuw nsw i64 %indvars.iv586, 1 ; 4 uses
  %i.ng = icmp eq i64 %indvars.iv.next587, %i.nd
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv586 ; 3 uses
  %i.ni = select i1 %i.ng, i64 0, i64 %indvars.iv.next587
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ni ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nm = load <2 x float>, ptr %i.nj, align 4, !tbaa !31
  %i.nn = load <2 x float>, ptr %i.nh, align 4, !tbaa !31 ; 3 uses
  %i.no = fsub <2 x float> %i.nm, %i.nn           ; 5 uses
  %foldExtExtBinop620 = fmul <2 x float> %i.no, %i.no
  %i.np = extractelement <2 x float> %foldExtExtBinop620, i64 1
  %i.nq = extractelement <2 x float> %i.no, i64 0 ; 2 uses
  %i.nr = tail call float @llvm.fmuladd.f32(float %i.nq, float %i.nq, float %i.np) ; 2 uses
  %i.ns = fcmp ogt float %i.nr, 0.000000e+00
  br i1 %i.ns, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.nt = insertelement <4 x float> poison, float %i.nr, i64 0
  %i.nu = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.nt)
  %i.nv = shufflevector <4 x float> %i.nu, <4 x float> poison, <2 x i32> zeroinitializer
  %i.nw = fmul <2 x float> %i.no, %i.nv
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.nx = phi <2 x float> [ %i.nw, %bb.y ], [ %i.no, %bb.x ]
  %i.ny = shufflevector <2 x float> %i.nx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nz = fmul <2 x float> %i.nf, %i.ny           ; 4 uses
  %i.oa = load ptr, ptr %i.na, align 8, !tbaa !134 ; 2 uses
  %i.ob = fadd <2 x float> %i.nn, %i.nz
  %i.oc = fsub <2 x float> %i.nn, %i.nz
  %i.od = shufflevector <2 x float> %i.ob, <2 x float> %i.oc, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.od, ptr %i.oa, align 4, !tbaa !31
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store i64 %i.f, ptr %i.oe, align 4
  %i.of = load ptr, ptr %i.na, align 8, !tbaa !134 ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store i32 %3, ptr %i.og, align 4, !tbaa !138
  %i.oh = load float, ptr %i.nj, align 4, !tbaa !129
  %i.oi = extractelement <2 x float> %i.nz, i64 0 ; 3 uses
  %i.oj = fadd float %i.oi, %i.oh
  %i.ok = getelementptr inbounds nuw i8, ptr %i.of, i64 20
  store float %i.oj, ptr %i.ok, align 4, !tbaa !142
  %i.ol = load float, ptr %i.nk, align 4, !tbaa !130
  %i.om = extractelement <2 x float> %i.nz, i64 1 ; 3 uses
  %i.on = fsub float %i.ol, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  store float %i.on, ptr %i.oo, align 4, !tbaa !143
  %i.op = getelementptr inbounds nuw i8, ptr %i.of, i64 28
  store i64 %i.f, ptr %i.op, align 4
  %i.oq = load ptr, ptr %i.na, align 8, !tbaa !134 ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 36
  store i32 %3, ptr %i.or, align 4, !tbaa !138
  %i.os = load float, ptr %i.nj, align 4, !tbaa !129
  %i.ot = fsub float %i.os, %i.oi
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 40
  store float %i.ot, ptr %i.ou, align 4, !tbaa !142
  %i.ov = load float, ptr %i.nk, align 4, !tbaa !130
  %i.ow = fadd float %i.om, %i.ov
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oq, i64 44
  store float %i.ow, ptr %i.ox, align 4, !tbaa !143
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oq, i64 48
  store i64 %i.f, ptr %i.oy, align 4
  %i.oz = load ptr, ptr %i.na, align 8, !tbaa !134 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 56
  store i32 %3, ptr %i.pa, align 4, !tbaa !138
  %i.pb = load float, ptr %i.nh, align 4, !tbaa !129
  %i.pc = fsub float %i.pb, %i.oi
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 60
  store float %i.pc, ptr %i.pd, align 4, !tbaa !142
  %i.pe = load float, ptr %i.nl, align 4, !tbaa !130
  %i.pf = fadd float %i.om, %i.pe
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oz, i64 64
  store float %i.pf, ptr %i.pg, align 4, !tbaa !143
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oz, i64 68
  store i64 %i.f, ptr %i.ph, align 4
  %i.pi = load ptr, ptr %i.na, align 8, !tbaa !134 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 76
  store i32 %3, ptr %i.pj, align 4, !tbaa !138
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 80
  store ptr %i.pk, ptr %i.na, align 8, !tbaa !134
  %i.pl = load i32, ptr %i.nb, align 4, !tbaa !94 ; 2 uses
  %i.pm = trunc i32 %i.pl to i16                  ; 5 uses
  %i.pn = load ptr, ptr %i.nc, align 8, !tbaa !115 ; 7 uses
  store i16 %i.pm, ptr %i.pn, align 2, !tbaa !136
  %i.po = add i16 %i.pm, 1
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 2
  store i16 %i.po, ptr %i.pp, align 2, !tbaa !136
  %i.pq = add i16 %i.pm, 2                        ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  store i16 %i.pq, ptr %i.pr, align 2, !tbaa !136
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 6
  store i16 %i.pm, ptr %i.ps, align 2, !tbaa !136
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  store i16 %i.pq, ptr %i.pt, align 2, !tbaa !136
  %i.pu = add i16 %i.pm, 3
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pn, i64 10
  store i16 %i.pu, ptr %i.pv, align 2, !tbaa !136
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pn, i64 12
  store ptr %i.pw, ptr %i.nc, align 8, !tbaa !115
  %i.px = add i32 %i.pl, 4
  store i32 %i.px, ptr %i.nb, align 4, !tbaa !94
  %exitcond590.not = icmp eq i64 %indvars.iv.next587, %wide.trip.count589
  br i1 %exitcond590.not, label %.loopexit, label %bb.x, !llvm.loop !569

.loopexit:                                        ; preds = %bb.z, %.loopexit534, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 3
  %i.b = icmp ult i32 %3, 16777216
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = load i64, ptr %i.d, align 8              ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !93
  %i.h = and i32 %i.g, 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.lr.ph141, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load float, ptr %i.i, align 8, !tbaa !105
  %i.k = and i32 %3, 16777215
  %reass.mul = mul i32 %2, 9
  %i.l = add i32 %reass.mul, -6
  %i.m = shl nuw nsw i32 %2, 1                    ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.l, i32 noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !94   ; 8 uses
  %i.p = add i32 %i.o, 1                          ; 2 uses
  %i.q = trunc i32 %i.o to i16                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = add i32 %i.o, 65534                      ; 3 uses
  %.promoted = load ptr, ptr %i.r, align 8, !tbaa !115 ; 2 uses
  %xtraiter = and i32 %2, 1
  %i.t = icmp eq i32 %2, 3
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %i.u = and i32 %2, 2147483646
  %i.v = add nsw i32 %i.u, -4
  br label %bb.g

.unr-lcssa:                                       ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph
  %.epil.init = phi ptr [ %.promoted, %.lr.ph ], [ %i.bi, %.unr-lcssa ] ; 4 uses
  %.0124131.epil.init = phi i32 [ 2, %.lr.ph ], [ %i.bj, %.unr-lcssa ]
  %lcmp.mod174 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod174)
  store i16 %i.q, ptr %.epil.init, align 2, !tbaa !136
  %i.w = shl nuw i32 %.0124131.epil.init, 1       ; 2 uses
  %i.x = add i32 %i.s, %i.w
  %i.y = trunc i32 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %.epil.init, i64 2
  store i16 %i.y, ptr %i.z, align 2, !tbaa !136
  %i.aa = add i32 %i.w, %i.o
  %i.ab = trunc i32 %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %.epil.init, i64 4
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !136
  %i.ad = getelementptr inbounds nuw i8, ptr %.epil.init, i64 6
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa172 = phi ptr [ %i.bi, %.unr-lcssa ], [ %i.ad, %.epil.preheader ]
  store ptr %.lcssa172, ptr %i.r, align 8, !tbaa !115
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !75  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 76 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !101
  %.not.i = icmp sgt i32 %2, %i.ag
  br i1 %.not.i, label %bb.d, label %.lr.ph134.preheader

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !51 ; 2 uses
  %.not4.i = icmp eq ptr %i.ai, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ai) #35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = zext nneg i32 %2 to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ak) #35
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !51
  store i32 %2, ptr %i.af, align 4, !tbaa !101
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !75
  br label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %bb.f, %bb.c
  %i.am = phi ptr [ %i.ae, %bb.c ], [ %.pre, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !140 ; 3 uses
  %i.ap = add nsw i32 %2, -1                      ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.aq = zext nneg i32 %i.ap to i64
  br label %.lr.ph134

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %i.ar = phi ptr [ %.promoted, %.lr.ph.new ], [ %i.bi, %bb.g ] ; 7 uses
  %.0124131 = phi i32 [ 2, %.lr.ph.new ], [ %i.bj, %bb.g ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ] ; 2 uses
  store i16 %i.q, ptr %i.ar, align 2, !tbaa !136
  %i.as = shl nuw i32 %.0124131, 1                ; 2 uses
  %i.at = add i32 %i.s, %i.as
  %i.au = trunc i32 %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i16 %i.au, ptr %i.av, align 2, !tbaa !136
  %i.aw = add i32 %i.as, %i.o
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !136
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  store i16 %i.q, ptr %i.az, align 2, !tbaa !136
  %i.ba = shl nuw i32 %.0124131, 1
  %i.bb = or disjoint i32 %i.ba, 2                ; 2 uses
  %i.bc = add i32 %i.s, %i.bb
  %i.bd = trunc i32 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !136
  %i.bf = add i32 %i.bb, %i.o
  %i.bg = trunc i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 10
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !136
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 12 ; 3 uses
  %i.bj = add nuw nsw i32 %.0124131, 2            ; 2 uses
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter, %i.v
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.g, !llvm.loop !570

.lr.ph137:                                        ; preds = %bb.i
  %i.bk = fmul float %i.j, 5.000000e-01
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %wide.trip.count153 = zext nneg i32 %2 to i64
  %i.bn = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.j

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph134.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.0123132 = phi i64 [ %i.aq, %.lr.ph134.preheader ], [ %indvars.iv, %bb.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0123132
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.br = load <2 x float>, ptr %i.bq, align 4, !tbaa !31
  %i.bs = load <2 x float>, ptr %i.bp, align 4, !tbaa !31
  %i.bt = fsub <2 x float> %i.br, %i.bs           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.bt, %i.bt
  %i.bu = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bv = extractelement <2 x float> %i.bt, i64 0 ; 2 uses
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.bu) ; 2 uses
  %i.bx = fcmp ogt float %i.bw, 0.000000e+00
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph134
  %i.by = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.bz = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.by)
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.bt, %i.ca
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph134
  %i.cc = phi <2 x float> [ %i.cb, %bb.h ], [ %i.bt, %.lr.ph134 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0123132 ; 2 uses
  %i.ce = extractelement <2 x float> %i.cc, i64 1
  store float %i.ce, ptr %i.cd, align 4, !tbaa !129
  %i.cf = extractelement <2 x float> %i.cc, i64 0
  %i.cg = fneg float %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store float %i.cg, ptr %i.ch, align 4, !tbaa !130
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond149.not, label %.lr.ph137, label %.lr.ph134, !llvm.loop !571

._crit_edge138:                                   ; preds = %bb.l
  %i.ci = and i32 %i.m, 65534
  %i.cj = load i32, ptr %i.n, align 4, !tbaa !94
  %i.ck = add i32 %i.cj, %i.ci
  store i32 %i.ck, ptr %i.n, align 4, !tbaa !94
  br label %bb.p

bb.j:                                             ; preds = %.lr.ph137, %bb.l
  %indvars.iv150 = phi i64 [ 0, %.lr.ph137 ], [ %indvars.iv.next151, %bb.l ] ; 5 uses
  %.0119135 = phi i32 [ %i.ap, %.lr.ph137 ], [ %i.ei, %bb.l ] ; 2 uses
  %i.cl = sext i32 %.0119135 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv150
  %i.co = load <2 x float>, ptr %i.cm, align 4, !tbaa !31
  %i.cp = load <2 x float>, ptr %i.cn, align 4, !tbaa !31
  %i.cq = fadd <2 x float> %i.co, %i.cp
  %i.cr = fmul <2 x float> %i.cq, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop170 = fmul <2 x float> %i.cr, %i.cr
  %i.cs = extractelement <2 x float> %foldExtExtBinop170, i64 1
  %i.ct = extractelement <2 x float> %i.cr, i64 0 ; 2 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %i.cs) ; 2 uses
  %i.cv = fcmp ogt float %i.cu, f0x358637BD
  br i1 %i.cv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cw = fdiv float 1.000000e+00, %i.cu          ; 2 uses
  %i.cx = fcmp ogt float %i.cw, 1.000000e+02
  %spec.store.select = select i1 %i.cx, float 1.000000e+02, float %i.cw
  %i.cy = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x float> %i.cr, %i.cz
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.db = phi <2 x float> [ %i.da, %bb.k ], [ %i.cr, %bb.j ]
  %i.dc = fmul <2 x float> %i.bo, %i.db           ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv150 ; 2 uses
  %i.de = load ptr, ptr %i.bl, align 8, !tbaa !134 ; 2 uses
  %i.df = load <2 x float>, ptr %i.dd, align 4, !tbaa !31
  %i.dg = fsub <2 x float> %i.df, %i.dc
  store <2 x float> %i.dg, ptr %i.de, align 4, !tbaa !31
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 %i.e, ptr %i.dh, align 4
  %i.di = load ptr, ptr %i.bl, align 8, !tbaa !134 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i32 %3, ptr %i.dj, align 4, !tbaa !138
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.dl = load <2 x float>, ptr %i.dd, align 4, !tbaa !31
  %i.dm = fadd <2 x float> %i.dc, %i.dl
  store <2 x float> %i.dm, ptr %i.dk, align 4, !tbaa !31
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  store i64 %i.e, ptr %i.dn, align 4
  %i.do = load ptr, ptr %i.bl, align 8, !tbaa !134 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  store i32 %i.k, ptr %i.dp, align 4, !tbaa !138
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  store ptr %i.dq, ptr %i.bl, align 8, !tbaa !134
  %indvars.iv150.tr = trunc nuw i64 %indvars.iv150 to i32
  %i.dr = shl nuw i32 %indvars.iv150.tr, 1        ; 2 uses
  %i.ds = add i32 %i.dr, %i.o
  %i.dt = trunc i32 %i.ds to i16                  ; 2 uses
  %i.du = load ptr, ptr %i.bm, align 8, !tbaa !115 ; 7 uses
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !136
  %i.dv = shl i32 %.0119135, 1                    ; 2 uses
  %i.dw = add i32 %i.dv, %i.o
  %i.dx = trunc i32 %i.dw to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !136
  %i.dz = add i32 %i.dv, %i.p
  %i.ea = trunc i32 %i.dz to i16                  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !136
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 6
  store i16 %i.ea, ptr %i.ec, align 2, !tbaa !136
  %i.ed = add i32 %i.dr, %i.p
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !136
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 10
  store i16 %i.dt, ptr %i.eg, align 2, !tbaa !136
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store ptr %i.eh, ptr %i.bm, align 8, !tbaa !115
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.ei = trunc nuw nsw i64 %indvars.iv150 to i32
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge138, label %bb.j, !llvm.loop !572

.lr.ph141:                                        ; preds = %bb.b
  %i.ej = mul i32 %2, 3
  %i.ek = add i32 %i.ej, -6
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.ek, i32 noundef %2)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %wide.trip.count158 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter176 = and i64 %wide.trip.count158, 1
  %.pre161 = load ptr, ptr %i.el, align 8, !tbaa !134
  %unroll_iter181 = and i64 %wide.trip.count158, 2147483646
  br label %bb.m

.lr.ph143.unr-lcssa:                              ; preds = %bb.m
  %lcmp.mod179.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod179.not, label %.lr.ph143, label %.epil.preheader175

.epil.preheader175:                               ; preds = %.lr.ph143.unr-lcssa
  %lcmp.mod180 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod180)
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next156.1
  %i.en = load i64, ptr %i.em, align 4
  store i64 %i.en, ptr %i.fp, align 4
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !134
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %i.e, ptr %i.ep, align 4
  %i.eq = load ptr, ptr %i.el, align 8, !tbaa !134 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i32 %3, ptr %i.er, align 4, !tbaa !138
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  store ptr %i.es, ptr %i.el, align 8, !tbaa !134
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.unr-lcssa, %.epil.preheader175
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !94 ; 7 uses
  %i.ev = trunc i32 %i.eu to i16                  ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted145 = load ptr, ptr %i.ew, align 8, !tbaa !115 ; 2 uses
  %i.ex = add nsw i32 %2, -2                      ; 2 uses
  %i.ey = add nsw i32 %2, -3
  %xtraiter185 = and i32 %i.ex, 3                 ; 3 uses
  %i.ez = icmp ult i32 %i.ey, 3
  br i1 %i.ez, label %.epil.preheader184, label %.lr.ph143.new

.lr.ph143.new:                                    ; preds = %.lr.ph143
  %unroll_iter192 = and i32 %i.ex, -4
  %invariant.op = add i32 2, %i.eu
  %invariant.op200 = add i32 3, %i.eu
  br label %bb.o

bb.m:                                             ; preds = %bb.m, %.lr.ph141
  %i.fa = phi ptr [ %.pre161, %.lr.ph141 ], [ %i.fp, %bb.m ]
  %indvars.iv155 = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next156.1, %bb.m ] ; 3 uses
  %niter182 = phi i64 [ 0, %.lr.ph141 ], [ %niter182.next.1, %bb.m ]
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv155
  %i.fc = load i64, ptr %i.fb, align 4
  store i64 %i.fc, ptr %i.fa, align 4
  %i.fd = load ptr, ptr %i.el, align 8, !tbaa !134
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i64 %i.e, ptr %i.fe, align 4
  %i.ff = load ptr, ptr %i.el, align 8, !tbaa !134 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i32 %3, ptr %i.fg, align 4, !tbaa !138
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 20 ; 2 uses
  store ptr %i.fh, ptr %i.el, align 8, !tbaa !134
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv155
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i64, ptr %i.fj, align 4
  store i64 %i.fk, ptr %i.fh, align 4
  %i.fl = load ptr, ptr %i.el, align 8, !tbaa !134
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 %i.e, ptr %i.fm, align 4
  %i.fn = load ptr, ptr %i.el, align 8, !tbaa !134 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i32 %3, ptr %i.fo, align 4, !tbaa !138
end_hunk_0
begin_hunk_1_@_ZN14ImTriangulator14ReclassifyNodeEP18ImTriangulatorNode:bb.a
.lr.ph:                                           ; preds = %bb.i
  %i.bv = zext nneg i32 %i.bs to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.bw = trunc nuw i64 %i.by to i32
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %bb.k, label %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit, !llvm.loop !591

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv.i2553 = phi i64 [ %i.bv, %.lr.ph ], [ %i.by, %bb.j ]
  %i.by = add nsw i64 %indvars.iv.i2553, -1       ; 4 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !235
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !234
  %i.cd = icmp eq i32 %i.cc, %i.bq
  br i1 %i.cd, label %bb.l, label %bb.j, !llvm.loop !591

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.by
  %i.cf = zext nneg i32 %i.bs to i64
  %i.cg = getelementptr [8 x i8], ptr %i.bt, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !235
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !235
  %i.cj = add nsw i32 %i.bs, -1
  store i32 %i.cj, ptr %i.br, align 8, !tbaa !236
  br label %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit

_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit: ; preds = %bb.j, %bb.f, %bb.i, %bb.e, %bb.l, %bb.h, %bb.d
  br i1 %brmerge, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit
  %.mux50 = select i1 %i.x, i64 40, i64 24
  %.mux = select i1 %i.x, i64 32, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %.mux
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !238
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %.mux50 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !236 ; 2 uses
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !236
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cp
  store ptr %1, ptr %i.cq, align 8, !tbaa !235
  br label %bb.m

bb.m:                                             ; preds = %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit, %.sink.split
  store i32 %.0, ptr %1, align 8, !tbaa !233
  br label %bb.n

bb.n:                                             ; preds = %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit, %bb.m
  ret void
}

declare noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN10ImDrawList20AddConcavePolyFilledEPK6ImVec2ij(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 align 2 {
bb.a:
  %4 = alloca %struct.ImTriangulator, align 8     ; 14 uses
  %i.a = alloca [3 x i32], align 8                ; 8 uses
  %i.b = icmp slt i32 %2, 3
  %i.c = icmp ult i32 %3, 16777216
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store i32 0, ptr %4, align 8, !tbaa !225
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.h, align 8, !tbaa !238
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.i, align 8, !tbaa !236
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !93
  %i.l = and i32 %i.k, 4
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.lr.ph139, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load float, ptr %i.m, align 8, !tbaa !105
  %i.o = and i32 %3, 16777215
  %reass.mul = mul i32 %2, 9
  %i.p = add i32 %reass.mul, -6
  %i.q = shl nuw nsw i32 %2, 1                    ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.p, i32 noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !94   ; 5 uses
  %i.t = add i32 %i.s, 1                          ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !75   ; 3 uses
  %i.v = mul i32 %2, 48
  %i.w = ashr exact i32 %i.v, 3                   ; 2 uses
  %i.x = or disjoint i32 %i.w, 1                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 76 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !101
  %.not.i.not = icmp slt i32 %i.w, %i.z
  br i1 %.not.i.not, label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !51 ; 2 uses
  %.not4.i = icmp eq ptr %i.ab, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ab) #35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = sext i32 %i.x to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ad) #35
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !51
  store i32 %i.x, ptr %i.y, align 4, !tbaa !101
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !75
  br label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit

_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit:    ; preds = %bb.c, %bb.f
  %i.af = phi ptr [ %i.u, %bb.c ], [ %.pre, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !140
  call void @_ZN14ImTriangulator4InitEPK6ImVec2iPv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, i32 noundef %2, ptr noundef %i.ah)
  %i.ai = load i32, ptr %4, align 8, !tbaa !225
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.an = shufflevector <2 x i32> %i.am, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  call void @_ZN14ImTriangulator15GetNextTriangleEPj(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %i.a)
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !115 ; 3 uses
  %i.ap = load <2 x i32>, ptr %i.a, align 8, !tbaa !206
  %i.aq = shl <2 x i32> %i.ap, splat (i32 1)
  %i.ar = add <2 x i32> %i.aq, %i.an
  %i.as = trunc <2 x i32> %i.ar to <2 x i16>
  store <2 x i16> %i.as, ptr %i.ao, align 2, !tbaa !136
  %i.at = load i32, ptr %i.al, align 8, !tbaa !206
  %i.au = shl i32 %i.at, 1
  %i.av = add i32 %i.au, %i.s
  %i.aw = trunc i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !136
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 6
  store ptr %i.ay, ptr %i.ak, align 8, !tbaa !115
  %i.az = load i32, ptr %4, align 8, !tbaa !225
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.g, label %._crit_edge, !llvm.loop !592

._crit_edge:                                      ; preds = %bb.g, %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !75  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 76 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !101
  %.not.i122 = icmp sgt i32 %2, %i.bd
  br i1 %.not.i122, label %bb.h, label %.lr.ph132.preheader

bb.h:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 80 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !51 ; 2 uses
  %.not4.i123 = icmp eq ptr %i.bf, null
  br i1 %.not4.i123, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.bf) #35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = zext nneg i32 %2 to i64
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bh) #35
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !51
  store i32 %2, ptr %i.bc, align 4, !tbaa !101
  %.pre154 = load ptr, ptr %i.d, align 8, !tbaa !75
  br label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %bb.j, %._crit_edge
  %i.bj = phi ptr [ %i.bb, %._crit_edge ], [ %.pre154, %bb.j ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !140 ; 3 uses
  %i.bm = add nsw i32 %2, -1                      ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.bn = zext nneg i32 %i.bm to i64
  br label %.lr.ph132

.lr.ph135:                                        ; preds = %bb.l
  %i.bo = fmul float %i.n, 5.000000e-01
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %wide.trip.count147 = zext nneg i32 %2 to i64
  %i.br = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.m

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph132.preheader ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.0118130 = phi i64 [ %i.bn, %.lr.ph132.preheader ], [ %indvars.iv, %bb.l ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0118130
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bv = load <2 x float>, ptr %i.bu, align 4, !tbaa !31
  %i.bw = load <2 x float>, ptr %i.bt, align 4, !tbaa !31
  %i.bx = fsub <2 x float> %i.bv, %i.bw           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.bx, %i.bx
  %i.by = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bz = extractelement <2 x float> %i.bx, i64 0 ; 2 uses
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.by) ; 2 uses
  %i.cb = fcmp ogt float %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph132
  %i.cc = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cd = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.cc)
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.bx, %i.ce
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph132
  %i.cg = phi <2 x float> [ %i.cf, %bb.k ], [ %i.bx, %.lr.ph132 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.0118130 ; 2 uses
  %i.ci = extractelement <2 x float> %i.cg, i64 1
  store float %i.ci, ptr %i.ch, align 4, !tbaa !129
  %i.cj = extractelement <2 x float> %i.cg, i64 0
  %i.ck = fneg float %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store float %i.ck, ptr %i.cl, align 4, !tbaa !130
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph135, label %.lr.ph132, !llvm.loop !593

._crit_edge136:                                   ; preds = %bb.o
  %i.cm = and i32 %i.q, 65534
  %i.cn = load i32, ptr %i.r, align 4, !tbaa !94
  %i.co = add i32 %i.cn, %i.cm
  store i32 %i.co, ptr %i.r, align 4, !tbaa !94
  br label %bb.u

bb.m:                                             ; preds = %.lr.ph135, %bb.o
  %indvars.iv144 = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next145, %bb.o ] ; 5 uses
  %.0114133 = phi i32 [ %i.bm, %.lr.ph135 ], [ %i.em, %bb.o ] ; 2 uses
  %i.cp = sext i32 %.0114133 to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv144
  %i.cs = load <2 x float>, ptr %i.cq, align 4, !tbaa !31
  %i.ct = load <2 x float>, ptr %i.cr, align 4, !tbaa !31
  %i.cu = fadd <2 x float> %i.cs, %i.ct
  %i.cv = fmul <2 x float> %i.cu, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop165 = fmul <2 x float> %i.cv, %i.cv
  %i.cw = extractelement <2 x float> %foldExtExtBinop165, i64 1
  %i.cx = extractelement <2 x float> %i.cv, i64 0 ; 2 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.cw) ; 2 uses
  %i.cz = fcmp ogt float %i.cy, f0x358637BD
  br i1 %i.cz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.da = fdiv float 1.000000e+00, %i.cy          ; 2 uses
  %i.db = fcmp ogt float %i.da, 1.000000e+02
  %spec.store.select = select i1 %i.db, float 1.000000e+02, float %i.da
  %i.dc = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x float> %i.cv, %i.dd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.df = phi <2 x float> [ %i.de, %bb.n ], [ %i.cv, %bb.m ]
  %i.dg = fmul <2 x float> %i.bs, %i.df           ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv144 ; 2 uses
  %i.di = load ptr, ptr %i.bp, align 8, !tbaa !134 ; 2 uses
  %i.dj = load <2 x float>, ptr %i.dh, align 4, !tbaa !31
  %i.dk = fsub <2 x float> %i.dj, %i.dg
  store <2 x float> %i.dk, ptr %i.di, align 4, !tbaa !31
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.f, ptr %i.dl, align 4
  %i.dm = load ptr, ptr %i.bp, align 8, !tbaa !134 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i32 %3, ptr %i.dn, align 4, !tbaa !138
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  %i.dp = load <2 x float>, ptr %i.dh, align 4, !tbaa !31
  %i.dq = fadd <2 x float> %i.dg, %i.dp
  store <2 x float> %i.dq, ptr %i.do, align 4, !tbaa !31
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 28
  store i64 %i.f, ptr %i.dr, align 4
  %i.ds = load ptr, ptr %i.bp, align 8, !tbaa !134 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 36
  store i32 %i.o, ptr %i.dt, align 4, !tbaa !138
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  store ptr %i.du, ptr %i.bp, align 8, !tbaa !134
  %indvars.iv144.tr = trunc nuw i64 %indvars.iv144 to i32
  %i.dv = shl nuw i32 %indvars.iv144.tr, 1        ; 2 uses
  %i.dw = add i32 %i.dv, %i.s
  %i.dx = trunc i32 %i.dw to i16                  ; 2 uses
  %i.dy = load ptr, ptr %i.bq, align 8, !tbaa !115 ; 7 uses
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !136
  %i.dz = shl i32 %.0114133, 1                    ; 2 uses
  %i.ea = add i32 %i.dz, %i.s
  %i.eb = trunc i32 %i.ea to i16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !136
  %i.ed = add i32 %i.dz, %i.t
  %i.ee = trunc i32 %i.ed to i16                  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !136
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 6
  store i16 %i.ee, ptr %i.eg, align 2, !tbaa !136
  %i.eh = add i32 %i.dv, %i.t
  %i.ei = trunc i32 %i.eh to i16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i16 %i.ei, ptr %i.ej, align 2, !tbaa !136
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 10
  store i16 %i.dx, ptr %i.ek, align 2, !tbaa !136
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store ptr %i.el, ptr %i.bq, align 8, !tbaa !115
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.em = trunc nuw nsw i64 %indvars.iv144 to i32
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %._crit_edge136, label %bb.m, !llvm.loop !594

.lr.ph139:                                        ; preds = %bb.b
  %i.en = mul i32 %2, 3
  %i.eo = add i32 %i.en, -6
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.eo, i32 noundef %2)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %wide.trip.count152 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count152, 1
  %.pre155 = load ptr, ptr %i.ep, align 8, !tbaa !134
  %unroll_iter = and i64 %wide.trip.count152, 2147483646
  br label %bb.s

._crit_edge140.unr-lcssa:                         ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge140, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge140.unr-lcssa
  %lcmp.mod167 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next150.1
  %i.er = load i64, ptr %i.eq, align 4
  store i64 %i.er, ptr %i.gf, align 4
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !134
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i64 %i.f, ptr %i.et, align 4
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !134 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i32 %3, ptr %i.ev, align 4, !tbaa !138
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  store ptr %i.ew, ptr %i.ep, align 8, !tbaa !134
  br label %._crit_edge140

._crit_edge140:                                   ; preds = %._crit_edge140.unr-lcssa, %.epil.preheader
  %i.ex = load ptr, ptr %i.d, align 8, !tbaa !75  ; 3 uses
  %i.ey = mul i32 %2, 48
  %i.ez = ashr exact i32 %i.ey, 3                 ; 2 uses
  %i.fa = or disjoint i32 %i.ez, 1                ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 76 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !101
  %.not.i125.not = icmp slt i32 %i.ez, %i.fc
  br i1 %.not.i125.not, label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127, label %bb.p

bb.p:                                             ; preds = %._crit_edge140
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 80 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !51 ; 2 uses
  %.not4.i126 = icmp eq ptr %i.fe, null
  br i1 %.not4.i126, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.fe) #35
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ff = sext i32 %i.fa to i64
  %i.fg = shl nsw i64 %i.ff, 3
  %i.fh = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.fg) #35
  store ptr %i.fh, ptr %i.fd, align 8, !tbaa !51
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !101
  %.pre156 = load ptr, ptr %i.d, align 8, !tbaa !75
  br label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127

_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127: ; preds = %._crit_edge140, %bb.r
  %i.fi = phi ptr [ %i.ex, %._crit_edge140 ], [ %.pre156, %bb.r ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 80
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !140
  call void @_ZN14ImTriangulator4InitEPK6ImVec2iPv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %i.fk)
  %i.fl = load i32, ptr %4, align 8, !tbaa !225
  %i.fm = icmp sgt i32 %i.fl, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  br i1 %i.fm, label %.lr.ph141, label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127.._crit_edge142_crit_edge

_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127.._crit_edge142_crit_edge: ; preds = %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127
  %.pre157 = load i32, ptr %i.fn, align 4, !tbaa !94
  br label %._crit_edge142

end_hunk_1
begin_hunk_2_@_ZL40ImGui_ImplStbTrueType_FontBakedLoadGlyphP11ImFontAtlasP12ImFontConfigP11ImFontBakedPvtP11ImFontGlyph:bb.a

middle.block362:                                  ; preds = %vector.body356
  %bin.rdx363 = add <4 x i32> %i.kz, %i.ky
  %i.lb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx363) ; 2 uses
  %cmp.n364 = icmp eq i64 %n.vec355, %i.gr
  br i1 %cmp.n364, label %._crit_edge.i27.i.i, label %.lr.ph.i23.i.i.preheader

.lr.ph.i23.i.i.preheader:                         ; preds = %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i, %middle.block362
  %indvars.iv.i24.i.i.ph = phi i64 [ 0, %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i ], [ %n.vec355, %middle.block362 ]
  %.0874.i.i.i.ph = phi i32 [ 0, %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i ], [ %i.lb, %middle.block362 ]
  br label %.lr.ph.i23.i.i

.lr.ph.i23.i.i:                                   ; preds = %.lr.ph.i23.i.i.preheader, %.lr.ph.i23.i.i
  %indvars.iv.i24.i.i = phi i64 [ %indvars.iv.next.i25.i.i, %.lr.ph.i23.i.i ], [ %indvars.iv.i24.i.i.ph, %.lr.ph.i23.i.i.preheader ] ; 2 uses
  %.0874.i.i.i = phi i32 [ %i.le, %.lr.ph.i23.i.i ], [ %.0874.i.i.i.ph, %.lr.ph.i23.i.i.preheader ]
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.i24.i.i
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !206
  %i.le = add nsw i32 %i.ld, %.0874.i.i.i         ; 2 uses
  %indvars.iv.next.i25.i.i = add nuw nsw i64 %indvars.iv.i24.i.i, 1 ; 2 uses
  %exitcond.not.i26.i.i = icmp eq i64 %indvars.iv.next.i25.i.i, %i.gr
  br i1 %exitcond.not.i26.i.i, label %._crit_edge.i27.i.i, label %.lr.ph.i23.i.i, !llvm.loop !764

._crit_edge.i27.i.i:                              ; preds = %.lr.ph.i23.i.i, %middle.block362
  %.lcssa350 = phi i32 [ %i.lb, %middle.block362 ], [ %i.le, %.lr.ph.i23.i.i ]
  %i.lf = fneg float %i.ax
  %i.lg = add nsw i32 %.lcssa350, 1
  %i.lh = sext i32 %i.lg to i64
  %i.li = mul nsw i64 %i.lh, 20
  %i.lj = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.li) #35 ; 9 uses
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %_ZL16stbtt__rasterizeP13stbtt__bitmapP12stbtt__pointPiiffffiiiPv.exit.i.i, label %.lr.ph16.i.i.i.preheader

.lr.ph16.i.i.i.preheader:                         ; preds = %._crit_edge.i27.i.i
  %i.ll = insertelement <4 x float> poison, float %i.av, i64 0
  %i.lm = insertelement <4 x float> %i.ll, float %i.lf, i64 1
  %i.ln = shufflevector <4 x float> %i.lm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph16.i.i.i

.lr.ph16.i.i.i:                                   ; preds = %.lr.ph16.i.i.i.preheader, %._crit_edge11.i.i.i
  %indvars.iv27.i.i.i = phi i64 [ %indvars.iv.next28.i.i.i, %._crit_edge11.i.i.i ], [ 0, %.lr.ph16.i.i.i.preheader ] ; 2 uses
  %.08315.i.i.i = phi i32 [ %i.ls, %._crit_edge11.i.i.i ], [ 0, %.lr.ph16.i.i.i.preheader ] ; 2 uses
  %.18813.i.i.i = phi i32 [ %.2.lcssa.i.i.i, %._crit_edge11.i.i.i ], [ 0, %.lr.ph16.i.i.i.preheader ] ; 2 uses
  %i.lo = sext i32 %.08315.i.i.i to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.lo ; 4 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv27.i.i.i ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !206 ; 4 uses
  %i.ls = add nsw i32 %i.lr, %.08315.i.i.i
  %i.lt = icmp sgt i32 %i.lr, 0
  br i1 %i.lt, label %.lr.ph10.preheader.i.i.i, label %._crit_edge11.i.i.i

.lr.ph10.preheader.i.i.i:                         ; preds = %.lr.ph16.i.i.i
  %i.lu = add nsw i32 %i.lr, -1
  br label %.lr.ph10.i.i.i

.lr.ph10.i.i.i:                                   ; preds = %.lr.ph10._crit_edge.i.i.i, %.lr.ph10.preheader.i.i.i
  %i.lv = phi i32 [ %i.lr, %.lr.ph10.preheader.i.i.i ], [ %i.mr, %.lr.ph10._crit_edge.i.i.i ]
  %indvars.iv24.i28.i.i = phi i64 [ 0, %.lr.ph10.preheader.i.i.i ], [ %indvars.iv.next25.i29.i.i, %.lr.ph10._crit_edge.i.i.i ] ; 5 uses
  %.0857.i.i.i = phi i32 [ %i.lu, %.lr.ph10.preheader.i.i.i ], [ %.pre-phi.i.i.i, %.lr.ph10._crit_edge.i.i.i ]
  %.26.i.i.i = phi i32 [ %.18813.i.i.i, %.lr.ph10.preheader.i.i.i ], [ %.3.i.i.i, %.lr.ph10._crit_edge.i.i.i ] ; 3 uses
  %i.lw = sext i32 %.0857.i.i.i to i64            ; 3 uses
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !525 ; 2 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv24.i28.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !525 ; 2 uses
  %i.md = fcmp oeq float %i.lz, %i.mc
  br i1 %i.md, label %.lr.ph10._crit_edge.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph10.i.i.i
  %i.me = sext i32 %.26.i.i.i to i64
  %i.mf = getelementptr inbounds [20 x i8], ptr %i.lj, i64 %i.me ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = fcmp ogt float %i.lz, %i.mc             ; 3 uses
  %spec.store.select.i.i.i = zext i1 %i.mh to i32
  store i32 %spec.store.select.i.i.i, ptr %i.mg, align 4
  %i.mi = select i1 %i.mh, i64 %i.lw, i64 %indvars.iv24.i28.i.i
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.mi
  %i.mk = select i1 %i.mh, i64 %indvars.iv24.i28.i.i, i64 %i.lw
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.mk
  %i.mm = load <2 x float>, ptr %i.mj, align 4, !tbaa !31
  %i.mn = load <2 x float>, ptr %i.ml, align 4, !tbaa !31
  %i.mo = shufflevector <2 x float> %i.mm, <2 x float> %i.mn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mo, <4 x float> %i.ln, <4 x float> zeroinitializer)
  store <4 x float> %i.mp, ptr %i.mf, align 4, !tbaa !31
  %i.mq = add nsw i32 %.26.i.i.i, 1
  %.pre.i.i.i = load i32, ptr %i.lq, align 4, !tbaa !206
  br label %.lr.ph10._crit_edge.i.i.i

.lr.ph10._crit_edge.i.i.i:                        ; preds = %bb.ac, %.lr.ph10.i.i.i
  %i.mr = phi i32 [ %.pre.i.i.i, %bb.ac ], [ %i.lv, %.lr.ph10.i.i.i ] ; 2 uses
  %.3.i.i.i = phi i32 [ %i.mq, %bb.ac ], [ %.26.i.i.i, %.lr.ph10.i.i.i ] ; 2 uses
  %.pre-phi.i.i.i = trunc i64 %indvars.iv24.i28.i.i to i32
  %indvars.iv.next25.i29.i.i = add nuw nsw i64 %indvars.iv24.i28.i.i, 1 ; 2 uses
  %i.ms = sext i32 %i.mr to i64
  %i.mt = icmp slt i64 %indvars.iv.next25.i29.i.i, %i.ms
  br i1 %i.mt, label %.lr.ph10.i.i.i, label %._crit_edge11.i.i.i, !llvm.loop !765

._crit_edge11.i.i.i:                              ; preds = %.lr.ph10._crit_edge.i.i.i, %.lr.ph16.i.i.i
  %.2.lcssa.i.i.i = phi i32 [ %.18813.i.i.i, %.lr.ph16.i.i.i ], [ %.3.i.i.i, %.lr.ph10._crit_edge.i.i.i ] ; 5 uses
  %indvars.iv.next28.i.i.i = add nuw nsw i64 %indvars.iv27.i.i.i, 1 ; 2 uses
  %exitcond31.not.i.i.i = icmp eq i64 %indvars.iv.next28.i.i.i, %i.gr
  br i1 %exitcond31.not.i.i.i, label %._crit_edge17.i.i.i, label %.lr.ph16.i.i.i, !llvm.loop !766

._crit_edge17.i.i.i:                              ; preds = %._crit_edge11.i.i.i
  call fastcc void @_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei(ptr noundef nonnull %i.lj, i32 noundef %.2.lcssa.i.i.i)
  %i.mu = icmp sgt i32 %.2.lcssa.i.i.i, 1
  br i1 %i.mu, label %.lr.ph.preheader.i.i.i.i.i, label %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge17.i.i.i
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %.2.lcssa.i.i.i to i64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ag, %.lr.ph.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.ag ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  %i.mv = getelementptr inbounds nuw [20 x i8], ptr %i.lj, i64 %indvars.iv.i.i.i.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  %.sroa.4.0.copyload.i.i.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !31
  %i.mw = load <2 x float>, ptr %i.mv, align 4, !tbaa !31
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !792
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.lr.ph.i.i.i.i.i
  %indvars.iv31.i.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.next32.i.i.i.i.i, %bb.ae ] ; 4 uses
  %i.mx = getelementptr [20 x i8], ptr %i.lj, i64 %indvars.iv31.i.i.i.i.i ; 3 uses
  %i.my = getelementptr i8, ptr %i.mx, i64 -16
  %i.mz = load float, ptr %i.my, align 4, !tbaa !527
  %i.na = fcmp olt float %.sroa.4.0.copyload.i.i.i.i.i, %i.mz
  br i1 %i.na, label %bb.ae, label %.thread.split.loop.exit.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.nb = getelementptr i8, ptr %i.mx, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.mx, ptr noundef nonnull align 4 dereferenceable(20) %i.nb, i64 20, i1 false), !tbaa.struct !245
  %indvars.iv.next32.i.i.i.i.i = add nsw i64 %indvars.iv31.i.i.i.i.i, -1
  %i.nc = icmp sgt i64 %indvars.iv31.i.i.i.i.i, 1
  br i1 %i.nc, label %bb.ad, label %.thread.i.i.i.i.i

.thread.split.loop.exit.i.i.i.i.i:                ; preds = %bb.ad
  %i.nd = trunc nuw nsw i64 %indvars.iv31.i.i.i.i.i to i32
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.ae, %.thread.split.loop.exit.i.i.i.i.i
  %.021.lcssa.i.i.i.i.i = phi i32 [ %i.nd, %.thread.split.loop.exit.i.i.i.i.i ], [ 0, %bb.ae ] ; 2 uses
  %i.ne = zext i32 %.021.lcssa.i.i.i.i.i to i64
  %.not.i.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.ne
  br i1 %.not.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.thread.i.i.i.i.i
  %i.nf = sext i32 %.021.lcssa.i.i.i.i.i to i64
  %i.ng = getelementptr inbounds [20 x i8], ptr %i.lj, i64 %i.nf ; 2 uses
  store <2 x float> %i.mw, ptr %i.ng, align 4, !tbaa !31
  %.sroa.5.0..sroa_idx26.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !792
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !767

_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i: ; preds = %bb.ag, %._crit_edge17.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8, !tbaa !794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  %i.nh = icmp sgt i32 %i.eg, 63
  br i1 %i.nh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i
  %i.ni = shl nuw nsw i32 %i.eh, 1
  %i.nj = or disjoint i32 %i.ni, 1
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = shl nuw nsw i64 %i.nk, 2
  %i.nm = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.nl) #35
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i
  %.080.i.i.i.i = phi ptr [ %i.nm, %bb.ah ], [ %i.d, %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i ] ; 43 uses
  %i.nn = sext i32 %i.eh to i64                   ; 3 uses
  %i.no = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i, i64 %i.nn ; 9 uses
  %i.np = add nsw i32 %i.er, %i.em
  %i.nq = sitofp i32 %i.np to float
  %i.nr = fadd float %i.nq, 1.000000e+00
  %i.ns = sext i32 %.2.lcssa.i.i.i to i64
  %i.nt = getelementptr inbounds [20 x i8], ptr %i.lj, i64 %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  store float %i.nr, ptr %i.nu, align 4, !tbaa !527
  %i.nv = icmp sgt i32 %i.el, -1
  br i1 %i.nv, label %.lr.ph33.i.i.i.i, label %_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i

.lr.ph33.i.i.i.i:                                 ; preds = %bb.ai
  %i.nw = sitofp i32 %i.eq to float
  %i.nx = icmp ne i32 %i.er, 0
  %i.ny = getelementptr inbounds nuw i8, ptr %i.no, i64 4 ; 2 uses
  %i.nz = shl nsw i64 %i.nn, 2
  %i.oa = add nsw i32 %i.eg, 2
  %i.ob = sext i32 %i.oa to i64
  %i.oc = shl nsw i64 %i.ob, 2
  %6 = sitofp i32 %i.eh to float                  ; 3 uses
  %i.od = icmp sgt i32 %i.eg, -1                  ; 2 uses
  %wide.trip.count.i.i92.i.i.i = zext nneg i32 %i.eh to i64
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge25.i.i.i.i, %.lr.ph33.i.i.i.i
  %.0..i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i, %._crit_edge25.i.i.i.i ] ; 2 uses
  %.031.i.i.i.i = phi ptr [ %i.lj, %.lr.ph33.i.i.i.i ], [ %.1.lcssa.i.i.i.i, %._crit_edge25.i.i.i.i ] ; 3 uses
  %.07530.i.i.i.i = phi i32 [ %i.er, %.lr.ph33.i.i.i.i ], [ %i.ayb, %._crit_edge25.i.i.i.i ] ; 2 uses
  %.07629.i.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i.i ], [ %i.ayc, %._crit_edge25.i.i.i.i ] ; 4 uses
  %.sroa.11.028.i.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i.i ], [ %.sroa.11.1.lcssa.i.i.i.i, %._crit_edge25.i.i.i.i ] ; 2 uses
  %.sroa.7.027.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i ], [ %.sroa.7.3.lcssa.i.i.i.i, %._crit_edge25.i.i.i.i ] ; 2 uses
  %.sroa.0.026.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i, %._crit_edge25.i.i.i.i ] ; 2 uses
  %i.oe = sitofp i32 %.07530.i.i.i.i to float     ; 68 uses
  %i.of = fadd float %i.oe, 1.000000e+00          ; 75 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.080.i.i.i.i, i8 0, i64 %i.nz, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.no, i8 0, i64 %i.oc, i1 false)
  %.not908.i.i.i.i = icmp eq ptr %.0..i.i.i.i, null
  br i1 %.not908.i.i.i.i, label %.preheader7.i.i.i.i, label %.lr.ph.i.i.i.i

.preheader7.i.i.i.i:                              ; preds = %bb.al, %bb.aj
  %.sroa.7.1.lcssa.i.i.i.i = phi ptr [ %.sroa.7.027.i.i.i.i, %bb.aj ], [ %.sroa.7.2.i.i.i.i, %bb.al ] ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i, i64 4 ; 2 uses
  %i.oh = load float, ptr %i.og, align 4, !tbaa !527 ; 2 uses
  %i.oi = fcmp ugt float %i.oh, %i.of
  br i1 %i.oi, label %._crit_edge.i.i.i.i, label %.lr.ph15.i.i.i.i

.lr.ph15.i.i.i.i:                                 ; preds = %.preheader7.i.i.i.i
  %i.oj = icmp eq i32 %.07629.i.i.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.nx, %i.oj
  br label %bb.am

.lr.ph.i.i.i.i:                                   ; preds = %bb.aj, %bb.al
  %i.ok = phi ptr [ %i.oq, %bb.al ], [ %.0..i.i.i.i, %bb.aj ] ; 6 uses
  %.07810.i.i.i.i = phi ptr [ %.179.i.i.i.i, %bb.al ], [ %i.c, %bb.aj ] ; 2 uses
  %.sroa.7.19.i.i.i.i = phi ptr [ %.sroa.7.2.i.i.i.i, %bb.al ], [ %.sroa.7.027.i.i.i.i, %bb.aj ] ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 28
  %i.om = load float, ptr %i.ol, align 4, !tbaa !796
  %i.on = fcmp ugt float %i.om, %i.oe
  br i1 %i.on, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.oo = load ptr, ptr %i.ok, align 8, !tbaa !797
  store ptr %i.oo, ptr %.07810.i.i.i.i, align 8, !tbaa !794
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 20
  store float 0.000000e+00, ptr %i.op, align 4, !tbaa !798
  store ptr %.sroa.7.19.i.i.i.i, ptr %i.ok, align 8, !tbaa !139
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i.i.i.i
  %.sroa.7.2.i.i.i.i = phi ptr [ %.sroa.7.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ok, %bb.ak ] ; 2 uses
  %.179.i.i.i.i = phi ptr [ %i.ok, %.lr.ph.i.i.i.i ], [ %.07810.i.i.i.i, %bb.ak ] ; 2 uses
  %i.oq = load ptr, ptr %.179.i.i.i.i, align 8, !tbaa !794 ; 2 uses
  %.not90.i.i.i.i = icmp eq ptr %i.oq, null
  br i1 %.not90.i.i.i.i, label %.preheader7.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !768

bb.am:                                            ; preds = %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i, %.lr.ph15.i.i.i.i
  %i.or = phi float [ %i.oh, %.lr.ph15.i.i.i.i ], [ %i.qg, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i ] ; 3 uses
  %i.os = phi ptr [ %i.og, %.lr.ph15.i.i.i.i ], [ %i.qf, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i ]
  %.114.i.i.i.i = phi ptr [ %.031.i.i.i.i, %.lr.ph15.i.i.i.i ], [ %i.qe, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i ] ; 6 uses
  %.sroa.11.113.i.i.i.i = phi i32 [ %.sroa.11.028.i.i.i.i, %.lr.ph15.i.i.i.i ], [ %.sroa.11.4.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i ] ; 4 uses
  %.sroa.7.312.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i, %.lr.ph15.i.i.i.i ], [ %.sroa.7.6.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i ] ; 4 uses
  %.sroa.0.111.i.i.i.i = phi ptr [ %.sroa.0.026.i.i.i.i, %.lr.ph15.i.i.i.i ], [ %.sroa.0.5.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i ] ; 5 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i, i64 12 ; 2 uses
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !799 ; 3 uses
  %i.ov = fcmp une float %i.or, %i.ou
  br i1 %i.ov, label %bb.an, label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.7.312.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ow = load ptr, ptr %.sroa.7.312.i.i.i.i, align 8, !tbaa !139
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  %i.ox = icmp eq i32 %.sroa.11.113.i.i.i.i, 0
  br i1 %i.ox, label %bb.aq, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ap
  %i.oy = add nsw i32 %.sroa.11.113.i.i.i.i, -1
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.oz = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 25608) #35 ; 3 uses
  %i.pa = icmp eq ptr %i.oz, null
  br i1 %i.pa, label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i, label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.aq
  store ptr %.sroa.0.111.i.i.i.i, ptr %i.oz, align 8, !tbaa !802
  %.pre40.pre.i.i.i.i = load float, ptr %i.ot, align 4, !tbaa !799
  %.pre41.pre.i.i.i.i = load float, ptr %i.os, align 4, !tbaa !527
  br label %bb.ar

bb.ar:                                            ; preds = %.thread.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.pre41.i.i.i.i = phi float [ %.pre41.pre.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.or, %._crit_edge.i.i.i.i.i.i ]
  %.pre40.i.i.i.i = phi float [ %.pre40.pre.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.ou, %._crit_edge.i.i.i.i.i.i ]
  %.sroa.0.2.i.i.i.i = phi ptr [ %i.oz, %.thread.i.i.i.i.i.i ], [ %.sroa.0.111.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.pb = phi i32 [ 799, %.thread.i.i.i.i.i.i ], [ %i.oy, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i.i.i, i64 8
  %i.pd = zext nneg i32 %i.pb to i64
  %i.pe = shl nuw nsw i64 %i.pd, 5
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pe
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %i.pg = phi float [ %.pre41.i.i.i.i, %bb.ar ], [ %i.or, %bb.ao ] ; 3 uses
  %i.ph = phi float [ %.pre40.i.i.i.i, %bb.ar ], [ %i.ou, %bb.ao ] ; 3 uses
  %.sroa.0.3.i.i.i.i = phi ptr [ %.sroa.0.2.i.i.i.i, %bb.ar ], [ %.sroa.0.111.i.i.i.i, %bb.ao ]
  %.sroa.7.4.i.i.i.i = phi ptr [ null, %bb.ar ], [ %i.ow, %bb.ao ]
  %.sroa.11.2.i.i.i.i = phi i32 [ %i.pb, %bb.ar ], [ %.sroa.11.113.i.i.i.i, %bb.ao ]
  %.1.i.ph.i.i.i.i.i = phi ptr [ %i.pf, %bb.ar ], [ %.sroa.7.312.i.i.i.i, %bb.ao ] ; 9 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i, i64 8
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !803
  %i.pk = load float, ptr %.114.i.i.i.i, align 4, !tbaa !804 ; 2 uses
  %i.pl = fsub float %i.pj, %i.pk
  %i.pm = fsub float %i.ph, %i.pg
  %i.pn = fdiv float %i.pl, %i.pm                 ; 4 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i, i64 12
  store float %i.pn, ptr %i.po, align 4, !tbaa !805
  %i.pp = fcmp une float %i.pn, 0.000000e+00
  %i.pq = fdiv float 1.000000e+00, %i.pn
  %i.pr = select i1 %i.pp, float %i.pq, float 0.000000e+00
  %i.ps = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i, i64 16
  store float %i.pr, ptr %i.ps, align 8, !tbaa !806
  %i.pt = fsub float %i.oe, %i.pg
  %i.pu = call float @llvm.fmuladd.f32(float %i.pn, float %i.pt, float %i.pk)
  %i.pv = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i, i64 8
  %i.pw = fsub float %i.pu, %i.nw
  store float %i.pw, ptr %i.pv, align 8, !tbaa !807
  %i.px = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i, i64 16
  %i.py = load i32, ptr %i.px, align 4, !tbaa !808
  %.not28.i.i.i.i.i = icmp eq i32 %i.py, 0
  %i.pz = select i1 %.not28.i.i.i.i.i, float -1.000000e+00, float 1.000000e+00
  %i.qa = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i, i64 20
  store float %i.pz, ptr %i.qa, align 4, !tbaa !798
  %i.qb = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i, i64 24
  store float %i.pg, ptr %i.qb, align 8, !tbaa !809
  %i.qc = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i, i64 28 ; 2 uses
  store float %i.ph, ptr %i.qc, align 4, !tbaa !796
  store ptr null, ptr %.1.i.ph.i.i.i.i.i, align 8, !tbaa !797
  %i.qd = fcmp olt float %i.ph, %i.oe
  %or.cond136.i.i.i.i = select i1 %or.cond.i.i.i.i, i1 %i.qd, i1 false
  br i1 %or.cond136.i.i.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store float %i.oe, ptr %i.qc, align 4, !tbaa !796
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !794
  store ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, ptr %.1.i.ph.i.i.i.i.i, align 8, !tbaa !797
  store ptr %.1.i.ph.i.i.i.i.i, ptr %i.c, align 8, !tbaa !794
  br label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i

_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i: ; preds = %bb.au, %bb.aq, %bb.am
  %.sroa.0.5.i.i.i.i = phi ptr [ %.sroa.0.111.i.i.i.i, %bb.am ], [ %.sroa.0.3.i.i.i.i, %bb.au ], [ %.sroa.0.111.i.i.i.i, %bb.aq ] ; 2 uses
  %.sroa.7.6.i.i.i.i = phi ptr [ %.sroa.7.312.i.i.i.i, %bb.am ], [ %.sroa.7.4.i.i.i.i, %bb.au ], [ null, %bb.aq ] ; 2 uses
  %.sroa.11.4.i.i.i.i = phi i32 [ %.sroa.11.113.i.i.i.i, %bb.am ], [ %.sroa.11.2.i.i.i.i, %bb.au ], [ 0, %bb.aq ] ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i, i64 20 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i, i64 24 ; 2 uses
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !527 ; 2 uses
  %i.qh = fcmp ugt float %i.qg, %i.of
  br i1 %i.qh, label %._crit_edge.i.i.i.i, label %bb.am, !llvm.loop !769

._crit_edge.i.i.i.i:                              ; preds = %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i, %.preheader7.i.i.i.i
  %.sroa.0.1.lcssa.i.i.i.i = phi ptr [ %.sroa.0.026.i.i.i.i, %.preheader7.i.i.i.i ], [ %.sroa.0.5.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i ] ; 3 uses
  %.sroa.7.3.lcssa.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i, %.preheader7.i.i.i.i ], [ %.sroa.7.6.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i ]
  %.sroa.11.1.lcssa.i.i.i.i = phi i32 [ %.sroa.11.028.i.i.i.i, %.preheader7.i.i.i.i ], [ %.sroa.11.4.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i ]
  %.1.lcssa.i.i.i.i = phi ptr [ %.031.i.i.i.i, %.preheader7.i.i.i.i ], [ %i.qe, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i ]
  %.0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !794 ; 4 uses
  %.not91.i.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i, null ; 2 uses
  br i1 %.not91.i.i.i.i, label %_ZL28stbtt__fill_active_edges_newPfS_iP18stbtt__active_edgef.exit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %._crit_edge.i.i.i.i
  %i.qi = fcmp oeq float %i.of, %i.oe             ; 3 uses
  %i.qj = fsub float %i.of, %i.oe                 ; 4 uses
  %i.qk = insertelement <2 x float> poison, float %i.oe, i64 0
  %i.ql = shufflevector <2 x float> %i.qk, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.aw

bb.aw:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i, %bb.av
  %.0295473.i.i.i.i.i = phi ptr [ %.0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i, %bb.av ], [ %i.axg, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i ] ; 20 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 12
  %i.qn = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 8
  %i.qo = load float, ptr %i.qm, align 4, !tbaa !805 ; 3 uses
  %i.qp = fcmp oeq float %i.qo, 0.000000e+00
  %i.qq = load float, ptr %i.qn, align 8, !tbaa !807 ; 47 uses
  br i1 %i.qp, label %bb.ax, label %bb.cf

bb.ax:                                            ; preds = %bb.aw
  %i.qr = fcmp olt float %i.qq, %6
  br i1 %i.qr, label %bb.ay, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.qs = fcmp ult float %i.qq, 0.000000e+00
  br i1 %i.qs, label %bb.bu, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.qt = fptosi float %i.qq to i32               ; 6 uses
  br i1 %i.qi, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qu = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 28 ; 2 uses
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !796 ; 4 uses
  %i.qw = fcmp olt float %i.qv, %i.oe
  br i1 %i.qw, label %bb.bk, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qx = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 24
  %i.qy = load float, ptr %i.qx, align 8, !tbaa !809 ; 4 uses
  %i.qz = fcmp olt float %i.of, %i.qy
  br i1 %i.qz, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ra = fcmp ogt float %i.qy, %i.oe
  br i1 %i.ra, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.rb = fsub float %i.qq, %i.qq
  %i.rc = fsub float %i.qy, %i.oe
  %i.rd = fmul float %i.rb, %i.rc
  %i.re = fdiv float %i.rd, %i.qj
  %i.rf = fadd float %i.qq, %i.re
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.057.i.i.i.i.i.i = phi float [ %i.rf, %bb.bd ], [ %i.qq, %bb.bc ] ; 4 uses
  %.056.i.i.i.i.i.i = phi float [ %i.qy, %bb.bd ], [ %i.oe, %bb.bc ] ; 3 uses
  %i.rg = fcmp ogt float %i.of, %i.qv
  br i1 %i.rg, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.rh = fsub float %i.qq, %.057.i.i.i.i.i.i
  %i.ri = fsub float %i.qv, %i.of
  %i.rj = fmul float %i.ri, %i.rh
  %i.rk = fsub float %i.of, %.056.i.i.i.i.i.i
  %i.rl = fdiv float %i.rj, %i.rk
  %i.rm = fadd float %i.qq, %i.rl
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.055.i.i.i.i.i.i = phi float [ %i.rm, %bb.bf ], [ %i.qq, %bb.be ] ; 3 uses
  %.0.i.i.i.i.i.i = phi float [ %i.qv, %bb.bf ], [ %i.of, %bb.be ] ; 2 uses
  %i.rn = sitofp i32 %i.qt to float               ; 4 uses
  %i.ro = fcmp ugt float %.057.i.i.i.i.i.i, %i.rn
  %i.rp = fcmp ugt float %.055.i.i.i.i.i.i, %i.rn
  %or.cond64.i.i.i.i.i.i = select i1 %i.ro, i1 true, i1 %i.rp
  br i1 %or.cond64.i.i.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.rq = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 20
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !798
  %i.rs = fsub float %.0.i.i.i.i.i.i, %.056.i.i.i.i.i.i
  %i.rt = zext nneg i32 %i.qt to i64
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i, i64 %i.rt ; 2 uses
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !31
  %i.rw = call float @llvm.fmuladd.f32(float %i.rr, float %i.rs, float %i.rv)
  store float %i.rw, ptr %i.ru, align 4, !tbaa !31
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.rx = add nuw nsw i32 %i.qt, 1
  %7 = sitofp i32 %i.rx to float                  ; 2 uses
  %i.ry = fcmp ult float %.057.i.i.i.i.i.i, %7
  %i.rz = fcmp ult float %.055.i.i.i.i.i.i, %7
  %or.cond65.i.i.i.i.i.i = select i1 %i.ry, i1 true, i1 %i.rz
  br i1 %or.cond65.i.i.i.i.i.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.sa = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 20
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !798
  %i.sc = fsub float %.0.i.i.i.i.i.i, %.056.i.i.i.i.i.i
  %i.sd = fmul float %i.sc, %i.sb
  %i.se = fsub float %.057.i.i.i.i.i.i, %i.rn
  %i.sf = fsub float %.055.i.i.i.i.i.i, %i.rn
  %i.sg = fadd float %i.se, %i.sf
  %i.sh = fmul float %i.sg, 5.000000e-01
  %i.si = fsub float 1.000000e+00, %i.sh
  %i.sj = zext nneg i32 %i.qt to i64
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i, i64 %i.sj ; 2 uses
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !31
  %i.sm = call float @llvm.fmuladd.f32(float %i.sd, float %i.si, float %i.sl)
  store float %i.sm, ptr %i.sk, align 4, !tbaa !31
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bb, %bb.ba
  %i.sn = add nuw nsw i32 %i.qt, 1                ; 3 uses
  %i.so = load float, ptr %i.qu, align 4, !tbaa !796 ; 4 uses
  %i.sp = fcmp olt float %i.so, %i.oe
  br i1 %i.sp, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.sq = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 24
  %i.sr = load float, ptr %i.sq, align 8, !tbaa !809 ; 4 uses
  %i.ss = fcmp olt float %i.of, %i.sr
  br i1 %i.ss, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.st = fcmp ogt float %i.sr, %i.oe
  br i1 %i.st, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.su = fsub float %i.qq, %i.qq
  %i.sv = fsub float %i.sr, %i.oe
  %i.sw = fmul float %i.su, %i.sv
  %i.sx = fdiv float %i.sw, %i.qj
  %i.sy = fadd float %i.qq, %i.sx
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.057.i350.i.i.i.i.i = phi float [ %i.sy, %bb.bn ], [ %i.qq, %bb.bm ] ; 4 uses
  %.056.i351.i.i.i.i.i = phi float [ %i.sr, %bb.bn ], [ %i.oe, %bb.bm ] ; 3 uses
  %i.sz = fcmp ogt float %i.of, %i.so
  br i1 %i.sz, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ta = fsub float %i.qq, %.057.i350.i.i.i.i.i
  %i.tb = fsub float %i.so, %i.of
  %i.tc = fmul float %i.tb, %i.ta
  %i.td = fsub float %i.of, %.056.i351.i.i.i.i.i
  %i.te = fdiv float %i.tc, %i.td
  %i.tf = fadd float %i.qq, %i.te
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.055.i352.i.i.i.i.i = phi float [ %i.tf, %bb.bp ], [ %i.qq, %bb.bo ] ; 3 uses
  %.0.i353.i.i.i.i.i = phi float [ %i.so, %bb.bp ], [ %i.of, %bb.bo ] ; 2 uses
  %8 = sitofp i32 %i.sn to float                  ; 4 uses
  %i.tg = fcmp ugt float %.057.i350.i.i.i.i.i, %8
  %i.th = fcmp ugt float %.055.i352.i.i.i.i.i, %8
  %or.cond64.i354.i.i.i.i.i = select i1 %i.tg, i1 true, i1 %i.th
  br i1 %or.cond64.i354.i.i.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ti = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 20
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !798
  %i.tk = fsub float %.0.i353.i.i.i.i.i, %.056.i351.i.i.i.i.i
  %i.tl = zext nneg i32 %i.sn to i64
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.tl ; 2 uses
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !31
  %i.to = call float @llvm.fmuladd.f32(float %i.tj, float %i.tk, float %i.tn)
  store float %i.to, ptr %i.tm, align 4, !tbaa !31
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.tp = add nuw nsw i32 %i.qt, 2
  %9 = sitofp i32 %i.tp to float                  ; 2 uses
  %i.tq = fcmp ult float %.057.i350.i.i.i.i.i, %9
  %i.tr = fcmp ult float %.055.i352.i.i.i.i.i, %9
  %or.cond65.i355.i.i.i.i.i = select i1 %i.tq, i1 true, i1 %i.tr
  br i1 %or.cond65.i355.i.i.i.i.i, label %bb.bt, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.ts = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 20
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !798
  %i.tu = fsub float %.0.i353.i.i.i.i.i, %.056.i351.i.i.i.i.i
  %i.tv = fmul float %i.tu, %i.tt
  %i.tw = fsub float %.057.i350.i.i.i.i.i, %8
  %i.tx = fsub float %.055.i352.i.i.i.i.i, %8
  %i.ty = fadd float %i.tw, %i.tx
  %i.tz = fmul float %i.ty, 5.000000e-01
  %i.ua = fsub float 1.000000e+00, %i.tz
  %i.ub = zext nneg i32 %i.sn to i64
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.ub ; 2 uses
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !31
  %i.ue = call float @llvm.fmuladd.f32(float %i.tv, float %i.ua, float %i.ud)
  store float %i.ue, ptr %i.uc, align 4, !tbaa !31
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i

bb.bu:                                            ; preds = %bb.ay
  br i1 %i.qi, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.uf = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 28
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !796 ; 4 uses
  %i.uh = fcmp olt float %i.ug, %i.oe
  br i1 %i.uh, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ui = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 24
  %i.uj = load float, ptr %i.ui, align 8, !tbaa !809 ; 4 uses
  %i.uk = fcmp olt float %i.of, %i.uj
  br i1 %i.uk, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ul = fcmp ogt float %i.uj, %i.oe
  br i1 %i.ul, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.um = fsub float %i.qq, %i.qq
  %i.un = fsub float %i.uj, %i.oe
  %i.uo = fmul float %i.um, %i.un
  %i.up = fdiv float %i.uo, %i.qj
  %i.uq = fadd float %i.qq, %i.up
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.057.i357.i.i.i.i.i = phi float [ %i.uq, %bb.by ], [ %i.qq, %bb.bx ] ; 4 uses
  %.056.i358.i.i.i.i.i = phi float [ %i.uj, %bb.by ], [ %i.oe, %bb.bx ] ; 3 uses
  %i.ur = fcmp ogt float %i.of, %i.ug
  br i1 %i.ur, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.us = fsub float %i.qq, %.057.i357.i.i.i.i.i
  %i.ut = fsub float %i.ug, %i.of
  %i.uu = fmul float %i.ut, %i.us
  %i.uv = fsub float %i.of, %.056.i358.i.i.i.i.i
  %i.uw = fdiv float %i.uu, %i.uv
  %i.ux = fadd float %i.qq, %i.uw
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.055.i359.i.i.i.i.i = phi float [ %i.ux, %bb.ca ], [ %i.qq, %bb.bz ] ; 3 uses
  %.0.i360.i.i.i.i.i = phi float [ %i.ug, %bb.ca ], [ %i.of, %bb.bz ] ; 2 uses
  %i.uy = fcmp ugt float %.057.i357.i.i.i.i.i, 0.000000e+00
  %i.uz = fcmp ugt float %.055.i359.i.i.i.i.i, 0.000000e+00
  %or.cond64.i361.i.i.i.i.i = select i1 %i.uy, i1 true, i1 %i.uz
  br i1 %or.cond64.i361.i.i.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.va = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 20
  %i.vb = load float, ptr %i.va, align 4, !tbaa !798
  %i.vc = fsub float %.0.i360.i.i.i.i.i, %.056.i358.i.i.i.i.i
  %i.vd = load float, ptr %i.no, align 4, !tbaa !31
  %i.ve = call float @llvm.fmuladd.f32(float %i.vb, float %i.vc, float %i.vd)
  store float %i.ve, ptr %i.no, align 4, !tbaa !31
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.vf = fcmp ult float %.057.i357.i.i.i.i.i, 1.000000e+00
  %i.vg = fcmp ult float %.055.i359.i.i.i.i.i, 1.000000e+00
  %or.cond65.i362.i.i.i.i.i = select i1 %i.vf, i1 true, i1 %i.vg
  br i1 %or.cond65.i362.i.i.i.i.i, label %bb.ce, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.vh = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 20
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !798
  %i.vj = fsub float %.0.i360.i.i.i.i.i, %.056.i358.i.i.i.i.i
  %i.vk = fmul float %i.vj, %i.vi
  %i.vl = fadd float %.057.i357.i.i.i.i.i, %.055.i359.i.i.i.i.i
  %i.vm = fmul float %i.vl, 5.000000e-01
  %i.vn = fsub float 1.000000e+00, %i.vm
  %i.vo = load float, ptr %i.no, align 4, !tbaa !31
  %i.vp = call float @llvm.fmuladd.f32(float %i.vk, float %i.vn, float %i.vo)
  store float %i.vp, ptr %i.no, align 4, !tbaa !31
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i

bb.cf:                                            ; preds = %bb.aw
  %i.vq = fadd float %i.qo, %i.qq                 ; 34 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 16
  %i.vs = load float, ptr %i.vr, align 8, !tbaa !806 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 24 ; 16 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 28 ; 15 uses
  %i.vv = load <2 x float>, ptr %i.vt, align 8, !tbaa !31 ; 3 uses
  %i.vw = extractelement <2 x float> %i.vv, i64 0 ; 2 uses
  %i.vx = fcmp ogt float %i.vw, %i.oe             ; 2 uses
  %i.vy = fsub <2 x float> %i.vv, %i.ql
  %i.vz = insertelement <2 x float> poison, float %i.qo, i64 0
  %i.wa = shufflevector <2 x float> %i.vz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wb = insertelement <2 x float> poison, float %i.qq, i64 0
  %i.wc = shufflevector <2 x float> %i.wb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wa, <2 x float> %i.vy, <2 x float> %i.wc) ; 2 uses
  %i.we = extractelement <2 x float> %i.wd, i64 0
  %.0307.i.i.i.i.i = select i1 %i.vx, float %i.we, float %i.qq ; 7 uses
  %.0303.i.i.i.i.i = select i1 %i.vx, float %i.vw, float %i.oe ; 3 uses
  %i.wf = extractelement <2 x float> %i.vv, i64 1 ; 2 uses
  %i.wg = fcmp olt float %i.wf, %i.of             ; 2 uses
  %i.wh = extractelement <2 x float> %i.wd, i64 1
  %.0305.i.i.i.i.i = select i1 %i.wg, float %i.wh, float %i.vq ; 7 uses
  %.0301.i.i.i.i.i = select i1 %i.wg, float %i.wf, float %i.of ; 3 uses
  %i.wi = fcmp oge float %.0307.i.i.i.i.i, 0.000000e+00
  %i.wj = fcmp oge float %.0305.i.i.i.i.i, 0.000000e+00
  %or.cond.i.i.i.i.i = select i1 %i.wi, i1 %i.wj, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.cg, label %bb.co

bb.cg:                                            ; preds = %bb.cf
  %i.wk = fcmp olt float %.0307.i.i.i.i.i, %6
  %i.wl = fcmp olt float %.0305.i.i.i.i.i, %6
  %or.cond343.i.i.i.i.i = select i1 %i.wk, i1 %i.wl, i1 false
  br i1 %or.cond343.i.i.i.i.i, label %bb.ch, label %bb.co

bb.ch:                                            ; preds = %bb.cg
  %i.wm = fptosi float %.0307.i.i.i.i.i to i32    ; 5 uses
  %i.wn = fptosi float %.0305.i.i.i.i.i to i32    ; 3 uses
  %i.wo = icmp eq i32 %i.wm, %i.wn
  br i1 %i.wo, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.wp = fsub float %.0301.i.i.i.i.i, %.0303.i.i.i.i.i
  %i.wq = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 20
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !798
  %i.ws = fmul float %i.wp, %i.wr                 ; 2 uses
  %10 = sitofp i32 %i.wm to float
  %i.wt = fadd float %10, 1.000000e+00            ; 2 uses
  %i.wu = fsub float %i.wt, %.0307.i.i.i.i.i
  %i.wv = fsub float %i.wt, %.0305.i.i.i.i.i
  %i.ww = fadd float %i.wu, %i.wv
  %i.wx = fmul float %i.ww, 5.000000e-01
  %i.wy = fmul float %i.wx, %i.ws
  %i.wz = zext nneg i32 %i.wm to i64              ; 2 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i, i64 %i.wz ; 2 uses
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !31
  %i.xc = fadd float %i.xb, %i.wy
  store float %i.xc, ptr %i.xa, align 4, !tbaa !31
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.wz ; 2 uses
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !31
  %i.xf = fadd float %i.ws, %i.xe
  store float %i.xf, ptr %i.xd, align 4, !tbaa !31
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.xg = fcmp ogt float %.0307.i.i.i.i.i, %.0305.i.i.i.i.i
  br i1 %i.xg, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.xh = fsub float %i.oe, %.0303.i.i.i.i.i
  %i.xi = fadd float %i.of, %i.xh
  %i.xj = fsub float %i.oe, %.0301.i.i.i.i.i
  %i.xk = fadd float %i.of, %i.xj
  %i.xl = fneg float %i.vs
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.pre-phi479.i.i.i.i.i = phi i32 [ %i.wm, %bb.ck ], [ %i.wn, %bb.cj ] ; 8 uses
  %.pre-phi.i.i.i.i.i = phi i32 [ %i.wn, %bb.ck ], [ %i.wm, %bb.cj ] ; 4 uses
  %.0309.i.i.i.i.i = phi float [ %i.vq, %bb.ck ], [ %i.qq, %bb.cj ] ; 2 uses
  %.1308.i.i.i.i.i = phi float [ %.0305.i.i.i.i.i, %bb.ck ], [ %.0307.i.i.i.i.i, %bb.cj ]
  %.1306.i.i.i.i.i = phi float [ %.0307.i.i.i.i.i, %bb.ck ], [ %.0305.i.i.i.i.i, %bb.cj ]
  %.1304.i.i.i.i.i = phi float [ %i.xk, %bb.ck ], [ %.0303.i.i.i.i.i, %bb.cj ] ; 2 uses
  %.1302.i.i.i.i.i = phi float [ %i.xi, %bb.ck ], [ %.0301.i.i.i.i.i, %bb.cj ] ; 2 uses
  %.0300.i.i.i.i.i = phi float [ %i.xl, %bb.ck ], [ %i.vs, %bb.cj ] ; 4 uses
  %i.xm = add nuw i32 %.pre-phi.i.i.i.i.i, 1      ; 5 uses
  %i.xn = uitofp nneg i32 %i.xm to float          ; 2 uses
  %i.xo = fsub float %i.xn, %.0309.i.i.i.i.i
  %i.xp = call float @llvm.fmuladd.f32(float %.0300.i.i.i.i.i, float %i.xo, float %i.oe) ; 2 uses
  %i.xq = uitofp nneg i32 %.pre-phi479.i.i.i.i.i to float ; 3 uses
  %i.xr = fsub float %i.xq, %.0309.i.i.i.i.i
  %i.xs = call float @llvm.fmuladd.f32(float %.0300.i.i.i.i.i, float %i.xr, float %i.oe) ; 2 uses
  %i.xt = fcmp ogt float %i.xp, %i.of
  %.0298.i.i.i.i.i = select i1 %i.xt, float %i.of, float %i.xp ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 20
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !798 ; 4 uses
  %i.xw = fsub float %.0298.i.i.i.i.i, %.1304.i.i.i.i.i
  %i.xx = fmul float %i.xv, %i.xw                 ; 5 uses
  %i.xy = fsub nnan float %i.xn, %.1308.i.i.i.i.i
  %i.xz = fmul float %i.xy, %i.xx
  %i.ya = fmul float %i.xz, 5.000000e-01
  %i.yb = zext nneg i32 %.pre-phi.i.i.i.i.i to i64
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i, i64 %i.yb ; 2 uses
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !31
  %i.ye = fadd float %i.yd, %i.ya
  store float %i.ye, ptr %i.yc, align 4, !tbaa !31
  %i.yf = fcmp ogt float %i.xs, %i.of
  br i1 %i.yf, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %.not342.i.i.i.i.i = icmp eq i32 %i.xm, %.pre-phi479.i.i.i.i.i
  %i.yg = sub nsw i32 %.pre-phi479.i.i.i.i.i, %i.xm
  %i.yh = fsub float %i.of, %.0298.i.i.i.i.i
  %i.yi = sitofp i32 %i.yg to float
  %i.yj = fdiv float %i.yh, %i.yi
  %.1.i.i.i.i.i = select i1 %.not342.i.i.i.i.i, float %.0300.i.i.i.i.i, float %i.yj
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.2.i.i.i.i.i = phi float [ %.1.i.i.i.i.i, %bb.cm ], [ %.0300.i.i.i.i.i, %bb.cl ]
  %.0297.i.i.i.i.i = phi float [ %i.of, %bb.cm ], [ %i.xs, %bb.cl ]
  %i.yk = fmul float %i.xv, %.2.i.i.i.i.i         ; 4 uses
  %i.yl = icmp slt i32 %i.xm, %.pre-phi479.i.i.i.i.i
  br i1 %i.yl, label %.lr.ph472.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph472.i.i.i.i.i:                              ; preds = %bb.cn
  %i.ym = fmul float %i.yk, 5.000000e-01          ; 3 uses
  %i.yn = zext i32 %i.xm to i64                   ; 3 uses
  %i.yo = add nsw i32 %.pre-phi479.i.i.i.i.i, -2
  %i.yp = sub nsw i32 %.pre-phi.i.i.i.i.i, %.pre-phi479.i.i.i.i.i
  %i.yq = and i32 %i.yp, 1
  %lcmp.mod.not.not = icmp eq i32 %i.yq, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph472.i.i.i.i.i
  %i.yr = fadd float %i.ym, %i.xx
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i, i64 %i.yn ; 2 uses
  %i.yt = load float, ptr %i.ys, align 4, !tbaa !31
  %i.yu = fadd float %i.yr, %i.yt
  store float %i.yu, ptr %i.ys, align 4, !tbaa !31
  %i.yv = fadd float %i.yk, %i.xx                 ; 2 uses
  %indvars.iv.next477.i.i.i.i.i.prol = add nuw nsw i64 %i.yn, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph472.i.i.i.i.i
  %indvars.iv476.i.i.i.i.i.unr = phi i64 [ %i.yn, %.lr.ph472.i.i.i.i.i ], [ %indvars.iv.next477.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0296471.i.i.i.i.i.unr = phi float [ %i.xx, %.lr.ph472.i.i.i.i.i ], [ %i.yv, %.prol.loopexit.unr-lcssa ]
  %.lcssa385.unr = phi float [ poison, %.lr.ph472.i.i.i.i.i ], [ %i.yv, %.prol.loopexit.unr-lcssa ]
  %i.yw = icmp eq i32 %i.yo, %.pre-phi.i.i.i.i.i
  br i1 %i.yw, label %._crit_edge.i.i.i.i.i, label %.lr.ph472.i.i.i.i.i.new

.lr.ph472.i.i.i.i.i.new:                          ; preds = %.prol.loopexit, %.lr.ph472.i.i.i.i.i.new
  %indvars.iv476.i.i.i.i.i = phi i64 [ %indvars.iv.next477.i.i.i.i.i.1, %.lr.ph472.i.i.i.i.i.new ], [ %indvars.iv476.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0296471.i.i.i.i.i = phi float [ %i.zh, %.lr.ph472.i.i.i.i.i.new ], [ %.0296471.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.yx = fadd float %i.ym, %.0296471.i.i.i.i.i
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i, i64 %indvars.iv476.i.i.i.i.i ; 2 uses
  %i.yz = load float, ptr %i.yy, align 4, !tbaa !31
  %i.za = fadd float %i.yx, %i.yz
  store float %i.za, ptr %i.yy, align 4, !tbaa !31
  %i.zb = fadd float %i.yk, %.0296471.i.i.i.i.i   ; 2 uses
  %i.zc = fadd float %i.ym, %i.zb
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i, i64 %indvars.iv476.i.i.i.i.i
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 4 ; 2 uses
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !31
  %i.zg = fadd float %i.zc, %i.zf
  store float %i.zg, ptr %i.ze, align 4, !tbaa !31
  %i.zh = fadd float %i.yk, %i.zb                 ; 2 uses
  %indvars.iv.next477.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv476.i.i.i.i.i, 2 ; 2 uses
  %i.zi = trunc nuw i64 %indvars.iv.next477.i.i.i.i.i.1 to i32
  %i.zj = icmp sgt i32 %.pre-phi479.i.i.i.i.i, %i.zi
  br i1 %i.zj, label %.lr.ph472.i.i.i.i.i.new, label %._crit_edge.i.i.i.i.i, !llvm.loop !770

._crit_edge.i.i.i.i.i:                            ; preds = %.prol.loopexit, %.lr.ph472.i.i.i.i.i.new, %bb.cn
  %.0296.lcssa.i.i.i.i.i = phi float [ %i.xx, %bb.cn ], [ %.lcssa385.unr, %.prol.loopexit ], [ %i.zh, %.lr.ph472.i.i.i.i.i.new ]
  %i.zk = fsub float %.1302.i.i.i.i.i, %.0297.i.i.i.i.i
  %i.zl = fadd float %i.xq, 1.000000e+00          ; 2 uses
  %i.zm = fsub nnan float %i.zl, %i.xq
  %i.zn = fsub float %i.zl, %.1306.i.i.i.i.i
  %i.zo = fadd float %i.zm, %i.zn
  %i.zp = fmul float %i.zo, 5.000000e-01
  %i.zq = fmul float %i.zp, %i.zk
  %i.zr = call float @llvm.fmuladd.f32(float %i.xv, float %i.zq, float %.0296.lcssa.i.i.i.i.i)
  %i.zs = zext nneg i32 %.pre-phi479.i.i.i.i.i to i64 ; 2 uses
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i, i64 %i.zs ; 2 uses
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !31
  %i.zv = fadd float %i.zr, %i.zu
  store float %i.zv, ptr %i.zt, align 4, !tbaa !31
  %i.zw = fsub float %.1302.i.i.i.i.i, %.1304.i.i.i.i.i
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.zs ; 2 uses
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !31
  %i.zz = call float @llvm.fmuladd.f32(float %i.xv, float %i.zw, float %i.zy)
  store float %i.zz, ptr %i.zx, align 4, !tbaa !31
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i

bb.co:                                            ; preds = %bb.cg, %bb.cf
  br i1 %i.od, label %.lr.ph.i.i94.i.i.i, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i

.lr.ph.i.i94.i.i.i:                               ; preds = %bb.co
  %i.aaa = fsub float %i.vq, %i.qq
  %i.aab = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i, i64 20 ; 30 uses
  br label %bb.cp

bb.cp:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i, %.lr.ph.i.i94.i.i.i
  %indvars.iv.i.i95.i.i.i = phi i64 [ 0, %.lr.ph.i.i94.i.i.i ], [ %indvars.iv.next.i.i96.i.i.i, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i96.i.i.i = add nuw nsw i64 %indvars.iv.i.i95.i.i.i, 1 ; 3 uses
  %i.aac = trunc nuw nsw i64 %indvars.iv.i.i95.i.i.i to i32
  %i.aad = uitofp nneg i32 %i.aac to float        ; 90 uses
  %i.aae = trunc nuw nsw i64 %indvars.iv.next.i.i96.i.i.i to i32
  %i.aaf = uitofp nneg i32 %i.aae to float        ; 60 uses
  %i.aag = insertelement <2 x float> poison, float %i.aad, i64 0
  %i.aah = insertelement <2 x float> %i.aag, float %i.aaf, i64 1
  %i.aai = fsub <2 x float> %i.aah, %i.wc         ; 7 uses
  %i.aaj = fdiv <2 x float> %i.aai, %i.wa         ; 2 uses
  %i.aak = extractelement <2 x float> %i.aaj, i64 0
  %i.aal = fadd float %i.aak, %i.oe               ; 52 uses
  %i.aam = extractelement <2 x float> %i.aaj, i64 1
  %i.aan = fadd float %i.aam, %i.oe               ; 52 uses
  %i.aao = fcmp olt float %i.qq, %i.aad           ; 2 uses
  %i.aap = fcmp ogt float %i.vq, %i.aaf           ; 2 uses
  %or.cond344.i.i.i.i.i = select i1 %i.aao, i1 %i.aap, i1 false
  br i1 %or.cond344.i.i.i.i.i, label %bb.cq, label %bb.dv

bb.cq:                                            ; preds = %bb.cp
  %i.aaq = fcmp oeq float %i.aal, %i.oe
  br i1 %i.aaq, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.aar = load float, ptr %i.vu, align 4, !tbaa !796 ; 4 uses
  %i.aas = fcmp olt float %i.aar, %i.oe
  br i1 %i.aas, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aat = load float, ptr %i.vt, align 8, !tbaa !809 ; 4 uses
  %i.aau = fcmp olt float %i.aal, %i.aat
  br i1 %i.aau, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aav = fcmp ogt float %i.aat, %i.oe
  br i1 %i.aav, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.aaw = fsub float %i.aat, %i.oe
  %i.aax = extractelement <2 x float> %i.aai, i64 0
  %i.aay = fmul float %i.aax, %i.aaw
  %i.aaz = fsub float %i.aal, %i.oe
  %i.aba = fdiv float %i.aay, %i.aaz
  %i.abb = fadd float %i.qq, %i.aba
end_hunk_2
