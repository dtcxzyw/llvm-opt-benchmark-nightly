Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 302
begin_hunk_0_@decode_residue:bb.a
.epil.preheader998:                               ; preds = %.loopexit48.i.us.loopexit972.unr-lcssa, %.lr.ph.i38.i.us
  %indvars.iv.i40.i.us.epil.init = phi i64 [ 0, %.lr.ph.i38.i.us ], [ %indvars.iv.next.i41.i.us.1, %.loopexit48.i.us.loopexit972.unr-lcssa ] ; 2 uses
  %.03039.i.i.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.i38.i.us ], [ %i.aho, %.loopexit48.i.us.loopexit972.unr-lcssa ]
  %lcmp.mod1002 = trunc i32 %spec.select.i36.i.us to i1
  call void @llvm.assume(i1 %lcmp.mod1002)
  %i.aip = load ptr, ptr %i.ya, align 8
  %i.aiq = getelementptr [4 x i8], ptr %i.aip, i64 %indvars.iv.i40.i.us.epil.init
  %i.air = getelementptr [4 x i8], ptr %i.aiq, i64 %i.agt
  %i.ais = load float, ptr %i.air, align 4
  %i.ait = fadd float %.03039.i.i.us.epil.init, %i.ais
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %indvars.iv.i40.i.us.epil.init ; 2 uses
  %i.aiv = load float, ptr %i.aiu, align 4
  %i.aiw = fadd float %i.aiv, %i.ait
  store float %i.aiw, ptr %i.aiu, align 4
  br label %.loopexit48.i.us

.loopexit48.i.us:                                 ; preds = %.epil.preheader998, %.loopexit48.i.us.loopexit972.unr-lcssa, %.epil.preheader1005, %.loopexit48.i.us.loopexit.unr-lcssa, %.preheader.i.i.us, %.preheader36.i.i.us
  %i.aix = load i32, ptr %i.xu, align 8           ; 2 uses
  %i.aiy = add nsw i32 %i.aix, %.153.i.us         ; 2 uses
  %i.aiz = add nsw i32 %i.aix, %.03152.i.us
  %i.aja = icmp slt i32 %i.aiy, %i.xs
  br i1 %i.aja, label %bb.fa, label %.thread614.us686

.thread614.us686:                                 ; preds = %.loopexit48.i.us, %.preheader.i.us, %bb.ez, %bb.ey
  %indvars.iv.next763 = add nuw nsw i64 %indvars.iv762, 1 ; 2 uses
  %exitcond766.not = icmp eq i64 %indvars.iv.next763, %wide.trip.count765
  br i1 %exitcond766.not, label %._crit_edge676.split.us687, label %bb.ey

._crit_edge676.split.us687:                       ; preds = %.thread614.us686
  %indvars.iv.next768 = add nuw nsw i64 %indvars.iv767, 1 ; 2 uses
  %i.ajb = add nsw i32 %.1280680.us, 1            ; 3 uses
  %i.ajc = icmp slt i64 %indvars.iv.next768, %i.dq
  %i.ajd = icmp slt i32 %i.ajb, %i.ac
  %i.aje = select i1 %i.ajc, i1 %i.ajd, i1 false
  br i1 %i.aje, label %.preheader637.us, label %._crit_edge682

.preheader637:                                    ; preds = %.preheader637.lr.ph, %.preheader637
  %.1280680 = phi i32 [ %i.ajg, %.preheader637 ], [ %.0279697, %.preheader637.lr.ph ]
  %.3308679 = phi i32 [ %i.ajf, %.preheader637 ], [ 0, %.preheader637.lr.ph ]
  %i.ajf = add nuw nsw i32 %.3308679, 1           ; 2 uses
  %i.ajg = add nsw i32 %.1280680, 1               ; 3 uses
  %i.ajh = icmp slt i32 %i.ajf, %i.r
  %i.aji = icmp slt i32 %i.ajg, %i.ac
  %i.ajj = select i1 %i.ajh, i1 %i.aji, i1 false
  br i1 %i.ajj, label %.preheader637, label %._crit_edge682

._crit_edge76.i403:                               ; preds = %.thread66.i402.us.us.us, %bb.ep
  store i32 21, ptr %i.dl, align 4
  br label %codebook_decode_scalar_raw.exit432.thread581

