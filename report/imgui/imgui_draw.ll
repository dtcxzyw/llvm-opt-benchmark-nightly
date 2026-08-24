Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 354
begin_hunk_0_@_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j:bb.a
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !239
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load i64, ptr %4, align 4
  store i64 %i.aq, ptr %i.ap, align 4
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !239 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store i32 %5, ptr %i.as, align 4, !tbaa !241
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 60
  store i32 %i.d, ptr %i.at, align 4
  %.sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store i32 %i.f, ptr %.sroa_idx26, align 4
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !239 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 68
  store i32 %i.j, ptr %i.av, align 4
  %.sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store i32 %i.l, ptr %.sroa_idx22, align 4
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !75
  %i.ax = add i32 %i.aw, 4
  store i32 %i.ax, ptr %i.m, align 4, !tbaa !75
  %i.ay = load <2 x ptr>, ptr %i.z, align 8, !tbaa !243
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !239
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 76
  store i32 %5, ptr %i.ba, align 4, !tbaa !241
  %i.bb = getelementptr inbounds nuw i8, <2 x ptr> %i.ay, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.bb, ptr %i.z, align 8, !tbaa !243
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10ImDrawList10PrimQuadUVERK6ImVec2S2_S2_S2_S2_S2_S2_S2_j(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %8, i32 noundef %9) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !75
  %i.c = trunc i32 %i.b to i16                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 6 uses
  store i16 %i.c, ptr %i.e, align 2, !tbaa !240
  %i.f = add i16 %i.c, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 %i.f, ptr %i.g, align 2, !tbaa !240
  %i.h = add i16 %i.c, 2                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i16 %i.h, ptr %i.i, align 2, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i16 %i.c, ptr %i.j, align 2, !tbaa !240
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i16 %i.h, ptr %i.k, align 2, !tbaa !240
  %i.l = add i16 %i.c, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i16 %i.l, ptr %i.m, align 2, !tbaa !240
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.p = load i64, ptr %1, align 4
  store i64 %i.p, ptr %i.o, align 4
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %5, align 4
  store i64 %i.s, ptr %i.r, align 4
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !239  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 %9, ptr %i.u, align 4, !tbaa !241
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.w = load i64, ptr %2, align 4
  store i64 %i.w, ptr %i.v, align 4
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.z = load i64, ptr %6, align 4
  store i64 %i.z, ptr %i.y, align 4
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !239 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  store i32 %9, ptr %i.ab, align 4, !tbaa !241
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ad = load i64, ptr %3, align 4
  store i64 %i.ad, ptr %i.ac, align 4
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load i64, ptr %7, align 4
  store i64 %i.ag, ptr %i.af, align 4
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !239 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i32 %9, ptr %i.ai, align 4, !tbaa !241
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 60
  %i.ak = load i64, ptr %4, align 4
  store i64 %i.ak, ptr %i.aj, align 4
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  %i.an = load i64, ptr %8, align 4
  store i64 %i.an, ptr %i.am, align 4
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !75
  %i.ap = add i32 %i.ao, 4
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !75
  %i.aq = load <2 x ptr>, ptr %i.n, align 8, !tbaa !243
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  store i32 %9, ptr %i.as, align 4, !tbaa !241
  %i.at = getelementptr inbounds nuw i8, <2 x ptr> %i.aq, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.at, ptr %i.n, align 8, !tbaa !243
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 2
  %i.b = icmp ult i32 %3, 16777216
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %5, 512
  %.not446 = icmp eq i32 %i.c, 0                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = load i64, ptr %i.e, align 8              ; 11 uses
  %i.g = add nsw i32 %2, -1                       ; 4 uses
  %i.h = select i1 %.not446, i32 %i.g, i32 %2     ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load float, ptr %i.i, align 8, !tbaa !88 ; 8 uses
  %i.k = fcmp ogt float %4, %i.j                  ; 5 uses
  %i.l = and i32 %5, -2147483633
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !74   ; 2 uses
  %i.q = and i32 %i.p, 1
  %.not447 = icmp eq i32 %i.q, 0
  br i1 %.not447, label %.lr.ph561, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = and i32 %3, 16777215                     ; 4 uses
  %i.s = fcmp oge float %4, 1.000000e+00
  %i.t = select i1 %i.s, float %4, float 1.000000e+00 ; 6 uses
  %i.u = fptosi float %i.t to i32                 ; 3 uses
  %i.v = sitofp i32 %i.u to float
  %i.w = fsub float %i.t, %i.v
  %i.x = and i32 %i.p, 2
  %i.y = icmp eq i32 %i.x, 0
  %i.z = icmp sgt i32 %i.u, 31
  %or.cond.not456 = select i1 %i.y, i1 true, i1 %i.z
  %i.aa = fcmp ugt float %i.w, f0x3727C5AC
  %or.cond3.not453 = select i1 %or.cond.not456, i1 true, i1 %i.aa
  %i.ab = fcmp une float %i.j, 1.000000e+00
  %.not451 = select i1 %or.cond3.not453, i1 true, i1 %i.ab ; 8 uses
  %.v = select i1 %i.k, i32 18, i32 12
  %.v533 = select i1 %.not451, i32 %.v, i32 6
  %i.ac = mul nsw i32 %.v533, %i.h
  br i1 %.not451, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = shl nuw nsw i32 %2, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ae = shl nsw i32 %2, 2
  %i.af = mul nuw nsw i32 %2, 3
  %i.ag = select i1 %i.k, i32 %i.ae, i32 %i.af
  %i.ah = select i1 %i.k, i32 5, i32 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not449 = phi i32 [ 3, %bb.f ], [ %i.ah, %bb.g ]
  %i.ai = phi i32 [ %i.ad, %bb.f ], [ %i.ag, %bb.g ] ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.ac, i32 noundef %i.ai)
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !35  ; 3 uses
  %i.ak = mul nuw nsw i32 %.not449, %2            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 76 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !82
  %.not.i = icmp sgt i32 %i.ak, %i.am
  br i1 %.not.i, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !28 ; 2 uses
  %.not4.i = icmp eq ptr %i.ao, null
  br i1 %.not4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ao)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aq)
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !28
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !82
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !35
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k, %bb.h
  %i.as = phi ptr [ %i.aj, %bb.h ], [ %.pre, %bb.k ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !244 ; 11 uses
  %i.av = zext nneg i32 %2 to i64                 ; 7 uses
  %i.aw = getelementptr [8 x i8], ptr %i.au, i64 %i.av ; 14 uses
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.m
  br i1 %.not446, label %bb.n, label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ax = icmp eq i64 %indvars.iv.next, %i.av
  %i.ay = select i1 %i.ax, i64 0, i64 %indvars.iv.next
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bb = load <2 x float>, ptr %i.az, align 4, !tbaa !8
  %i.bc = load <2 x float>, ptr %i.ba, align 4, !tbaa !8
  %i.bd = fsub <2 x float> %i.bb, %i.bc           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.bd, %i.bd
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bf = extractelement <2 x float> %i.bd, i64 0 ; 2 uses
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.be) ; 2 uses
  %i.bh = fcmp ogt float %i.bg, 0.000000e+00
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.bi = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bj = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.bi)
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x float> %i.bd, %i.bk
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %i.bm = phi <2 x float> [ %i.bl, %bb.l ], [ %i.bd, %.lr.ph ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  store float %i.bo, ptr %i.bn, align 4, !tbaa !234
  %i.bp = extractelement <2 x float> %i.bm, i64 0
  %i.bq = fneg float %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store float %i.bq, ptr %i.br, align 4, !tbaa !235
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !245

bb.n:                                             ; preds = %._crit_edge
  %i.bs = getelementptr i8, ptr %i.aw, i64 -16
  %i.bt = zext nneg i32 %i.g to i64               ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bt ; 7 uses
  %i.bv = load i64, ptr %i.bs, align 4
  store i64 %i.bv, ptr %i.bu, align 4
  %or.cond5 = select i1 %.not451, i1 %i.k, i1 false
  br i1 %or.cond5, label %bb.u, label %bb.o

.thread:                                          ; preds = %._crit_edge
  %or.cond5530 = select i1 %.not451, i1 %i.k, i1 false
  br i1 %or.cond5530, label %.thread532, label %.thread531

.thread532:                                       ; preds = %.thread
  %i.bw = fsub float %i.t, %i.j
  %i.bx = fmul float %i.bw, 5.000000e-01
  br label %.lr.ph556

.thread531:                                       ; preds = %.thread
  %i.by = tail call float @llvm.fmuladd.f32(float %i.t, float 5.000000e-01, float 1.000000e+00)
  %i.bz = select i1 %.not451, float %i.j, float %i.by
  br label %.lr.ph546

bb.o:                                             ; preds = %bb.n
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.t, float 5.000000e-01, float 1.000000e+00)
  %i.cb = select i1 %.not451, float %i.j, float %i.ca ; 2 uses
  %i.cc = load <2 x float>, ptr %i.au, align 4, !tbaa !8
  %i.cd = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cf = fmul <2 x float> %i.ce, %i.cc
  %i.cg = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.ch = fadd <2 x float> %i.cf, %i.cg
  store <2 x float> %i.ch, ptr %i.aw, align 4
  %i.ci = load <2 x float>, ptr %i.au, align 4, !tbaa !8
  %i.cj = fmul <2 x float> %i.ce, %i.ci
  %i.ck = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.cl = fsub <2 x float> %i.ck, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <2 x float> %i.cl, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 2 uses
  %i.co = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.cp = fmul <2 x float> %i.ce, %i.co
  %i.cq = load <2 x float>, ptr %i.cn, align 4, !tbaa !8
  %i.cr = fadd <2 x float> %i.cp, %i.cq
  %i.cs = shl nuw nsw i32 %i.g, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ct ; 2 uses
  store <2 x float> %i.cr, ptr %i.cu, align 4
  %i.cv = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.cw = fmul <2 x float> %i.ce, %i.cv
  %i.cx = load <2 x float>, ptr %i.cn, align 4, !tbaa !8
  %i.cy = fsub <2 x float> %i.cx, %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store <2 x float> %i.cy, ptr %i.cz, align 4
  br label %.lr.ph546

