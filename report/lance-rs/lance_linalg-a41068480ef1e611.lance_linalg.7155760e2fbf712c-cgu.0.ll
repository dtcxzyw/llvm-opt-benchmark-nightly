Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
inline.NumInlined: 5334
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 146
begin_hunk_0_@_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8621dot_batch_f32_avx_fma:bb.a
  br i1 %exitcond.not.i.i.i.i.i.i.4, label %_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.5

.lr.ph.i.i.i.i.i.i.5:                             ; preds = %.lr.ph.i.i.i.i.i.i.4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  %.val15.i.i.i.i.i.i.5 = load float, ptr %i.bb, align 4, !alias.scope !7844, !noalias !7847, !noundef !18
  %.val16.i.i.i.i.i.i.5 = load float, ptr %i.dt, align 4, !alias.scope !7845, !noalias !7847, !noundef !18
  %i.du = fmul float %.val15.i.i.i.i.i.i.5, %.val16.i.i.i.i.i.i.5
  %i.dv = fadd float %i.ds, %i.du                 ; 2 uses
  br i1 %exitcond.not.i.i.i.i.i.i.5, label %_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.6

.lr.ph.i.i.i.i.i.i.6:                             ; preds = %.lr.ph.i.i.i.i.i.i.5
  %i.dw = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %.val15.i.i.i.i.i.i.6 = load float, ptr %i.bc, align 4, !alias.scope !7844, !noalias !7847, !noundef !18
  %.val16.i.i.i.i.i.i.6 = load float, ptr %i.dw, align 4, !alias.scope !7845, !noalias !7847, !noundef !18
  %i.dx = fmul float %.val15.i.i.i.i.i.i.6, %.val16.i.i.i.i.i.i.6
  %i.dy = fadd float %i.dv, %i.dx
  br label %_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma.exit.loopexit

_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.6, %.lr.ph.i.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.1, %._crit_edge.i.loopexit
  %.lcssa83 = phi float [ %i.dg, %._crit_edge.i.loopexit ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.dm, %.lr.ph.i.i.i.i.i.i.2 ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.3 ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.4 ], [ %i.dv, %.lr.ph.i.i.i.i.i.i.5 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.6 ]
  %i.dz = add nuw nsw i64 %.sroa.12.029, 1        ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.12.029
  %i.eb = shufflevector <8 x float> %.lcssa82, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ec = shufflevector <8 x float> %.lcssa82, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ed = fadd <4 x float> %i.eb, %i.ec           ; 2 uses
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ef = fadd <4 x float> %i.ed, %i.ee           ; 2 uses
  %shift75 = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop76 = fadd <4 x float> %i.ef, %shift75
  %i.eg = extractelement <4 x float> %foldExtExtBinop76, i64 0
  %i.eh = fadd float %i.eg, %.lcssa83
  store float %i.eh, ptr %i.ea, align 4
  %i.ei = icmp samesign ult i64 %i.dz, %.sroa.0.0.i.i.i
  br i1 %i.ei, label %.lr.ph.i.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma.exit.loopexit, %._crit_edge.i.loopexit.us42, %_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma.exit.loopexit.us, %._crit_edge.i.us31.us, %middle.block, %vec.epilog.middle.block, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExactfEECs9JgWGBoX3PY_12lance_linalg.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance5l2_u83x8610l2_u8_avx2(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #21 {
bb.a:
  %.not105 = icmp samesign ult i64 %1, 32
  br i1 %.not105, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.a = and i64 %1, 9223372036854775776
  %i.b = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bp)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.c = phi i32 [ 0, %bb.a ], [ %i.b, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.02.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.a, %._crit_edge.loopexit ] ; 7 uses
  %i.d = icmp samesign ult i64 %.sroa.02.0.lcssa, %1
  br i1 %i.d, label %.lr.ph112.preheader, label %._crit_edge113