codebook_decode_scalar_raw.exit432.thread581:     ; preds = %bb.eu, %bb.eq, %._crit_edge76.i403
  store i32 0, ptr %i.cx, align 8
  br label %.thread.i365

.thread.i365:                                     ; preds = %bb.ew, %codebook_decode_scalar_raw.exit432.us.us.us, %bb.es, %codebook_decode_scalar_raw.exit432.thread581
  %i.ajk = load i8, ptr %i.cz, align 4
  %.not.i367 = icmp eq i8 %i.ajk, 0
  br i1 %.not.i367, label %bb.io, label %.thread31.sink.split.i368

bb.io:                                            ; preds = %.thread.i365
  %i.ajl = load i32, ptr %i.da, align 4
  %.not27.i370 = icmp eq i32 %i.ajl, 0
  br i1 %.not27.i370, label %.thread31.sink.split.i368, label %.thread618

.thread31.sink.split.i368:                        ; preds = %bb.cd, %bb.io, %.thread.i365
  store i32 21, ptr %i.dl, align 4
  br label %.thread618

._crit_edge76.i:                                  ; preds = %.thread66.i.us, %bb.ie
  store i32 21, ptr %i.dl, align 4
  br label %codebook_decode_scalar_raw.exit.thread606

codebook_decode_scalar_raw.exit.thread606:        ; preds = %bb.ij, %bb.if, %._crit_edge76.i
  store i32 0, ptr %i.cx, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.il, %codebook_decode_scalar_raw.exit.us, %bb.ih, %codebook_decode_scalar_raw.exit.thread606
  %i.ajm = load i8, ptr %i.cz, align 4
  %.not.i361 = icmp eq i8 %i.ajm, 0
  br i1 %.not.i361, label %bb.ip, label %.thread31.sink.split.i

bb.ip:                                            ; preds = %.thread.i
  %i.ajn = load i32, ptr %i.da, align 4
  %.not27.i = icmp eq i32 %i.ajn, 0
  br i1 %.not27.i, label %.thread31.sink.split.i, label %.thread618

.thread31.sink.split.i:                           ; preds = %bb.fa, %bb.ip, %.thread.i
  store i32 21, ptr %i.dl, align 4
  br label %.thread618

._crit_edge682:                                   ; preds = %.preheader637, %._crit_edge676.split.us687, %._crit_edge676.split.us.us.us, %.loopexit639
  %.1280.lcssa = phi i32 [ %.0279697, %.loopexit639 ], [ %i.ajb, %._crit_edge676.split.us687 ], [ %i.wx, %._crit_edge676.split.us.us.us ], [ %i.ajg, %.preheader637 ] ; 2 uses
  %indvars.iv.next779 = add nuw nsw i64 %indvars.iv778, 1
  %i.ajo = icmp slt i32 %.1280.lcssa, %i.ac
  br i1 %i.ajo, label %bb.ax, label %._crit_edge701

._crit_edge701:                                   ; preds = %._crit_edge682
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1 ; 2 uses
  %exitcond784.not = icmp eq i64 %indvars.iv.next782, 8
  br i1 %exitcond784.not, label %.thread618, label %.preheader641

.thread618:                                       ; preds = %._crit_edge701, %bb.bx, %bb.m, %..loopexit626_crit_edge, %..loopexit_crit_edge.us, %.preheader628.split, %.preheader642, %.preheader628.split.us, %bb.io, %.thread31.sink.split.i368, %bb.ip, %.thread31.sink.split.i, %.thread535, %.thread546, %._crit_edge705
  store i32 %i.ae, ptr %i.ad, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @inverse_mdct(ptr nofree noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 0, 256) %3) unnamed_addr #23 {
bb.a:
  %i.a = ashr i32 %1, 1                           ; 6 uses
  %i.b = ashr i32 %1, 2                           ; 2 uses
  %i.c = ashr i32 %1, 3                           ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 148 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl i32 %i.a, 2
  %i.i = add nsw i32 %i.h, 4
  %i.j = and i32 %i.i, -8
  %i.k = sub nsw i32 %i.e, %i.j                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %setup_temp_malloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.k, ptr %i.d, align 4
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 %i.o
  br label %setup_temp_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.q = sext i32 %i.a to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = alloca i8, i64 %i.r, align 16
  br label %setup_temp_malloc.exit

