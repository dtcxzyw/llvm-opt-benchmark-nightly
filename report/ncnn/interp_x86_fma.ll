Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86_fma?download=true
inline.NumInlined: 103
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.10:bb.a
  %n.vec139 = and i64 %i.cr, -4                   ; 3 uses
  %i.dr = add nsw i64 %n.vec139, %i.cp
  %broadcast.splatinsert140 = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat141 = shufflevector <4 x float> %broadcast.splatinsert140, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert142 = insertelement <4 x float> poison, float %i.aw, i64 0
  %broadcast.splat143 = shufflevector <4 x float> %broadcast.splatinsert142, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next147, %vec.epilog.vector.body ] ; 2 uses
  %i.ds = add nuw i64 %index144, %i.cp            ; 3 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ds
  %wide.load145 = load <4 x i16>, ptr %i.dt, align 2, !tbaa !74
  %i.du = zext <4 x i16> %wide.load145 to <4 x i32>
  %i.dv = shl nuw <4 x i32> %i.du, splat (i32 16)
  %i.dw = bitcast <4 x i32> %i.dv to <4 x float>
  %i.dx = fmul fast <4 x float> %broadcast.splat141, %i.dw
  %i.dy = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ds
  %wide.load146 = load <4 x i16>, ptr %i.dy, align 2, !tbaa !74
  %i.dz = zext <4 x i16> %wide.load146 to <4 x i32>
  %i.ea = shl nuw <4 x i32> %i.dz, splat (i32 16)
  %i.eb = bitcast <4 x i32> %i.ea to <4 x float>
  %i.ec = fmul fast <4 x float> %broadcast.splat143, %i.eb
  %i.ed = fadd fast <4 x float> %i.ec, %i.dx
  %i.ee = bitcast <4 x float> %i.ed to <4 x i32>
  %i.ef = lshr <4 x i32> %i.ee, splat (i32 16)
  %i.eg = trunc nuw <4 x i32> %i.ef to <4 x i16>
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.06590, i64 %i.ds
  store <4 x i16> %i.eg, ptr %i.eh, align 2, !tbaa !74
  %index.next147 = add nuw i64 %index144, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next147, %n.vec139
  br i1 %i.ei, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !224

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n148 = icmp eq i64 %i.cr, %n.vec139
  br i1 %cmp.n148, label %._crit_edge, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv109.ph = phi i64 [ %i.cp, %iter.check ], [ %i.cp, %vector.memcheck ], [ %i.cz, %vec.epilog.iter.check ], [ %i.dr, %vec.epilog.middle.block ]
  br label %.lr.ph89

bb.d:                                             ; preds = %.lr.ph85, %bb.d
  %indvars.iv106 = phi i64 [ %i.bk, %.lr.ph85 ], [ %indvars.iv.next107, %bb.d ] ; 3 uses
  %i.ej = phi i32 [ %i.bd, %.lr.ph85 ], [ %i.fg, %bb.d ]
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv106 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 1, !tbaa !20
  %i.em = insertelement <2 x i64> poison, i64 %i.el, i64 0
  %i.en = bitcast <2 x i64> %i.em to <8 x i16>
  %i.eo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.en, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ep = bitcast <8 x i16> %i.eo to <4 x float>
  %i.eq = sext i32 %i.ej to i64
  %i.er = getelementptr inbounds [2 x i8], ptr %i.ek, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 1, !tbaa !20
  %i.et = insertelement <2 x i64> poison, i64 %i.es, i64 0
  %i.eu = bitcast <2 x i64> %i.et to <8 x i16>
  %i.ev = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ew = bitcast <8 x i16> %i.ev to <4 x float>
  %i.ex = fmul fast <4 x float> %i.bh, %i.ep
  %i.ey = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ew, <4 x float> nofpclass(nan inf) %i.bj, <4 x float> nofpclass(nan inf) %i.ex)
  %i.ez = bitcast <4 x float> %i.ey to <4 x i32>
  %i.fa = lshr <4 x i32> %i.ez, splat (i32 16)
  %i.fb = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fa, <4 x i32> poison)
  %i.fc = bitcast <8 x i16> %i.fb to <2 x i64>
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %.06590, i64 %indvars.iv106
  %i.fe = extractelement <2 x i64> %i.fc, i64 0
  store i64 %i.fe, ptr %i.fd, align 1, !tbaa !20
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 4 ; 3 uses
  %i.ff = or disjoint i64 %indvars.iv.next107, 3
  %i.fg = load i32, ptr %8, align 4, !tbaa !28    ; 3 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp slt i64 %i.ff, %i.fh
  br i1 %i.fi, label %bb.d, label %.preheader.loopexit, !llvm.loop !225

