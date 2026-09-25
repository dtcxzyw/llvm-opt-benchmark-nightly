Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 352
begin_hunk_0_@_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j:bb.a
  store i64 %i.an, ptr %i.am, align 4
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !242
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load i64, ptr %4, align 4
  store i64 %i.aq, ptr %i.ap, align 4
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !242 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store i32 %5, ptr %i.as, align 4, !tbaa !245
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 60
  store i32 %i.d, ptr %i.at, align 4
  %.sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store i32 %i.f, ptr %.sroa_idx26, align 4
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !242 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 68
  store i32 %i.j, ptr %i.av, align 4
  %.sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store i32 %i.l, ptr %.sroa_idx22, align 4
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !92
  %i.ax = add i32 %i.aw, 4
  store i32 %i.ax, ptr %i.m, align 4, !tbaa !92
  %i.ay = load <2 x ptr>, ptr %i.z, align 8, !tbaa !246
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !242
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 76
  store i32 %5, ptr %i.ba, align 4, !tbaa !245
  %i.bb = getelementptr inbounds nuw i8, <2 x ptr> %i.ay, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.bb, ptr %i.z, align 8, !tbaa !246
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10ImDrawList10PrimQuadUVERK6ImVec2S2_S2_S2_S2_S2_S2_S2_j(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %8, i32 noundef %9) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !92
  %i.c = trunc i32 %i.b to i16                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113  ; 6 uses
  store i16 %i.c, ptr %i.e, align 2, !tbaa !243
  %i.f = add i16 %i.c, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 %i.f, ptr %i.g, align 2, !tbaa !243
  %i.h = add i16 %i.c, 2                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i16 %i.h, ptr %i.i, align 2, !tbaa !243
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i16 %i.c, ptr %i.j, align 2, !tbaa !243
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i16 %i.h, ptr %i.k, align 2, !tbaa !243
  %i.l = add i16 %i.c, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i16 %i.l, ptr %i.m, align 2, !tbaa !243
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !242
  %i.p = load i64, ptr %1, align 4
  store i64 %i.p, ptr %i.o, align 4
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !242
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %5, align 4
  store i64 %i.s, ptr %i.r, align 4
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !242  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 %9, ptr %i.u, align 4, !tbaa !245
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.w = load i64, ptr %2, align 4
  store i64 %i.w, ptr %i.v, align 4
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !242
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.z = load i64, ptr %6, align 4
  store i64 %i.z, ptr %i.y, align 4
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !242 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  store i32 %9, ptr %i.ab, align 4, !tbaa !245
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ad = load i64, ptr %3, align 4
  store i64 %i.ad, ptr %i.ac, align 4
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !242
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load i64, ptr %7, align 4
  store i64 %i.ag, ptr %i.af, align 4
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !242 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i32 %9, ptr %i.ai, align 4, !tbaa !245
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 60
  %i.ak = load i64, ptr %4, align 4
  store i64 %i.ak, ptr %i.aj, align 4
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !242
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  %i.an = load i64, ptr %8, align 4
  store i64 %i.an, ptr %i.am, align 4
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !92
  %i.ap = add i32 %i.ao, 4
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !92
  %i.aq = load <2 x ptr>, ptr %i.n, align 8, !tbaa !246
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !242
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  store i32 %9, ptr %i.as, align 4, !tbaa !245
  %i.at = getelementptr inbounds nuw i8, <2 x ptr> %i.aq, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.at, ptr %i.n, align 8, !tbaa !246
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
  %.not443 = icmp eq i32 %i.c, 0                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = load i64, ptr %i.e, align 8              ; 11 uses
  %i.g = add nsw i32 %2, -1                       ; 4 uses
  %i.h = select i1 %.not443, i32 %i.g, i32 %2     ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load float, ptr %i.i, align 8, !tbaa !103 ; 8 uses
  %i.k = fcmp ogt float %4, %i.j                  ; 5 uses
  %i.l = and i32 %5, -2147483633
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !91   ; 2 uses
  %i.q = and i32 %i.p, 1
  %.not444 = icmp eq i32 %i.q, 0
  br i1 %.not444, label %.lr.ph558, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = and i32 %3, 16777215                     ; 4 uses
  %i.s = fcmp oge float %4, 1.000000e+00
  %i.t = select i1 %i.s, float %4, float 1.000000e+00 ; 6 uses
  %i.u = fptosi float %i.t to i32                 ; 3 uses
  %i.v = uitofp nneg i32 %i.u to float
  %i.w = fsub float %i.t, %i.v
  %i.x = and i32 %i.p, 2
  %i.y = icmp eq i32 %i.x, 0
  %i.z = icmp samesign ugt i32 %i.u, 31
  %or.cond.not453 = select i1 %i.y, i1 true, i1 %i.z
  %i.aa = fcmp ugt float %i.w, f0x3727C5AC
  %or.cond3.not450 = select i1 %or.cond.not453, i1 true, i1 %i.aa
  %i.ab = fcmp une float %i.j, 1.000000e+00
  %.not448 = select i1 %or.cond3.not450, i1 true, i1 %i.ab ; 8 uses
  %.v = select i1 %i.k, i32 18, i32 12
  %.v530 = select i1 %.not448, i32 %.v, i32 6
  %i.ac = mul nsw i32 %.v530, %i.h
  br i1 %.not448, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = shl nuw nsw i32 %2, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ae = shl nuw nsw i32 %2, 2
  %i.af = mul nuw nsw i32 %2, 3
  %i.ag = select i1 %i.k, i32 %i.ae, i32 %i.af
  %i.ah = select i1 %i.k, i32 5, i32 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not446 = phi i32 [ 3, %bb.f ], [ %i.ah, %bb.g ]
  %i.ai = phi i32 [ %i.ad, %bb.f ], [ %i.ag, %bb.g ] ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.ac, i32 noundef %i.ai)
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !73  ; 3 uses
  %i.ak = mul nuw nsw i32 %.not446, %2            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 76 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !99
  %.not.i = icmp sgt i32 %i.ak, %i.am
  br i1 %.not.i, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47 ; 2 uses
  %.not4.i = icmp eq ptr %i.ao, null
  br i1 %.not4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ao)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aq)
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !47
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !99
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !73
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k, %bb.h
  %i.as = phi ptr [ %i.aj, %bb.h ], [ %.pre, %bb.k ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !247 ; 11 uses
  %i.av = zext nneg i32 %2 to i64                 ; 7 uses
  %i.aw = getelementptr [8 x i8], ptr %i.au, i64 %i.av ; 14 uses
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.m
  br i1 %.not443, label %bb.n, label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ax = icmp eq i64 %indvars.iv.next, %i.av
  %i.ay = select i1 %i.ax, i64 0, i64 %indvars.iv.next
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bb = load <2 x float>, ptr %i.az, align 4, !tbaa !29
  %i.bc = load <2 x float>, ptr %i.ba, align 4, !tbaa !29
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
  store float %i.bo, ptr %i.bn, align 4, !tbaa !237
  %i.bp = extractelement <2 x float> %i.bm, i64 0
  %i.bq = fneg float %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store float %i.bq, ptr %i.br, align 4, !tbaa !238
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !565

bb.n:                                             ; preds = %._crit_edge
  %i.bs = getelementptr i8, ptr %i.aw, i64 -16
  %i.bt = zext nneg i32 %i.g to i64               ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bt ; 5 uses
  %i.bv = load i64, ptr %i.bs, align 4
  store i64 %i.bv, ptr %i.bu, align 4
  %or.cond5 = select i1 %.not448, i1 %i.k, i1 false
  br i1 %or.cond5, label %bb.u, label %bb.o

.thread:                                          ; preds = %._crit_edge
  %or.cond5527 = select i1 %.not448, i1 %i.k, i1 false
  br i1 %or.cond5527, label %.thread529, label %.thread528

.thread529:                                       ; preds = %.thread
  %i.bw = fsub float %i.t, %i.j
  %i.bx = fmul float %i.bw, 5.000000e-01
  br label %.lr.ph553

.thread528:                                       ; preds = %.thread
  %i.by = tail call float @llvm.fmuladd.f32(float %i.t, float 5.000000e-01, float 1.000000e+00)
  %i.bz = select i1 %.not448, float %i.j, float %i.by
  br label %.lr.ph543

bb.o:                                             ; preds = %bb.n
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.t, float 5.000000e-01, float 1.000000e+00)
  %i.cb = select i1 %.not448, float %i.j, float %i.ca ; 2 uses
  %i.cc = load <2 x float>, ptr %i.au, align 4, !tbaa !29
  %i.cd = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cf = fmul <2 x float> %i.ce, %i.cc
  %i.cg = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.ch = fadd <2 x float> %i.cf, %i.cg
  store <2 x float> %i.ch, ptr %i.aw, align 4
  %i.ci = load <2 x float>, ptr %i.au, align 4, !tbaa !29
  %i.cj = fmul <2 x float> %i.ce, %i.ci
  %i.ck = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.cl = fsub <2 x float> %i.ck, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <2 x float> %i.cl, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 2 uses
  %i.co = load <2 x float>, ptr %i.bu, align 4, !tbaa !29
  %i.cp = fmul <2 x float> %i.ce, %i.co
  %i.cq = load <2 x float>, ptr %i.cn, align 4, !tbaa !29
  %i.cr = fadd <2 x float> %i.cp, %i.cq
  %i.cs = shl nuw nsw i32 %i.g, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ct ; 2 uses
  store <2 x float> %i.cr, ptr %i.cu, align 4
  %i.cv = load <2 x float>, ptr %i.bu, align 4, !tbaa !29
  %i.cw = fmul <2 x float> %i.ce, %i.cv
  %i.cx = load <2 x float>, ptr %i.cn, align 4, !tbaa !29
  %i.cy = fsub <2 x float> %i.cx, %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store <2 x float> %i.cy, ptr %i.cz, align 4
  br label %.lr.ph543

.lr.ph543:                                        ; preds = %bb.o, %.thread528
  %i.da = phi float [ %i.bz, %.thread528 ], [ %i.cb, %bb.o ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !92 ; 2 uses
  %i.dd = select i1 %.not448, i32 3, i32 2
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %wide.trip.count565 = zext nneg i32 %i.h to i64 ; 2 uses
  %i.df = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %.promoted625 = load ptr, ptr %i.de, align 8, !tbaa !113
  br label %.backedge

.lr.ph549:                                        ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %.pre593 = load ptr, ptr %i.dh, align 8, !tbaa !242
  br label %bb.t

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph543
  %i.di = phi ptr [ %.promoted625, %.lr.ph543 ], [ %i.fi, %.backedge.backedge ] ; 13 uses
  %indvars.iv562 = phi i64 [ 0, %.lr.ph543 ], [ %indvars.iv.next563, %.backedge.backedge ] ; 2 uses
  %.0433540 = phi i32 [ %i.dc, %.lr.ph543 ], [ %i.dn, %.backedge.backedge ] ; 3 uses
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 5 uses
  %i.dj = icmp eq i64 %indvars.iv.next563, %i.av  ; 2 uses
  %i.dk = trunc nuw nsw i64 %indvars.iv.next563 to i32
  %i.dl = select i1 %i.dj, i32 0, i32 %i.dk       ; 2 uses
  %i.dm = add i32 %.0433540, %i.dd
  %i.dn = select i1 %i.dj, i32 %i.dc, i32 %i.dm   ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv562
  %i.dp = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dp
  %i.dr = load <2 x float>, ptr %i.do, align 4, !tbaa !29
  %i.ds = load <2 x float>, ptr %i.dq, align 4, !tbaa !29
  %i.dt = fadd <2 x float> %i.dr, %i.ds
  %i.du = fmul <2 x float> %i.dt, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop617 = fmul <2 x float> %i.du, %i.du
  %i.dv = extractelement <2 x float> %foldExtExtBinop617, i64 1
  %i.dw = extractelement <2 x float> %i.du, i64 0 ; 2 uses
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.dv) ; 2 uses
  %i.dy = fcmp ogt float %i.dx, f0x358637BD
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.backedge
  %i.dz = fdiv float 1.000000e+00, %i.dx          ; 2 uses
  %i.ea = fcmp ogt float %i.dz, 1.000000e+02
  %spec.store.select = select i1 %i.ea, float 1.000000e+02, float %i.dz
  %i.eb = insertelement <2 x float> poison, float %spec.store.select, i64 0
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
  %i.ek = load <2 x float>, ptr %i.ej, align 4, !tbaa !29
  %i.el = fadd <2 x float> %i.ef, %i.ek
  store <2 x float> %i.el, ptr %i.ei, align 4, !tbaa !29
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.en = load <2 x float>, ptr %i.ej, align 4, !tbaa !29
  %i.eo = fsub <2 x float> %i.en, %i.ef
  store <2 x float> %i.eo, ptr %i.em, align 4, !tbaa !29
  %i.ep = trunc i32 %i.dn to i16                  ; 4 uses
  store i16 %i.ep, ptr %i.di, align 2, !tbaa !243
  %i.eq = trunc i32 %.0433540 to i16              ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !243
  %i.es = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  br i1 %.not448, label %bb.r, label %.thread609

bb.r:                                             ; preds = %bb.q
  %i.eu = trunc i32 %i.dn to i16
  %i.ev = insertelement <2 x i16> poison, i16 %i.eu, i64 0
  %i.ew = trunc i32 %.0433540 to i16
  %i.ex = insertelement <2 x i16> %i.ev, i16 %i.ew, i64 1
  %i.ey = shufflevector <2 x i16> %i.ex, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ez = add i16 %i.eq, 2                        ; 2 uses
  store i16 %i.ez, ptr %i.es, align 2, !tbaa !243
  %i.fa = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !243
  %i.fb = add <4 x i16> %i.ey, <i16 2, i16 0, i16 1, i16 1> ; 2 uses
  store <4 x i16> %i.fb, ptr %i.et, align 2, !tbaa !243
  %i.fc = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i16 %i.eq, ptr %i.fc, align 2, !tbaa !243
  %i.fd = getelementptr inbounds nuw i8, ptr %i.di, i64 18
  store i16 %i.eq, ptr %i.fd, align 2, !tbaa !243
  %i.fe = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  store i16 %i.ep, ptr %i.fe, align 2, !tbaa !243
  %i.ff = getelementptr inbounds nuw i8, ptr %i.di, i64 22
  %i.fg = extractelement <4 x i16> %i.fb, i64 2
  store i16 %i.fg, ptr %i.ff, align 2, !tbaa !243
  %i.fh = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  store ptr %i.fh, ptr %i.de, align 8, !tbaa !113
  %exitcond566.not = icmp eq i64 %indvars.iv.next563, %wide.trip.count565
  br i1 %exitcond566.not, label %.lr.ph549, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.r, %.thread609
  %i.fi = phi ptr [ %i.fh, %bb.r ], [ %i.fn, %.thread609 ]
  br label %.backedge, !llvm.loop !566

.thread609:                                       ; preds = %bb.q
  %i.fj = getelementptr inbounds nuw i8, ptr %i.di, i64 10
  %i.fk = add i16 %i.eq, 1                        ; 2 uses
  store i16 %i.fk, ptr %i.es, align 2, !tbaa !243
  %i.fl = add i16 %i.ep, 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !243
  store i16 %i.fk, ptr %i.et, align 2, !tbaa !243
  store i16 %i.ep, ptr %i.fj, align 2, !tbaa !243
  %i.fn = getelementptr inbounds nuw i8, ptr %i.di, i64 12 ; 2 uses
  store ptr %i.fn, ptr %i.de, align 8, !tbaa !113
  %exitcond566.not611 = icmp eq i64 %indvars.iv.next563, %wide.trip.count565
  br i1 %exitcond566.not611, label %.lr.ph547, label %.backedge.backedge

