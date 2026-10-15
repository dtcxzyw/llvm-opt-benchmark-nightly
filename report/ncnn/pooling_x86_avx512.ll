Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/pooling_x86_avx512?download=true
inline.NumInlined: 59
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN4ncnnL26pooling2x2s2_max_pack8_avxERKNS_3MatERS0_RKNS_6OptionE.omp_outlined:bb.a
  br i1 %i.w, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %.noexc
  %i.x = load i32, ptr %6, align 4, !tbaa !35     ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.z = load ptr, ptr %4, align 8, !tbaa !40, !noalias !240
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !240
  %i.ab = mul i64 %i.aa, %indvars.iv
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !33, !noalias !240
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %i.af = load ptr, ptr %3, align 8, !tbaa !40, !noalias !241
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !241
  %i.ah = mul i64 %i.ag, %indvars.iv
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !33, !noalias !241 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.l, align 4, !tbaa !34, !noalias !241
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
  br i1 %exitcond.not, label %._crit_edge88, label %.noexc, !llvm.loop !237

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.179 = phi ptr [ %i.bf, %.lr.ph ], [ %.04085, %.preheader ] ; 2 uses
  %.14278 = phi ptr [ %i.bd, %.lr.ph ], [ %.04184, %.preheader ] ; 3 uses
  %.14477 = phi ptr [ %i.be, %.lr.ph ], [ %.04383, %.preheader ] ; 3 uses
  %.04576 = phi i32 [ %i.bg, %.lr.ph ], [ 0, %.preheader ]
  %i.au = load <8 x float>, ptr %.14278, align 1, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %.14278, i64 32
  %i.aw = load <8 x float>, ptr %i.av, align 1, !tbaa !63
  %i.ax = load <8 x float>, ptr %.14477, align 1, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %.14477, i64 32
  %i.az = load <8 x float>, ptr %i.ay, align 1, !tbaa !63
  %i.ba = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.aw)
  %i.bb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ax, <8 x float> nofpclass(nan inf) %i.az)
  %i.bc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.bb)
  store <8 x float> %i.bc, ptr %.179, align 1, !tbaa !63
  %i.bd = getelementptr inbounds nuw i8, ptr %.14278, i64 64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.14477, i64 64 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.179, i64 32 ; 2 uses
  %i.bg = add nuw nsw i32 %.04576, 1              ; 2 uses
  %i.bh = load i32, ptr %6, align 4, !tbaa !35    ; 2 uses
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !238

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
  br i1 %i.bq, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !239

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
define internal void @_ZN4ncnnL26pooling3x3s2_max_pack8_avxERKNS_3MatERS0_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #11 personality ptr @__gxx_personality_v0 {
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
  %.not296 = icmp sgt i32 %i.k, %i.j
  br i1 %.not296, label %._crit_edge298, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i32, ptr %5, align 4, !tbaa !35     ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.noexc.preheader, label %._crit_edge298

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.q, %.noexc.preheader ], [ %i.ar, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.s, %.noexc.preheader ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.preheader260.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader260.preheader:                          ; preds = %.noexc
  %i.w = load ptr, ptr %3, align 8, !tbaa !40, !noalias !251
  %i.x = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !251
  %i.y = mul i64 %i.x, %indvars.iv
  %i.z = load i64, ptr %i.n, align 8, !tbaa !33, !noalias !251 ; 3 uses
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa ; 3 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !34, !noalias !251
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = shl nsw i64 %i.ad, 1
  %i.af = mul i64 %i.ae, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %i.ah = mul i64 %i.z, %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load ptr, ptr %4, align 8, !tbaa !40, !noalias !252
  %i.ak = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !252
  %i.al = mul i64 %i.ak, %indvars.iv
  %i.am = load i64, ptr %i.p, align 8, !tbaa !33, !noalias !252
  %i.an = mul i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  %.pre = load i32, ptr %6, align 4, !tbaa !35
  br label %.preheader260

.preheader260:                                    ; preds = %.preheader260.preheader, %._crit_edge
  %i.ap = phi i32 [ %i.he, %._crit_edge ], [ %.pre, %.preheader260.preheader ] ; 2 uses
  %.0212295 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %i.ao, %.preheader260.preheader ] ; 2 uses
  %.0213294 = phi ptr [ %i.hh, %._crit_edge ], [ %i.ab, %.preheader260.preheader ] ; 2 uses
  %.0217293 = phi ptr [ %i.hi, %._crit_edge ], [ %i.ai, %.preheader260.preheader ] ; 2 uses
  %.0221292 = phi ptr [ %i.hj, %._crit_edge ], [ %i.ag, %.preheader260.preheader ] ; 2 uses
  %.0225291 = phi i32 [ %i.hk, %._crit_edge ], [ 0, %.preheader260.preheader ]
  %i.aq = icmp sgt i32 %i.ap, 3
  br i1 %i.aq, label %.lr.ph, label %.preheader259

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.noexc
  %i.ar = phi i32 [ %i.u, %.noexc ], [ %i.hl, %._crit_edge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge298, label %.noexc, !llvm.loop !246

.preheader259:                                    ; preds = %.lr.ph, %.preheader260
  %i.as = phi i32 [ %i.ap, %.preheader260 ], [ %i.ee, %.lr.ph ] ; 2 uses
  %.0226.lcssa = phi i32 [ 0, %.preheader260 ], [ %i.ec, %.lr.ph ] ; 3 uses
  %.1222.lcssa = phi ptr [ %.0221292, %.preheader260 ], [ %i.dq, %.lr.ph ] ; 2 uses
  %.1218.lcssa = phi ptr [ %.0217293, %.preheader260 ], [ %i.dm, %.lr.ph ] ; 2 uses
  %.1214.lcssa = phi ptr [ %.0213294, %.preheader260 ], [ %i.di, %.lr.ph ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0212295, %.preheader260 ], [ %i.eb, %.lr.ph ] ; 2 uses
  %i.at = or disjoint i32 %.0226.lcssa, 1
  %i.au = icmp slt i32 %i.at, %i.as
  br i1 %i.au, label %.lr.ph275, label %.preheader

.lr.ph:                                           ; preds = %.preheader260, %.lr.ph
  %.1265 = phi ptr [ %i.eb, %.lr.ph ], [ %.0212295, %.preheader260 ] ; 5 uses
  %.1214264 = phi ptr [ %i.di, %.lr.ph ], [ %.0213294, %.preheader260 ] ; 9 uses
  %.1218263 = phi ptr [ %i.dm, %.lr.ph ], [ %.0217293, %.preheader260 ] ; 9 uses
  %.1222262 = phi ptr [ %i.dq, %.lr.ph ], [ %.0221292, %.preheader260 ] ; 9 uses
  %.0226261 = phi i32 [ %i.ec, %.lr.ph ], [ 0, %.preheader260 ]
  %i.av = load <8 x float>, ptr %.1214264, align 1, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %.1214264, i64 32
  %i.ax = load <8 x float>, ptr %i.aw, align 1, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %.1214264, i64 64
  %i.az = load <8 x float>, ptr %i.ay, align 1, !tbaa !63 ; 2 uses
  %i.ba = load <8 x float>, ptr %.1218263, align 1, !tbaa !63
  %i.bb = getelementptr inbounds nuw i8, ptr %.1218263, i64 32
  %i.bc = load <8 x float>, ptr %i.bb, align 1, !tbaa !63
  %i.bd = getelementptr inbounds nuw i8, ptr %.1218263, i64 64
  %i.be = load <8 x float>, ptr %i.bd, align 1, !tbaa !63 ; 2 uses
  %i.bf = load <8 x float>, ptr %.1222262, align 1, !tbaa !63
  %i.bg = getelementptr inbounds nuw i8, ptr %.1222262, i64 32
  %i.bh = load <8 x float>, ptr %i.bg, align 1, !tbaa !63
  %i.bi = getelementptr inbounds nuw i8, ptr %.1222262, i64 64
  %i.bj = load <8 x float>, ptr %i.bi, align 1, !tbaa !63 ; 2 uses
  %i.bk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.ax)
  %i.bl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bk, <8 x float> nofpclass(nan inf) %i.az)
  %i.bm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bl, <8 x float> nofpclass(nan inf) %i.ba)
  %i.bn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bm, <8 x float> nofpclass(nan inf) %i.bc)
  %i.bo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %i.bf)
  %i.bp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bo, <8 x float> nofpclass(nan inf) %i.bh)
  %i.bq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bp, <8 x float> nofpclass(nan inf) %i.bj)
  %i.br = getelementptr inbounds nuw i8, ptr %.1214264, i64 96
  %i.bs = load <8 x float>, ptr %i.br, align 1, !tbaa !63
  %i.bt = getelementptr inbounds nuw i8, ptr %.1214264, i64 128
  %i.bu = load <8 x float>, ptr %i.bt, align 1, !tbaa !63 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1218263, i64 96
  %i.bw = load <8 x float>, ptr %i.bv, align 1, !tbaa !63
  %i.bx = getelementptr inbounds nuw i8, ptr %.1218263, i64 128
  %i.by = load <8 x float>, ptr %i.bx, align 1, !tbaa !63 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1222262, i64 96
  %i.ca = load <8 x float>, ptr %i.bz, align 1, !tbaa !63
  %i.cb = getelementptr inbounds nuw i8, ptr %.1222262, i64 128
  %i.cc = load <8 x float>, ptr %i.cb, align 1, !tbaa !63 ; 2 uses
  %i.cd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bn, <8 x float> nofpclass(nan inf) %i.bq)
  store <8 x float> %i.cd, ptr %.1265, align 1, !tbaa !63
  %i.ce = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> nofpclass(nan inf) %i.bu)
  %i.cf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ce, <8 x float> nofpclass(nan inf) %i.az)
  %i.cg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cf, <8 x float> nofpclass(nan inf) %i.bw)
  %i.ch = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cg, <8 x float> nofpclass(nan inf) %i.by)
  %i.ci = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %i.ca)
  %i.cj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ch, <8 x float> nofpclass(nan inf) %i.cc)
  %i.ck = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cj, <8 x float> nofpclass(nan inf) %i.bj)
  %i.cl = getelementptr inbounds nuw i8, ptr %.1214264, i64 160
  %i.cm = load <8 x float>, ptr %i.cl, align 1, !tbaa !63
  %i.cn = getelementptr inbounds nuw i8, ptr %.1214264, i64 192
  %i.co = load <8 x float>, ptr %i.cn, align 1, !tbaa !63 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.1218263, i64 160
  %i.cq = load <8 x float>, ptr %i.cp, align 1, !tbaa !63
  %i.cr = getelementptr inbounds nuw i8, ptr %.1218263, i64 192
  %i.cs = load <8 x float>, ptr %i.cr, align 1, !tbaa !63 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.1222262, i64 160
  %i.cu = load <8 x float>, ptr %i.ct, align 1, !tbaa !63
  %i.cv = getelementptr inbounds nuw i8, ptr %.1222262, i64 192
  %i.cw = load <8 x float>, ptr %i.cv, align 1, !tbaa !63 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.1265, i64 32
  %i.cy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ck, <8 x float> nofpclass(nan inf) %i.ci)
  store <8 x float> %i.cy, ptr %i.cx, align 1, !tbaa !63
  %i.cz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cm, <8 x float> nofpclass(nan inf) %i.co)
  %i.da = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cz, <8 x float> nofpclass(nan inf) %i.bu)
  %i.db = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.da, <8 x float> nofpclass(nan inf) %i.cq)
  %i.dc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.db, <8 x float> nofpclass(nan inf) %i.cs)
  %i.dd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.by, <8 x float> nofpclass(nan inf) %i.cu)
  %i.de = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dc, <8 x float> nofpclass(nan inf) %i.cw)
  %i.df = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.de, <8 x float> nofpclass(nan inf) %i.cc)
  %i.dg = getelementptr inbounds nuw i8, ptr %.1214264, i64 224
  %i.dh = load <8 x float>, ptr %i.dg, align 1, !tbaa !63
  %i.di = getelementptr inbounds nuw i8, ptr %.1214264, i64 256 ; 3 uses
  %i.dj = load <8 x float>, ptr %i.di, align 1, !tbaa !63
  %i.dk = getelementptr inbounds nuw i8, ptr %.1218263, i64 224
  %i.dl = load <8 x float>, ptr %i.dk, align 1, !tbaa !63
  %i.dm = getelementptr inbounds nuw i8, ptr %.1218263, i64 256 ; 3 uses
  %i.dn = load <8 x float>, ptr %i.dm, align 1, !tbaa !63
  %i.do = getelementptr inbounds nuw i8, ptr %.1222262, i64 224
  %i.dp = load <8 x float>, ptr %i.do, align 1, !tbaa !63
  %i.dq = getelementptr inbounds nuw i8, ptr %.1222262, i64 256 ; 3 uses
  %i.dr = load <8 x float>, ptr %i.dq, align 1, !tbaa !63
  %i.ds = getelementptr inbounds nuw i8, ptr %.1265, i64 64
  %i.dt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.df, <8 x float> nofpclass(nan inf) %i.dd)
  store <8 x float> %i.dt, ptr %i.ds, align 1, !tbaa !63
  %i.du = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dh, <8 x float> nofpclass(nan inf) %i.dj)
  %i.dv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.du, <8 x float> nofpclass(nan inf) %i.co)
  %i.dw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dv, <8 x float> nofpclass(nan inf) %i.dl)
  %i.dx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dw, <8 x float> nofpclass(nan inf) %i.dn)
  %i.dy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cs, <8 x float> nofpclass(nan inf) %i.dp)
  %i.dz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dx, <8 x float> nofpclass(nan inf) %i.dr)
  %i.ea = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dz, <8 x float> nofpclass(nan inf) %i.cw)
  %8 = getelementptr inbounds nuw i8, ptr %.1265, i64 96
  %9 = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ea, <8 x float> nofpclass(nan inf) %i.dy)
  store <8 x float> %9, ptr %8, align 1, !tbaa !63
  %i.eb = getelementptr inbounds nuw i8, ptr %.1265, i64 128 ; 2 uses
  %i.ec = add nuw nsw i32 %.0226261, 4            ; 3 uses
  %i.ed = or disjoint i32 %i.ec, 3
  %i.ee = load i32, ptr %6, align 4, !tbaa !35    ; 2 uses
  %i.ef = icmp slt i32 %i.ed, %i.ee
  br i1 %i.ef, label %.lr.ph, label %.preheader259, !llvm.loop !247