.lr.ph89:                                         ; preds = %.lr.ph89.preheader, %.lr.ph89
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %.lr.ph89 ], [ %indvars.iv109.ph, %.lr.ph89.preheader ] ; 4 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv109
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !74
  %i.fl = zext i16 %i.fk to i32
  %i.fm = shl nuw i32 %i.fl, 16
  %i.fn = bitcast i32 %i.fm to float
  %i.fo = fmul fast float %i.au, %i.fn
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv109
  %i.fp = load i16, ptr %gep, align 2, !tbaa !74
  %i.fq = zext i16 %i.fp to i32
  %i.fr = shl nuw i32 %i.fq, 16
  %i.fs = bitcast i32 %i.fr to float
  %i.ft = fmul fast float %i.aw, %i.fs
  %i.fu = fadd fast float %i.ft, %i.fo
  %i.fv = bitcast float %i.fu to i32
  %i.fw = lshr i32 %i.fv, 16
  %i.fx = trunc nuw i32 %i.fw to i16
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %.06590, i64 %indvars.iv109
  store i16 %i.fx, ptr %i.fy, align 2, !tbaa !74
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph89, !llvm.loop !226

._crit_edge:                                      ; preds = %.lr.ph89, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre119, %.preheader.._crit_edge_crit_edge ], [ %i.cq, %middle.block ], [ %i.cq, %vec.epilog.middle.block ], [ %i.cq, %.lr.ph89 ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.06491, i64 8
  %i.ga = getelementptr inbounds [2 x i8], ptr %.06590, i64 %.pre-phi
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.gb = load i32, ptr %6, align 4, !tbaa !28    ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = icmp slt i64 %indvars.iv.next113, %i.gc
  br i1 %i.gd, label %.lr.ph94, label %._crit_edge95, !llvm.loop !227

._crit_edge100:                                   ; preds = %._crit_edge95, %.lr.ph99, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge100, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.11(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not135 = icmp sgt i32 %i.k, %i.j
  br i1 %.not135, label %._crit_edge139, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !28     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph138.split.preheader, label %._crit_edge139

.lr.ph138.split.preheader:                        ; preds = %.lr.ph138
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph138.split

.lr.ph138.split:                                  ; preds = %.lr.ph138.split.preheader, %._crit_edge134
  %i.t = phi i32 [ %i.p, %.lr.ph138.split.preheader ], [ %i.am, %._crit_edge134 ] ; 2 uses
  %indvars.iv154 = phi i64 [ %i.r, %.lr.ph138.split.preheader ], [ %indvars.iv.next155, %._crit_edge134 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !29
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv154, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !32
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph133.preheader, label %._crit_edge134

.lr.ph133.preheader:                              ; preds = %.lr.ph138.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !64
  %i.ae = load ptr, ptr %4, align 8, !tbaa !43
  %i.af = load i32, ptr %i.n, align 4, !tbaa !29
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv154, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !32
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !28
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph133

._crit_edge134:                                   ; preds = %._crit_edge, %.lr.ph138.split
  %i.am = phi i32 [ %i.t, %.lr.ph138.split ], [ %i.ie, %._crit_edge ]
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next155 to i32
  %exitcond157.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond157.not, label %._crit_edge139, label %.lr.ph138.split, !llvm.loop !228

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %._crit_edge
  %i.an = phi i32 [ %.pre, %.lr.ph133.preheader ], [ %i.cv, %._crit_edge ] ; 4 uses
  %indvars.iv151 = phi i64 [ 0, %.lr.ph133.preheader ], [ %indvars.iv.next152, %._crit_edge ] ; 2 uses
  %.084130 = phi ptr [ %i.ad, %.lr.ph133.preheader ], [ %i.ic, %._crit_edge ] ; 2 uses
  %.085129 = phi ptr [ %i.ak, %.lr.ph133.preheader ], [ %i.id, %._crit_edge ] ; 7 uses
  %.085129175 = ptrtoaddr ptr %.085129 to i64     ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !62
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv151
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.as ; 10 uses
  %9 = load <4 x float>, ptr %.084130, align 4, !tbaa !61 ; 17 uses
  %i.au = icmp sgt i32 %i.an, 7
  br i1 %i.au, label %.lr.ph, label %.preheader121

.lr.ph:                                           ; preds = %.lr.ph133
  %i.av = shufflevector <4 x float> %9, <4 x float> poison, <8 x i32> zeroinitializer
  %10 = shufflevector <4 x float> %9, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %11 = shufflevector <4 x float> %9, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %12 = shufflevector <4 x float> %9, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

.preheader121.loopexit:                           ; preds = %bb.c
  %i.aw = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader121

.preheader121:                                    ; preds = %.preheader121.loopexit, %.lr.ph133
  %i.ax = phi i32 [ %i.an, %.lr.ph133 ], [ %i.cr, %.preheader121.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph133 ], [ %i.aw, %.preheader121.loopexit ] ; 3 uses
  %i.ay = or disjoint i32 %.0.lcssa, 3
  %i.az = icmp slt i32 %i.ay, %i.ax
  br i1 %i.az, label %.lr.ph124, label %.preheader

.lr.ph124:                                        ; preds = %.preheader121
  %i.ba = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> zeroinitializer
  %13 = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %14 = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %15 = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bb = zext nneg i32 %.0.lcssa to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.bc = phi i32 [ %i.an, %.lr.ph ], [ %i.cr, %bb.c ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.be = sext i32 %i.bc to i64                   ; 2 uses
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = load <8 x i16>, ptr %i.bg, align 1, !tbaa !20 ; 2 uses
  %i.bi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bk = shufflevector <8 x i16> %i.bi, <8 x i16> %i.bj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bl = bitcast <16 x i16> %i.bk to <8 x float>
  %i.bm = load <8 x i16>, ptr %i.bd, align 1, !tbaa !20 ; 2 uses
  %i.bn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bo = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bp = shufflevector <8 x i16> %i.bn, <8 x i16> %i.bo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bq = bitcast <16 x i16> %i.bp to <8 x float>
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.be
  %i.bs = load <8 x i16>, ptr %i.br, align 1, !tbaa !20 ; 2 uses
  %i.bt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bs, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bv = shufflevector <8 x i16> %i.bt, <8 x i16> %i.bu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bw = bitcast <16 x i16> %i.bv to <8 x float>
  %i.bx = shl nuw nsw i32 %i.bc, 1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.by
  %i.ca = load <8 x i16>, ptr %i.bz, align 1, !tbaa !20 ; 2 uses
  %i.cb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cc = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ca, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cd = shufflevector <8 x i16> %i.cb, <8 x i16> %i.cc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ce = bitcast <16 x i16> %i.cd to <8 x float>
  %i.cf = fmul fast <8 x float> %i.av, %i.bl
  %i.cg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bq, <8 x float> nofpclass(nan inf) %10, <8 x float> nofpclass(nan inf) %i.cf)
  %i.ch = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bw, <8 x float> nofpclass(nan inf) %11, <8 x float> nofpclass(nan inf) %i.cg)
  %i.ci = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ce, <8 x float> nofpclass(nan inf) %12, <8 x float> nofpclass(nan inf) %i.ch)
  %i.cj = bitcast <8 x float> %i.ci to <8 x i32>  ; 2 uses
  %i.ck = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cl = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cm = lshr <4 x i32> %i.ck, splat (i32 16)
  %i.cn = lshr <4 x i32> %i.cl, splat (i32 16)
  %i.co = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cm, <4 x i32> %i.cn)
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.085129, i64 %indvars.iv
  store <8 x i16> %i.co, ptr %i.cp, align 1, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.cq = or disjoint i64 %indvars.iv.next, 7
  %i.cr = load i32, ptr %8, align 4, !tbaa !28    ; 3 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %i.cq, %i.cs
  br i1 %i.ct, label %bb.c, label %.preheader121.loopexit, !llvm.loop !229