.lr.ph112.preheader:                              ; preds = %._crit_edge
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.02.0.lcssa, i64 %3) ; 3 uses
  %i.e = xor i64 %.sroa.02.0.lcssa, -1
  %i.f = add nsw i64 %1, %i.e
  %i.g = sub nsw i64 %umax, %.sroa.02.0.lcssa
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.g)
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 33
  br i1 %min.iters.check, label %.lr.ph112.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph112.preheader
  %i.j = and i64 %i.i, 31                         ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 32, i64 %i.j
  %n.vec = sub i64 %i.i, %i.l                     ; 2 uses
  %i.m = add i64 %.sroa.02.0.lcssa, %n.vec
  %i.n = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.c, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.n, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi122 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi123 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi124 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.o = add i64 %.sroa.02.0.lcssa, %index        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %wide.load = load <8 x i8>, ptr %i.p, align 1
  %wide.load125 = load <8 x i8>, ptr %i.q, align 1
  %wide.load126 = load <8 x i8>, ptr %i.r, align 1
  %wide.load127 = load <8 x i8>, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.o ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %wide.load128 = load <8 x i8>, ptr %i.t, align 1
  %wide.load129 = load <8 x i8>, ptr %i.u, align 1
  %wide.load130 = load <8 x i8>, ptr %i.v, align 1
  %wide.load131 = load <8 x i8>, ptr %i.w, align 1
  %i.x = zext <8 x i8> %wide.load to <8 x i16>
  %i.y = zext <8 x i8> %wide.load125 to <8 x i16>
  %i.z = zext <8 x i8> %wide.load126 to <8 x i16>
  %i.aa = zext <8 x i8> %wide.load127 to <8 x i16>
  %i.ab = zext <8 x i8> %wide.load128 to <8 x i16>
  %i.ac = zext <8 x i8> %wide.load129 to <8 x i16>
  %i.ad = zext <8 x i8> %wide.load130 to <8 x i16>
  %i.ae = zext <8 x i8> %wide.load131 to <8 x i16>
  %i.af = sub nsw <8 x i16> %i.x, %i.ab
  %i.ag = sub nsw <8 x i16> %i.y, %i.ac
  %i.ah = sub nsw <8 x i16> %i.z, %i.ad
  %i.ai = sub nsw <8 x i16> %i.aa, %i.ae
  %i.aj = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.af, i1 true)
  %i.ak = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ag, i1 true)
  %i.al = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ah, i1 true)
  %i.am = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ai, i1 true)
  %i.an = zext nneg <8 x i16> %i.aj to <8 x i32>  ; 2 uses
  %i.ao = zext nneg <8 x i16> %i.ak to <8 x i32>  ; 2 uses
  %i.ap = zext nneg <8 x i16> %i.al to <8 x i32>  ; 2 uses
  %i.aq = zext nneg <8 x i16> %i.am to <8 x i32>  ; 2 uses
  %i.ar = mul nuw nsw <8 x i32> %i.an, %i.an
  %i.as = mul nuw nsw <8 x i32> %i.ao, %i.ao
  %i.at = mul nuw nsw <8 x i32> %i.ap, %i.ap
  %i.au = mul nuw nsw <8 x i32> %i.aq, %i.aq
  %i.av = add <8 x i32> %i.ar, %vec.phi           ; 2 uses
  %i.aw = add <8 x i32> %i.as, %vec.phi122        ; 2 uses
  %i.ax = add <8 x i32> %i.at, %vec.phi123        ; 2 uses
  %i.ay = add <8 x i32> %i.au, %vec.phi124        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !7850

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.aw, %i.av
  %bin.rdx132 = add <8 x i32> %i.ax, %bin.rdx
  %bin.rdx133 = add <8 x i32> %i.ay, %bin.rdx132
  %i.ba = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx133)
  br label %.lr.ph112.preheader134