.lr.ph546:                                        ; preds = %bb.o, %.thread531
  %i.da = phi float [ %i.bz, %.thread531 ], [ %i.cb, %bb.o ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !75 ; 2 uses
  %i.dd = select i1 %.not451, i32 3, i32 2
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %wide.trip.count568 = zext nneg i32 %i.h to i64 ; 2 uses
  %i.df = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %.promoted628 = load ptr, ptr %i.de, align 8, !tbaa !105
  br label %.backedge

.lr.ph552:                                        ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %.pre596 = load ptr, ptr %i.dh, align 8, !tbaa !239
  br label %bb.t

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph546
  %i.di = phi ptr [ %.promoted628, %.lr.ph546 ], [ %i.fi, %.backedge.backedge ] ; 13 uses
  %indvars.iv565 = phi i64 [ 0, %.lr.ph546 ], [ %indvars.iv.next566, %.backedge.backedge ] ; 2 uses
  %.0433543 = phi i32 [ %i.dc, %.lr.ph546 ], [ %i.dn, %.backedge.backedge ] ; 3 uses
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 5 uses
  %i.dj = icmp eq i64 %indvars.iv.next566, %i.av  ; 2 uses
  %i.dk = trunc nuw nsw i64 %indvars.iv.next566 to i32
  %i.dl = select i1 %i.dj, i32 0, i32 %i.dk       ; 2 uses
  %i.dm = add i32 %.0433543, %i.dd
  %i.dn = select i1 %i.dj, i32 %i.dc, i32 %i.dm   ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv565
  %i.dp = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dp
  %i.dr = load <2 x float>, ptr %i.do, align 4, !tbaa !8
  %i.ds = load <2 x float>, ptr %i.dq, align 4, !tbaa !8
  %i.dt = fadd <2 x float> %i.dr, %i.ds
  %i.du = fmul <2 x float> %i.dt, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop620 = fmul <2 x float> %i.du, %i.du
  %i.dv = extractelement <2 x float> %foldExtExtBinop620, i64 1
  %i.dw = extractelement <2 x float> %i.du, i64 0 ; 2 uses
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.dv) ; 2 uses
  %i.dy = fcmp ogt float %i.dx, f0x358637BD
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.backedge
  %i.dz = fdiv float 1.000000e+00, %i.dx          ; 2 uses
  %i.ea = fcmp ogt float %i.dz, 1.000000e+02
  %.0429 = select i1 %i.ea, float 1.000000e+02, float %i.dz
  %i.eb = insertelement <2 x float> poison, float %.0429, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x float> %i.du, %i.ec
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.backedge
  %i.ee = phi <2 x float> [ %i.ed, %bb.p ], [ %i.du, %.backedge ]
  %i.ef = fmul <2 x float> %i.dg, %i.ee           ; 2 uses
  %i.eg = shl nuw nsw i32 %i.dl, 1
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dp ; 2 uses
  %i.ek = load <2 x float>, ptr %i.ej, align 4, !tbaa !8
  %i.el = fadd <2 x float> %i.ef, %i.ek
  store <2 x float> %i.el, ptr %i.ei, align 4, !tbaa !8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.en = load <2 x float>, ptr %i.ej, align 4, !tbaa !8
  %i.eo = fsub <2 x float> %i.en, %i.ef
  store <2 x float> %i.eo, ptr %i.em, align 4, !tbaa !8
  %i.ep = trunc i32 %i.dn to i16                  ; 4 uses
  store i16 %i.ep, ptr %i.di, align 2, !tbaa !240
  %i.eq = trunc i32 %.0433543 to i16              ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !240
  %i.es = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  br i1 %.not451, label %bb.r, label %.thread612