.preheader.loopexit:                              ; preds = %bb.d
  %i.cu = trunc nuw nsw i64 %indvars.iv.next146 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader121
  %i.cv = phi i32 [ %i.ax, %.preheader121 ], [ %i.hn, %.preheader.loopexit ] ; 6 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader121 ], [ %i.cu, %.preheader.loopexit ] ; 2 uses
  %i.cw = icmp slt i32 %.1.lcssa, %i.cv
  br i1 %i.cw, label %iter.check, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre158 = sext i32 %i.cv to i64
  br label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.cx = shl nuw nsw i32 %i.cv, 1
  %i.cy = zext i32 %.1.lcssa to i64               ; 7 uses
  %i.cz = sext i32 %i.cv to i64                   ; 9 uses
  %i.da = zext nneg i32 %i.cx to i64              ; 2 uses
  %wide.trip.count = zext i32 %i.cv to i64        ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.at, i64 %i.cz ; 3 uses
  %invariant.gep171 = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.da ; 3 uses
  %i.db = sub nsw i64 %wide.trip.count, %i.cy     ; 7 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dc = sub i64 %.085129175, %i.al              ; 2 uses
  %i.dd = add nsw i64 %i.as, %i.da
  %i.de = shl nsw i64 %i.dd, 1
  %i.df = sub i64 %i.de, %i.dc
  %diff.check = icmp ugt i64 %i.df, -32
  %i.dg = add nsw i64 %i.cz, %i.as
  %i.dh = shl nsw i64 %i.dg, 1
  %i.di = sub i64 %i.dh, %i.dc
  %diff.check176 = icmp ugt i64 %i.di, -32
  %conflict.rdx = or i1 %diff.check, %diff.check176
  %i.dj = sub i64 %.085129175, %i.al              ; 2 uses
  %i.dk = shl nsw i64 %i.as, 1                    ; 2 uses
  %i.dl = sub i64 %i.dk, %i.dj
  %diff.check177 = icmp ugt i64 %i.dl, -32
  %conflict.rdx178 = or i1 %conflict.rdx, %diff.check177
  %i.dm = shl nsw i64 %i.cz, 1
  %i.dn = add i64 %i.dj, %i.dm
  %i.do = sub i64 %i.dk, %i.dn
  %diff.check179 = icmp ugt i64 %i.do, -32
  %conflict.rdx180 = or i1 %conflict.rdx178, %diff.check179
  br i1 %conflict.rdx180, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check181 = icmp ult i64 %i.db, 16
  br i1 %min.iters.check181, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dp = and i64 %i.db, 12
  %n.vec = and i64 %i.db, -16                     ; 4 uses
  %i.dq = add nsw i64 %n.vec, %i.cy
  %broadcast.splat.a = shufflevector <4 x float> %9, <4 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat183 = shufflevector <4 x float> %9, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat185 = shufflevector <4 x float> %9, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat187 = shufflevector <4 x float> %9, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dr = add nuw i64 %index, %i.cy               ; 5 uses
  %i.ds = sub nsw i64 %i.dr, %i.cz
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ds
  %wide.load = load <16 x i16>, ptr %i.dt, align 2, !tbaa !74
  %i.du = zext <16 x i16> %wide.load to <16 x i32>
  %i.dv = shl nuw <16 x i32> %i.du, splat (i32 16)
  %i.dw = bitcast <16 x i32> %i.dv to <16 x float>
  %i.dx = fmul fast <16 x float> %broadcast.splat.a, %i.dw
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.dr
  %wide.load188 = load <16 x i16>, ptr %i.dy, align 2, !tbaa !74
  %i.dz = zext <16 x i16> %wide.load188 to <16 x i32>
  %i.ea = shl nuw <16 x i32> %i.dz, splat (i32 16)
  %i.eb = bitcast <16 x i32> %i.ea to <16 x float>
  %i.ec = fmul fast <16 x float> %broadcast.splat183, %i.eb
  %i.ed = fadd fast <16 x float> %i.ec, %i.dx
  %i.ee = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.dr
  %wide.load189 = load <16 x i16>, ptr %i.ee, align 2, !tbaa !74
  %i.ef = zext <16 x i16> %wide.load189 to <16 x i32>
  %i.eg = shl nuw <16 x i32> %i.ef, splat (i32 16)
  %i.eh = bitcast <16 x i32> %i.eg to <16 x float>
  %i.ei = fmul fast <16 x float> %broadcast.splat185, %i.eh
  %i.ej = fadd fast <16 x float> %i.ed, %i.ei
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep171, i64 %i.dr
  %wide.load190 = load <16 x i16>, ptr %i.ek, align 2, !tbaa !74
  %i.el = zext <16 x i16> %wide.load190 to <16 x i32>
  %i.em = shl nuw <16 x i32> %i.el, splat (i32 16)
  %i.en = bitcast <16 x i32> %i.em to <16 x float>
  %i.eo = fmul fast <16 x float> %broadcast.splat187, %i.en
  %i.ep = fadd fast <16 x float> %i.ej, %i.eo
  %i.eq = bitcast <16 x float> %i.ep to <16 x i32>
  %i.er = lshr <16 x i32> %i.eq, splat (i32 16)
  %i.es = trunc nuw <16 x i32> %i.er to <16 x i16>
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %.085129, i64 %i.dr
  store <16 x i16> %i.es, ptr %i.et, align 2, !tbaa !74
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !230

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec191 = and i64 %i.db, -4                   ; 3 uses
  %i.ev = add nsw i64 %n.vec191, %i.cy
  %broadcast.splat193.a = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat195 = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat197 = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat199 = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index200 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next205, %vec.epilog.vector.body ] ; 2 uses
  %i.ew = add nuw i64 %index200, %i.cy            ; 5 uses
  %i.ex = sub nsw i64 %i.ew, %i.cz
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ex
  %wide.load201 = load <4 x i16>, ptr %i.ey, align 2, !tbaa !74
  %i.ez = zext <4 x i16> %wide.load201 to <4 x i32>
  %i.fa = shl nuw <4 x i32> %i.ez, splat (i32 16)
  %i.fb = bitcast <4 x i32> %i.fa to <4 x float>
  %i.fc = fmul fast <4 x float> %broadcast.splat193.a, %i.fb
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ew
  %wide.load202 = load <4 x i16>, ptr %i.fd, align 2, !tbaa !74
  %i.fe = zext <4 x i16> %wide.load202 to <4 x i32>
  %i.ff = shl nuw <4 x i32> %i.fe, splat (i32 16)
  %i.fg = bitcast <4 x i32> %i.ff to <4 x float>
  %i.fh = fmul fast <4 x float> %broadcast.splat195, %i.fg
  %i.fi = fadd fast <4 x float> %i.fh, %i.fc
  %i.fj = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ew
  %wide.load203 = load <4 x i16>, ptr %i.fj, align 2, !tbaa !74
  %i.fk = zext <4 x i16> %wide.load203 to <4 x i32>
  %i.fl = shl nuw <4 x i32> %i.fk, splat (i32 16)
  %i.fm = bitcast <4 x i32> %i.fl to <4 x float>
  %i.fn = fmul fast <4 x float> %broadcast.splat197, %i.fm
  %i.fo = fadd fast <4 x float> %i.fi, %i.fn
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep171, i64 %i.ew
  %wide.load204 = load <4 x i16>, ptr %i.fp, align 2, !tbaa !74
  %i.fq = zext <4 x i16> %wide.load204 to <4 x i32>
  %i.fr = shl nuw <4 x i32> %i.fq, splat (i32 16)
  %i.fs = bitcast <4 x i32> %i.fr to <4 x float>
  %i.ft = fmul fast <4 x float> %broadcast.splat199, %i.fs
  %i.fu = fadd fast <4 x float> %i.fo, %i.ft
  %i.fv = bitcast <4 x float> %i.fu to <4 x i32>
  %i.fw = lshr <4 x i32> %i.fv, splat (i32 16)
  %i.fx = trunc nuw <4 x i32> %i.fw to <4 x i16>
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %.085129, i64 %i.ew
  store <4 x i16> %i.fx, ptr %i.fy, align 2, !tbaa !74
  %index.next205 = add nuw i64 %index200, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next205, %n.vec191
  br i1 %i.fz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !231

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n206 = icmp eq i64 %i.db, %n.vec191
  br i1 %cmp.n206, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv148.ph = phi i64 [ %i.cy, %iter.check ], [ %i.cy, %vector.memcheck ], [ %i.dq, %vec.epilog.iter.check ], [ %i.ev, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.d:                                             ; preds = %.lr.ph124, %bb.d
  %indvars.iv145 = phi i64 [ %i.bb, %.lr.ph124 ], [ %indvars.iv.next146, %bb.d ] ; 3 uses
  %i.ga = phi i32 [ %i.ax, %.lr.ph124 ], [ %i.hn, %bb.d ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv145 ; 4 uses
  %i.gc = sext i32 %i.ga to i64                   ; 2 uses
  %i.gd = sub nsw i64 0, %i.gc
  %i.ge = getelementptr inbounds [2 x i8], ptr %i.gb, i64 %i.gd
  %i.gf = load i64, ptr %i.ge, align 1, !tbaa !20
  %i.gg = insertelement <2 x i64> poison, i64 %i.gf, i64 0
  %i.gh = bitcast <2 x i64> %i.gg to <8 x i16>
  %i.gi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gj = bitcast <8 x i16> %i.gi to <4 x float>
  %i.gk = load i64, ptr %i.gb, align 1, !tbaa !20
  %i.gl = insertelement <2 x i64> poison, i64 %i.gk, i64 0
  %i.gm = bitcast <2 x i64> %i.gl to <8 x i16>
  %i.gn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.go = bitcast <8 x i16> %i.gn to <4 x float>
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.gb, i64 %i.gc
  %i.gq = load i64, ptr %i.gp, align 1, !tbaa !20
  %i.gr = insertelement <2 x i64> poison, i64 %i.gq, i64 0
  %i.gs = bitcast <2 x i64> %i.gr to <8 x i16>
  %i.gt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gu = bitcast <8 x i16> %i.gt to <4 x float>
  %i.gv = shl nuw nsw i32 %i.ga, 1
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.gb, i64 %i.gw
  %i.gy = load i64, ptr %i.gx, align 1, !tbaa !20
  %i.gz = insertelement <2 x i64> poison, i64 %i.gy, i64 0
  %i.ha = bitcast <2 x i64> %i.gz to <8 x i16>
  %i.hb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ha, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hc = bitcast <8 x i16> %i.hb to <4 x float>
  %i.hd = fmul fast <4 x float> %i.ba, %i.gj
  %i.he = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.go, <4 x float> nofpclass(nan inf) %13, <4 x float> nofpclass(nan inf) %i.hd)
  %i.hf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gu, <4 x float> nofpclass(nan inf) %14, <4 x float> nofpclass(nan inf) %i.he)
  %i.hg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hc, <4 x float> nofpclass(nan inf) %15, <4 x float> nofpclass(nan inf) %i.hf)
  %i.hh = bitcast <4 x float> %i.hg to <4 x i32>
  %i.hi = lshr <4 x i32> %i.hh, splat (i32 16)
  %i.hj = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hi, <4 x i32> poison)
  %i.hk = bitcast <8 x i16> %i.hj to <2 x i64>
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %.085129, i64 %indvars.iv145
  %i.hm = extractelement <2 x i64> %i.hk, i64 0
  store i64 %i.hm, ptr %i.hl, align 1, !tbaa !20
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 4 ; 3 uses
  %i.hn = load i32, ptr %8, align 4, !tbaa !28    ; 3 uses
  %i.ho = trunc i64 %indvars.iv.next146 to i32
  %i.hp = or i32 %i.ho, 3
  %i.hq = icmp slt i32 %i.hp, %i.hn
  br i1 %i.hq, label %bb.d, label %.preheader.loopexit, !llvm.loop !232

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %vec.epilog.scalar.ph ], [ %indvars.iv148.ph, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %i.hr = sub nsw i64 %indvars.iv148, %i.cz
  %i.hs = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !74
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv148
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !74
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv148
  %16 = load i16, ptr %gep, align 2, !tbaa !74
  %gep172.a = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep171, i64 %indvars.iv148
  %i.hw = load i16, ptr %gep172.a, align 2, !tbaa !74
  %i.hx = zext i16 %i.ht to i32
  %17 = zext i16 %i.hv to i32
  %18 = zext i16 %16 to i32
  %19 = zext i16 %i.hw to i32
  %20 = insertelement <4 x i32> poison, i32 %i.hx, i64 0
  %21 = insertelement <4 x i32> %20, i32 %17, i64 1
  %22 = insertelement <4 x i32> %21, i32 %18, i64 2
  %23 = insertelement <4 x i32> %22, i32 %19, i64 3
  %24 = shl nuw <4 x i32> %23, splat (i32 16)
  %25 = bitcast <4 x i32> %24 to <4 x float>
  %26 = fmul fast <4 x float> %9, %25
  %27 = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %26)
  %i.hy = bitcast float %27 to i32
  %i.hz = lshr i32 %i.hy, 16
  %i.ia = trunc nuw i32 %i.hz to i16
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %.085129, i64 %indvars.iv148
  store i16 %i.ia, ptr %i.ib, align 2, !tbaa !74
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !233

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre158, %.preheader.._crit_edge_crit_edge ], [ %i.cz, %middle.block ], [ %i.cz, %vec.epilog.middle.block ], [ %i.cz, %vec.epilog.scalar.ph ]
  %i.ic = getelementptr inbounds nuw i8, ptr %.084130, i64 16
  %i.id = getelementptr inbounds [2 x i8], ptr %.085129, i64 %.pre-phi
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %i.ie = load i32, ptr %6, align 4, !tbaa !28    ; 2 uses
  %i.if = sext i32 %i.ie to i64
  %i.ig = icmp slt i64 %indvars.iv.next152, %i.if
  br i1 %i.ig, label %.lr.ph133, label %._crit_edge134, !llvm.loop !234

