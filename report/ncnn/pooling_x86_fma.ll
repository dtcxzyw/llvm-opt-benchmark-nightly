Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/pooling_x86_fma?download=true
inline.NumInlined: 55
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4ncnnL26pooling2x2s2_max_pack4_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined:bb.a
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %.noexc
  %i.x = load i32, ptr %6, align 4, !tbaa !35     ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.z = load ptr, ptr %4, align 8, !tbaa !40, !noalias !196
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !196
  %i.ab = mul i64 %i.aa, %indvars.iv
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !33, !noalias !196
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %i.af = load ptr, ptr %3, align 8, !tbaa !40, !noalias !197
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !197
  %i.ah = mul i64 %i.ag, %indvars.iv
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !33, !noalias !197 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.l, align 4, !tbaa !34, !noalias !197
  %i.am = sext i32 %i.al to i64
  %i.an = mul i64 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.ap = phi i32 [ %i.bj, %._crit_edge ], [ %i.u, %.preheader.preheader ]
  %i.aq = phi i32 [ %i.bk, %._crit_edge ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.04085 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.ae, %.preheader.preheader ] ; 2 uses
  %.04184 = phi ptr [ %i.bn, %._crit_edge ], [ %i.ak, %.preheader.preheader ] ; 2 uses
  %.04383 = phi ptr [ %i.bo, %._crit_edge ], [ %i.ao, %.preheader.preheader ] ; 2 uses
  %.04682 = phi i32 [ %i.bp, %._crit_edge ], [ 0, %.preheader.preheader ]
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.preheader.lr.ph, %.noexc
  %i.as = phi i32 [ %i.u, %.noexc ], [ %i.u, %.preheader.lr.ph ], [ %i.bj, %._crit_edge ]
  %i.at = phi i32 [ %i.v, %.noexc ], [ %i.v, %.preheader.lr.ph ], [ %i.bj, %._crit_edge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge88, label %.noexc, !llvm.loop !193

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.179 = phi ptr [ %i.bf, %.lr.ph ], [ %.04085, %.preheader ] ; 2 uses
  %.14278 = phi ptr [ %i.bd, %.lr.ph ], [ %.04184, %.preheader ] ; 3 uses
  %.14477 = phi ptr [ %i.be, %.lr.ph ], [ %.04383, %.preheader ] ; 3 uses
  %.04576 = phi i32 [ %i.bg, %.lr.ph ], [ 0, %.preheader ]
  %i.au = load <4 x float>, ptr %.14278, align 1, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %.14278, i64 16
  %i.aw = load <4 x float>, ptr %i.av, align 1, !tbaa !63
  %i.ax = load <4 x float>, ptr %.14477, align 1, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %.14477, i64 16
  %i.az = load <4 x float>, ptr %i.ay, align 1, !tbaa !63
  %i.ba = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.au, <4 x float> nofpclass(nan inf) %i.aw)
  %i.bb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ax, <4 x float> nofpclass(nan inf) %i.az)
  %i.bc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ba, <4 x float> nofpclass(nan inf) %i.bb)
  store <4 x float> %i.bc, ptr %.179, align 1, !tbaa !63
  %i.bd = getelementptr inbounds nuw i8, ptr %.14278, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.14477, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.179, i64 16 ; 2 uses
  %i.bg = add nuw nsw i32 %.04576, 1              ; 2 uses
  %i.bh = load i32, ptr %6, align 4, !tbaa !35    ; 2 uses
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !194

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %5, align 4, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bj = phi i32 [ %i.ap, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 4 uses
  %i.bk = phi i32 [ %i.aq, %.preheader ], [ %i.bh, %._crit_edge.loopexit ]
  %.144.lcssa = phi ptr [ %.04383, %.preheader ], [ %i.be, %._crit_edge.loopexit ]
  %.142.lcssa = phi ptr [ %.04184, %.preheader ], [ %i.bd, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.04085, %.preheader ], [ %i.bf, %._crit_edge.loopexit ]
  %i.bl = load i32, ptr %7, align 4, !tbaa !35
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %.142.lcssa, i64 %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %.144.lcssa, i64 %i.bm
  %i.bp = add nuw nsw i32 %.04682, 1              ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.bj
  br i1 %i.bq, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !195

._crit_edge88:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge88, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26pooling3x3s2_max_pack4_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #11 personality ptr @__gxx_personality_v0 {
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
  %.not179 = icmp sgt i32 %i.k, %i.j
  br i1 %.not179, label %._crit_edge181, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i32, ptr %5, align 4, !tbaa !35     ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.noexc.preheader, label %._crit_edge181

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.q, %.noexc.preheader ], [ %i.ar, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.s, %.noexc.preheader ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.preheader154.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader154.preheader:                          ; preds = %.noexc
  %i.w = load ptr, ptr %3, align 8, !tbaa !40, !noalias !206
  %i.x = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !206
  %i.y = mul i64 %i.x, %indvars.iv
  %i.z = load i64, ptr %i.n, align 8, !tbaa !33, !noalias !206 ; 3 uses
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa ; 3 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !34, !noalias !206
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = shl nsw i64 %i.ad, 1
  %i.af = mul i64 %i.ae, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %i.ah = mul i64 %i.z, %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load ptr, ptr %4, align 8, !tbaa !40, !noalias !207
  %i.ak = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !207
  %i.al = mul i64 %i.ak, %indvars.iv
  %i.am = load i64, ptr %i.p, align 8, !tbaa !33, !noalias !207
  %i.an = mul i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  %.pre = load i32, ptr %6, align 4, !tbaa !35
  br label %.preheader154

.preheader154:                                    ; preds = %.preheader154.preheader, %._crit_edge
  %i.ap = phi i32 [ %i.dq, %._crit_edge ], [ %.pre, %.preheader154.preheader ] ; 2 uses
  %.0111178 = phi ptr [ %.2.lcssa, %._crit_edge ], [ %i.ao, %.preheader154.preheader ] ; 2 uses
  %.0112177 = phi ptr [ %i.dt, %._crit_edge ], [ %i.ab, %.preheader154.preheader ] ; 2 uses
  %.0115176 = phi ptr [ %i.du, %._crit_edge ], [ %i.ai, %.preheader154.preheader ] ; 2 uses
  %.0118175 = phi ptr [ %i.dv, %._crit_edge ], [ %i.ag, %.preheader154.preheader ] ; 2 uses
  %.0121174 = phi i32 [ %i.dw, %._crit_edge ], [ 0, %.preheader154.preheader ]
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %.lr.ph, label %.preheader

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.noexc
  %i.ar = phi i32 [ %i.u, %.noexc ], [ %i.dx, %._crit_edge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge181, label %.noexc, !llvm.loop !202

.preheader:                                       ; preds = %.lr.ph, %.preheader154
  %i.as = phi i32 [ %i.ap, %.preheader154 ], [ %i.cn, %.lr.ph ] ; 2 uses
  %.0122.lcssa = phi i32 [ 0, %.preheader154 ], [ %i.cl, %.lr.ph ] ; 2 uses
  %.1119.lcssa = phi ptr [ %.0118175, %.preheader154 ], [ %i.ca, %.lr.ph ] ; 2 uses
  %.1116.lcssa = phi ptr [ %.0115176, %.preheader154 ], [ %i.bw, %.lr.ph ] ; 2 uses
  %.1113.lcssa = phi ptr [ %.0112177, %.preheader154 ], [ %i.bs, %.lr.ph ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0111178, %.preheader154 ], [ %i.ck, %.lr.ph ] ; 2 uses
  %i.at = icmp slt i32 %.0122.lcssa, %i.as
  br i1 %i.at, label %.lr.ph169, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader154, %.lr.ph
  %.1159 = phi ptr [ %i.ck, %.lr.ph ], [ %.0111178, %.preheader154 ] ; 3 uses
  %.1113158 = phi ptr [ %i.bs, %.lr.ph ], [ %.0112177, %.preheader154 ] ; 5 uses
  %.1116157 = phi ptr [ %i.bw, %.lr.ph ], [ %.0115176, %.preheader154 ] ; 5 uses
  %.1119156 = phi ptr [ %i.ca, %.lr.ph ], [ %.0118175, %.preheader154 ] ; 5 uses
  %.0122155 = phi i32 [ %i.cl, %.lr.ph ], [ 0, %.preheader154 ]
  %i.au = load <4 x float>, ptr %.1113158, align 1, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %.1113158, i64 16
  %i.aw = load <4 x float>, ptr %i.av, align 1, !tbaa !63
  %i.ax = getelementptr inbounds nuw i8, ptr %.1113158, i64 32
  %i.ay = load <4 x float>, ptr %i.ax, align 1, !tbaa !63 ; 2 uses
  %i.az = load <4 x float>, ptr %.1116157, align 1, !tbaa !63
  %i.ba = getelementptr inbounds nuw i8, ptr %.1116157, i64 16
  %i.bb = load <4 x float>, ptr %i.ba, align 1, !tbaa !63
  %i.bc = getelementptr inbounds nuw i8, ptr %.1116157, i64 32
  %i.bd = load <4 x float>, ptr %i.bc, align 1, !tbaa !63 ; 2 uses
  %i.be = load <4 x float>, ptr %.1119156, align 1, !tbaa !63
  %i.bf = getelementptr inbounds nuw i8, ptr %.1119156, i64 16
  %i.bg = load <4 x float>, ptr %i.bf, align 1, !tbaa !63
  %i.bh = getelementptr inbounds nuw i8, ptr %.1119156, i64 32
  %i.bi = load <4 x float>, ptr %i.bh, align 1, !tbaa !63 ; 2 uses
  %i.bj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.au, <4 x float> nofpclass(nan inf) %i.aw)
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
  %8 = getelementptr inbounds nuw i8, ptr %.1159, i64 16
  %9 = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cj, <4 x float> nofpclass(nan inf) %i.ch)
  store <4 x float> %9, ptr %8, align 1, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %.1159, i64 32 ; 2 uses
  %i.cl = add nuw nsw i32 %.0122155, 2            ; 3 uses
  %i.cm = or disjoint i32 %i.cl, 1
  %i.cn = load i32, ptr %6, align 4, !tbaa !35    ; 2 uses
  %i.co = icmp slt i32 %i.cm, %i.cn
  br i1 %i.co, label %.lr.ph, label %.preheader, !llvm.loop !203

