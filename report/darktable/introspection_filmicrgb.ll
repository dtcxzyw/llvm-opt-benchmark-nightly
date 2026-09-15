Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_filmicrgb?download=true
inline.NumInlined: 325
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 80
begin_hunk_0_@Ych_max_chroma:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load float, ptr %i.be, align 4, !tbaa !13 ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn float %i.t, %i.bf
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bd, %i.bg ; 2 uses
  %i.bi = fcmp reassoc nsz arcp contract afn oeq float %i.bh, 0.000000e+00
  br i1 %i.bi, label %Ych_max_chroma_without_negatives.exit, label %bb.d

bb.d:                                             ; preds = %_clip_chroma_black.exit21.i
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bb, f0x3F5B4315
  %i.bk = fadd reassoc nsz arcp contract afn float %i.ay, %i.bj
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bf, f0x3F0E1437
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bk, %i.bl
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, f0xBEDAE22E
  %i.bo = fdiv reassoc nsz arcp contract afn float %i.bn, %i.bh ; 2 uses
  %i.bp = fcmp reassoc nsz arcp contract afn oge float %i.bo, 0.000000e+00
  %i.bq = select reassoc nsz arcp contract afn i1 %i.bp, float %i.bo, float f0x7F7FFFFF
  br label %Ych_max_chroma_without_negatives.exit

Ych_max_chroma_without_negatives.exit:            ; preds = %_clip_chroma_black.exit21.i, %bb.d
  %.0.i22.i = phi nsz float [ %i.bq, %bb.d ], [ f0x7F7FFFFF, %_clip_chroma_black.exit21.i ] ; 2 uses
  %i.br = fcmp reassoc nsz arcp contract afn olt float %i.a, %i.c
  %i.bs = select reassoc nsz arcp contract afn i1 %i.br, float %i.a, float %i.c ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn olt float %i.bs, %i.e
  %. = select reassoc nsz arcp contract afn i1 %i.bt, float %i.bs, float %i.e ; 2 uses
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %.0.i.i, %.0.i20.i
  %i.bv = select reassoc nsz arcp contract afn i1 %i.bu, float %.0.i.i, float %.0.i20.i ; 2 uses
  %i.bw = fcmp reassoc nsz arcp contract afn olt float %i.bv, %.0.i22.i
  %..i = select reassoc nsz arcp contract afn i1 %i.bw, float %i.bv, float %.0.i22.i ; 2 uses
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %..i, %.
  %i.by = select reassoc nsz arcp contract afn i1 %i.bx, float %..i, float %.
  ret float %i.by
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc float @_clip_chroma_white(ptr nofree noundef nonnull readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #27 {
bb.a:
  %i.a = fmul reassoc nsz arcp contract afn float %1, f0x3F8767CD
  %i.b = fsub reassoc nsz arcp contract afn float %i.a, %2 ; 2 uses
  %i.c = fcmp reassoc nsz arcp contract afn ogt float %i.b, 0.000000e+00
  %i.d = select reassoc nsz arcp contract afn i1 %i.c, float %i.b, float 0.000000e+00 ; 2 uses
  %i.e = fcmp reassoc nsz arcp contract afn olt float %i.d, 1.000000e-03
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = fmul reassoc nsz arcp contract afn float %1, f0x3A8AA7BC
  %i.g = fmul reassoc nsz arcp contract afn float %1, f0x3F874523 ; 3 uses
  %i.h = load float, ptr %0, align 4, !tbaa !13   ; 2 uses
  %i.i = fmul reassoc nsz arcp contract afn float %3, f0x3F7AB8BE
  %i.j = fmul reassoc nsz arcp contract afn float %4, f0x3EC893CB
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, %i.i
  %i.l = fmul reassoc nsz arcp contract afn float %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !13 ; 2 uses
  %i.o = fmul reassoc nsz arcp contract afn float %3, f0x3CA8E83F
  %i.p = fmul reassoc nsz arcp contract afn float %4, f0x3F1BB61A
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, %i.o
  %i.r = fmul reassoc nsz arcp contract afn float %i.n, %i.q
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !13 ; 2 uses
  %i.v = fadd reassoc nsz arcp contract afn float %4, %3
  %i.w = fmul reassoc nsz arcp contract afn float %i.v, %i.u
  %i.x = fsub reassoc nsz arcp contract afn float %i.s, %i.w ; 3 uses
  %i.y = fmul reassoc nsz arcp contract afn float %3, f0x3F2ECFE7
  %i.z = fmul reassoc nsz arcp contract afn float %4, f0x3EF6DAAB
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %i.y
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %1 ; 2 uses
  %i.ac = fcmp reassoc nsz arcp contract afn une float %i.x, 0.000000e+00
  %i.ad = fdiv reassoc nsz arcp contract afn float %i.ab, %i.x
  %i.ae = fcmp reassoc nsz arcp contract afn ugt float %i.g, %i.ad
  %or.cond.i = and i1 %i.ac, %i.ae
  br i1 %or.cond.i, label %bb.c, label %_clip_chroma_white_raw.exit

bb.c:                                             ; preds = %bb.b
  %i.af = fmul reassoc nsz arcp contract afn float %i.x, %i.g
  %i.ag = fsub reassoc nsz arcp contract afn float %i.af, %i.ab
  %i.ah = fmul reassoc nsz arcp contract afn float %i.n, f0x3F5B4315
  %i.ai = fadd reassoc nsz arcp contract afn float %i.h, %i.ah
  %i.aj = fmul reassoc nsz arcp contract afn float %i.u, f0x3F0E1437
  %i.ak = fadd reassoc nsz arcp contract afn float %i.ai, %i.aj
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, %i.g
  %i.am = fmul reassoc nsz arcp contract afn float %1, f0x3F7CFD26
  %i.an = fsub reassoc nsz arcp contract afn float %i.al, %i.am
  %i.ao = fmul reassoc nsz arcp contract afn float %i.an, f0xBEDAE22E
  %i.ap = fdiv reassoc nsz arcp contract afn float %i.ao, %i.ag
  br label %_clip_chroma_white_raw.exit

_clip_chroma_white_raw.exit:                      ; preds = %bb.b, %bb.c
  %.1.i = phi nsz float [ f0x7F7FFFFF, %bb.b ], [ %i.ap, %bb.c ]
  %i.aq = fmul reassoc nsz arcp contract afn float %.1.i, %i.d
  %i.ar = fdiv reassoc nsz arcp contract afn float %i.aq, %i.f
  br label %_clip_chroma_white_raw.exit23

bb.d:                                             ; preds = %bb.a
  %i.as = load float, ptr %0, align 4, !tbaa !13  ; 2 uses
  %i.at = fmul reassoc nsz arcp contract afn float %3, f0x3F7AB8BE
  %i.au = fmul reassoc nsz arcp contract afn float %4, f0x3EC893CB
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, %i.at
  %i.aw = fmul reassoc nsz arcp contract afn float %i.as, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !13 ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %3, f0x3CA8E83F
  %i.ba = fmul reassoc nsz arcp contract afn float %4, f0x3F1BB61A
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, %i.az
  %i.bc = fmul reassoc nsz arcp contract afn float %i.ay, %i.bb
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.aw
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !13 ; 2 uses
  %i.bg = fadd reassoc nsz arcp contract afn float %4, %3
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, %i.bf
  %i.bi = fsub reassoc nsz arcp contract afn float %i.bd, %i.bh ; 3 uses
  %i.bj = fmul reassoc nsz arcp contract afn float %3, f0x3F2ECFE7
  %i.bk = fmul reassoc nsz arcp contract afn float %4, f0x3EF6DAAB
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %i.bj
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, %1 ; 2 uses
  %i.bn = fcmp reassoc nsz arcp contract afn une float %i.bi, 0.000000e+00
  %i.bo = fdiv reassoc nsz arcp contract afn float %i.bm, %i.bi
  %i.bp = fcmp reassoc nsz arcp contract afn ugt float %2, %i.bo
  %or.cond.i21 = and i1 %i.bn, %i.bp
  br i1 %or.cond.i21, label %bb.e, label %_clip_chroma_white_raw.exit23

bb.e:                                             ; preds = %bb.d
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bi, %2
  %i.br = fsub reassoc nsz arcp contract afn float %i.bq, %i.bm
  %i.bs = fmul reassoc nsz arcp contract afn float %i.ay, f0x3F5B4315
  %i.bt = fadd reassoc nsz arcp contract afn float %i.as, %i.bs
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bf, f0x3F0E1437
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bt, %i.bu
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, %2
  %i.bx = fmul reassoc nsz arcp contract afn float %1, f0x3F7CFD26
  %i.by = fsub reassoc nsz arcp contract afn float %i.bw, %i.bx
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, f0xBEDAE22E
  %i.ca = fdiv reassoc nsz arcp contract afn float %i.bz, %i.br
  br label %_clip_chroma_white_raw.exit23

_clip_chroma_white_raw.exit23:                    ; preds = %bb.e, %bb.d, %_clip_chroma_white_raw.exit
  %.0 = phi nsz float [ %i.ar, %_clip_chroma_white_raw.exit ], [ f0x7F7FFFFF, %bb.d ], [ %i.ca, %bb.e ] ; 2 uses
  %i.cb = fcmp reassoc nsz arcp contract afn oge float %.0, 0.000000e+00
  %i.cc = select reassoc nsz arcp contract afn i1 %i.cb, float %.0, float f0x7F7FFFFF
  ret float %i.cc
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #9

declare ptr @dt_ioppr_get_iop_work_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @gauss_solve(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 4, 6) %2) unnamed_addr #4 {
bb.a:
  %i.a = shl nuw nsw i32 %2, 2
  %i.b = zext nneg i32 %i.a to i64
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #36 ; 4 uses
  %i.d = add nsw i32 %2, -1                       ; 2 uses
  %i.e = zext nneg i32 %i.d to i64                ; 9 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  store i32 %i.d, ptr %i.f, align 4, !tbaa !14
  %i.g = zext nneg i32 %2 to i64                  ; 57 uses
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 4 uses
  %i.i = add nuw nsw i64 %i.h, 8                  ; 2 uses
  %i.j = mul nuw nsw i64 %i.g, %i.g
  %i.k = shl nuw nsw i64 %i.j, 3
  %scevgep1 = getelementptr i8, ptr %0, i64 %i.k  ; 2 uses
  %i.l = add nsw i64 %i.h, -8
  %i.m = mul nuw nsw i64 %i.l, %i.g
  %i.n = shl nuw nsw i64 %i.g, 3
  %i.o = shl nuw nsw i64 %i.g, 3                  ; 3 uses
  %scevgep29 = getelementptr i8, ptr %0, i64 %i.o
  %i.p = add nuw nsw i64 %i.o, 8
  %i.q = shl nuw nsw i64 %i.g, 3
  %i.r = add nsw i64 %i.g, -2
  %i.s = getelementptr i8, ptr %0, i64 %i.o
  %i.t = getelementptr i8, ptr %0, i64 %i.i
  %i.u = getelementptr i8, ptr %0, i64 %i.h
  %i.v = getelementptr i8, ptr %0, i64 %i.m
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = getelementptr i8, ptr %0, i64 %i.h
  br label %bb.b