.lr.ph112.preheader134:                           ; preds = %.lr.ph112.preheader, %middle.block
  %.sroa.0.0110.ph = phi i32 [ %i.c, %.lr.ph112.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.1109.ph = phi i64 [ %.sroa.02.0.lcssa, %.lr.ph112.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph112

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.bb = phi i64 [ %i.bq, %.lr.ph ], [ 32, %bb.a ] ; 2 uses
  %.sroa.02.0107 = phi i64 [ %i.bb, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.bc = phi <8 x i32> [ %i.bp, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.0107
  %.sroa.0.0.copyload.i101 = load <32 x i8>, ptr %i.bd, align 1, !noalias !7856 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.02.0107
  %.sroa.0.0.copyload.i27102 = load <32 x i8>, ptr %i.be, align 1, !noalias !7857 ; 2 uses
  %i.bf = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %.sroa.0.0.copyload.i101, <32 x i8> %.sroa.0.0.copyload.i27102)
  %i.bg = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %.sroa.0.0.copyload.i27102, <32 x i8> %.sroa.0.0.copyload.i101)
  %i.bh = or <32 x i8> %i.bf, %i.bg               ; 2 uses
  %i.bi = shufflevector <32 x i8> %i.bh, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.bj = shufflevector <32 x i8> %i.bh, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.bk = bitcast <32 x i8> %i.bi to <16 x i16>   ; 2 uses
  %i.bl = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bk, <16 x i16> %i.bk)
  %i.bm = add <8 x i32> %i.bl, %i.bc
  %i.bn = bitcast <32 x i8> %i.bj to <16 x i16>   ; 2 uses
  %i.bo = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bn, <16 x i16> %i.bn)
  %i.bp = add <8 x i32> %i.bm, %i.bo              ; 2 uses
  %i.bq = add nuw i64 %i.bb, 32                   ; 2 uses
  %.not = icmp ugt i64 %i.bq, %1
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge113:                                   ; preds = %bb.b, %._crit_edge
  %.sroa.0.0.lcssa = phi i32 [ %i.c, %._crit_edge ], [ %i.ca, %bb.b ]
  ret i32 %.sroa.0.0.lcssa

.lr.ph112:                                        ; preds = %.lr.ph112.preheader134, %bb.b
  %.sroa.0.0110 = phi i32 [ %i.ca, %bb.b ], [ %.sroa.0.0110.ph, %.lr.ph112.preheader134 ]
  %.sroa.02.1109 = phi i64 [ %i.cb, %bb.b ], [ %.sroa.02.1109.ph, %.lr.ph112.preheader134 ] ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.02.1109, %umax
  br i1 %exitcond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph112
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1109
  %i.bs = load i8, ptr %i.br, align 1, !noundef !18
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.02.1109
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !18
  %i.bv = zext i8 %i.bs to i16
  %i.bw = zext i8 %i.bu to i16
  %i.bx = sub nsw i16 %i.bv, %i.bw
  %.sroa.0.0.i = tail call i16 @llvm.abs.i16(i16 %i.bx, i1 true)
  %i.by = zext nneg i16 %.sroa.0.0.i to i32       ; 2 uses
  %i.bz = mul nuw nsw i32 %i.by, %i.by
  %i.ca = add i32 %i.bz, %.sroa.0.0110            ; 2 uses
  %i.cb = add i64 %.sroa.02.1109, 1               ; 2 uses
  %exitcond118.not = icmp eq i64 %i.cb, %1
  br i1 %exitcond118.not, label %._crit_edge113, label %.lr.ph112, !llvm.loop !7855

bb.c:                                             ; preds = %.lr.ph112
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance5l2_u83x8617l2_u8_avx512_vnni(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #31 {
bb.a:
  %.not69 = icmp samesign ult i64 %1, 64
  br i1 %.not69, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.a = and i64 %1, 9223372036854775744
  %i.b = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.bm)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.02.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.a, %._crit_edge.loopexit ] ; 7 uses
  %i.c = icmp samesign ult i64 %.sroa.02.0.lcssa, %1
  br i1 %i.c, label %.lr.ph75.preheader, label %._crit_edge76

