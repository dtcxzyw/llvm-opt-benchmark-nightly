inline.NumInlined: 325
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 80
begin_hunk_0_@Ych_max_chroma:bb.a
  %i.x = fmul reassoc nsz arcp contract afn float %i.l, f0x3F5B4315
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, %i.f
  %i.z = fmul reassoc nsz arcp contract afn float %i.s, f0x3F0E1437
  %i.aa = fadd reassoc nsz arcp contract afn float %i.y, %i.z
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, f0xBEDAE22E
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.ab, %i.v ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn oge float %i.ac, 0.000000e+00
  %i.ae = select reassoc nsz arcp contract afn i1 %i.ad, float %i.ac, float f0x7F7FFFFF
  br label %_clip_chroma_black.exit.i

_clip_chroma_black.exit.i:                        ; preds = %bb.b, %bb.a
  %.0.i.i = phi nsz float [ %i.ae, %bb.b ], [ f0x7F7FFFFF, %bb.a ] ; 2 uses
  %i.af = load float, ptr %i.b, align 4, !tbaa !16 ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !16 ; 2 uses
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.o
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load float, ptr %i.al, align 4, !tbaa !16 ; 2 uses
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
  %i.ay = load float, ptr %i.d, align 4, !tbaa !16 ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !16 ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.o
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load float, ptr %i.be, align 4, !tbaa !16 ; 2 uses
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
  %i.h = load float, ptr %0, align 4, !tbaa !16   ; 2 uses
  %i.i = fmul reassoc nsz arcp contract afn float %3, f0x3F7AB8BE
  %i.j = fmul reassoc nsz arcp contract afn float %4, f0x3EC893CB
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, %i.i
  %i.l = fmul reassoc nsz arcp contract afn float %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !16 ; 2 uses
  %i.o = fmul reassoc nsz arcp contract afn float %3, f0x3CA8E83F
  %i.p = fmul reassoc nsz arcp contract afn float %4, f0x3F1BB61A
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, %i.o
  %i.r = fmul reassoc nsz arcp contract afn float %i.n, %i.q
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !16 ; 2 uses
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
  %i.as = load float, ptr %0, align 4, !tbaa !16  ; 2 uses
  %i.at = fmul reassoc nsz arcp contract afn float %3, f0x3F7AB8BE
  %i.au = fmul reassoc nsz arcp contract afn float %4, f0x3EC893CB
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, %i.at
  %i.aw = fmul reassoc nsz arcp contract afn float %i.as, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !16 ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %3, f0x3CA8E83F
  %i.ba = fmul reassoc nsz arcp contract afn float %4, f0x3F1BB61A
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, %i.az
  %i.bc = fmul reassoc nsz arcp contract afn float %i.ay, %i.bb
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.aw
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !16 ; 2 uses
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
  store i32 %i.d, ptr %i.f, align 4, !tbaa !24
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
  %3 = add nsw i64 %i.g, -1                       ; 2 uses
  %i.r = add nsw i64 %i.g, -2                     ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.o
  %i.t = getelementptr i8, ptr %0, i64 %i.i
  %i.u = getelementptr i8, ptr %0, i64 %i.h
  %i.v = getelementptr i8, ptr %0, i64 %i.m
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = getelementptr i8, ptr %0, i64 %i.h
  br label %bb.b

.loopexit.i:                                      ; preds = %._crit_edge120.i, %.preheader110.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next147.i, %i.g
  br i1 %exitcond150.not.i, label %.lr.ph.preheader.i9.preheader, label %bb.b

.lr.ph.preheader.i9.preheader:                    ; preds = %.loopexit.i
  %i.y = shl nuw nsw i64 %i.g, 3                  ; 4 uses
  %scevgep50 = getelementptr i8, ptr %1, i64 %i.y
  %i.z = add nsw i64 %i.y, -8
  %i.aa = mul nuw nsw i64 %i.z, %i.g
  %i.ab = add nuw nsw i64 %i.y, 8
  %i.ac = getelementptr i8, ptr %0, i64 %i.aa
  %i.ad = getelementptr i8, ptr %0, i64 %i.y
  %broadcast.splatinsert63 = insertelement <4 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat64 = shufflevector <4 x i64> %broadcast.splatinsert63, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.preheader.i9

