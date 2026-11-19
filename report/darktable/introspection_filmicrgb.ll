Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_filmicrgb?download=true
inline.NumInlined: 325
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 80
begin_hunk_0_@Ych_max_chroma:bb.a
  %i.aa = fadd reassoc nsz arcp contract afn float %i.y, %i.z
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, f0xBEDAE22E
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.ab, %i.v ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn oge float %i.ac, 0.000000e+00
  %i.ae = select reassoc nsz arcp contract afn i1 %i.ad, float %i.ac, float f0x7F7FFFFF
  br label %_clip_chroma_black.exit.i

_clip_chroma_black.exit.i:                        ; preds = %bb.b, %bb.a
  %.0.i.i = phi nsz float [ %i.ae, %bb.b ], [ f0x7F7FFFFF, %bb.a ] ; 2 uses
  %i.af = load float, ptr %i.b, align 4, !tbaa !13 ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !13 ; 2 uses
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.o
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load float, ptr %i.al, align 4, !tbaa !13 ; 2 uses
  %i.an = fmul reassoc nsz arcp contract afn float %i.t, %i.am
  %i.ao = fsub reassoc nsz arcp contract afn float %i.ak, %i.an ; 2 uses
  %i.ap = fcmp reassoc nsz arcp contract afn oeq float %i.ao, 0.000000e+00
  br i1 %i.ap, label %_clip_chroma_black.exit21.i, label %bb.c

bb.c:                                             ; preds = %_clip_chroma_black.exit.i
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ai, f0x3F5B4315
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, %i.af
  %i.as = fmul reassoc nsz arcp contract afn float %i.am, f0x3F0E1437
  %i.at = fadd reassoc nsz arcp contract afn float %i.ar, %i.as
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, f0xBEDAE22E
  %i.av = fdiv reassoc nsz arcp contract afn float %i.au, %i.ao ; 2 uses
  %i.aw = fcmp reassoc nsz arcp contract afn oge float %i.av, 0.000000e+00
  %i.ax = select reassoc nsz arcp contract afn i1 %i.aw, float %i.av, float f0x7F7FFFFF
  br label %_clip_chroma_black.exit21.i

_clip_chroma_black.exit21.i:                      ; preds = %bb.c, %_clip_chroma_black.exit.i
  %.0.i20.i = phi nsz float [ %i.ax, %bb.c ], [ f0x7F7FFFFF, %_clip_chroma_black.exit.i ] ; 2 uses
  %i.ay = load float, ptr %i.d, align 4, !tbaa !13 ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !13 ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.o
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load float, ptr %i.be, align 4, !tbaa !13 ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn float %i.t, %i.bf
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bd, %i.bg ; 2 uses
  %i.bi = fcmp reassoc nsz arcp contract afn oeq float %i.bh, 0.000000e+00
  br i1 %i.bi, label %Ych_max_chroma_without_negatives.exit, label %bb.d

bb.d:                                             ; preds = %_clip_chroma_black.exit21.i
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bb, f0x3F5B4315
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, %i.ay
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
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, %i.h
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
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bs, %i.as
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
  %i.g = zext nneg i32 %2 to i64                  ; 56 uses
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 4 uses
  %i.i = shl nuw nsw i64 %i.g, 3
  %3 = add nuw nsw i64 %i.h, 8                    ; 2 uses
  %i.j = add nsw i64 %i.h, -8
  %4 = mul nuw nsw i64 %i.j, %i.g
  %i.k = mul nuw nsw i64 %i.g, %i.g
  %i.l = shl nuw nsw i64 %i.k, 3
  %scevgep12 = getelementptr i8, ptr %0, i64 %i.l ; 2 uses
  %i.m = shl nuw nsw i64 %i.g, 3                  ; 3 uses
  %i.n = add nuw nsw i64 %i.m, 8
  %scevgep43 = getelementptr i8, ptr %0, i64 %i.m
  %i.o = add nsw i64 %i.g, -2
  %5 = getelementptr i8, ptr %0, i64 %i.h
  %6 = getelementptr i8, ptr %0, i64 %4
  %7 = getelementptr i8, ptr %6, i64 8
  %i.p = getelementptr i8, ptr %0, i64 %i.h
  %i.q = getelementptr i8, ptr %0, i64 %3
  br label %bb.b

.loopexit.i:                                      ; preds = %._crit_edge121.i, %.preheader111.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond151.not.i = icmp eq i64 %indvars.iv.next148.i, %i.g
  br i1 %exitcond151.not.i, label %.lr.ph.preheader.i9.preheader, label %bb.b

.lr.ph.preheader.i9.preheader:                    ; preds = %.loopexit.i
  %i.r = shl nuw nsw i64 %i.g, 3                  ; 4 uses
  %i.s = add nsw i64 %i.r, -8
  %i.t = mul nuw nsw i64 %i.s, %i.g
  %i.u = add nuw nsw i64 %i.r, 8
  %scevgep69 = getelementptr i8, ptr %1, i64 %i.r
  %i.v = getelementptr i8, ptr %0, i64 %i.r
  %i.w = getelementptr i8, ptr %0, i64 %i.t
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %broadcast.splatinsert80 = insertelement <4 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat81 = shufflevector <4 x i64> %broadcast.splatinsert80, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.preheader.i9