bb.r:                                             ; preds = %bb.q
  %i.eu = trunc i32 %i.dn to i16
  %i.ev = insertelement <2 x i16> poison, i16 %i.eu, i64 0
  %i.ew = trunc i32 %.0433543 to i16
  %i.ex = insertelement <2 x i16> %i.ev, i16 %i.ew, i64 1
  %i.ey = shufflevector <2 x i16> %i.ex, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ez = add i16 %i.eq, 2                        ; 2 uses
  store i16 %i.ez, ptr %i.es, align 2, !tbaa !240
  %i.fa = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !240
  %i.fb = add <4 x i16> %i.ey, <i16 2, i16 0, i16 1, i16 1> ; 2 uses
  store <4 x i16> %i.fb, ptr %i.et, align 2, !tbaa !240
  %i.fc = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i16 %i.eq, ptr %i.fc, align 2, !tbaa !240
  %i.fd = getelementptr inbounds nuw i8, ptr %i.di, i64 18
  store i16 %i.eq, ptr %i.fd, align 2, !tbaa !240
  %i.fe = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  store i16 %i.ep, ptr %i.fe, align 2, !tbaa !240
  %i.ff = getelementptr inbounds nuw i8, ptr %i.di, i64 22
  %i.fg = extractelement <4 x i16> %i.fb, i64 2
  store i16 %i.fg, ptr %i.ff, align 2, !tbaa !240
  %i.fh = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  store ptr %i.fh, ptr %i.de, align 8, !tbaa !105
  %exitcond569.not = icmp eq i64 %indvars.iv.next566, %wide.trip.count568
  br i1 %exitcond569.not, label %.lr.ph552, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.r, %.thread612
  %i.fi = phi ptr [ %i.fh, %bb.r ], [ %i.fn, %.thread612 ]
  br label %.backedge, !llvm.loop !246

.thread612:                                       ; preds = %bb.q
  %i.fj = getelementptr inbounds nuw i8, ptr %i.di, i64 10
  %i.fk = add i16 %i.eq, 1                        ; 2 uses
  store i16 %i.fk, ptr %i.es, align 2, !tbaa !240
  %i.fl = add i16 %i.ep, 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !240
  store i16 %i.fk, ptr %i.et, align 2, !tbaa !240
  store i16 %i.ep, ptr %i.fj, align 2, !tbaa !240
  %i.fn = getelementptr inbounds nuw i8, ptr %i.di, i64 12 ; 2 uses
  store ptr %i.fn, ptr %i.de, align 8, !tbaa !105
  %exitcond569.not614 = icmp eq i64 %indvars.iv.next566, %wide.trip.count568
  br i1 %exitcond569.not614, label %.lr.ph550, label %.backedge.backedge