bb.b:                                             ; preds = %.loopexit.i, %bb.a
  %indvars.iv146.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next147.i, %.loopexit.i ] ; 18 uses
  %indvars.iv.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i, %.loopexit.i ] ; 15 uses
  %i.ae = sub nsw i64 %3, %indvars.iv146.i
  %i.af = sub nsw i64 %i.r, %indvars.iv146.i
  %i.ag = sub nsw i64 %i.r, %indvars.iv146.i
  %i.ah = shl nuw nsw i64 %indvars.iv146.i, 3
  %i.ai = getelementptr i8, ptr %0, i64 %i.ah
  %scevgep27 = getelementptr i8, ptr %i.ai, i64 8
  %i.aj = mul i64 %i.p, %indvars.iv146.i
  %i.ak = getelementptr i8, ptr %0, i64 %i.aj
  %scevgep31 = getelementptr i8, ptr %i.ak, i64 8
  %i.al = mul i64 %i.q, %indvars.iv146.i
  %scevgep32 = getelementptr i8, ptr %i.s, i64 %i.al
  %4 = xor i64 %indvars.iv146.i, -1
  %5 = add nsw i64 %4, %i.g                       ; 10 uses
  %i.am = mul i64 %i.i, %indvars.iv146.i          ; 3 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.am ; 2 uses
  %scevgep2 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = shl nuw nsw i64 %indvars.iv146.i, 3
  %scevgep3 = getelementptr i8, ptr %i.w, i64 %i.an
  %i.ao = getelementptr i8, ptr %0, i64 %i.am
  %scevgep4 = getelementptr i8, ptr %i.ao, i64 8
  %i.ap = mul i64 %i.n, %indvars.iv146.i
  %scevgep5 = getelementptr i8, ptr %i.x, i64 %i.ap
  %indvars148.i = trunc i64 %indvars.iv146.i to i32 ; 4 uses
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 3 uses
  %i.aq = icmp samesign ult i64 %indvars.iv.next147.i, %i.g ; 2 uses
  br i1 %i.aq, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.ar = sub nsw i64 %3, %indvars.iv146.i
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv146.i ; 10 uses
  %xtraiter = and i64 %i.ar, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv123.i.prol = phi i64 [ %indvars.iv.next124.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i, %.lr.ph.preheader.i ] ; 3 uses
  %.0100111.i.prol = phi i32 [ %.1101.i.prol, %.lr.ph.i.prol ], [ %indvars148.i, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.as = mul nuw nsw i64 %indvars.iv123.i.prol, %i.g
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.as
  %i.at = load double, ptr %gep.i.prol, align 8, !tbaa !383
  %i.au = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.at)
  %i.av = mul nsw i32 %.0100111.i.prol, %2
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !383
  %i.az = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ay)
  %i.ba = fcmp reassoc nsz arcp contract afn ogt double %i.au, %i.az
  %i.bb = trunc nuw nsw i64 %indvars.iv123.i.prol to i32
  %.1101.i.prol = select i1 %i.ba, i32 %i.bb, i32 %.0100111.i.prol ; 3 uses
  %indvars.iv.next124.i.prol = add nuw nsw i64 %indvars.iv123.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !499

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.1101.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %.1101.i.prol, %.lr.ph.i.prol ]
  %indvars.iv123.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next124.i.prol, %.lr.ph.i.prol ]
  %.0100111.i.unr = phi i32 [ %indvars148.i, %.lr.ph.preheader.i ], [ %.1101.i.prol, %.lr.ph.i.prol ]
  %i.bc = icmp ult i64 %i.ag, 3
  br i1 %i.bc, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.0100.lcssa.i = phi i32 [ %indvars148.i, %bb.b ], [ %.1101.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.1101.i.3, %.lr.ph.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv146.i
  store i32 %.0100.lcssa.i, ptr %i.bd, align 4, !tbaa !24
  %i.be = mul nsw i32 %.0100.lcssa.i, %2
  %i.bf = sext i32 %i.be to i64                   ; 3 uses
  %i.bg = getelementptr [8 x i8], ptr %0, i64 %indvars.iv146.i ; 8 uses
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %i.bf ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !383 ; 7 uses
  %i.bj = mul nuw nsw i64 %indvars.iv146.i, %i.g  ; 2 uses
  %i.bk = mul nuw nsw i32 %2, %indvars148.i
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bl ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !383
  store double %i.bn, ptr %i.bh, align 8, !tbaa !383
  store double %i.bi, ptr %i.bm, align 8, !tbaa !383
  %i.bo = fcmp reassoc nsz arcp contract afn une double %i.bi, 0.000000e+00
  br i1 %i.bo, label %.preheader110.i, label %gauss_make_triangular.exit.thread

.preheader110.i:                                  ; preds = %._crit_edge.i
  br i1 %i.aq, label %.lr.ph114.i.preheader, label %.loopexit.i

.lr.ph114.i.preheader:                            ; preds = %.preheader110.i
  %xtraiter83 = and i64 %i.ae, 3                  ; 2 uses
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %.lr.ph114.i.prol.loopexit, label %.lr.ph114.i.prol.preheader

.lr.ph114.i.prol.preheader:                       ; preds = %.lr.ph114.i.preheader
  %i.bp = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bi
  br label %.lr.ph114.i.prol

.lr.ph114.i.prol:                                 ; preds = %.lr.ph114.i.prol, %.lr.ph114.i.prol.preheader
  %indvars.iv126.i.prol = phi i64 [ %indvars.iv.next127.i.prol, %.lr.ph114.i.prol ], [ %indvars.iv.i, %.lr.ph114.i.prol.preheader ] ; 2 uses
  %prol.iter85 = phi i64 [ %prol.iter85.next, %.lr.ph114.i.prol ], [ 0, %.lr.ph114.i.prol.preheader ]
  %i.bq = mul nuw nsw i64 %indvars.iv126.i.prol, %i.g
  %gep155.i.prol = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bq ; 2 uses
  %i.br = load double, ptr %gep155.i.prol, align 8, !tbaa !383
  %i.bs = fneg reassoc nsz arcp contract afn double %i.br
  %i.bt = fmul reassoc nsz arcp contract afn double %i.bs, %i.bp
  store double %i.bt, ptr %gep155.i.prol, align 8, !tbaa !383
  %indvars.iv.next127.i.prol = add nuw nsw i64 %indvars.iv126.i.prol, 1 ; 2 uses
  %prol.iter85.next = add i64 %prol.iter85, 1     ; 2 uses
  %prol.iter85.cmp.not = icmp eq i64 %prol.iter85.next, %xtraiter83
  br i1 %prol.iter85.cmp.not, label %.lr.ph114.i.prol.loopexit, label %.lr.ph114.i.prol, !llvm.loop !500

.lr.ph114.i.prol.loopexit:                        ; preds = %.lr.ph114.i.prol, %.lr.ph114.i.preheader
  %indvars.iv126.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph114.i.preheader ], [ %indvars.iv.next127.i.prol, %.lr.ph114.i.prol ]
  %i.bu = icmp ult i64 %i.af, 3
  br i1 %i.bu, label %._crit_edge115.i, label %.lr.ph114.i.preheader.new

.lr.ph114.i.preheader.new:                        ; preds = %.lr.ph114.i.prol.loopexit
  %i.bv = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bi
  %i.bw = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bi
  %i.bx = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bi
  %i.by = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bi
  br label %.lr.ph114.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv123.i = phi i64 [ %indvars.iv.next124.i.3, %.lr.ph.i ], [ %indvars.iv123.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0100111.i = phi i32 [ %.1101.i.3, %.lr.ph.i ], [ %.0100111.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.bz = mul nuw nsw i64 %indvars.iv123.i, %i.g
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.bz
  %i.ca = load double, ptr %gep.i, align 8, !tbaa !383
  %i.cb = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ca)
  %i.cc = mul nsw i32 %.0100111.i, %2
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !383
  %i.cg = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cf)
  %i.ch = fcmp reassoc nsz arcp contract afn ogt double %i.cb, %i.cg
  %i.ci = trunc nuw nsw i64 %indvars.iv123.i to i32
  %.1101.i = select i1 %i.ch, i32 %i.ci, i32 %.0100111.i ; 2 uses
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %i.cj = mul nuw nsw i64 %indvars.iv.next124.i, %i.g
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.cj
  %i.ck = load double, ptr %gep.i.1, align 8, !tbaa !383
  %i.cl = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ck)
  %i.cm = mul nsw i32 %.1101.i, %2
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !383
  %i.cq = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp reassoc nsz arcp contract afn ogt double %i.cl, %i.cq
  %i.cs = trunc nuw nsw i64 %indvars.iv.next124.i to i32
  %.1101.i.1 = select i1 %i.cr, i32 %i.cs, i32 %.1101.i ; 2 uses
  %indvars.iv.next124.i.1 = add nuw nsw i64 %indvars.iv123.i, 2 ; 2 uses
  %i.ct = mul nuw nsw i64 %indvars.iv.next124.i.1, %i.g
  %gep.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.ct
  %i.cu = load double, ptr %gep.i.2, align 8, !tbaa !383
  %i.cv = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cu)
  %i.cw = mul nsw i32 %.1101.i.1, %2
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !383
  %i.da = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cz)
  %i.db = fcmp reassoc nsz arcp contract afn ogt double %i.cv, %i.da
  %i.dc = trunc nuw nsw i64 %indvars.iv.next124.i.1 to i32
  %.1101.i.2 = select i1 %i.db, i32 %i.dc, i32 %.1101.i.1 ; 2 uses
  %indvars.iv.next124.i.2 = add nuw nsw i64 %indvars.iv123.i, 3 ; 2 uses
  %i.dd = mul nuw nsw i64 %indvars.iv.next124.i.2, %i.g
  %gep.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.dd
  %i.de = load double, ptr %gep.i.3, align 8, !tbaa !383
  %i.df = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.de)
  %i.dg = mul nsw i32 %.1101.i.2, %2
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !383
  %i.dk = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.dj)
  %i.dl = fcmp reassoc nsz arcp contract afn ogt double %i.df, %i.dk
  %i.dm = trunc nuw nsw i64 %indvars.iv.next124.i.2 to i32
  %.1101.i.3 = select i1 %i.dl, i32 %i.dm, i32 %.1101.i.2 ; 2 uses
  %indvars.iv.next124.i.3 = add nuw nsw i64 %indvars.iv123.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next124.i.3, %i.g
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i