._crit_edge139:                                   ; preds = %._crit_edge134, %.lr.ph138, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge139, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.12(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not85 = icmp sgt i32 %i.k, %i.j
  br i1 %.not85, label %._crit_edge87, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load i32, ptr %5, align 4, !tbaa !28     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge87

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.v = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.t, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next92, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !43, !noalias !242
  %i.y = load i64, ptr %i.m, align 8, !tbaa !37, !noalias !242
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !32, !noalias !242 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !43, !noalias !243
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !37, !noalias !243
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !32, !noalias !243 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !29, !noalias !243
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !29, !noalias !242
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ag, %i.al
  %i.aq = load i32, ptr %8, align 4, !tbaa !28    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre95 = load i32, ptr %i.b, align 4, !tbaa !28
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph84, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.as = phi i32 [ %i.u, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre95, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.u, %.lr.ph84 ] ; 2 uses
  %i.at = phi i32 [ %i.v, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.v, %.lr.ph84 ]
  %i.au = phi i32 [ %i.w, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.lr.ph84 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1
  %i.av = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv91, %i.av
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !239

.lr.ph84.split:                                   ; preds = %.lr.ph84, %._crit_edge
  %i.aw = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph84 ]
  %i.ax = phi i32 [ %i.bm, %._crit_edge ], [ %i.aq, %.lr.ph84 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph84 ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = uitofp ninf nsz nneg i32 %i.ay to float
  %i.ba = load float, ptr %6, align 4, !tbaa !61
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fptosi float %i.bb to i32
  %i.bd = load i32, ptr %7, align 4, !tbaa !28
  %i.be = add nsw i32 %i.bd, -1
  %.sroa.speculated51 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = sext i32 %.sroa.speculated51 to i64
  %i.bg = mul i64 %i.ao, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bg
  %i.bi = icmp sgt i32 %i.ax, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph84.split
  %i.bj = mul i64 %i.ap, %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  %.pre = load i32, ptr %11, align 4, !tbaa !28
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre94 = load i32, ptr %5, align 4, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph84.split
  %i.bl = phi i32 [ %.pre94, %._crit_edge.loopexit ], [ %i.aw, %.lr.ph84.split ] ; 4 uses
  %i.bm = phi i32 [ %i.cf, %._crit_edge.loopexit ], [ %i.ax, %.lr.ph84.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !240

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bp = phi i32 [ %i.cb, %.lr.ph ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.03682 = phi i32 [ %i.ce, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03781 = phi ptr [ %i.cd, %.lr.ph ], [ %i.bk, %.lr.ph.preheader ] ; 2 uses
  %i.bq = uitofp ninf nsz nneg i32 %.03682 to float
  %i.br = load float, ptr %9, align 4, !tbaa !61
  %i.bs = fmul fast float %i.br, %i.bq
  %i.bt = fptosi float %i.bs to i32
  %i.bu = load i32, ptr %10, align 4, !tbaa !28
  %i.bv = add nsw i32 %i.bu, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bt)
  %i.bw = mul nsw i32 %.sroa.speculated, %i.bp
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.bx
  %i.bz = sext i32 %i.bp to i64
  %i.ca = shl nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.03781, ptr align 2 %i.by, i64 %i.ca, i1 false)
  %i.cb = load i32, ptr %11, align 4, !tbaa !28   ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %.03781, i64 %i.cc
  %i.ce = add nuw nsw i32 %.03682, 1              ; 2 uses
  %i.cf = load i32, ptr %8, align 4, !tbaa !28    ; 2 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !241

._crit_edge87:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge87, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.13(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 10 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 10 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
end_hunk_0