.lr.ph547:                                        ; preds = %.thread609
  %i.fo = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !248
  %i.fr = zext nneg i32 %i.u to i64
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %i.fr ; 2 uses
  %i.ft = load <2 x i32>, ptr %i.fs, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !29
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %.pre592 = load ptr, ptr %i.fv, align 8, !tbaa !242
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph547, %bb.s
  %i.fw = phi ptr [ %.pre592, %.lr.ph547 ], [ %i.gk, %bb.s ]
  %indvars.iv567 = phi i64 [ 0, %.lr.ph547 ], [ %indvars.iv.next568, %bb.s ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv567, 4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 4
  store i64 %i.fy, ptr %i.fw, align 4
  %i.fz = load ptr, ptr %i.fv, align 8, !tbaa !242
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store <2 x i32> %i.ft, ptr %i.ga, align 4
  %i.gb = load ptr, ptr %i.fv, align 8, !tbaa !242 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i32 %3, ptr %i.gc, align 4, !tbaa !245
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  %i.gf = load i64, ptr %i.gd, align 4
  store i64 %i.gf, ptr %i.ge, align 4
  %i.gg = load ptr, ptr %i.fv, align 8, !tbaa !242
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 28
  store <2 x i32> %i.fu, ptr %i.gh, align 4
  %i.gi = load ptr, ptr %i.fv, align 8, !tbaa !242 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  store i32 %3, ptr %i.gj, align 4, !tbaa !245
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 40 ; 2 uses
  store ptr %i.gk, ptr %i.fv, align 8, !tbaa !242
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next568, %i.av
  br i1 %exitcond571.not, label %.loopexit535, label %bb.s, !llvm.loop !567

bb.t:                                             ; preds = %.lr.ph549, %bb.t
  %i.gl = phi ptr [ %.pre593, %.lr.ph549 ], [ %i.hg, %bb.t ]
  %indvars.iv572 = phi i64 [ 0, %.lr.ph549 ], [ %indvars.iv.next573, %bb.t ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv572
  %i.gn = load i64, ptr %i.gm, align 4
  store i64 %i.gn, ptr %i.gl, align 4
  %i.go = load ptr, ptr %i.dh, align 8, !tbaa !242
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %i.f, ptr %i.gp, align 4
  %i.gq = load ptr, ptr %i.dh, align 8, !tbaa !242 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store i32 %3, ptr %i.gr, align 4, !tbaa !245
  %.idx607 = shl nuw nsw i64 %indvars.iv572, 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx607 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 20
  %i.gu = load i64, ptr %i.gs, align 4
  store i64 %i.gu, ptr %i.gt, align 4
  %i.gv = load ptr, ptr %i.dh, align 8, !tbaa !242
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 28
  store i64 %i.f, ptr %i.gw, align 4
  %i.gx = load ptr, ptr %i.dh, align 8, !tbaa !242 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 36
  store i32 %i.r, ptr %i.gy, align 4, !tbaa !245
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.hb = load i64, ptr %i.gz, align 4
  store i64 %i.hb, ptr %i.ha, align 4
  %i.hc = load ptr, ptr %i.dh, align 8, !tbaa !242
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  store i64 %i.f, ptr %i.hd, align 4
  %i.he = load ptr, ptr %i.dh, align 8, !tbaa !242 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  store i32 %i.r, ptr %i.hf, align 4, !tbaa !245
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 60 ; 2 uses
  store ptr %i.hg, ptr %i.dh, align 8, !tbaa !242
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %exitcond576.not = icmp eq i64 %indvars.iv.next573, %i.av
  br i1 %exitcond576.not, label %.loopexit535, label %bb.t, !llvm.loop !568

bb.u:                                             ; preds = %bb.n
  %i.hh = fsub float %i.t, %i.j
  %i.hi = fmul float %i.hh, 5.000000e-01          ; 3 uses
  %i.hj = fadd float %i.j, %i.hi
  %i.hk = load <2 x float>, ptr %i.au, align 4, !tbaa !29
  %i.hl = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hn = fmul <2 x float> %i.hm, %i.hk
  %i.ho = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.hp = fadd <2 x float> %i.hn, %i.ho
  store <2 x float> %i.hp, ptr %i.aw, align 4
  %i.hq = load <2 x float>, ptr %i.au, align 4, !tbaa !29 ; 2 uses
  %i.hr = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ht = fmul <2 x float> %i.hs, %i.hq           ; 2 uses
  %i.hu = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.hv = fadd <2 x float> %i.ht, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <2 x float> %i.hv, ptr %i.hw, align 4
  %i.hx = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.hy = fsub <2 x float> %i.hx, %i.ht
  %i.hz = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x float> %i.hy, ptr %i.hz, align 4
  %i.ia = fmul <2 x float> %i.hm, %i.hq
  %i.ib = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.ic = fsub <2 x float> %i.ib, %i.ia
  %i.id = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store <2 x float> %i.ic, ptr %i.id, align 4
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 4 uses
  %i.if = load <2 x float>, ptr %i.bu, align 4, !tbaa !29
  %i.ig = fmul <2 x float> %i.hm, %i.if
  %i.ih = load <2 x float>, ptr %i.ie, align 4, !tbaa !29
  %i.ii = fadd <2 x float> %i.ig, %i.ih
  %i.ij = shl nuw nsw i32 %i.g, 2
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ik ; 4 uses
  store <2 x float> %i.ii, ptr %i.il, align 4
  %i.im = load <2 x float>, ptr %i.bu, align 4, !tbaa !29 ; 2 uses
  %i.in = fmul <2 x float> %i.hs, %i.im           ; 2 uses
  %i.io = load <2 x float>, ptr %i.ie, align 4, !tbaa !29
  %i.ip = fadd <2 x float> %i.in, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store <2 x float> %i.ip, ptr %i.iq, align 4
  %i.ir = load <2 x float>, ptr %i.ie, align 4, !tbaa !29
  %i.is = fsub <2 x float> %i.ir, %i.in
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <2 x float> %i.is, ptr %i.it, align 4
  %i.iu = fmul <2 x float> %i.hm, %i.im
  %i.iv = load <2 x float>, ptr %i.ie, align 4, !tbaa !29
  %i.iw = fsub <2 x float> %i.iv, %i.iu
  %i.ix = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  store <2 x float> %i.iw, ptr %i.ix, align 4
  br label %.lr.ph553

.lr.ph553:                                        ; preds = %bb.u, %.thread529
  %i.iy = phi float [ %i.bx, %.thread529 ], [ %i.hi, %bb.u ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !92 ; 2 uses
  %i.jb = fadd float %i.j, %i.iy
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load ptr, ptr %i.jc, align 8, !tbaa !113
  %wide.trip.count580 = zext nneg i32 %i.h to i64
  %i.jd = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.v

.lr.ph555:                                        ; preds = %bb.x
  store ptr %i.ls, ptr %i.jc, align 8, !tbaa !113
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %.pre594 = load ptr, ptr %i.jh, align 8, !tbaa !242
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph553, %bb.x
  %indvars.iv577 = phi i64 [ 0, %.lr.ph553 ], [ %indvars.iv.next578, %bb.x ] ; 2 uses
  %i.ji = phi ptr [ %.promoted, %.lr.ph553 ], [ %i.ls, %bb.x ] ; 9 uses
  %.0425550 = phi i32 [ %i.ja, %.lr.ph553 ], [ %spec.select, %bb.x ] ; 3 uses
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 4 uses
  %i.jj = icmp eq i64 %indvars.iv.next578, %i.av  ; 2 uses
  %i.jk = trunc nuw nsw i64 %indvars.iv.next578 to i32
  %i.jl = select i1 %i.jj, i32 0, i32 %i.jk       ; 2 uses
  %i.jm = add i32 %.0425550, 4
  %spec.select = select i1 %i.jj, i32 %i.ja, i32 %i.jm ; 3 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv577
  %i.jo = zext nneg i32 %i.jl to i64              ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.jo
  %i.jq = load <2 x float>, ptr %i.jn, align 4, !tbaa !29
  %i.jr = load <2 x float>, ptr %i.jp, align 4, !tbaa !29
  %i.js = fadd <2 x float> %i.jq, %i.jr
  %i.jt = fmul <2 x float> %i.js, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop619 = fmul <2 x float> %i.jt, %i.jt
  %i.ju = extractelement <2 x float> %foldExtExtBinop619, i64 1
  %i.jv = extractelement <2 x float> %i.jt, i64 0 ; 2 uses
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.jv, float %i.ju) ; 2 uses
  %i.jx = fcmp ogt float %i.jw, f0x358637BD
  br i1 %i.jx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jy = fdiv float 1.000000e+00, %i.jw          ; 2 uses
  %i.jz = fcmp ogt float %i.jy, 1.000000e+02
  %spec.store.select6 = select i1 %i.jz, float 1.000000e+02, float %i.jy
  %i.ka = insertelement <2 x float> poison, float %spec.store.select6, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x float> %i.jt, %i.kb
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.kd = phi <2 x float> [ %i.kc, %bb.w ], [ %i.jt, %bb.v ] ; 2 uses
  %i.ke = fmul <2 x float> %i.je, %i.kd           ; 2 uses
  %i.kf = shl nuw nsw i32 %i.jl, 2
  %i.kg = zext nneg i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.kg ; 4 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.jo ; 4 uses
  %i.kj = load <2 x float>, ptr %i.ki, align 4, !tbaa !29
  %i.kk = fadd <2 x float> %i.ke, %i.kj
  store <2 x float> %i.kk, ptr %i.kh, align 4, !tbaa !29
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.km = fmul <2 x float> %i.jg, %i.kd           ; 2 uses
  %i.kn = load <2 x float>, ptr %i.ki, align 4, !tbaa !29
  %i.ko = fadd <2 x float> %i.km, %i.kn
  store <2 x float> %i.ko, ptr %i.kl, align 4, !tbaa !29
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kq = load <2 x float>, ptr %i.ki, align 4, !tbaa !29
  %i.kr = fsub <2 x float> %i.kq, %i.km
  store <2 x float> %i.kr, ptr %i.kp, align 4, !tbaa !29
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kt = load <2 x float>, ptr %i.ki, align 4, !tbaa !29
  %i.ku = fsub <2 x float> %i.kt, %i.ke
  store <2 x float> %i.ku, ptr %i.ks, align 4, !tbaa !29
  %i.kv = trunc i32 %spec.select to i16
  %i.kw = insertelement <2 x i16> poison, i16 %i.kv, i64 0
  %i.kx = trunc i32 %.0425550 to i16
  %i.ky = insertelement <2 x i16> %i.kw, i16 %i.kx, i64 1
  %i.kz = shufflevector <2 x i16> %i.ky, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.la = trunc i32 %spec.select to i16           ; 3 uses
  %i.lb = trunc i32 %.0425550 to i16              ; 3 uses
  %i.lc = add <4 x i16> %i.kz, <i16 1, i16 1, i16 2, i16 2> ; 3 uses
  %i.ld = shufflevector <4 x i16> %i.lc, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 0, i32 0, i32 1>
  %i.le = add i16 %i.la, 1
  store <8 x i16> %i.ld, ptr %i.ji, align 2, !tbaa !243
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store i16 %i.lb, ptr %i.lf, align 2, !tbaa !243
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ji, i64 18
  store i16 %i.lb, ptr %i.lg, align 2, !tbaa !243
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ji, i64 20
  store i16 %i.la, ptr %i.lh, align 2, !tbaa !243
  %i.li = getelementptr inbounds nuw i8, ptr %i.ji, i64 22
  store i16 %i.le, ptr %i.li, align 2, !tbaa !243
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.lk = extractelement <4 x i16> %i.lc, i64 3   ; 2 uses
  store i16 %i.lk, ptr %i.lj, align 2, !tbaa !243
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ji, i64 26
  %i.lm = shufflevector <4 x i16> %i.lc, <4 x i16> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.ln = insertelement <4 x i16> %i.lm, i16 %i.lb, i64 1
  %i.lo = insertelement <4 x i16> %i.ln, i16 %i.la, i64 3
  %i.lp = add <4 x i16> %i.lo, <i16 0, i16 3, i16 poison, i16 3>
  %i.lq = shufflevector <4 x i16> %i.lp, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x i16> %i.lq, ptr %i.ll, align 2, !tbaa !243
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ji, i64 34
  store i16 %i.lk, ptr %i.lr, align 2, !tbaa !243
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ji, i64 36 ; 2 uses
  %exitcond581.not = icmp eq i64 %indvars.iv.next578, %wide.trip.count580
  br i1 %exitcond581.not, label %.lr.ph555, label %bb.v, !llvm.loop !569

bb.y:                                             ; preds = %.lr.ph555, %bb.y
  %i.lt = phi ptr [ %.pre594, %.lr.ph555 ], [ %i.mv, %bb.y ]
  %indvars.iv582 = phi i64 [ 0, %.lr.ph555 ], [ %indvars.iv.next583, %bb.y ] ; 2 uses
  %.idx608 = shl nuw nsw i64 %indvars.iv582, 5
  %i.lu = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx608 ; 4 uses
  %i.lv = load i64, ptr %i.lu, align 4
  store i64 %i.lv, ptr %i.lt, align 4
  %i.lw = load ptr, ptr %i.jh, align 8, !tbaa !242
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store i64 %i.f, ptr %i.lx, align 4
  %i.ly = load ptr, ptr %i.jh, align 8, !tbaa !242 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store i32 %i.r, ptr %i.lz, align 4, !tbaa !245
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 20
  %i.mc = load i64, ptr %i.ma, align 4
  store i64 %i.mc, ptr %i.mb, align 4
  %i.md = load ptr, ptr %i.jh, align 8, !tbaa !242
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 28
  store i64 %i.f, ptr %i.me, align 4
  %i.mf = load ptr, ptr %i.jh, align 8, !tbaa !242 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 36
  store i32 %3, ptr %i.mg, align 4, !tbaa !245
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 40
  %i.mj = load i64, ptr %i.mh, align 4
  store i64 %i.mj, ptr %i.mi, align 4
  %i.mk = load ptr, ptr %i.jh, align 8, !tbaa !242
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 48
  store i64 %i.f, ptr %i.ml, align 4
  %i.mm = load ptr, ptr %i.jh, align 8, !tbaa !242 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 56
  store i32 %3, ptr %i.mn, align 4, !tbaa !245
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 60
  %i.mq = load i64, ptr %i.mo, align 4
  store i64 %i.mq, ptr %i.mp, align 4
  %i.mr = load ptr, ptr %i.jh, align 8, !tbaa !242
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 68
  store i64 %i.f, ptr %i.ms, align 4
  %i.mt = load ptr, ptr %i.jh, align 8, !tbaa !242 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 76
  store i32 %i.r, ptr %i.mu, align 4, !tbaa !245
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 80 ; 2 uses
  store ptr %i.mv, ptr %i.jh, align 8, !tbaa !242
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next583, %i.av
  br i1 %exitcond586.not, label %.loopexit535, label %bb.y, !llvm.loop !570

.loopexit535:                                     ; preds = %bb.s, %bb.t, %bb.y
  %i.mw = and i32 %i.ai, 65535
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !92
  %i.mz = add i32 %i.my, %i.mw
  store i32 %i.mz, ptr %i.mx, align 4, !tbaa !92
  br label %.loopexit

.lr.ph558:                                        ; preds = %bb.d
  %i.na = mul nsw i32 %i.h, 6
  %i.nb = shl nsw i32 %i.h, 2
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.na, i32 noundef %i.nb)
  %i.nc = fmul float %4, 5.000000e-01
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ng = zext nneg i32 %2 to i64
  %wide.trip.count590 = zext nneg i32 %i.h to i64
  %i.nh = insertelement <2 x float> poison, float %i.nc, i64 0
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph558, %bb.ab
  %indvars.iv587 = phi i64 [ 0, %.lr.ph558 ], [ %indvars.iv.next588, %bb.ab ] ; 2 uses
  %indvars.iv.next588 = add nuw nsw i64 %indvars.iv587, 1 ; 4 uses
  %i.nj = icmp eq i64 %indvars.iv.next588, %i.ng
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv587 ; 3 uses
  %i.nl = select i1 %i.nj, i64 0, i64 %indvars.iv.next588
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.nl ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 4 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %i.np = load <2 x float>, ptr %i.nm, align 4, !tbaa !29
  %i.nq = load <2 x float>, ptr %i.nk, align 4, !tbaa !29 ; 3 uses
  %i.nr = fsub <2 x float> %i.np, %i.nq           ; 5 uses
  %foldExtExtBinop621 = fmul <2 x float> %i.nr, %i.nr
  %i.ns = extractelement <2 x float> %foldExtExtBinop621, i64 1
  %i.nt = extractelement <2 x float> %i.nr, i64 0 ; 2 uses
  %i.nu = tail call float @llvm.fmuladd.f32(float %i.nt, float %i.nt, float %i.ns) ; 2 uses
  %i.nv = fcmp ogt float %i.nu, 0.000000e+00
  br i1 %i.nv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.nw = insertelement <4 x float> poison, float %i.nu, i64 0
  %i.nx = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.nw)
  %i.ny = shufflevector <4 x float> %i.nx, <4 x float> poison, <2 x i32> zeroinitializer
  %i.nz = fmul <2 x float> %i.nr, %i.ny
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.oa = phi <2 x float> [ %i.nz, %bb.aa ], [ %i.nr, %bb.z ]
  %i.ob = shufflevector <2 x float> %i.oa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.oc = fmul <2 x float> %i.ni, %i.ob           ; 4 uses
  %i.od = load ptr, ptr %i.nd, align 8, !tbaa !242 ; 2 uses
  %i.oe = fadd <2 x float> %i.nq, %i.oc
  %i.of = fsub <2 x float> %i.nq, %i.oc
  %i.og = shufflevector <2 x float> %i.oe, <2 x float> %i.of, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.og, ptr %i.od, align 4, !tbaa !29
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  store i64 %i.f, ptr %i.oh, align 4
  %i.oi = load ptr, ptr %i.nd, align 8, !tbaa !242 ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  store i32 %3, ptr %i.oj, align 4, !tbaa !245
  %i.ok = load float, ptr %i.nm, align 4, !tbaa !237
  %i.ol = extractelement <2 x float> %i.oc, i64 0 ; 3 uses
  %i.om = fadd float %i.ol, %i.ok
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 20
  store float %i.om, ptr %i.on, align 4, !tbaa !249
  %i.oo = load float, ptr %i.nn, align 4, !tbaa !238
  %i.op = extractelement <2 x float> %i.oc, i64 1 ; 3 uses
  %i.oq = fsub float %i.oo, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  store float %i.oq, ptr %i.or, align 4, !tbaa !250
  %i.os = getelementptr inbounds nuw i8, ptr %i.oi, i64 28
  store i64 %i.f, ptr %i.os, align 4
  %i.ot = load ptr, ptr %i.nd, align 8, !tbaa !242 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 36
  store i32 %3, ptr %i.ou, align 4, !tbaa !245
  %i.ov = load float, ptr %i.nm, align 4, !tbaa !237
  %i.ow = fsub float %i.ov, %i.ol
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 40
  store float %i.ow, ptr %i.ox, align 4, !tbaa !249
  %i.oy = load float, ptr %i.nn, align 4, !tbaa !238
  %i.oz = fadd float %i.op, %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ot, i64 44
  store float %i.oz, ptr %i.pa, align 4, !tbaa !250
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ot, i64 48
  store i64 %i.f, ptr %i.pb, align 4
  %i.pc = load ptr, ptr %i.nd, align 8, !tbaa !242 ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 56
  store i32 %3, ptr %i.pd, align 4, !tbaa !245
  %i.pe = load float, ptr %i.nk, align 4, !tbaa !237
  %i.pf = fsub float %i.pe, %i.ol
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 60
  store float %i.pf, ptr %i.pg, align 4, !tbaa !249
  %i.ph = load float, ptr %i.no, align 4, !tbaa !238
  %i.pi = fadd float %i.op, %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 64
  store float %i.pi, ptr %i.pj, align 4, !tbaa !250
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pc, i64 68
  store i64 %i.f, ptr %i.pk, align 4
  %i.pl = load ptr, ptr %i.nd, align 8, !tbaa !242 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 76
  store i32 %3, ptr %i.pm, align 4, !tbaa !245
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 80
  store ptr %i.pn, ptr %i.nd, align 8, !tbaa !242
  %i.po = load i32, ptr %i.ne, align 4, !tbaa !92 ; 2 uses
  %i.pp = trunc i32 %i.po to i16                  ; 5 uses
  %i.pq = load ptr, ptr %i.nf, align 8, !tbaa !113 ; 7 uses
  store i16 %i.pp, ptr %i.pq, align 2, !tbaa !243
  %i.pr = add i16 %i.pp, 1
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 2
  store i16 %i.pr, ptr %i.ps, align 2, !tbaa !243
  %i.pt = add i16 %i.pp, 2                        ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  store i16 %i.pt, ptr %i.pu, align 2, !tbaa !243
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pq, i64 6
  store i16 %i.pp, ptr %i.pv, align 2, !tbaa !243
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  store i16 %i.pt, ptr %i.pw, align 2, !tbaa !243
  %i.px = add i16 %i.pp, 3
  %i.py = getelementptr inbounds nuw i8, ptr %i.pq, i64 10
  store i16 %i.px, ptr %i.py, align 2, !tbaa !243
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  store ptr %i.pz, ptr %i.nf, align 8, !tbaa !113
  %i.qa = add i32 %i.po, 4
  store i32 %i.qa, ptr %i.ne, align 4, !tbaa !92
  %exitcond591.not = icmp eq i64 %indvars.iv.next588, %wide.trip.count590
  br i1 %exitcond591.not, label %.loopexit, label %bb.z, !llvm.loop !571

