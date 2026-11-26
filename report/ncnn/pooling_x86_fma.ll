Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/pooling_x86_fma?download=true
inline.NumInlined: 55
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4ncnnL26pooling3x3s2_max_pack4_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined:bb.a
  %i.bk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bj, <4 x float> nofpclass(nan inf) %i.ay)
  %i.bl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bk, <4 x float> nofpclass(nan inf) %i.az)
  %i.bm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bl, <4 x float> nofpclass(nan inf) %i.bb)
  %i.bn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bd, <4 x float> nofpclass(nan inf) %i.be)
  %i.bo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bn, <4 x float> nofpclass(nan inf) %i.bg)
  %i.bp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bo, <4 x float> nofpclass(nan inf) %i.bi)
  %i.bq = getelementptr inbounds nuw i8, ptr %.1113158, i64 48
  %i.br = load <4 x float>, ptr %i.bq, align 1, !tbaa !63
  %i.bs = getelementptr inbounds nuw i8, ptr %.1113158, i64 64 ; 3 uses
  %i.bt = load <4 x float>, ptr %i.bs, align 1, !tbaa !63
  %i.bu = getelementptr inbounds nuw i8, ptr %.1116157, i64 48
  %i.bv = load <4 x float>, ptr %i.bu, align 1, !tbaa !63
  %i.bw = getelementptr inbounds nuw i8, ptr %.1116157, i64 64 ; 3 uses
  %i.bx = load <4 x float>, ptr %i.bw, align 1, !tbaa !63
  %i.by = getelementptr inbounds nuw i8, ptr %.1119156, i64 48
  %i.bz = load <4 x float>, ptr %i.by, align 1, !tbaa !63
  %i.ca = getelementptr inbounds nuw i8, ptr %.1119156, i64 64 ; 3 uses
  %i.cb = load <4 x float>, ptr %i.ca, align 1, !tbaa !63
  %i.cc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bm, <4 x float> nofpclass(nan inf) %i.bp)
  store <4 x float> %i.cc, ptr %.1159, align 1, !tbaa !63
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.br, <4 x float> nofpclass(nan inf) %i.bt)
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cd, <4 x float> nofpclass(nan inf) %i.ay)
  %i.cf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ce, <4 x float> nofpclass(nan inf) %i.bv)
  %i.cg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cf, <4 x float> nofpclass(nan inf) %i.bx)
  %i.ch = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bd, <4 x float> nofpclass(nan inf) %i.bz)
  %i.ci = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cg, <4 x float> nofpclass(nan inf) %i.cb)
  %i.cj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ci, <4 x float> nofpclass(nan inf) %i.bi)
  %i.ck = getelementptr inbounds nuw i8, ptr %.1159, i64 16
  %i.cl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cj, <4 x float> nofpclass(nan inf) %i.ch)
  store <4 x float> %i.cl, ptr %i.ck, align 1, !tbaa !63
  %i.cm = getelementptr inbounds nuw i8, ptr %.1159, i64 32 ; 2 uses
  %i.cn = add nuw nsw i32 %.0122155, 2            ; 3 uses
  %i.co = or disjoint i32 %i.cn, 1
  %i.cp = load i32, ptr %6, align 4, !tbaa !35    ; 2 uses
  %i.cq = icmp slt i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph, label %.preheader, !llvm.loop !203