._crit_edge115.i:                                 ; preds = %.lr.ph114.i, %.lr.ph114.i.prol.loopexit
  %i.dn = zext i32 %.0100.lcssa.i to i64
  %.not.not.i = icmp eq i64 %indvars.iv146.i, %i.dn
  br i1 %.not.not.i, label %.preheader.preheader.i, label %.lr.ph117.preheader.i

.lr.ph117.preheader.i:                            ; preds = %._crit_edge115.i
  %invariant.gep156.i = getelementptr [8 x i8], ptr %0, i64 %i.bf ; 6 uses
  %invariant.gep158.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bj ; 6 uses
  %min.iters.check36 = icmp ult i64 %5, 8
  br i1 %min.iters.check36, label %.lr.ph117.i.preheader, label %vector.memcheck26

vector.memcheck26:                                ; preds = %.lr.ph117.preheader.i
  %i.do = shl nsw i64 %i.bf, 3                    ; 2 uses
  %scevgep28 = getelementptr i8, ptr %scevgep27, i64 %i.do
  %scevgep30 = getelementptr i8, ptr %scevgep29, i64 %i.do
  %bound033 = icmp ult ptr %scevgep28, %scevgep32
  %bound134 = icmp ult ptr %scevgep31, %scevgep30
  %found.conflict35 = and i1 %bound033, %bound134
  br i1 %found.conflict35, label %.lr.ph117.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck26
  %n.vec38 = and i64 %5, -8                       ; 3 uses
  %i.dp = add i64 %indvars.iv.i, %n.vec38
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.dq = add nuw i64 %indvars.iv.i, %index40     ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %invariant.gep156.i, i64 %i.dq ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 32     ; 2 uses
  %wide.load41 = load <4 x double>, ptr %i.dr, align 8, !tbaa !383, !alias.scope !501, !noalias !504
  %wide.load42 = load <4 x double>, ptr %i.ds, align 8, !tbaa !383, !alias.scope !501, !noalias !504
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i, i64 %i.dq ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32 ; 2 uses
  %wide.load43 = load <4 x double>, ptr %i.dt, align 8, !tbaa !383, !alias.scope !504
  %wide.load44 = load <4 x double>, ptr %i.du, align 8, !tbaa !383, !alias.scope !504
  store <4 x double> %wide.load43, ptr %i.dr, align 8, !tbaa !383, !alias.scope !501, !noalias !504
  store <4 x double> %wide.load44, ptr %i.ds, align 8, !tbaa !383, !alias.scope !501, !noalias !504
  store <4 x double> %wide.load41, ptr %i.dt, align 8, !tbaa !383, !alias.scope !504
  store <4 x double> %wide.load42, ptr %i.du, align 8, !tbaa !383, !alias.scope !504
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.dv = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.dv, label %middle.block46, label %vector.body39, !llvm.loop !506

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %5, %n.vec38
  br i1 %cmp.n47, label %.preheader.preheader.i, label %.lr.ph117.i.preheader

.lr.ph117.i.preheader:                            ; preds = %vector.memcheck26, %.lr.ph117.preheader.i, %middle.block46
  %indvars.iv131.i.ph = phi i64 [ %indvars.iv.i, %vector.memcheck26 ], [ %indvars.iv.i, %.lr.ph117.preheader.i ], [ %i.dp, %middle.block46 ] ; 4 uses
  %i.dw = sub i64 %i.g, %indvars.iv131.i.ph
  %xtraiter86 = and i64 %i.dw, 3                  ; 2 uses
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %.lr.ph117.i.prol.loopexit, label %.lr.ph117.i.prol

.lr.ph117.i.prol:                                 ; preds = %.lr.ph117.i.preheader, %.lr.ph117.i.prol
  %indvars.iv131.i.prol = phi i64 [ %indvars.iv.next132.i.prol, %.lr.ph117.i.prol ], [ %indvars.iv131.i.ph, %.lr.ph117.i.preheader ] ; 3 uses
  %prol.iter88 = phi i64 [ %prol.iter88.next, %.lr.ph117.i.prol ], [ 0, %.lr.ph117.i.preheader ]
  %gep157.i.prol = getelementptr [8 x i8], ptr %invariant.gep156.i, i64 %indvars.iv131.i.prol ; 2 uses
  %i.dx = load double, ptr %gep157.i.prol, align 8, !tbaa !383
  %gep159.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i, i64 %indvars.iv131.i.prol ; 2 uses
  %i.dy = load double, ptr %gep159.i.prol, align 8, !tbaa !383
  store double %i.dy, ptr %gep157.i.prol, align 8, !tbaa !383
  store double %i.dx, ptr %gep159.i.prol, align 8, !tbaa !383
  %indvars.iv.next132.i.prol = add nuw nsw i64 %indvars.iv131.i.prol, 1 ; 2 uses
  %prol.iter88.next = add i64 %prol.iter88, 1     ; 2 uses
  %prol.iter88.cmp.not = icmp eq i64 %prol.iter88.next, %xtraiter86
  br i1 %prol.iter88.cmp.not, label %.lr.ph117.i.prol.loopexit, label %.lr.ph117.i.prol, !llvm.loop !507

.lr.ph117.i.prol.loopexit:                        ; preds = %.lr.ph117.i.prol, %.lr.ph117.i.preheader
  %indvars.iv131.i.unr = phi i64 [ %indvars.iv131.i.ph, %.lr.ph117.i.preheader ], [ %indvars.iv.next132.i.prol, %.lr.ph117.i.prol ]
  %i.dz = sub i64 %indvars.iv131.i.ph, %i.g
  %i.ea = icmp ugt i64 %i.dz, -4
  br i1 %i.ea, label %.preheader.preheader.i, label %.lr.ph117.i