.loopexit:                                        ; preds = %bb.ab, %bb.c, %.loopexit535, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 3
  %i.b = icmp ult i32 %3, 16777216
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = load i64, ptr %i.d, align 8              ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !91
  %i.h = and i32 %i.g, 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.lr.ph141, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load float, ptr %i.i, align 8, !tbaa !103
  %i.k = and i32 %3, 16777215
  %reass.mul = mul i32 %2, 9
  %i.l = add i32 %reass.mul, -6
  %i.m = shl nuw nsw i32 %2, 1                    ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.l, i32 noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !92   ; 8 uses
  %i.p = add i32 %i.o, 1                          ; 2 uses
  %i.q = trunc i32 %i.o to i16                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = add i32 %i.o, 65534                      ; 3 uses
  %.promoted = load ptr, ptr %i.r, align 8, !tbaa !113 ; 2 uses
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
  store i16 %i.q, ptr %.epil.init, align 2, !tbaa !243
  %i.w = shl nuw i32 %.0124131.epil.init, 1       ; 2 uses
  %i.x = add i32 %i.s, %i.w
  %i.y = trunc i32 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %.epil.init, i64 2
  store i16 %i.y, ptr %i.z, align 2, !tbaa !243
  %i.aa = add i32 %i.w, %i.o
  %i.ab = trunc i32 %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %.epil.init, i64 4
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !243
  %i.ad = getelementptr inbounds nuw i8, ptr %.epil.init, i64 6
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa172 = phi ptr [ %i.bi, %.unr-lcssa ], [ %i.ad, %.epil.preheader ]
  store ptr %.lcssa172, ptr %i.r, align 8, !tbaa !113
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !73  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 76 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !99
  %.not.i = icmp sgt i32 %2, %i.ag
  br i1 %.not.i, label %bb.d, label %.lr.ph134.preheader

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47 ; 2 uses
  %.not4.i = icmp eq ptr %i.ai, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ai)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = zext nneg i32 %2 to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ak)
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !47
  store i32 %2, ptr %i.af, align 4, !tbaa !99
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !73
  br label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %bb.f, %bb.c
  %i.am = phi ptr [ %i.ae, %bb.c ], [ %.pre, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !247 ; 3 uses
  %i.ap = add nsw i32 %2, -1                      ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.aq = zext nneg i32 %i.ap to i64
  br label %.lr.ph134

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %i.ar = phi ptr [ %.promoted, %.lr.ph.new ], [ %i.bi, %bb.g ] ; 7 uses
  %.0124131 = phi i32 [ 2, %.lr.ph.new ], [ %i.bj, %bb.g ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ] ; 2 uses
  store i16 %i.q, ptr %i.ar, align 2, !tbaa !243
  %i.as = shl nuw i32 %.0124131, 1                ; 2 uses
  %i.at = add i32 %i.s, %i.as
  %i.au = trunc i32 %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i16 %i.au, ptr %i.av, align 2, !tbaa !243
  %i.aw = add i32 %i.as, %i.o
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !243
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  store i16 %i.q, ptr %i.az, align 2, !tbaa !243
  %i.ba = shl nuw i32 %.0124131, 1
  %i.bb = or disjoint i32 %i.ba, 2                ; 2 uses
  %i.bc = add i32 %i.s, %i.bb
  %i.bd = trunc i32 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !243
  %i.bf = add i32 %i.bb, %i.o
  %i.bg = trunc i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 10
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !243
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 12 ; 3 uses
  %i.bj = add nuw nsw i32 %.0124131, 2            ; 2 uses
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter, %i.v
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.g, !llvm.loop !572

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
  %i.br = load <2 x float>, ptr %i.bq, align 4, !tbaa !29
  %i.bs = load <2 x float>, ptr %i.bp, align 4, !tbaa !29
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
  store float %i.ce, ptr %i.cd, align 4, !tbaa !237
  %i.cf = extractelement <2 x float> %i.cc, i64 0
  %i.cg = fneg float %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store float %i.cg, ptr %i.ch, align 4, !tbaa !238
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond149.not, label %.lr.ph137, label %.lr.ph134, !llvm.loop !573

._crit_edge138:                                   ; preds = %bb.l
  %i.ci = and i32 %i.m, 65534
  %i.cj = load i32, ptr %i.n, align 4, !tbaa !92
  %i.ck = add i32 %i.cj, %i.ci
  store i32 %i.ck, ptr %i.n, align 4, !tbaa !92
  br label %bb.p

bb.j:                                             ; preds = %.lr.ph137, %bb.l
  %indvars.iv150 = phi i64 [ 0, %.lr.ph137 ], [ %indvars.iv.next151, %bb.l ] ; 5 uses
  %.0119135 = phi i32 [ %i.ap, %.lr.ph137 ], [ %i.ei, %bb.l ] ; 2 uses
  %i.cl = sext i32 %.0119135 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv150
  %i.co = load <2 x float>, ptr %i.cm, align 4, !tbaa !29
  %i.cp = load <2 x float>, ptr %i.cn, align 4, !tbaa !29
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
  %i.de = load ptr, ptr %i.bl, align 8, !tbaa !242 ; 2 uses
  %i.df = load <2 x float>, ptr %i.dd, align 4, !tbaa !29
  %i.dg = fsub <2 x float> %i.df, %i.dc
  store <2 x float> %i.dg, ptr %i.de, align 4, !tbaa !29
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 %i.e, ptr %i.dh, align 4
  %i.di = load ptr, ptr %i.bl, align 8, !tbaa !242 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i32 %3, ptr %i.dj, align 4, !tbaa !245
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.dl = load <2 x float>, ptr %i.dd, align 4, !tbaa !29
  %i.dm = fadd <2 x float> %i.dc, %i.dl
  store <2 x float> %i.dm, ptr %i.dk, align 4, !tbaa !29
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  store i64 %i.e, ptr %i.dn, align 4
  %i.do = load ptr, ptr %i.bl, align 8, !tbaa !242 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  store i32 %i.k, ptr %i.dp, align 4, !tbaa !245
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  store ptr %i.dq, ptr %i.bl, align 8, !tbaa !242
  %indvars.iv150.tr = trunc nuw i64 %indvars.iv150 to i32
  %i.dr = shl nuw i32 %indvars.iv150.tr, 1        ; 2 uses
  %i.ds = add i32 %i.dr, %i.o
  %i.dt = trunc i32 %i.ds to i16                  ; 2 uses
  %i.du = load ptr, ptr %i.bm, align 8, !tbaa !113 ; 7 uses
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !243
  %i.dv = shl i32 %.0119135, 1                    ; 2 uses
  %i.dw = add i32 %i.dv, %i.o
  %i.dx = trunc i32 %i.dw to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !243
  %i.dz = add i32 %i.dv, %i.p
  %i.ea = trunc i32 %i.dz to i16                  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !243
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 6
  store i16 %i.ea, ptr %i.ec, align 2, !tbaa !243
  %i.ed = add i32 %i.dr, %i.p
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !243
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 10
  store i16 %i.dt, ptr %i.eg, align 2, !tbaa !243
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store ptr %i.eh, ptr %i.bm, align 8, !tbaa !113
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.ei = trunc nuw nsw i64 %indvars.iv150 to i32
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge138, label %bb.j, !llvm.loop !574

.lr.ph141:                                        ; preds = %bb.b
  %i.ej = mul i32 %2, 3
  %i.ek = add i32 %i.ej, -6
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.ek, i32 noundef %2)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %wide.trip.count158 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter176 = and i64 %wide.trip.count158, 1
  %.pre161 = load ptr, ptr %i.el, align 8, !tbaa !242
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
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !242
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %i.e, ptr %i.ep, align 4
  %i.eq = load ptr, ptr %i.el, align 8, !tbaa !242 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i32 %3, ptr %i.er, align 4, !tbaa !245
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  store ptr %i.es, ptr %i.el, align 8, !tbaa !242
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.unr-lcssa, %.epil.preheader175
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !92 ; 7 uses
  %i.ev = trunc i32 %i.eu to i16                  ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted145 = load ptr, ptr %i.ew, align 8, !tbaa !113 ; 2 uses
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
  %i.fd = load ptr, ptr %i.el, align 8, !tbaa !242
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i64 %i.e, ptr %i.fe, align 4
  %i.ff = load ptr, ptr %i.el, align 8, !tbaa !242 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i32 %3, ptr %i.fg, align 4, !tbaa !245
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 20 ; 2 uses
  store ptr %i.fh, ptr %i.el, align 8, !tbaa !242
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv155
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i64, ptr %i.fj, align 4
  store i64 %i.fk, ptr %i.fh, align 4
  %i.fl = load ptr, ptr %i.el, align 8, !tbaa !242
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 %i.e, ptr %i.fm, align 4
  %i.fn = load ptr, ptr %i.el, align 8, !tbaa !242 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i32 %3, ptr %i.fo, align 4, !tbaa !245
end_hunk_0
begin_hunk_1_@_ZN14ImTriangulator14ReclassifyNodeEP18ImTriangulatorNode:bb.a
.lr.ph:                                           ; preds = %bb.i
  %i.bv = zext nneg i32 %i.bs to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.bw = trunc nuw i64 %i.by to i32
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %bb.k, label %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit, !llvm.loop !594

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv.i2553 = phi i64 [ %i.bv, %.lr.ph ], [ %i.by, %bb.j ]
  %i.by = add nsw i64 %indvars.iv.i2553, -1       ; 4 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !285
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !284
  %i.cd = icmp eq i32 %i.cc, %i.bq
  br i1 %i.cd, label %bb.l, label %bb.j, !llvm.loop !594

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.by
  %i.cf = zext nneg i32 %i.bs to i64
  %i.cg = getelementptr [8 x i8], ptr %i.bt, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !285
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !285
  %i.cj = add nsw i32 %i.bs, -1
  store i32 %i.cj, ptr %i.br, align 8, !tbaa !286
  br label %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit

_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit: ; preds = %bb.j, %bb.f, %bb.i, %bb.e, %bb.l, %bb.h, %bb.d
  br i1 %brmerge, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit
  %.mux50 = select i1 %i.x, i64 40, i64 24
  %.mux = select i1 %i.x, i64 32, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %.mux
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !288
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %.mux50 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !286 ; 2 uses
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !286
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cp
  store ptr %1, ptr %i.cq, align 8, !tbaa !285
  br label %bb.m

bb.m:                                             ; preds = %_ZN22ImTriangulatorNodeSpan19find_erase_unsortedEi.exit, %.sink.split
  store i32 %.0, ptr %1, align 8, !tbaa !283
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  store i32 0, ptr %4, align 8, !tbaa !275
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.h, align 8, !tbaa !288
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.i, align 8, !tbaa !286
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !91
  %i.l = and i32 %i.k, 4
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.lr.ph139, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load float, ptr %i.m, align 8, !tbaa !103
  %i.o = and i32 %3, 16777215
  %reass.mul = mul i32 %2, 9
  %i.p = add i32 %reass.mul, -6
  %i.q = shl nuw nsw i32 %2, 1                    ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.p, i32 noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !92   ; 5 uses
  %i.t = add i32 %i.s, 1                          ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !73   ; 3 uses
  %i.v = mul i32 %2, 48
  %i.w = ashr exact i32 %i.v, 3                   ; 2 uses
  %i.x = or disjoint i32 %i.w, 1                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 76 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !99
  %.not.i.not = icmp slt i32 %i.w, %i.z
  br i1 %.not.i.not, label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47 ; 2 uses
  %.not4.i = icmp eq ptr %i.ab, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ab)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = sext i32 %i.x to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ad)
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !47
  store i32 %i.x, ptr %i.y, align 4, !tbaa !99
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !73
  br label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit

_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit:    ; preds = %bb.c, %bb.f
  %i.af = phi ptr [ %i.u, %bb.c ], [ %.pre, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !247
  call void @_ZN14ImTriangulator4InitEPK6ImVec2iPv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, i32 noundef %2, ptr noundef %i.ah)
  %i.ai = load i32, ptr %4, align 8, !tbaa !275
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
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !113 ; 3 uses
  %i.ap = load <2 x i32>, ptr %i.a, align 8, !tbaa !259
  %i.aq = shl <2 x i32> %i.ap, splat (i32 1)
  %i.ar = add <2 x i32> %i.aq, %i.an
  %i.as = trunc <2 x i32> %i.ar to <2 x i16>
  store <2 x i16> %i.as, ptr %i.ao, align 2, !tbaa !243
  %i.at = load i32, ptr %i.al, align 8, !tbaa !259
  %i.au = shl i32 %i.at, 1
  %i.av = add i32 %i.au, %i.s
  %i.aw = trunc i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !243
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 6
  store ptr %i.ay, ptr %i.ak, align 8, !tbaa !113
  %i.az = load i32, ptr %4, align 8, !tbaa !275
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.g, label %._crit_edge, !llvm.loop !595

._crit_edge:                                      ; preds = %bb.g, %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !73  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 76 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !99
  %.not.i122 = icmp sgt i32 %2, %i.bd
  br i1 %.not.i122, label %bb.h, label %.lr.ph132.preheader

bb.h:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 80 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !47 ; 2 uses
  %.not4.i123 = icmp eq ptr %i.bf, null
  br i1 %.not4.i123, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = zext nneg i32 %2 to i64
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bh)
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !47
  store i32 %2, ptr %i.bc, align 4, !tbaa !99
  %.pre154 = load ptr, ptr %i.d, align 8, !tbaa !73
  br label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %bb.j, %._crit_edge
  %i.bj = phi ptr [ %i.bb, %._crit_edge ], [ %.pre154, %bb.j ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !247 ; 3 uses
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
  %i.bv = load <2 x float>, ptr %i.bu, align 4, !tbaa !29
  %i.bw = load <2 x float>, ptr %i.bt, align 4, !tbaa !29
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
  store float %i.ci, ptr %i.ch, align 4, !tbaa !237
  %i.cj = extractelement <2 x float> %i.cg, i64 0
  %i.ck = fneg float %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store float %i.ck, ptr %i.cl, align 4, !tbaa !238
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph135, label %.lr.ph132, !llvm.loop !596

._crit_edge136:                                   ; preds = %bb.o
  %i.cm = and i32 %i.q, 65534
  %i.cn = load i32, ptr %i.r, align 4, !tbaa !92
  %i.co = add i32 %i.cn, %i.cm
  store i32 %i.co, ptr %i.r, align 4, !tbaa !92
  br label %bb.u

bb.m:                                             ; preds = %.lr.ph135, %bb.o
  %indvars.iv144 = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next145, %bb.o ] ; 5 uses
  %.0114133 = phi i32 [ %i.bm, %.lr.ph135 ], [ %i.em, %bb.o ] ; 2 uses
  %i.cp = sext i32 %.0114133 to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv144
  %i.cs = load <2 x float>, ptr %i.cq, align 4, !tbaa !29
  %i.ct = load <2 x float>, ptr %i.cr, align 4, !tbaa !29
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
  %i.di = load ptr, ptr %i.bp, align 8, !tbaa !242 ; 2 uses
  %i.dj = load <2 x float>, ptr %i.dh, align 4, !tbaa !29
  %i.dk = fsub <2 x float> %i.dj, %i.dg
  store <2 x float> %i.dk, ptr %i.di, align 4, !tbaa !29
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.f, ptr %i.dl, align 4
  %i.dm = load ptr, ptr %i.bp, align 8, !tbaa !242 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i32 %3, ptr %i.dn, align 4, !tbaa !245
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  %i.dp = load <2 x float>, ptr %i.dh, align 4, !tbaa !29
  %i.dq = fadd <2 x float> %i.dg, %i.dp
  store <2 x float> %i.dq, ptr %i.do, align 4, !tbaa !29
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 28
  store i64 %i.f, ptr %i.dr, align 4
  %i.ds = load ptr, ptr %i.bp, align 8, !tbaa !242 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 36
  store i32 %i.o, ptr %i.dt, align 4, !tbaa !245
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  store ptr %i.du, ptr %i.bp, align 8, !tbaa !242
  %indvars.iv144.tr = trunc nuw i64 %indvars.iv144 to i32
  %i.dv = shl nuw i32 %indvars.iv144.tr, 1        ; 2 uses
  %i.dw = add i32 %i.dv, %i.s
  %i.dx = trunc i32 %i.dw to i16                  ; 2 uses
  %i.dy = load ptr, ptr %i.bq, align 8, !tbaa !113 ; 7 uses
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !243
  %i.dz = shl i32 %.0114133, 1                    ; 2 uses
  %i.ea = add i32 %i.dz, %i.s
  %i.eb = trunc i32 %i.ea to i16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !243
  %i.ed = add i32 %i.dz, %i.t
  %i.ee = trunc i32 %i.ed to i16                  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !243
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 6
  store i16 %i.ee, ptr %i.eg, align 2, !tbaa !243
  %i.eh = add i32 %i.dv, %i.t
  %i.ei = trunc i32 %i.eh to i16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i16 %i.ei, ptr %i.ej, align 2, !tbaa !243
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 10
  store i16 %i.dx, ptr %i.ek, align 2, !tbaa !243
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store ptr %i.el, ptr %i.bq, align 8, !tbaa !113
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.em = trunc nuw nsw i64 %indvars.iv144 to i32
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %._crit_edge136, label %bb.m, !llvm.loop !597

.lr.ph139:                                        ; preds = %bb.b
  %i.en = mul i32 %2, 3
  %i.eo = add i32 %i.en, -6
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.eo, i32 noundef %2)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %wide.trip.count152 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count152, 1
  %.pre155 = load ptr, ptr %i.ep, align 8, !tbaa !242
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
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !242
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i64 %i.f, ptr %i.et, align 4
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !242 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i32 %3, ptr %i.ev, align 4, !tbaa !245
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  store ptr %i.ew, ptr %i.ep, align 8, !tbaa !242
  br label %._crit_edge140

._crit_edge140:                                   ; preds = %._crit_edge140.unr-lcssa, %.epil.preheader
  %i.ex = load ptr, ptr %i.d, align 8, !tbaa !73  ; 3 uses
  %i.ey = mul i32 %2, 48
  %i.ez = ashr exact i32 %i.ey, 3                 ; 2 uses
  %i.fa = or disjoint i32 %i.ez, 1                ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 76 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !99
  %.not.i125.not = icmp slt i32 %i.ez, %i.fc
  br i1 %.not.i125.not, label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127, label %bb.p

bb.p:                                             ; preds = %._crit_edge140
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 80 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !47 ; 2 uses
  %.not4.i126 = icmp eq ptr %i.fe, null
  br i1 %.not4.i126, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.fe)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ff = sext i32 %i.fa to i64
  %i.fg = shl nsw i64 %i.ff, 3
  %i.fh = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.fg)
  store ptr %i.fh, ptr %i.fd, align 8, !tbaa !47
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !99
  %.pre156 = load ptr, ptr %i.d, align 8, !tbaa !73
  br label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127

_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127: ; preds = %._crit_edge140, %bb.r
  %i.fi = phi ptr [ %i.ex, %._crit_edge140 ], [ %.pre156, %bb.r ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 80
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !247
  call void @_ZN14ImTriangulator4InitEPK6ImVec2iPv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %i.fk)
  %i.fl = load i32, ptr %4, align 8, !tbaa !275
  %i.fm = icmp sgt i32 %i.fl, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  br i1 %i.fm, label %.lr.ph141, label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127.._crit_edge142_crit_edge

_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127.._crit_edge142_crit_edge: ; preds = %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127
  %.pre157 = load i32, ptr %i.fn, align 4, !tbaa !92
  br label %._crit_edge142