.lr.ph75.preheader:                               ; preds = %._crit_edge
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.02.0.lcssa, i64 %3) ; 3 uses
  %i.d = xor i64 %.sroa.02.0.lcssa, -1
  %i.e = add nsw i64 %1, %i.d
  %i.f = sub nsw i64 %umax, %.sroa.02.0.lcssa
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f)
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.h, 65
  br i1 %min.iters.check, label %.lr.ph75.preheader100, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph75.preheader
  %i.i = and i64 %i.h, 63                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 64, i64 %i.i
  %n.vec = sub i64 %i.h, %i.k                     ; 2 uses
  %i.l = add i64 %.sroa.02.0.lcssa, %n.vec
  %i.m = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i32> [ %i.m, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi88 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi89 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi90 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %i.n = add i64 %.sroa.02.0.lcssa, %index        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %wide.load = load <16 x i8>, ptr %i.o, align 1
  %wide.load91 = load <16 x i8>, ptr %i.p, align 1
  %wide.load92 = load <16 x i8>, ptr %i.q, align 1
  %wide.load93 = load <16 x i8>, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.n ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %wide.load94 = load <16 x i8>, ptr %i.s, align 1
  %wide.load95 = load <16 x i8>, ptr %i.t, align 1
  %wide.load96 = load <16 x i8>, ptr %i.u, align 1
  %wide.load97 = load <16 x i8>, ptr %i.v, align 1
  %i.w = zext <16 x i8> %wide.load to <16 x i16>
  %i.x = zext <16 x i8> %wide.load91 to <16 x i16>
  %i.y = zext <16 x i8> %wide.load92 to <16 x i16>
  %i.z = zext <16 x i8> %wide.load93 to <16 x i16>
  %i.aa = zext <16 x i8> %wide.load94 to <16 x i16>
  %i.ab = zext <16 x i8> %wide.load95 to <16 x i16>
  %i.ac = zext <16 x i8> %wide.load96 to <16 x i16>
  %i.ad = zext <16 x i8> %wide.load97 to <16 x i16>
  %i.ae = sub nsw <16 x i16> %i.w, %i.aa
  %i.af = sub nsw <16 x i16> %i.x, %i.ab
  %i.ag = sub nsw <16 x i16> %i.y, %i.ac
  %i.ah = sub nsw <16 x i16> %i.z, %i.ad
  %i.ai = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %i.ae, i1 true)
  %i.aj = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %i.af, i1 true)
  %i.ak = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %i.ag, i1 true)
  %i.al = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %i.ah, i1 true)
  %i.am = zext nneg <16 x i16> %i.ai to <16 x i32> ; 2 uses
  %i.an = zext nneg <16 x i16> %i.aj to <16 x i32> ; 2 uses
  %i.ao = zext nneg <16 x i16> %i.ak to <16 x i32> ; 2 uses
  %i.ap = zext nneg <16 x i16> %i.al to <16 x i32> ; 2 uses
  %i.aq = mul nuw nsw <16 x i32> %i.am, %i.am
  %i.ar = mul nuw nsw <16 x i32> %i.an, %i.an
  %i.as = mul nuw nsw <16 x i32> %i.ao, %i.ao
  %i.at = mul nuw nsw <16 x i32> %i.ap, %i.ap
  %i.au = add <16 x i32> %i.aq, %vec.phi          ; 2 uses
  %i.av = add <16 x i32> %i.ar, %vec.phi88        ; 2 uses
  %i.aw = add <16 x i32> %i.as, %vec.phi89        ; 2 uses
  %i.ax = add <16 x i32> %i.at, %vec.phi90        ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !7858

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i32> %i.av, %i.au
  %bin.rdx98 = add <16 x i32> %i.aw, %bin.rdx
  %bin.rdx99 = add <16 x i32> %i.ax, %bin.rdx98
  %i.az = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx99)
  br label %.lr.ph75.preheader100