bb.b:                                             ; preds = %.loopexit.i, %bb.a
  %indvars.iv147.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next148.i, %.loopexit.i ] ; 16 uses
  %indvars.iv.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i, %.loopexit.i ] ; 15 uses
  %i.y = xor i64 %indvars.iv147.i, -1
  %i.z = add nsw i64 %i.y, %i.g                   ; 2 uses
  %i.aa = sub nsw i64 %i.o, %indvars.iv147.i      ; 2 uses
  %i.ab = mul i64 %i.i, %indvars.iv147.i
  %scevgep = getelementptr i8, ptr %5, i64 %i.ab
  %i.ac = mul i64 %3, %indvars.iv147.i            ; 3 uses
  %8 = getelementptr i8, ptr %0, i64 %i.ac
  %scevgep9 = getelementptr i8, ptr %8, i64 8
  %9 = shl nuw nsw i64 %indvars.iv147.i, 3
  %scevgep10 = getelementptr i8, ptr %7, i64 %9
  %scevgep11 = getelementptr i8, ptr %i.p, i64 %i.ac
  %scevgep13 = getelementptr i8, ptr %i.q, i64 %i.ac ; 2 uses
  %i.ad = xor i64 %indvars.iv147.i, -1
  %i.ae = add nsw i64 %i.ad, %i.g                 ; 10 uses
  %indvars149.i = trunc i64 %indvars.iv147.i to i32 ; 4 uses
  %indvars.iv.next148.i = add nuw nsw i64 %indvars.iv147.i, 1 ; 3 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next148.i, %i.g ; 2 uses
  br i1 %i.af, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv147.i ; 10 uses
  %xtraiter = and i64 %i.z, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv124.i.prol = phi i64 [ %indvars.iv.next125.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i, %.lr.ph.preheader.i ] ; 3 uses
  %.0100112.i.prol = phi i32 [ %spec.select.i.prol, %.lr.ph.i.prol ], [ %indvars149.i, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.ag = mul nuw nsw i64 %indvars.iv124.i.prol, %i.g
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.ag
  %i.ah = load double, ptr %gep.i.prol, align 8, !tbaa !185
  %i.ai = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ah)
  %i.aj = mul nsw i32 %.0100112.i.prol, %2
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !185
  %i.an = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.am)
  %i.ao = fcmp reassoc nsz arcp contract afn ogt double %i.ai, %i.an
  %i.ap = trunc nuw nsw i64 %indvars.iv124.i.prol to i32
  %spec.select.i.prol = select i1 %i.ao, i32 %i.ap, i32 %.0100112.i.prol ; 3 uses
  %indvars.iv.next125.i.prol = add nuw nsw i64 %indvars.iv124.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !484

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %spec.select.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %indvars.iv124.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next125.i.prol, %.lr.ph.i.prol ]
  %.0100112.i.unr = phi i32 [ %indvars149.i, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %i.aq = icmp ult i64 %i.aa, 3
  br i1 %i.aq, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.0100.lcssa.i = phi i32 [ %indvars149.i, %bb.b ], [ %spec.select.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select.i.3, %.lr.ph.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv147.i
  store i32 %.0100.lcssa.i, ptr %i.ar, align 4, !tbaa !14
  %i.as = mul nsw i32 %.0100.lcssa.i, %2
  %i.at = sext i32 %i.as to i64                   ; 3 uses
  %i.au = getelementptr [8 x i8], ptr %0, i64 %indvars.iv147.i ; 8 uses
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.at ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !185 ; 7 uses
  %i.ax = mul nuw nsw i64 %indvars.iv147.i, %i.g  ; 2 uses
  %i.ay = mul nuw nsw i32 %2, %indvars149.i
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.az ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !185
  store double %i.bb, ptr %i.av, align 8, !tbaa !185
  store double %i.aw, ptr %i.ba, align 8, !tbaa !185
  %i.bc = fcmp reassoc nsz arcp contract afn une double %i.aw, 0.000000e+00
  br i1 %i.bc, label %.preheader111.i, label %gauss_make_triangular.exit.thread

.preheader111.i:                                  ; preds = %._crit_edge.i
  br i1 %i.af, label %.lr.ph115.i.preheader, label %.loopexit.i

.lr.ph115.i.preheader:                            ; preds = %.preheader111.i
  %xtraiter94 = and i64 %i.z, 3                   ; 2 uses
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol.preheader

.lr.ph115.i.prol.preheader:                       ; preds = %.lr.ph115.i.preheader
  %i.bd = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aw
  br label %.lr.ph115.i.prol

.lr.ph115.i.prol:                                 ; preds = %.lr.ph115.i.prol, %.lr.ph115.i.prol.preheader
  %indvars.iv127.i.prol = phi i64 [ %indvars.iv.next128.i.prol, %.lr.ph115.i.prol ], [ %indvars.iv.i, %.lr.ph115.i.prol.preheader ] ; 2 uses
  %prol.iter96 = phi i64 [ %prol.iter96.next, %.lr.ph115.i.prol ], [ 0, %.lr.ph115.i.prol.preheader ]
  %i.be = mul nuw nsw i64 %indvars.iv127.i.prol, %i.g
  %gep156.i.prol = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.be ; 2 uses
  %i.bf = load double, ptr %gep156.i.prol, align 8, !tbaa !185
  %i.bg = fneg reassoc nsz arcp contract afn double %i.bf
  %i.bh = fmul reassoc nsz arcp contract afn double %i.bg, %i.bd
  store double %i.bh, ptr %gep156.i.prol, align 8, !tbaa !185
  %indvars.iv.next128.i.prol = add nuw nsw i64 %indvars.iv127.i.prol, 1 ; 2 uses
  %prol.iter96.next = add i64 %prol.iter96, 1     ; 2 uses
  %prol.iter96.cmp.not = icmp eq i64 %prol.iter96.next, %xtraiter94
  br i1 %prol.iter96.cmp.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol, !llvm.loop !485

.lr.ph115.i.prol.loopexit:                        ; preds = %.lr.ph115.i.prol, %.lr.ph115.i.preheader
  %indvars.iv127.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph115.i.preheader ], [ %indvars.iv.next128.i.prol, %.lr.ph115.i.prol ]
  %i.bi = icmp ult i64 %i.aa, 3
  br i1 %i.bi, label %._crit_edge116.i, label %.lr.ph115.i.preheader.new

.lr.ph115.i.preheader.new:                        ; preds = %.lr.ph115.i.prol.loopexit
  %i.bj = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aw
  %i.bk = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aw
  %i.bl = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aw
  %i.bm = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aw
  br label %.lr.ph115.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i.3, %.lr.ph.i ], [ %indvars.iv124.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0100112.i = phi i32 [ %spec.select.i.3, %.lr.ph.i ], [ %.0100112.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.bn = mul nuw nsw i64 %indvars.iv124.i, %i.g
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.bn
  %i.bo = load double, ptr %gep.i, align 8, !tbaa !185
  %i.bp = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bo)
  %i.bq = mul nsw i32 %.0100112.i, %2
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !185
  %i.bu = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bt)
  %i.bv = fcmp reassoc nsz arcp contract afn ogt double %i.bp, %i.bu
  %i.bw = trunc nuw nsw i64 %indvars.iv124.i to i32
  %spec.select.i = select i1 %i.bv, i32 %i.bw, i32 %.0100112.i ; 2 uses
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %i.bx = mul nuw nsw i64 %indvars.iv.next125.i, %i.g
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.bx
  %i.by = load double, ptr %gep.i.1, align 8, !tbaa !185
  %i.bz = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.by)
  %i.ca = mul nsw i32 %spec.select.i, %2
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !185
  %i.ce = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cd)
  %i.cf = fcmp reassoc nsz arcp contract afn ogt double %i.bz, %i.ce
  %i.cg = trunc nuw nsw i64 %indvars.iv.next125.i to i32
  %spec.select.i.1 = select i1 %i.cf, i32 %i.cg, i32 %spec.select.i ; 2 uses
  %indvars.iv.next125.i.1 = add nuw nsw i64 %indvars.iv124.i, 2 ; 2 uses
  %i.ch = mul nuw nsw i64 %indvars.iv.next125.i.1, %i.g
  %gep.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.ch
  %i.ci = load double, ptr %gep.i.2, align 8, !tbaa !185
  %i.cj = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ci)
  %i.ck = mul nsw i32 %spec.select.i.1, %2
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !185
  %i.co = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cn)
  %i.cp = fcmp reassoc nsz arcp contract afn ogt double %i.cj, %i.co
  %i.cq = trunc nuw nsw i64 %indvars.iv.next125.i.1 to i32
  %spec.select.i.2 = select i1 %i.cp, i32 %i.cq, i32 %spec.select.i.1 ; 2 uses
  %indvars.iv.next125.i.2 = add nuw nsw i64 %indvars.iv124.i, 3 ; 2 uses
  %i.cr = mul nuw nsw i64 %indvars.iv.next125.i.2, %i.g
  %gep.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.cr
  %i.cs = load double, ptr %gep.i.3, align 8, !tbaa !185
  %i.ct = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cs)
  %i.cu = mul nsw i32 %spec.select.i.2, %2
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !185
  %i.cy = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cx)
  %i.cz = fcmp reassoc nsz arcp contract afn ogt double %i.ct, %i.cy
  %i.da = trunc nuw nsw i64 %indvars.iv.next125.i.2 to i32
  %spec.select.i.3 = select i1 %i.cz, i32 %i.da, i32 %spec.select.i.2 ; 2 uses
  %indvars.iv.next125.i.3 = add nuw nsw i64 %indvars.iv124.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next125.i.3, %i.g
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i