.preheader:                                       ; preds = %.lr.ph275, %.preheader259
  %i.eg = phi i32 [ %i.as, %.preheader259 ], [ %i.gb, %.lr.ph275 ] ; 2 uses
  %.1227.lcssa = phi i32 [ %.0226.lcssa, %.preheader259 ], [ %i.fz, %.lr.ph275 ] ; 2 uses
  %.2223.lcssa = phi ptr [ %.1222.lcssa, %.preheader259 ], [ %i.fo, %.lr.ph275 ] ; 2 uses
  %.2219.lcssa = phi ptr [ %.1218.lcssa, %.preheader259 ], [ %i.fk, %.lr.ph275 ] ; 2 uses
  %.2215.lcssa = phi ptr [ %.1214.lcssa, %.preheader259 ], [ %i.fg, %.lr.ph275 ] ; 2 uses
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader259 ], [ %i.fy, %.lr.ph275 ] ; 2 uses
  %i.eh = icmp slt i32 %.1227.lcssa, %i.eg
  br i1 %i.eh, label %.lr.ph286, label %._crit_edge

.lr.ph275:                                        ; preds = %.preheader259, %.lr.ph275
  %.2274 = phi ptr [ %i.fy, %.lr.ph275 ], [ %.1.lcssa, %.preheader259 ] ; 3 uses
  %.2215273 = phi ptr [ %i.fg, %.lr.ph275 ], [ %.1214.lcssa, %.preheader259 ] ; 5 uses
  %.2219272 = phi ptr [ %i.fk, %.lr.ph275 ], [ %.1218.lcssa, %.preheader259 ] ; 5 uses
  %.2223271 = phi ptr [ %i.fo, %.lr.ph275 ], [ %.1222.lcssa, %.preheader259 ] ; 5 uses
  %.1227270 = phi i32 [ %i.fz, %.lr.ph275 ], [ %.0226.lcssa, %.preheader259 ]
  %i.ei = load <8 x float>, ptr %.2215273, align 1, !tbaa !63
  %i.ej = getelementptr inbounds nuw i8, ptr %.2215273, i64 32
  %i.ek = load <8 x float>, ptr %i.ej, align 1, !tbaa !63
  %i.el = getelementptr inbounds nuw i8, ptr %.2215273, i64 64
  %i.em = load <8 x float>, ptr %i.el, align 1, !tbaa !63 ; 2 uses
  %i.en = load <8 x float>, ptr %.2219272, align 1, !tbaa !63
  %i.eo = getelementptr inbounds nuw i8, ptr %.2219272, i64 32
  %i.ep = load <8 x float>, ptr %i.eo, align 1, !tbaa !63
  %i.eq = getelementptr inbounds nuw i8, ptr %.2219272, i64 64
  %i.er = load <8 x float>, ptr %i.eq, align 1, !tbaa !63 ; 2 uses
  %i.es = load <8 x float>, ptr %.2223271, align 1, !tbaa !63
  %i.et = getelementptr inbounds nuw i8, ptr %.2223271, i64 32
  %i.eu = load <8 x float>, ptr %i.et, align 1, !tbaa !63
  %i.ev = getelementptr inbounds nuw i8, ptr %.2223271, i64 64
  %i.ew = load <8 x float>, ptr %i.ev, align 1, !tbaa !63 ; 2 uses
  %i.ex = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ei, <8 x float> nofpclass(nan inf) %i.ek)
  %i.ey = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ex, <8 x float> nofpclass(nan inf) %i.em)
  %i.ez = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ey, <8 x float> nofpclass(nan inf) %i.en)
  %i.fa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ez, <8 x float> nofpclass(nan inf) %i.ep)
  %i.fb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.er, <8 x float> nofpclass(nan inf) %i.es)
  %i.fc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fb, <8 x float> nofpclass(nan inf) %i.eu)
  %i.fd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fc, <8 x float> nofpclass(nan inf) %i.ew)
  %i.fe = getelementptr inbounds nuw i8, ptr %.2215273, i64 96
  %i.ff = load <8 x float>, ptr %i.fe, align 1, !tbaa !63
  %i.fg = getelementptr inbounds nuw i8, ptr %.2215273, i64 128 ; 3 uses
  %i.fh = load <8 x float>, ptr %i.fg, align 1, !tbaa !63
  %i.fi = getelementptr inbounds nuw i8, ptr %.2219272, i64 96
  %i.fj = load <8 x float>, ptr %i.fi, align 1, !tbaa !63
  %i.fk = getelementptr inbounds nuw i8, ptr %.2219272, i64 128 ; 3 uses
  %i.fl = load <8 x float>, ptr %i.fk, align 1, !tbaa !63
  %i.fm = getelementptr inbounds nuw i8, ptr %.2223271, i64 96
  %i.fn = load <8 x float>, ptr %i.fm, align 1, !tbaa !63
  %i.fo = getelementptr inbounds nuw i8, ptr %.2223271, i64 128 ; 3 uses
  %i.fp = load <8 x float>, ptr %i.fo, align 1, !tbaa !63
  %i.fq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fa, <8 x float> nofpclass(nan inf) %i.fd)
  store <8 x float> %i.fq, ptr %.2274, align 1, !tbaa !63
  %i.fr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ff, <8 x float> nofpclass(nan inf) %i.fh)
  %i.fs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fr, <8 x float> nofpclass(nan inf) %i.em)
  %i.ft = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fs, <8 x float> nofpclass(nan inf) %i.fj)
  %i.fu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ft, <8 x float> nofpclass(nan inf) %i.fl)
  %i.fv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.er, <8 x float> nofpclass(nan inf) %i.fn)
  %i.fw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fu, <8 x float> nofpclass(nan inf) %i.fp)
  %i.fx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fw, <8 x float> nofpclass(nan inf) %i.ew)
  %10 = getelementptr inbounds nuw i8, ptr %.2274, i64 32
  %11 = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fx, <8 x float> nofpclass(nan inf) %i.fv)
  store <8 x float> %11, ptr %10, align 1, !tbaa !63
  %i.fy = getelementptr inbounds nuw i8, ptr %.2274, i64 64 ; 2 uses
  %i.fz = add nuw nsw i32 %.1227270, 2            ; 3 uses
  %i.ga = or disjoint i32 %i.fz, 1
  %i.gb = load i32, ptr %6, align 4, !tbaa !35    ; 2 uses
  %i.gc = icmp slt i32 %i.ga, %i.gb
  br i1 %i.gc, label %.lr.ph275, label %.preheader, !llvm.loop !248