.loopexit.i:                                      ; preds = %._crit_edge121.i, %.preheader111.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond151.not.i = icmp eq i64 %indvars.iv.next148.i, %i.g
  br i1 %exitcond151.not.i, label %.lr.ph.preheader.i9.preheader, label %bb.b

.lr.ph.preheader.i9.preheader:                    ; preds = %.loopexit.i
  %i.y = shl nuw nsw i64 %i.g, 3                  ; 4 uses
  %scevgep50 = getelementptr i8, ptr %1, i64 %i.y
  %i.z = add nuw nsw i64 %i.y, 8
  %i.aa = add nsw i64 %i.y, -8
  %i.ab = mul nuw nsw i64 %i.aa, %i.g
  %i.ac = getelementptr i8, ptr %0, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = getelementptr i8, ptr %0, i64 %i.y
  %broadcast.splatinsert62 = insertelement <4 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat63 = shufflevector <4 x i64> %broadcast.splatinsert62, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.preheader.i9

bb.b:                                             ; preds = %.loopexit.i, %bb.a
  %indvars.iv147.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next148.i, %.loopexit.i ] ; 16 uses
  %indvars.iv.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i, %.loopexit.i ] ; 15 uses
  %i.af = xor i64 %indvars.iv147.i, -1
  %i.ag = add nsw i64 %i.af, %i.g                 ; 2 uses
  %i.ah = sub nsw i64 %i.r, %indvars.iv147.i      ; 2 uses
  %i.ai = shl nuw nsw i64 %indvars.iv147.i, 3
  %3 = getelementptr i8, ptr %0, i64 %i.ai
  %scevgep27 = getelementptr i8, ptr %3, i64 8
  %i.aj = mul i64 %i.p, %indvars.iv147.i
  %i.ak = getelementptr i8, ptr %0, i64 %i.aj
  %scevgep31 = getelementptr i8, ptr %i.ak, i64 8
  %i.al = mul i64 %i.q, %indvars.iv147.i
  %scevgep32 = getelementptr i8, ptr %i.s, i64 %i.al
  %i.am = xor i64 %indvars.iv147.i, -1
  %i.an = add nsw i64 %i.am, %i.g                 ; 10 uses
  %i.ao = mul i64 %i.i, %indvars.iv147.i          ; 3 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ao ; 2 uses
  %scevgep2 = getelementptr i8, ptr %i.u, i64 %i.ao
  %i.ap = shl nuw nsw i64 %indvars.iv147.i, 3
  %scevgep3 = getelementptr i8, ptr %i.w, i64 %i.ap
  %i.aq = getelementptr i8, ptr %0, i64 %i.ao
  %scevgep4 = getelementptr i8, ptr %i.aq, i64 8
  %i.ar = mul i64 %i.n, %indvars.iv147.i
  %scevgep5 = getelementptr i8, ptr %i.x, i64 %i.ar
  %indvars149.i = trunc i64 %indvars.iv147.i to i32 ; 4 uses
  %indvars.iv.next148.i = add nuw nsw i64 %indvars.iv147.i, 1 ; 3 uses
  %i.as = icmp samesign ult i64 %indvars.iv.next148.i, %i.g ; 2 uses
  br i1 %i.as, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv147.i ; 10 uses
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv124.i.prol = phi i64 [ %indvars.iv.next125.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i, %.lr.ph.preheader.i ] ; 3 uses
  %.0100112.i.prol = phi i32 [ %spec.select.i.prol, %.lr.ph.i.prol ], [ %indvars149.i, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.at = mul nuw nsw i64 %indvars.iv124.i.prol, %i.g
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.at
  %i.au = load double, ptr %gep.i.prol, align 8, !tbaa !184
  %i.av = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.au)
  %i.aw = mul nsw i32 %.0100112.i.prol, %2
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !184
  %i.ba = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.az)
  %i.bb = fcmp reassoc nsz arcp contract afn ogt double %i.av, %i.ba
  %i.bc = trunc nuw nsw i64 %indvars.iv124.i.prol to i32
  %spec.select.i.prol = select i1 %i.bb, i32 %i.bc, i32 %.0100112.i.prol ; 3 uses
  %indvars.iv.next125.i.prol = add nuw nsw i64 %indvars.iv124.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !498

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %spec.select.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %indvars.iv124.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next125.i.prol, %.lr.ph.i.prol ]
  %.0100112.i.unr = phi i32 [ %indvars149.i, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %i.bd = icmp ult i64 %i.ah, 3
  br i1 %i.bd, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.0100.lcssa.i = phi i32 [ %indvars149.i, %bb.b ], [ %spec.select.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select.i.3, %.lr.ph.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv147.i
  store i32 %.0100.lcssa.i, ptr %i.be, align 4, !tbaa !14
  %i.bf = mul nsw i32 %.0100.lcssa.i, %2
  %i.bg = sext i32 %i.bf to i64                   ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %0, i64 %indvars.iv147.i ; 8 uses
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !184 ; 7 uses
  %i.bk = mul nuw nsw i64 %indvars.iv147.i, %i.g  ; 2 uses
  %i.bl = mul nuw nsw i32 %2, %indvars149.i
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bm ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !184
  store double %i.bo, ptr %i.bi, align 8, !tbaa !184
  store double %i.bj, ptr %i.bn, align 8, !tbaa !184
  %i.bp = fcmp reassoc nsz arcp contract afn une double %i.bj, 0.000000e+00
  br i1 %i.bp, label %.preheader111.i, label %gauss_make_triangular.exit.thread

.preheader111.i:                                  ; preds = %._crit_edge.i
  br i1 %i.as, label %.lr.ph115.i.preheader, label %.loopexit.i

.lr.ph115.i.preheader:                            ; preds = %.preheader111.i
  %xtraiter76 = and i64 %i.ag, 3                  ; 2 uses
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol.preheader

.lr.ph115.i.prol.preheader:                       ; preds = %.lr.ph115.i.preheader
  %i.bq = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bj
  br label %.lr.ph115.i.prol

.lr.ph115.i.prol:                                 ; preds = %.lr.ph115.i.prol, %.lr.ph115.i.prol.preheader
  %indvars.iv127.i.prol = phi i64 [ %indvars.iv.next128.i.prol, %.lr.ph115.i.prol ], [ %indvars.iv.i, %.lr.ph115.i.prol.preheader ] ; 2 uses
  %prol.iter78 = phi i64 [ %prol.iter78.next, %.lr.ph115.i.prol ], [ 0, %.lr.ph115.i.prol.preheader ]
  %i.br = mul nuw nsw i64 %indvars.iv127.i.prol, %i.g
  %gep156.i.prol = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.br ; 2 uses
  %i.bs = load double, ptr %gep156.i.prol, align 8, !tbaa !184
  %i.bt = fneg reassoc nsz arcp contract afn double %i.bs
  %i.bu = fmul reassoc nsz arcp contract afn double %i.bt, %i.bq
  store double %i.bu, ptr %gep156.i.prol, align 8, !tbaa !184
  %indvars.iv.next128.i.prol = add nuw nsw i64 %indvars.iv127.i.prol, 1 ; 2 uses
  %prol.iter78.next = add i64 %prol.iter78, 1     ; 2 uses
  %prol.iter78.cmp.not = icmp eq i64 %prol.iter78.next, %xtraiter76
  br i1 %prol.iter78.cmp.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol, !llvm.loop !499

.lr.ph115.i.prol.loopexit:                        ; preds = %.lr.ph115.i.prol, %.lr.ph115.i.preheader
  %indvars.iv127.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph115.i.preheader ], [ %indvars.iv.next128.i.prol, %.lr.ph115.i.prol ]
  %i.bv = icmp ult i64 %i.ah, 3
  br i1 %i.bv, label %._crit_edge116.i, label %.lr.ph115.i.preheader.new

.lr.ph115.i.preheader.new:                        ; preds = %.lr.ph115.i.prol.loopexit
  %i.bw = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bj
  %i.bx = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bj
  %i.by = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bj
  %i.bz = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bj
  br label %.lr.ph115.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i.3, %.lr.ph.i ], [ %indvars.iv124.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0100112.i = phi i32 [ %spec.select.i.3, %.lr.ph.i ], [ %.0100112.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ca = mul nuw nsw i64 %indvars.iv124.i, %i.g
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.ca
  %i.cb = load double, ptr %gep.i, align 8, !tbaa !184
  %i.cc = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cb)
  %i.cd = mul nsw i32 %.0100112.i, %2
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !184
  %i.ch = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cg)
  %i.ci = fcmp reassoc nsz arcp contract afn ogt double %i.cc, %i.ch
  %i.cj = trunc nuw nsw i64 %indvars.iv124.i to i32
  %spec.select.i = select i1 %i.ci, i32 %i.cj, i32 %.0100112.i ; 2 uses
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %i.ck = mul nuw nsw i64 %indvars.iv.next125.i, %i.g
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.ck
  %i.cl = load double, ptr %gep.i.1, align 8, !tbaa !184
  %i.cm = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cl)
  %i.cn = mul nsw i32 %spec.select.i, %2
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !184
  %i.cr = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cq)
  %i.cs = fcmp reassoc nsz arcp contract afn ogt double %i.cm, %i.cr
  %i.ct = trunc nuw nsw i64 %indvars.iv.next125.i to i32
  %spec.select.i.1 = select i1 %i.cs, i32 %i.ct, i32 %spec.select.i ; 2 uses
  %indvars.iv.next125.i.1 = add nuw nsw i64 %indvars.iv124.i, 2 ; 2 uses
  %i.cu = mul nuw nsw i64 %indvars.iv.next125.i.1, %i.g
  %gep.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.cu
  %i.cv = load double, ptr %gep.i.2, align 8, !tbaa !184
  %i.cw = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cv)
  %i.cx = mul nsw i32 %spec.select.i.1, %2
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !184
  %i.db = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.da)
  %i.dc = fcmp reassoc nsz arcp contract afn ogt double %i.cw, %i.db
  %i.dd = trunc nuw nsw i64 %indvars.iv.next125.i.1 to i32
  %spec.select.i.2 = select i1 %i.dc, i32 %i.dd, i32 %spec.select.i.1 ; 2 uses
  %indvars.iv.next125.i.2 = add nuw nsw i64 %indvars.iv124.i, 3 ; 2 uses
  %i.de = mul nuw nsw i64 %indvars.iv.next125.i.2, %i.g
  %gep.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.de
  %i.df = load double, ptr %gep.i.3, align 8, !tbaa !184
  %i.dg = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.df)
  %i.dh = mul nsw i32 %spec.select.i.2, %2
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !184
  %i.dl = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.dk)
  %i.dm = fcmp reassoc nsz arcp contract afn ogt double %i.dg, %i.dl
  %i.dn = trunc nuw nsw i64 %indvars.iv.next125.i.2 to i32
  %spec.select.i.3 = select i1 %i.dm, i32 %i.dn, i32 %spec.select.i.2 ; 2 uses
  %indvars.iv.next125.i.3 = add nuw nsw i64 %indvars.iv124.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next125.i.3, %i.g
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i