setup_temp_malloc.exit:                           ; preds = %bb.c, %bb.b, %bb.d
  %i.t = phi ptr [ %i.s, %bb.d ], [ null, %bb.b ], [ %i.p, %bb.c ] ; 13 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1416
  %i.v = zext nneg i32 %3 to i64                  ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8              ; 19 uses
  %i.y = sext i32 %i.a to i64                     ; 5 uses
  %i.z = getelementptr [4 x i8], ptr %i.t, i64 %i.y ; 10 uses
  %.idx = shl nsw i64 %i.y, 2                     ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %.idx ; 3 uses
  %.0388424 = getelementptr i8, ptr %i.z, i64 -8  ; 5 uses
  %.not409425 = icmp eq i32 %i.a, 0
  br i1 %.not409425, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %setup_temp_malloc.exit
  %i.ab = add nsw i64 %.idx, -16                  ; 4 uses
  %i.ac = lshr i64 %i.ab, 4
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 128
  br i1 %min.iters.check, label %.lr.ph.preheader537, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ae = lshr exact i64 %i.ab, 1
  %i.af = and i64 %i.ae, 9223372036854775800      ; 2 uses
  %i.ag = add nsw i64 %.idx, -8
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = getelementptr i8, ptr %i.t, i64 %i.ah   ; 2 uses
  %i.aj = or i64 %i.ab, 12
  %i.ak = getelementptr i8, ptr %0, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.x, i64 %i.af
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %bound0 = icmp ult ptr %i.ai, %i.ak
  %bound1 = icmp ult ptr %0, %i.z
  %found.conflict = and i1 %bound0, %bound1
  %bound0518 = icmp ult ptr %i.ai, %i.am
  %bound1519 = icmp ult ptr %i.x, %i.z
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx = or i1 %found.conflict, %found.conflict520
  br i1 %conflict.rdx, label %.lr.ph.preheader537, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.an = and i64 %i.ad, 3                        ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = select i1 %i.ao, i64 4, i64 %i.an
  %n.vec = sub nsw i64 %i.ad, %i.ap               ; 4 uses
  %i.aq = mul i64 %n.vec, -8                      ; 2 uses
  %i.ar = getelementptr i8, ptr %.0388424, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  %i.at = shl i64 %n.vec, 4
  %i.au = getelementptr i8, ptr %0, i64 %i.at
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.x, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ax = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.0388424, i64 %i.ax
  %i.ay = shl i64 %index, 4                       ; 4 uses
  %next.gep521 = getelementptr i8, ptr %0, i64 %i.ay ; 3 uses
  %i.az = getelementptr i8, ptr %0, i64 %i.ay     ; 2 uses
  %next.gep522 = getelementptr i8, ptr %i.az, i64 16 ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 %i.ay     ; 2 uses
  %next.gep523 = getelementptr i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bb = getelementptr i8, ptr %0, i64 %i.ay     ; 2 uses
  %next.gep524 = getelementptr i8, ptr %i.bb, i64 48 ; 2 uses
  %i.bc = shl i64 %index, 3
  %next.gep525 = getelementptr i8, ptr %i.x, i64 %i.bc ; 2 uses
  %i.bd = load float, ptr %next.gep521, align 4, !alias.scope !1241
  %i.be = load float, ptr %next.gep522, align 4, !alias.scope !1241
  %i.bf = load float, ptr %next.gep523, align 4, !alias.scope !1241
  %i.bg = load float, ptr %next.gep524, align 4, !alias.scope !1241
  %i.bh = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 3
  %wide.vec = load <8 x float>, ptr %next.gep525, align 4, !alias.scope !1242 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bl = getelementptr inbounds nuw i8, ptr %next.gep521, i64 8 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.az, i64 24     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.ba, i64 40     ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bb, i64 56     ; 2 uses
  %i.bp = load float, ptr %i.bl, align 4, !alias.scope !1241
  %i.bq = load float, ptr %i.bm, align 4, !alias.scope !1241
  %i.br = load float, ptr %i.bn, align 4, !alias.scope !1241
  %i.bs = load float, ptr %i.bo, align 4, !alias.scope !1241
  %i.bt = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 1
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 2
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 3
  %i.bx = fneg <8 x float> %wide.vec
  %i.by = shufflevector <8 x float> %i.bx, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bz = fmul <4 x float> %i.bw, %i.by
  %i.ca = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %strided.vec, <4 x float> %i.bz)
  %4 = load float, ptr %next.gep521, align 4, !alias.scope !1241
  %5 = load float, ptr %next.gep522, align 4, !alias.scope !1241
  %6 = load float, ptr %next.gep523, align 4, !alias.scope !1241
  %7 = load float, ptr %next.gep524, align 4, !alias.scope !1241
  %8 = insertelement <4 x float> poison, float %4, i64 0
  %9 = insertelement <4 x float> %8, float %5, i64 1
  %10 = insertelement <4 x float> %9, float %6, i64 2
  %11 = insertelement <4 x float> %10, float %7, i64 3
  %wide.vec527 = load <8 x float>, ptr %next.gep525, align 4, !alias.scope !1242 ; 2 uses
  %strided.vec528 = shufflevector <8 x float> %wide.vec527, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec529 = shufflevector <8 x float> %wide.vec527, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %12 = load float, ptr %i.bl, align 4, !alias.scope !1241
  %13 = load float, ptr %i.bm, align 4, !alias.scope !1241
  %14 = load float, ptr %i.bn, align 4, !alias.scope !1241
  %15 = load float, ptr %i.bo, align 4, !alias.scope !1241
  %16 = insertelement <4 x float> poison, float %12, i64 0
  %17 = insertelement <4 x float> %16, float %13, i64 1
  %18 = insertelement <4 x float> %17, float %14, i64 2
  %19 = insertelement <4 x float> %18, float %15, i64 3
  %i.cb = fmul <4 x float> %19, %strided.vec528
  %i.cc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %strided.vec529, <4 x float> %i.cb)
  %i.cd = getelementptr i8, ptr %next.gep, i64 -24
  %interleaved.vec = shufflevector <4 x float> %i.cc, <4 x float> %i.ca, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec, ptr %i.cd, align 4, !alias.scope !1243, !noalias !1244
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %.lr.ph.preheader537, label %vector.body, !llvm.loop !1239