.lr.ph550:                                        ; preds = %.thread612
  %i.fo = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !247
  %i.fr = sext i32 %i.u to i64
  %i.fs = getelementptr inbounds [16 x i8], ptr %i.fq, i64 %i.fr ; 2 uses
  %i.ft = load <2 x i32>, ptr %i.fs, align 4, !tbaa !8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %.pre595 = load ptr, ptr %i.fv, align 8, !tbaa !239
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph550, %bb.s
  %i.fw = phi ptr [ %.pre595, %.lr.ph550 ], [ %i.gk, %bb.s ]
  %indvars.iv570 = phi i64 [ 0, %.lr.ph550 ], [ %indvars.iv.next571, %bb.s ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv570, 4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 4
  store i64 %i.fy, ptr %i.fw, align 4
  %i.fz = load ptr, ptr %i.fv, align 8, !tbaa !239
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store <2 x i32> %i.ft, ptr %i.ga, align 4
  %i.gb = load ptr, ptr %i.fv, align 8, !tbaa !239 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i32 %3, ptr %i.gc, align 4, !tbaa !241
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  %i.gf = load i64, ptr %i.gd, align 4
  store i64 %i.gf, ptr %i.ge, align 4
  %i.gg = load ptr, ptr %i.fv, align 8, !tbaa !239
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 28
  store <2 x i32> %i.fu, ptr %i.gh, align 4
  %i.gi = load ptr, ptr %i.fv, align 8, !tbaa !239 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  store i32 %3, ptr %i.gj, align 4, !tbaa !241
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 40 ; 2 uses
  store ptr %i.gk, ptr %i.fv, align 8, !tbaa !239
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %exitcond574.not = icmp eq i64 %indvars.iv.next571, %i.av
  br i1 %exitcond574.not, label %.loopexit538, label %bb.s, !llvm.loop !248

bb.t:                                             ; preds = %.lr.ph552, %bb.t
  %i.gl = phi ptr [ %.pre596, %.lr.ph552 ], [ %i.hg, %bb.t ]
  %indvars.iv575 = phi i64 [ 0, %.lr.ph552 ], [ %indvars.iv.next576, %bb.t ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv575
  %i.gn = load i64, ptr %i.gm, align 4
  store i64 %i.gn, ptr %i.gl, align 4
  %i.go = load ptr, ptr %i.dh, align 8, !tbaa !239
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %i.f, ptr %i.gp, align 4
  %i.gq = load ptr, ptr %i.dh, align 8, !tbaa !239 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store i32 %3, ptr %i.gr, align 4, !tbaa !241
  %.idx610 = shl nuw nsw i64 %indvars.iv575, 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx610 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 20
  %i.gu = load i64, ptr %i.gs, align 4
  store i64 %i.gu, ptr %i.gt, align 4
  %i.gv = load ptr, ptr %i.dh, align 8, !tbaa !239
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 28
  store i64 %i.f, ptr %i.gw, align 4
  %i.gx = load ptr, ptr %i.dh, align 8, !tbaa !239 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 36
  store i32 %i.r, ptr %i.gy, align 4, !tbaa !241
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.hb = load i64, ptr %i.gz, align 4
  store i64 %i.hb, ptr %i.ha, align 4
  %i.hc = load ptr, ptr %i.dh, align 8, !tbaa !239
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  store i64 %i.f, ptr %i.hd, align 4
  %i.he = load ptr, ptr %i.dh, align 8, !tbaa !239 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  store i32 %i.r, ptr %i.hf, align 4, !tbaa !241
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 60 ; 2 uses
  store ptr %i.hg, ptr %i.dh, align 8, !tbaa !239
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1 ; 2 uses
  %exitcond579.not = icmp eq i64 %indvars.iv.next576, %i.av
  br i1 %exitcond579.not, label %.loopexit538, label %bb.t, !llvm.loop !249

bb.u:                                             ; preds = %bb.n
  %i.hh = fsub float %i.t, %i.j
  %i.hi = fmul float %i.hh, 5.000000e-01          ; 3 uses
  %i.hj = fadd float %i.j, %i.hi
  %i.hk = load <2 x float>, ptr %i.au, align 4, !tbaa !8
  %i.hl = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hn = fmul <2 x float> %i.hm, %i.hk
  %i.ho = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.hp = fadd <2 x float> %i.hn, %i.ho
  store <2 x float> %i.hp, ptr %i.aw, align 4
  %i.hq = load <2 x float>, ptr %i.au, align 4, !tbaa !8 ; 2 uses
  %i.hr = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ht = fmul <2 x float> %i.hs, %i.hq           ; 2 uses
  %i.hu = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.hv = fadd <2 x float> %i.ht, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <2 x float> %i.hv, ptr %i.hw, align 4
  %i.hx = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.hy = fsub <2 x float> %i.hx, %i.ht
  %i.hz = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x float> %i.hy, ptr %i.hz, align 4
  %i.ia = fmul <2 x float> %i.hm, %i.hq
  %i.ib = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.ic = fsub <2 x float> %i.ib, %i.ia
  %i.id = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store <2 x float> %i.ic, ptr %i.id, align 4
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 4 uses
  %i.if = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.ig = fmul <2 x float> %i.hm, %i.if
  %i.ih = load <2 x float>, ptr %i.ie, align 4, !tbaa !8
  %i.ii = fadd <2 x float> %i.ig, %i.ih
  %i.ij = shl nsw i32 %i.g, 2
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ik ; 4 uses
  store <2 x float> %i.ii, ptr %i.il, align 4
  %i.im = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.in = fmul <2 x float> %i.hs, %i.im
  %i.io = load <2 x float>, ptr %i.ie, align 4, !tbaa !8
  %i.ip = fadd <2 x float> %i.in, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store <2 x float> %i.ip, ptr %i.iq, align 4
  %i.ir = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.is = fmul <2 x float> %i.hs, %i.ir
  %i.it = load <2 x float>, ptr %i.ie, align 4, !tbaa !8
  %i.iu = fsub <2 x float> %i.it, %i.is
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <2 x float> %i.iu, ptr %i.iv, align 4
  %i.iw = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.ix = fmul <2 x float> %i.hm, %i.iw
  %i.iy = load <2 x float>, ptr %i.ie, align 4, !tbaa !8
  %i.iz = fsub <2 x float> %i.iy, %i.ix
  %i.ja = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  store <2 x float> %i.iz, ptr %i.ja, align 4
  br label %.lr.ph556

.lr.ph556:                                        ; preds = %bb.u, %.thread532
  %i.jb = phi float [ %i.bx, %.thread532 ], [ %i.hi, %bb.u ] ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !75 ; 2 uses
  %i.je = fadd float %i.j, %i.jb
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load ptr, ptr %i.jf, align 8, !tbaa !105
  %wide.trip.count583 = zext nneg i32 %i.h to i64
  %i.jg = insertelement <2 x float> poison, float %i.je, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.v

.lr.ph558:                                        ; preds = %bb.x
  store ptr %i.lv, ptr %i.jf, align 8, !tbaa !105
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %.pre597 = load ptr, ptr %i.jk, align 8, !tbaa !239
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph556, %bb.x
  %indvars.iv580 = phi i64 [ 0, %.lr.ph556 ], [ %indvars.iv.next581, %bb.x ] ; 2 uses
  %i.jl = phi ptr [ %.promoted, %.lr.ph556 ], [ %i.lv, %bb.x ] ; 9 uses
  %.0425553 = phi i32 [ %i.jd, %.lr.ph556 ], [ %spec.select, %bb.x ] ; 3 uses
  %indvars.iv.next581 = add nuw nsw i64 %indvars.iv580, 1 ; 4 uses
  %i.jm = icmp eq i64 %indvars.iv.next581, %i.av  ; 2 uses
  %i.jn = trunc nuw nsw i64 %indvars.iv.next581 to i32
  %i.jo = select i1 %i.jm, i32 0, i32 %i.jn       ; 2 uses
  %i.jp = add i32 %.0425553, 4
  %spec.select = select i1 %i.jm, i32 %i.jd, i32 %i.jp ; 3 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv580
  %i.jr = zext nneg i32 %i.jo to i64              ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.jr
  %i.jt = load <2 x float>, ptr %i.jq, align 4, !tbaa !8
  %i.ju = load <2 x float>, ptr %i.js, align 4, !tbaa !8
  %i.jv = fadd <2 x float> %i.jt, %i.ju
  %i.jw = fmul <2 x float> %i.jv, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop622 = fmul <2 x float> %i.jw, %i.jw
  %i.jx = extractelement <2 x float> %foldExtExtBinop622, i64 1
  %i.jy = extractelement <2 x float> %i.jw, i64 0 ; 2 uses
  %i.jz = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.jy, float %i.jx) ; 2 uses
  %i.ka = fcmp ogt float %i.jz, f0x358637BD
  br i1 %i.ka, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kb = fdiv float 1.000000e+00, %i.jz          ; 2 uses
  %i.kc = fcmp ogt float %i.kb, 1.000000e+02
  %.0421 = select i1 %i.kc, float 1.000000e+02, float %i.kb
  %i.kd = insertelement <2 x float> poison, float %.0421, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kf = fmul <2 x float> %i.jw, %i.ke
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.kg = phi <2 x float> [ %i.kf, %bb.w ], [ %i.jw, %bb.v ] ; 2 uses
  %i.kh = fmul <2 x float> %i.jh, %i.kg           ; 2 uses
  %i.ki = shl nsw i32 %i.jo, 2
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.kj ; 4 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.jr ; 4 uses
  %i.km = load <2 x float>, ptr %i.kl, align 4, !tbaa !8
  %i.kn = fadd <2 x float> %i.kh, %i.km
  store <2 x float> %i.kn, ptr %i.kk, align 4, !tbaa !8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.kp = fmul <2 x float> %i.jj, %i.kg           ; 2 uses
  %i.kq = load <2 x float>, ptr %i.kl, align 4, !tbaa !8
  %i.kr = fadd <2 x float> %i.kp, %i.kq
  store <2 x float> %i.kr, ptr %i.ko, align 4, !tbaa !8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.kt = load <2 x float>, ptr %i.kl, align 4, !tbaa !8
  %i.ku = fsub <2 x float> %i.kt, %i.kp
  store <2 x float> %i.ku, ptr %i.ks, align 4, !tbaa !8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.kw = load <2 x float>, ptr %i.kl, align 4, !tbaa !8
  %i.kx = fsub <2 x float> %i.kw, %i.kh
  store <2 x float> %i.kx, ptr %i.kv, align 4, !tbaa !8
  %i.ky = trunc i32 %spec.select to i16
  %i.kz = insertelement <2 x i16> poison, i16 %i.ky, i64 0
  %i.la = trunc i32 %.0425553 to i16
  %i.lb = insertelement <2 x i16> %i.kz, i16 %i.la, i64 1
  %i.lc = shufflevector <2 x i16> %i.lb, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.ld = trunc i32 %spec.select to i16           ; 3 uses
  %i.le = trunc i32 %.0425553 to i16              ; 3 uses
  %i.lf = add <4 x i16> %i.lc, <i16 1, i16 1, i16 2, i16 2> ; 3 uses
  %i.lg = shufflevector <4 x i16> %i.lf, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 0, i32 0, i32 1>
  %i.lh = add i16 %i.ld, 1
  store <8 x i16> %i.lg, ptr %i.jl, align 2, !tbaa !240
  %i.li = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store i16 %i.le, ptr %i.li, align 2, !tbaa !240
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jl, i64 18
  store i16 %i.le, ptr %i.lj, align 2, !tbaa !240
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jl, i64 20
  store i16 %i.ld, ptr %i.lk, align 2, !tbaa !240
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jl, i64 22
  store i16 %i.lh, ptr %i.ll, align 2, !tbaa !240
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.ln = extractelement <4 x i16> %i.lf, i64 3   ; 2 uses
  store i16 %i.ln, ptr %i.lm, align 2, !tbaa !240
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jl, i64 26
  %i.lp = shufflevector <4 x i16> %i.lf, <4 x i16> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.lq = insertelement <4 x i16> %i.lp, i16 %i.le, i64 1
  %i.lr = insertelement <4 x i16> %i.lq, i16 %i.ld, i64 3
  %i.ls = add <4 x i16> %i.lr, <i16 0, i16 3, i16 poison, i16 3>
  %i.lt = shufflevector <4 x i16> %i.ls, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x i16> %i.lt, ptr %i.lo, align 2, !tbaa !240
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jl, i64 34
  store i16 %i.ln, ptr %i.lu, align 2, !tbaa !240
  %i.lv = getelementptr inbounds nuw i8, ptr %i.jl, i64 36 ; 2 uses
  %exitcond584.not = icmp eq i64 %indvars.iv.next581, %wide.trip.count583
  br i1 %exitcond584.not, label %.lr.ph558, label %bb.v, !llvm.loop !250

bb.y:                                             ; preds = %.lr.ph558, %bb.y
  %i.lw = phi ptr [ %.pre597, %.lr.ph558 ], [ %i.my, %bb.y ]
  %indvars.iv585 = phi i64 [ 0, %.lr.ph558 ], [ %indvars.iv.next586, %bb.y ] ; 2 uses
  %.idx611 = shl nuw nsw i64 %indvars.iv585, 5
  %i.lx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx611 ; 4 uses
  %i.ly = load i64, ptr %i.lx, align 4
  store i64 %i.ly, ptr %i.lw, align 4
  %i.lz = load ptr, ptr %i.jk, align 8, !tbaa !239
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store i64 %i.f, ptr %i.ma, align 4
  %i.mb = load ptr, ptr %i.jk, align 8, !tbaa !239 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  store i32 %i.r, ptr %i.mc, align 4, !tbaa !241
  %i.md = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 20
  %i.mf = load i64, ptr %i.md, align 4
  store i64 %i.mf, ptr %i.me, align 4
  %i.mg = load ptr, ptr %i.jk, align 8, !tbaa !239
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 28
  store i64 %i.f, ptr %i.mh, align 4
  %i.mi = load ptr, ptr %i.jk, align 8, !tbaa !239 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 36
  store i32 %3, ptr %i.mj, align 4, !tbaa !241
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 40
  %i.mm = load i64, ptr %i.mk, align 4
  store i64 %i.mm, ptr %i.ml, align 4
  %i.mn = load ptr, ptr %i.jk, align 8, !tbaa !239
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 48
  store i64 %i.f, ptr %i.mo, align 4
  %i.mp = load ptr, ptr %i.jk, align 8, !tbaa !239 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 56
  store i32 %3, ptr %i.mq, align 4, !tbaa !241
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 60
  %i.mt = load i64, ptr %i.mr, align 4
  store i64 %i.mt, ptr %i.ms, align 4
  %i.mu = load ptr, ptr %i.jk, align 8, !tbaa !239
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 68
  store i64 %i.f, ptr %i.mv, align 4
  %i.mw = load ptr, ptr %i.jk, align 8, !tbaa !239 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 76
  store i32 %i.r, ptr %i.mx, align 4, !tbaa !241
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 80 ; 2 uses
  store ptr %i.my, ptr %i.jk, align 8, !tbaa !239
  %indvars.iv.next586 = add nuw nsw i64 %indvars.iv585, 1 ; 2 uses
  %exitcond589.not = icmp eq i64 %indvars.iv.next586, %i.av
  br i1 %exitcond589.not, label %.loopexit538, label %bb.y, !llvm.loop !251

.loopexit538:                                     ; preds = %bb.s, %bb.t, %bb.y
  %i.mz = and i32 %i.ai, 65535
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !75
  %i.nc = add i32 %i.nb, %i.mz
  store i32 %i.nc, ptr %i.na, align 4, !tbaa !75
  br label %.loopexit

.lr.ph561:                                        ; preds = %bb.d
  %i.nd = mul nsw i32 %i.h, 6
  %i.ne = shl nsw i32 %i.h, 2
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.nd, i32 noundef %i.ne)
  %i.nf = fmul float %4, 5.000000e-01
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.nj = zext nneg i32 %2 to i64
  %wide.trip.count593 = zext nneg i32 %i.h to i64
  %i.nk = insertelement <2 x float> poison, float %i.nf, i64 0
  %i.nl = shufflevector <2 x float> %i.nk, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph561, %bb.ab
  %indvars.iv590 = phi i64 [ 0, %.lr.ph561 ], [ %indvars.iv.next591, %bb.ab ] ; 2 uses
  %indvars.iv.next591 = add nuw nsw i64 %indvars.iv590, 1 ; 4 uses
  %i.nm = icmp eq i64 %indvars.iv.next591, %i.nj
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv590 ; 3 uses
  %i.no = select i1 %i.nm, i64 0, i64 %indvars.iv.next591
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.no ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 4 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  %i.ns = load <2 x float>, ptr %i.np, align 4, !tbaa !8
  %i.nt = load <2 x float>, ptr %i.nn, align 4, !tbaa !8 ; 3 uses
  %i.nu = fsub <2 x float> %i.ns, %i.nt           ; 5 uses
  %foldExtExtBinop624 = fmul <2 x float> %i.nu, %i.nu
  %i.nv = extractelement <2 x float> %foldExtExtBinop624, i64 1
  %i.nw = extractelement <2 x float> %i.nu, i64 0 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN14ImTriangulator15GetNextTriangleEPj:bb.a
  %.015.in19 = phi ptr [ %i.cs, %.lr.ph ], [ %.015.in19.unr, %.lr.ph.prol.loopexit ]
  %.015 = load ptr, ptr %.015.in19, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015, align 8, !tbaa !308
  %i.ck = getelementptr inbounds nuw i8, ptr %.015, i64 16
  %.015.1 = load ptr, ptr %i.ck, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015.1, align 8, !tbaa !308
  %i.cl = getelementptr inbounds nuw i8, ptr %.015.1, i64 16
  %.015.2 = load ptr, ptr %i.cl, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015.2, align 8, !tbaa !308
  %i.cm = getelementptr inbounds nuw i8, ptr %.015.2, i64 16
  %.015.3 = load ptr, ptr %i.cm, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015.3, align 8, !tbaa !308
  %i.cn = getelementptr inbounds nuw i8, ptr %.015.3, i64 16
  %.015.4 = load ptr, ptr %i.cn, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015.4, align 8, !tbaa !308
  %i.co = getelementptr inbounds nuw i8, ptr %.015.4, i64 16
  %.015.5 = load ptr, ptr %i.co, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015.5, align 8, !tbaa !308
  %i.cp = getelementptr inbounds nuw i8, ptr %.015.5, i64 16
  %.015.6 = load ptr, ptr %i.cp, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015.6, align 8, !tbaa !308
  %i.cq = getelementptr inbounds nuw i8, ptr %.015.6, i64 16
  %.015.7 = load ptr, ptr %i.cq, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015.7, align 8, !tbaa !308
  %i.cr = add nsw i32 %.020, -8
  %i.cs = getelementptr inbounds nuw i8, ptr %.015.7, i64 16
  %.not.7 = icmp eq i32 %.020, 7
  br i1 %.not.7, label %.lr.ph.i16, label %.lr.ph, !llvm.loop !321