.lr.ph75.preheader100:                            ; preds = %.lr.ph75.preheader, %middle.block
  %.sroa.0.073.ph = phi i32 [ %.lcssa, %.lr.ph75.preheader ], [ %i.az, %middle.block ]
  %.sroa.02.172.ph = phi i64 [ %.sroa.02.0.lcssa, %.lr.ph75.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph75

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.ba = phi i64 [ %i.bn, %.lr.ph ], [ 64, %bb.a ] ; 2 uses
  %.sroa.02.070 = phi i64 [ %i.ba, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.bb = phi <16 x i32> [ %i.bm, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.070
  %.val1365.a = load <64 x i8>, ptr %i.bc, align 1, !noalias !52 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.02.070
  %.val1266.a = load <64 x i8>, ptr %i.bd, align 1, !noalias !52 ; 2 uses
  %i.be = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %.val1365.a, <64 x i8> %.val1266.a)
  %i.bf = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %.val1266.a, <64 x i8> %.val1365.a)
  %i.bg = or <64 x i8> %i.bf, %i.be               ; 2 uses
  %i.bh = shufflevector <64 x i8> %i.bg, <64 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <64 x i32> <i32 0, i32 64, i32 1, i32 65, i32 2, i32 66, i32 3, i32 67, i32 4, i32 68, i32 5, i32 69, i32 6, i32 70, i32 7, i32 71, i32 16, i32 80, i32 17, i32 81, i32 18, i32 82, i32 19, i32 83, i32 20, i32 84, i32 21, i32 85, i32 22, i32 86, i32 23, i32 87, i32 32, i32 96, i32 33, i32 97, i32 34, i32 98, i32 35, i32 99, i32 36, i32 100, i32 37, i32 101, i32 38, i32 102, i32 39, i32 103, i32 48, i32 112, i32 49, i32 113, i32 50, i32 114, i32 51, i32 115, i32 52, i32 116, i32 53, i32 117, i32 54, i32 118, i32 55, i32 119>
  %i.bi = shufflevector <64 x i8> %i.bg, <64 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <64 x i32> <i32 8, i32 72, i32 9, i32 73, i32 10, i32 74, i32 11, i32 75, i32 12, i32 76, i32 13, i32 77, i32 14, i32 78, i32 15, i32 79, i32 24, i32 88, i32 25, i32 89, i32 26, i32 90, i32 27, i32 91, i32 28, i32 92, i32 29, i32 93, i32 30, i32 94, i32 31, i32 95, i32 40, i32 104, i32 41, i32 105, i32 42, i32 106, i32 43, i32 107, i32 44, i32 108, i32 45, i32 109, i32 46, i32 110, i32 47, i32 111, i32 56, i32 120, i32 57, i32 121, i32 58, i32 122, i32 59, i32 123, i32 60, i32 124, i32 61, i32 125, i32 62, i32 126, i32 63, i32 127>
  %i.bj = bitcast <64 x i8> %i.bh to <32 x i16>   ; 2 uses
  %i.bk = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bb, <32 x i16> %i.bj, <32 x i16> %i.bj)
  %i.bl = bitcast <64 x i8> %i.bi to <32 x i16>   ; 2 uses
  %i.bm = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bk, <32 x i16> %i.bl, <32 x i16> %i.bl) ; 2 uses
  %i.bn = add nuw i64 %i.ba, 64                   ; 2 uses
  %.not = icmp ugt i64 %i.bn, %1
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge76:                                    ; preds = %bb.b, %._crit_edge
  %.sroa.0.0.lcssa = phi i32 [ %.lcssa, %._crit_edge ], [ %i.bx, %bb.b ]
  ret i32 %.sroa.0.0.lcssa

.lr.ph75:                                         ; preds = %.lr.ph75.preheader100, %bb.b
  %.sroa.0.073 = phi i32 [ %i.bx, %bb.b ], [ %.sroa.0.073.ph, %.lr.ph75.preheader100 ]
  %.sroa.02.172 = phi i64 [ %i.by, %bb.b ], [ %.sroa.02.172.ph, %.lr.ph75.preheader100 ] ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.02.172, %umax
  br i1 %exitcond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph75
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.172
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !18
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.02.172
  %i.br = load i8, ptr %i.bq, align 1, !noundef !18
  %i.bs = zext i8 %i.bp to i16
  %i.bt = zext i8 %i.br to i16
  %i.bu = sub nsw i16 %i.bs, %i.bt
  %.sroa.0.0.i = tail call i16 @llvm.abs.i16(i16 %i.bu, i1 true)
  %i.bv = zext nneg i16 %.sroa.0.0.i to i32       ; 2 uses
  %i.bw = mul nuw nsw i32 %i.bv, %i.bv
  %i.bx = add i32 %i.bw, %.sroa.0.073             ; 2 uses
  %i.by = add i64 %.sroa.02.172, 1                ; 2 uses
  %exitcond82.not = icmp eq i64 %i.by, %1
  br i1 %exitcond82.not, label %._crit_edge76, label %.lr.ph75, !llvm.loop !7859