end_hunk_1
begin_hunk_2_@_ZL33ImGui_ImplStbTrueType_FontSrcInitP11ImFontAtlasP12ImFontConfig:bb.a
  %.val5.i = load i8, ptr %i.abj, align 1, !tbaa !50
  %i.abk = zext i8 %.val.i to i16
  %i.abl = shl nuw i16 %i.abk, 8
  %i.abm = zext i8 %.val5.i to i16
  %i.abn = or disjoint i16 %i.abl, %i.abm
  %i.abo = sext i16 %i.abn to i32
  %i.abp = sub nsw i32 %i.abh, %i.abo
  %i.abq = sitofp i32 %i.abp to float
  %i.abr = fdiv float 1.000000e+00, %i.abq        ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  br i1 %i.aav, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.abt = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !415 ; 2 uses
  %i.abv = fcmp une float %i.abu, 0.000000e+00
  %i.abw = fcmp une float %i.aas, 0.000000e+00
  %or.cond = select i1 %i.abv, i1 %i.abw, i1 false
  br i1 %or.cond, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.abx = fdiv float %i.abu, %i.aas
  %i.aby = fmul float %i.abr, %i.abx
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg, %bb.ef
  %i.abz = phi float [ %i.aby, %bb.eh ], [ %i.abr, %bb.eg ], [ %i.abr, %bb.ef ]
  %i.aca = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !301
  %i.acc = fmul float %i.acb, %i.abz
  store float %i.acc, ptr %i.abs, align 8, !tbaa !511
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit32, %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit
  %.0 = phi i1 [ false, %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit ], [ true, %bb.ei ], [ false, %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit32 ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL36ImGui_ImplStbTrueType_FontSrcDestroyP11ImFontAtlasP12ImFontConfig(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !509  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
  br label %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit

_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit: ; preds = %bb.a, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !509
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZL42ImGui_ImplStbTrueType_FontSrcContainsGlyphP11ImFontAtlasP12ImFontConfigt(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2) #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !509  ; 2 uses
  %i.c = zext i16 %2 to i32
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !497
  %i.e = getelementptr i8, ptr %i.b, i64 56
  %.val3 = load i32, ptr %i.e, align 8, !tbaa !507
  %i.f = tail call fastcc noundef i32 @_ZL20stbtt_FindGlyphIndexPK14stbtt_fontinfoi(ptr %.val, i32 %.val3, i32 noundef %i.c)
  %i.g = icmp ne i32 %i.f, 0
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZL35ImGui_ImplStbTrueType_FontBakedInitP11ImFontAtlasP12ImFontConfigP11ImFontBakedPv(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree readnone captures(none) %3) #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.b = load i8, ptr %i.a, align 1, !tbaa !391, !range !352, !noundef !353
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !509  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.g = load float, ptr %i.f, align 8, !tbaa !511
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.i = load float, ptr %i.h, align 4, !tbaa !257
  %i.j = fmul float %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.l = load float, ptr %i.k, align 4, !tbaa !301
  %i.m = fdiv float %i.j, %i.l                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !497
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !500
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.val17.i = load i8, ptr %i.t, align 1, !tbaa !50
  %i.u = getelementptr i8, ptr %i.s, i64 5
  %.val18.i = load i8, ptr %i.u, align 1, !tbaa !50
  %i.v = zext i8 %.val17.i to i16
  %i.w = shl nuw i16 %i.v, 8
  %i.x = zext i8 %.val18.i to i16
  %i.y = or disjoint i16 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %.val15.i = load i8, ptr %i.z, align 1, !tbaa !50
  %i.aa = getelementptr i8, ptr %i.s, i64 7
  %.val16.i = load i8, ptr %i.aa, align 1, !tbaa !50
  %i.ab = zext i8 %.val15.i to i16
  %i.ac = shl nuw i16 %i.ab, 8
  %i.ad = zext i8 %.val16.i to i16
  %i.ae = or disjoint i16 %i.ac, %i.ad
  %i.af = sitofp i16 %i.y to float
  %i.ag = fmul float %i.m, %i.af
  %i.ah = tail call float @llvm.ceil.f32(float %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 68
  store float %i.ah, ptr %i.ai, align 4, !tbaa !512
  %i.aj = sitofp i16 %i.ae to float
  %i.ak = fmul float %i.m, %i.aj                  ; 3 uses
  %i.al = fcmp ult float %i.ak, 0.000000e+00
  %i.am = fptosi float %i.ak to i32               ; 2 uses
  %i.an = sitofp i32 %i.am to float
  %i.ao = fcmp une float %i.ak, %i.an
  %or.cond.not.i = and i1 %i.al, %i.ao
  %i.ap = sext i1 %or.cond.not.i to i32
  %i.aq = add nsw i32 %i.ap, %i.am
  %i.ar = sitofp i32 %i.aq to float
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 72
  store float %i.ar, ptr %i.as, align 8, !tbaa !758
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZL40ImGui_ImplStbTrueType_FontBakedLoadGlyphP11ImFontAtlasP12ImFontConfigP11ImFontBakedPvtP11ImFontGlyphPf(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, i16 noundef zeroext %4, ptr nofree noundef captures(none) %5, ptr nofree noundef writeonly captures(address_is_null) %6) #10 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 21 uses
  %i.b = alloca [8 x i8], align 8                 ; 23 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca [129 x float], align 16           ; 4 uses
  %.sroa.5.i.i.i.i.i.i = alloca { float, float, i32 }, align 8 ; 4 uses
  %i.e = alloca i32, align 4                      ; 19 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !509  ; 9 uses
  %i.o = zext i16 %4 to i32                       ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8        ; 2 uses
  %.val = load ptr, ptr %i.p, align 8, !tbaa !497
  %i.q = getelementptr i8, ptr %i.n, i64 56
  %.val103 = load i32, ptr %i.q, align 8, !tbaa !507
  %i.r = tail call fastcc noundef i32 @_ZL20stbtt_FindGlyphIndexPK14stbtt_fontinfoi(ptr %.val, i32 %.val103, i32 noundef %i.o) ; 7 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.jd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 55
  %i.u = load i8, ptr %i.t, align 1, !tbaa !484   ; 2 uses
  %.not.i = icmp eq i8 %i.u, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = sext i8 %i.u to i32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !257
  %.phi.trans.insert158 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre159 = load float, ptr %.phi.trans.insert158, align 8, !tbaa !417
  %.phi.trans.insert160 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre161 = load float, ptr %.phi.trans.insert160, align 8, !tbaa !468
  br label %_Z36ImFontAtlasBuildGetOversampleFactorsP12ImFontConfigP11ImFontBakedPiS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.x = load float, ptr %i.w, align 4, !tbaa !257 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load float, ptr %i.y, align 8, !tbaa !468 ; 3 uses
  %i.aa = fmul float %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !417 ; 3 uses
  %i.ad = fmul float %i.aa, %i.ac
  %i.ae = fcmp ogt float %i.ad, 3.600000e+01
  br i1 %i.ae, label %_Z36ImFontAtlasBuildGetOversampleFactorsP12ImFontConfigP11ImFontBakedPiS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !432, !range !352, !noundef !353
  %i.ah = trunc nuw i8 %i.ag to i1
  %spec.select = select i1 %i.ah, i32 1, i32 2
  br label %_Z36ImFontAtlasBuildGetOversampleFactorsP12ImFontConfigP11ImFontBakedPiS3_.exit

_Z36ImFontAtlasBuildGetOversampleFactorsP12ImFontConfigP11ImFontBakedPiS3_.exit: ; preds = %bb.e, %bb.c, %bb.d
  %i.ai = phi float [ %.pre161, %bb.c ], [ %i.z, %bb.d ], [ %i.z, %bb.e ]
  %i.aj = phi float [ %.pre159, %bb.c ], [ %i.ac, %bb.d ], [ %i.ac, %bb.e ]
  %i.ak = phi float [ %.pre, %bb.c ], [ %i.x, %bb.d ], [ %i.x, %bb.e ]
  %i.al = phi i32 [ %i.v, %bb.c ], [ 1, %bb.d ], [ %spec.select, %bb.e ] ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !300
  %narrow.i = tail call i8 @llvm.umax.i8(i8 %i.an, i8 1) ; 4 uses
  %spec.select.i = sext i8 %narrow.i to i32       ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !511
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ar = fmul float %i.ap, %i.ak                 ; 3 uses
  %i.as = fmul float %i.aj, %i.ai                 ; 2 uses
  %i.at = fmul float %i.ar, %i.as                 ; 2 uses
  %i.au = sitofp i32 %i.al to float               ; 2 uses
  %i.av = fmul float %i.at, %i.au                 ; 6 uses
  %i.aw = sitofp i8 %narrow.i to float            ; 2 uses
  %i.ax = fmul float %i.at, %i.aw                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #38
  call fastcc void @_ZL31stbtt_GetGlyphBitmapBoxSubpixelPK14stbtt_fontinfoiffffPiS2_S2_S2_(ptr noundef nonnull %i.n, i32 noundef %i.r, float noundef %i.av, float noundef %i.ax, ptr noundef %i.i, ptr noundef %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l)
  %i.ay = load ptr, ptr %i.p, align 8, !tbaa !497 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !500
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 34
  %.val.i = load i8, ptr %i.bd, align 1, !tbaa !50
  %i.be = getelementptr i8, ptr %i.bc, i64 35
  %.val30.i = load i8, ptr %i.be, align 1, !tbaa !50
  %i.bf = zext i8 %.val.i to i32
  %i.bg = shl nuw nsw i32 %i.bf, 8
  %i.bh = zext i8 %.val30.i to i32
  %i.bi = or disjoint i32 %i.bg, %i.bh            ; 2 uses
  %i.bj = icmp slt i32 %i.r, %i.bi                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !501
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %i.ay, i64 %i.bm ; 2 uses
  %i.bo = shl nsw i32 %i.r, 2
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 %i.bp ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 1
  %i.bs = shl nuw nsw i32 %i.bi, 2
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr i8, ptr %i.bn, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4
  %i.bw = getelementptr i8, ptr %i.bu, i64 -3
  %.val37.i.sink.in = select i1 %i.bj, ptr %i.bq, ptr %i.bv
  %.val38.i.sink.in = select i1 %i.bj, ptr %i.br, ptr %i.bw
  %.val38.i.sink = load i8, ptr %.val38.i.sink.in, align 1, !tbaa !50
  %.val37.i.sink = load i8, ptr %.val37.i.sink.in, align 1, !tbaa !50
  %i.bx = zext i8 %.val37.i.sink to i16
  %i.by = shl nuw i16 %i.bx, 8
  %i.bz = zext i8 %.val38.i.sink to i16
  %i.ca = or disjoint i16 %i.by, %i.bz            ; 2 uses
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_Z36ImFontAtlasBuildGetOversampleFactorsP12ImFontConfigP11ImFontBakedPiS3_.exit
  %i.cb = sitofp i16 %i.ca to float
  %i.cc = fmul float %i.ar, %i.cb
  store float %i.cc, ptr %6, align 4, !tbaa !29
  br label %.critedge

bb.g:                                             ; preds = %_Z36ImFontAtlasBuildGetOversampleFactorsP12ImFontConfigP11ImFontBakedPiS3_.exit
  %i.cd = load i32, ptr %5, align 4
  %i.ce = shl nuw nsw i32 %i.o, 6
  %i.cf = and i32 %i.cd, 63
  %i.cg = or disjoint i32 %i.cf, %i.ce
  store i32 %i.cg, ptr %5, align 4
  %i.ch = sitofp i16 %i.ca to float
  %i.ci = fmul float %i.ar, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.ci, ptr %i.cj, align 4, !tbaa !265
  %i.ck = load i32, ptr %i.i, align 4, !tbaa !259 ; 2 uses
  %i.cl = load i32, ptr %i.k, align 4, !tbaa !259 ; 2 uses
  %i.cm = icmp ne i32 %i.ck, %i.cl
  %i.cn = load i32, ptr %i.j, align 4             ; 2 uses
  %i.co = load i32, ptr %i.l, align 4             ; 2 uses
  %i.cp = icmp ne i32 %i.cn, %i.co
  %i.cq = select i1 %i.cm, i1 %i.cp, i1 false
  br i1 %i.cq, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.cr = sub nsw i32 %i.cl, %i.ck                ; 18 uses
  %i.cs = add nsw i32 %i.cr, %i.al                ; 2 uses
  %i.ct = add nsw i32 %i.cs, -1                   ; 10 uses
  %i.cu = sub nsw i32 %i.co, %i.cn                ; 13 uses
  %i.cv = add nsw i32 %i.cu, %spec.select.i       ; 2 uses
  %i.cw = add nsw i32 %i.cv, -1                   ; 6 uses
  %i.cx = call noundef i32 @_Z22ImFontAtlasPackAddRectP11ImFontAtlasiiP20ImFontAtlasRectEntry(ptr noundef %0, i32 noundef %i.ct, i32 noundef %i.cw, ptr noundef null) ; 3 uses
  %.not102 = icmp eq i32 %i.cx, -1
  br i1 %.not102, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cy = and i32 %i.cx, 524287
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !340 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 120
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !438
  %i.dd = zext nneg i32 %i.cy to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = shl i32 %i.df, 12
  %i.dh = ashr exact i32 %i.dg, 12
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !332
  %i.dk = sext i32 %i.dh to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dk ; 2 uses
  call fastcc void @_ZL31stbtt_GetGlyphBitmapBoxSubpixelPK14stbtt_fontinfoiffffPiS2_S2_S2_(ptr noundef nonnull readonly %i.n, i32 noundef range(i32 1, 0) %i.r, float noundef %i.av, float noundef %i.ax, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l)
  %i.dm = load ptr, ptr %i.cz, align 8, !tbaa !340 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 128 ; 2 uses
  %i.do = mul nsw i32 %i.cw, %i.ct                ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 132 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !97 ; 4 uses
  %i.dr = icmp sgt i32 %i.do, %i.dq
  br i1 %i.dr, label %bb.j, label %._ZN8ImVectorIhE6resizeEi.exit_crit_edge

._ZN8ImVectorIhE6resizeEi.exit_crit_edge:         ; preds = %bb.i
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %i.dm, i64 136
  %.pre163 = load ptr, ptr %.phi.trans.insert162, align 8, !tbaa !790
  br label %_ZN8ImVectorIhE6resizeEi.exit

bb.j:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIhE14_grow_capacityEi.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ds = sdiv i32 %i.dq, 2
  %i.dt = add nsw i32 %i.ds, %i.dq
  br label %_ZNK8ImVectorIhE14_grow_capacityEi.exit.i

_ZNK8ImVectorIhE14_grow_capacityEi.exit.i:        ; preds = %bb.k, %bb.j
  %i.du = phi i32 [ %i.dt, %bb.k ], [ 8, %bb.j ]
  %i.dv = call noundef i32 @llvm.smax.i32(i32 %i.du, i32 %i.do) ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.dw) ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 136 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !78 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.dz, null
  br i1 %.not6.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK8ImVectorIhE14_grow_capacityEi.exit.i
  %i.ea = load i32, ptr %i.dn, align 8, !tbaa !98
  %i.eb = sext i32 %i.ea to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr nonnull align 1 %i.dz, i64 %i.eb, i1 false)
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !78
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ec)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK8ImVectorIhE14_grow_capacityEi.exit.i
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !78
  store i32 %i.dv, ptr %i.dp, align 4, !tbaa !97
  br label %_ZN8ImVectorIhE6resizeEi.exit

_ZN8ImVectorIhE6resizeEi.exit:                    ; preds = %._ZN8ImVectorIhE6resizeEi.exit_crit_edge, %bb.m
  %i.ed = phi ptr [ %.pre163, %._ZN8ImVectorIhE6resizeEi.exit_crit_edge ], [ %i.dx, %bb.m ] ; 5 uses
  store i32 %i.do, ptr %i.dn, align 8, !tbaa !98
  %i.ee = sext i32 %i.do to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.ed, i8 0, i64 %i.ee, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #38
  %i.ef = call fastcc noundef i32 @_ZL19stbtt_GetGlyphShapePK14stbtt_fontinfoiPP12stbtt_vertex(ptr noundef nonnull readonly %i.n, i32 noundef range(i32 1, 0) %i.r, ptr noundef %i.h) ; 3 uses
  call fastcc void @_ZL31stbtt_GetGlyphBitmapBoxSubpixelPK14stbtt_fontinfoiffffPiS2_S2_S2_(ptr noundef nonnull readonly %i.n, i32 noundef range(i32 1, 0) %i.r, float noundef %i.av, float noundef %i.ax, ptr noundef %i.f, ptr noundef %i.g, ptr noundef null, ptr noundef null)
  %.pre32.i.i = load ptr, ptr %i.h, align 8, !tbaa !246 ; 13 uses
  %i.eg = load i32, ptr %i.f, align 4, !tbaa !259
  %i.eh = load i32, ptr %i.g, align 4, !tbaa !259 ; 3 uses
  %i.ei = fcmp ogt float %i.av, %i.ax
  %i.ej = select i1 %i.ei, float %i.ax, float %i.av
  %i.ek = fdiv float 3.500000e-01, %i.ej          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #38
  %i.el = fmul float %i.ek, %i.ek                 ; 4 uses
  %i.em = icmp sgt i32 %i.ef, 0
  br i1 %i.em, label %.lr.ph.preheader.i.i.i.i, label %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.thread.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN8ImVectorIhE6resizeEi.exit
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.ef to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ef, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fx, %vector.body ]
  %vec.phi320 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fy, %vector.body ]
  %i.en = getelementptr inbounds nuw [14 x i8], ptr %.pre32.i.i, i64 %index
  %i.eo = getelementptr inbounds nuw [14 x i8], ptr %.pre32.i.i, i64 %index
  %i.ep = getelementptr inbounds nuw [14 x i8], ptr %.pre32.i.i, i64 %index
  %i.eq = getelementptr inbounds nuw [14 x i8], ptr %.pre32.i.i, i64 %index
  %i.er = getelementptr inbounds nuw [14 x i8], ptr %.pre32.i.i, i64 %index
  %i.es = getelementptr inbounds nuw [14 x i8], ptr %.pre32.i.i, i64 %index
  %i.et = getelementptr inbounds nuw [14 x i8], ptr %.pre32.i.i, i64 %index
  %i.eu = getelementptr inbounds nuw [14 x i8], ptr %.pre32.i.i, i64 %index
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 26
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 54
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 68
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 82
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 110
end_hunk_2
begin_hunk_3_@_ZL40ImGui_ImplStbTrueType_FontBakedLoadGlyphP11ImFontAtlasP12ImFontConfigP11ImFontBakedPvtP11ImFontGlyphPf:bb.a

middle.block331:                                  ; preds = %vector.body325
  %bin.rdx332 = add <4 x i32> %i.kp, %i.ko
  %i.kr = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx332) ; 2 uses
  %cmp.n333 = icmp eq i64 %n.vec324, %i.gh
  br i1 %cmp.n333, label %._crit_edge.i27.i.i.i, label %.lr.ph.i23.i.i.i.preheader

.lr.ph.i23.i.i.i.preheader:                       ; preds = %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i, %middle.block331
  %indvars.iv.i24.i.i.i.ph = phi i64 [ 0, %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i ], [ %n.vec324, %middle.block331 ]
  %.0874.i.i.i.i.ph = phi i32 [ 0, %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i ], [ %i.kr, %middle.block331 ]
  br label %.lr.ph.i23.i.i.i

.lr.ph.i23.i.i.i:                                 ; preds = %.lr.ph.i23.i.i.i.preheader, %.lr.ph.i23.i.i.i
  %indvars.iv.i24.i.i.i = phi i64 [ %indvars.iv.next.i25.i.i.i, %.lr.ph.i23.i.i.i ], [ %indvars.iv.i24.i.i.i.ph, %.lr.ph.i23.i.i.i.preheader ] ; 2 uses
  %.0874.i.i.i.i = phi i32 [ %i.ku, %.lr.ph.i23.i.i.i ], [ %.0874.i.i.i.i.ph, %.lr.ph.i23.i.i.i.preheader ]
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.i24.i.i.i
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !259
  %i.ku = add nsw i32 %i.kt, %.0874.i.i.i.i       ; 2 uses
  %indvars.iv.next.i25.i.i.i = add nuw nsw i64 %indvars.iv.i24.i.i.i, 1 ; 2 uses
  %exitcond.not.i26.i.i.i = icmp eq i64 %indvars.iv.next.i25.i.i.i, %i.gh
  br i1 %exitcond.not.i26.i.i.i, label %._crit_edge.i27.i.i.i, label %.lr.ph.i23.i.i.i, !llvm.loop !763

._crit_edge.i27.i.i.i:                            ; preds = %.lr.ph.i23.i.i.i, %middle.block331
  %.lcssa319 = phi i32 [ %i.kr, %middle.block331 ], [ %i.ku, %.lr.ph.i23.i.i.i ]
  %i.kv = fneg float %i.ax
  %i.kw = add nsw i32 %.lcssa319, 1
  %i.kx = sext i32 %i.kw to i64
  %i.ky = mul nsw i64 %i.kx, 20
  %i.kz = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ky) ; 9 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %_ZL16stbtt__rasterizeP13stbtt__bitmapP12stbtt__pointPiiffffiiiPv.exit.i.i.i, label %.lr.ph16.i.i.i.i.preheader

.lr.ph16.i.i.i.i.preheader:                       ; preds = %._crit_edge.i27.i.i.i
  %i.lb = insertelement <4 x float> poison, float %i.av, i64 0
  %i.lc = insertelement <4 x float> %i.lb, float %i.kv, i64 1
  %i.ld = shufflevector <4 x float> %i.lc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph16.i.i.i.i