._crit_edge116.i:                                 ; preds = %.lr.ph115.i, %.lr.ph115.i.prol.loopexit
  %i.do = zext i32 %.0100.lcssa.i to i64
  %.not.not.i = icmp eq i64 %indvars.iv147.i, %i.do
  br i1 %.not.not.i, label %.preheader.preheader.i, label %.lr.ph118.preheader.i

.lr.ph118.preheader.i:                            ; preds = %._crit_edge116.i
  %invariant.gep157.i = getelementptr [8 x i8], ptr %0, i64 %i.bg ; 6 uses
  %invariant.gep159.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bk ; 6 uses
  %min.iters.check36 = icmp ult i64 %i.an, 8
  br i1 %min.iters.check36, label %.lr.ph118.i.preheader, label %vector.memcheck26

vector.memcheck26:                                ; preds = %.lr.ph118.preheader.i
  %i.dp = shl nsw i64 %i.bg, 3                    ; 2 uses
  %scevgep28 = getelementptr i8, ptr %scevgep27, i64 %i.dp
  %scevgep30 = getelementptr i8, ptr %scevgep29, i64 %i.dp
  %bound033 = icmp ult ptr %scevgep28, %scevgep32
  %bound134 = icmp ult ptr %scevgep31, %scevgep30
  %found.conflict35 = and i1 %bound033, %bound134
  br i1 %found.conflict35, label %.lr.ph118.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck26
  %n.vec38 = and i64 %i.an, -8                    ; 3 uses
  %i.dq = add i64 %indvars.iv.i, %n.vec38
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.dr = add nuw i64 %indvars.iv.i, %index40     ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %invariant.gep157.i, i64 %i.dr ; 3 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 32     ; 2 uses
end_hunk_0
begin_hunk_1_@gauss_solve:bb.a
  %invariant.gep161.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bk ; 7 uses
  %min.iters.check = icmp ult i64 %i.an, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %scevgep2, %scevgep1
  %found.conflict = and i1 %bound0, %bound1
  %bound06 = icmp ult ptr %scevgep, %scevgep5
  %bound17 = icmp ult ptr %scevgep4, %scevgep1
  %found.conflict8 = and i1 %bound06, %bound17
  %conflict.rdx = or i1 %found.conflict, %found.conflict8
  %min.iters.check9 = icmp ult i64 %i.an, 16
  %i.fa = and i64 %i.an, 12
  %n.vec = and i64 %i.an, -16                     ; 4 uses
  %i.fb = add i64 %indvars.iv.i, %n.vec
  %cmp.n = icmp eq i64 %i.an, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.fa, 0
  %n.vec17 = and i64 %i.an, -4                    ; 3 uses
  %i.fc = add i64 %indvars.iv.i, %n.vec17
  %cmp.n24 = icmp eq i64 %i.an, %n.vec17
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge121.i, %.preheader.preheader.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.i, %.preheader.preheader.i ], [ %indvars.iv.next143.i, %._crit_edge121.i ] ; 2 uses
  %i.fd = mul nuw nsw i64 %indvars.iv142.i, %i.g  ; 2 uses
  %gep166.i = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.fd ; 7 uses
  %invariant.gep163.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fd ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fe = load double, ptr %gep166.i, align 8, !tbaa !184, !alias.scope !522
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.fe, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ff = add nuw i64 %indvars.iv.i, %index       ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %i.ff ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 96
  %wide.load = load <4 x double>, ptr %i.fg, align 8, !tbaa !184, !alias.scope !523
  %wide.load10 = load <4 x double>, ptr %i.fh, align 8, !tbaa !184, !alias.scope !523
  %wide.load11 = load <4 x double>, ptr %i.fi, align 8, !tbaa !184, !alias.scope !523
  %wide.load12 = load <4 x double>, ptr %i.fj, align 8, !tbaa !184, !alias.scope !523
  %i.fk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load, %broadcast.splat
  %i.fl = fmul reassoc nsz arcp contract afn <4 x double> %wide.load10, %broadcast.splat
  %i.fm = fmul reassoc nsz arcp contract afn <4 x double> %wide.load11, %broadcast.splat
  %i.fn = fmul reassoc nsz arcp contract afn <4 x double> %wide.load12, %broadcast.splat
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %i.ff ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 64 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 96 ; 2 uses
  %wide.load13 = load <4 x double>, ptr %i.fo, align 8, !tbaa !184, !alias.scope !524, !noalias !525
  %wide.load14 = load <4 x double>, ptr %i.fp, align 8, !tbaa !184, !alias.scope !524, !noalias !525
  %wide.load15 = load <4 x double>, ptr %i.fq, align 8, !tbaa !184, !alias.scope !524, !noalias !525
  %wide.load16 = load <4 x double>, ptr %i.fr, align 8, !tbaa !184, !alias.scope !524, !noalias !525
  %i.fs = fadd reassoc nsz arcp contract afn <4 x double> %wide.load13, %i.fk
  %i.ft = fadd reassoc nsz arcp contract afn <4 x double> %wide.load14, %i.fl
  %i.fu = fadd reassoc nsz arcp contract afn <4 x double> %wide.load15, %i.fm
  %i.fv = fadd reassoc nsz arcp contract afn <4 x double> %wide.load16, %i.fn
  store <4 x double> %i.fs, ptr %i.fo, align 8, !tbaa !184, !alias.scope !524, !noalias !525
  store <4 x double> %i.ft, ptr %i.fp, align 8, !tbaa !184, !alias.scope !524, !noalias !525
  store <4 x double> %i.fu, ptr %i.fq, align 8, !tbaa !184, !alias.scope !524, !noalias !525
  store <4 x double> %i.fv, ptr %i.fr, align 8, !tbaa !184, !alias.scope !524, !noalias !525
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fw = icmp eq i64 %index.next, %n.vec
  br i1 %i.fw, label %middle.block, label %vector.body, !llvm.loop !510

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge121.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !526

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.fx = load double, ptr %gep166.i, align 8, !tbaa !184, !alias.scope !522
  %broadcast.splatinsert20 = insertelement <4 x double> poison, double %i.fx, i64 0
  %broadcast.splat21 = shufflevector <4 x double> %broadcast.splatinsert20, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.fy = add nuw i64 %indvars.iv.i, %index18     ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %i.fy
  %wide.load19 = load <4 x double>, ptr %i.fz, align 8, !tbaa !184, !alias.scope !523
  %i.ga = fmul reassoc nsz arcp contract afn <4 x double> %wide.load19, %broadcast.splat21
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %i.fy ; 2 uses
  %wide.load22 = load <4 x double>, ptr %i.gb, align 8, !tbaa !184, !alias.scope !524, !noalias !525
  %i.gc = fadd reassoc nsz arcp contract afn <4 x double> %wide.load22, %i.ga
  store <4 x double> %i.gc, ptr %i.gb, align 8, !tbaa !184, !alias.scope !524, !noalias !525
  %index.next23 = add nuw i64 %index18, 4         ; 2 uses
  %i.gd = icmp eq i64 %index.next23, %n.vec17
  br i1 %i.gd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !511

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n24, label %._crit_edge121.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv137.i.ph = phi i64 [ %indvars.iv.i, %iter.check ], [ %i.fc, %vec.epilog.middle.block ], [ %i.fb, %vec.epilog.iter.check ] ; 4 uses
  %i.ge = sub i64 %i.g, %indvars.iv137.i.ph
  %xtraiter82 = and i64 %i.ge, 3                  ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv137.i.prol = phi i64 [ %indvars.iv.next138.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv137.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gf = load double, ptr %gep166.i, align 8, !tbaa !184
  %gep162.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %indvars.iv137.i.prol
  %i.gg = load double, ptr %gep162.i.prol, align 8, !tbaa !184
  %i.gh = fmul reassoc nsz arcp contract afn double %i.gg, %i.gf
  %gep164.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %indvars.iv137.i.prol ; 2 uses
  %i.gi = load double, ptr %gep164.i.prol, align 8, !tbaa !184
  %i.gj = fadd reassoc nsz arcp contract afn double %i.gi, %i.gh
  store double %i.gj, ptr %gep164.i.prol, align 8, !tbaa !184
  %indvars.iv.next138.i.prol = add nuw nsw i64 %indvars.iv137.i.prol, 1 ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !512

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv137.i.unr = phi i64 [ %indvars.iv137.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next138.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.gk = sub i64 %indvars.iv137.i.ph, %i.g
  %i.gl = icmp ugt i64 %i.gk, -4
  br i1 %i.gl, label %._crit_edge121.i, label %vec.epilog.scalar.ph

._crit_edge121.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next143.i, %i.g
  br i1 %exitcond146.not.i, label %.loopexit.i, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv137.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.gm = load double, ptr %gep166.i, align 8, !tbaa !184
  %gep162.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %indvars.iv137.i
  %i.gn = load double, ptr %gep162.i, align 8, !tbaa !184
  %i.go = fmul reassoc nsz arcp contract afn double %i.gn, %i.gm
  %gep164.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %indvars.iv137.i ; 2 uses
  %i.gp = load double, ptr %gep164.i, align 8, !tbaa !184
  %i.gq = fadd reassoc nsz arcp contract afn double %i.gp, %i.go
  store double %i.gq, ptr %gep164.i, align 8, !tbaa !184
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %i.gr = load double, ptr %gep166.i, align 8, !tbaa !184
  %gep162.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %indvars.iv.next138.i
  %i.gs = load double, ptr %gep162.i.1, align 8, !tbaa !184
  %i.gt = fmul reassoc nsz arcp contract afn double %i.gs, %i.gr
  %gep164.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %indvars.iv.next138.i ; 2 uses
  %i.gu = load double, ptr %gep164.i.1, align 8, !tbaa !184
  %i.gv = fadd reassoc nsz arcp contract afn double %i.gu, %i.gt
  store double %i.gv, ptr %gep164.i.1, align 8, !tbaa !184
  %indvars.iv.next138.i.1 = add nuw nsw i64 %indvars.iv137.i, 2 ; 2 uses
  %i.gw = load double, ptr %gep166.i, align 8, !tbaa !184
  %gep162.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %indvars.iv.next138.i.1
  %i.gx = load double, ptr %gep162.i.2, align 8, !tbaa !184
  %i.gy = fmul reassoc nsz arcp contract afn double %i.gx, %i.gw
  %gep164.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %indvars.iv.next138.i.1 ; 2 uses
  %i.gz = load double, ptr %gep164.i.2, align 8, !tbaa !184
  %i.ha = fadd reassoc nsz arcp contract afn double %i.gz, %i.gy
  store double %i.ha, ptr %gep164.i.2, align 8, !tbaa !184
  %indvars.iv.next138.i.2 = add nuw nsw i64 %indvars.iv137.i, 3 ; 2 uses
  %i.hb = load double, ptr %gep166.i, align 8, !tbaa !184
  %gep162.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %indvars.iv.next138.i.2
  %i.hc = load double, ptr %gep162.i.3, align 8, !tbaa !184
  %i.hd = fmul reassoc nsz arcp contract afn double %i.hc, %i.hb
  %gep164.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %indvars.iv.next138.i.2 ; 2 uses
  %i.he = load double, ptr %gep164.i.3, align 8, !tbaa !184
  %i.hf = fadd reassoc nsz arcp contract afn double %i.he, %i.hd
  store double %i.hf, ptr %gep164.i.3, align 8, !tbaa !184
  %indvars.iv.next138.i.3 = add nuw nsw i64 %indvars.iv137.i, 4 ; 2 uses
  %exitcond141.not.i.3 = icmp eq i64 %indvars.iv.next138.i.3, %i.g
  br i1 %exitcond141.not.i.3, label %._crit_edge121.i, label %vec.epilog.scalar.ph, !llvm.loop !513

.loopexit.i15:                                    ; preds = %.lr.ph.i12.prol.loopexit, %.lr.ph.i12, %vector.ph58
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i10, 1
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next64.i, %i.e
  br i1 %exitcond67.not.i, label %.lr.ph58.i, label %.lr.ph.preheader.i9

.lr.ph58.i:                                       ; preds = %.loopexit.i15
  %i.hg = add nuw nsw i32 %2, 1
  %i.hh = zext nneg i32 %i.hg to i64              ; 4 uses
  %i.hi = mul nuw nsw i64 %i.e, %i.hh
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !184
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !184
  %i.hn = fdiv reassoc nsz arcp contract afn double %i.hm, %i.hk ; 6 uses
  store double %i.hn, ptr %i.hl, align 8, !tbaa !184
  %invariant.gep76.i = getelementptr [8 x i8], ptr %0, i64 %i.e ; 5 uses
  %xtraiter88 = and i64 %i.e, 3                   ; 3 uses
  %.not = icmp eq i32 %2, 5
  br i1 %.not, label %.new, label %.epil.preheader

.lr.ph.preheader.i9:                              ; preds = %.lr.ph.preheader.i9.preheader, %.loopexit.i15
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %.loopexit.i15 ], [ 0, %.lr.ph.preheader.i9.preheader ] ; 7 uses
  %indvars.iv.i10 = phi i64 [ %indvars.iv.next.i16, %.loopexit.i15 ], [ 1, %.lr.ph.preheader.i9.preheader ] ; 6 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv63.i
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !14
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %1, i64 %i.hq ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !184 ; 7 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv63.i ; 2 uses
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !184
  store double %i.hu, ptr %i.hr, align 8, !tbaa !184
  store double %i.hs, ptr %i.ht, align 8, !tbaa !184
  %invariant.gep.i11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv63.i ; 6 uses
  %i.hv = xor i64 %indvars.iv63.i, -1
  %i.hw = add nsw i64 %i.hv, %i.g                 ; 3 uses
  %min.iters.check57 = icmp ult i64 %i.hw, 4
  br i1 %min.iters.check57, label %.lr.ph.i12.preheader, label %vector.memcheck48

vector.memcheck48:                                ; preds = %.lr.ph.preheader.i9
  %i.hx = shl nuw nsw i64 %indvars.iv63.i, 3      ; 2 uses
  %scevgep52 = getelementptr i8, ptr %i.ad, i64 %i.hx
  %i.hy = mul i64 %i.z, %indvars.iv63.i
  %scevgep51 = getelementptr i8, ptr %i.ae, i64 %i.hy
  %4 = getelementptr nuw i8, ptr %1, i64 %i.hx
  %scevgep49 = getelementptr nuw i8, ptr %4, i64 8
  %bound053 = icmp ult ptr %scevgep49, %scevgep52
  %bound154 = icmp ult ptr %scevgep51, %scevgep50
  %found.conflict55 = and i1 %bound053, %bound154
  br i1 %found.conflict55, label %.lr.ph.i12.preheader, label %vector.ph58

vector.ph58:                                      ; preds = %vector.memcheck48
  %n.vec59 = and i64 %i.hw, -4                    ; 2 uses
  %i.hz = add i64 %indvars.iv.i10, %n.vec59
  %broadcast.splatinsert64 = insertelement <4 x i64> poison, i64 %indvars.iv.i10, i64 0
  %broadcast.splat65 = shufflevector <4 x i64> %broadcast.splatinsert64, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat65, <i64 0, i64 1, i64 2, i64 3>
  %broadcast.splatinsert60 = insertelement <4 x double> poison, double %i.hs, i64 0
  %broadcast.splat61 = shufflevector <4 x double> %broadcast.splatinsert60, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ia = mul nuw nsw <4 x i64> %induction, %broadcast.splat63
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, <4 x i64> %i.ia
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !184, !alias.scope !527
  %i.ib = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather, %broadcast.splat61
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i10 ; 2 uses
  %wide.load67 = load <4 x double>, ptr %i.ic, align 8, !tbaa !184, !alias.scope !528, !noalias !527
  %i.id = fadd reassoc nsz arcp contract afn <4 x double> %wide.load67, %i.ib
  store <4 x double> %i.id, ptr %i.ic, align 8, !tbaa !184, !alias.scope !528, !noalias !527
  %cmp.n69 = icmp eq i64 %i.hw, %n.vec59
  br i1 %cmp.n69, label %.loopexit.i15, label %.lr.ph.i12.preheader

.lr.ph.i12.preheader:                             ; preds = %vector.memcheck48, %.lr.ph.preheader.i9, %vector.ph58
  %indvars.iv60.i.ph = phi i64 [ %indvars.iv.i10, %vector.memcheck48 ], [ %indvars.iv.i10, %.lr.ph.preheader.i9 ], [ %i.hz, %vector.ph58 ] ; 4 uses
  %i.ie = sub i64 %i.g, %indvars.iv60.i.ph
  %xtraiter85 = and i64 %i.ie, 3                  ; 2 uses
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.lr.ph.i12.prol.loopexit, label %.lr.ph.i12.prol

.lr.ph.i12.prol:                                  ; preds = %.lr.ph.i12.preheader, %.lr.ph.i12.prol
  %indvars.iv60.i.prol = phi i64 [ %indvars.iv.next61.i.prol, %.lr.ph.i12.prol ], [ %indvars.iv60.i.ph, %.lr.ph.i12.preheader ] ; 3 uses
  %prol.iter87 = phi i64 [ %prol.iter87.next, %.lr.ph.i12.prol ], [ 0, %.lr.ph.i12.preheader ]
  %i.if = mul nuw nsw i64 %indvars.iv60.i.prol, %i.g
  %gep.i13.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, i64 %i.if
  %i.ig = load double, ptr %gep.i13.prol, align 8, !tbaa !184
  %i.ih = fmul reassoc nsz arcp contract afn double %i.ig, %i.hs
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv60.i.prol ; 2 uses
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !184
  %i.ik = fadd reassoc nsz arcp contract afn double %i.ij, %i.ih
  store double %i.ik, ptr %i.ii, align 8, !tbaa !184
  %indvars.iv.next61.i.prol = add nuw nsw i64 %indvars.iv60.i.prol, 1 ; 2 uses
  %prol.iter87.next = add i64 %prol.iter87, 1     ; 2 uses
  %prol.iter87.cmp.not = icmp eq i64 %prol.iter87.next, %xtraiter85
  br i1 %prol.iter87.cmp.not, label %.lr.ph.i12.prol.loopexit, label %.lr.ph.i12.prol, !llvm.loop !517

.lr.ph.i12.prol.loopexit:                         ; preds = %.lr.ph.i12.prol, %.lr.ph.i12.preheader
  %indvars.iv60.i.unr = phi i64 [ %indvars.iv60.i.ph, %.lr.ph.i12.preheader ], [ %indvars.iv.next61.i.prol, %.lr.ph.i12.prol ]
  %i.il = sub i64 %indvars.iv60.i.ph, %i.g
  %i.im = icmp ugt i64 %i.il, -4
  br i1 %i.im, label %.loopexit.i15, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.lr.ph.i12.prol.loopexit, %.lr.ph.i12
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i.3, %.lr.ph.i12 ], [ %indvars.iv60.i.unr, %.lr.ph.i12.prol.loopexit ] ; 6 uses
  %i.in = mul nuw nsw i64 %indvars.iv60.i, %i.g
  %gep.i13 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, i64 %i.in
  %i.io = load double, ptr %gep.i13, align 8, !tbaa !184
  %i.ip = fmul reassoc nsz arcp contract afn double %i.io, %i.hs
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv60.i ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !184
  %i.is = fadd reassoc nsz arcp contract afn double %i.ir, %i.ip
  store double %i.is, ptr %i.iq, align 8, !tbaa !184
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %i.it = mul nuw nsw i64 %indvars.iv.next61.i, %i.g
  %gep.i13.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, i64 %i.it
  %i.iu = load double, ptr %gep.i13.1, align 8, !tbaa !184
  %i.iv = fmul reassoc nsz arcp contract afn double %i.iu, %i.hs
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next61.i ; 2 uses
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !184
  %i.iy = fadd reassoc nsz arcp contract afn double %i.ix, %i.iv
  store double %i.iy, ptr %i.iw, align 8, !tbaa !184
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %i.iz = mul nuw nsw i64 %indvars.iv.next61.i.1, %i.g
  %gep.i13.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, i64 %i.iz
  %i.ja = load double, ptr %gep.i13.2, align 8, !tbaa !184
  %i.jb = fmul reassoc nsz arcp contract afn double %i.ja, %i.hs
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next61.i.1 ; 2 uses
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !184
  %i.je = fadd reassoc nsz arcp contract afn double %i.jd, %i.jb
  store double %i.je, ptr %i.jc, align 8, !tbaa !184
  %indvars.iv.next61.i.2 = add nuw nsw i64 %indvars.iv60.i, 3 ; 2 uses
  %i.jf = mul nuw nsw i64 %indvars.iv.next61.i.2, %i.g
  %gep.i13.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, i64 %i.jf
  %i.jg = load double, ptr %gep.i13.3, align 8, !tbaa !184
  %i.jh = fmul reassoc nsz arcp contract afn double %i.jg, %i.hs
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next61.i.2 ; 2 uses
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !184
  %i.jk = fadd reassoc nsz arcp contract afn double %i.jj, %i.jh
  store double %i.jk, ptr %i.ji, align 8, !tbaa !184
  %indvars.iv.next61.i.3 = add nuw nsw i64 %indvars.iv60.i, 4 ; 2 uses
  %exitcond.not.i14.3 = icmp eq i64 %indvars.iv.next61.i.3, %i.g
  br i1 %exitcond.not.i14.3, label %.loopexit.i15, label %.lr.ph.i12, !llvm.loop !518