.lr.ph286:                                        ; preds = %.preheader, %.lr.ph286
  %.3285 = phi ptr [ %i.ha, %.lr.ph286 ], [ %.2.lcssa, %.preheader ] ; 2 uses
  %.3216284 = phi ptr [ %i.gg, %.lr.ph286 ], [ %.2215.lcssa, %.preheader ] ; 3 uses
  %.3220283 = phi ptr [ %i.gl, %.lr.ph286 ], [ %.2219.lcssa, %.preheader ] ; 3 uses
  %.3224282 = phi ptr [ %i.gq, %.lr.ph286 ], [ %.2223.lcssa, %.preheader ] ; 3 uses
  %.2228281 = phi i32 [ %i.hb, %.lr.ph286 ], [ %.1227.lcssa, %.preheader ]
  %i.gd = load <8 x float>, ptr %.3216284, align 1, !tbaa !63
  %i.ge = getelementptr inbounds nuw i8, ptr %.3216284, i64 32
  %i.gf = load <8 x float>, ptr %i.ge, align 1, !tbaa !63
  %i.gg = getelementptr inbounds nuw i8, ptr %.3216284, i64 64 ; 3 uses
  %i.gh = load <8 x float>, ptr %i.gg, align 1, !tbaa !63
  %i.gi = load <8 x float>, ptr %.3220283, align 1, !tbaa !63
  %i.gj = getelementptr inbounds nuw i8, ptr %.3220283, i64 32
  %i.gk = load <8 x float>, ptr %i.gj, align 1, !tbaa !63
  %i.gl = getelementptr inbounds nuw i8, ptr %.3220283, i64 64 ; 3 uses
  %i.gm = load <8 x float>, ptr %i.gl, align 1, !tbaa !63
  %i.gn = load <8 x float>, ptr %.3224282, align 1, !tbaa !63
  %i.go = getelementptr inbounds nuw i8, ptr %.3224282, i64 32
  %i.gp = load <8 x float>, ptr %i.go, align 1, !tbaa !63
  %i.gq = getelementptr inbounds nuw i8, ptr %.3224282, i64 64 ; 3 uses
  %i.gr = load <8 x float>, ptr %i.gq, align 1, !tbaa !63
  %i.gs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gd, <8 x float> nofpclass(nan inf) %i.gf)
  %i.gt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gs, <8 x float> nofpclass(nan inf) %i.gh)
  %i.gu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gt, <8 x float> nofpclass(nan inf) %i.gi)
  %i.gv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gu, <8 x float> nofpclass(nan inf) %i.gk)
  %i.gw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gm, <8 x float> nofpclass(nan inf) %i.gn)
  %i.gx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gw, <8 x float> nofpclass(nan inf) %i.gp)
  %i.gy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gx, <8 x float> nofpclass(nan inf) %i.gr)
  %i.gz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gv, <8 x float> nofpclass(nan inf) %i.gy)
  store <8 x float> %i.gz, ptr %.3285, align 1, !tbaa !63
  %i.ha = getelementptr inbounds nuw i8, ptr %.3285, i64 32 ; 2 uses
  %i.hb = add nuw nsw i32 %.2228281, 1            ; 2 uses
  %i.hc = load i32, ptr %6, align 4, !tbaa !35    ; 2 uses
  %i.hd = icmp slt i32 %i.hb, %i.hc
  br i1 %i.hd, label %.lr.ph286, label %._crit_edge, !llvm.loop !249