bb.h:                                             ; preds = %_ZN14ImTriangulator9BuildEarsEv.exit
  %i.ct = load ptr, ptr %i.e, align 8, !tbaa !301
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !302
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !311
  br label %bb.i

bb.i:                                             ; preds = %_ZN14ImTriangulator9BuildEarsEv.exit, %bb.h, %bb.a
  %i.cv = phi i32 [ %i.ci, %_ZN14ImTriangulator9BuildEarsEv.exit ], [ 1, %bb.h ], [ %i.c, %bb.a ]
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !302
  %i.cx = add nsw i32 %i.cv, -1                   ; 2 uses
  store i32 %i.cx, ptr %i.b, align 8, !tbaa !318
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !311 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !304 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !309
  store i32 %i.de, ptr %1, align 4, !tbaa !280
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !309
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !280
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !307 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !309
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !280
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store ptr %i.dc, ptr %i.dn, align 8, !tbaa !304
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %i.dj, ptr %i.do, align 8, !tbaa !307
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !301
  %i.dr = icmp eq ptr %i.da, %i.dq
  br i1 %i.dr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.dj, ptr %i.dp, align 8, !tbaa !301
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @_ZN14ImTriangulator14ReclassifyNodeEP18ImTriangulatorNode(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.dc)
  %i.ds = load ptr, ptr %i.di, align 8, !tbaa !307
  tail call void @_ZN14ImTriangulator14ReclassifyNodeEP18ImTriangulatorNode(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.ds)
  %i.dt = load i32, ptr %0, align 8, !tbaa !296
  %i.du = add nsw i32 %i.dt, -1
  store i32 %i.du, ptr %0, align 8, !tbaa !296
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN14ImTriangulator12FlipNodeListEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !307  ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !307
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.b, ptr %i.e, align 8, !tbaa !304
  %.not17 = icmp eq ptr %i.d, %i.b
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.019 = phi ptr [ %i.g, %.lr.ph ], [ %i.d, %bb.a ] ; 6 uses
  %.01618 = phi ptr [ %.019, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !307  ; 2 uses
  store ptr %.01618, ptr %i.f, align 8, !tbaa !307
  %i.h = getelementptr inbounds nuw i8, ptr %.01618, i64 24
  store ptr %.019, ptr %i.h, align 8, !tbaa !304
  store ptr %.019, ptr %i.c, align 8, !tbaa !307
  %i.i = getelementptr inbounds nuw i8, ptr %.019, i64 24
  store ptr %i.b, ptr %i.i, align 8, !tbaa !304
  %.not = icmp eq ptr %i.g, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !319

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.016.lcssa = phi ptr [ %i.b, %bb.a ], [ %.019, %.lr.ph ]
  store ptr %.016.lcssa, ptr %i.a, align 8, !tbaa !301
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN14ImTriangulator14ReclassifyNodeEP18ImTriangulatorNode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !304  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !307  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.h = load float, ptr %i.f, align 8, !tbaa !234 ; 2 uses
  %i.i = load float, ptr %i.e, align 4, !tbaa !234
  %i.j = fsub float %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.l = load float, ptr %i.k, align 4, !tbaa !235
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !235 ; 2 uses
  %i.o = fsub float %i.l, %i.n
  %i.p = load float, ptr %i.g, align 4, !tbaa !234
  %i.q = fsub float %i.p, %i.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !235
  %i.t = fsub float %i.n, %i.s
  %i.u = fneg float %i.t
  %i.v = fmul float %i.q, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.j, float %i.o, float %i.v)
  %i.x = fcmp ule float %i.w, 0.000000e+00        ; 3 uses
  br i1 %i.x, label %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !309
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !309
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !309
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !303 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !314 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %.idx.i = shl nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %.idx.i
  %.not2428.i = icmp slt i32 %i.ah, 1
  br i1 %.not2428.i, label %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.critedge.i
  %.01829.i = phi ptr [ %i.ap, %.critedge.i ], [ %i.af, %bb.b ] ; 2 uses
  %i.ak = load ptr, ptr %.01829.i, align 8, !tbaa !311 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !309 ; 3 uses
  %.not.i = icmp eq i32 %i.am, %i.z
  %.not22.i = icmp eq i32 %i.am, %i.ab
  %or.cond.i = or i1 %.not.i, %.not22.i
  %.not23.i = icmp eq i32 %i.am, %i.ad
  %or.cond25.i = or i1 %.not23.i, %or.cond.i
  br i1 %or.cond25.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = tail call noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.f, ptr noundef nonnull align 4 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %i.an)
  br i1 %i.ao, label %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.01829.i, i64 8 ; 2 uses
  %.not24.not.i = icmp ult ptr %i.ap, %i.aj
  br i1 %.not24.not.i, label %.lr.ph.i, label %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit, !llvm.loop !315