.lr.ph16.i.i.i.i:                                 ; preds = %.lr.ph16.i.i.i.i.preheader, %._crit_edge11.i.i.i.i
  %indvars.iv27.i.i.i.i = phi i64 [ %indvars.iv.next28.i.i.i.i, %._crit_edge11.i.i.i.i ], [ 0, %.lr.ph16.i.i.i.i.preheader ] ; 2 uses
  %.08315.i.i.i.i = phi i32 [ %i.li, %._crit_edge11.i.i.i.i ], [ 0, %.lr.ph16.i.i.i.i.preheader ] ; 2 uses
  %.18813.i.i.i.i = phi i32 [ %.2.lcssa.i.i.i.i, %._crit_edge11.i.i.i.i ], [ 0, %.lr.ph16.i.i.i.i.preheader ] ; 2 uses
  %i.le = sext i32 %.08315.i.i.i.i to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.le ; 4 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv27.i.i.i.i ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !259 ; 4 uses
  %i.li = add nsw i32 %i.lh, %.08315.i.i.i.i
  %i.lj = icmp sgt i32 %i.lh, 0
  br i1 %i.lj, label %.lr.ph10.preheader.i.i.i.i, label %._crit_edge11.i.i.i.i

.lr.ph10.preheader.i.i.i.i:                       ; preds = %.lr.ph16.i.i.i.i
  %i.lk = add nsw i32 %i.lh, -1
  br label %.lr.ph10.i.i.i.i

.lr.ph10.i.i.i.i:                                 ; preds = %.lr.ph10._crit_edge.i.i.i.i, %.lr.ph10.preheader.i.i.i.i
  %i.ll = phi i32 [ %i.lh, %.lr.ph10.preheader.i.i.i.i ], [ %i.mh, %.lr.ph10._crit_edge.i.i.i.i ]
  %indvars.iv24.i28.i.i.i = phi i64 [ 0, %.lr.ph10.preheader.i.i.i.i ], [ %indvars.iv.next25.i29.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 5 uses
  %.0857.i.i.i.i = phi i32 [ %i.lk, %.lr.ph10.preheader.i.i.i.i ], [ %.pre-phi.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ]
  %.26.i.i.i.i = phi i32 [ %.18813.i.i.i.i, %.lr.ph10.preheader.i.i.i.i ], [ %.3.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 3 uses
  %i.lm = sext i32 %.0857.i.i.i.i to i64          ; 3 uses
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !522 ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv24.i28.i.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !522 ; 2 uses
  %i.lt = fcmp oeq float %i.lp, %i.ls
  br i1 %i.lt, label %.lr.ph10._crit_edge.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph10.i.i.i.i
  %i.lu = sext i32 %.26.i.i.i.i to i64
  %i.lv = getelementptr inbounds [20 x i8], ptr %i.kz, i64 %i.lu ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = fcmp ogt float %i.lp, %i.ls             ; 3 uses
  %spec.store.select.i.i.i.i = zext i1 %i.lx to i32
  store i32 %spec.store.select.i.i.i.i, ptr %i.lw, align 4
  %i.ly = select i1 %i.lx, i64 %i.lm, i64 %indvars.iv24.i28.i.i.i
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.ly
  %i.ma = select i1 %i.lx, i64 %indvars.iv24.i28.i.i.i, i64 %i.lm
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.ma
  %i.mc = load <2 x float>, ptr %i.lz, align 4, !tbaa !29
  %i.md = load <2 x float>, ptr %i.mb, align 4, !tbaa !29
  %i.me = shufflevector <2 x float> %i.mc, <2 x float> %i.md, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.me, <4 x float> %i.ld, <4 x float> zeroinitializer)
  store <4 x float> %i.mf, ptr %i.lv, align 4, !tbaa !29
  %i.mg = add nsw i32 %.26.i.i.i.i, 1
  %.pre.i.i.i.i = load i32, ptr %i.lg, align 4, !tbaa !259
  br label %.lr.ph10._crit_edge.i.i.i.i

.lr.ph10._crit_edge.i.i.i.i:                      ; preds = %bb.ad, %.lr.ph10.i.i.i.i
  %i.mh = phi i32 [ %.pre.i.i.i.i, %bb.ad ], [ %i.ll, %.lr.ph10.i.i.i.i ] ; 2 uses
  %.3.i.i.i.i = phi i32 [ %i.mg, %bb.ad ], [ %.26.i.i.i.i, %.lr.ph10.i.i.i.i ] ; 2 uses
  %.pre-phi.i.i.i.i = trunc i64 %indvars.iv24.i28.i.i.i to i32
  %indvars.iv.next25.i29.i.i.i = add nuw nsw i64 %indvars.iv24.i28.i.i.i, 1 ; 2 uses
  %i.mi = sext i32 %i.mh to i64
  %i.mj = icmp slt i64 %indvars.iv.next25.i29.i.i.i, %i.mi
  br i1 %i.mj, label %.lr.ph10.i.i.i.i, label %._crit_edge11.i.i.i.i, !llvm.loop !764

._crit_edge11.i.i.i.i:                            ; preds = %.lr.ph10._crit_edge.i.i.i.i, %.lr.ph16.i.i.i.i
  %.2.lcssa.i.i.i.i = phi i32 [ %.18813.i.i.i.i, %.lr.ph16.i.i.i.i ], [ %.3.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 5 uses
  %indvars.iv.next28.i.i.i.i = add nuw nsw i64 %indvars.iv27.i.i.i.i, 1 ; 2 uses
  %exitcond31.not.i.i.i.i = icmp eq i64 %indvars.iv.next28.i.i.i.i, %i.gh
  br i1 %exitcond31.not.i.i.i.i, label %._crit_edge17.i.i.i.i, label %.lr.ph16.i.i.i.i, !llvm.loop !765

._crit_edge17.i.i.i.i:                            ; preds = %._crit_edge11.i.i.i.i
  call fastcc void @_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei(ptr noundef nonnull %i.kz, i32 noundef %.2.lcssa.i.i.i.i)
  %i.mk = icmp sgt i32 %.2.lcssa.i.i.i.i, 1
  br i1 %i.mk, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge17.i.i.i.i
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %.2.lcssa.i.i.i.i to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ah, %.lr.ph.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.ah ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  %i.ml = getelementptr inbounds nuw [20 x i8], ptr %i.kz, i64 %indvars.iv.i.i.i.i.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %.sroa.4.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !tbaa !29
  %i.mm = load <2 x float>, ptr %i.ml, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !791
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i
  %indvars.iv31.i.i.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next32.i.i.i.i.i.i, %bb.af ] ; 4 uses
  %i.mn = getelementptr [20 x i8], ptr %i.kz, i64 %indvars.iv31.i.i.i.i.i.i ; 3 uses
  %i.mo = getelementptr i8, ptr %i.mn, i64 -16
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !524
  %i.mq = fcmp olt float %.sroa.4.0.copyload.i.i.i.i.i.i, %i.mp
  br i1 %i.mq, label %bb.af, label %.thread.split.loop.exit.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.mr = getelementptr i8, ptr %i.mn, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.mn, ptr noundef nonnull align 4 dereferenceable(20) %i.mr, i64 20, i1 false), !tbaa.struct !294
  %indvars.iv.next32.i.i.i.i.i.i = add nsw i64 %indvars.iv31.i.i.i.i.i.i, -1
  %i.ms = icmp sgt i64 %indvars.iv31.i.i.i.i.i.i, 1
  br i1 %i.ms, label %bb.ae, label %.thread.i.i.i.i.i.i

.thread.split.loop.exit.i.i.i.i.i.i:              ; preds = %bb.ae
  %i.mt = trunc nuw nsw i64 %indvars.iv31.i.i.i.i.i.i to i32
  br label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.af, %.thread.split.loop.exit.i.i.i.i.i.i
  %.021.lcssa.i.i.i.i.i.i = phi i32 [ %i.mt, %.thread.split.loop.exit.i.i.i.i.i.i ], [ 0, %bb.af ] ; 2 uses
  %i.mu = zext i32 %.021.lcssa.i.i.i.i.i.i to i64
  %.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i.i.i, %i.mu
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread.i.i.i.i.i.i
  %i.mv = sext i32 %.021.lcssa.i.i.i.i.i.i to i64
  %i.mw = getelementptr inbounds [20 x i8], ptr %i.kz, i64 %i.mv ; 2 uses
  store <2 x float> %i.mm, ptr %i.mw, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx26.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !791
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !766

_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i: ; preds = %bb.ah, %._crit_edge17.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8, !tbaa !793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #38
  %i.mx = icmp sgt i32 %i.cr, 64
  br i1 %i.mx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i
  %i.my = shl nuw nsw i32 %i.cr, 1
  %i.mz = or disjoint i32 %i.my, 1
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = shl nuw nsw i64 %i.na, 2
  %i.nc = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.nb)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i
  %.080.i.i.i.i.i = phi ptr [ %i.nc, %bb.ai ], [ %i.d, %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i ] ; 43 uses
  %i.nd = sext i32 %i.cr to i64                   ; 3 uses
  %i.ne = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.nd ; 9 uses
  %i.nf = add nsw i32 %i.eh, %i.cu
  %i.ng = sitofp i32 %i.nf to float
  %i.nh = fadd float %i.ng, 1.000000e+00
  %i.ni = sext i32 %.2.lcssa.i.i.i.i to i64
  %i.nj = getelementptr inbounds [20 x i8], ptr %i.kz, i64 %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  store float %i.nh, ptr %i.nk, align 4, !tbaa !524
  %i.nl = icmp sgt i32 %i.cu, 0
  br i1 %i.nl, label %.lr.ph33.i.i.i.i.i, label %_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i

.lr.ph33.i.i.i.i.i:                               ; preds = %bb.aj
  %i.nm = sitofp i32 %i.eg to float
  %i.nn = icmp ne i32 %i.eh, 0
  %i.no = getelementptr inbounds nuw i8, ptr %i.ne, i64 4 ; 2 uses
  %i.np = shl nsw i64 %i.nd, 2
  %i.nq = add nsw i32 %i.cr, 1
  %i.nr = sext i32 %i.nq to i64
  %i.ns = shl nsw i64 %i.nr, 2
  %7 = sitofp i32 %i.cr to float                  ; 3 uses
  %i.nt = icmp sgt i32 %i.cr, 0                   ; 2 uses
  %wide.trip.count.i.i92.i.i.i.i = zext nneg i32 %i.cr to i64
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge25.i.i.i.i.i, %.lr.ph33.i.i.i.i.i
  %.0..i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.031.i.i.i.i.i = phi ptr [ %i.kz, %.lr.ph33.i.i.i.i.i ], [ %.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 3 uses
  %.07530.i.i.i.i.i = phi i32 [ %i.eh, %.lr.ph33.i.i.i.i.i ], [ %i.axr, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.07629.i.i.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i.i.i ], [ %i.axs, %._crit_edge25.i.i.i.i.i ] ; 3 uses
  %.sroa.11.028.i.i.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i.i.i ], [ %.sroa.11.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.sroa.7.027.i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.sroa.7.3.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.sroa.0.026.i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %i.nu = sitofp i32 %.07530.i.i.i.i.i to float   ; 68 uses
  %i.nv = fadd float %i.nu, 1.000000e+00          ; 75 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.080.i.i.i.i.i, i8 0, i64 %i.np, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ne, i8 0, i64 %i.ns, i1 false)
  %.not908.i.i.i.i.i = icmp eq ptr %.0..i.i.i.i.i, null
  br i1 %.not908.i.i.i.i.i, label %.preheader7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader7.i.i.i.i.i:                            ; preds = %bb.am, %bb.ak
  %.sroa.7.1.lcssa.i.i.i.i.i = phi ptr [ %.sroa.7.027.i.i.i.i.i, %bb.ak ], [ %.sroa.7.2.i.i.i.i.i, %bb.am ] ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i.i, i64 4 ; 2 uses
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !524 ; 2 uses
  %i.ny = fcmp ugt float %i.nx, %i.nv
  br i1 %i.ny, label %._crit_edge.i.i.i.i.i, label %.lr.ph15.i.i.i.i.i

.lr.ph15.i.i.i.i.i:                               ; preds = %.preheader7.i.i.i.i.i
  %i.nz = icmp eq i32 %.07629.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = and i1 %i.nn, %i.nz
  br label %bb.an

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ak, %bb.am
  %i.oa = phi ptr [ %i.og, %bb.am ], [ %.0..i.i.i.i.i, %bb.ak ] ; 6 uses
  %.07810.i.i.i.i.i = phi ptr [ %.179.i.i.i.i.i, %bb.am ], [ %i.c, %bb.ak ] ; 2 uses
  %.sroa.7.19.i.i.i.i.i = phi ptr [ %.sroa.7.2.i.i.i.i.i, %bb.am ], [ %.sroa.7.027.i.i.i.i.i, %bb.ak ] ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 28
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !795
  %i.od = fcmp ugt float %i.oc, %i.nu
  br i1 %i.od, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.oe = load ptr, ptr %i.oa, align 8, !tbaa !796
  store ptr %i.oe, ptr %.07810.i.i.i.i.i, align 8, !tbaa !793
  %i.of = getelementptr inbounds nuw i8, ptr %i.oa, i64 20
  store float 0.000000e+00, ptr %i.of, align 4, !tbaa !797
  store ptr %.sroa.7.19.i.i.i.i.i, ptr %i.oa, align 8, !tbaa !246
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.i.i.i.i
  %.sroa.7.2.i.i.i.i.i = phi ptr [ %.sroa.7.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.oa, %bb.al ] ; 2 uses
  %.179.i.i.i.i.i = phi ptr [ %i.oa, %.lr.ph.i.i.i.i.i ], [ %.07810.i.i.i.i.i, %bb.al ] ; 2 uses
  %i.og = load ptr, ptr %.179.i.i.i.i.i, align 8, !tbaa !793 ; 2 uses
  %.not90.i.i.i.i.i = icmp eq ptr %i.og, null
  br i1 %.not90.i.i.i.i.i, label %.preheader7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !767