.lr.ph.preheader537:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.0388429.ph = phi ptr [ %.0388424, %vector.memcheck ], [ %.0388424, %.lr.ph.preheader ], [ %i.ar, %vector.body ]
  %.pn419428.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.preheader ], [ %i.as, %vector.body ]
  %.0397427.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.au, %vector.body ]
  %.0399426.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader ], [ %i.aw, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader537, %.lr.ph
  %.0388429 = phi ptr [ %.0388, %.lr.ph ], [ %.0388429.ph, %.lr.ph.preheader537 ] ; 3 uses
  %.pn419428 = phi ptr [ %.0388429, %.lr.ph ], [ %.pn419428.ph, %.lr.ph.preheader537 ]
  %.0397427 = phi ptr [ %i.cw, %.lr.ph ], [ %.0397427.ph, %.lr.ph.preheader537 ] ; 4 uses
  %.0399426 = phi ptr [ %i.cv, %.lr.ph ], [ %.0399426.ph, %.lr.ph.preheader537 ] ; 4 uses
  %i.cf = load float, ptr %.0397427, align 4
  %i.cg = load float, ptr %.0399426, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.0397427, i64 8 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.0399426, i64 4 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4
  %i.cl = fneg float %i.ck
  %i.cm = fmul float %i.ci, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cg, float %i.cm)
  %i.co = getelementptr i8, ptr %.pn419428, i64 -4
  store float %i.cn, ptr %i.co, align 4
  %i.cp = load float, ptr %.0397427, align 4
  %i.cq = load float, ptr %i.cj, align 4
  %i.cr = load float, ptr %i.ch, align 4
  %i.cs = load float, ptr %.0399426, align 4
  %i.ct = fmul float %i.cr, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cq, float %i.ct)
  store float %i.cu, ptr %.0388429, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.0399426, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0397427, i64 16 ; 2 uses
  %.0388 = getelementptr i8, ptr %.0388429, i64 -8 ; 2 uses
  %.not409 = icmp eq ptr %i.cw, %i.aa
  br i1 %.not409, label %._crit_edge, label %.lr.ph, !llvm.loop !1240