.lr.ph114.i:                                      ; preds = %.lr.ph114.i, %.lr.ph114.i.preheader.new
  %indvars.iv126.i = phi i64 [ %indvars.iv126.i.unr, %.lr.ph114.i.preheader.new ], [ %indvars.iv.next127.i.3, %.lr.ph114.i ] ; 5 uses
  %i.eb = mul nuw nsw i64 %indvars.iv126.i, %i.g
  %gep155.i = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.eb ; 2 uses
  %i.ec = load double, ptr %gep155.i, align 8, !tbaa !383
  %i.ed = fneg reassoc nsz arcp contract afn double %i.ec
  %i.ee = fmul reassoc nsz arcp contract afn double %i.ed, %i.bv
  store double %i.ee, ptr %gep155.i, align 8, !tbaa !383
  %indvars.iv.next127.i = add nuw nsw i64 %indvars.iv126.i, 1
  %i.ef = mul nuw nsw i64 %indvars.iv.next127.i, %i.g
  %gep155.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ef ; 2 uses
  %i.eg = load double, ptr %gep155.i.1, align 8, !tbaa !383
  %i.eh = fneg reassoc nsz arcp contract afn double %i.eg
  %i.ei = fmul reassoc nsz arcp contract afn double %i.eh, %i.bw
  store double %i.ei, ptr %gep155.i.1, align 8, !tbaa !383
  %indvars.iv.next127.i.1 = add nuw nsw i64 %indvars.iv126.i, 2
  %i.ej = mul nuw nsw i64 %indvars.iv.next127.i.1, %i.g
  %gep155.i.2 = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ej ; 2 uses
  %i.ek = load double, ptr %gep155.i.2, align 8, !tbaa !383
  %i.el = fneg reassoc nsz arcp contract afn double %i.ek
  %i.em = fmul reassoc nsz arcp contract afn double %i.el, %i.bx
  store double %i.em, ptr %gep155.i.2, align 8, !tbaa !383
  %indvars.iv.next127.i.2 = add nuw nsw i64 %indvars.iv126.i, 3
  %i.en = mul nuw nsw i64 %indvars.iv.next127.i.2, %i.g
  %gep155.i.3 = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.en ; 2 uses
  %i.eo = load double, ptr %gep155.i.3, align 8, !tbaa !383
  %i.ep = fneg reassoc nsz arcp contract afn double %i.eo
  %i.eq = fmul reassoc nsz arcp contract afn double %i.ep, %i.by
  store double %i.eq, ptr %gep155.i.3, align 8, !tbaa !383
  %indvars.iv.next127.i.3 = add nuw nsw i64 %indvars.iv126.i, 4 ; 2 uses
  %exitcond130.not.i.3 = icmp eq i64 %indvars.iv.next127.i.3, %i.g
  br i1 %exitcond130.not.i.3, label %._crit_edge115.i, label %.lr.ph114.i

.lr.ph117.i:                                      ; preds = %.lr.ph117.i.prol.loopexit, %.lr.ph117.i
  %indvars.iv131.i = phi i64 [ %indvars.iv.next132.i.3, %.lr.ph117.i ], [ %indvars.iv131.i.unr, %.lr.ph117.i.prol.loopexit ] ; 6 uses
  %gep157.i = getelementptr [8 x i8], ptr %invariant.gep156.i, i64 %indvars.iv131.i ; 2 uses
  %i.er = load double, ptr %gep157.i, align 8, !tbaa !383
  %gep159.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i, i64 %indvars.iv131.i ; 2 uses
  %i.es = load double, ptr %gep159.i, align 8, !tbaa !383
  store double %i.es, ptr %gep157.i, align 8, !tbaa !383
  store double %i.er, ptr %gep159.i, align 8, !tbaa !383
  %indvars.iv.next132.i = add nuw nsw i64 %indvars.iv131.i, 1 ; 2 uses
  %gep157.i.1 = getelementptr [8 x i8], ptr %invariant.gep156.i, i64 %indvars.iv.next132.i ; 2 uses
  %i.et = load double, ptr %gep157.i.1, align 8, !tbaa !383
  %gep159.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i, i64 %indvars.iv.next132.i ; 2 uses
  %i.eu = load double, ptr %gep159.i.1, align 8, !tbaa !383
  store double %i.eu, ptr %gep157.i.1, align 8, !tbaa !383
  store double %i.et, ptr %gep159.i.1, align 8, !tbaa !383
  %indvars.iv.next132.i.1 = add nuw nsw i64 %indvars.iv131.i, 2 ; 2 uses
  %gep157.i.2 = getelementptr [8 x i8], ptr %invariant.gep156.i, i64 %indvars.iv.next132.i.1 ; 2 uses
  %i.ev = load double, ptr %gep157.i.2, align 8, !tbaa !383
  %gep159.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i, i64 %indvars.iv.next132.i.1 ; 2 uses
  %i.ew = load double, ptr %gep159.i.2, align 8, !tbaa !383
  store double %i.ew, ptr %gep157.i.2, align 8, !tbaa !383
  store double %i.ev, ptr %gep159.i.2, align 8, !tbaa !383
  %indvars.iv.next132.i.2 = add nuw nsw i64 %indvars.iv131.i, 3 ; 2 uses
  %gep157.i.3 = getelementptr [8 x i8], ptr %invariant.gep156.i, i64 %indvars.iv.next132.i.2 ; 2 uses
  %i.ex = load double, ptr %gep157.i.3, align 8, !tbaa !383
  %gep159.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i, i64 %indvars.iv.next132.i.2 ; 2 uses
  %i.ey = load double, ptr %gep159.i.3, align 8, !tbaa !383
  store double %i.ey, ptr %gep157.i.3, align 8, !tbaa !383
  store double %i.ex, ptr %gep159.i.3, align 8, !tbaa !383
  %indvars.iv.next132.i.3 = add nuw nsw i64 %indvars.iv131.i, 4 ; 2 uses
  %exitcond135.not.i.3 = icmp eq i64 %indvars.iv.next132.i.3, %i.g
  br i1 %exitcond135.not.i.3, label %.preheader.preheader.i, label %.lr.ph117.i, !llvm.loop !508