._crit_edge116.i:                                 ; preds = %.lr.ph115.i, %.lr.ph115.i.prol.loopexit
  %i.db = zext i32 %.0100.lcssa.i to i64
  %.not.not.i = icmp eq i64 %indvars.iv147.i, %i.db
  br i1 %.not.not.i, label %.preheader.preheader.i, label %.lr.ph118.preheader.i

.lr.ph118.preheader.i:                            ; preds = %._crit_edge116.i
  %invariant.gep157.i = getelementptr [8 x i8], ptr %0, i64 %i.at ; 6 uses
  %invariant.gep159.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax ; 6 uses
  %min.iters.check44 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check44, label %.lr.ph118.i.preheader, label %vector.memcheck45

vector.memcheck45:                                ; preds = %.lr.ph118.preheader.i
  %i.dc = shl nuw nsw i64 %indvars.iv147.i, 3
  %i.dd = shl nsw i64 %i.at, 3                    ; 2 uses
  %i.de = getelementptr i8, ptr %0, i64 %i.dc
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.dd
  %i.dh = getelementptr i8, ptr %scevgep43, i64 %i.dd
  %i.di = mul nuw nsw i64 %indvars.iv147.i, %i.n
  %i.dj = getelementptr i8, ptr %0, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %i.dl = add nuw i64 %indvars.iv147.i, 1
  %i.dm = mul nuw i64 %i.m, %i.dl
  %i.dn = getelementptr i8, ptr %0, i64 %i.dm
  %bound046 = icmp ult ptr %i.dg, %i.dn
  %bound147 = icmp ult ptr %i.dk, %i.dh
  %found.conflict48 = and i1 %bound046, %bound147
  br i1 %found.conflict48, label %.lr.ph118.i.preheader, label %vector.ph49