bb.c:                                             ; preds = %.lr.ph75
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f32_x8615cosine_fast_avx(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, float noundef %2, ptr noalias noundef nonnull readonly align 4 captures(none) %3, i64 noundef range(i64 0, 2305843009213693952) %4) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 2305843009213693944          ; 5 uses
  %i.b = lshr i64 %1, 3                           ; 3 uses
  switch i64 %i.b, label %.lr.ph.preheader.new [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.epil.preheader
  ]

.lr.ph.preheader.new:                             ; preds = %bb.a
  %unroll_iter = and i64 %i.b, 288230376151711742
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.034 = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.n, %.lr.ph ]
  %.sroa.02.033 = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.p, %.lr.ph ]
  %.sroa.017.031 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.j, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = or disjoint i64 %.sroa.017.031, 8        ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.017.031
  %.sroa.019.0.copyload = load <8 x float>, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.017.031
  %.sroa.020.0.copyload = load <8 x float>, ptr %i.e, align 4 ; 3 uses
  %i.f = fmul <8 x float> %.sroa.019.0.copyload, %.sroa.020.0.copyload
  %i.g = fadd <8 x float> %.sroa.0.034, %i.f
  %i.h = fmul <8 x float> %.sroa.020.0.copyload, %.sroa.020.0.copyload
  %i.i = fadd <8 x float> %.sroa.02.033, %i.h
  %i.j = add nuw nsw i64 %.sroa.017.031, 16       ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %.sroa.019.0.copyload.1 = load <8 x float>, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.c
  %.sroa.020.0.copyload.1 = load <8 x float>, ptr %i.l, align 4 ; 3 uses
  %i.m = fmul <8 x float> %.sroa.019.0.copyload.1, %.sroa.020.0.copyload.1
  %i.n = fadd <8 x float> %i.g, %i.m              ; 3 uses
  %i.o = fmul <8 x float> %.sroa.020.0.copyload.1, %.sroa.020.0.copyload.1
  %i.p = fadd <8 x float> %i.i, %i.o              ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.q = and i64 %1, 8
  %lcmp.mod.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %bb.a, %._crit_edge.loopexit.unr-lcssa
  %.sroa.0.034.epil.init = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.n, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.02.033.epil.init = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.p, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.017.031.epil.init = phi i64 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod49 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.017.031.epil.init
  %.sroa.019.0.copyload.epil = load <8 x float>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.017.031.epil.init
  %.sroa.020.0.copyload.epil = load <8 x float>, ptr %i.s, align 4 ; 3 uses
  %i.t = fmul <8 x float> %.sroa.019.0.copyload.epil, %.sroa.020.0.copyload.epil
  %i.u = fadd <8 x float> %.sroa.0.034.epil.init, %i.t
  %i.v = fmul <8 x float> %.sroa.020.0.copyload.epil, %.sroa.020.0.copyload.epil
  %i.w = fadd <8 x float> %.sroa.02.033.epil.init, %i.v
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.sroa.02.0.lcssa = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.p, %._crit_edge.loopexit.unr-lcssa ], [ %i.w, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.0.0.lcssa = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.n, %._crit_edge.loopexit.unr-lcssa ], [ %i.u, %.lr.ph.epil.preheader ] ; 2 uses
  %i.x = icmp samesign ugt i64 %i.a, %4
  br i1 %i.x, label %bb.b, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit11, !prof !23

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef range(i64 0, 2305843009213693945) %i.a, i64 noundef range(i64 0, 2305843009213693952) %4, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #74, !noalias !7862
  unreachable

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit11: ; preds = %._crit_edge
  %i.y = shufflevector <8 x float> %.sroa.02.0.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.z = shufflevector <8 x float> %.sroa.02.0.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aa = fadd <4 x float> %i.y, %i.z             ; 2 uses
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ac = fadd <4 x float> %i.aa, %i.ab           ; 2 uses
  %shift = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.ac, %shift
  %i.ad = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ae = shufflevector <8 x float> %.sroa.0.0.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.af = shufflevector <8 x float> %.sroa.0.0.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ag = fadd <4 x float> %i.ae, %i.af           ; 2 uses
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ai = fadd <4 x float> %i.ag, %i.ah           ; 2 uses
  %shift43 = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop44 = fadd <4 x float> %i.ai, %shift43
  %i.aj = extractelement <4 x float> %foldExtExtBinop44, i64 0
  %i.ak = sub nuw nsw i64 %4, %i.a                ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.a ; 2 uses
  %i.am = tail call fastcc noundef float @_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l222norm_l2_f32_dispatched(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.al, i64 noundef range(i64 0, 2305843009213693952) %i.ak) ; 2 uses
  %i.an = fmul float %i.am, %i.am
  %i.ao = fadd float %i.ad, %i.an
  %i.ap = and i64 %1, 7
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.ar = tail call fastcc noundef float @_RNvXs0_NtNtCs9JgWGBoX3PY_12lance_linalg8distance3dotfNtB5_3Dot3dot(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.aq, i64 noundef range(i64 0, 2305843009213693952) %i.ap, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.al, i64 noundef range(i64 0, 2305843009213693952) %i.ak)
  %i.as = fadd float %i.aj, %i.ar
  %i.at = fdiv float %i.as, %2
  %i.au = tail call noundef float @llvm.sqrt.f32(float %i.ao)
  %i.av = fdiv float %i.at, %i.au
  %i.aw = fsub float 1.000000e+00, %i.av
  ret float %i.aw
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f32_x8618cosine_fast_avx512(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, float noundef %2, ptr noalias noundef nonnull readonly align 4 captures(none) %3, i64 noundef range(i64 0, 2305843009213693952) %4) unnamed_addr #28 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 2305843009213693936          ; 3 uses
  %i.b = lshr i64 %1, 4                           ; 3 uses
  %.not.i.i46 = icmp eq i64 %i.b, 0
  br i1 %.not.i.i46, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.c = icmp samesign ult i64 %1, 64
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.b, 144115188075855868
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.050 = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ]
  %.sroa.02.049 = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ]
  %.sroa.025.048 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.d = or disjoint i64 %.sroa.025.048, 16       ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.025.048
  %.sroa.0.0.copyload.i = load <16 x float>, ptr %i.e, align 4, !noalias !7868
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.025.048
  %.sroa.0.0.copyload.i18 = load <16 x float>, ptr %i.f, align 4, !noalias !7869 ; 3 uses
  %i.g = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i, <16 x float> %.sroa.0.0.copyload.i18, <16 x float> %.sroa.0.050)
  %i.h = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i18, <16 x float> %.sroa.0.0.copyload.i18, <16 x float> %.sroa.02.049)
  %i.i = or disjoint i64 %.sroa.025.048, 32       ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %.sroa.0.0.copyload.i.1 = load <16 x float>, ptr %i.j, align 4, !noalias !7868
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.d
  %.sroa.0.0.copyload.i18.1 = load <16 x float>, ptr %i.k, align 4, !noalias !7869 ; 3 uses
  %i.l = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.1, <16 x float> %.sroa.0.0.copyload.i18.1, <16 x float> %i.g)
  %i.m = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i18.1, <16 x float> %.sroa.0.0.copyload.i18.1, <16 x float> %i.h)
  %i.n = or disjoint i64 %.sroa.025.048, 48       ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %.sroa.0.0.copyload.i.2 = load <16 x float>, ptr %i.o, align 4, !noalias !7868
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.i
  %.sroa.0.0.copyload.i18.2 = load <16 x float>, ptr %i.p, align 4, !noalias !7869 ; 3 uses
  %i.q = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.2, <16 x float> %.sroa.0.0.copyload.i18.2, <16 x float> %i.l)
  %i.r = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i18.2, <16 x float> %.sroa.0.0.copyload.i18.2, <16 x float> %i.m)
  %i.s = add nuw nsw i64 %.sroa.025.048, 64       ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %.sroa.0.0.copyload.i.3 = load <16 x float>, ptr %i.t, align 4, !noalias !7868
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.n
  %.sroa.0.0.copyload.i18.3 = load <16 x float>, ptr %i.u, align 4, !noalias !7869 ; 3 uses
  %i.v = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.3, <16 x float> %.sroa.0.0.copyload.i18.3, <16 x float> %i.q) ; 3 uses
  %i.w = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i18.3, <16 x float> %.sroa.0.0.copyload.i18.3, <16 x float> %i.r) ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.050.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.02.049.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.025.048.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod82 = icmp ne i64 %xtraiter, 0
end_hunk_0