._crit_edge:                                      ; preds = %.lr.ph, %setup_temp_malloc.exit
  %.0399.lcssa = phi ptr [ %i.x, %setup_temp_malloc.exit ], [ %i.cv, %.lr.ph ]
  %.0388.lcssa = phi ptr [ %.0388424, %setup_temp_malloc.exit ], [ %.0388, %.lr.ph ] ; 2 uses
  %.not410431 = icmp ult ptr %.0388.lcssa, %i.t
  br i1 %.not410431, label %._crit_edge437, label %.lr.ph436.preheader

.lr.ph436.preheader:                              ; preds = %._crit_edge
  %i.cx = getelementptr i8, ptr %i.aa, i64 -12
  br label %.lr.ph436

.lr.ph436:                                        ; preds = %.lr.ph436.preheader, %.lr.ph436
  %.1389434 = phi ptr [ %i.dq, %.lr.ph436 ], [ %.0388.lcssa, %.lr.ph436.preheader ] ; 3 uses
  %.1398433 = phi ptr [ %i.ds, %.lr.ph436 ], [ %i.cx, %.lr.ph436.preheader ] ; 4 uses
  %.1400432 = phi ptr [ %i.dr, %.lr.ph436 ], [ %.0399.lcssa, %.lr.ph436.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1398433, i64 8 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4
  %i.da = fneg float %i.cz
  %i.db = load float, ptr %.1400432, align 4
  %i.dc = load float, ptr %.1398433, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.1400432, i64 4 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4
  %i.df = fmul float %i.dc, %i.de
  %i.dg = call float @llvm.fmuladd.f32(float %i.da, float %i.db, float %i.df)
  %i.dh = getelementptr inbounds nuw i8, ptr %.1389434, i64 4
  store float %i.dg, ptr %i.dh, align 4
  %i.di = load float, ptr %i.cy, align 4
  %i.dj = fneg float %i.di
  %i.dk = load float, ptr %i.dd, align 4
  %i.dl = load float, ptr %.1398433, align 4
  %i.dm = fneg float %i.dl
  %i.dn = load float, ptr %.1400432, align 4
  %i.do = fmul float %i.dn, %i.dm
  %i.dp = call float @llvm.fmuladd.f32(float %i.dj, float %i.dk, float %i.do)
  store float %i.dp, ptr %.1389434, align 4
  %i.dq = getelementptr inbounds i8, ptr %.1389434, i64 -8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1400432, i64 8
  %i.ds = getelementptr inbounds i8, ptr %.1398433, i64 -16
  %.not410 = icmp ult ptr %i.dq, %i.t
  br i1 %.not410, label %._crit_edge437, label %.lr.ph436

._crit_edge437:                                   ; preds = %.lr.ph436, %._crit_edge
  %i.dt = getelementptr [4 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.du = sext i32 %i.b to i64                    ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %i.t, i64 %i.du ; 3 uses
  %.0405438 = getelementptr i8, ptr %i.dt, i64 -32 ; 2 uses
  %.not411439 = icmp ult ptr %.0405438, %i.x
  br i1 %.not411439, label %._crit_edge448, label %.lr.ph447.preheader

.lr.ph447.preheader:                              ; preds = %._crit_edge437
  %i.dw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.du
  br label %.lr.ph447

.lr.ph447:                                        ; preds = %.lr.ph447.preheader, %.lr.ph447
  %.0405445 = phi ptr [ %.0405, %.lr.ph447 ], [ %.0405438, %.lr.ph447.preheader ] ; 4 uses
  %.0401444 = phi ptr [ %i.gb, %.lr.ph447 ], [ %i.t, %.lr.ph447.preheader ] ; 6 uses
  %.0402443 = phi ptr [ %i.ga, %.lr.ph447 ], [ %i.dv, %.lr.ph447.preheader ] ; 6 uses
  %.0403442 = phi ptr [ %i.fz, %.lr.ph447 ], [ %0, %.lr.ph447.preheader ] ; 5 uses
  %.0404441 = phi ptr [ %i.fy, %.lr.ph447 ], [ %i.dw, %.lr.ph447.preheader ] ; 5 uses
  %.pn418440 = phi ptr [ %.0405445, %.lr.ph447 ], [ %i.dt, %.lr.ph447.preheader ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0402443, i64 4
  %i.dy = load float, ptr %i.dx, align 4          ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0401444, i64 4
  %i.ea = load float, ptr %i.dz, align 4          ; 2 uses
  %i.eb = fsub float %i.dy, %i.ea                 ; 2 uses
  %i.ec = load float, ptr %.0402443, align 4
  %i.ed = load float, ptr %.0401444, align 4
  %i.ee = fsub float %i.ec, %i.ed                 ; 2 uses
  %i.ef = fadd float %i.dy, %i.ea
  %i.eg = getelementptr inbounds nuw i8, ptr %.0404441, i64 4
  store float %i.ef, ptr %i.eg, align 4
  %i.eh = load float, ptr %.0402443, align 4
  %i.ei = load float, ptr %.0401444, align 4
  %i.ej = fadd float %i.eh, %i.ei
  store float %i.ej, ptr %.0404441, align 4
  %i.ek = getelementptr i8, ptr %.pn418440, i64 -16 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4
  %i.em = getelementptr i8, ptr %.pn418440, i64 -12 ; 2 uses
  %i.en = load float, ptr %i.em, align 4
  %i.eo = fneg float %i.en
  %i.ep = fmul float %i.ee, %i.eo
  %i.eq = call float @llvm.fmuladd.f32(float %i.eb, float %i.el, float %i.ep)
  %i.er = getelementptr inbounds nuw i8, ptr %.0403442, i64 4
  store float %i.eq, ptr %i.er, align 4
  %i.es = load float, ptr %i.ek, align 4
  %i.et = load float, ptr %i.em, align 4
  %i.eu = fmul float %i.eb, %i.et
  %i.ev = call float @llvm.fmuladd.f32(float %i.ee, float %i.es, float %i.eu)
  store float %i.ev, ptr %.0403442, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %.0402443, i64 12
  %i.ex = load float, ptr %i.ew, align 4          ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.0401444, i64 12
  %i.ez = load float, ptr %i.ey, align 4          ; 2 uses
  %i.fa = fsub float %i.ex, %i.ez                 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.0402443, i64 8 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %.0401444, i64 8 ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4
  %i.ff = fsub float %i.fc, %i.fe                 ; 2 uses
  %i.fg = fadd float %i.ex, %i.ez
  %i.fh = getelementptr inbounds nuw i8, ptr %.0404441, i64 12
  store float %i.fg, ptr %i.fh, align 4
  %i.fi = load float, ptr %i.fb, align 4
  %i.fj = load float, ptr %i.fd, align 4
  %i.fk = fadd float %i.fi, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %.0404441, i64 8
  store float %i.fk, ptr %i.fl, align 4
  %i.fm = load float, ptr %.0405445, align 4
  %i.fn = getelementptr i8, ptr %.pn418440, i64 -28 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4
  %i.fp = fneg float %i.fo
  %i.fq = fmul float %i.ff, %i.fp
  %i.fr = call float @llvm.fmuladd.f32(float %i.fa, float %i.fm, float %i.fq)
  %i.fs = getelementptr inbounds nuw i8, ptr %.0403442, i64 12
  store float %i.fr, ptr %i.fs, align 4
  %i.ft = load float, ptr %.0405445, align 4
  %i.fu = load float, ptr %i.fn, align 4
  %i.fv = fmul float %i.fa, %i.fu
  %i.fw = call float @llvm.fmuladd.f32(float %i.ff, float %i.ft, float %i.fv)
  %i.fx = getelementptr inbounds nuw i8, ptr %.0403442, i64 8
  store float %i.fw, ptr %i.fx, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %.0404441, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %.0403442, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %.0402443, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %.0401444, i64 16
  %.0405 = getelementptr i8, ptr %.0405445, i64 -32 ; 2 uses
  %.not411 = icmp ult ptr %.0405, %i.x
  br i1 %.not411, label %._crit_edge448, label %.lr.ph447

._crit_edge448:                                   ; preds = %.lr.ph447, %._crit_edge437
  %i.gc = icmp slt i32 %1, 0
  br i1 %i.gc, label %ilog.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge448
  %i.gd = icmp samesign ult i32 %1, 16384
  br i1 %i.gd, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ge = icmp samesign ult i32 %1, 16
  br i1 %i.ge, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gf = zext nneg i32 %1 to i64
  %i.gg = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = sext i8 %i.gh to i32
  br label %ilog.exit

bb.h:                                             ; preds = %bb.f
  %i.gj = icmp samesign ult i32 %1, 512
  br i1 %i.gj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gk = lshr i32 %1, 5
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1
  %i.go = sext i8 %i.gn to i32
end_hunk_0