vector.ph49:                                      ; preds = %vector.memcheck45
  %n.vec50 = and i64 %i.ae, -8                    ; 3 uses
  %i.do = add i64 %indvars.iv.i, %n.vec50
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph49
  %index52 = phi i64 [ 0, %vector.ph49 ], [ %index.next57, %vector.body51 ] ; 2 uses
  %i.dp = add nuw i64 %indvars.iv.i, %index52     ; 2 uses
  %i.dq = getelementptr [8 x i8], ptr %invariant.gep157.i, i64 %i.dp ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 32     ; 2 uses
  %wide.load53 = load <4 x double>, ptr %i.dq, align 8, !tbaa !185, !alias.scope !506, !noalias !507
  %wide.load54 = load <4 x double>, ptr %i.dr, align 8, !tbaa !185, !alias.scope !506, !noalias !507
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i, i64 %i.dp ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32 ; 2 uses
  %wide.load55 = load <4 x double>, ptr %i.ds, align 8, !tbaa !185, !alias.scope !507
  %wide.load56 = load <4 x double>, ptr %i.dt, align 8, !tbaa !185, !alias.scope !507
  store <4 x double> %wide.load55, ptr %i.dq, align 8, !tbaa !185, !alias.scope !506, !noalias !507
  store <4 x double> %wide.load56, ptr %i.dr, align 8, !tbaa !185, !alias.scope !506, !noalias !507
  store <4 x double> %wide.load53, ptr %i.ds, align 8, !tbaa !185, !alias.scope !507
  store <4 x double> %wide.load54, ptr %i.dt, align 8, !tbaa !185, !alias.scope !507
  %index.next57 = add nuw i64 %index52, 8         ; 2 uses
  %i.du = icmp eq i64 %index.next57, %n.vec50
  br i1 %i.du, label %middle.block58, label %vector.body51, !llvm.loop !489

middle.block58:                                   ; preds = %vector.body51
  %cmp.n59 = icmp eq i64 %i.ae, %n.vec50
  br i1 %cmp.n59, label %.preheader.preheader.i, label %.lr.ph118.i.preheader

.lr.ph118.i.preheader:                            ; preds = %vector.memcheck45, %.lr.ph118.preheader.i, %middle.block58
  %indvars.iv132.i.ph = phi i64 [ %indvars.iv.i, %vector.memcheck45 ], [ %indvars.iv.i, %.lr.ph118.preheader.i ], [ %i.do, %middle.block58 ] ; 4 uses
  %i.dv = sub i64 %i.g, %indvars.iv132.i.ph
  %xtraiter97 = and i64 %i.dv, 3                  ; 2 uses
  %lcmp.mod98.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %.lr.ph118.i.prol.loopexit, label %.lr.ph118.i.prol

.lr.ph118.i.prol:                                 ; preds = %.lr.ph118.i.preheader, %.lr.ph118.i.prol
  %indvars.iv132.i.prol = phi i64 [ %indvars.iv.next133.i.prol, %.lr.ph118.i.prol ], [ %indvars.iv132.i.ph, %.lr.ph118.i.preheader ] ; 3 uses
  %prol.iter99 = phi i64 [ %prol.iter99.next, %.lr.ph118.i.prol ], [ 0, %.lr.ph118.i.preheader ]
  %gep158.i.prol = getelementptr [8 x i8], ptr %invariant.gep157.i, i64 %indvars.iv132.i.prol ; 2 uses
  %i.dw = load double, ptr %gep158.i.prol, align 8, !tbaa !185
  %gep160.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i, i64 %indvars.iv132.i.prol ; 2 uses
  %i.dx = load double, ptr %gep160.i.prol, align 8, !tbaa !185
  store double %i.dx, ptr %gep158.i.prol, align 8, !tbaa !185
  store double %i.dw, ptr %gep160.i.prol, align 8, !tbaa !185
  %indvars.iv.next133.i.prol = add nuw nsw i64 %indvars.iv132.i.prol, 1 ; 2 uses
  %prol.iter99.next = add i64 %prol.iter99, 1     ; 2 uses
  %prol.iter99.cmp.not = icmp eq i64 %prol.iter99.next, %xtraiter97
  br i1 %prol.iter99.cmp.not, label %.lr.ph118.i.prol.loopexit, label %.lr.ph118.i.prol, !llvm.loop !490