.unr-lcssa:                                       ; preds = %.new
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph58.i
  %indvars.iv68.i.epil.init = phi i64 [ 0, %.lr.ph58.i ], [ %indvars.iv.next69.i.3, %.unr-lcssa ]
  %lcmp.mod90 = icmp ne i64 %xtraiter88, 0
  tail call void @llvm.assume(i1 %lcmp.mod90)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv68.i.epil = phi i64 [ %indvars.iv68.i.epil.init, %.epil.preheader ], [ %indvars.iv.next69.i.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.jl = mul nuw nsw i64 %indvars.iv68.i.epil, %i.g
  %gep77.i.epil = getelementptr [8 x i8], ptr %invariant.gep76.i, i64 %i.jl
  %i.jm = load double, ptr %gep77.i.epil, align 8, !tbaa !184
  %i.jn = fmul reassoc nsz arcp contract afn double %i.jm, %i.hn
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv68.i.epil ; 2 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !184
  %i.jq = fsub reassoc nsz arcp contract afn double %i.jp, %i.jn
  store double %i.jq, ptr %i.jo, align 8, !tbaa !184
  %indvars.iv.next69.i.epil = add nuw nsw i64 %indvars.iv68.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter88
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !519

.epilog-lcssa:                                    ; preds = %.unr-lcssa, %bb.c
  %indvars.iv.next74.i = add nsw i64 %i.e, -1     ; 4 uses
  %i.jr = mul nuw nsw i64 %indvars.iv.next74.i, %i.hh
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jr
  %i.jt = load double, ptr %i.js, align 8, !tbaa !184
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next74.i ; 2 uses
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !184
  %i.jw = fdiv reassoc nsz arcp contract afn double %i.jv, %i.jt ; 2 uses
  store double %i.jw, ptr %i.ju, align 8, !tbaa !184
  %invariant.gep76.i.1 = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next74.i
  %xtraiter88.1 = and i64 %indvars.iv.next74.i, 3 ; 2 uses
  %lcmp.mod90.1 = icmp ne i64 %xtraiter88.1, 0
  tail call void @llvm.assume(i1 %lcmp.mod90.1)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epilog-lcssa
  %indvars.iv68.i.epil.1 = phi i64 [ 0, %.epilog-lcssa ], [ %indvars.iv.next69.i.epil.1, %bb.d ] ; 3 uses
  %epil.iter.1 = phi i64 [ 0, %.epilog-lcssa ], [ %epil.iter.next.1, %bb.d ]
  %i.jx = mul nuw nsw i64 %indvars.iv68.i.epil.1, %i.g
  %gep77.i.epil.1 = getelementptr [8 x i8], ptr %invariant.gep76.i.1, i64 %i.jx
  %i.jy = load double, ptr %gep77.i.epil.1, align 8, !tbaa !184
  %i.jz = fmul reassoc nsz arcp contract afn double %i.jy, %i.jw
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv68.i.epil.1 ; 2 uses
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !184
  %i.kc = fsub reassoc nsz arcp contract afn double %i.kb, %i.jz
  store double %i.kc, ptr %i.ka, align 8, !tbaa !184
  %indvars.iv.next69.i.epil.1 = add nuw nsw i64 %indvars.iv68.i.epil.1, 1
  %epil.iter.next.1 = add i64 %epil.iter.1, 1     ; 2 uses
  %epil.iter.cmp.1.not = icmp eq i64 %epil.iter.next.1, %xtraiter88.1
  br i1 %epil.iter.cmp.1.not, label %.epilog-lcssa.1, label %bb.d, !llvm.loop !519

.epilog-lcssa.1:                                  ; preds = %bb.d
  %indvars.iv.next74.i.1 = add nsw i64 %i.e, -2   ; 4 uses
  %i.kd = mul nuw nsw i64 %indvars.iv.next74.i.1, %i.hh
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.kd
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !184
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next74.i.1 ; 2 uses
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !184
  %i.ki = fdiv reassoc nsz arcp contract afn double %i.kh, %i.kf ; 2 uses
  store double %i.ki, ptr %i.kg, align 8, !tbaa !184
  %invariant.gep76.i.2 = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next74.i.1
  %xtraiter88.2 = and i64 %indvars.iv.next74.i.1, 3 ; 2 uses
  %lcmp.mod90.2 = icmp ne i64 %xtraiter88.2, 0
  tail call void @llvm.assume(i1 %lcmp.mod90.2)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epilog-lcssa.1
  %indvars.iv68.i.epil.2 = phi i64 [ 0, %.epilog-lcssa.1 ], [ %indvars.iv.next69.i.epil.2, %bb.e ] ; 3 uses
  %epil.iter.2 = phi i64 [ 0, %.epilog-lcssa.1 ], [ %epil.iter.next.2, %bb.e ]
  %i.kj = mul nuw nsw i64 %indvars.iv68.i.epil.2, %i.g
  %gep77.i.epil.2 = getelementptr [8 x i8], ptr %invariant.gep76.i.2, i64 %i.kj
  %i.kk = load double, ptr %gep77.i.epil.2, align 8, !tbaa !184
  %i.kl = fmul reassoc nsz arcp contract afn double %i.kk, %i.ki
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv68.i.epil.2 ; 2 uses
  %i.kn = load double, ptr %i.km, align 8, !tbaa !184
  %i.ko = fsub reassoc nsz arcp contract afn double %i.kn, %i.kl
  store double %i.ko, ptr %i.km, align 8, !tbaa !184
  %indvars.iv.next69.i.epil.2 = add nuw nsw i64 %indvars.iv68.i.epil.2, 1
  %epil.iter.next.2 = add i64 %epil.iter.2, 1     ; 2 uses
  %epil.iter.cmp.2.not = icmp eq i64 %epil.iter.next.2, %xtraiter88.2
  br i1 %epil.iter.cmp.2.not, label %.epilog-lcssa.2, label %bb.e, !llvm.loop !519

.epilog-lcssa.2:                                  ; preds = %bb.e
  %indvars.iv.next74.i.2 = add nsw i64 %i.e, -3   ; 5 uses
  %.not98 = icmp eq i32 %2, 4
  br i1 %.not98, label %gauss_solve_triangular.exit, label %bb.f

bb.f:                                             ; preds = %.epilog-lcssa.2
  %i.kp = mul nuw nsw i64 %indvars.iv.next74.i.2, %i.hh
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.kp
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !184
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next74.i.2 ; 2 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !184
  %i.ku = fdiv reassoc nsz arcp contract afn double %i.kt, %i.kr ; 6 uses
  store double %i.ku, ptr %i.ks, align 8, !tbaa !184
  %invariant.gep76.i.3 = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next74.i.2 ; 5 uses
  %xtraiter88.3 = and i64 %indvars.iv.next74.i.2, 3 ; 3 uses
  %i.kv = add nsw i32 %2, -5
  %i.kw = icmp ult i32 %i.kv, 3
  br i1 %i.kw, label %.epil.preheader.3, label %.new.3
end_hunk_1