.preheader.preheader.i:                           ; preds = %.lr.ph117.i.prol.loopexit, %.lr.ph117.i, %middle.block46, %._crit_edge115.i
  %invariant.gep160.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bj ; 7 uses
  %min.iters.check = icmp ult i64 %5, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %scevgep2, %scevgep1
  %found.conflict = and i1 %bound0, %bound1
  %bound06 = icmp ult ptr %scevgep, %scevgep5
  %bound17 = icmp ult ptr %scevgep4, %scevgep1
  %found.conflict8 = and i1 %bound06, %bound17
  %conflict.rdx = or i1 %found.conflict, %found.conflict8
  %min.iters.check9 = icmp ult i64 %5, 16
  %i.ez = and i64 %5, 12
  %n.vec = and i64 %5, -16                        ; 4 uses
  %i.fa = add i64 %indvars.iv.i, %n.vec
  %cmp.n = icmp eq i64 %5, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ez, 0
  %n.vec17 = and i64 %5, -4                       ; 3 uses
  %i.fb = add i64 %indvars.iv.i, %n.vec17
  %cmp.n24 = icmp eq i64 %5, %n.vec17
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge120.i, %.preheader.preheader.i
  %indvars.iv141.i = phi i64 [ %indvars.iv.i, %.preheader.preheader.i ], [ %indvars.iv.next142.i, %._crit_edge120.i ] ; 2 uses
  %i.fc = mul nuw nsw i64 %indvars.iv141.i, %i.g  ; 2 uses
  %gep165.i = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.fc ; 7 uses
  %invariant.gep162.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fc ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fd = load double, ptr %gep165.i, align 8, !tbaa !383, !alias.scope !509
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.fd, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fe = add nuw i64 %indvars.iv.i, %index       ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep160.i, i64 %i.fe ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 96
  %wide.load = load <4 x double>, ptr %i.ff, align 8, !tbaa !383, !alias.scope !512
  %wide.load10 = load <4 x double>, ptr %i.fg, align 8, !tbaa !383, !alias.scope !512
  %wide.load11 = load <4 x double>, ptr %i.fh, align 8, !tbaa !383, !alias.scope !512
  %wide.load12 = load <4 x double>, ptr %i.fi, align 8, !tbaa !383, !alias.scope !512
  %i.fj = fmul reassoc nsz arcp contract afn <4 x double> %wide.load, %broadcast.splat
  %i.fk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load10, %broadcast.splat
  %i.fl = fmul reassoc nsz arcp contract afn <4 x double> %wide.load11, %broadcast.splat
  %i.fm = fmul reassoc nsz arcp contract afn <4 x double> %wide.load12, %broadcast.splat
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep162.i, i64 %i.fe ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 64 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 96 ; 2 uses
  %wide.load13 = load <4 x double>, ptr %i.fn, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  %wide.load14 = load <4 x double>, ptr %i.fo, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  %wide.load15 = load <4 x double>, ptr %i.fp, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  %wide.load16 = load <4 x double>, ptr %i.fq, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  %i.fr = fadd reassoc nsz arcp contract afn <4 x double> %wide.load13, %i.fj
  %i.fs = fadd reassoc nsz arcp contract afn <4 x double> %wide.load14, %i.fk
  %i.ft = fadd reassoc nsz arcp contract afn <4 x double> %wide.load15, %i.fl
  %i.fu = fadd reassoc nsz arcp contract afn <4 x double> %wide.load16, %i.fm
  store <4 x double> %i.fr, ptr %i.fn, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  store <4 x double> %i.fs, ptr %i.fo, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  store <4 x double> %i.ft, ptr %i.fp, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  store <4 x double> %i.fu, ptr %i.fq, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fv = icmp eq i64 %index.next, %n.vec
  br i1 %i.fv, label %middle.block, label %vector.body, !llvm.loop !517

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge120.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !518

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.fw = load double, ptr %gep165.i, align 8, !tbaa !383, !alias.scope !509
  %broadcast.splatinsert20 = insertelement <4 x double> poison, double %i.fw, i64 0
  %broadcast.splat21 = shufflevector <4 x double> %broadcast.splatinsert20, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.fx = add nuw i64 %indvars.iv.i, %index18     ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep160.i, i64 %i.fx
  %wide.load19 = load <4 x double>, ptr %i.fy, align 8, !tbaa !383, !alias.scope !512
  %i.fz = fmul reassoc nsz arcp contract afn <4 x double> %wide.load19, %broadcast.splat21
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep162.i, i64 %i.fx ; 2 uses
  %wide.load22 = load <4 x double>, ptr %i.ga, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  %i.gb = fadd reassoc nsz arcp contract afn <4 x double> %wide.load22, %i.fz
  store <4 x double> %i.gb, ptr %i.ga, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  %index.next23 = add nuw i64 %index18, 4         ; 2 uses
  %i.gc = icmp eq i64 %index.next23, %n.vec17
  br i1 %i.gc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !519

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n24, label %._crit_edge120.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv136.i.ph = phi i64 [ %indvars.iv.i, %iter.check ], [ %i.fb, %vec.epilog.middle.block ], [ %i.fa, %vec.epilog.iter.check ] ; 4 uses
  %i.gd = sub i64 %i.g, %indvars.iv136.i.ph
  %xtraiter89 = and i64 %i.gd, 3                  ; 2 uses
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv136.i.prol = phi i64 [ %indvars.iv.next137.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv136.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter91 = phi i64 [ %prol.iter91.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ge = load double, ptr %gep165.i, align 8, !tbaa !383
  %gep161.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep160.i, i64 %indvars.iv136.i.prol
  %i.gf = load double, ptr %gep161.i.prol, align 8, !tbaa !383
  %i.gg = fmul reassoc nsz arcp contract afn double %i.gf, %i.ge
  %gep163.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep162.i, i64 %indvars.iv136.i.prol ; 2 uses
  %i.gh = load double, ptr %gep163.i.prol, align 8, !tbaa !383
  %i.gi = fadd reassoc nsz arcp contract afn double %i.gh, %i.gg
  store double %i.gi, ptr %gep163.i.prol, align 8, !tbaa !383
  %indvars.iv.next137.i.prol = add nuw nsw i64 %indvars.iv136.i.prol, 1 ; 2 uses
  %prol.iter91.next = add i64 %prol.iter91, 1     ; 2 uses
  %prol.iter91.cmp.not = icmp eq i64 %prol.iter91.next, %xtraiter89
  br i1 %prol.iter91.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !520

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv136.i.unr = phi i64 [ %indvars.iv136.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next137.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.gj = sub i64 %indvars.iv136.i.ph, %i.g
  %i.gk = icmp ugt i64 %i.gj, -4
  br i1 %i.gk, label %._crit_edge120.i, label %vec.epilog.scalar.ph

._crit_edge120.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %exitcond145.not.i = icmp eq i64 %indvars.iv.next142.i, %i.g
  br i1 %exitcond145.not.i, label %.loopexit.i, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv136.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.gl = load double, ptr %gep165.i, align 8, !tbaa !383
  %gep161.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep160.i, i64 %indvars.iv136.i
  %i.gm = load double, ptr %gep161.i, align 8, !tbaa !383
  %i.gn = fmul reassoc nsz arcp contract afn double %i.gm, %i.gl
  %gep163.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep162.i, i64 %indvars.iv136.i ; 2 uses
  %i.go = load double, ptr %gep163.i, align 8, !tbaa !383
  %i.gp = fadd reassoc nsz arcp contract afn double %i.go, %i.gn
  store double %i.gp, ptr %gep163.i, align 8, !tbaa !383
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 1 ; 2 uses
  %i.gq = load double, ptr %gep165.i, align 8, !tbaa !383
  %gep161.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep160.i, i64 %indvars.iv.next137.i
  %i.gr = load double, ptr %gep161.i.1, align 8, !tbaa !383
  %i.gs = fmul reassoc nsz arcp contract afn double %i.gr, %i.gq
  %gep163.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep162.i, i64 %indvars.iv.next137.i ; 2 uses
  %i.gt = load double, ptr %gep163.i.1, align 8, !tbaa !383
  %i.gu = fadd reassoc nsz arcp contract afn double %i.gt, %i.gs
  store double %i.gu, ptr %gep163.i.1, align 8, !tbaa !383
  %indvars.iv.next137.i.1 = add nuw nsw i64 %indvars.iv136.i, 2 ; 2 uses
  %i.gv = load double, ptr %gep165.i, align 8, !tbaa !383
  %gep161.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep160.i, i64 %indvars.iv.next137.i.1
  %i.gw = load double, ptr %gep161.i.2, align 8, !tbaa !383
  %i.gx = fmul reassoc nsz arcp contract afn double %i.gw, %i.gv
  %gep163.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep162.i, i64 %indvars.iv.next137.i.1 ; 2 uses
  %i.gy = load double, ptr %gep163.i.2, align 8, !tbaa !383
  %i.gz = fadd reassoc nsz arcp contract afn double %i.gy, %i.gx
  store double %i.gz, ptr %gep163.i.2, align 8, !tbaa !383
  %indvars.iv.next137.i.2 = add nuw nsw i64 %indvars.iv136.i, 3 ; 2 uses
  %i.ha = load double, ptr %gep165.i, align 8, !tbaa !383
  %gep161.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep160.i, i64 %indvars.iv.next137.i.2
  %i.hb = load double, ptr %gep161.i.3, align 8, !tbaa !383
  %i.hc = fmul reassoc nsz arcp contract afn double %i.hb, %i.ha
  %gep163.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep162.i, i64 %indvars.iv.next137.i.2 ; 2 uses
  %i.hd = load double, ptr %gep163.i.3, align 8, !tbaa !383
  %i.he = fadd reassoc nsz arcp contract afn double %i.hd, %i.hc
  store double %i.he, ptr %gep163.i.3, align 8, !tbaa !383
  %indvars.iv.next137.i.3 = add nuw nsw i64 %indvars.iv136.i, 4 ; 2 uses
  %exitcond140.not.i.3 = icmp eq i64 %indvars.iv.next137.i.3, %i.g
  br i1 %exitcond140.not.i.3, label %._crit_edge120.i, label %vec.epilog.scalar.ph, !llvm.loop !521

.loopexit.i15:                                    ; preds = %.lr.ph.i12.prol.loopexit, %.lr.ph.i12, %vector.ph59
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i10, 1
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next64.i, %i.e
  br i1 %exitcond67.not.i, label %.lr.ph58.i, label %.lr.ph.preheader.i9

.lr.ph58.i:                                       ; preds = %.loopexit.i15
  %i.hf = add nuw nsw i32 %2, 1
  %i.hg = zext nneg i32 %i.hf to i64              ; 4 uses
  %i.hh = mul nuw nsw i64 %i.e, %i.hg
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.hh
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !383
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !383
  %i.hm = fdiv reassoc nsz arcp contract afn double %i.hl, %i.hj ; 6 uses
  store double %i.hm, ptr %i.hk, align 8, !tbaa !383
  %invariant.gep76.i = getelementptr [8 x i8], ptr %0, i64 %i.e ; 5 uses
  %xtraiter95 = and i64 %i.e, 3                   ; 3 uses
  %.not = icmp eq i32 %2, 5
  br i1 %.not, label %.new, label %.epil.preheader

.lr.ph.preheader.i9:                              ; preds = %.lr.ph.preheader.i9.preheader, %.loopexit.i15
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %.loopexit.i15 ], [ 0, %.lr.ph.preheader.i9.preheader ] ; 7 uses
  %indvars.iv.i10 = phi i64 [ %indvars.iv.next.i16, %.loopexit.i15 ], [ 1, %.lr.ph.preheader.i9.preheader ] ; 6 uses
  %6 = xor i64 %indvars.iv63.i, -1
  %7 = add nsw i64 %6, %i.g                       ; 3 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv63.i
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !24
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.hp ; 2 uses
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !383 ; 7 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv63.i ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !383
  store double %i.ht, ptr %i.hq, align 8, !tbaa !383
  store double %i.hr, ptr %i.hs, align 8, !tbaa !383
  %invariant.gep.i11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv63.i ; 6 uses
  %min.iters.check58 = icmp ult i64 %7, 4
  br i1 %min.iters.check58, label %.lr.ph.i12.preheader, label %vector.memcheck48

vector.memcheck48:                                ; preds = %.lr.ph.preheader.i9
  %i.hu = shl nuw nsw i64 %indvars.iv63.i, 3      ; 2 uses
  %scevgep51 = getelementptr i8, ptr %i.ac, i64 %i.hu ; 4 uses
  %i.hv = mul i64 %i.ab, %indvars.iv63.i
  %scevgep52 = getelementptr i8, ptr %i.ad, i64 %i.hv ; 4 uses
  %i.hw = icmp ugt ptr %scevgep51, %scevgep52
  %umax = select i1 %i.hw, ptr %scevgep51, ptr %scevgep52
  %scevgep53 = getelementptr i8, ptr %umax, i64 8
  %i.hx = icmp ult ptr %scevgep51, %scevgep52
  %umin = select i1 %i.hx, ptr %scevgep51, ptr %scevgep52
  %i.hy = getelementptr nuw i8, ptr %1, i64 %i.hu
  %scevgep49 = getelementptr nuw i8, ptr %i.hy, i64 8
  %bound054 = icmp ult ptr %scevgep49, %scevgep53
  %bound155 = icmp ult ptr %umin, %scevgep50
  %found.conflict56 = and i1 %bound054, %bound155
  br i1 %found.conflict56, label %.lr.ph.i12.preheader, label %vector.ph59

vector.ph59:                                      ; preds = %vector.memcheck48
  %n.vec60 = and i64 %7, -4                       ; 2 uses
  %i.hz = add i64 %indvars.iv.i10, %n.vec60
  %broadcast.splatinsert65 = insertelement <4 x i64> poison, i64 %indvars.iv.i10, i64 0
  %broadcast.splat66 = shufflevector <4 x i64> %broadcast.splatinsert65, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat66, <i64 0, i64 1, i64 2, i64 3>
  %broadcast.splatinsert61 = insertelement <4 x double> poison, double %i.hr, i64 0
  %broadcast.splat62 = shufflevector <4 x double> %broadcast.splatinsert61, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ia = mul nuw nsw <4 x i64> %induction, %broadcast.splat64
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, <4 x i64> %i.ia
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !383, !alias.scope !522
  %i.ib = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather, %broadcast.splat62
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i10 ; 2 uses
  %wide.load68 = load <4 x double>, ptr %i.ic, align 8, !tbaa !383, !alias.scope !525, !noalias !522
  %i.id = fadd reassoc nsz arcp contract afn <4 x double> %wide.load68, %i.ib
  store <4 x double> %i.id, ptr %i.ic, align 8, !tbaa !383, !alias.scope !525, !noalias !522
  %cmp.n70 = icmp eq i64 %7, %n.vec60
  br i1 %cmp.n70, label %.loopexit.i15, label %.lr.ph.i12.preheader

.lr.ph.i12.preheader:                             ; preds = %vector.memcheck48, %.lr.ph.preheader.i9, %vector.ph59
  %indvars.iv60.i.ph = phi i64 [ %indvars.iv.i10, %vector.memcheck48 ], [ %indvars.iv.i10, %.lr.ph.preheader.i9 ], [ %i.hz, %vector.ph59 ] ; 4 uses
  %i.ie = sub i64 %i.g, %indvars.iv60.i.ph
  %xtraiter92 = and i64 %i.ie, 3                  ; 2 uses
  %lcmp.mod93.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod93.not, label %.lr.ph.i12.prol.loopexit, label %.lr.ph.i12.prol

.lr.ph.i12.prol:                                  ; preds = %.lr.ph.i12.preheader, %.lr.ph.i12.prol
  %indvars.iv60.i.prol = phi i64 [ %indvars.iv.next61.i.prol, %.lr.ph.i12.prol ], [ %indvars.iv60.i.ph, %.lr.ph.i12.preheader ] ; 3 uses
  %prol.iter94 = phi i64 [ %prol.iter94.next, %.lr.ph.i12.prol ], [ 0, %.lr.ph.i12.preheader ]
  %i.if = mul nuw nsw i64 %indvars.iv60.i.prol, %i.g
  %gep.i13.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, i64 %i.if
  %i.ig = load double, ptr %gep.i13.prol, align 8, !tbaa !383
  %i.ih = fmul reassoc nsz arcp contract afn double %i.ig, %i.hr
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv60.i.prol ; 2 uses
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !383
  %i.ik = fadd reassoc nsz arcp contract afn double %i.ij, %i.ih
  store double %i.ik, ptr %i.ii, align 8, !tbaa !383
  %indvars.iv.next61.i.prol = add nuw nsw i64 %indvars.iv60.i.prol, 1 ; 2 uses
  %prol.iter94.next = add i64 %prol.iter94, 1     ; 2 uses
  %prol.iter94.cmp.not = icmp eq i64 %prol.iter94.next, %xtraiter92
  br i1 %prol.iter94.cmp.not, label %.lr.ph.i12.prol.loopexit, label %.lr.ph.i12.prol, !llvm.loop !527

.lr.ph.i12.prol.loopexit:                         ; preds = %.lr.ph.i12.prol, %.lr.ph.i12.preheader
  %indvars.iv60.i.unr = phi i64 [ %indvars.iv60.i.ph, %.lr.ph.i12.preheader ], [ %indvars.iv.next61.i.prol, %.lr.ph.i12.prol ]
  %i.il = sub i64 %indvars.iv60.i.ph, %i.g
  %i.im = icmp ugt i64 %i.il, -4
  br i1 %i.im, label %.loopexit.i15, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.lr.ph.i12.prol.loopexit, %.lr.ph.i12
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i.3, %.lr.ph.i12 ], [ %indvars.iv60.i.unr, %.lr.ph.i12.prol.loopexit ] ; 6 uses
  %i.in = mul nuw nsw i64 %indvars.iv60.i, %i.g
  %gep.i13 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, i64 %i.in
  %i.io = load double, ptr %gep.i13, align 8, !tbaa !383
  %i.ip = fmul reassoc nsz arcp contract afn double %i.io, %i.hr
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv60.i ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !383
  %i.is = fadd reassoc nsz arcp contract afn double %i.ir, %i.ip
  store double %i.is, ptr %i.iq, align 8, !tbaa !383
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %i.it = mul nuw nsw i64 %indvars.iv.next61.i, %i.g
  %gep.i13.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, i64 %i.it
  %i.iu = load double, ptr %gep.i13.1, align 8, !tbaa !383
  %i.iv = fmul reassoc nsz arcp contract afn double %i.iu, %i.hr
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next61.i ; 2 uses
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !383
  %i.iy = fadd reassoc nsz arcp contract afn double %i.ix, %i.iv
  store double %i.iy, ptr %i.iw, align 8, !tbaa !383
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %i.iz = mul nuw nsw i64 %indvars.iv.next61.i.1, %i.g
  %gep.i13.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, i64 %i.iz
  %i.ja = load double, ptr %gep.i13.2, align 8, !tbaa !383
  %i.jb = fmul reassoc nsz arcp contract afn double %i.ja, %i.hr
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next61.i.1 ; 2 uses
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !383
  %i.je = fadd reassoc nsz arcp contract afn double %i.jd, %i.jb
  store double %i.je, ptr %i.jc, align 8, !tbaa !383
  %indvars.iv.next61.i.2 = add nuw nsw i64 %indvars.iv60.i, 3 ; 2 uses
  %i.jf = mul nuw nsw i64 %indvars.iv.next61.i.2, %i.g
  %gep.i13.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, i64 %i.jf
  %i.jg = load double, ptr %gep.i13.3, align 8, !tbaa !383
  %i.jh = fmul reassoc nsz arcp contract afn double %i.jg, %i.hr
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next61.i.2 ; 2 uses
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !383
  %i.jk = fadd reassoc nsz arcp contract afn double %i.jj, %i.jh
  store double %i.jk, ptr %i.ji, align 8, !tbaa !383
  %indvars.iv.next61.i.3 = add nuw nsw i64 %indvars.iv60.i, 4 ; 2 uses
  %exitcond.not.i14.3 = icmp eq i64 %indvars.iv.next61.i.3, %i.g
  br i1 %exitcond.not.i14.3, label %.loopexit.i15, label %.lr.ph.i12, !llvm.loop !528

.unr-lcssa:                                       ; preds = %.new
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph58.i
  %indvars.iv68.i.epil.init = phi i64 [ 0, %.lr.ph58.i ], [ %indvars.iv.next69.i.3, %.unr-lcssa ]
  %lcmp.mod97 = icmp ne i64 %xtraiter95, 0
  tail call void @llvm.assume(i1 %lcmp.mod97)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv68.i.epil = phi i64 [ %indvars.iv68.i.epil.init, %.epil.preheader ], [ %indvars.iv.next69.i.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.jl = mul nuw nsw i64 %indvars.iv68.i.epil, %i.g
  %gep77.i.epil = getelementptr [8 x i8], ptr %invariant.gep76.i, i64 %i.jl
  %i.jm = load double, ptr %gep77.i.epil, align 8, !tbaa !383
  %i.jn = fmul reassoc nsz arcp contract afn double %i.jm, %i.hm
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv68.i.epil ; 2 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !383
  %i.jq = fsub reassoc nsz arcp contract afn double %i.jp, %i.jn
  store double %i.jq, ptr %i.jo, align 8, !tbaa !383
  %indvars.iv.next69.i.epil = add nuw nsw i64 %indvars.iv68.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter95
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !529

.epilog-lcssa:                                    ; preds = %.unr-lcssa, %bb.c
  %indvars.iv.next74.i = add nsw i64 %i.e, -1     ; 4 uses
  %i.jr = mul nuw nsw i64 %indvars.iv.next74.i, %i.hg
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jr
  %i.jt = load double, ptr %i.js, align 8, !tbaa !383
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next74.i ; 2 uses
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !383
  %i.jw = fdiv reassoc nsz arcp contract afn double %i.jv, %i.jt ; 2 uses
  store double %i.jw, ptr %i.ju, align 8, !tbaa !383
  %invariant.gep76.i.1 = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next74.i
  %xtraiter95.1 = and i64 %indvars.iv.next74.i, 3 ; 2 uses
  %lcmp.mod97.1 = icmp ne i64 %xtraiter95.1, 0
  tail call void @llvm.assume(i1 %lcmp.mod97.1)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epilog-lcssa
  %indvars.iv68.i.epil.1 = phi i64 [ 0, %.epilog-lcssa ], [ %indvars.iv.next69.i.epil.1, %bb.d ] ; 3 uses
  %epil.iter.1 = phi i64 [ 0, %.epilog-lcssa ], [ %epil.iter.next.1, %bb.d ]
  %i.jx = mul nuw nsw i64 %indvars.iv68.i.epil.1, %i.g
  %gep77.i.epil.1 = getelementptr [8 x i8], ptr %invariant.gep76.i.1, i64 %i.jx
  %i.jy = load double, ptr %gep77.i.epil.1, align 8, !tbaa !383
  %i.jz = fmul reassoc nsz arcp contract afn double %i.jy, %i.jw
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv68.i.epil.1 ; 2 uses
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !383
  %i.kc = fsub reassoc nsz arcp contract afn double %i.kb, %i.jz
  store double %i.kc, ptr %i.ka, align 8, !tbaa !383
  %indvars.iv.next69.i.epil.1 = add nuw nsw i64 %indvars.iv68.i.epil.1, 1
  %epil.iter.next.1 = add i64 %epil.iter.1, 1     ; 2 uses
  %epil.iter.cmp.1.not = icmp eq i64 %epil.iter.next.1, %xtraiter95.1
  br i1 %epil.iter.cmp.1.not, label %.epilog-lcssa.1, label %bb.d, !llvm.loop !529

.epilog-lcssa.1:                                  ; preds = %bb.d
  %indvars.iv.next74.i.1 = add nsw i64 %i.e, -2   ; 4 uses
  %i.kd = mul nuw nsw i64 %indvars.iv.next74.i.1, %i.hg
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.kd
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !383
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next74.i.1 ; 2 uses
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !383
  %i.ki = fdiv reassoc nsz arcp contract afn double %i.kh, %i.kf ; 2 uses
  store double %i.ki, ptr %i.kg, align 8, !tbaa !383
  %invariant.gep76.i.2 = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next74.i.1
  %xtraiter95.2 = and i64 %indvars.iv.next74.i.1, 3 ; 2 uses
  %lcmp.mod97.2 = icmp ne i64 %xtraiter95.2, 0
  tail call void @llvm.assume(i1 %lcmp.mod97.2)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epilog-lcssa.1
  %indvars.iv68.i.epil.2 = phi i64 [ 0, %.epilog-lcssa.1 ], [ %indvars.iv.next69.i.epil.2, %bb.e ] ; 3 uses
  %epil.iter.2 = phi i64 [ 0, %.epilog-lcssa.1 ], [ %epil.iter.next.2, %bb.e ]
  %i.kj = mul nuw nsw i64 %indvars.iv68.i.epil.2, %i.g
  %gep77.i.epil.2 = getelementptr [8 x i8], ptr %invariant.gep76.i.2, i64 %i.kj
  %i.kk = load double, ptr %gep77.i.epil.2, align 8, !tbaa !383
  %i.kl = fmul reassoc nsz arcp contract afn double %i.kk, %i.ki
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv68.i.epil.2 ; 2 uses
  %i.kn = load double, ptr %i.km, align 8, !tbaa !383
  %i.ko = fsub reassoc nsz arcp contract afn double %i.kn, %i.kl
  store double %i.ko, ptr %i.km, align 8, !tbaa !383
  %indvars.iv.next69.i.epil.2 = add nuw nsw i64 %indvars.iv68.i.epil.2, 1
  %epil.iter.next.2 = add i64 %epil.iter.2, 1     ; 2 uses
  %epil.iter.cmp.2.not = icmp eq i64 %epil.iter.next.2, %xtraiter95.2
  br i1 %epil.iter.cmp.2.not, label %.epilog-lcssa.2, label %bb.e, !llvm.loop !529

.epilog-lcssa.2:                                  ; preds = %bb.e
  %indvars.iv.next74.i.2 = add nsw i64 %i.e, -3   ; 5 uses
  %.not105 = icmp eq i32 %2, 4
  br i1 %.not105, label %gauss_solve_triangular.exit, label %bb.f

bb.f:                                             ; preds = %.epilog-lcssa.2
  %i.kp = mul nuw nsw i64 %indvars.iv.next74.i.2, %i.hg
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.kp
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !383
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next74.i.2 ; 2 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !383
  %i.ku = fdiv reassoc nsz arcp contract afn double %i.kt, %i.kr ; 6 uses
  store double %i.ku, ptr %i.ks, align 8, !tbaa !383
  %invariant.gep76.i.3 = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next74.i.2 ; 5 uses
  %xtraiter95.3 = and i64 %indvars.iv.next74.i.2, 3 ; 3 uses
  %i.kv = add nsw i32 %2, -5
  %i.kw = icmp ult i32 %i.kv, 3
  br i1 %i.kw, label %.epil.preheader.3, label %.new.3

.new.3:                                           ; preds = %bb.f
  %unroll_iter.3 = and i64 %indvars.iv.next74.i.2, -4
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.new.3
  %indvars.iv68.i.3 = phi i64 [ 0, %.new.3 ], [ %indvars.iv.next69.i.3.3, %bb.g ] ; 6 uses
  %niter.3 = phi i64 [ 0, %.new.3 ], [ %niter.next.3.3, %bb.g ]
  %i.kx = mul nuw nsw i64 %indvars.iv68.i.3, %i.g
  %gep77.i.3102 = getelementptr [8 x i8], ptr %invariant.gep76.i.3, i64 %i.kx
  %i.ky = load double, ptr %gep77.i.3102, align 8, !tbaa !383
  %i.kz = fmul reassoc nsz arcp contract afn double %i.ky, %i.ku
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv68.i.3 ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !383
  %i.lc = fsub reassoc nsz arcp contract afn double %i.lb, %i.kz
  store double %i.lc, ptr %i.la, align 8, !tbaa !383
  %indvars.iv.next69.i.3103 = or disjoint i64 %indvars.iv68.i.3, 1 ; 2 uses
  %i.ld = mul nuw nsw i64 %indvars.iv.next69.i.3103, %i.g
  %gep77.i.1.3 = getelementptr [8 x i8], ptr %invariant.gep76.i.3, i64 %i.ld
  %i.le = load double, ptr %gep77.i.1.3, align 8, !tbaa !383
  %i.lf = fmul reassoc nsz arcp contract afn double %i.le, %i.ku
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next69.i.3103 ; 2 uses
end_hunk_0