.lr.ph118.i.prol.loopexit:                        ; preds = %.lr.ph118.i.prol, %.lr.ph118.i.preheader
  %indvars.iv132.i.unr = phi i64 [ %indvars.iv132.i.ph, %.lr.ph118.i.preheader ], [ %indvars.iv.next133.i.prol, %.lr.ph118.i.prol ]
  %i.dy = sub i64 %indvars.iv132.i.ph, %i.g
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %.preheader.preheader.i, label %.lr.ph118.i

.lr.ph115.i:                                      ; preds = %.lr.ph115.i, %.lr.ph115.i.preheader.new
  %indvars.iv127.i = phi i64 [ %indvars.iv127.i.unr, %.lr.ph115.i.preheader.new ], [ %indvars.iv.next128.i.3, %.lr.ph115.i ] ; 5 uses
  %i.ea = mul nuw nsw i64 %indvars.iv127.i, %i.g
  %gep156.i = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ea ; 2 uses
  %i.eb = load double, ptr %gep156.i, align 8, !tbaa !185
  %i.ec = fneg reassoc nsz arcp contract afn double %i.eb
  %i.ed = fmul reassoc nsz arcp contract afn double %i.ec, %i.bj
  store double %i.ed, ptr %gep156.i, align 8, !tbaa !185
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1
  %i.ee = mul nuw nsw i64 %indvars.iv.next128.i, %i.g
  %gep156.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ee ; 2 uses
  %i.ef = load double, ptr %gep156.i.1, align 8, !tbaa !185
  %i.eg = fneg reassoc nsz arcp contract afn double %i.ef
  %i.eh = fmul reassoc nsz arcp contract afn double %i.eg, %i.bk
  store double %i.eh, ptr %gep156.i.1, align 8, !tbaa !185
  %indvars.iv.next128.i.1 = add nuw nsw i64 %indvars.iv127.i, 2
  %i.ei = mul nuw nsw i64 %indvars.iv.next128.i.1, %i.g
  %gep156.i.2 = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ei ; 2 uses
  %i.ej = load double, ptr %gep156.i.2, align 8, !tbaa !185
  %i.ek = fneg reassoc nsz arcp contract afn double %i.ej
  %i.el = fmul reassoc nsz arcp contract afn double %i.ek, %i.bl
  store double %i.el, ptr %gep156.i.2, align 8, !tbaa !185
  %indvars.iv.next128.i.2 = add nuw nsw i64 %indvars.iv127.i, 3
  %i.em = mul nuw nsw i64 %indvars.iv.next128.i.2, %i.g
  %gep156.i.3 = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.em ; 2 uses
  %i.en = load double, ptr %gep156.i.3, align 8, !tbaa !185
  %i.eo = fneg reassoc nsz arcp contract afn double %i.en
  %i.ep = fmul reassoc nsz arcp contract afn double %i.eo, %i.bm
  store double %i.ep, ptr %gep156.i.3, align 8, !tbaa !185
  %indvars.iv.next128.i.3 = add nuw nsw i64 %indvars.iv127.i, 4 ; 2 uses
  %exitcond131.not.i.3 = icmp eq i64 %indvars.iv.next128.i.3, %i.g
  br i1 %exitcond131.not.i.3, label %._crit_edge116.i, label %.lr.ph115.i