.lr.ph169:                                        ; preds = %.preheader, %.lr.ph169
  %.2168 = phi ptr [ %i.do, %.lr.ph169 ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.2114167 = phi ptr [ %i.cu, %.lr.ph169 ], [ %.1113.lcssa, %.preheader ] ; 3 uses
  %.2117166 = phi ptr [ %i.cz, %.lr.ph169 ], [ %.1116.lcssa, %.preheader ] ; 3 uses
  %.2120165 = phi ptr [ %i.de, %.lr.ph169 ], [ %.1119.lcssa, %.preheader ] ; 3 uses
  %.1123164 = phi i32 [ %i.dp, %.lr.ph169 ], [ %.0122.lcssa, %.preheader ]
  %i.cr = load <4 x float>, ptr %.2114167, align 1, !tbaa !63
  %i.cs = getelementptr inbounds nuw i8, ptr %.2114167, i64 16
  %i.ct = load <4 x float>, ptr %i.cs, align 1, !tbaa !63
  %i.cu = getelementptr inbounds nuw i8, ptr %.2114167, i64 32 ; 3 uses
  %i.cv = load <4 x float>, ptr %i.cu, align 1, !tbaa !63
  %i.cw = load <4 x float>, ptr %.2117166, align 1, !tbaa !63
  %i.cx = getelementptr inbounds nuw i8, ptr %.2117166, i64 16
  %i.cy = load <4 x float>, ptr %i.cx, align 1, !tbaa !63
  %i.cz = getelementptr inbounds nuw i8, ptr %.2117166, i64 32 ; 3 uses
  %i.da = load <4 x float>, ptr %i.cz, align 1, !tbaa !63
  %i.db = load <4 x float>, ptr %.2120165, align 1, !tbaa !63
  %i.dc = getelementptr inbounds nuw i8, ptr %.2120165, i64 16
  %i.dd = load <4 x float>, ptr %i.dc, align 1, !tbaa !63
  %i.de = getelementptr inbounds nuw i8, ptr %.2120165, i64 32 ; 3 uses
  %i.df = load <4 x float>, ptr %i.de, align 1, !tbaa !63
  %i.dg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cr, <4 x float> nofpclass(nan inf) %i.ct)
  %i.dh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dg, <4 x float> nofpclass(nan inf) %i.cv)
  %i.di = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.cw)
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.di, <4 x float> nofpclass(nan inf) %i.cy)
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.da, <4 x float> nofpclass(nan inf) %i.db)
  %i.dl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dk, <4 x float> nofpclass(nan inf) %i.dd)
  %i.dm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dl, <4 x float> nofpclass(nan inf) %i.df)
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> nofpclass(nan inf) %i.dm)
  store <4 x float> %i.dn, ptr %.2168, align 1, !tbaa !63
  %i.do = getelementptr inbounds nuw i8, ptr %.2168, i64 16 ; 2 uses
  %i.dp = add nuw nsw i32 %.1123164, 1            ; 2 uses
  %i.dq = load i32, ptr %6, align 4, !tbaa !35    ; 2 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph169, label %._crit_edge, !llvm.loop !204

._crit_edge:                                      ; preds = %.lr.ph169, %.preheader
  %i.ds = phi i32 [ %i.as, %.preheader ], [ %i.dq, %.lr.ph169 ]
  %.2120.lcssa = phi ptr [ %.1119.lcssa, %.preheader ], [ %i.de, %.lr.ph169 ]
  %.2117.lcssa = phi ptr [ %.1116.lcssa, %.preheader ], [ %i.cz, %.lr.ph169 ]
  %.2114.lcssa = phi ptr [ %.1113.lcssa, %.preheader ], [ %i.cu, %.lr.ph169 ]
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.do, %.lr.ph169 ]
  %i.dt = load i32, ptr %7, align 4, !tbaa !35
  %i.du = sext i32 %i.dt to i64                   ; 3 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %.2114.lcssa, i64 %i.du
  %i.dw = getelementptr inbounds [4 x i8], ptr %.2117.lcssa, i64 %i.du
  %i.dx = getelementptr inbounds [4 x i8], ptr %.2120.lcssa, i64 %i.du
  %i.dy = add nuw nsw i32 %.0121174, 1            ; 2 uses
  %i.dz = load i32, ptr %5, align 4, !tbaa !35    ; 2 uses
  %i.ea = icmp slt i32 %i.dy, %i.dz
  br i1 %i.ea, label %.preheader154, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !205