.lr.ph169:                                        ; preds = %.preheader, %.lr.ph169
  %.2168 = phi ptr [ %i.dm, %.lr.ph169 ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.2114167 = phi ptr [ %i.cs, %.lr.ph169 ], [ %.1113.lcssa, %.preheader ] ; 3 uses
  %.2117166 = phi ptr [ %i.cx, %.lr.ph169 ], [ %.1116.lcssa, %.preheader ] ; 3 uses
  %.2120165 = phi ptr [ %i.dc, %.lr.ph169 ], [ %.1119.lcssa, %.preheader ] ; 3 uses
  %.1123164 = phi i32 [ %i.dn, %.lr.ph169 ], [ %.0122.lcssa, %.preheader ]
  %i.cp = load <4 x float>, ptr %.2114167, align 1, !tbaa !63
  %i.cq = getelementptr inbounds nuw i8, ptr %.2114167, i64 16
  %i.cr = load <4 x float>, ptr %i.cq, align 1, !tbaa !63
  %i.cs = getelementptr inbounds nuw i8, ptr %.2114167, i64 32 ; 3 uses
  %i.ct = load <4 x float>, ptr %i.cs, align 1, !tbaa !63
  %i.cu = load <4 x float>, ptr %.2117166, align 1, !tbaa !63
  %i.cv = getelementptr inbounds nuw i8, ptr %.2117166, i64 16
  %i.cw = load <4 x float>, ptr %i.cv, align 1, !tbaa !63
  %i.cx = getelementptr inbounds nuw i8, ptr %.2117166, i64 32 ; 3 uses
  %i.cy = load <4 x float>, ptr %i.cx, align 1, !tbaa !63
  %i.cz = load <4 x float>, ptr %.2120165, align 1, !tbaa !63
  %i.da = getelementptr inbounds nuw i8, ptr %.2120165, i64 16
  %i.db = load <4 x float>, ptr %i.da, align 1, !tbaa !63
  %i.dc = getelementptr inbounds nuw i8, ptr %.2120165, i64 32 ; 3 uses
  %i.dd = load <4 x float>, ptr %i.dc, align 1, !tbaa !63
  %i.de = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cp, <4 x float> nofpclass(nan inf) %i.cr)
  %i.df = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.de, <4 x float> nofpclass(nan inf) %i.ct)
  %i.dg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.df, <4 x float> nofpclass(nan inf) %i.cu)
  %i.dh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dg, <4 x float> nofpclass(nan inf) %i.cw)
  %i.di = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cy, <4 x float> nofpclass(nan inf) %i.cz)
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.di, <4 x float> nofpclass(nan inf) %i.db)
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> nofpclass(nan inf) %i.dd)
  %i.dl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.dk)
  store <4 x float> %i.dl, ptr %.2168, align 1, !tbaa !63
  %i.dm = getelementptr inbounds nuw i8, ptr %.2168, i64 16 ; 2 uses
  %i.dn = add nuw nsw i32 %.1123164, 1            ; 2 uses
  %i.do = load i32, ptr %6, align 4, !tbaa !35    ; 2 uses
  %i.dp = icmp slt i32 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph169, label %._crit_edge, !llvm.loop !204