.lr.ph118.i:                                      ; preds = %.lr.ph118.i.prol.loopexit, %.lr.ph118.i
  %indvars.iv132.i = phi i64 [ %indvars.iv.next133.i.3, %.lr.ph118.i ], [ %indvars.iv132.i.unr, %.lr.ph118.i.prol.loopexit ] ; 6 uses
  %gep158.i = getelementptr [8 x i8], ptr %invariant.gep157.i, i64 %indvars.iv132.i ; 2 uses
  %i.eq = load double, ptr %gep158.i, align 8, !tbaa !185
  %gep160.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i, i64 %indvars.iv132.i ; 2 uses
  %i.er = load double, ptr %gep160.i, align 8, !tbaa !185
  store double %i.er, ptr %gep158.i, align 8, !tbaa !185
  store double %i.eq, ptr %gep160.i, align 8, !tbaa !185
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %gep158.i.1 = getelementptr [8 x i8], ptr %invariant.gep157.i, i64 %indvars.iv.next133.i ; 2 uses
  %i.es = load double, ptr %gep158.i.1, align 8, !tbaa !185
  %gep160.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i, i64 %indvars.iv.next133.i ; 2 uses
  %i.et = load double, ptr %gep160.i.1, align 8, !tbaa !185
  store double %i.et, ptr %gep158.i.1, align 8, !tbaa !185
  store double %i.es, ptr %gep160.i.1, align 8, !tbaa !185
  %indvars.iv.next133.i.1 = add nuw nsw i64 %indvars.iv132.i, 2 ; 2 uses
  %gep158.i.2 = getelementptr [8 x i8], ptr %invariant.gep157.i, i64 %indvars.iv.next133.i.1 ; 2 uses
  %i.eu = load double, ptr %gep158.i.2, align 8, !tbaa !185
  %gep160.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i, i64 %indvars.iv.next133.i.1 ; 2 uses
  %i.ev = load double, ptr %gep160.i.2, align 8, !tbaa !185
  store double %i.ev, ptr %gep158.i.2, align 8, !tbaa !185
  store double %i.eu, ptr %gep160.i.2, align 8, !tbaa !185
  %indvars.iv.next133.i.2 = add nuw nsw i64 %indvars.iv132.i, 3 ; 2 uses
  %gep158.i.3 = getelementptr [8 x i8], ptr %invariant.gep157.i, i64 %indvars.iv.next133.i.2 ; 2 uses
  %i.ew = load double, ptr %gep158.i.3, align 8, !tbaa !185
  %gep160.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i, i64 %indvars.iv.next133.i.2 ; 2 uses
  %i.ex = load double, ptr %gep160.i.3, align 8, !tbaa !185
  store double %i.ex, ptr %gep158.i.3, align 8, !tbaa !185
  store double %i.ew, ptr %gep160.i.3, align 8, !tbaa !185
  %indvars.iv.next133.i.3 = add nuw nsw i64 %indvars.iv132.i, 4 ; 2 uses
  %exitcond136.not.i.3 = icmp eq i64 %indvars.iv.next133.i.3, %i.g
  br i1 %exitcond136.not.i.3, label %.preheader.preheader.i, label %.lr.ph118.i, !llvm.loop !491