._crit_edge:                                      ; preds = %.lr.ph286, %.preheader
  %i.he = phi i32 [ %i.eg, %.preheader ], [ %i.hc, %.lr.ph286 ]
  %.3224.lcssa = phi ptr [ %.2223.lcssa, %.preheader ], [ %i.gq, %.lr.ph286 ]
  %.3220.lcssa = phi ptr [ %.2219.lcssa, %.preheader ], [ %i.gl, %.lr.ph286 ]
  %.3216.lcssa = phi ptr [ %.2215.lcssa, %.preheader ], [ %i.gg, %.lr.ph286 ]
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader ], [ %i.ha, %.lr.ph286 ]
  %i.hf = load i32, ptr %7, align 4, !tbaa !35
  %i.hg = sext i32 %i.hf to i64                   ; 3 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %.3216.lcssa, i64 %i.hg
  %i.hi = getelementptr inbounds [4 x i8], ptr %.3220.lcssa, i64 %i.hg
  %i.hj = getelementptr inbounds [4 x i8], ptr %.3224.lcssa, i64 %i.hg
  %i.hk = add nuw nsw i32 %.0225291, 1            ; 2 uses
  %i.hl = load i32, ptr %5, align 4, !tbaa !35    ; 2 uses
  %i.hm = icmp slt i32 %i.hk, %i.hl
  br i1 %i.hm, label %.preheader260, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !250