bb.an:                                            ; preds = %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, %.lr.ph15.i.i.i.i.i
  %i.oh = phi float [ %i.nx, %.lr.ph15.i.i.i.i.i ], [ %i.pw, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 3 uses
  %i.oi = phi ptr [ %i.nw, %.lr.ph15.i.i.i.i.i ], [ %i.pv, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.114.i.i.i.i.i = phi ptr [ %.031.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %i.pu, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 6 uses
  %.sroa.11.113.i.i.i.i.i = phi i32 [ %.sroa.11.028.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.7.312.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.0.111.i.i.i.i.i = phi ptr [ %.sroa.0.026.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 5 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 12 ; 2 uses
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !798 ; 3 uses
  %i.ol = fcmp une float %i.oh, %i.ok
  br i1 %i.ol, label %bb.ao, label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.7.312.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.om = load ptr, ptr %.sroa.7.312.i.i.i.i.i, align 8, !tbaa !246
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.on = icmp eq i32 %.sroa.11.113.i.i.i.i.i, 0
  br i1 %i.on, label %bb.ar, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.aq
  %i.oo = add nsw i32 %.sroa.11.113.i.i.i.i.i, -1
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.op = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 25608) ; 3 uses
  %i.oq = icmp eq ptr %i.op, null
  br i1 %i.oq, label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ar
  store ptr %.sroa.0.111.i.i.i.i.i, ptr %i.op, align 8, !tbaa !801
  %.pre40.pre.i.i.i.i.i = load float, ptr %i.oj, align 4, !tbaa !798
  %.pre41.pre.i.i.i.i.i = load float, ptr %i.oi, align 4, !tbaa !524
  br label %bb.as

bb.as:                                            ; preds = %.thread.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %.pre41.i.i.i.i.i = phi float [ %.pre41.pre.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %i.oh, %._crit_edge.i.i.i.i.i.i.i ]
  %.pre40.i.i.i.i.i = phi float [ %.pre40.pre.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %i.ok, %._crit_edge.i.i.i.i.i.i.i ]
  %.sroa.0.2.i.i.i.i.i = phi ptr [ %i.op, %.thread.i.i.i.i.i.i.i ], [ %.sroa.0.111.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.or = phi i32 [ 799, %.thread.i.i.i.i.i.i.i ], [ %i.oo, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i.i.i.i, i64 8
  %i.ot = zext nneg i32 %i.or to i64
  %i.ou = shl nuw nsw i64 %i.ot, 5
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ou
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %i.ow = phi float [ %.pre41.i.i.i.i.i, %bb.as ], [ %i.oh, %bb.ap ] ; 3 uses
  %i.ox = phi float [ %.pre40.i.i.i.i.i, %bb.as ], [ %i.ok, %bb.ap ] ; 3 uses
  %.sroa.0.3.i.i.i.i.i = phi ptr [ %.sroa.0.2.i.i.i.i.i, %bb.as ], [ %.sroa.0.111.i.i.i.i.i, %bb.ap ]
  %.sroa.7.4.i.i.i.i.i = phi ptr [ null, %bb.as ], [ %i.om, %bb.ap ]
  %.sroa.11.2.i.i.i.i.i = phi i32 [ %i.or, %bb.as ], [ %.sroa.11.113.i.i.i.i.i, %bb.ap ]
  %.1.i.ph.i.i.i.i.i.i = phi ptr [ %i.ov, %bb.as ], [ %.sroa.7.312.i.i.i.i.i, %bb.ap ] ; 9 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 8
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !802
  %i.pa = load float, ptr %.114.i.i.i.i.i, align 4, !tbaa !803 ; 2 uses
  %i.pb = fsub float %i.oz, %i.pa
  %i.pc = fsub float %i.ox, %i.ow
  %i.pd = fdiv float %i.pb, %i.pc                 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 12
  store float %i.pd, ptr %i.pe, align 4, !tbaa !804
  %i.pf = fcmp une float %i.pd, 0.000000e+00
  %i.pg = fdiv float 1.000000e+00, %i.pd
  %i.ph = select i1 %i.pf, float %i.pg, float 0.000000e+00
  %i.pi = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 16
  store float %i.ph, ptr %i.pi, align 8, !tbaa !805
  %i.pj = fsub float %i.nu, %i.ow
  %i.pk = call float @llvm.fmuladd.f32(float %i.pd, float %i.pj, float %i.pa)
  %i.pl = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 8
  %i.pm = fsub float %i.pk, %i.nm
  store float %i.pm, ptr %i.pl, align 8, !tbaa !806
  %i.pn = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 16
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !807
  %.not28.i.i.i.i.i.i = icmp eq i32 %i.po, 0
  %i.pp = select i1 %.not28.i.i.i.i.i.i, float -1.000000e+00, float 1.000000e+00
  %i.pq = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 20
  store float %i.pp, ptr %i.pq, align 4, !tbaa !797
  %i.pr = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 24
  store float %i.ow, ptr %i.pr, align 8, !tbaa !808
  %i.ps = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 28 ; 2 uses
  store float %i.ox, ptr %i.ps, align 4, !tbaa !795
  store ptr null, ptr %.1.i.ph.i.i.i.i.i.i, align 8, !tbaa !796
  %i.pt = fcmp olt float %i.ox, %i.nu
  %or.cond136.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i1 %i.pt, i1 false
  br i1 %or.cond136.i.i.i.i.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store float %i.nu, ptr %i.ps, align 4, !tbaa !795
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !793
  store ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i, ptr %.1.i.ph.i.i.i.i.i.i, align 8, !tbaa !796
  store ptr %.1.i.ph.i.i.i.i.i.i, ptr %i.c, align 8, !tbaa !793
  br label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i

_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i: ; preds = %bb.av, %bb.ar, %bb.an
  %.sroa.0.5.i.i.i.i.i = phi ptr [ %.sroa.0.111.i.i.i.i.i, %bb.an ], [ %.sroa.0.3.i.i.i.i.i, %bb.av ], [ %.sroa.0.111.i.i.i.i.i, %bb.ar ] ; 2 uses
  %.sroa.7.6.i.i.i.i.i = phi ptr [ %.sroa.7.312.i.i.i.i.i, %bb.an ], [ %.sroa.7.4.i.i.i.i.i, %bb.av ], [ null, %bb.ar ] ; 2 uses
  %.sroa.11.4.i.i.i.i.i = phi i32 [ %.sroa.11.113.i.i.i.i.i, %bb.an ], [ %.sroa.11.2.i.i.i.i.i, %bb.av ], [ 0, %bb.ar ] ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 20 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 24 ; 2 uses
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !524 ; 2 uses
  %i.px = fcmp ugt float %i.pw, %i.nv
  br i1 %i.px, label %._crit_edge.i.i.i.i.i, label %bb.an, !llvm.loop !768

._crit_edge.i.i.i.i.i:                            ; preds = %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, %.preheader7.i.i.i.i.i
  %.sroa.0.1.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.026.i.i.i.i.i, %.preheader7.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 3 uses
  %.sroa.7.3.lcssa.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i, %.preheader7.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.sroa.11.1.lcssa.i.i.i.i.i = phi i32 [ %.sroa.11.028.i.i.i.i.i, %.preheader7.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.1.lcssa.i.i.i.i.i = phi ptr [ %.031.i.i.i.i.i, %.preheader7.i.i.i.i.i ], [ %i.pu, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !793 ; 4 uses
  %.not91.i.i.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, null ; 2 uses
  br i1 %.not91.i.i.i.i.i, label %_ZL28stbtt__fill_active_edges_newPfS_iP18stbtt__active_edgef.exit.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.py = fcmp oeq float %i.nv, %i.nu             ; 3 uses
  %i.pz = fsub float %i.nv, %i.nu                 ; 4 uses
  %i.qa = insertelement <2 x float> poison, float %i.nu, i64 0
  %i.qb = shufflevector <2 x float> %i.qa, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.ax

bb.ax:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, %bb.aw
  %.0295473.i.i.i.i.i.i = phi ptr [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, %bb.aw ], [ %i.aww, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i ] ; 20 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 12
  %i.qd = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 8
  %i.qe = load float, ptr %i.qc, align 4, !tbaa !804 ; 3 uses
  %i.qf = fcmp oeq float %i.qe, 0.000000e+00
  %i.qg = load float, ptr %i.qd, align 8, !tbaa !806 ; 47 uses
  br i1 %i.qf, label %bb.ay, label %bb.cg

bb.ay:                                            ; preds = %bb.ax
  %i.qh = fcmp olt float %i.qg, %7
  br i1 %i.qh, label %bb.az, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.qi = fcmp ult float %i.qg, 0.000000e+00
  br i1 %i.qi, label %bb.bv, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qj = fptosi float %i.qg to i32               ; 6 uses
  br i1 %i.py, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qk = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !795 ; 4 uses
  %i.qm = fcmp olt float %i.ql, %i.nu
  br i1 %i.qm, label %bb.bl, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qn = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24
  %i.qo = load float, ptr %i.qn, align 8, !tbaa !808 ; 4 uses
  %i.qp = fcmp olt float %i.nv, %i.qo
  br i1 %i.qp, label %bb.bl, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.qq = fcmp ogt float %i.qo, %i.nu
  br i1 %i.qq, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.qr = fsub float %i.qg, %i.qg
  %i.qs = fsub float %i.qo, %i.nu
  %i.qt = fmul float %i.qr, %i.qs
  %i.qu = fdiv float %i.qt, %i.pz
  %i.qv = fadd float %i.qg, %i.qu
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.057.i.i.i.i.i.i.i = phi float [ %i.qv, %bb.be ], [ %i.qg, %bb.bd ] ; 4 uses
  %.056.i.i.i.i.i.i.i = phi float [ %i.qo, %bb.be ], [ %i.nu, %bb.bd ] ; 3 uses
  %i.qw = fcmp ogt float %i.nv, %i.ql
  br i1 %i.qw, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.qx = fsub float %i.qg, %.057.i.i.i.i.i.i.i
  %i.qy = fsub float %i.ql, %i.nv
  %i.qz = fmul float %i.qy, %i.qx
  %i.ra = fsub float %i.nv, %.056.i.i.i.i.i.i.i
  %i.rb = fdiv float %i.qz, %i.ra
  %i.rc = fadd float %i.qg, %i.rb
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.055.i.i.i.i.i.i.i = phi float [ %i.rc, %bb.bg ], [ %i.qg, %bb.bf ] ; 3 uses
  %.0.i.i.i.i.i.i.i = phi float [ %i.ql, %bb.bg ], [ %i.nv, %bb.bf ] ; 2 uses
  %i.rd = sitofp i32 %i.qj to float               ; 4 uses
  %i.re = fcmp ugt float %.057.i.i.i.i.i.i.i, %i.rd
  %i.rf = fcmp ugt float %.055.i.i.i.i.i.i.i, %i.rd
  %or.cond64.i.i.i.i.i.i.i = select i1 %i.re, i1 true, i1 %i.rf
  br i1 %or.cond64.i.i.i.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.rg = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !797
  %i.ri = fsub float %.0.i.i.i.i.i.i.i, %.056.i.i.i.i.i.i.i
  %i.rj = zext nneg i32 %i.qj to i64
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.rj ; 2 uses
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !29
  %i.rm = call float @llvm.fmuladd.f32(float %i.rh, float %i.ri, float %i.rl)
  store float %i.rm, ptr %i.rk, align 4, !tbaa !29
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.rn = add nuw nsw i32 %i.qj, 1
  %8 = sitofp i32 %i.rn to float                  ; 2 uses
  %i.ro = fcmp ult float %.057.i.i.i.i.i.i.i, %8
  %i.rp = fcmp ult float %.055.i.i.i.i.i.i.i, %8
  %or.cond65.i.i.i.i.i.i.i = select i1 %i.ro, i1 true, i1 %i.rp
  br i1 %or.cond65.i.i.i.i.i.i.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.rq = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !797
  %i.rs = fsub float %.0.i.i.i.i.i.i.i, %.056.i.i.i.i.i.i.i
  %i.rt = fmul float %i.rs, %i.rr
  %i.ru = fsub float %.057.i.i.i.i.i.i.i, %i.rd
  %i.rv = fsub float %.055.i.i.i.i.i.i.i, %i.rd
  %i.rw = fadd float %i.ru, %i.rv
  %i.rx = fmul float %i.rw, 5.000000e-01
  %i.ry = fsub float 1.000000e+00, %i.rx
  %i.rz = zext nneg i32 %i.qj to i64
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.rz ; 2 uses
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !29
  %i.sc = call float @llvm.fmuladd.f32(float %i.rt, float %i.ry, float %i.sb)
  store float %i.sc, ptr %i.sa, align 4, !tbaa !29
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bc, %bb.bb
  %i.sd = add nuw nsw i32 %i.qj, 1                ; 3 uses
  %i.se = load float, ptr %i.qk, align 4, !tbaa !795 ; 4 uses
  %i.sf = fcmp olt float %i.se, %i.nu
  br i1 %i.sf, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.sg = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24
  %i.sh = load float, ptr %i.sg, align 8, !tbaa !808 ; 4 uses
  %i.si = fcmp olt float %i.nv, %i.sh
  br i1 %i.si, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.sj = fcmp ogt float %i.sh, %i.nu
  br i1 %i.sj, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.sk = fsub float %i.qg, %i.qg
  %i.sl = fsub float %i.sh, %i.nu
  %i.sm = fmul float %i.sk, %i.sl
  %i.sn = fdiv float %i.sm, %i.pz
  %i.so = fadd float %i.qg, %i.sn
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.057.i350.i.i.i.i.i.i = phi float [ %i.so, %bb.bo ], [ %i.qg, %bb.bn ] ; 4 uses
  %.056.i351.i.i.i.i.i.i = phi float [ %i.sh, %bb.bo ], [ %i.nu, %bb.bn ] ; 3 uses
  %i.sp = fcmp ogt float %i.nv, %i.se
  br i1 %i.sp, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.sq = fsub float %i.qg, %.057.i350.i.i.i.i.i.i
  %i.sr = fsub float %i.se, %i.nv
  %i.ss = fmul float %i.sr, %i.sq
  %i.st = fsub float %i.nv, %.056.i351.i.i.i.i.i.i
  %i.su = fdiv float %i.ss, %i.st
  %i.sv = fadd float %i.qg, %i.su
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.055.i352.i.i.i.i.i.i = phi float [ %i.sv, %bb.bq ], [ %i.qg, %bb.bp ] ; 3 uses
  %.0.i353.i.i.i.i.i.i = phi float [ %i.se, %bb.bq ], [ %i.nv, %bb.bp ] ; 2 uses
  %9 = sitofp i32 %i.sd to float                  ; 4 uses
  %i.sw = fcmp ugt float %.057.i350.i.i.i.i.i.i, %9
  %i.sx = fcmp ugt float %.055.i352.i.i.i.i.i.i, %9
  %or.cond64.i354.i.i.i.i.i.i = select i1 %i.sw, i1 true, i1 %i.sx
  br i1 %or.cond64.i354.i.i.i.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sy = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !797
  %i.ta = fsub float %.0.i353.i.i.i.i.i.i, %.056.i351.i.i.i.i.i.i
  %i.tb = zext nneg i32 %i.sd to i64
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.tb ; 2 uses
  %i.td = load float, ptr %i.tc, align 4, !tbaa !29
  %i.te = call float @llvm.fmuladd.f32(float %i.sz, float %i.ta, float %i.td)
  store float %i.te, ptr %i.tc, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.tf = add nuw nsw i32 %i.qj, 2
  %10 = sitofp i32 %i.tf to float                 ; 2 uses
  %i.tg = fcmp ult float %.057.i350.i.i.i.i.i.i, %10
  %i.th = fcmp ult float %.055.i352.i.i.i.i.i.i, %10
  %or.cond65.i355.i.i.i.i.i.i = select i1 %i.tg, i1 true, i1 %i.th
  br i1 %or.cond65.i355.i.i.i.i.i.i, label %bb.bu, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.ti = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !797
  %i.tk = fsub float %.0.i353.i.i.i.i.i.i, %.056.i351.i.i.i.i.i.i
  %i.tl = fmul float %i.tk, %i.tj
  %i.tm = fsub float %.057.i350.i.i.i.i.i.i, %9
  %i.tn = fsub float %.055.i352.i.i.i.i.i.i, %9
  %i.to = fadd float %i.tm, %i.tn
  %i.tp = fmul float %i.to, 5.000000e-01
  %i.tq = fsub float 1.000000e+00, %i.tp
  %i.tr = zext nneg i32 %i.sd to i64
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.tr ; 2 uses
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !29
  %i.tu = call float @llvm.fmuladd.f32(float %i.tl, float %i.tq, float %i.tt)
  store float %i.tu, ptr %i.ts, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.az
  br i1 %i.py, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.tv = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 28
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !795 ; 4 uses
  %i.tx = fcmp olt float %i.tw, %i.nu
  br i1 %i.tx, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ty = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24
  %i.tz = load float, ptr %i.ty, align 8, !tbaa !808 ; 4 uses
  %i.ua = fcmp olt float %i.nv, %i.tz
  br i1 %i.ua, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ub = fcmp ogt float %i.tz, %i.nu
  br i1 %i.ub, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.uc = fsub float %i.qg, %i.qg
  %i.ud = fsub float %i.tz, %i.nu
  %i.ue = fmul float %i.uc, %i.ud
  %i.uf = fdiv float %i.ue, %i.pz
  %i.ug = fadd float %i.qg, %i.uf
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.057.i357.i.i.i.i.i.i = phi float [ %i.ug, %bb.bz ], [ %i.qg, %bb.by ] ; 4 uses
  %.056.i358.i.i.i.i.i.i = phi float [ %i.tz, %bb.bz ], [ %i.nu, %bb.by ] ; 3 uses
  %i.uh = fcmp ogt float %i.nv, %i.tw
  br i1 %i.uh, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ui = fsub float %i.qg, %.057.i357.i.i.i.i.i.i
  %i.uj = fsub float %i.tw, %i.nv
  %i.uk = fmul float %i.uj, %i.ui
  %i.ul = fsub float %i.nv, %.056.i358.i.i.i.i.i.i
  %i.um = fdiv float %i.uk, %i.ul
  %i.un = fadd float %i.qg, %i.um
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.055.i359.i.i.i.i.i.i = phi float [ %i.un, %bb.cb ], [ %i.qg, %bb.ca ] ; 3 uses
  %.0.i360.i.i.i.i.i.i = phi float [ %i.tw, %bb.cb ], [ %i.nv, %bb.ca ] ; 2 uses
  %i.uo = fcmp ugt float %.057.i357.i.i.i.i.i.i, 0.000000e+00
  %i.up = fcmp ugt float %.055.i359.i.i.i.i.i.i, 0.000000e+00
  %or.cond64.i361.i.i.i.i.i.i = select i1 %i.uo, i1 true, i1 %i.up
  br i1 %or.cond64.i361.i.i.i.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.uq = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !797
  %i.us = fsub float %.0.i360.i.i.i.i.i.i, %.056.i358.i.i.i.i.i.i
  %i.ut = load float, ptr %i.ne, align 4, !tbaa !29
  %i.uu = call float @llvm.fmuladd.f32(float %i.ur, float %i.us, float %i.ut)
  store float %i.uu, ptr %i.ne, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.uv = fcmp ult float %.057.i357.i.i.i.i.i.i, 1.000000e+00
  %i.uw = fcmp ult float %.055.i359.i.i.i.i.i.i, 1.000000e+00
  %or.cond65.i362.i.i.i.i.i.i = select i1 %i.uv, i1 true, i1 %i.uw
  br i1 %or.cond65.i362.i.i.i.i.i.i, label %bb.cf, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.cf:                                            ; preds = %bb.ce
  %i.ux = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !797
  %i.uz = fsub float %.0.i360.i.i.i.i.i.i, %.056.i358.i.i.i.i.i.i
  %i.va = fmul float %i.uz, %i.uy
  %i.vb = fadd float %.057.i357.i.i.i.i.i.i, %.055.i359.i.i.i.i.i.i
  %i.vc = fmul float %i.vb, 5.000000e-01
  %i.vd = fsub float 1.000000e+00, %i.vc
  %i.ve = load float, ptr %i.ne, align 4, !tbaa !29
  %i.vf = call float @llvm.fmuladd.f32(float %i.va, float %i.vd, float %i.ve)
  store float %i.vf, ptr %i.ne, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.ax
  %i.vg = fadd float %i.qe, %i.qg                 ; 34 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 16
  %i.vi = load float, ptr %i.vh, align 8, !tbaa !805 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24 ; 16 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 28 ; 15 uses
  %i.vl = load <2 x float>, ptr %i.vj, align 8, !tbaa !29 ; 3 uses
  %i.vm = extractelement <2 x float> %i.vl, i64 0 ; 2 uses
  %i.vn = fcmp ogt float %i.vm, %i.nu             ; 2 uses
  %i.vo = fsub <2 x float> %i.vl, %i.qb
  %i.vp = insertelement <2 x float> poison, float %i.qe, i64 0
  %i.vq = shufflevector <2 x float> %i.vp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vr = insertelement <2 x float> poison, float %i.qg, i64 0
  %i.vs = shufflevector <2 x float> %i.vr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vq, <2 x float> %i.vo, <2 x float> %i.vs) ; 2 uses
  %i.vu = extractelement <2 x float> %i.vt, i64 0
  %.0307.i.i.i.i.i.i = select i1 %i.vn, float %i.vu, float %i.qg ; 7 uses
  %.0303.i.i.i.i.i.i = select i1 %i.vn, float %i.vm, float %i.nu ; 3 uses
  %i.vv = extractelement <2 x float> %i.vl, i64 1 ; 2 uses
  %i.vw = fcmp olt float %i.vv, %i.nv             ; 2 uses
  %i.vx = extractelement <2 x float> %i.vt, i64 1
  %.0305.i.i.i.i.i.i = select i1 %i.vw, float %i.vx, float %i.vg ; 7 uses
  %.0301.i.i.i.i.i.i = select i1 %i.vw, float %i.vv, float %i.nv ; 3 uses
  %i.vy = fcmp oge float %.0307.i.i.i.i.i.i, 0.000000e+00
  %i.vz = fcmp oge float %.0305.i.i.i.i.i.i, 0.000000e+00
  %or.cond.i.i.i.i.i.i = select i1 %i.vy, i1 %i.vz, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ch, label %bb.cp

bb.ch:                                            ; preds = %bb.cg
  %i.wa = fcmp olt float %.0307.i.i.i.i.i.i, %7
  %i.wb = fcmp olt float %.0305.i.i.i.i.i.i, %7
  %or.cond343.i.i.i.i.i.i = select i1 %i.wa, i1 %i.wb, i1 false
  br i1 %or.cond343.i.i.i.i.i.i, label %bb.ci, label %bb.cp

bb.ci:                                            ; preds = %bb.ch
  %i.wc = fptosi float %.0307.i.i.i.i.i.i to i32  ; 5 uses
  %i.wd = fptosi float %.0305.i.i.i.i.i.i to i32  ; 3 uses
  %i.we = icmp eq i32 %i.wc, %i.wd
  br i1 %i.we, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.wf = fsub float %.0301.i.i.i.i.i.i, %.0303.i.i.i.i.i.i
  %i.wg = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !797
  %i.wi = fmul float %i.wf, %i.wh                 ; 2 uses
  %11 = sitofp i32 %i.wc to float
  %i.wj = fadd float %11, 1.000000e+00            ; 2 uses
  %i.wk = fsub float %i.wj, %.0307.i.i.i.i.i.i
  %i.wl = fsub float %i.wj, %.0305.i.i.i.i.i.i
  %i.wm = fadd float %i.wk, %i.wl
  %i.wn = fmul float %i.wm, 5.000000e-01
  %i.wo = fmul float %i.wn, %i.wi
  %i.wp = zext nneg i32 %i.wc to i64              ; 2 uses
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.wp ; 2 uses
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !29
  %i.ws = fadd float %i.wr, %i.wo
  store float %i.ws, ptr %i.wq, align 4, !tbaa !29
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.wp ; 2 uses
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !29
  %i.wv = fadd float %i.wi, %i.wu
  store float %i.wv, ptr %i.wt, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.ww = fcmp ogt float %.0307.i.i.i.i.i.i, %.0305.i.i.i.i.i.i
  br i1 %i.ww, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.wx = fsub float %i.nu, %.0303.i.i.i.i.i.i
  %i.wy = fadd float %i.nv, %i.wx
  %i.wz = fsub float %i.nu, %.0301.i.i.i.i.i.i
  %i.xa = fadd float %i.nv, %i.wz
  %i.xb = fneg float %i.vi
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.pre-phi479.i.i.i.i.i.i = phi i32 [ %i.wc, %bb.cl ], [ %i.wd, %bb.ck ] ; 8 uses
  %.pre-phi.i.i.i.i.i.i = phi i32 [ %i.wd, %bb.cl ], [ %i.wc, %bb.ck ] ; 4 uses
  %.0309.i.i.i.i.i.i = phi float [ %i.vg, %bb.cl ], [ %i.qg, %bb.ck ] ; 2 uses
  %.1308.i.i.i.i.i.i = phi float [ %.0305.i.i.i.i.i.i, %bb.cl ], [ %.0307.i.i.i.i.i.i, %bb.ck ]
  %.1306.i.i.i.i.i.i = phi float [ %.0307.i.i.i.i.i.i, %bb.cl ], [ %.0305.i.i.i.i.i.i, %bb.ck ]
  %.1304.i.i.i.i.i.i = phi float [ %i.xa, %bb.cl ], [ %.0303.i.i.i.i.i.i, %bb.ck ] ; 2 uses
  %.1302.i.i.i.i.i.i = phi float [ %i.wy, %bb.cl ], [ %.0301.i.i.i.i.i.i, %bb.ck ] ; 2 uses
  %.0300.i.i.i.i.i.i = phi float [ %i.xb, %bb.cl ], [ %i.vi, %bb.ck ] ; 4 uses
  %i.xc = add nuw i32 %.pre-phi.i.i.i.i.i.i, 1    ; 5 uses
  %i.xd = uitofp nneg i32 %i.xc to float          ; 2 uses
  %i.xe = fsub float %i.xd, %.0309.i.i.i.i.i.i
  %i.xf = call float @llvm.fmuladd.f32(float %.0300.i.i.i.i.i.i, float %i.xe, float %i.nu) ; 2 uses
  %i.xg = uitofp nneg i32 %.pre-phi479.i.i.i.i.i.i to float ; 3 uses
  %i.xh = fsub float %i.xg, %.0309.i.i.i.i.i.i
  %i.xi = call float @llvm.fmuladd.f32(float %.0300.i.i.i.i.i.i, float %i.xh, float %i.nu) ; 2 uses
  %i.xj = fcmp ogt float %i.xf, %i.nv
  %.0298.i.i.i.i.i.i = select i1 %i.xj, float %i.nv, float %i.xf ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !797 ; 4 uses
  %i.xm = fsub float %.0298.i.i.i.i.i.i, %.1304.i.i.i.i.i.i
  %i.xn = fmul float %i.xl, %i.xm                 ; 5 uses
  %i.xo = fsub nnan float %i.xd, %.1308.i.i.i.i.i.i
  %i.xp = fmul float %i.xo, %i.xn
  %i.xq = fmul float %i.xp, 5.000000e-01
  %i.xr = zext nneg i32 %.pre-phi.i.i.i.i.i.i to i64
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.xr ; 2 uses
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !29
  %i.xu = fadd float %i.xt, %i.xq
  store float %i.xu, ptr %i.xs, align 4, !tbaa !29
  %i.xv = fcmp ogt float %i.xi, %i.nv
  br i1 %i.xv, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %.not342.i.i.i.i.i.i = icmp eq i32 %i.xc, %.pre-phi479.i.i.i.i.i.i
  %i.xw = sub nsw i32 %.pre-phi479.i.i.i.i.i.i, %i.xc
  %i.xx = fsub float %i.nv, %.0298.i.i.i.i.i.i
  %i.xy = sitofp i32 %i.xw to float
  %i.xz = fdiv float %i.xx, %i.xy
  %.1.i.i.i.i.i.i = select i1 %.not342.i.i.i.i.i.i, float %.0300.i.i.i.i.i.i, float %i.xz
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.2.i.i.i.i.i.i = phi float [ %.1.i.i.i.i.i.i, %bb.cn ], [ %.0300.i.i.i.i.i.i, %bb.cm ]
  %.0297.i.i.i.i.i.i = phi float [ %i.nv, %bb.cn ], [ %i.xi, %bb.cm ]
  %i.ya = fmul float %i.xl, %.2.i.i.i.i.i.i       ; 4 uses
  %i.yb = icmp slt i32 %i.xc, %.pre-phi479.i.i.i.i.i.i
  br i1 %i.yb, label %.lr.ph472.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph472.i.i.i.i.i.i:                            ; preds = %bb.co
  %i.yc = fmul float %i.ya, 5.000000e-01          ; 3 uses
  %i.yd = zext i32 %i.xc to i64                   ; 3 uses
  %i.ye = add nsw i32 %.pre-phi479.i.i.i.i.i.i, -2
  %i.yf = sub nsw i32 %.pre-phi.i.i.i.i.i.i, %.pre-phi479.i.i.i.i.i.i
  %i.yg = and i32 %i.yf, 1
  %lcmp.mod.not.not = icmp eq i32 %i.yg, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph472.i.i.i.i.i.i
  %i.yh = fadd float %i.yc, %i.xn
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.yd ; 2 uses
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !29
  %i.yk = fadd float %i.yh, %i.yj
  store float %i.yk, ptr %i.yi, align 4, !tbaa !29
  %i.yl = fadd float %i.ya, %i.xn                 ; 2 uses
  %indvars.iv.next477.i.i.i.i.i.i.prol = add nuw nsw i64 %i.yd, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph472.i.i.i.i.i.i
  %indvars.iv476.i.i.i.i.i.i.unr = phi i64 [ %i.yd, %.lr.ph472.i.i.i.i.i.i ], [ %indvars.iv.next477.i.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0296471.i.i.i.i.i.i.unr = phi float [ %i.xn, %.lr.ph472.i.i.i.i.i.i ], [ %i.yl, %.prol.loopexit.unr-lcssa ]
  %.lcssa354.unr = phi float [ poison, %.lr.ph472.i.i.i.i.i.i ], [ %i.yl, %.prol.loopexit.unr-lcssa ]
  %i.ym = icmp eq i32 %i.ye, %.pre-phi.i.i.i.i.i.i
  br i1 %i.ym, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph472.i.i.i.i.i.i.new

.lr.ph472.i.i.i.i.i.i.new:                        ; preds = %.prol.loopexit, %.lr.ph472.i.i.i.i.i.i.new
  %indvars.iv476.i.i.i.i.i.i = phi i64 [ %indvars.iv.next477.i.i.i.i.i.i.1, %.lr.ph472.i.i.i.i.i.i.new ], [ %indvars.iv476.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0296471.i.i.i.i.i.i = phi float [ %i.yx, %.lr.ph472.i.i.i.i.i.i.new ], [ %.0296471.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.yn = fadd float %i.yc, %.0296471.i.i.i.i.i.i
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv476.i.i.i.i.i.i ; 2 uses
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !29
  %i.yq = fadd float %i.yn, %i.yp
  store float %i.yq, ptr %i.yo, align 4, !tbaa !29
  %i.yr = fadd float %i.ya, %.0296471.i.i.i.i.i.i ; 2 uses
  %i.ys = fadd float %i.yc, %i.yr
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv476.i.i.i.i.i.i
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 4 ; 2 uses
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !29
  %i.yw = fadd float %i.ys, %i.yv
  store float %i.yw, ptr %i.yu, align 4, !tbaa !29
  %i.yx = fadd float %i.ya, %i.yr                 ; 2 uses
  %indvars.iv.next477.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv476.i.i.i.i.i.i, 2 ; 2 uses
  %i.yy = trunc nuw i64 %indvars.iv.next477.i.i.i.i.i.i.1 to i32
  %i.yz = icmp sgt i32 %.pre-phi479.i.i.i.i.i.i, %i.yy
  br i1 %i.yz, label %.lr.ph472.i.i.i.i.i.i.new, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !769

._crit_edge.i.i.i.i.i.i:                          ; preds = %.prol.loopexit, %.lr.ph472.i.i.i.i.i.i.new, %bb.co
  %.0296.lcssa.i.i.i.i.i.i = phi float [ %i.xn, %bb.co ], [ %.lcssa354.unr, %.prol.loopexit ], [ %i.yx, %.lr.ph472.i.i.i.i.i.i.new ]
  %i.za = fsub float %.1302.i.i.i.i.i.i, %.0297.i.i.i.i.i.i
  %i.zb = fadd float %i.xg, 1.000000e+00          ; 2 uses
  %i.zc = fsub nnan float %i.zb, %i.xg
  %i.zd = fsub float %i.zb, %.1306.i.i.i.i.i.i
  %i.ze = fadd float %i.zc, %i.zd
  %i.zf = fmul float %i.ze, 5.000000e-01
  %i.zg = fmul float %i.zf, %i.za
  %i.zh = call float @llvm.fmuladd.f32(float %i.xl, float %i.zg, float %.0296.lcssa.i.i.i.i.i.i)
  %i.zi = zext nneg i32 %.pre-phi479.i.i.i.i.i.i to i64 ; 2 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.zi ; 2 uses
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !29
  %i.zl = fadd float %i.zh, %i.zk
  store float %i.zl, ptr %i.zj, align 4, !tbaa !29
  %i.zm = fsub float %.1302.i.i.i.i.i.i, %.1304.i.i.i.i.i.i
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.zi ; 2 uses
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !29
  %i.zp = call float @llvm.fmuladd.f32(float %i.xl, float %i.zm, float %i.zo)
  store float %i.zp, ptr %i.zn, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.ch, %bb.cg
  br i1 %i.nt, label %.lr.ph.i.i94.i.i.i.i, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

.lr.ph.i.i94.i.i.i.i:                             ; preds = %bb.cp
  %i.zq = fsub float %i.vg, %i.qg
  %i.zr = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20 ; 30 uses
  br label %bb.cq

bb.cq:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, %.lr.ph.i.i94.i.i.i.i
  %indvars.iv.i.i95.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i94.i.i.i.i ], [ %indvars.iv.next.i.i96.i.i.i.i, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i96.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i95.i.i.i.i, 1 ; 3 uses
  %i.zs = trunc nuw nsw i64 %indvars.iv.i.i95.i.i.i.i to i32
  %i.zt = uitofp nneg i32 %i.zs to float          ; 90 uses
  %i.zu = trunc nuw nsw i64 %indvars.iv.next.i.i96.i.i.i.i to i32
  %i.zv = uitofp nneg i32 %i.zu to float          ; 60 uses
  %i.zw = insertelement <2 x float> poison, float %i.zt, i64 0
  %i.zx = insertelement <2 x float> %i.zw, float %i.zv, i64 1
  %i.zy = fsub <2 x float> %i.zx, %i.vs           ; 7 uses
  %i.zz = fdiv <2 x float> %i.zy, %i.vq           ; 2 uses
  %i.aaa = extractelement <2 x float> %i.zz, i64 0
  %i.aab = fadd float %i.aaa, %i.nu               ; 52 uses
  %i.aac = extractelement <2 x float> %i.zz, i64 1
  %i.aad = fadd float %i.aac, %i.nu               ; 52 uses
  %i.aae = fcmp olt float %i.qg, %i.zt            ; 2 uses
  %i.aaf = fcmp ogt float %i.vg, %i.zv            ; 2 uses
  %or.cond344.i.i.i.i.i.i = select i1 %i.aae, i1 %i.aaf, i1 false
  br i1 %or.cond344.i.i.i.i.i.i, label %bb.cr, label %bb.dw

bb.cr:                                            ; preds = %bb.cq
  %i.aag = fcmp oeq float %i.aab, %i.nu
  br i1 %i.aag, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aah = load float, ptr %i.vk, align 4, !tbaa !795 ; 4 uses
  %i.aai = fcmp olt float %i.aah, %i.nu
  br i1 %i.aai, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aaj = load float, ptr %i.vj, align 8, !tbaa !808 ; 4 uses
  %i.aak = fcmp olt float %i.aab, %i.aaj
  br i1 %i.aak, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aal = fcmp ogt float %i.aaj, %i.nu
  br i1 %i.aal, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.aam = fsub float %i.aaj, %i.nu
  %i.aan = extractelement <2 x float> %i.zy, i64 0
  %i.aao = fmul float %i.aan, %i.aam
  %i.aap = fsub float %i.aab, %i.nu
  %i.aaq = fdiv float %i.aao, %i.aap
  %i.aar = fadd float %i.qg, %i.aaq
end_hunk_3
begin_hunk_4_@_ZL40ImGui_ImplStbTrueType_FontBakedLoadGlyphP11ImFontAtlasP12ImFontConfigP11ImFontBakedPvtP11ImFontGlyphPf:bb.a
  store i8 %i.bek, ptr %i.beu, align 1, !tbaa !50
  %i.bev = udiv i32 %i.ber, 3
  %i.bew = trunc i32 %i.bev to i8
  store i8 %i.bew, ptr %i.bej, align 1, !tbaa !50
  %indvars.iv.next185.i42.i = add nuw nsw i64 %indvars.iv184.i41.i, 1 ; 2 uses
  %exitcond188.not.i.i = icmp eq i64 %indvars.iv.next185.i42.i, %wide.trip.count.i29.i
  br i1 %exitcond188.not.i.i, label %.loopexit.i35.i, label %.lr.ph141.i.i, !llvm.loop !784

.lr.ph135.i.i:                                    ; preds = %.lr.ph135.i.i.preheader, %.lr.ph135.i.i
  %indvars.iv179.i38.i = phi i64 [ %indvars.iv.next180.i39.i.1, %.lr.ph135.i.i ], [ 0, %.lr.ph135.i.i.preheader ] ; 4 uses
  %.2134.i.i = phi i32 [ %i.bfu, %.lr.ph135.i.i ], [ 0, %.lr.ph135.i.i.preheader ]
  %niter377 = phi i64 [ %niter377.next.1, %.lr.ph135.i.i ], [ 0, %.lr.ph135.i.i.preheader ]
  %i.bex = mul nuw nsw i64 %indvars.iv179.i38.i, %i.bdq
  %i.bey = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.bex ; 2 uses
  %i.bez = load i8, ptr %i.bey, align 1, !tbaa !50 ; 2 uses
  %i.bfa = zext i8 %i.bez to i32
  %i.bfb = and i64 %indvars.iv179.i38.i, 6        ; 2 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bfb
  %i.bfd = load i8, ptr %i.bfc, align 2, !tbaa !50
  %i.bfe = zext i8 %i.bfd to i32
  %i.bff = sub nsw i32 %i.bfa, %i.bfe
  %i.bfg = add i32 %i.bff, %.2134.i.i             ; 2 uses
  %i.bfh = xor i64 %i.bfb, 4
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bfh
  store i8 %i.bez, ptr %i.bfi, align 2, !tbaa !50
  %i.bfj = lshr i32 %i.bfg, 2
  %i.bfk = trunc i32 %i.bfj to i8
  store i8 %i.bfk, ptr %i.bey, align 1, !tbaa !50
  %indvars.iv.next180.i39.i = or disjoint i64 %indvars.iv179.i38.i, 1 ; 2 uses
  %i.bfl = mul nuw nsw i64 %indvars.iv.next180.i39.i, %i.bdq
  %i.bfm = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.bfl ; 2 uses
  %i.bfn = load i8, ptr %i.bfm, align 1, !tbaa !50 ; 2 uses
  %i.bfo = zext i8 %i.bfn to i32
  %i.bfp = and i64 %indvars.iv.next180.i39.i, 7   ; 2 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bfp
  %i.bfr = load i8, ptr %i.bfq, align 1, !tbaa !50
  %i.bfs = zext i8 %i.bfr to i32
  %i.bft = sub nsw i32 %i.bfo, %i.bfs
  %i.bfu = add i32 %i.bft, %i.bfg                 ; 4 uses
  %i.bfv = xor i64 %i.bfp, 4
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bfv
  store i8 %i.bfn, ptr %i.bfw, align 1, !tbaa !50
  %i.bfx = lshr i32 %i.bfu, 2
  %i.bfy = trunc i32 %i.bfx to i8
  store i8 %i.bfy, ptr %i.bfm, align 1, !tbaa !50
  %indvars.iv.next180.i39.i.1 = add nuw nsw i64 %indvars.iv179.i38.i, 2 ; 2 uses
  %niter377.next.1 = add i64 %niter377, 2         ; 2 uses
  %niter377.ncmp.1 = icmp eq i64 %niter377.next.1, %unroll_iter376
  br i1 %niter377.ncmp.1, label %.loopexit.i35.i.loopexit338.unr-lcssa, label %.lr.ph135.i.i, !llvm.loop !785

.lr.ph.i31.i:                                     ; preds = %.preheader126.i.i, %.lr.ph.i31.i
  %indvars.iv.i32.i = phi i64 [ %indvars.iv.next.i33.i, %.lr.ph.i31.i ], [ 0, %.preheader126.i.i ] ; 4 uses
  %.3130.i.i = phi i32 [ %i.bgi, %.lr.ph.i31.i ], [ 0, %.preheader126.i.i ]
  %i.bfz = mul nuw nsw i64 %indvars.iv.i32.i, %i.bdq
  %i.bga = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.bfz ; 2 uses
  %i.bgb = load i8, ptr %i.bga, align 1, !tbaa !50 ; 2 uses
  %i.bgc = zext i8 %i.bgb to i32
  %i.bgd = and i64 %indvars.iv.i32.i, 7
  %i.bge = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bgd
  %i.bgf = load i8, ptr %i.bge, align 1, !tbaa !50
  %i.bgg = zext i8 %i.bgf to i32
  %i.bgh = sub nsw i32 %i.bgc, %i.bgg
  %i.bgi = add i32 %i.bgh, %.3130.i.i             ; 3 uses
  %i.bgj = add nuw nsw i64 %indvars.iv.i32.i, 5
  %i.bgk = and i64 %i.bgj, 7
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bgk
  store i8 %i.bgb, ptr %i.bgl, align 1, !tbaa !50
  %i.bgm = udiv i32 %i.bgi, 5
  %i.bgn = trunc i32 %i.bgm to i8
  store i8 %i.bgn, ptr %i.bga, align 1, !tbaa !50
  %indvars.iv.next.i33.i = add nuw nsw i64 %indvars.iv.i32.i, 1 ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %indvars.iv.next.i33.i, %wide.trip.count.i29.i
  br i1 %exitcond.not.i34.i, label %.loopexit.i35.i, label %.lr.ph.i31.i, !llvm.loop !786

.lr.ph153.i.i:                                    ; preds = %.preheader.i43.i, %.lr.ph153.i.i
  %indvars.iv194.i.i = phi i64 [ %indvars.iv.next195.i.i, %.lr.ph153.i.i ], [ 0, %.preheader.i43.i ] ; 4 uses
  %.4152.i.i = phi i32 [ %i.bgx, %.lr.ph153.i.i ], [ 0, %.preheader.i43.i ]
  %i.bgo = mul nuw nsw i64 %indvars.iv194.i.i, %i.bdq
  %i.bgp = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.bgo ; 2 uses
  %i.bgq = load i8, ptr %i.bgp, align 1, !tbaa !50 ; 2 uses
  %i.bgr = zext i8 %i.bgq to i32
  %i.bgs = and i64 %indvars.iv194.i.i, 7
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bgs
  %i.bgu = load i8, ptr %i.bgt, align 1, !tbaa !50
  %i.bgv = zext i8 %i.bgu to i32
  %i.bgw = sub nsw i32 %i.bgr, %i.bgv
  %i.bgx = add i32 %i.bgw, %.4152.i.i             ; 3 uses
  %i.bgy = trunc i64 %indvars.iv194.i.i to i32
  %i.bgz = add i32 %i.bgy, %spec.select.i
  %i.bha = and i32 %i.bgz, 7
  %i.bhb = zext nneg i32 %i.bha to i64
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bhb
  store i8 %i.bgq, ptr %i.bhc, align 1, !tbaa !50
  %i.bhd = udiv i32 %i.bgx, %spec.select.i
  %i.bhe = trunc i32 %i.bhd to i8
  store i8 %i.bhe, ptr %i.bgp, align 1, !tbaa !50
  %indvars.iv.next195.i.i = add nuw nsw i64 %indvars.iv194.i.i, 1 ; 2 uses
  %exitcond198.not.i.i = icmp eq i64 %indvars.iv.next195.i.i, %wide.trip.count.i29.i
  br i1 %exitcond198.not.i.i, label %.loopexit.i35.i, label %.lr.ph153.i.i, !llvm.loop !787

.loopexit.i35.i.loopexit338.unr-lcssa:            ; preds = %.lr.ph135.i.i
  br i1 %lcmp.mod373.not, label %.loopexit.i35.i, label %.lr.ph135.i.i.epil.preheader

.lr.ph135.i.i.epil.preheader:                     ; preds = %.loopexit.i35.i.loopexit338.unr-lcssa, %.lr.ph135.i.i.preheader
  %indvars.iv179.i38.i.epil.init = phi i64 [ 0, %.lr.ph135.i.i.preheader ], [ %indvars.iv.next180.i39.i.1, %.loopexit.i35.i.loopexit338.unr-lcssa ] ; 2 uses
  %.2134.i.i.epil.init = phi i32 [ 0, %.lr.ph135.i.i.preheader ], [ %i.bfu, %.loopexit.i35.i.loopexit338.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod375)
  %i.bhf = mul nuw nsw i64 %indvars.iv179.i38.i.epil.init, %i.bdq
  %i.bhg = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.bhf ; 2 uses
  %i.bhh = load i8, ptr %i.bhg, align 1, !tbaa !50 ; 2 uses
  %i.bhi = zext i8 %i.bhh to i32
  %i.bhj = and i64 %indvars.iv179.i38.i.epil.init, 7 ; 2 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bhj
  %i.bhl = load i8, ptr %i.bhk, align 1, !tbaa !50
  %i.bhm = zext i8 %i.bhl to i32
  %i.bhn = sub nsw i32 %i.bhi, %i.bhm
  %i.bho = add i32 %i.bhn, %.2134.i.i.epil.init   ; 2 uses
  %i.bhp = xor i64 %i.bhj, 4
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bhp
  store i8 %i.bhh, ptr %i.bhq, align 1, !tbaa !50
  %i.bhr = lshr i32 %i.bho, 2
  %i.bhs = trunc i32 %i.bhr to i8
  store i8 %i.bhs, ptr %i.bhg, align 1, !tbaa !50
  br label %.loopexit.i35.i

.loopexit.i35.i:                                  ; preds = %.lr.ph.i31.i, %.lr.ph135.i.i.epil.preheader, %.loopexit.i35.i.loopexit338.unr-lcssa, %.lr.ph141.i.i, %.lr.ph147.i.i, %.lr.ph153.i.i, %.preheader.i43.i, %.preheader120.i.i, %.preheader122.i.i, %.preheader124.i.i, %.preheader126.i.i
  %.5108.i.i = phi i32 [ %i.cu, %.lr.ph141.i.i ], [ %i.cu, %.lr.ph135.i.i.epil.preheader ], [ %i.cu, %.lr.ph153.i.i ], [ %i.cu, %.lr.ph147.i.i ], [ 0, %.preheader.i43.i ], [ 0, %.preheader120.i.i ], [ 0, %.preheader122.i.i ], [ 0, %.preheader124.i.i ], [ 0, %.preheader126.i.i ], [ %i.cu, %.loopexit.i35.i.loopexit338.unr-lcssa ], [ %i.cu, %.lr.ph.i31.i ] ; 2 uses
  %.5.i36.i = phi i32 [ %i.ber, %.lr.ph141.i.i ], [ %i.bho, %.lr.ph135.i.i.epil.preheader ], [ %i.bgx, %.lr.ph153.i.i ], [ %i.bec, %.lr.ph147.i.i ], [ 0, %.preheader.i43.i ], [ 0, %.preheader120.i.i ], [ 0, %.preheader122.i.i ], [ 0, %.preheader124.i.i ], [ 0, %.preheader126.i.i ], [ %i.bfu, %.loopexit.i35.i.loopexit338.unr-lcssa ], [ %i.bgi, %.lr.ph.i31.i ] ; 2 uses
  %i.bht = icmp slt i32 %.5108.i.i, %i.cw
  br i1 %i.bht, label %.lr.ph158.preheader.i.i, label %._crit_edge.i37.i

.lr.ph158.preheader.i.i:                          ; preds = %.loopexit.i35.i
  %i.bhu = sext i32 %.5108.i.i to i64             ; 6 uses
  %i.bhv = sub nsw i64 %wide.trip.count202.i.i, %i.bhu
  %xtraiter378 = and i64 %i.bhv, 1
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod379.not, label %.lr.ph158.i.i.prol.loopexit, label %.lr.ph158.i.i.prol

.lr.ph158.i.i.prol:                               ; preds = %.lr.ph158.preheader.i.i
  %i.bhw = and i64 %i.bhu, 7
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bhw
  %i.bhy = load i8, ptr %i.bhx, align 1, !tbaa !50
  %i.bhz = zext i8 %i.bhy to i32
  %i.bia = sub i32 %.5.i36.i, %i.bhz              ; 2 uses
  %i.bib = udiv i32 %i.bia, %spec.select.i
  %i.bic = trunc i32 %i.bib to i8
  %i.bid = mul nsw i64 %i.bhu, %i.bdq
  %i.bie = getelementptr inbounds i8, ptr %.0111159.i.i, i64 %i.bid
  store i8 %i.bic, ptr %i.bie, align 1, !tbaa !50
  %indvars.iv.next200.i.i.prol = add nuw nsw i64 %i.bhu, 1
  br label %.lr.ph158.i.i.prol.loopexit

.lr.ph158.i.i.prol.loopexit:                      ; preds = %.lr.ph158.i.i.prol, %.lr.ph158.preheader.i.i
  %indvars.iv199.i.i.unr = phi i64 [ %i.bhu, %.lr.ph158.preheader.i.i ], [ %indvars.iv.next200.i.i.prol, %.lr.ph158.i.i.prol ]
  %.6157.i.i.unr = phi i32 [ %.5.i36.i, %.lr.ph158.preheader.i.i ], [ %i.bia, %.lr.ph158.i.i.prol ]
  %i.bif = icmp eq i64 %i.bds, %i.bhu
  br i1 %i.bif, label %._crit_edge.i37.i, label %.lr.ph158.i.i

.lr.ph158.i.i:                                    ; preds = %.lr.ph158.i.i.prol.loopexit, %.lr.ph158.i.i
  %indvars.iv199.i.i = phi i64 [ %indvars.iv.next200.i.i.1, %.lr.ph158.i.i ], [ %indvars.iv199.i.i.unr, %.lr.ph158.i.i.prol.loopexit ] ; 4 uses
  %.6157.i.i = phi i32 [ %i.bit, %.lr.ph158.i.i ], [ %.6157.i.i.unr, %.lr.ph158.i.i.prol.loopexit ]
  %i.big = and i64 %indvars.iv199.i.i, 7
  %i.bih = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.big
  %i.bii = load i8, ptr %i.bih, align 1, !tbaa !50
  %i.bij = zext i8 %i.bii to i32
  %i.bik = sub i32 %.6157.i.i, %i.bij             ; 2 uses
  %i.bil = udiv i32 %i.bik, %spec.select.i
  %i.bim = trunc i32 %i.bil to i8
  %i.bin = mul nsw i64 %indvars.iv199.i.i, %i.bdq
  %i.bio = getelementptr inbounds i8, ptr %.0111159.i.i, i64 %i.bin
  store i8 %i.bim, ptr %i.bio, align 1, !tbaa !50
  %indvars.iv.next200.i.i = add nuw nsw i64 %indvars.iv199.i.i, 1 ; 2 uses
  %i.bip = and i64 %indvars.iv.next200.i.i, 7
  %i.biq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bip
  %i.bir = load i8, ptr %i.biq, align 1, !tbaa !50
  %i.bis = zext i8 %i.bir to i32
  %i.bit = sub i32 %i.bik, %i.bis                 ; 2 uses
  %i.biu = udiv i32 %i.bit, %spec.select.i
  %i.biv = trunc i32 %i.biu to i8
  %i.biw = mul nsw i64 %indvars.iv.next200.i.i, %i.bdq
  %i.bix = getelementptr inbounds i8, ptr %.0111159.i.i, i64 %i.biw
  store i8 %i.biv, ptr %i.bix, align 1, !tbaa !50
  %indvars.iv.next200.i.i.1 = add nuw nsw i64 %indvars.iv199.i.i, 2 ; 2 uses
  %exitcond203.not.i.i.1 = icmp eq i64 %indvars.iv.next200.i.i.1, %wide.trip.count202.i.i
  br i1 %exitcond203.not.i.i.1, label %._crit_edge.i37.i, label %.lr.ph158.i.i, !llvm.loop !788

._crit_edge.i37.i:                                ; preds = %.lr.ph158.i.i.prol.loopexit, %.lr.ph158.i.i, %.loopexit.i35.i
  %i.biy = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 1
  %i.biz = add nuw nsw i32 %.0110161.i.i, 1       ; 2 uses
  %exitcond204.not.i.i = icmp eq i32 %i.biz, %i.ct
  br i1 %exitcond204.not.i.i, label %_ZL18stbtt__v_prefilterPhiiij.exit.i, label %bb.ja, !llvm.loop !789

_ZL18stbtt__v_prefilterPhiiij.exit.i:             ; preds = %._crit_edge.i37.i, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %_ZL38stbtt_MakeGlyphBitmapSubpixelPrefilterPK14stbtt_fontinfoPhiiiffffiiPfS3_i.exit

_ZL38stbtt_MakeGlyphBitmapSubpixelPrefilterPK14stbtt_fontinfoPhiiiffffiiPfS3_i.exit: ; preds = %_ZL18stbtt__v_prefilterPhiiij.exit.i, %bb.iy
  %i.bja = insertelement <2 x i32> poison, i32 %i.al, i64 0
  %i.bjb = insertelement <2 x i32> %i.bja, i32 %spec.select.i, i64 1
  %i.bjc = sub nsw <2 x i32> splat (i32 1), %i.bjb
  %12 = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bjd = insertelement <2 x float> %12, float %i.aw, i64 1 ; 2 uses
  %13 = fmul nnan <2 x float> %i.bjd, splat (float 2.000000e+00)
  %14 = sitofp <2 x i32> %i.bjc to <2 x float>
  %i.bje = fdiv <2 x float> %14, %13              ; 2 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bjg = load ptr, ptr %i.bjf, align 8, !tbaa !385
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bjg, i64 40
  %i.bji = load ptr, ptr %i.bjh, align 8, !tbaa !360
  %i.bjj = load ptr, ptr %i.bji, align 8, !tbaa !382
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 60
  %i.bjl = load float, ptr %i.bjk, align 4, !tbaa !415 ; 2 uses
  %i.bjm = fcmp une float %i.bjl, 0.000000e+00
  br i1 %i.bjm, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %_ZL38stbtt_MakeGlyphBitmapSubpixelPrefilterPK14stbtt_fontinfoPhiiiffffiiPfS3_i.exit
  %i.bjn = load float, ptr %i.aq, align 4, !tbaa !257
  %i.bjo = fdiv float %i.bjn, %i.bjl
  br label %bb.jc

bb.jc:                                            ; preds = %_ZL38stbtt_MakeGlyphBitmapSubpixelPrefilterPK14stbtt_fontinfoPhiiiffffiiPfS3_i.exit, %bb.jb
  %i.bjp = phi float [ %i.bjo, %bb.jb ], [ 1.000000e+00, %_ZL38stbtt_MakeGlyphBitmapSubpixelPrefilterPK14stbtt_fontinfoPhiiiffffiiPfS3_i.exit ]
  %i.bjq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bjr = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bjs = load float, ptr %i.bjr, align 4, !tbaa !512
  %i.bjt = fadd float %i.bjs, 5.000000e-01
  %i.bju = fptosi float %i.bjt to i32
  %i.bjv = sitofp i32 %i.bju to float
  %i.bjw = extractelement <2 x float> %i.bje, i64 1
  %i.bjx = fadd float %i.bjw, %i.bjv
  %i.bjy = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bjz = shufflevector <2 x float> %i.bjy, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bka = shufflevector <2 x float> %i.bjd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bkb = fmul <4 x float> %i.bjz, %i.bka
  %i.bkc = load i32, ptr %i.i, align 4, !tbaa !259 ; 2 uses
  %i.bkd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bke = load i32, ptr %i.j, align 4, !tbaa !259 ; 2 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.bkg = load <2 x i16>, ptr %i.bkf, align 2, !tbaa !243
  %i.bkh = zext <2 x i16> %i.bkg to <2 x i32>
  %i.bki = insertelement <2 x i32> poison, i32 %i.bkc, i64 0
  %i.bkj = insertelement <2 x i32> %i.bki, i32 %i.bke, i64 1
  %i.bkk = add nsw <2 x i32> %i.bkj, %i.bkh
  %i.bkl = load <2 x float>, ptr %i.bjq, align 8, !tbaa !29
  %i.bkm = insertelement <2 x float> poison, float %i.bjp, i64 0
  %i.bkn = shufflevector <2 x float> %i.bkm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bko = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bkl, <2 x float> %i.bkn, <2 x float> splat (float 5.000000e-01)) ; 3 uses
  %i.bkp = fcmp ult <2 x float> %i.bko, zeroinitializer
  %i.bkq = fptosi <2 x float> %i.bko to <2 x i32> ; 2 uses
  %i.bkr = sitofp <2 x i32> %i.bkq to <2 x float>
  %i.bks = fcmp une <2 x float> %i.bko, %i.bkr
  %i.bkt = and <2 x i1> %i.bkp, %i.bks
  %i.bku = sext <2 x i1> %i.bkt to <2 x i32>
  %i.bkv = add nsw <2 x i32> %i.bku, %i.bkq
  %i.bkw = sitofp <2 x i32> %i.bkv to <2 x float>
  %i.bkx = insertelement <2 x float> %i.bje, float %i.bjx, i64 1
  %i.bky = fadd <2 x float> %i.bkx, %i.bkw
  %i.bkz = shufflevector <2 x float> %i.bky, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bla = fdiv <4 x float> splat (float 1.000000e+00), %i.bkb
  %i.blb = insertelement <4 x i32> poison, i32 %i.bkc, i64 0
  %i.blc = insertelement <4 x i32> %i.blb, i32 %i.bke, i64 1
  %i.bld = shufflevector <2 x i32> %i.bkk, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ble = shufflevector <4 x i32> %i.blc, <4 x i32> %i.bld, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.blf = sitofp <4 x i32> %i.ble to <4 x float>
  %i.blg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.blf, <4 x float> %i.bla, <4 x float> %i.bkz)
  store <4 x float> %i.blg, ptr %i.bkd, align 4, !tbaa !29
  %i.blh = load i32, ptr %5, align 4
  %i.bli = or i32 %i.blh, 2
  store i32 %i.bli, ptr %5, align 4
  %i.blj = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %i.cx, ptr %i.blj, align 4, !tbaa !465
  call void @_Z34ImFontAtlasBakedSetFontGlyphBitmapP11ImFontAtlasP11ImFontBakedP12ImFontConfigP11ImFontGlyphP13ImTextureRectPKh15ImTextureFormati(ptr noundef %0, ptr nonnull poison, ptr noundef %1, ptr nonnull poison, ptr noundef nonnull %i.dl, ptr noundef %i.ed, i32 noundef 1, i32 noundef %i.ct)
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.jc, %bb.h, %bb.f
  %.2 = phi i1 [ true, %bb.f ], [ false, %bb.h ], [ true, %bb.jc ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #38
  br label %bb.jd

bb.jd:                                            ; preds = %bb.a, %.critedge
  %.3 = phi i1 [ %.2, %.critedge ], [ false, %bb.a ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas19GetGlyphRangesGreekEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #23 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas19GetGlyphRangesGreekEvE6ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas20GetGlyphRangesKoreanEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #23 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas20GetGlyphRangesKoreanEvE6ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas25GetGlyphRangesChineseFullEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #23 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas25GetGlyphRangesChineseFullEvE6ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load i16, ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11full_ranges, align 16, !tbaa !243
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11full_ranges, ptr noundef nonnull align 16 dereferenceable(24) @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11base_ranges, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.4, %bb.c ] ; 6 uses
  %.01215.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11full_ranges, i64 24), %bb.b ], [ %i.ad, %bb.c ] ; 11 uses
  %.01314.i = phi i16 [ 19968, %bb.b ], [ %i.ab, %bb.c ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.c = load i16, ptr %i.b, align 2, !tbaa !243
  %i.d = add i16 %i.c, %.01314.i                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01215.i, i64 2
  store i16 %i.d, ptr %i.e, align 2, !tbaa !243
  store i16 %i.d, ptr %.01215.i, align 2, !tbaa !243
  %i.f = getelementptr inbounds nuw i8, ptr %.01215.i, i64 4
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !243
  %i.j = add i16 %i.i, %i.d                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01215.i, i64 6
  store i16 %i.j, ptr %i.k, align 2, !tbaa !243
  store i16 %i.j, ptr %i.f, align 2, !tbaa !243
  %i.l = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8
  %i.m = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i16, ptr %i.n, align 2, !tbaa !243
  %i.p = add i16 %i.o, %i.j                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01215.i, i64 10
  store i16 %i.p, ptr %i.q, align 2, !tbaa !243
  store i16 %i.p, ptr %i.l, align 2, !tbaa !243
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i, i64 12
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.u = load i16, ptr %i.t, align 2, !tbaa !243
  %i.v = add i16 %i.u, %i.p                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01215.i, i64 14
  store i16 %i.v, ptr %i.w, align 2, !tbaa !243
  store i16 %i.v, ptr %i.r, align 2, !tbaa !243
  %i.x = getelementptr inbounds nuw i8, ptr %.01215.i, i64 16
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !243
  %i.ab = add i16 %i.aa, %i.v                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01215.i, i64 18
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !243
  store i16 %i.ab, ptr %i.x, align 2, !tbaa !243
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01215.i, i64 20 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 2500
  br i1 %exitcond.not.i.4, label %_ZL35UnpackAccumulativeOffsetsIntoRangesiPKsiPt.exit, label %bb.c, !llvm.loop !809

_ZL35UnpackAccumulativeOffsetsIntoRangesiPKsiPt.exit: ; preds = %bb.c
  store i16 0, ptr %i.ad, align 2, !tbaa !243
  br label %bb.d

bb.d:                                             ; preds = %_ZL35UnpackAccumulativeOffsetsIntoRangesiPKsiPt.exit, %bb.a
  ret ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11full_ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas22GetGlyphRangesJapaneseEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load i16, ptr @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges, align 16, !tbaa !243
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges, ptr noundef nonnull align 16 dereferenceable(20) @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11base_ranges, i64 20, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.3, %bb.d ] ; 6 uses
  %.01215.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges, i64 20), %bb.b ], [ %i.x, %bb.d ] ; 9 uses
  %.01314.i = phi i16 [ 19968, %bb.b ], [ %i.v, %bb.d ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.c = load i16, ptr %i.b, align 8, !tbaa !243
  %i.d = add i16 %i.c, %.01314.i                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01215.i, i64 2
  store i16 %i.d, ptr %i.e, align 2, !tbaa !243
  store i16 %i.d, ptr %.01215.i, align 2, !tbaa !243
  %i.f = getelementptr inbounds nuw i8, ptr %.01215.i, i64 4
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !243
  %i.j = add i16 %i.i, %i.d                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01215.i, i64 6
  store i16 %i.j, ptr %i.k, align 2, !tbaa !243
  store i16 %i.j, ptr %i.f, align 2, !tbaa !243
  %i.l = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8
  %i.m = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i16, ptr %i.n, align 4, !tbaa !243
  %i.p = add i16 %i.o, %i.j                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01215.i, i64 10
  store i16 %i.p, ptr %i.q, align 2, !tbaa !243
  store i16 %i.p, ptr %i.l, align 2, !tbaa !243
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i, i64 12 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.i, 2996
  br i1 %exitcond.not.i.2, label %_ZL35UnpackAccumulativeOffsetsIntoRangesiPKsiPt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.u = load i16, ptr %i.t, align 2, !tbaa !243
  %i.v = add i16 %i.u, %i.p                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01215.i, i64 14
  store i16 %i.v, ptr %i.w, align 2, !tbaa !243
  store i16 %i.v, ptr %i.r, align 2, !tbaa !243
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %i.x = getelementptr inbounds nuw i8, ptr %.01215.i, i64 16
  br label %bb.c

_ZL35UnpackAccumulativeOffsetsIntoRangesiPKsiPt.exit: ; preds = %bb.c
  store i16 0, ptr %i.r, align 2, !tbaa !243
  br label %bb.e

bb.e:                                             ; preds = %_ZL35UnpackAccumulativeOffsetsIntoRangesiPKsiPt.exit, %bb.a
  ret ptr @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
end_hunk_4