._crit_edge181:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge181, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20pooling2x2s2_max_avxERKNS_3MatERS0_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !35
  %i.h = load i32, ptr %0, align 4, !tbaa !35     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !35
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !35
  %i.k = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
  %.not94 = icmp sgt i32 %i.k, %i.j
  br i1 %.not94, label %._crit_edge96.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !40, !noalias !219
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !219
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33, !noalias !219
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !40, !noalias !220
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41, !noalias !220
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33, !noalias !220
  %factor.op.mul97 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !35
  %i.w = sext i32 %i.v to i64
  %i.x = load i32, ptr %6, align 4, !tbaa !35     ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.noexc.lr.ph.split, label %._crit_edge96.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.z = load i32, ptr %7, align 4, !tbaa !35     ; 7 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = load i32, ptr %8, align 4, !tbaa !35
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  br i1 %i.aa, label %.noexc.preheader, label %._crit_edge96.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split
  %i.ad = sext i32 %i.k to i64
  %i.ae = add nsw i32 %i.j, 1
  %i.af = add nsw i32 %i.z, -1
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 8                ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ag, 2
  %i.ak = zext nneg i32 %i.z to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.z, 4
  %n.vec = and i64 %i.ak, 2147483644              ; 5 uses
  %i.al = trunc nuw nsw i64 %n.vec to i32
  %i.am = sub nsw i32 %i.z, %i.al
  %i.an = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.ao = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.ak
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge93
  %indvars.iv = phi i64 [ %i.ad, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge93 ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 2 uses
  %.reass98 = mul i64 %factor.op.mul97, %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass98
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.w
  br label %.lr.ph

._crit_edge93:                                    ; preds = %._crit_edge
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond104.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond104.not, label %._crit_edge96.split, label %.noexc

.lr.ph:                                           ; preds = %.noexc, %._crit_edge
  %.03791 = phi i32 [ 0, %.noexc ], [ %i.ca, %._crit_edge ]
  %.03890 = phi ptr [ %i.ar, %.noexc ], [ %i.bz, %._crit_edge ] ; 6 uses
  %.03989 = phi ptr [ %i.ap, %.noexc ], [ %i.by, %._crit_edge ] ; 6 uses
  %.04387 = phi ptr [ %i.aq, %.noexc ], [ %.lcssa, %._crit_edge ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.as = getelementptr i8, ptr %.04387, i64 %i.aj
  %i.at = getelementptr i8, ptr %i.as, i64 4      ; 2 uses
  %i.au = getelementptr i8, ptr %.03890, i64 %i.ai
  %i.av = getelementptr i8, ptr %.03989, i64 %i.ai
  %bound0 = icmp ult ptr %.04387, %i.au
  %bound1 = icmp ult ptr %.03890, %i.at
  %found.conflict = and i1 %bound0, %bound1
  %bound0119 = icmp ult ptr %.04387, %i.av
  %bound1120 = icmp ult ptr %.03989, %i.at
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx = or i1 %found.conflict, %found.conflict121
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aw = getelementptr i8, ptr %.03890, i64 %i.an ; 2 uses
  %i.ax = getelementptr i8, ptr %.03989, i64 %i.an ; 2 uses
  %i.ay = getelementptr i8, ptr %.04387, i64 %i.ao ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03890, i64 %i.az
  %next.gep122 = getelementptr i8, ptr %.03989, i64 %i.az
  %i.ba = shl i64 %index, 2
  %next.gep123 = getelementptr i8, ptr %.04387, i64 %i.ba
  %wide.vec = load <8 x float>, ptr %next.gep122, align 4, !tbaa !222, !alias.scope !223 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec124 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.bb = fcmp fast olt <4 x float> %strided.vec, %strided.vec124
  %i.bc = select <4 x i1> %i.bb, <4 x float> %strided.vec124, <4 x float> %strided.vec ; 2 uses
  %wide.vec125 = load <8 x float>, ptr %next.gep, align 4, !tbaa !222, !alias.scope !224 ; 2 uses
  %strided.vec126 = shufflevector <8 x float> %wide.vec125, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec127 = shufflevector <8 x float> %wide.vec125, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.bd = fcmp fast olt <4 x float> %strided.vec126, %strided.vec127
  %i.be = select <4 x i1> %i.bd, <4 x float> %strided.vec127, <4 x float> %strided.vec126 ; 2 uses
  %i.bf = fcmp fast olt <4 x float> %i.bc, %i.be
  %i.bg = select <4 x i1> %i.bf, <4 x float> %i.be, <4 x float> %i.bc
  store <4 x float> %i.bg, ptr %next.gep123, align 4, !tbaa !222, !alias.scope !225, !noalias !226
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.083.ph = phi i32 [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph ], [ %i.am, %middle.block ]
  %.182.ph = phi ptr [ %.03890, %vector.memcheck ], [ %.03890, %.lr.ph ], [ %i.aw, %middle.block ]
  %.14081.ph = phi ptr [ %.03989, %vector.memcheck ], [ %.03989, %.lr.ph ], [ %i.ax, %middle.block ]
  %.14479.ph = phi ptr [ %.04387, %vector.memcheck ], [ %.04387, %.lr.ph ], [ %i.ay, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.083 = phi i32 [ %i.bw, %scalar.ph ], [ %.083.ph, %scalar.ph.preheader ] ; 2 uses
  %.182 = phi ptr [ %i.bu, %scalar.ph ], [ %.182.ph, %scalar.ph.preheader ] ; 3 uses
  %.14081 = phi ptr [ %i.bt, %scalar.ph ], [ %.14081.ph, %scalar.ph.preheader ] ; 3 uses
  %.14479 = phi ptr [ %i.bv, %scalar.ph ], [ %.14479.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.14081, i64 4
  %i.bj = load float, ptr %.14081, align 4, !tbaa !222 ; 2 uses
  %i.bk = load float, ptr %i.bi, align 4, !tbaa !222 ; 2 uses
  %i.bl = fcmp fast olt float %i.bj, %i.bk
  %i.bm = select i1 %i.bl, float %i.bk, float %i.bj ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.182, i64 4
  %i.bo = load float, ptr %.182, align 4, !tbaa !222 ; 2 uses
  %i.bp = load float, ptr %i.bn, align 4, !tbaa !222 ; 2 uses
  %i.bq = fcmp fast olt float %i.bo, %i.bp
  %i.br = select i1 %i.bq, float %i.bp, float %i.bo ; 2 uses
  %i.bs = fcmp fast olt float %i.bm, %i.br
  %.sroa.speculated = select i1 %i.bs, float %i.br, float %i.bm
  store float %.sroa.speculated, ptr %.14479, align 4, !tbaa !222
  %i.bt = getelementptr inbounds nuw i8, ptr %.14081, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.182, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.14479, i64 4 ; 2 uses
  %i.bw = add nsw i32 %.083, -1
  %i.bx = icmp sgt i32 %.083, 1
  br i1 %i.bx, label %scalar.ph, label %._crit_edge, !llvm.loop !217

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa113 = phi ptr [ %i.ax, %middle.block ], [ %i.bt, %scalar.ph ]
  %.lcssa112 = phi ptr [ %i.aw, %middle.block ], [ %i.bu, %scalar.ph ]
  %.lcssa = phi ptr [ %i.ay, %middle.block ], [ %i.bv, %scalar.ph ]
  %i.by = getelementptr inbounds [4 x i8], ptr %.lcssa113, i64 %i.ac
  %i.bz = getelementptr inbounds [4 x i8], ptr %.lcssa112, i64 %i.ac
  %i.ca = add nuw nsw i32 %.03791, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %i.x
  br i1 %exitcond.not, label %._crit_edge93, label %.lr.ph, !llvm.loop !218

._crit_edge96.split:                              ; preds = %._crit_edge93, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge96.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL21pooling_max_bf16s_sseERKNS_3MatERS0_iiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %6) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %4, ptr %i.a, align 4, !tbaa !35
  store i32 %5, ptr %i.b, align 4, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !37
  store i32 %i.l, ptr %i.c, align 4, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34
  store i32 %i.p, ptr %i.d, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !36
  store i32 %i.r, ptr %i.e, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.s = mul nsw i32 %3, %2                       ; 4 uses
  store i32 %i.s, ptr %i.f, align 4, !tbaa !35
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  %i.u = icmp slt i32 %i.s, 0
  br i1 %i.u, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc39

.noexc39:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.v = shl nuw nsw i64 %i.t, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #24 ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.t ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !35
  %i.y = add nsw i64 %i.t, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc39
  %i.aa = getelementptr i8, ptr %i.w, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !35
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc39, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9.0 = phi ptr [ %i.x, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.x, %.noexc39 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.040.0 = phi ptr [ %i.w, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.w, %.noexc39 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  store ptr %.sroa.040.0, ptr %i.g, align 8, !tbaa !47
  %i.ab = sub i32 %i.j, %2
  %i.ac = icmp sgt i32 %3, 0
  %i.ad = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.ac, %i.ad
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge49.split

.preheader.preheader:                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.ae = zext nneg i32 %2 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %2, 4
  %min.iters.check59 = icmp ult i32 %2, 32
  %i.af = and i64 %i.ae, 28
  %n.vec = and i64 %i.ae, 2147483616              ; 5 uses
  %i.ag = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ae
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  %n.vec60 = and i64 %i.ae, 2147483644            ; 4 uses
  %i.ah = trunc nuw nsw i64 %n.vec60 to i32
  %cmp.n68 = icmp eq i64 %n.vec60, %i.ae
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.03448 = phi i32 [ %i.au, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03547 = phi i32 [ %i.at, %._crit_edge ], [ 0, %.preheader.preheader ] ; 5 uses
  %.03646 = phi i32 [ %i.aj, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ai = sext i32 %.03646 to i64                 ; 5 uses
  %i.aj = add i32 %2, %.03646                     ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = add nsw i64 %n.vec, %i.ai
  %i.al = add i32 %.03547, %i.ag                  ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.03547, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.040.0, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nsw <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add nsw <8 x i32> %vec.ind, splat (i32 16)
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.fadd.v4f32
!26 = !{!"_ZTSN4ncnn5LayerE", !10, i64 8, !10, i64 9, !10, i64 10, !10, i64 11, !10, i64 12, !10, i64 13, !10, i64 14, !10, i64 15, !10, i64 16, !10, i64 17, !10, i64 18, !10, i64 19, !10, i64 20, !10, i64 21, !10, i64 22, !10, i64 23, !10, i64 24, !10, i64 25, !10, i64 26, !10, i64 27, !7, i64 28, !11, i64 32, !7, i64 40, !15, i64 48, !15, i64 80, !20, i64 112, !20, i64 136, !25, i64 160, !25, i64 184}
!27 = !{!"_ZTSN4ncnn7PoolingE", !26, i64 0, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264}
!28 = !{!27, !7, i64 256}
!29 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!30 = !{!"_ZTSN4ncnn6OptionE", !10, i64 0, !10, i64 1, !10, i64 2, !10, i64 3, !7, i64 4, !29, i64 8, !29, i64 16, !7, i64 24, !10, i64 28, !10, i64 29, !10, i64 30, !10, i64 31, !10, i64 32, !10, i64 33, !10, i64 34, !10, i64 35, !10, i64 36, !10, i64 37, !10, i64 38, !10, i64 39, !7, i64 40, !10, i64 44, !10, i64 45, !10, i64 46, !10, i64 47, !6, i64 48, !10, i64 49, !10, i64 50, !10, i64 51, !10, i64 52, !10, i64 53, !10, i64 54, !10, i64 55, !10, i64 56, !10, i64 57, !10, i64 58, !10, i64 59, !10, i64 60, !10, i64 61, !10, i64 62, !10, i64 63}
!31 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !16, i64 8, !14, i64 16, !7, i64 24, !29, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !14, i64 64}
!32 = !{!31, !7, i64 24}
!33 = !{!31, !14, i64 16}
!34 = !{!31, !7, i64 44}
!35 = !{!7, !7, i64 0}
!36 = !{!31, !7, i64 48}
!37 = !{!31, !7, i64 56}
!38 = !{!27, !7, i64 244}
!39 = !{!30, !29, i64 8}
!40 = !{!31, !11, i64 0}
!41 = !{!31, !14, i64 64}
!42 = !{!27, !7, i64 208}
!43 = !{!30, !7, i64 4}
!44 = !{!27, !7, i64 212}
!45 = !{!27, !7, i64 216}
!46 = !{!17, !16, i64 0}
!47 = !{!16, !16, i64 0}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unswitch.partial.disable"}
!50 = !{!27, !7, i64 220}
!51 = !{!27, !7, i64 224}
!52 = !{!27, !7, i64 252}
!53 = !{!27, !7, i64 248}
!54 = !{!17, !16, i64 16}
!55 = !{!31, !16, i64 8}
!56 = !{!31, !29, i64 32}
!57 = !{!"vtable pointer", !5, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!27, !7, i64 228}
!60 = !{!27, !7, i64 232}
!61 = !{!27, !7, i64 236}
!62 = !{!27, !7, i64 240}
!63 = !{!6, !6, i64 0}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{i64 2, i64 -1, i64 -1, i1 true}
!66 = !{!65}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = !{!"branch_weights", i32 4, i32 28}
!70 = !{!"short", !6, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"branch_weights", i32 8, i32 56}
!73 = distinct !{!73, !48, !49}
!74 = distinct !{!74, !48}
!75 = distinct !{!75, !48, !49}
!76 = distinct !{!76, !48}
!77 = !{!30, !10, i64 32}
!78 = !{i8 0, i8 2}
!79 = !{}
!80 = !{!26, !10, i64 11}
!81 = !{!26, !10, i64 12}
!82 = distinct !{!82, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!83 = distinct !{!83, !82, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!84 = distinct !{!84, !64}
!85 = distinct !{!85, !48}
!86 = !{!83}
!87 = distinct !{!87, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!88 = distinct !{!88, !87, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!89 = distinct !{!89, !48}
!90 = distinct !{!90, !64}
!91 = !{!88}
!92 = !{!17, !16, i64 8}
!93 = distinct !{!93, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!94 = distinct !{!94, !93, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!95 = distinct !{!95, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!96 = distinct !{!96, !95, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!97 = distinct !{!97, !49}
!98 = distinct !{!98, !48, !49}
!99 = distinct !{!99, !64}
!100 = distinct !{!100, !48}
!101 = distinct !{!101, !48}
!102 = !{!94}
!103 = !{!96}
!104 = distinct !{!104, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!105 = distinct !{!105, !104, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!106 = distinct !{!106, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!107 = distinct !{!107, !106, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!108 = distinct !{!108, !49}
!109 = distinct !{!109, !48, !49}
!110 = distinct !{!110, !48}
!111 = distinct !{!111, !48}
!112 = distinct !{!112, !48}
!113 = !{!105}
!114 = !{!107}
!115 = distinct !{!115, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!116 = distinct !{!116, !115, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!118 = distinct !{!118, !117, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!119 = distinct !{!119, !49}
!120 = distinct !{!120, !48, !49}
!121 = distinct !{!121, !64}
!122 = distinct !{!122, !48}
!123 = distinct !{!123, !48}
!124 = !{!116}
!125 = !{!118}
!126 = distinct !{!126, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!127 = distinct !{!127, !126, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!128 = distinct !{!128, !64}
!129 = distinct !{!129, !48}
!130 = !{!127}
!131 = distinct !{!131, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!132 = distinct !{!132, !131, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!133 = distinct !{!133, !64}
!134 = distinct !{!134, !48}
!135 = !{!132}
!136 = distinct !{!136, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!137 = distinct !{!137, !136, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!138 = distinct !{!138, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!139 = distinct !{!139, !138, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!140 = distinct !{!140, !49}
!141 = distinct !{!141, !48, !49}
!142 = distinct !{!142, !64}
!143 = distinct !{!143, !48}
!144 = distinct !{!144, !48}
!145 = !{!137}
!146 = !{!139}
!147 = distinct !{!147, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!148 = distinct !{!148, !147, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!149 = distinct !{!149, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!150 = distinct !{!150, !149, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!151 = distinct !{!151, !49}
!152 = distinct !{!152, !48, !49}
!153 = distinct !{!153, !48}
!154 = distinct !{!154, !48}
!155 = distinct !{!155, !48}
!156 = !{!148}
!157 = !{!150}
!158 = distinct !{!158, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!159 = distinct !{!159, !158, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!160 = distinct !{!160, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!161 = distinct !{!161, !160, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!162 = distinct !{!162, !49}
!163 = distinct !{!163, !48, !49}
!164 = distinct !{!164, !64}
!165 = distinct !{!165, !48}
!166 = distinct !{!166, !48}
!167 = !{!159}
!168 = !{!161}
!169 = distinct !{!169, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!170 = distinct !{!170, !169, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!171 = distinct !{!171, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!172 = distinct !{!172, !171, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!173 = distinct !{!173, !49}
!174 = distinct !{!174, !48}
!175 = distinct !{!175, !48, !49}
!176 = !{!170}
!177 = !{!172}
!178 = distinct !{!178, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!179 = distinct !{!179, !178, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!180 = distinct !{!180, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!181 = distinct !{!181, !180, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!182 = distinct !{!182, !49}
!183 = distinct !{!183, !48}
!184 = distinct !{!184, !48}
!185 = distinct !{!185, !48}
!186 = distinct !{!186, !48}
!187 = !{!179}
!188 = !{!181}
!189 = distinct !{!189, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!190 = distinct !{!190, !189, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!191 = distinct !{!191, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!192 = distinct !{!192, !191, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!193 = distinct !{!193, !49}
!194 = distinct !{!194, !48}
!195 = distinct !{!195, !48, !49}
!196 = !{!190}
!197 = !{!192}
!198 = distinct !{!198, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!199 = distinct !{!199, !198, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!200 = distinct !{!200, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!201 = distinct !{!201, !200, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!202 = distinct !{!202, !49}
!203 = distinct !{!203, !48}
!204 = distinct !{!204, !48}
!205 = distinct !{!205, !48}
!206 = !{!199}
!207 = !{!201}
!208 = distinct !{!208, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!209 = distinct !{!209, !208, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!210 = distinct !{!210, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!211 = distinct !{!211, !210, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!212 = distinct !{!212, i1 false, !"LVerDomain"}
!213 = distinct !{!213, !212}
!214 = distinct !{!214, !212}
!215 = distinct !{!215, !212}
!216 = distinct !{!216, !48, !67, !68}
!217 = distinct !{!217, !48, !67}
!218 = distinct !{!218, !48}
!219 = !{!209}
!220 = !{!211}
!221 = !{!"float", !6, i64 0}
!222 = !{!221, !221, i64 0}
!223 = !{!213}
!224 = !{!214}
!225 = !{!215}
!226 = !{!214, !213}
!227 = distinct !{!227, !48, !67, !68}
!228 = distinct !{!228, !48, !67, !68}
!229 = distinct !{!229, !48}
!230 = distinct !{!230, !48, !68, !67}
!231 = distinct !{!231, !48, !67, !68}
!232 = distinct !{!232, !48, !67, !68}
!233 = distinct !{!233, !48}
!234 = distinct !{!234, !48, !68, !67}
!235 = distinct !{!235, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!236 = distinct !{!236, !235, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!237 = distinct !{!237, !48}
!238 = !{!236}
!239 = distinct !{!239, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!240 = distinct !{!240, !239, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!241 = distinct !{!241, !48}
!242 = distinct !{!242, !64}
!243 = !{!240}
!244 = distinct !{!244, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!245 = distinct !{!245, !244, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!246 = distinct !{!246, i1 false, !"LVerDomain"}
!247 = distinct !{!247, !246}
!248 = distinct !{!248, !246}
!249 = distinct !{!249, !67, !68}
!250 = distinct !{!250, !67, !68}
!251 = distinct !{!251, !64}
!252 = distinct !{!252, !48, !67, !68}
!253 = distinct !{!253, !48, !67, !68}
!254 = distinct !{!254, !48, !68, !67}
!255 = distinct !{!255, !67}
!256 = !{!245}
!257 = !{!247}
!258 = !{!248}
!259 = !{!"branch_weights", i32 8, i32 8}
!260 = distinct !{!260, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!261 = distinct !{!261, !260, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!262 = distinct !{!262, !48}
!263 = !{!261}
!264 = distinct !{!264, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!265 = distinct !{!265, !264, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!266 = distinct !{!266, !48}
!267 = distinct !{!267, !64}
!268 = !{!265}
!269 = distinct !{!269, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!270 = distinct !{!270, !269, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!271 = distinct !{!271, !48, !67, !68}
!272 = distinct !{!272, !48, !67, !68}
!273 = distinct !{!273, !48, !68, !67}
!274 = !{!270}
!275 = distinct !{!275, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!276 = distinct !{!276, !275, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!277 = distinct !{!277, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!278 = distinct !{!278, !277, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!279 = distinct !{!279, !49}
!280 = distinct !{!280, !48, !49}
!281 = distinct !{!281, !48}
!282 = distinct !{!282, !48}
!283 = !{!276}
!284 = !{!278}
!285 = distinct !{!285, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!286 = distinct !{!286, !285, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!287 = distinct !{!287, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!288 = distinct !{!288, !287, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!289 = distinct !{!289, !49}
!290 = distinct !{!290, !48, !49}
!291 = distinct !{!291, !48}
!292 = distinct !{!292, !48}
!293 = !{!286}
!294 = !{!288}
!295 = distinct !{!295, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!296 = distinct !{!296, !295, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!297 = distinct !{!297, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!298 = distinct !{!298, !297, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!299 = distinct !{!299, !48}
!300 = distinct !{!300, !64}
!301 = distinct !{!301, !48}
!302 = distinct !{!302, !48}
!303 = distinct !{!303, i1 false, !"LVerDomain"}
!304 = distinct !{!304, !303}
!305 = distinct !{!305, !303}
!306 = distinct !{!306, !48, !67, !68}
!307 = distinct !{!307, !48, !67, !68}
!308 = distinct !{!308, !64}
!309 = distinct !{!309, !48, !67}
!310 = !{!296}
!311 = !{!298}
!312 = !{!304}
!313 = !{!305}
!314 = distinct !{!314, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!315 = distinct !{!315, !314, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!316 = distinct !{!316, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!317 = distinct !{!317, !316, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!318 = distinct !{!318, !49}
!319 = distinct !{!319, !48, !49}
!320 = distinct !{!320, !48}
!321 = distinct !{!321, !48}
!322 = distinct !{!322, !48}
!323 = !{!315}
!324 = !{!317}
!325 = distinct !{!325, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!326 = distinct !{!326, !325, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!327 = distinct !{!327, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!328 = distinct !{!328, !327, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!329 = distinct !{!329, !49}
!330 = distinct !{!330, !48, !49}
!331 = distinct !{!331, !48}
!332 = distinct !{!332, !48}
!333 = distinct !{!333, !48}
!334 = !{!326}
!335 = !{!328}
!336 = distinct !{!336, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!337 = distinct !{!337, !336, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!338 = distinct !{!338, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!339 = distinct !{!339, !338, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!340 = distinct !{!340, !48}
!341 = distinct !{!341, !48}
!342 = distinct !{!342, !48}
!343 = distinct !{!343, !48}
!344 = distinct !{!344, !48, !67, !68}
!345 = distinct !{!345, !48, !67, !68}
!346 = distinct !{!346, !48, !68, !67}
!347 = !{!337}
!348 = !{!339}
!349 = distinct !{!349, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!350 = distinct !{!350, !349, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!351 = distinct !{!351, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!352 = distinct !{!352, !351, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!353 = distinct !{!353, !49}
!354 = distinct !{!354, !48, !49}
!355 = distinct !{!355, !48}
!356 = distinct !{!356, !48}
!357 = !{!350}
!358 = !{!352}
!359 = distinct !{!359, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!360 = distinct !{!360, !359, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!361 = distinct !{!361, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!362 = distinct !{!362, !361, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!363 = distinct !{!363, !49}
!364 = distinct !{!364, !48, !49}
!365 = distinct !{!365, !48}
!366 = distinct !{!366, !48}
!367 = !{!360}
!368 = !{!362}
!369 = distinct !{!369, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!370 = distinct !{!370, !369, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!371 = distinct !{!371, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!372 = distinct !{!372, !371, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!373 = distinct !{!373, !64}
!374 = distinct !{!374, !48}
!375 = distinct !{!375, !64}
!376 = distinct !{!376, !48}
!377 = distinct !{!377, !48}
!378 = !{!370}
!379 = !{!372}
end_hunk_1