._crit_edge298:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge298, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #14

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26pooling2x2s2_max_pack4_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #12 personality ptr @__gxx_personality_v0 {
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
  %.not86 = icmp sgt i32 %i.k, %i.j
  br i1 %.not86, label %._crit_edge88, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i32, ptr %5, align 4, !tbaa !35     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.noexc.preheader, label %._crit_edge88

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.q, %.noexc.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.v = phi i32 [ %i.q, %.noexc.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv = phi i64 [ %i.s, %.noexc.preheader ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %.noexc
  %i.x = load i32, ptr %6, align 4, !tbaa !35     ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.z = load ptr, ptr %4, align 8, !tbaa !40, !noalias !260
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !260
  %i.ab = mul i64 %i.aa, %indvars.iv
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !33, !noalias !260
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %i.af = load ptr, ptr %3, align 8, !tbaa !40, !noalias !261
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !261
  %i.ah = mul i64 %i.ag, %indvars.iv
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !33, !noalias !261 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.l, align 4, !tbaa !34, !noalias !261
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
  br i1 %exitcond.not, label %._crit_edge88, label %.noexc, !llvm.loop !257

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
  br i1 %i.bi, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !258

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
  br i1 %i.bq, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !259

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
define internal void @_ZN4ncnnL26pooling3x3s2_max_pack4_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #12 personality ptr @__gxx_personality_v0 {
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
  %i.w = load ptr, ptr %3, align 8, !tbaa !40, !noalias !270
  %i.x = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !270
  %i.y = mul i64 %i.x, %indvars.iv
  %i.z = load i64, ptr %i.n, align 8, !tbaa !33, !noalias !270 ; 3 uses
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa ; 3 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !34, !noalias !270
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = shl nsw i64 %i.ad, 1
  %i.af = mul i64 %i.ae, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %i.ah = mul i64 %i.z, %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load ptr, ptr %4, align 8, !tbaa !40, !noalias !271
  %i.ak = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !271
  %i.al = mul i64 %i.ak, %indvars.iv
  %i.am = load i64, ptr %i.p, align 8, !tbaa !33, !noalias !271
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
  br i1 %exitcond.not, label %._crit_edge181, label %.noexc, !llvm.loop !266

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
  br i1 %i.co, label %.lr.ph, label %.preheader, !llvm.loop !267

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
  br i1 %i.dp, label %.lr.ph169, label %._crit_edge, !llvm.loop !268

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
  br i1 %i.dy, label %.preheader154, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !269

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
define internal void @_ZN4ncnnL20pooling2x2s2_max_avxERKNS_3MatERS0_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #11 personality ptr @__gxx_personality_v0 {
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
  %.not127 = icmp sgt i32 %i.k, %i.j
  br i1 %.not127, label %._crit_edge129, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !35     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.noexc.preheader, label %._crit_edge129

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge126
  %i.t = phi i32 [ %i.p, %.noexc.preheader ], [ %i.ak, %._crit_edge126 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.r, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge126 ] ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph125.preheader, label %._crit_edge126

.lr.ph125.preheader:                              ; preds = %.noexc
  %i.v = load ptr, ptr %3, align 8, !tbaa !40, !noalias !279
  %i.w = load i64, ptr %i.l, align 8, !tbaa !41, !noalias !279
  %i.x = mul i64 %i.w, %indvars.iv
  %i.y = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !279
  %i.z = mul i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %5, align 4, !tbaa !35
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load ptr, ptr %4, align 8, !tbaa !40, !noalias !280
  %i.af = load i64, ptr %i.n, align 8, !tbaa !41, !noalias !280
  %i.ag = mul i64 %i.af, %indvars.iv
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !33, !noalias !280
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ai
  br label %.lr.ph125

._crit_edge126:                                   ; preds = %._crit_edge, %.noexc
  %i.ak = phi i32 [ %i.t, %.noexc ], [ %i.dr, %._crit_edge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge129, label %.noexc, !llvm.loop !276

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %._crit_edge
  %.056124 = phi ptr [ %.2.lcssa, %._crit_edge ], [ %i.aj, %.lr.ph125.preheader ] ; 4 uses
  %.059123 = phi i32 [ %i.dq, %._crit_edge ], [ 0, %.lr.ph125.preheader ]
  %.060122 = phi ptr [ %i.dp, %._crit_edge ], [ %i.ad, %.lr.ph125.preheader ] ; 4 uses
  %.063121 = phi ptr [ %i.do, %._crit_edge ], [ %i.aa, %.lr.ph125.preheader ] ; 4 uses
  %i.al = load i32, ptr %7, align 4, !tbaa !35    ; 3 uses
  %i.am = ashr i32 %i.al, 2                       ; 4 uses
  %i.an = and i32 %i.al, 3                        ; 3 uses
  %i.ao = icmp sgt i32 %i.am, 0
  br i1 %i.ao, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph125
  %i.ap = and i32 %i.al, 4
  %lcmp.mod.not = icmp eq i32 %i.ap, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aq = load <8 x float>, ptr %.063121, align 1, !tbaa !63
  %i.ar = load <8 x float>, ptr %.060122, align 1, !tbaa !63
  %i.as = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aq, <8 x float> nofpclass(nan inf) %i.ar) ; 2 uses
  %i.at = shufflevector <8 x float> %i.as, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.au = shufflevector <8 x float> %i.as, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.av = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.at, <4 x float> nofpclass(nan inf) %i.au)
  store <4 x float> %i.av, ptr %.056124, align 1, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %.063121, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.060122, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.056124, i64 16 ; 2 uses
  %i.az = add nsw i32 %i.am, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.1106.unr = phi ptr [ %.056124, %.lr.ph.preheader ], [ %i.ay, %.lr.ph.prol ]
  %.058105.unr = phi i32 [ %i.am, %.lr.ph.preheader ], [ %i.az, %.lr.ph.prol ]
  %.161104.unr = phi ptr [ %.060122, %.lr.ph.preheader ], [ %i.ax, %.lr.ph.prol ]
  %.164103.unr = phi ptr [ %.063121, %.lr.ph.preheader ], [ %i.aw, %.lr.ph.prol ]
  %.lcssa161.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.aw, %.lr.ph.prol ]
  %.lcssa160.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.ax, %.lr.ph.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.ay, %.lr.ph.prol ]
  %i.ba = icmp eq i32 %i.am, 1
  br i1 %i.ba, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph125
  %.164.lcssa = phi ptr [ %.063121, %.lr.ph125 ], [ %.lcssa161.unr, %.lr.ph.prol.loopexit ], [ %i.bq, %.lr.ph ] ; 8 uses
  %.161.lcssa = phi ptr [ %.060122, %.lr.ph125 ], [ %.lcssa160.unr, %.lr.ph.prol.loopexit ], [ %i.br, %.lr.ph ] ; 8 uses
  %.1.lcssa = phi ptr [ %.056124, %.lr.ph125 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bs, %.lr.ph ] ; 5 uses
  %.not130 = icmp eq i32 %i.an, 0
  br i1 %.not130, label %._crit_edge, label %.lr.ph115

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.1106 = phi ptr [ %i.bs, %.lr.ph ], [ %.1106.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.058105 = phi i32 [ %i.bt, %.lr.ph ], [ %.058105.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.161104 = phi ptr [ %i.br, %.lr.ph ], [ %.161104.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.164103 = phi ptr [ %i.bq, %.lr.ph ], [ %.164103.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.bb = load <8 x float>, ptr %.164103, align 1, !tbaa !63
end_hunk_0