_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit: ; preds = %bb.c, %.critedge.i, %bb.b, %bb.a
  %brmerge = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ true, %.critedge.i ], [ false, %bb.c ]
  %.0 = phi i32 [ 2, %bb.a ], [ 1, %bb.b ], [ 1, %.critedge.i ], [ 0, %bb.c ] ; 2 uses
  %i.aq = load i32, ptr %1, align 8, !tbaa !308   ; 2 uses
  %i.ar = icmp eq i32 %.0, %i.aq
  br i1 %i.ar, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit
  switch i32 %i.aq, label %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit [
    i32 2, label %bb.e
    i32 1, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !309
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !312 ; 3 uses
  %i.ax = load ptr, ptr %i.as, align 8            ; 3 uses
  %2 = zext i32 %i.aw to i64                      ; 2 uses
  %i.ay = icmp sgt i32 %i.aw, 0
  br i1 %i.ay, label %bb.g, label %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit

bb.f:                                             ; preds = %bb.g
  %i.az = trunc nuw i64 %i.bb to i32
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.g, label %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit, !llvm.loop !322

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.i54 = phi i64 [ %i.bb, %bb.f ], [ %2, %bb.e ]
  %i.bb = add nsw i64 %indvars.iv.i54, -1         ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !311
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !309
  %i.bg = icmp eq i32 %i.bf, %i.au
  br i1 %i.bg, label %bb.h, label %bb.f, !llvm.loop !322

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bb
  %i.bi = getelementptr [8 x i8], ptr %i.ax, i64 %2
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !311
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !311
  %i.bl = add nsw i32 %i.aw, -1
  store i32 %i.bl, ptr %i.av, align 8, !tbaa !312
  br label %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit

bb.i:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !309
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !312 ; 3 uses
  %i.br = load ptr, ptr %i.bm, align 8            ; 3 uses
  %3 = zext i32 %i.bq to i64                      ; 2 uses
  %i.bs = icmp sgt i32 %i.bq, 0
  br i1 %i.bs, label %bb.k, label %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit

bb.j:                                             ; preds = %bb.k
  %i.bt = trunc nuw i64 %i.bv to i32
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %bb.k, label %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit, !llvm.loop !322

bb.k:                                             ; preds = %bb.i, %bb.j
  %indvars.iv.i2553 = phi i64 [ %i.bv, %bb.j ], [ %3, %bb.i ]
  %i.bv = add nsw i64 %indvars.iv.i2553, -1       ; 4 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !311
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !309
  %i.ca = icmp eq i32 %i.bz, %i.bo
  br i1 %i.ca, label %bb.l, label %bb.j, !llvm.loop !322

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bv
  %i.cc = getelementptr [8 x i8], ptr %i.br, i64 %3
  %i.cd = getelementptr i8, ptr %i.cc, i64 -8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !311
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !311
  %i.cf = add nsw i32 %i.bq, -1
  store i32 %i.cf, ptr %i.bp, align 8, !tbaa !312
  br label %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit

_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit: ; preds = %bb.j, %bb.f, %bb.i, %bb.e, %bb.l, %bb.h, %bb.d
  br i1 %brmerge, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit
  %.mux50 = select i1 %i.x, i64 40, i64 24
  %.mux = select i1 %i.x, i64 32, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %.mux
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !316
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %.mux50 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !312 ; 2 uses
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 8, !tbaa !312
  %i.cl = sext i32 %i.cj to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.cl
  store ptr %1, ptr %i.cm, align 8, !tbaa !311
  br label %bb.m

bb.m:                                             ; preds = %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit, %.sink.split
  store i32 %.0, ptr %1, align 8, !tbaa !308
  br label %bb.n

bb.n:                                             ; preds = %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit, %bb.m
  ret void
}