._crit_edge:                                      ; preds = %.lr.ph169, %.preheader
  %i.dq = phi i32 [ %i.as, %.preheader ], [ %i.do, %.lr.ph169 ]
  %.2120.lcssa = phi ptr [ %.1119.lcssa, %.preheader ], [ %i.dc, %.lr.ph169 ]
  %.2117.lcssa = phi ptr [ %.1116.lcssa, %.preheader ], [ %i.cx, %.lr.ph169 ]
  %.2114.lcssa = phi ptr [ %.1113.lcssa, %.preheader ], [ %i.cs, %.lr.ph169 ]
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.dm, %.lr.ph169 ]
  %i.dr = load i32, ptr %7, align 4, !tbaa !35
  %i.ds = sext i32 %i.dr to i64                   ; 3 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %.2114.lcssa, i64 %i.ds
  %i.du = getelementptr inbounds [4 x i8], ptr %.2117.lcssa, i64 %i.ds
  %i.dv = getelementptr inbounds [4 x i8], ptr %.2120.lcssa, i64 %i.ds
  %i.dw = add nuw nsw i32 %.0121174, 1            ; 2 uses
  %i.dx = load i32, ptr %5, align 4, !tbaa !35    ; 2 uses
  %i.dy = icmp slt i32 %i.dw, %i.dx
  br i1 %i.dy, label %.preheader154, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !205

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
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = shl nuw nsw i64 %i.ag, 3
  %i.aj = add nuw nsw i64 %i.ai, 8                ; 2 uses
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
  %.03791 = phi i32 [ 0, %.noexc ], [ %i.bx, %._crit_edge ]
  %.03890 = phi ptr [ %i.ar, %.noexc ], [ %i.bw, %._crit_edge ] ; 6 uses
  %.03989 = phi ptr [ %i.ap, %.noexc ], [ %i.bv, %._crit_edge ] ; 6 uses
  %.04387 = phi ptr [ %i.aq, %.noexc ], [ %.lcssa, %._crit_edge ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.as = getelementptr i8, ptr %.04387, i64 %i.ah
  %scevgep = getelementptr i8, ptr %i.as, i64 4   ; 2 uses
  %scevgep114 = getelementptr i8, ptr %.03890, i64 %i.aj
  %scevgep115 = getelementptr i8, ptr %.03989, i64 %i.aj
  %bound0 = icmp ult ptr %.04387, %scevgep114
  %bound1 = icmp ult ptr %.03890, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0116 = icmp ult ptr %.04387, %scevgep115
  %bound1117 = icmp ult ptr %.03989, %scevgep
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx = or i1 %found.conflict, %found.conflict118
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.at = getelementptr i8, ptr %.03890, i64 %i.an ; 2 uses
  %i.au = getelementptr i8, ptr %.03989, i64 %i.an ; 2 uses
  %i.av = getelementptr i8, ptr %.04387, i64 %i.ao ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03890, i64 %i.aw
  %next.gep119 = getelementptr i8, ptr %.03989, i64 %i.aw
  %i.ax = shl i64 %index, 2
  %next.gep120 = getelementptr i8, ptr %.04387, i64 %i.ax
  %wide.vec = load <8 x float>, ptr %next.gep119, align 4, !tbaa !222, !alias.scope !223 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec121 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ay = fcmp fast olt <4 x float> %strided.vec, %strided.vec121
  %i.az = select <4 x i1> %i.ay, <4 x float> %strided.vec121, <4 x float> %strided.vec ; 2 uses
  %wide.vec122 = load <8 x float>, ptr %next.gep, align 4, !tbaa !222, !alias.scope !224 ; 2 uses
end_hunk_0