.preheader.preheader.i:                           ; preds = %.lr.ph118.i.prol.loopexit, %.lr.ph118.i, %middle.block58, %._crit_edge116.i
  %invariant.gep161.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax ; 7 uses
  %min.iters.check = icmp ult i64 %i.ae, 4
  %bound0 = icmp ult ptr %scevgep13, %scevgep10
  %bound1 = icmp ult ptr %scevgep11, %scevgep12
  %found.conflict = and i1 %bound0, %bound1
  %bound014 = icmp ult ptr %scevgep13, %scevgep
  %bound115 = icmp ult ptr %scevgep9, %scevgep12
  %found.conflict16 = and i1 %bound014, %bound115
  %conflict.rdx = or i1 %found.conflict, %found.conflict16
  %min.iters.check17 = icmp ult i64 %i.ae, 16
  %i.ey = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, -16                     ; 4 uses
  %i.ez = add i64 %indvars.iv.i, %n.vec
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ey, 0
  %n.vec25 = and i64 %i.ae, -4                    ; 3 uses
  %i.fa = add i64 %indvars.iv.i, %n.vec25
  %cmp.n32 = icmp eq i64 %i.ae, %n.vec25
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge121.i, %.preheader.preheader.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.i, %.preheader.preheader.i ], [ %indvars.iv.next143.i, %._crit_edge121.i ] ; 2 uses
  %i.fb = mul nuw nsw i64 %indvars.iv142.i, %i.g  ; 2 uses
  %gep166.i = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.fb ; 7 uses
  %invariant.gep163.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fb ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check17, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fc = load double, ptr %gep166.i, align 8, !tbaa !185, !alias.scope !508
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.fc, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fd = add nuw i64 %indvars.iv.i, %index       ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %i.fd ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 96
  %wide.load = load <4 x double>, ptr %i.fe, align 8, !tbaa !185, !alias.scope !509
  %wide.load18 = load <4 x double>, ptr %i.ff, align 8, !tbaa !185, !alias.scope !509
  %wide.load19 = load <4 x double>, ptr %i.fg, align 8, !tbaa !185, !alias.scope !509
  %wide.load20.a = load <4 x double>, ptr %i.fh, align 8, !tbaa !185, !alias.scope !509
  %i.fi = fmul reassoc nsz arcp contract afn <4 x double> %wide.load, %broadcast.splat
  %i.fj = fmul reassoc nsz arcp contract afn <4 x double> %wide.load18, %broadcast.splat
  %i.fk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load19, %broadcast.splat
  %i.fl = fmul reassoc nsz arcp contract afn <4 x double> %wide.load20.a, %broadcast.splat
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %i.fd ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 64 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 96 ; 2 uses
  %wide.load21 = load <4 x double>, ptr %i.fm, align 8, !tbaa !185, !alias.scope !510, !noalias !511
  %wide.load22 = load <4 x double>, ptr %i.fn, align 8, !tbaa !185, !alias.scope !510, !noalias !511
  %wide.load23.a = load <4 x double>, ptr %i.fo, align 8, !tbaa !185, !alias.scope !510, !noalias !511
  %wide.load24 = load <4 x double>, ptr %i.fp, align 8, !tbaa !185, !alias.scope !510, !noalias !511
  %i.fq = fadd reassoc nsz arcp contract afn <4 x double> %wide.load21, %i.fi
  %i.fr = fadd reassoc nsz arcp contract afn <4 x double> %wide.load22, %i.fj
  %i.fs = fadd reassoc nsz arcp contract afn <4 x double> %wide.load23.a, %i.fk
  %i.ft = fadd reassoc nsz arcp contract afn <4 x double> %wide.load24, %i.fl
  store <4 x double> %i.fq, ptr %i.fm, align 8, !tbaa !185, !alias.scope !510, !noalias !511
  store <4 x double> %i.fr, ptr %i.fn, align 8, !tbaa !185, !alias.scope !510, !noalias !511
  store <4 x double> %i.fs, ptr %i.fo, align 8, !tbaa !185, !alias.scope !510, !noalias !511
  store <4 x double> %i.ft, ptr %i.fp, align 8, !tbaa !185, !alias.scope !510, !noalias !511
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !496

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge121.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !512

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.fv = load double, ptr %gep166.i, align 8, !tbaa !185, !alias.scope !508
  %broadcast.splatinsert28 = insertelement <4 x double> poison, double %i.fv, i64 0
  %broadcast.splat29 = shufflevector <4 x double> %broadcast.splatinsert28, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 2 uses
  %i.fw = add nuw i64 %indvars.iv.i, %index26     ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %i.fw
  %wide.load27 = load <4 x double>, ptr %i.fx, align 8, !tbaa !185, !alias.scope !509
  %i.fy = fmul reassoc nsz arcp contract afn <4 x double> %wide.load27, %broadcast.splat29
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %i.fw ; 2 uses
  %wide.load30 = load <4 x double>, ptr %i.fz, align 8, !tbaa !185, !alias.scope !510, !noalias !511
  %i.ga = fadd reassoc nsz arcp contract afn <4 x double> %wide.load30, %i.fy
  store <4 x double> %i.ga, ptr %i.fz, align 8, !tbaa !185, !alias.scope !510, !noalias !511
  %index.next31 = add nuw i64 %index26, 4         ; 2 uses
  %i.gb = icmp eq i64 %index.next31, %n.vec25
  br i1 %i.gb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !497

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n32, label %._crit_edge121.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv137.i.ph = phi i64 [ %indvars.iv.i, %iter.check ], [ %i.fa, %vec.epilog.middle.block ], [ %i.ez, %vec.epilog.iter.check ] ; 4 uses
  %i.gc = sub i64 %i.g, %indvars.iv137.i.ph
  %xtraiter100 = and i64 %i.gc, 3                 ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv137.i.prol = phi i64 [ %indvars.iv.next138.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv137.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter102 = phi i64 [ %prol.iter102.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gd = load double, ptr %gep166.i, align 8, !tbaa !185
  %gep162.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %indvars.iv137.i.prol
  %i.ge = load double, ptr %gep162.i.prol, align 8, !tbaa !185
  %i.gf = fmul reassoc nsz arcp contract afn double %i.ge, %i.gd
  %gep164.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %indvars.iv137.i.prol ; 2 uses
  %i.gg = load double, ptr %gep164.i.prol, align 8, !tbaa !185
  %i.gh = fadd reassoc nsz arcp contract afn double %i.gg, %i.gf
  store double %i.gh, ptr %gep164.i.prol, align 8, !tbaa !185
  %indvars.iv.next138.i.prol = add nuw nsw i64 %indvars.iv137.i.prol, 1 ; 2 uses
  %prol.iter102.next = add i64 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i64 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !498

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv137.i.unr = phi i64 [ %indvars.iv137.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next138.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.gi = sub i64 %indvars.iv137.i.ph, %i.g
  %i.gj = icmp ugt i64 %i.gi, -4
  br i1 %i.gj, label %._crit_edge121.i, label %vec.epilog.scalar.ph

._crit_edge121.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next143.i, %i.g
  br i1 %exitcond146.not.i, label %.loopexit.i, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv137.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.gk = load double, ptr %gep166.i, align 8, !tbaa !185
  %gep162.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %indvars.iv137.i
  %i.gl = load double, ptr %gep162.i, align 8, !tbaa !185
  %i.gm = fmul reassoc nsz arcp contract afn double %i.gl, %i.gk
  %gep164.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %indvars.iv137.i ; 2 uses
  %i.gn = load double, ptr %gep164.i, align 8, !tbaa !185
  %i.go = fadd reassoc nsz arcp contract afn double %i.gn, %i.gm
  store double %i.go, ptr %gep164.i, align 8, !tbaa !185
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %i.gp = load double, ptr %gep166.i, align 8, !tbaa !185
  %gep162.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %indvars.iv.next138.i
  %i.gq = load double, ptr %gep162.i.1, align 8, !tbaa !185
  %i.gr = fmul reassoc nsz arcp contract afn double %i.gq, %i.gp
  %gep164.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %indvars.iv.next138.i ; 2 uses
  %i.gs = load double, ptr %gep164.i.1, align 8, !tbaa !185
  %i.gt = fadd reassoc nsz arcp contract afn double %i.gs, %i.gr
  store double %i.gt, ptr %gep164.i.1, align 8, !tbaa !185
  %indvars.iv.next138.i.1 = add nuw nsw i64 %indvars.iv137.i, 2 ; 2 uses
  %i.gu = load double, ptr %gep166.i, align 8, !tbaa !185
  %gep162.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %indvars.iv.next138.i.1
  %i.gv = load double, ptr %gep162.i.2, align 8, !tbaa !185
  %i.gw = fmul reassoc nsz arcp contract afn double %i.gv, %i.gu
  %gep164.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %indvars.iv.next138.i.1 ; 2 uses
  %i.gx = load double, ptr %gep164.i.2, align 8, !tbaa !185
  %i.gy = fadd reassoc nsz arcp contract afn double %i.gx, %i.gw
  store double %i.gy, ptr %gep164.i.2, align 8, !tbaa !185
  %indvars.iv.next138.i.2 = add nuw nsw i64 %indvars.iv137.i, 3 ; 2 uses
  %i.gz = load double, ptr %gep166.i, align 8, !tbaa !185
  %gep162.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %indvars.iv.next138.i.2
  %i.ha = load double, ptr %gep162.i.3, align 8, !tbaa !185
  %i.hb = fmul reassoc nsz arcp contract afn double %i.ha, %i.gz
  %gep164.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %indvars.iv.next138.i.2 ; 2 uses
  %i.hc = load double, ptr %gep164.i.3, align 8, !tbaa !185
  %i.hd = fadd reassoc nsz arcp contract afn double %i.hc, %i.hb
  store double %i.hd, ptr %gep164.i.3, align 8, !tbaa !185
  %indvars.iv.next138.i.3 = add nuw nsw i64 %indvars.iv137.i, 4 ; 2 uses
  %exitcond141.not.i.3 = icmp eq i64 %indvars.iv.next138.i.3, %i.g
  br i1 %exitcond141.not.i.3, label %._crit_edge121.i, label %vec.epilog.scalar.ph, !llvm.loop !499

.loopexit.i15:                                    ; preds = %.lr.ph.i12.prol.loopexit, %.lr.ph.i12, %vector.ph76
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i10, 1
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next64.i, %i.e
  br i1 %exitcond67.not.i, label %.lr.ph58.i, label %.lr.ph.preheader.i9

.lr.ph58.i:                                       ; preds = %.loopexit.i15
  %i.he = add nuw nsw i32 %2, 1
  %i.hf = zext nneg i32 %i.he to i64              ; 4 uses
  %i.hg = mul nuw nsw i64 %i.e, %i.hf
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.hg
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !185
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e ; 2 uses
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !185
  %i.hl = fdiv reassoc nsz arcp contract afn double %i.hk, %i.hi ; 6 uses
  store double %i.hl, ptr %i.hj, align 8, !tbaa !185
  %invariant.gep76.i = getelementptr [8 x i8], ptr %0, i64 %i.e ; 5 uses
  %xtraiter106 = and i64 %i.e, 3                  ; 3 uses
  %.not = icmp eq i32 %2, 5
  br i1 %.not, label %.new, label %.epil.preheader

.lr.ph.preheader.i9:                              ; preds = %.lr.ph.preheader.i9.preheader, %.loopexit.i15
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %.loopexit.i15 ], [ 0, %.lr.ph.preheader.i9.preheader ] ; 7 uses
  %indvars.iv.i10 = phi i64 [ %indvars.iv.next.i16, %.loopexit.i15 ], [ 1, %.lr.ph.preheader.i9.preheader ] ; 6 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv63.i
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !14
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ho ; 2 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !185 ; 7 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv63.i ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !185
  store double %i.hs, ptr %i.hp, align 8, !tbaa !185
  store double %i.hq, ptr %i.hr, align 8, !tbaa !185
  %invariant.gep.i11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv63.i ; 6 uses
  %i.ht = xor i64 %indvars.iv63.i, -1
  %i.hu = add nsw i64 %i.ht, %i.g                 ; 3 uses
  %min.iters.check71 = icmp ult i64 %i.hu, 4
  br i1 %min.iters.check71, label %.lr.ph.i12.preheader, label %vector.memcheck72

vector.memcheck72:                                ; preds = %.lr.ph.preheader.i9
  %i.hv = shl nuw nsw i64 %indvars.iv63.i, 3      ; 2 uses
  %i.hw = getelementptr nuw i8, ptr %1, i64 %i.hv
  %i.hx = getelementptr nuw i8, ptr %i.hw, i64 8
  %i.hy = mul nuw nsw i64 %indvars.iv63.i, %i.u
  %i.hz = getelementptr i8, ptr %i.v, i64 %i.hy
  %i.ia = getelementptr i8, ptr %i.x, i64 %i.hv
  %bound073 = icmp ult ptr %i.hx, %i.ia
  %bound174 = icmp ult ptr %i.hz, %scevgep69
  %found.conflict75 = and i1 %bound073, %bound174
end_hunk_0