declare noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList20AddConcavePolyFilledEPK6ImVec2ij(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #17 align 2 {
bb.a:
  %4 = alloca %struct.ImTriangulator, align 8     ; 14 uses
  %i.a = alloca [3 x i32], align 8                ; 8 uses
  %i.b = icmp slt i32 %2, 3
  %i.c = icmp ult i32 %3, 16777216
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  store i32 0, ptr %4, align 8, !tbaa !296
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.h, align 8, !tbaa !316
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.i, align 8, !tbaa !312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !74
  %i.l = and i32 %i.k, 4
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.lr.ph141, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load float, ptr %i.m, align 8, !tbaa !88
  %i.o = and i32 %3, 16777215
  %reass.mul = mul i32 %2, 9
  %i.p = add i32 %reass.mul, -6
  %i.q = shl nuw nsw i32 %2, 1                    ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.p, i32 noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !75   ; 5 uses
  %i.t = add i32 %i.s, 1                          ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !35   ; 3 uses
  %i.v = mul i32 %2, 48
  %i.w = ashr exact i32 %i.v, 3                   ; 2 uses
  %i.x = or disjoint i32 %i.w, 1                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 76 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !82
  %.not.i.not = icmp slt i32 %i.w, %i.z
  br i1 %.not.i.not, label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28 ; 2 uses
  %.not4.i = icmp eq ptr %i.ab, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ab)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = sext i32 %i.x to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ad)
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !28
  store i32 %i.x, ptr %i.y, align 4, !tbaa !82
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !35
  br label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit

_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit:    ; preds = %bb.c, %bb.f
  %i.af = phi ptr [ %i.u, %bb.c ], [ %.pre, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !244
  call void @_ZN14ImTriangulator4InitEPK6ImVec2iPv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, i32 noundef %2, ptr noundef %i.ah)
  %i.ai = load i32, ptr %4, align 8, !tbaa !296
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
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !105 ; 3 uses
  %i.ap = load <2 x i32>, ptr %i.a, align 8, !tbaa !280
  %i.aq = shl <2 x i32> %i.ap, splat (i32 1)
  %i.ar = add <2 x i32> %i.aq, %i.an
  %i.as = trunc <2 x i32> %i.ar to <2 x i16>
  store <2 x i16> %i.as, ptr %i.ao, align 2, !tbaa !240
  %i.at = load i32, ptr %i.al, align 8, !tbaa !280
  %i.au = shl i32 %i.at, 1
  %i.av = add i32 %i.au, %i.s
  %i.aw = trunc i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !240
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 6
  store ptr %i.ay, ptr %i.ak, align 8, !tbaa !105
  %i.az = load i32, ptr %4, align 8, !tbaa !296
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.g, label %._crit_edge, !llvm.loop !323

._crit_edge:                                      ; preds = %bb.g, %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !35  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 76 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !82
  %.not.i124 = icmp sgt i32 %2, %i.bd
  br i1 %.not.i124, label %bb.h, label %.lr.ph134.preheader

bb.h:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 80 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !28 ; 2 uses
  %.not4.i125 = icmp eq ptr %i.bf, null
  br i1 %.not4.i125, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = zext nneg i32 %2 to i64
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bh)
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !28
  store i32 %2, ptr %i.bc, align 4, !tbaa !82
  %.pre156 = load ptr, ptr %i.d, align 8, !tbaa !35
  br label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %bb.j, %._crit_edge
  %i.bj = phi ptr [ %i.bb, %._crit_edge ], [ %.pre156, %bb.j ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !244 ; 3 uses
  %i.bm = add nsw i32 %2, -1                      ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.bn = zext nneg i32 %i.bm to i64
  br label %.lr.ph134

.lr.ph137:                                        ; preds = %bb.l
  %i.bo = fmul float %i.n, 5.000000e-01
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %wide.trip.count149 = zext nneg i32 %2 to i64
  %i.br = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.m

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph134.preheader ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.0119132 = phi i64 [ %i.bn, %.lr.ph134.preheader ], [ %indvars.iv, %bb.l ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0119132
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bv = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.bw = load <2 x float>, ptr %i.bt, align 4, !tbaa !8
  %i.bx = fsub <2 x float> %i.bv, %i.bw           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.bx, %i.bx
  %i.by = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bz = extractelement <2 x float> %i.bx, i64 0 ; 2 uses
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.by) ; 2 uses
  %i.cb = fcmp ogt float %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph134
  %i.cc = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cd = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.cc)
end_hunk_1
begin_hunk_2_@_ZL20stbtt_FindGlyphIndexPK14stbtt_fontinfoi:bb.a
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
  %1 = zext nneg i32 %i.fq to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.a
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.es
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ec ; 2 uses
  %.val = load i8, ptr %i.fv, align 1, !tbaa !31
  %i.fw = getelementptr i8, ptr %i.fv, i64 1
  %.val146 = load i8, ptr %i.fw, align 1, !tbaa !31
  %i.fx = zext i8 %.val to i32
  %i.fy = shl nuw nsw i32 %i.fx, 8
  %i.fz = zext i8 %.val146 to i32
  %i.ga = or disjoint i32 %i.fy, %i.fz
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %._crit_edge
  %.2132.shrunk = phi i32 [ %i.ga, %bb.j ], [ %i.fm, %bb.i ], [ 0, %._crit_edge ]
  %.2132 = and i32 %.2132.shrunk, 65535
  br label %.loopexit

bb.l:                                             ; preds = %bb.a
  %i.gb = icmp eq i16 %i.g, 12
  %i.gc = and i16 %i.g, -2
  %or.cond = icmp eq i16 %i.gc, 12
  br i1 %or.cond, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ge = load i32, ptr %i.gd, align 1
  %i.gf = tail call i32 @llvm.bswap.i32(i32 %i.ge) ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, 0
  br i1 %i.gg, label %.lr.ph14, label %.loopexit

.lr.ph14:                                         ; preds = %bb.m
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph14, %bb.q
  %.012 = phi i32 [ %i.gf, %.lr.ph14 ], [ %.2, %bb.q ] ; 2 uses
  %.012011 = phi i32 [ 0, %.lr.ph14 ], [ %.2122, %bb.q ] ; 3 uses
  %i.gi = sub nsw i32 %.012, %.012011
  %i.gj = lshr i32 %i.gi, 1
  %i.gk = add nuw nsw i32 %i.gj, %.012011         ; 3 uses
  %i.gl = mul nsw i32 %i.gk, 12
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gm ; 3 uses
  %i.go = load i32, ptr %i.gn, align 1
  %i.gp = tail call i32 @llvm.bswap.i32(i32 %i.go) ; 2 uses
  %i.gq = icmp ult i32 %0, %i.gp
  br i1 %i.gq, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gs = load i32, ptr %i.gr, align 1
  %i.gt = tail call i32 @llvm.bswap.i32(i32 %i.gs)
  %i.gu = icmp ugt i32 %0, %i.gt
  br i1 %i.gu, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.gv = add nuw nsw i32 %i.gk, 1
  br label %bb.q

.thread:                                          ; preds = %bb.o
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gx = load i32, ptr %i.gw, align 1
  %i.gy = tail call i32 @llvm.bswap.i32(i32 %i.gx)
  %i.gz = sub nsw i32 %0, %i.gp
  %i.ha = select i1 %i.gb, i32 %i.gz, i32 0
  %.5 = add i32 %i.gy, %i.ha
  br label %.loopexit

bb.q:                                             ; preds = %bb.p, %bb.n
  %.2122 = phi i32 [ %.012011, %bb.n ], [ %i.gv, %bb.p ] ; 2 uses
  %.2 = phi i32 [ %i.gk, %bb.n ], [ %.012, %bb.p ] ; 2 uses
  %i.hb = icmp slt i32 %.2122, %.2
  br i1 %i.hb, label %bb.n, label %.loopexit, !llvm.loop !847

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
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  %.val34.i = load i8, ptr %i.bt, align 1, !tbaa !31
end_hunk_2
