Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/StringFunctions?download=true
inline.NumInlined: 7856
inline.NumDeleted: 2535
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.bz = sext i32 %i.bv to i64
  %wide.trip.count.i = sext i32 %i.bt to i64
  %i.ca = load ptr, ptr %9, align 8
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i, %.lr.ph.split.preheader.i
  %.19 = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %.21, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i ] ; 2 uses
  %i.cb = phi i64 [ 1, %.lr.ph.split.preheader.i ], [ %i.dd, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i ]
  %indvars.iv.i = phi i64 [ %i.bz, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i ] ; 3 uses
  %.not.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.i
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !180
  %i.cd = trunc nsw i64 %indvars.iv.i to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.r, %.lr.ph.i.i
  %.20 = phi i64 [ %.19, %.lr.ph.i.i ], [ %i.dc, %bb.r ]
  %indvars.iv.i4.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i5.i, %bb.r ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv.i4.i
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !186 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %indvars.iv.i4.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !250 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !275
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 58
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !276, !range !147, !noundef !148
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 59
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !277, !range !147, !noundef !148
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !278
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !279
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %indvars.iv.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !120
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i: ; preds = %bb.p, %bb.o, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.cx, %bb.p ], [ %i.ct, %bb.o ], [ %i.cd, %bb.m ]
  %i.cy = sext i32 %.0.i.i.i.i to i64
  %i.cz = getelementptr inbounds [16 x i8], ptr %i.cl, i64 %i.cy
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cz, align 8
  %i.da = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.db = zext i32 %i.cf to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i
  %.sink9.i.i = phi i64 [ %i.da, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i ], [ %i.db, %bb.q ]
  %i.dc = add i64 %.sink9.i.i, %.20               ; 2 uses
  %indvars.iv.next.i5.i = add nuw nsw i64 %indvars.iv.i4.i, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next.i5.i, %.lcssa114
  br i1 %exitcond136.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i, label %bb.l, !llvm.loop !792

_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i: ; preds = %bb.r, %.lr.ph.split.i
  %.21 = phi i64 [ %.19, %.lr.ph.split.i ], [ %i.dc, %bb.r ] ; 2 uses
  %i.dd = phi i64 [ 0, %.lr.ph.split.i ], [ %.lcssa114, %bb.r ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit, label %.lr.ph.split.i, !llvm.loop !793

bb.s:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.de = load ptr, ptr %1, align 8, !tbaa !265   ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !262 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !263 ; 7 uses
  %.not.i.i.i.i28 = icmp slt i32 %i.dg, %i.di
  br i1 %.not.i.i.i.i28, label %bb.t, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit

bb.t:                                             ; preds = %bb.s
  %i.dj = add i32 %i.dg, 63                       ; 2 uses
  %i.dk = srem i32 %i.dj, 64
  %i.dl = sub nsw i32 %i.dj, %i.dk                ; 6 uses
  %i.dm = and i32 %i.di, -64                      ; 6 uses
  %i.dn = icmp slt i32 %i.dm, %i.dl
  br i1 %i.dn, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.do = ashr i32 %i.di, 6
  %i.dp = and i32 %i.di, 63
  %i.dq = zext nneg i32 %i.dp to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.dq
  %i.dr = xor i64 %notmask.i.i.i.i.i, -1
  %i.ds = sub nsw i32 %i.dl, %i.dg                ; 2 uses
  %i.dt = zext nneg i32 %i.ds to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dt
  %i.du = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.dv = sub nsw i32 64, %i.ds
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = shl i64 %i.du, %i.dw
  %i.dy = and i64 %i.dx, %i.dr
  %i.dz = sext i32 %i.do to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !170
  %i.ec = and i64 %i.dy, %i.eb                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ec, 0
  %i.ed = icmp eq i64 %.lcssa114, 0
  %or.cond = or i1 %i.ed, %.not.i.i.i.i.i
  br i1 %or.cond, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit, label %.preheader.split.i.preheader.i.i.i.i

.preheader.split.i.preheader.i.i.i.i:             ; preds = %bb.u
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ef = load ptr, ptr %9, align 8
  br label %.preheader.split.i.i.i.i.i

.preheader.split.i.i.i.i.i:                       ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i.i.i.i.i, %.preheader.split.i.preheader.i.i.i.i
  %.16 = phi i64 [ 0, %.preheader.split.i.preheader.i.i.i.i ], [ %.18, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i.i.i.i.i ] ; 2 uses
  %i.eg = phi i64 [ 1, %.preheader.split.i.preheader.i.i.i.i ], [ %i.fl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i.i.i.i.i ]
  %.011.i.i.i.i.i = phi i64 [ %i.ec, %.preheader.split.i.preheader.i.i.i.i ], [ %i.fn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i.i.i.i.i ] ; 3 uses
  %i.eh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = or disjoint i32 %i.dm, %i.ei            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.split.i.i.i.i.i
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !180
  %i.el = sext i32 %i.ej to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i
  %.17 = phi i64 [ %.16, %.lr.ph.i.i.i.i.i.i ], [ %i.fk, %bb.ab ]
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.ab ] ; 3 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %indvars.iv.i.i.i.i.i.i
  %i.en = load i32, ptr %i.em, align 8, !tbaa !186 ; 2 uses
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.i.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !250 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !275
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 58
  %i.ev = load i8, ptr %i.eu, align 2, !tbaa !276, !range !147, !noundef !148
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 59
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !277, !range !147, !noundef !148
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !278
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !279
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.el
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !120
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.w
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ff, %bb.z ], [ %i.fb, %bb.y ], [ %i.ej, %bb.w ]
  %i.fg = sext i32 %.0.i.i.i.i.i.i.i.i to i64
  %i.fh = getelementptr inbounds [16 x i8], ptr %i.et, i64 %i.fg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.fh, align 8
  %i.fi = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 4294967295
  br label %bb.ab

bb.aa:                                            ; preds = %bb.v
  %i.fj = zext i32 %i.en to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i
  %.sink9.i.i.i.i.i.i = phi i64 [ %i.fi, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i ], [ %i.fj, %bb.aa ]
  %i.fk = add i64 %.sink9.i.i.i.i.i.i, %.17       ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %.lcssa114
  br i1 %exitcond135.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.v, !llvm.loop !792

_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %bb.ab, %.preheader.split.i.i.i.i.i
  %.18 = phi i64 [ %.16, %.preheader.split.i.i.i.i.i ], [ %i.fk, %bb.ab ] ; 2 uses
  %i.fl = phi i64 [ 0, %.preheader.split.i.i.i.i.i ], [ %.lcssa114, %bb.ab ]
  %i.fm = add nuw i64 %.011.i.i.i.i.i, 9223372036854775807
  %i.fn = and i64 %i.fm, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit, label %.preheader.split.i.i.i.i.i, !llvm.loop !794

bb.ac:                                            ; preds = %bb.t
  %.not32.i.i.i.i = icmp eq i32 %i.dg, %i.dl
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fo = sdiv i32 %i.dg, 64                      ; 2 uses
  %i.fp = sub nsw i32 %i.dl, %i.dg                ; 2 uses
  %i.fq = zext nneg i32 %i.fp to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.fq
  %i.fr = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.fs = sub nsw i32 64, %i.fp
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = shl i64 %i.fr, %i.ft
  %i.fv = sext i32 %i.fo to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !170
  %i.fy = and i64 %i.fx, %i.fu                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.ad
  %i.fz = shl nsw i32 %i.fo, 6
  %i.ga = icmp eq i64 %.lcssa114, 0
  br i1 %i.ga, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i, label %.preheader.split.i38.preheader.i.i.i.i

.preheader.split.i38.preheader.i.i.i.i:           ; preds = %.preheader.i37.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gc = load ptr, ptr %9, align 8
  br label %.preheader.split.i38.i.i.i.i

.preheader.split.i38.i.i.i.i:                     ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i45.i.i.i.i, %.preheader.split.i38.preheader.i.i.i.i
  %.089 = phi i64 [ 0, %.preheader.split.i38.preheader.i.i.i.i ], [ %.2, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i45.i.i.i.i ] ; 2 uses
  %i.gd = phi i64 [ 1, %.preheader.split.i38.preheader.i.i.i.i ], [ %i.hi, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i45.i.i.i.i ]
  %.011.i39.i.i.i.i = phi i64 [ %i.fy, %.preheader.split.i38.preheader.i.i.i.i ], [ %i.hk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i45.i.i.i.i ] ; 3 uses
  %i.ge = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39.i.i.i.i, i1 true)
  %i.gf = trunc nuw nsw i64 %i.ge to i32
  %i.gg = or disjoint i32 %i.fz, %i.gf            ; 2 uses
  %.not.i.i40.i.i.i.i = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i40.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i45.i.i.i.i, label %.lr.ph.i.i41.i.i.i.i

.lr.ph.i.i41.i.i.i.i:                             ; preds = %.preheader.split.i38.i.i.i.i
  %i.gh = load ptr, ptr %i.gb, align 8, !tbaa !180
  %i.gi = sext i32 %i.gg to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ak, %.lr.ph.i.i41.i.i.i.i
  %.1 = phi i64 [ %.089, %.lr.ph.i.i41.i.i.i.i ], [ %i.hh, %bb.ak ]
  %indvars.iv.i.i42.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i41.i.i.i.i ], [ %indvars.iv.next.i.i44.i.i.i.i, %bb.ak ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %indvars.iv.i.i42.i.i.i.i
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !186 ; 2 uses
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %indvars.iv.i.i42.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !250 ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !275
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 58
  %i.gs = load i8, ptr %i.gr, align 2, !tbaa !276, !range !147, !noundef !148
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i47.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 59
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !277, !range !147, !noundef !148
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 64
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !278
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i47.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.gz = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !279
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.gi
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !120
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i47.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i47.i.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.af
  %.0.i.i.i.i48.i.i.i.i = phi i32 [ %i.hc, %bb.ai ], [ %i.gy, %bb.ah ], [ %i.gg, %bb.af ]
  %i.hd = sext i32 %.0.i.i.i.i48.i.i.i.i to i64
  %i.he = getelementptr inbounds [16 x i8], ptr %i.gq, i64 %i.hd
  %.sroa.0.0.copyload.i.i.i49.i.i.i.i = load i64, ptr %i.he, align 8
  %i.hf = and i64 %.sroa.0.0.copyload.i.i.i49.i.i.i.i, 4294967295
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ae
  %i.hg = zext i32 %i.gk to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i47.i.i.i.i
  %.sink9.i.i43.i.i.i.i = phi i64 [ %i.hf, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i47.i.i.i.i ], [ %i.hg, %bb.aj ]
  %i.hh = add i64 %.sink9.i.i43.i.i.i.i, %.1      ; 2 uses
  %indvars.iv.next.i.i44.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i42.i.i.i.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i44.i.i.i.i, %.lcssa114
  br i1 %exitcond.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i45.i.i.i.i, label %bb.ae, !llvm.loop !792

_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i45.i.i.i.i: ; preds = %bb.ak, %.preheader.split.i38.i.i.i.i
  %.2 = phi i64 [ %.089, %.preheader.split.i38.i.i.i.i ], [ %i.hh, %bb.ak ] ; 2 uses
  %i.hi = phi i64 [ 0, %.preheader.split.i38.i.i.i.i ], [ %.lcssa114, %bb.ak ]
  %i.hj = add i64 %.011.i39.i.i.i.i, -1
  %i.hk = and i64 %i.hj, %.011.i39.i.i.i.i        ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.hk, 0
  br i1 %.not10.i46.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i, label %.preheader.split.i38.i.i.i.i, !llvm.loop !794

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i45.i.i.i.i, %.preheader.i37.i.i.i.i, %bb.ad, %bb.ac
  %.3 = phi i64 [ 0, %bb.ac ], [ 0, %bb.ad ], [ 0, %.preheader.i37.i.i.i.i ], [ %.2, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i45.i.i.i.i ] ; 2 uses
  %i.hl = add nsw i32 %i.dl, 64                   ; 2 uses
  %.not3383.i.i.i.i = icmp sgt i32 %i.hl, %i.dm
  br i1 %.not3383.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hn = icmp eq i64 %.lcssa114, 0               ; 2 uses
  %i.ho = load ptr, ptr %9, align 8               ; 2 uses
  br label %bb.al

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i
  %.6 = phi i64 [ %.3, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i ], [ %.5, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ] ; 3 uses
  %.not34.i.i.i.i = icmp eq i32 %i.di, %i.dm
  br i1 %.not34.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit, label %bb.bb

bb.al:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %.lr.ph.i.i.i.i29
  %.4 = phi i64 [ %.3, %.lr.ph.i.i.i.i29 ], [ %.5, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ] ; 5 uses
  %i.hp = phi i32 [ %i.hl, %.lr.ph.i.i.i.i29 ], [ %i.kn, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %.084.i.i.i.i = phi i32 [ %i.dl, %.lr.ph.i.i.i.i29 ], [ %i.hp, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %i.hq = sdiv i32 %.084.i.i.i.i, 64              ; 3 uses
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.hr
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !170 ; 2 uses
  switch i64 %i.ht, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.am
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.al
  %i.hu = shl nsw i32 %i.hq, 6
  br i1 %i.hn, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.hv = shl nsw i32 %i.hq, 6                    ; 2 uses
  %i.hw = add i32 %i.hv, 64
  %i.hx = sext i32 %i.hw to i64
  %.0.off.i.i.i.i = add i32 %.084.i.i.i.i, 127
  %.not31.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  %or.cond90 = or i1 %i.hn, %.not31.i.i.i.i.i
  br i1 %or.cond90, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph30.split.preheader.i.i.i.i.i

.lr.ph30.split.preheader.i.i.i.i.i:               ; preds = %bb.am
  %i.hy = sext i32 %i.hv to i64
  br label %.lr.ph30.split.i.i.i.i.i

.lr.ph30.split.i.i.i.i.i:                         ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i56.i.i.i.i, %.lr.ph30.split.preheader.i.i.i.i.i
  %.10 = phi i64 [ %.4, %.lr.ph30.split.preheader.i.i.i.i.i ], [ %.12, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i56.i.i.i.i ] ; 2 uses
  %i.hz = phi i64 [ 1, %.lr.ph30.split.preheader.i.i.i.i.i ], [ %i.jc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i56.i.i.i.i ]
  %.029.i.i.i.i.i = phi i64 [ %i.hy, %.lr.ph30.split.preheader.i.i.i.i.i ], [ %i.jd, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i56.i.i.i.i ] ; 3 uses
  %i.ia = trunc i64 %.029.i.i.i.i.i to i32
  %.not.i.i51.i.i.i.i = icmp eq i64 %i.hz, 0
  br i1 %.not.i.i51.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i56.i.i.i.i, label %.lr.ph.i.i52.i.i.i.i

.lr.ph.i.i52.i.i.i.i:                             ; preds = %.lr.ph30.split.i.i.i.i.i
  %i.ib = load ptr, ptr %i.hm, align 8, !tbaa !180
  %sext.i.i.i.i.i = shl i64 %.029.i.i.i.i.i, 32
  %i.ic = ashr exact i64 %sext.i.i.i.i.i, 30
  br label %bb.an

bb.an:                                            ; preds = %bb.at, %.lr.ph.i.i52.i.i.i.i
  %.11 = phi i64 [ %.10, %.lr.ph.i.i52.i.i.i.i ], [ %i.jb, %bb.at ]
  %indvars.iv.i.i53.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i52.i.i.i.i ], [ %indvars.iv.next.i.i55.i.i.i.i, %bb.at ] ; 3 uses
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %indvars.iv.i.i53.i.i.i.i
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !186 ; 2 uses
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %indvars.iv.i.i53.i.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !250 ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !275
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 58
  %i.im = load i8, ptr %i.il, align 2, !tbaa !276, !range !147, !noundef !148
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i57.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 59
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !277, !range !147, !noundef !148
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %i.iz = and i64 %.sroa.0.0.copyload.i.i.i59.i.i.i.i, 4294967295
  br label %bb.at

bb.as:                                            ; preds = %bb.an
  %i.ja = zext i32 %i.ie to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i57.i.i.i.i
  %.sink9.i.i54.i.i.i.i = phi i64 [ %i.iz, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i57.i.i.i.i ], [ %i.ja, %bb.as ]
  %i.jb = add i64 %.sink9.i.i54.i.i.i.i, %.11     ; 2 uses
  %indvars.iv.next.i.i55.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i53.i.i.i.i, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next.i.i55.i.i.i.i, %.lcssa114
  br i1 %exitcond132.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i56.i.i.i.i, label %bb.an, !llvm.loop !792

_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i56.i.i.i.i: ; preds = %bb.at, %.lr.ph30.split.i.i.i.i.i
  %.12 = phi i64 [ %.10, %.lr.ph30.split.i.i.i.i.i ], [ %i.jb, %bb.at ] ; 2 uses
  %i.jc = phi i64 [ 0, %.lr.ph30.split.i.i.i.i.i ], [ %.lcssa114, %bb.at ]
  %i.jd = add nuw i64 %.029.i.i.i.i.i, 1          ; 2 uses
  %i.je = icmp ult i64 %i.jd, %i.hx
  br i1 %i.je, label %.lr.ph30.split.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !795

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit25.i.i.i.i.i
  %.13 = phi i64 [ %.15, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit25.i.i.i.i.i ], [ %.4, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.jf = phi i64 [ %i.kk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit25.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i ]
  %.01528.i.i.i.i.i = phi i64 [ %i.km, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit25.i.i.i.i.i ], [ %i.ht, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.jg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01528.i.i.i.i.i, i1 true)
  %i.jh = trunc nuw nsw i64 %i.jg to i32
  %i.ji = or disjoint i32 %i.hu, %i.jh            ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq i64 %i.jf, 0
  br i1 %.not.i17.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit25.i.i.i.i.i, label %.lr.ph.i18.i.i.i.i.i

.lr.ph.i18.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.jj = load ptr, ptr %i.hm, align 8, !tbaa !180
  %i.jk = sext i32 %i.ji to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.ba, %.lr.ph.i18.i.i.i.i.i
  %.14 = phi i64 [ %.13, %.lr.ph.i18.i.i.i.i.i ], [ %i.kj, %bb.ba ]
  %indvars.iv.i19.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i18.i.i.i.i.i ], [ %indvars.iv.next.i21.i.i.i.i.i, %bb.ba ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %indvars.iv.i19.i.i.i.i.i
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !186 ; 2 uses
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %indvars.iv.i19.i.i.i.i.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !250 ; 5 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !275
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 58
  %i.ju = load i8, ptr %i.jt, align 2, !tbaa !276, !range !147, !noundef !148
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i22.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 59
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !277, !range !147, !noundef !148
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jq, i64 64
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !278
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i22.i.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !279
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.kc, i64 %i.jk
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !120
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i22.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i22.i.i.i.i.i: ; preds = %bb.ay, %bb.ax, %bb.av
  %.0.i.i.i23.i.i.i.i.i = phi i32 [ %i.ke, %bb.ay ], [ %i.ka, %bb.ax ], [ %i.ji, %bb.av ]
  %i.kf = sext i32 %.0.i.i.i23.i.i.i.i.i to i64
  %i.kg = getelementptr inbounds [16 x i8], ptr %i.js, i64 %i.kf
  %.sroa.0.0.copyload.i.i24.i.i.i.i.i = load i64, ptr %i.kg, align 8
  %i.kh = and i64 %.sroa.0.0.copyload.i.i24.i.i.i.i.i, 4294967295
  br label %bb.ba

bb.az:                                            ; preds = %bb.au
  %i.ki = zext i32 %i.jm to i64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i22.i.i.i.i.i
  %.sink9.i20.i.i.i.i.i = phi i64 [ %i.kh, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i22.i.i.i.i.i ], [ %i.ki, %bb.az ]
  %i.kj = add i64 %.sink9.i20.i.i.i.i.i, %.14     ; 2 uses
  %indvars.iv.next.i21.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i19.i.i.i.i.i, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next.i21.i.i.i.i.i, %.lcssa114
  br i1 %exitcond133.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit25.i.i.i.i.i, label %bb.au, !llvm.loop !792

_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit25.i.i.i.i.i: ; preds = %bb.ba, %.lr.ph.split.i.i.i.i.i
  %.15 = phi i64 [ %.13, %.lr.ph.split.i.i.i.i.i ], [ %i.kj, %bb.ba ] ; 2 uses
  %i.kk = phi i64 [ 0, %.lr.ph.split.i.i.i.i.i ], [ %.lcssa114, %bb.ba ]
  %i.kl = add i64 %.01528.i.i.i.i.i, -1
  %i.km = and i64 %i.kl, %.01528.i.i.i.i.i        ; 2 uses
  %.not.i60.i.i.i.i = icmp eq i64 %i.km, 0
  br i1 %.not.i60.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i, !llvm.loop !796

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i56.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit25.i.i.i.i.i, %bb.am, %.lr.ph.i.i.i.i.i, %bb.al
  %.5 = phi i64 [ %.4, %.lr.ph.i.i.i.i.i ], [ %.15, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit25.i.i.i.i.i ], [ %.4, %bb.am ], [ %.4, %bb.al ], [ %.12, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i56.i.i.i.i ] ; 2 uses
  %i.kn = add nsw i32 %i.hp, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.kn, %i.dm
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.al, !llvm.loop !797

bb.bb:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ko = ashr i32 %i.di, 6
  %i.kp = and i32 %i.di, 63
  %i.kq = zext nneg i32 %i.kp to i64
  %notmask.i61.i.i.i.i = shl nsw i64 -1, %i.kq
  %i.kr = xor i64 %notmask.i61.i.i.i.i, -1
  %i.ks = sext i32 %i.ko to i64
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.ks
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !170
  %i.kv = and i64 %i.ku, %i.kr                    ; 2 uses
  %.not.i62.i.i.i.i = icmp eq i64 %i.kv, 0
  %i.kw = icmp eq i64 %.lcssa114, 0
  %or.cond91 = or i1 %i.kw, %.not.i62.i.i.i.i
  br i1 %or.cond91, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit, label %.preheader.split.i64.preheader.i.i.i.i

.preheader.split.i64.preheader.i.i.i.i:           ; preds = %bb.bb
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ky = load ptr, ptr %9, align 8
  br label %.preheader.split.i64.i.i.i.i

.preheader.split.i64.i.i.i.i:                     ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i71.i.i.i.i, %.preheader.split.i64.preheader.i.i.i.i
  %.7 = phi i64 [ %.6, %.preheader.split.i64.preheader.i.i.i.i ], [ %.9, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i71.i.i.i.i ] ; 2 uses
  %i.kz = phi i64 [ 1, %.preheader.split.i64.preheader.i.i.i.i ], [ %i.me, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i71.i.i.i.i ]
  %.011.i65.i.i.i.i = phi i64 [ %i.kv, %.preheader.split.i64.preheader.i.i.i.i ], [ %i.mg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i71.i.i.i.i ] ; 3 uses
  %i.la = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i65.i.i.i.i, i1 true)
  %i.lb = trunc nuw nsw i64 %i.la to i32
  %i.lc = or disjoint i32 %i.dm, %i.lb            ; 2 uses
  %.not.i.i66.i.i.i.i = icmp eq i64 %i.kz, 0
  br i1 %.not.i.i66.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i71.i.i.i.i, label %.lr.ph.i.i67.i.i.i.i

.lr.ph.i.i67.i.i.i.i:                             ; preds = %.preheader.split.i64.i.i.i.i
  %i.ld = load ptr, ptr %i.kx, align 8, !tbaa !180
  %i.le = sext i32 %i.lc to i64
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bi, %.lr.ph.i.i67.i.i.i.i
  %.8 = phi i64 [ %.7, %.lr.ph.i.i67.i.i.i.i ], [ %i.md, %bb.bi ]
  %indvars.iv.i.i68.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i67.i.i.i.i ], [ %indvars.iv.next.i.i70.i.i.i.i, %bb.bi ] ; 3 uses
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %i.ld, i64 %indvars.iv.i.i68.i.i.i.i
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !186 ; 2 uses
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.ky, i64 %indvars.iv.i.i68.i.i.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !250 ; 5 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !275
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 58
  %i.lo = load i8, ptr %i.ln, align 2, !tbaa !276, !range !147, !noundef !148
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i73.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lk, i64 59
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !277, !range !147, !noundef !148
  %i.ls = trunc nuw i8 %i.lr to i1
  br i1 %i.ls, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lk, i64 64
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !278
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i73.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !279
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.le
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !120
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i73.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i73.i.i.i.i: ; preds = %bb.bg, %bb.bf, %bb.bd
  %.0.i.i.i.i74.i.i.i.i = phi i32 [ %i.ly, %bb.bg ], [ %i.lu, %bb.bf ], [ %i.lc, %bb.bd ]
  %i.lz = sext i32 %.0.i.i.i.i74.i.i.i.i to i64
  %i.ma = getelementptr inbounds [16 x i8], ptr %i.lm, i64 %i.lz
  %.sroa.0.0.copyload.i.i.i75.i.i.i.i = load i64, ptr %i.ma, align 8
  %i.mb = and i64 %.sroa.0.0.copyload.i.i.i75.i.i.i.i, 4294967295
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bc
  %i.mc = zext i32 %i.lg to i64
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i73.i.i.i.i
  %.sink9.i.i69.i.i.i.i = phi i64 [ %i.mb, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i73.i.i.i.i ], [ %i.mc, %bb.bh ]
  %i.md = add i64 %.sink9.i.i69.i.i.i.i, %.8      ; 2 uses
  %indvars.iv.next.i.i70.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i68.i.i.i.i, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next.i.i70.i.i.i.i, %.lcssa114
  br i1 %exitcond134.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i71.i.i.i.i, label %bb.bc, !llvm.loop !792

_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i71.i.i.i.i: ; preds = %bb.bi, %.preheader.split.i64.i.i.i.i
  %.9 = phi i64 [ %.7, %.preheader.split.i64.i.i.i.i ], [ %i.md, %bb.bi ] ; 2 uses
  %i.me = phi i64 [ 0, %.preheader.split.i64.i.i.i.i ], [ %.lcssa114, %bb.bi ]
  %i.mf = add nuw i64 %.011.i65.i.i.i.i, 9223372036854775807
  %i.mg = and i64 %i.mf, %.011.i65.i.i.i.i        ; 2 uses
  %.not10.i72.i.i.i.i = icmp eq i64 %i.mg, 0
  br i1 %.not10.i72.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit, label %.preheader.split.i64.i.i.i.i, !llvm.loop !794

bb.bj:                                            ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bk:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EE12emplace_backIJRNS2_7EvalCtxERNS1_10BaseVectorERKNS1_17SelectivityVectorEEEERS3_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EE12emplace_backIJRNS2_7EvalCtxERNS1_10BaseVectorERKNS1_17SelectivityVectorEEEERS3_DpOT_.exit ] ; 3 uses
  %i.mi = load ptr, ptr %i.an, align 8, !tbaa !180
  %i.mj = getelementptr inbounds nuw [16 x i8], ptr %i.mi, i64 %indvars.iv
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !186
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %bb.bl, label %bb.br

bb.bl:                                            ; preds = %bb.bk
  %i.mm = load ptr, ptr %i.m, align 8, !tbaa !174
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !120
  %i.mp = zext i32 %i.mo to i64
  %i.mq = load ptr, ptr %2, align 8, !tbaa !280
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %i.mq, i64 %i.mp
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !184 ; 2 uses
  %i.mt = load ptr, ptr %i.ao, align 8, !tbaa !240 ; 6 uses
  %i.mu = load ptr, ptr %i.v, align 8, !tbaa !251
  %.not.i = icmp eq ptr %i.mt, %i.mu
  br i1 %.not.i, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mv = load ptr, ptr %4, align 8, !tbaa !213
  store ptr %i.mv, ptr %i.mt, align 8, !tbaa !249
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  store ptr null, ptr %i.mw, align 8, !tbaa !281
  %i.mx = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mt)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.mx, ptr noundef nonnull align 8 dereferenceable(94) %i.ms, ptr noundef nonnull align 8 dereferenceable(38) %1, i1 noundef zeroext true)
          to label %_ZSt12construct_atIN8facebook5velox4exec18LocalDecodedVectorEJRNS2_7EvalCtxERNS1_10BaseVectorERKNS1_17SelectivityVectorEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit.i unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.my = landingpad { ptr, i32 }
          cleanup
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.mz) #27
  br label %.body

_ZSt12construct_atIN8facebook5velox4exec18LocalDecodedVectorEJRNS2_7EvalCtxERNS1_10BaseVectorERKNS1_17SelectivityVectorEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit.i: ; preds = %bb.bn
  %i.na = load ptr, ptr %i.ao, align 8, !tbaa !240
  br label %_ZNSt6vectorIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EE12emplace_backIJRNS2_7EvalCtxERNS1_10BaseVectorERKNS1_17SelectivityVectorEEEERS3_DpOT_.exit.sink.split

bb.bp:                                            ; preds = %bb.bl
  invoke void @_ZNSt6vectorIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EE17_M_realloc_insertIJRNS2_7EvalCtxERNS1_10BaseVectorERKNS1_17SelectivityVectorEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.mt, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(94) %i.ms, ptr noundef nonnull align 8 dereferenceable(38) %1)
          to label %_ZNSt6vectorIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EE12emplace_backIJRNS2_7EvalCtxERNS1_10BaseVectorERKNS1_17SelectivityVectorEEEERS3_DpOT_.exit unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bt, %bb.bp
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.br:                                            ; preds = %bb.bk
  %i.nc = load ptr, ptr %i.ao, align 8, !tbaa !240 ; 5 uses
  %i.nd = load ptr, ptr %i.v, align 8, !tbaa !251
  %.not.i31 = icmp eq ptr %i.nc, %i.nd
  br i1 %.not.i31, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ne = load ptr, ptr %4, align 8, !tbaa !213
  store ptr %i.ne, ptr %i.nc, align 8, !tbaa !249
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store ptr null, ptr %i.nf, align 8, !tbaa !281
  br label %_ZNSt6vectorIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EE12emplace_backIJRNS2_7EvalCtxERNS1_10BaseVectorERKNS1_17SelectivityVectorEEEERS3_DpOT_.exit.sink.split

bb.bt:                                            ; preds = %bb.br
  invoke void @_ZNSt6vectorIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EE17_M_realloc_insertIJRNS2_7EvalCtxEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.nc, ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %_ZNSt6vectorIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EE12emplace_backIJRNS2_7EvalCtxERNS1_10BaseVectorERKNS1_17SelectivityVectorEEEERS3_DpOT_.exit unwind label %bb.bq

_ZNSt6vectorIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EE12emplace_backIJRNS2_7EvalCtxERNS1_10BaseVectorERKNS1_17SelectivityVectorEEEERS3_DpOT_.exit.sink.split: ; preds = %_ZSt12construct_atIN8facebook5velox4exec18LocalDecodedVectorEJRNS2_7EvalCtxERNS1_10BaseVectorERKNS1_17SelectivityVectorEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit.i, %bb.bs
  %.sink209 = phi ptr [ %i.nc, %bb.bs ], [ %i.na, %_ZSt12construct_atIN8facebook5velox4exec18LocalDecodedVectorEJRNS2_7EvalCtxERNS1_10BaseVectorERKNS1_17SelectivityVectorEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit.i ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.sink209, i64 16
  store ptr %i.ng, ptr %i.ao, align 8, !tbaa !240
  br label %_ZNSt6vectorIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EE12emplace_backIJRNS2_7EvalCtxERNS1_10BaseVectorERKNS1_17SelectivityVectorEEEERS3_DpOT_.exit

_ZNSt6vectorIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EE12emplace_backIJRNS2_7EvalCtxERNS1_10BaseVectorERKNS1_17SelectivityVectorEEEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EE12emplace_backIJRNS2_7EvalCtxERNS1_10BaseVectorERKNS1_17SelectivityVectorEEEERS3_DpOT_.exit.sink.split, %bb.bt, %bb.bp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nh = load i64, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %i.ni = icmp ugt i64 %i.nh, %indvars.iv.next
  br i1 %i.ni, label %bb.bk, label %._crit_edge, !llvm.loop !798

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i71.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i, %bb.bb, %._crit_edge.i.i.i.i, %bb.u, %bb.s, %.lr.ph.i, %bb.k
  %.22 = phi i64 [ 0, %.lr.ph.i ], [ %.21, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i ], [ 0, %bb.k ], [ 0, %bb.u ], [ 0, %bb.s ], [ %.18, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i.i.i.i.i ], [ %.6, %._crit_edge.i.i.i.i ], [ %.6, %bb.bb ], [ %.9, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i71.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.nj = load ptr, ptr %i.a, align 8, !tbaa !236
  %i.nk = invoke noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE27getRawStringBufferWithSpaceEmb(ptr noundef nonnull align 8 dereferenceable(272) %i.nj, i64 noundef %.22, i1 noundef zeroext false)
          to label %bb.bu unwind label %bb.cn

bb.bu:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit
  store ptr %i.nk, ptr %i.c, align 8, !tbaa !282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i64 0, ptr %i.d, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.c, ptr %8, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.d, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %9, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.a, ptr %.sroa.6.0..sroa_idx, align 8
  %i.nl = load i8, ptr %i.aq, align 1, !tbaa !253, !range !147, !noundef !148
  %i.nm = trunc nuw i8 %i.nl to i1
  br i1 %i.nm, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i67, label %bb.bv

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i67: ; preds = %bb.bu
  %.0.in.pre.i.i68 = load i8, ptr %i.ap, align 4, !tbaa !132, !range !147
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i36

bb.bv:                                            ; preds = %bb.bu
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !262
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %bb.bw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i34

bb.bw:                                            ; preds = %bb.bv
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !263 ; 6 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !264
  %i.nu = icmp eq i32 %i.nr, %i.nt
  br i1 %i.nu, label %bb.bx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i34

bb.bx:                                            ; preds = %bb.bw
  %i.nv = load ptr, ptr %1, align 8, !tbaa !265   ; 2 uses
  %.not.i.i.i59 = icmp sgt i32 %i.nr, 0
  br i1 %.not.i.i.i59, label %bb.by, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i34

bb.by:                                            ; preds = %bb.bx
  %i.nw = and i32 %i.nr, 2147483584               ; 3 uses
  %i.nx = zext nneg i32 %i.nw to i64
  %.not37.i.i.not.i.i61226.not = icmp eq i32 %i.nw, 0
  br i1 %.not37.i.i.not.i.i61226.not, label %.critedge.i.i.i.i62, label %.lr.ph229

bb.bz:                                            ; preds = %.lr.ph229
  %indvars.iv.next.i.i66 = add nuw nsw i64 %indvars.iv.i.i60227, 64 ; 2 uses
  %.not37.i.i.not.i.i61 = icmp samesign ult i64 %indvars.iv.next.i.i66, %i.nx
  br i1 %.not37.i.i.not.i.i61, label %.lr.ph229, label %.critedge.i.i.i.i62, !llvm.loop !10

.lr.ph229:                                        ; preds = %bb.by, %bb.bz
  %indvars.iv.i.i60227 = phi i64 [ %indvars.iv.next.i.i66, %bb.bz ], [ 0, %bb.by ] ; 2 uses
  %i.ny = lshr exact i64 %indvars.iv.i.i60227, 3
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.ny
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !170
  %i.ob = icmp eq i64 %i.oa, -1
  br i1 %i.ob, label %bb.bz, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i34, !llvm.loop !10

.critedge.i.i.i.i62:                              ; preds = %bb.bz, %bb.by
  %.not38.i.i.i.i63 = icmp eq i32 %i.nr, %i.nw
  br i1 %.not38.i.i.i.i63, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i34, label %bb.ca

bb.ca:                                            ; preds = %.critedge.i.i.i.i62
  %i.oc = lshr i32 %i.nr, 6
  %i.od = and i32 %i.nr, 63
  %i.oe = zext nneg i32 %i.od to i64
  %notmask.i40.i.i.i.i64 = shl nsw i64 -1, %i.oe
  %i.of = zext nneg i32 %i.oc to i64
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.of
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !170
  %.demorgan.i.i65 = or i64 %i.oh, %notmask.i40.i.i.i.i64
  %i.oi = icmp eq i64 %.demorgan.i.i65, -1
  %i.oj = zext i1 %i.oi to i16
  %i.ok = or disjoint i16 %i.oj, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i34

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i34: ; preds = %.lr.ph229, %bb.ca, %.critedge.i.i.i.i62, %bb.bx, %bb.bw, %bb.bv
  %.sroa.0.0.insert.ext.i.i35 = phi i16 [ 256, %bb.bw ], [ 256, %bb.bv ], [ 257, %bb.bx ], [ 257, %.critedge.i.i.i.i62 ], [ %i.ok, %bb.ca ], [ 256, %.lr.ph229 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i35, ptr %i.ap, align 4
  %i.ol = trunc i16 %.sroa.0.0.insert.ext.i.i35 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i36

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i36: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i34, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i67
  %.0.in.i.i37 = phi i8 [ %.0.in.pre.i.i68, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i67 ], [ %i.ol, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i34 ]
  %.0.i.i38 = trunc nuw i8 %.0.in.i.i37 to i1
  br i1 %.0.i.i38, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i36
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.on = load i32, ptr %i.om, align 8, !tbaa !263 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !262 ; 2 uses
  %i.oq = icmp slt i32 %i.op, %i.on
  br i1 %i.oq, label %.lr.ph.i57, label %.loopexit92

.lr.ph.i57:                                       ; preds = %bb.cb, %.noexc69
  %.06.i = phi i32 [ %i.or, %.noexc69 ], [ %i.op, %bb.cb ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi(ptr noundef nonnull readonly align 8 dereferenceable(48) %8, i32 noundef %.06.i)
          to label %.noexc69 unwind label %.loopexit

.noexc69:                                         ; preds = %.lr.ph.i57
  %i.or = add i32 %.06.i, 1                       ; 2 uses
  %exitcond.not.i58 = icmp eq i32 %i.or, %i.on
  br i1 %exitcond.not.i58, label %.loopexit92, label %.lr.ph.i57, !llvm.loop !799

bb.cc:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i36
  %i.os = load ptr, ptr %1, align 8, !tbaa !265   ; 6 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !262 ; 6 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !263 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %8, i64 48, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %8, i64 48, i1 false)
  store i8 1, ptr %6, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.os, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %7, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.os, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i39 = icmp slt i32 %i.ou, %i.ow
  br i1 %.not.i.i.i.i39, label %bb.cd, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiiT_.exit.i

bb.cd:                                            ; preds = %bb.cc
  %i.ox = add i32 %i.ou, 63                       ; 2 uses
  %i.oy = srem i32 %i.ox, 64
  %i.oz = sub nsw i32 %i.ox, %i.oy                ; 6 uses
  %i.pa = and i32 %i.ow, -64                      ; 6 uses
  %i.pb = icmp slt i32 %i.pa, %i.oz
  br i1 %i.pb, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.pc = ashr i32 %i.ow, 6
  %i.pd = and i32 %i.ow, 63
  %i.pe = zext nneg i32 %i.pd to i64
  %notmask.i.i.i.i.i51 = shl nsw i64 -1, %i.pe
  %i.pf = xor i64 %notmask.i.i.i.i.i51, -1
  %i.pg = sub nsw i32 %i.oz, %i.ou                ; 2 uses
  %i.ph = zext nneg i32 %i.pg to i64
  %notmask.i.i.i.i.i.i52 = shl nsw i64 -1, %i.ph
  %i.pi = xor i64 %notmask.i.i.i.i.i.i52, -1
  %i.pj = sub nsw i32 64, %i.pg
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = shl i64 %i.pi, %i.pk
  %i.pm = and i64 %i.pl, %i.pf
  %i.pn = sext i32 %i.pc to i64
  %i.po = getelementptr inbounds [8 x i8], ptr %i.os, i64 %i.pn
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !170
  %i.pq = and i64 %i.pm, %i.pp                    ; 2 uses
  %.not.i.i.i.i.i53 = icmp eq i64 %i.pq, 0
  br i1 %.not.i.i.i.i.i53, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i54

.preheader.i.i.i.i.i54:                           ; preds = %bb.ce, %.noexc70
  %.011.i.i.i.i.i55 = phi i64 [ %i.pv, %.noexc70 ], [ %i.pq, %bb.ce ] ; 3 uses
  %i.pr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i55, i1 true)
  %i.ps = trunc nuw nsw i64 %i.pr to i32
  %i.pt = or disjoint i32 %i.pa, %i.ps
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi(ptr noundef nonnull readonly align 8 dereferenceable(48) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.pt)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit

.noexc70:                                         ; preds = %.preheader.i.i.i.i.i54
  %i.pu = add nuw i64 %.011.i.i.i.i.i55, 9223372036854775807
  %i.pv = and i64 %i.pu, %.011.i.i.i.i.i55        ; 2 uses
  %.not10.i.i.i.i.i56 = icmp eq i64 %i.pv, 0
  br i1 %.not10.i.i.i.i.i56, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i54, !llvm.loop !800

bb.cf:                                            ; preds = %bb.cd
  %.not32.i.i.i.i40 = icmp eq i32 %i.ou, %i.oz
  br i1 %.not32.i.i.i.i40, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pw = sdiv i32 %i.ou, 64                      ; 2 uses
  %i.px = sub nsw i32 %i.oz, %i.ou                ; 2 uses
  %i.py = zext nneg i32 %i.px to i64
  %notmask.i.i35.i.i.i.i41 = shl nsw i64 -1, %i.py
  %i.pz = xor i64 %notmask.i.i35.i.i.i.i41, -1
  %i.qa = sub nsw i32 64, %i.px
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = shl i64 %i.pz, %i.qb
  %i.qd = sext i32 %i.pw to i64
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.os, i64 %i.qd
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !170
  %i.qg = and i64 %i.qf, %i.qc                    ; 2 uses
  %.not.i36.i.i.i.i42 = icmp eq i64 %i.qg, 0
  br i1 %.not.i36.i.i.i.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i43

.preheader.i37.i.i.i.i43:                         ; preds = %bb.cg
  %i.qh = shl nsw i32 %i.pw, 6
  br label %bb.ch

bb.ch:                                            ; preds = %.noexc71, %.preheader.i37.i.i.i.i43
  %.011.i38.i.i.i.i = phi i64 [ %i.qg, %.preheader.i37.i.i.i.i43 ], [ %i.qm, %.noexc71 ] ; 3 uses
  %i.qi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.qj = trunc nuw nsw i64 %i.qi to i32
  %i.qk = or disjoint i32 %i.qh, %i.qj
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi(ptr noundef nonnull readonly align 8 dereferenceable(48) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.qk)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc71:                                         ; preds = %bb.ch
  %i.ql = add i64 %.011.i38.i.i.i.i, -1
  %i.qm = and i64 %i.ql, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.qm, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ch, !llvm.loop !800

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc71, %bb.cg, %bb.cf
  %i.qn = add nsw i32 %i.oz, 64                   ; 2 uses
  %.not3350.i.i.i.i = icmp sgt i32 %i.qn, %i.pa
  br i1 %.not3350.i.i.i.i, label %._crit_edge.i.i.i.i46, label %.lr.ph.i.i.i.i44

._crit_edge.i.i.i.i46:                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i47 = icmp eq i32 %i.ow, %i.pa
  br i1 %.not34.i.i.i.i47, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiiT_.exit.i, label %bb.cl

.lr.ph.i.i.i.i44:                                 ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %i.qo = phi i32 [ %i.rg, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.qn, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i = phi i32 [ %i.qo, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.oz, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %i.qp = sdiv i32 %.051.i.i.i.i, 64              ; 3 uses
  %i.qq = sext i32 %i.qp to i64
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.os, i64 %i.qq
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !170 ; 2 uses
  switch i64 %i.qs, label %.lr.ph.i.i.i.i.i50 [
    i64 -1, label %bb.ci
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i50:                               ; preds = %.lr.ph.i.i.i.i44
  %i.qt = shl nsw i32 %i.qp, 6
  br label %bb.ck

bb.ci:                                            ; preds = %.lr.ph.i.i.i.i44
  %i.qu = shl nsw i32 %i.qp, 6                    ; 2 uses
  %i.qv = add i32 %i.qu, 64
  %i.qw = sext i32 %i.qv to i64
  %.0.off.i.i.i.i49 = add i32 %.051.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i49, 64
  br i1 %.not22.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.ci
  %i.qx = sext i32 %i.qu to i64
  br label %bb.cj

bb.cj:                                            ; preds = %.noexc72, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.qx, %.lr.ph21.i.i.i.i.i ], [ %i.qz, %.noexc72 ] ; 2 uses
  %i.qy = trunc i64 %.020.i.i.i.i.i to i32
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi(ptr noundef nonnull readonly align 8 dereferenceable(48) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.qy)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc72:                                         ; preds = %bb.cj
  %i.qz = add nuw i64 %.020.i.i.i.i.i, 1          ; 2 uses
  %i.ra = icmp ult i64 %i.qz, %i.qw
  br i1 %i.ra, label %bb.cj, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !801

bb.ck:                                            ; preds = %.noexc73, %.lr.ph.i.i.i.i.i50
  %.01519.i.i.i.i.i = phi i64 [ %i.qs, %.lr.ph.i.i.i.i.i50 ], [ %i.rf, %.noexc73 ] ; 3 uses
  %i.rb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %i.rc = trunc nuw nsw i64 %i.rb to i32
  %i.rd = or disjoint i32 %i.qt, %i.rc
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi(ptr noundef nonnull readonly align 8 dereferenceable(48) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.rd)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc73:                                         ; preds = %bb.ck
  %i.re = add i64 %.01519.i.i.i.i.i, -1
  %i.rf = and i64 %i.re, %.01519.i.i.i.i.i        ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.rf, 0
  br i1 %.not.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.ck, !llvm.loop !802

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %.noexc72, %.noexc73, %bb.ci, %.lr.ph.i.i.i.i44
  %i.rg = add nsw i32 %i.qo, 64                   ; 2 uses
  %.not33.i.i.i.i45 = icmp sgt i32 %i.rg, %i.pa
  br i1 %.not33.i.i.i.i45, label %._crit_edge.i.i.i.i46, label %.lr.ph.i.i.i.i44, !llvm.loop !803

bb.cl:                                            ; preds = %._crit_edge.i.i.i.i46
  %i.rh = ashr i32 %i.ow, 6
  %i.ri = and i32 %i.ow, 63
  %i.rj = zext nneg i32 %i.ri to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.rj
  %i.rk = xor i64 %notmask.i42.i.i.i.i, -1
  %i.rl = sext i32 %i.rh to i64
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.os, i64 %i.rl
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !170
  %i.ro = and i64 %i.rn, %i.rk                    ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.ro, 0
  br i1 %.not.i43.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i

.preheader.i44.i.i.i.i:                           ; preds = %bb.cl, %.noexc74
  %.011.i45.i.i.i.i = phi i64 [ %i.rt, %.noexc74 ], [ %i.ro, %bb.cl ] ; 3 uses
  %i.rp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %i.rq = trunc nuw nsw i64 %i.rp to i32
  %i.rr = or disjoint i32 %i.pa, %i.rq
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi(ptr noundef nonnull readonly align 8 dereferenceable(48) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.rr)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc74:                                         ; preds = %.preheader.i44.i.i.i.i
  %i.rs = add nuw i64 %.011.i45.i.i.i.i, 9223372036854775807
  %i.rt = and i64 %i.rs, %.011.i45.i.i.i.i        ; 2 uses
  %.not10.i46.i.i.i.i48 = icmp eq i64 %i.rt, 0
  br i1 %.not10.i46.i.i.i.i48, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i, !llvm.loop !800

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiiT_.exit.i: ; preds = %.noexc74, %.noexc70, %bb.cl, %._crit_edge.i.i.i.i46, %bb.ce, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit92

.loopexit92:                                      ; preds = %.noexc69, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiiT_.exit.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.ru = load ptr, ptr %9, align 8, !tbaa !239   ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !240 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ru, %i.rw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit92, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.rx, %.lr.ph.i.i.i ], [ %i.ru, %.loopexit92 ] ; 2 uses
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i) #27
  %i.rx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.rx, %i.rw
  br i1 %.not.i.i.i75, label %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i76 = load ptr, ptr %9, align 8, !tbaa !239
  br label %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %.loopexit92
  %i.ry = phi ptr [ %.pr.i76, %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ru, %.loopexit92 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ry, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i
  %i.rz = load ptr, ptr %i.v, align 8, !tbaa !251
  %i.sa = ptrtoint ptr %i.rz to i64
  %i.sb = ptrtoint ptr %i.ry to i64
  %i.sc = sub i64 %i.sa, %i.sb
  call void @_ZdlPvm(ptr noundef nonnull %i.ry, i64 noundef %i.sc) #39
  br label %_ZNSt6vectorIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EED2Ev.exit

_ZNSt6vectorIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.cn:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_114ConcatFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

.loopexit:                                        ; preds = %.lr.ph.i57
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.preheader.i.i.i.i.i54
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.preheader.i44.i.i.i.i
  %lpad.loopexit96 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ck
  %lpad.loopexit99 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cj
  %lpad.loopexit102 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ch
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit93, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit96, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit99, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit102, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.co

bb.co:                                            ; preds = %.loopexit.split-lp, %bb.cn
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.sd, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %.body

.body:                                            ; preds = %bb.co, %bb.bq, %bb.bo, %bb.bj
  %.pn25 = phi { ptr, i32 } [ %i.mh, %bb.bj ], [ %i.my, %bb.bo ], [ %i.nb, %bb.bq ], [ %.pn, %bb.co ]
  call void @_ZNSt6vectorIN8facebook5velox4exec18LocalDecodedVectorESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  resume { ptr, i32 } %.pn25
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec14VectorFunction27supportsFlatNoNullsFastPathEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK8facebook5velox4exec14VectorFunction25ensureStringEncodingSetAtEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec14VectorFunction34ensureStringEncodingSetAtAllInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox9functions12_GLOBAL__N_114ConcatFunction36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #15 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK8facebook5velox4exec14VectorFunction27propagateStringEncodingFromEv(ptr dead_on_unwind noalias writable sret(%"class.std::optional.117") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.a, align 8, !tbaa !284
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK8facebook5velox4exec14VectorFunction16getCanonicalNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec14VectorFunction36propagateStringEncodingFromAllInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.c = load atomic ptr, ptr %i.b seq_cst, align 8 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !287  ; 7 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = atomicrmw sub ptr %i.e, i32 1 acq_rel, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !126
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.noexc.i unwind label %bb.d, !inline_history !12

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !292
  %.not.i.i = icmp eq ptr %i.l, null
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !126
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %..i.i
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !12

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #40
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 8) #39
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm:bb.a
._crit_edge:                                      ; preds = %.loopexit, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit
  %.0112152 = phi ptr [ %i.bx, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.0112151, %.loopexit ] ; 2 uses
  %i.eh = load i64, ptr %i.ar, align 8, !tbaa !479
  %i.ei = and i64 %i.eh, 255
  %i.ej = shl nuw i64 1, %i.ei
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.w
  %.0.in = phi i64 [ %i.ej, %._crit_edge ], [ %.0, %bb.w ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0112152, i64 %.0
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !111 ; 3 uses
  %i.em = icmp eq i8 %i.el, 0
  br i1 %i.em, label %bb.w, label %bb.x, !llvm.loop !1665

bb.x:                                             ; preds = %bb.w
  %i.en = load ptr, ptr %0, align 8, !tbaa !475
  %i.eo = getelementptr inbounds nuw [128 x i8], ptr %i.en, i64 %.0 ; 2 uses
  %i.ep = zext nneg i8 %i.el to i64
  %i.eq = add nsw i64 %i.ep, -1                   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eq
  %i.et = icmp ne ptr %i.eo, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp ult i8 %i.el, 17
  call void @llvm.assume(i1 %i.eu)
  %i.ev = lshr i64 %i.eq, 1
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = or i64 %i.ev, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !170
  br i1 %.not, label %bb.y, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %.0112152, i64 noundef %4) #39
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !132
  %i.ez = load i64, ptr %i.d, align 8, !tbaa !170
  %.not.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !578 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fb = load i64, ptr %i.e, align 8, !tbaa !170
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fb) #27
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !580, !range !147, !noundef !148
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1674, !nonnull !148
  %i.e = load i8, ptr %i.d, align 1, !tbaa !132, !range !147, !noundef !148
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !171

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1675, !nonnull !148, !align !383
  %i.i = load i64, ptr %i.h, align 8, !tbaa !170
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1676, !nonnull !148, !align !383
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !578
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1677, !nonnull !148, !align !383
  %i.o = load i64, ptr %i.n, align 8, !tbaa !170
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1678 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1679, !nonnull !148, !align !383
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !282
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1680, !nonnull !148, !align !383
  %i.w = load i64, ptr %i.v, align 8, !tbaa !170
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1676, !nonnull !148, !align !383
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !578
  store ptr %i.z, ptr %i.q, align 8, !tbaa !475
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1681, !nonnull !148, !align !383
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !170 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !479
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !479
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #27
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #31

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #31

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.437") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !479  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !475   ; 3 uses
  br i1 %.not, label %.thread64, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i75 = phi i64 [ %i.j, %bb.b ], [ %i.ae, %bb.f ]
  %.025.i74 = phi i64 [ %2, %bb.b ], [ %i.af, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i74, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 16383
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.040.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not66 = icmp eq i32 %.sroa.040.0, 0
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0, i1 true)
  %i.w = add nuw nsw i32 %.sroa.040.0, 16383
  %i.x = and i32 %i.w, %.sroa.040.0
  %i.y = zext nneg i32 %i.v to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !568
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !568
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %.critedge.i, !prof !171, !llvm.loop !65

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread64, label %bb.f, !prof !171

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i75, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i74
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread64, label %bb.c, !llvm.loop !66

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  br label %bb.p

.thread64:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi84 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !111
  %i.aj = and i8 %i.ai, 15
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = shl i64 %i.ak, %.pre-phi84              ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.al
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread64
  %i.am = shl nuw i64 1, %.pre-phi84
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.am, i64 noundef %i.ak, i64 noundef %i.al)
  %.pre80 = load ptr, ptr %1, align 8, !tbaa !475
  %.pre81 = load i64, ptr %i.a, align 8, !tbaa !479
  %.pre82 = and i64 %.pre81, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread64, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi84, %.thread64 ], [ %.pre82, %bb.h ] ; 2 uses
  %i.an = phi ptr [ %.pre, %.thread64 ], [ %.pre80, %bb.h ] ; 3 uses
  %i.ao = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load <16 x i8>, ptr %i.ap, align 16, !tbaa !111
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = and i16 %i.as, 16383                    ; 2 uses
  %.not67 = icmp eq i16 %i.at, 16383
  br i1 %.not67, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %i.au = shl i64 %3, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.aw = phi i64 [ %i.ao, %bb.i ], [ %i.bc, %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.i ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit ]
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 15 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !585 ; 2 uses
  %.not.i31 = icmp eq i8 %i.az, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !585
  br label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bb = add i64 %i.av, %.028                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bb, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.bc ; 3 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16     ; 2 uses
  %i.bf = icmp slt <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.bh, 16383
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !1682

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit
  %i.bi = extractelement <16 x i8> %i.be, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !567
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !111
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str) #45
  unreachable

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit: ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !111
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 3 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load ptr, ptr %5, align 8, !tbaa !568
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !568
  %i.bv = lshr i64 %i.bm, 1
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !586
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !170
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !479 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !479
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !1684
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !170
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !1687
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #33

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !479
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

end_hunk_2
begin_hunk_3_@_ZN8facebook5velox13DecodedVectorD2Ev:bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !656  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !657
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox8TypeKindENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::formatter.499", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !388
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !111
  %scevgep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !390
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !111
  %i.e = load ptr, ptr %1, align 8, !tbaa !392    ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !393  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 1, !tbaa !111
  %i.k = icmp eq i8 %i.j, 125
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !392
  %.pre6 = load i64, ptr %i.f, align 8, !tbaa !393
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i64 [ %.pre6, %bb.c ], [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  %i.o = ptrtoint ptr %.0.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  store ptr %i.r, ptr %1, align 8, !tbaa !392
  %i.s = sub i64 %i.m, %i.q
  store i64 %i.s, ptr %i.f, align 8, !tbaa !393
  %i.t = load i8, ptr %0, align 1, !tbaa !494
  %i.u = call ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef signext %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %i.a = tail call { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !388
  %i.e = and i32 %i.d, 960
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !395
  %i.f = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 16, i1 false)
  %i.g = load i32, ptr %3, align 4, !tbaa !388    ; 2 uses
  %i.h = lshr i32 %i.g, 6
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.l, ptr %i.k, align 4, !tbaa !120
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i: ; preds = %bb.d, %bb.c
  %i.m = lshr i32 %i.g, 8
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %.not.i17.i = icmp eq i32 %i.n, 0
  br i1 %.not.i17.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.q, ptr %i.p, align 4, !tbaa !120
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i: ; preds = %bb.e, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %.sroa.0.0.copyload.i19.i = load ptr, ptr %2, align 8, !tbaa !395
  %i.r = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i19.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %bb.b, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i
  %.sroa.015.0.i = phi ptr [ %i.r, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i ], [ %i.f, %bb.b ]
  ret ptr %.sroa.015.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.502) align 8 %2, ptr noundef byval(%class.anon.503) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !635, !range !147, !noundef !148
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !636
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !170
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1824
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1825, !nonnull !148, !align !383
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !332
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1826, !nonnull !148, !align !383
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !403
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !562
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.av, %bb.d ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.an = or disjoint i64 %i.am, %i.ag            ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !120
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !170
  %i.at = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  store i64 %i.as, ptr %i.at, align 8, !tbaa !170
  %i.au = add nuw i64 %.011.i, 9223372036854775807
  %i.av = and i64 %i.au, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1820

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = sdiv i32 %0, 64                         ; 2 uses
  %i.ax = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ay
  %i.az = xor i64 %notmask.i.i35, -1
  %i.ba = sub nsw i32 64, %i.ax
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb
  %i.bd = load i8, ptr %2, align 8, !tbaa !635, !range !147, !noundef !148
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !636
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !170
  %i.bj = xor i8 %i.bd, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, %i.bc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = shl nsw i32 %i.aw, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1824
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !1825, !nonnull !148, !align !383
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !332
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1826, !nonnull !148, !align !383
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !403
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !562
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bn, %.preheader.i37 ], [ %i.cj, %bb.g ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.cb = or disjoint i64 %i.ca, %i.bu            ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !120
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !170
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !170
  %i.ci = add i64 %.011.i38, -1
  %i.cj = and i64 %i.ci, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cj, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1820

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.ck = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.ck, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.cl = load i8, ptr %3, align 8, !tbaa !638, !range !147, !noundef !148
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !639
  %i.co = xor i8 %i.cl, 1
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !148, !align !383 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !148, !align !383 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cy = phi i32 [ %i.ck, %.lr.ph ], [ %i.ei, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cz = sdiv i32 %.051, 64                      ; 3 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !170
  %i.dd = xor i64 %i.dc, %i.cq                    ; 2 uses
  switch i64 %i.dd, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.de = shl nsw i32 %i.cz, 6
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !332
  %i.dg = sext i32 %i.de to i64
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !403
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !562
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dj = shl nsw i32 %i.cz, 6                    ; 2 uses
  %i.dk = add nuw i32 %i.dj, 64
  %i.dl = sext i32 %i.dk to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dm = sext i32 %i.dj to i64
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !332
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !403
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !562
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dm, %.lr.ph21.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.020.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !120
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !170
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.020.i
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !170
  %i.dw = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dl
  br i1 %i.dx, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1821

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.dd, %.lr.ph.i ], [ %i.eh, %bb.k ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dz = or disjoint i64 %i.dy, %i.dg            ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !120
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !170
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dz
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !170
  %i.eg = add i64 %.01519.i, -1
  %i.eh = and i64 %i.eg, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eh, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1822

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ei = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ei, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1823

bb.l:                                             ; preds = %._crit_edge
  %i.ej = ashr i32 %1, 6
  %i.ek = and i32 %1, 63
  %i.el = zext nneg i32 %i.ek to i64
  %notmask.i42 = shl nsw i64 -1, %i.el
  %i.em = xor i64 %notmask.i42, -1
  %i.en = load i8, ptr %2, align 8, !tbaa !635, !range !147, !noundef !148
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !636
  %i.eq = sext i32 %i.ej to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !170
  %i.et = xor i8 %i.en, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = and i64 %i.ew, %i.em                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ex, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1824
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !1825, !nonnull !148, !align !383
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !332
  %i.fd = sext i32 %i.d to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1826, !nonnull !148, !align !383
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !403
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 144
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !562
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ex, %.preheader.i44 ], [ %i.fs, %bb.m ] ; 3 uses
  %i.fj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fk = or disjoint i64 %i.fj, %i.fd            ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !120
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !170
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fk
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !170
  %i.fr = add nuw i64 %.011.i45, 9223372036854775807
  %i.fs = and i64 %i.fr, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1820

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.504) align 8 %2, ptr noundef byval(%class.anon.505) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !642, !range !147, !noundef !148
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !643
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !170
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1833
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1834, !nonnull !148, !align !383
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !403
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !562
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !170
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !170
  %i.ao = add nuw i64 %.011.i, 9223372036854775807
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1827

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !642, !range !147, !noundef !148
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !643
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !170
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !1833
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1834, !nonnull !148, !align !383
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !403
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !562
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !170
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !170
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1827

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !645, !range !147, !noundef !148
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !646
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !148, !align !383 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !170
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !403
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !562
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !403 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !562 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.df = and i64 %umax, 1                        ; 3 uses
  %n.vec72 = sub nuw i64 %i.db, %i.df             ; 3 uses
  %i.dg = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dh = add nuw i64 %index, %i.cx               ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dh ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %wide.load = load <4 x i64>, ptr %i.di, align 8, !tbaa !170
  %wide.load69 = load <4 x i64>, ptr %i.dj, align 8, !tbaa !170
  %wide.load70 = load <4 x i64>, ptr %i.dk, align 8, !tbaa !170
  %wide.load71 = load <4 x i64>, ptr %i.dl, align 8, !tbaa !170
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dh ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  store <4 x i64> %wide.load, ptr %i.dm, align 8, !tbaa !170
  store <4 x i64> %wide.load69, ptr %i.dn, align 8, !tbaa !170
  store <4 x i64> %wide.load70, ptr %i.do, align 8, !tbaa !170
  store <4 x i64> %wide.load71, ptr %i.dp, align 8, !tbaa !170
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec72
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !1828

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dr = add nuw i64 %index73, %i.cx             ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dr
  %wide.load74 = load <4 x i64>, ptr %i.ds, align 8, !tbaa !170
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dr
  store <4 x i64> %wide.load74, ptr %i.dt, align 8, !tbaa !170
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.du = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1829

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.df, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dg, %middle.block ], [ %i.cx, %iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dy, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.020.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !170
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.020.i
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !170
  %i.dy = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.cw
  br i1 %i.dz, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1830

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.eg, %bb.j ] ; 3 uses
  %i.ea = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eb = or disjoint i64 %i.ea, %i.cs            ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !170
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eb
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !170
  %i.ef = add i64 %.01519.i, -1
  %i.eg = and i64 %i.ef, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eg, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1831

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eh = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eh, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1832

bb.k:                                             ; preds = %._crit_edge
  %i.ei = ashr i32 %1, 6
  %i.ej = and i32 %1, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %notmask.i42 = shl nsw i64 -1, %i.ek
  %i.el = xor i64 %notmask.i42, -1
  %i.em = load i8, ptr %2, align 8, !tbaa !642, !range !147, !noundef !148
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !643
  %i.ep = sext i32 %i.ei to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !170
  %i.es = xor i8 %i.em, 1
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = xor i64 %i.er, %i.eu
  %i.ew = and i64 %i.ev, %i.el                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ew, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1833
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1834, !nonnull !148, !align !383
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !403
  %i.fc = sext i32 %i.d to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 144
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !562
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ew, %.preheader.i44 ], [ %i.fl, %bb.l ] ; 3 uses
  %i.ff = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fg = or disjoint i64 %i.ff, %i.fc            ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !170
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fg
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !170
  %i.fk = add nuw i64 %.011.i45, 9223372036854775807
  %i.fl = and i64 %i.fk, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fl, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1827

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.508) align 8 %2, ptr noundef byval(%class.anon.509) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !663, !range !147, !noundef !148
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !664
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !170
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !659, !nonnull !148, !align !383
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !660, !nonnull !148, !align !383
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !661, !nonnull !148, !align !383
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !332
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !120
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !403
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !403
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !170
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !111 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !111
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !111
  %i.bj = add nuw i64 %.011.i, 9223372036854775807
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1835

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !663, !range !147, !noundef !148
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !664
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !170
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !659, !nonnull !148, !align !383
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !660, !nonnull !148, !align !383
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !661, !nonnull !148, !align !383
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !332
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !120
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !403
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !403
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !170
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !111 ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !111
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !111
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !1835

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, %.lr.ph
  %i.dp = phi i32 [ %i.dr, %.lr.ph ], [ %i.do, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.dp, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ]
  %i.dq = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dq)
  %i.dr = add nsw i32 %i.dp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dr, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1836

bb.l:                                             ; preds = %._crit_edge
  %i.ds = ashr i32 %1, 6
  %i.dt = and i32 %1, 63
  %i.du = zext nneg i32 %i.dt to i64
  %notmask.i44 = shl nsw i64 -1, %i.du
  %i.dv = xor i64 %notmask.i44, -1
  %i.dw = load i8, ptr %2, align 8, !tbaa !663, !range !147, !noundef !148
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !664
  %i.dz = sext i32 %i.ds to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !170
  %i.ec = xor i8 %i.dw, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = and i64 %i.ef, %i.dv                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.eg, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !659, !nonnull !148, !align !383
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !660, !nonnull !148, !align !383
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !661, !nonnull !148, !align !383
  br label %bb.m

bb.m:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %.preheader.i46
  %.011.i47 = phi i64 [ %i.eg, %.preheader.i46 ], [ %i.fq, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49 ] ; 3 uses
  %i.en = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47, i1 true) ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = or disjoint i32 %i.d, %i.eo             ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !332
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !120
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !403
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !403
  %i.ew = zext i32 %i.et to i64                   ; 2 uses
  %i.ex = lshr i64 %i.ew, 6
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !170
  %i.fa = and i64 %i.ew, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.ez, %i.fb
  %.not.i.i.i48 = icmp eq i64 %i.fc, 0
  %i.fd = zext i32 %i.ep to i64                   ; 2 uses
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !111 ; 2 uses
  br i1 %.not.i.i.i48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fh = trunc nuw nsw i64 %i.en to i8
  %i.fi = and i8 %i.fh, 7
  %i.fj = shl nuw i8 1, %i.fi
  %i.fk = or i8 %i.fg, %i.fj
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

bb.o:                                             ; preds = %bb.m
  %i.fl = and i64 %i.fd, 7
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !111
  %i.fo = and i8 %i.fn, %i.fg
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i50 = phi i8 [ %i.fo, %bb.o ], [ %i.fk, %bb.n ]
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !111
  %i.fp = add nuw i64 %.011.i47, 9223372036854775807
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1835

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !666, !range !147, !noundef !148
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !667
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !170
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.aw, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !659, !nonnull !148, !align !383
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !332
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !120
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !660, !nonnull !148, !align !383
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !403
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !661, !nonnull !148, !align !383
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !403
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !170
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !111 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i64 %.022 to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = and i64 %.022, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !111
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !111
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !1837

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !659, !nonnull !148, !align !383
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !332
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !120
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !660, !nonnull !148, !align !383
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !403
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !661, !nonnull !148, !align !383
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !403
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !170
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !111 ; 2 uses
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %i.ay to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = shl nuw i8 1, %i.bw
  %i.by = or i8 %i.bu, %i.bx
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

bb.h:                                             ; preds = %bb.f
  %i.bz = and i64 %i.br, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !111
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !111
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !1838

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.510) align 8 %2, ptr noundef byval(%class.anon.511) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !649, !range !147, !noundef !148
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !650
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !170
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1845
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1846, !nonnull !148, !align !383
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !562
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !170
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i64 %.pre.i, ptr %gep.i, align 8, !tbaa !170
  %i.aj = add nuw i64 %.011.i, 9223372036854775807
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1839

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !649, !range !147, !noundef !148
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !650
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !170
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !1845
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1846, !nonnull !148, !align !383
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !562
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i64, ptr %i.bh, align 8, !tbaa !170
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i64 %.pre.i39, ptr %gep.i41, align 8, !tbaa !170
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !1839

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !652, !range !147, !noundef !148
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !653
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !148, !align !383 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !170
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !562
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !170
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !562 ; 3 uses
  %.pre.i44 = load i64, ptr %i.by, align 8, !tbaa !170 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i35                   ; 2 uses
  %i.cu = shl nsw i35 %i.ct, 3
  %i.cv = trunc i64 %i.cs to i35
  %i.cw = add i35 %i.ct, %i.cv
  %i.cx = shl i35 %i.cw, 3
  %i.cy = icmp slt i35 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 16
  %i.db = and i64 %umax76, 1                      ; 3 uses
  %n.vec78 = sub i64 %i.cp, %i.db                 ; 3 uses
  %i.dc = add i64 %n.vec78, %i.cm                 ; 2 uses
  %broadcast.splatinsert79 = insertelement <4 x i64> poison, i64 %.pre.i44, i64 0
  %broadcast.splat80 = shufflevector <4 x i64> %broadcast.splatinsert79, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dd = add nuw i64 %index, %i.cm
  %i.de = shl i64 %i.dd, 32
  %i.df = ashr exact i64 %i.de, 29
  %i.dg = getelementptr inbounds i8, ptr %i.cn, i64 %i.df ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <4 x i64> %broadcast.splat80, ptr %i.dg, align 8, !tbaa !170
  store <4 x i64> %broadcast.splat80, ptr %i.dh, align 8, !tbaa !170
  store <4 x i64> %broadcast.splat80, ptr %i.di, align 8, !tbaa !170
  store <4 x i64> %broadcast.splat80, ptr %i.dj, align 8, !tbaa !170
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec78
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1840

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index81 = phi i64 [ %index.next82, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dl = add nuw i64 %index81, %i.cm
  %i.dm = shl i64 %i.dl, 32
  %i.dn = ashr exact i64 %i.dm, 29
  %i.do = getelementptr inbounds i8, ptr %i.cn, i64 %i.dn
  store <4 x i64> %broadcast.splat80, ptr %i.do, align 8, !tbaa !170
  %index.next82 = add nuw i64 %index81, 4         ; 2 uses
  %i.dp = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.dp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1841

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %i.db, 0
  br i1 %cmp.n83, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dc, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dq = ashr exact i64 %sext.i, 29
  %i.dr = getelementptr inbounds i8, ptr %i.cn, i64 %i.dq
  store i64 %.pre.i44, ptr %i.dr, align 8, !tbaa !170
  %i.ds = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cl
  br i1 %i.dt, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1842

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.du
  store i64 %.pre24.i, ptr %gep.i46, align 8, !tbaa !170
  %i.dv = add i64 %.01519.i, -1
  %i.dw = and i64 %i.dv, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dw, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1843

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dx = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dx, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1844

bb.k:                                             ; preds = %._crit_edge
  %i.dy = ashr i32 %1, 6
  %i.dz = and i32 %1, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %notmask.i48 = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i48, -1
  %i.ec = load i8, ptr %2, align 8, !tbaa !649, !range !147, !noundef !148
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !650
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !170
  %i.ei = xor i8 %i.ec, 1
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = and i64 %i.el, %i.eb                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.em, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1845
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1846, !nonnull !148, !align !383
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !562
  %i.et = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.es, i64 %i.et
  %.pre.i52 = load i64, ptr %i.eq, align 8, !tbaa !170
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.em, %.preheader.i50 ], [ %i.ew, %bb.l ] ; 3 uses
  %i.eu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.eu
  store i64 %.pre.i52, ptr %gep.i54, align 8, !tbaa !170
  %i.ev = add nuw i64 %.011.i53, 9223372036854775807
  %i.ew = and i64 %i.ev, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ew, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1839

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.513, align 8            ; 7 uses
  %7 = alloca %class.anon.512, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1847

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1850, !range !147, !noundef !148
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1851
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !170
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !672
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !673, !nonnull !148, !align !383 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !668  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !276, !range !147
  %.pre.i.fr = freeze i8 %.pre.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.w = trunc i8 %.pre.i.fr to i1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 144 ; 3 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !275  ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !562 ; 3 uses
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, label %.preheader.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader: ; preds = %.preheader.split.us
  %i.ab = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us
  %.011.us.us = phi i64 [ %i.ai, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %i.ad = or disjoint i64 %i.ac, %i.ab            ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !170
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !170
  %i.ah = add i64 %.011.us.us, -1
  %i.ai = and i64 %i.ah, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ai, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !1848

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !277, !range !147, !noundef !148
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.preheader.split.us.split.split.us, label %.preheader.split.us.split.split

.preheader.split.us.split.split.us:               ; preds = %.preheader.split.us.split
  %i.al = load i32, ptr %i.x, align 8, !tbaa !278
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.am
  %.pre29 = load i64, ptr %i.an, align 8, !tbaa !170
  %i.ao = sext i32 %i.m to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.ao
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %.preheader.split.us.split.split.us
  %.011.us.us20 = phi i64 [ %i.k, %.preheader.split.us.split.split.us ], [ %i.ar, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ] ; 3 uses
  %i.ap = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us20, i1 true)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ap
  store i64 %.pre29, ptr %gep, align 8, !tbaa !170
  %i.aq = add i64 %.011.us.us20, -1
  %i.ar = and i64 %i.aq, %.011.us.us20            ; 2 uses
  %.not10.us.us23 = icmp eq i64 %i.ar, 0
  br i1 %.not10.us.us23, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, !llvm.loop !1848

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !279
  %i.at = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.bd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %i.av = or disjoint i64 %i.au, %i.at            ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIhEEvmmRKSt8optionalIT_E:bb.a
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not8, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !364
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit, label %bb.g, !prof !171

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #41
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !361
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %1
  %gepdiff = sub nuw nsw i64 %2, %1
  %i.s = load i8, ptr %3, align 1, !tbaa !111
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 %i.s, i64 %gepdiff, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit, %bb.e
  ret void
}

declare void @_ZN8facebook5velox6Buffer19sliceBufferZeroCopyEmbRKN5boost13intrusive_ptrIS1_EEmm(ptr dead_on_unwind writable sret(%"class.boost::intrusive_ptr") align 8, i64 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorImEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSI_St6vectorISI_SaISI_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %9 = alloca %"struct.facebook::velox::SimpleVectorStats.188", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !341
  %i.b = load ptr, ptr %3, align 8, !tbaa !287
  store ptr %i.b, ptr %7, align 8, !tbaa !287
  store ptr null, ptr %3, align 8, !tbaa !287
  %i.c = load i32, ptr %4, align 4, !tbaa !120
  %i.d = load ptr, ptr %5, align 8, !tbaa !287
  store ptr %i.d, ptr %8, align 8, !tbaa !287
  store ptr null, ptr %5, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.e, align 8, !tbaa !340
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.f, align 8, !tbaa !340
  invoke void @_ZN8facebook5velox10FlatVectorImEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 %7, i32 noundef %i.c, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 0, i64 0, i16 0, i64 0, i64 0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.g = load ptr, ptr %8, align 8, !tbaa !287    ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %.noexc.i unwind label %bb.d, !inline_history !12

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !292
  %.not.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !126
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %..i.i
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !12

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #40
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.u = load ptr, ptr %7, align 8, !tbaa !287    ; 7 uses
  %.not.i8 = icmp eq ptr %i.u, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.e
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !126
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc.i10 unwind label %bb.f, !inline_history !12

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !292
  %.not.i.i11 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !126
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i.i12
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.f, !inline_history !12

bb.f:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #40
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %.noexc.i10
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #27
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #27
  resume { ptr, i32 } %i.ai
}

declare void @_ZN8facebook5velox6Buffer5sliceIbEEN5boost13intrusive_ptrIS1_EERKS5_mmPNS0_6memory10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.boost::intrusive_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.538) align 8 %2, ptr noundef byval(%class.anon.539) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !572, !range !147, !noundef !148
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !573
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !170
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1891
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !562
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !1892, !nonnull !148, !align !383
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !403
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !170
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !170
  %i.ao = add nuw i64 %.011.i, 9223372036854775807
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1885

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !572, !range !147, !noundef !148
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !573
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !170
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1891
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !562
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !1892, !nonnull !148, !align !383
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !403
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !170
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !170
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1885

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !576, !range !147, !noundef !148
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !577
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !148, !align !383 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !170
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !562
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !403
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !562 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !403 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.dn = and i64 %umax67, 1                      ; 3 uses
  %n.vec72 = sub i64 %i.db, %i.dn                 ; 3 uses
  %i.do = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dp = add nuw i64 %index, %i.cx
  %i.dq = shl i64 %i.dp, 32
  %i.dr = ashr exact i64 %i.dq, 32                ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dr ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %wide.load = load <4 x i64>, ptr %i.ds, align 8, !tbaa !170
  %wide.load69 = load <4 x i64>, ptr %i.dt, align 8, !tbaa !170
  %wide.load70 = load <4 x i64>, ptr %i.du, align 8, !tbaa !170
  %wide.load71 = load <4 x i64>, ptr %i.dv, align 8, !tbaa !170
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dr ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  store <4 x i64> %wide.load, ptr %i.dw, align 8, !tbaa !170
  store <4 x i64> %wide.load69, ptr %i.dx, align 8, !tbaa !170
  store <4 x i64> %wide.load70, ptr %i.dy, align 8, !tbaa !170
  store <4 x i64> %wide.load71, ptr %i.dz, align 8, !tbaa !170
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec72
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !1886

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.eb = add nuw i64 %index73, %i.cx
  %i.ec = shl i64 %i.eb, 32
  %i.ed = ashr exact i64 %i.ec, 32                ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ed
  %wide.load74 = load <4 x i64>, ptr %i.ee, align 8, !tbaa !170
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ed
  store <4 x i64> %wide.load74, ptr %i.ef, align 8, !tbaa !170
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1887

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.dn, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.do, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.do, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.el, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eh = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !170
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.eh
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !170
  %i.el = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cw
  br i1 %i.em, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1888

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.et, %bb.j ] ; 3 uses
  %i.en = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eo = or disjoint i64 %i.en, %i.cs            ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !170
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eo
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !170
  %i.es = add i64 %.01519.i, -1
  %i.et = and i64 %i.es, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.et, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1889

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eu = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eu, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1890

bb.k:                                             ; preds = %._crit_edge
  %i.ev = ashr i32 %1, 6
  %i.ew = and i32 %1, 63
  %i.ex = zext nneg i32 %i.ew to i64
  %notmask.i42 = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i42, -1
  %i.ez = load i8, ptr %2, align 8, !tbaa !572, !range !147, !noundef !148
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !573
  %i.fc = sext i32 %i.ev to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !170
  %i.ff = xor i8 %i.ez, 1
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = xor i64 %i.fe, %i.fh
  %i.fj = and i64 %i.fi, %i.ey                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fj, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1891
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 144
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !562
  %i.fp = sext i32 %i.d to i64
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !1892, !nonnull !148, !align !383
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !403
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fj, %.preheader.i44 ], [ %i.fy, %bb.l ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ft = or disjoint i64 %i.fs, %i.fp            ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !170
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ft
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !170
  %i.fx = add nuw i64 %.011.i45, 9223372036854775807
  %i.fy = and i64 %i.fx, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fy, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1885

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %2 = alloca %"class.std::optional.105", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !287  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i8, ptr %i.c, align 4, !tbaa !364
  %i.e = and i8 %i.d, 2
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit:      ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.q, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread: ; preds = %bb.b, %_ZNK8facebook5velox6Buffer9isMutableEv.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !325
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !445
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.n, align 8, !tbaa !469
  call void @_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %1, i64 noundef %i.k, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !287
  %.not10 = icmp eq ptr %i.o, null
  br i1 %.not10, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread
  %i.p = load ptr, ptr %1, align 8, !tbaa !287    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.r = load i8, ptr %i.q, align 4, !tbaa !364
  %i.s = and i8 %i.r, 2
  %.not.i5 = icmp eq i8 %i.s, 0
  br i1 %.not.i5, label %bb.e, label %bb.d, !prof !171

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #41
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.i, align 8, !tbaa !325
  %i.u = zext i32 %i.t to i64
  %i.v = shl i64 %i.u, 36
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !361
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !491
  %i.aa = ashr exact i64 %i.v, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 8 %i.z, i64 %i.aa, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %bb.e, %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread
  %i.ac = load ptr, ptr %1, align 8, !tbaa !287   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = atomicrmw add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !287 ; 7 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !287
  %.not.i2.i = icmp eq ptr %i.af, null
  br i1 %.not.i2.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.i
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !126
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %.noexc.i.i unwind label %bb.j, !inline_history !12

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !292
  %.not.i.i.i = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !126
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %..i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit unwind label %bb.j, !inline_history !12

bb.j:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #40
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit: ; preds = %.noexc.i.i, %bb.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !287 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.av = load i8, ptr %i.au, align 4, !tbaa !364
  %i.aw = and i8 %i.av, 2
  %.not.i6 = icmp eq i8 %i.aw, 0
  br i1 %.not.i6, label %bb.l, label %bb.k, !prof !171

bb.k:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #41
          to label %.noexc7 unwind label %bb.o

.noexc7:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !361
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !491
  %i.ba = load ptr, ptr %1, align 8, !tbaa !287   ; 7 uses
  %.not.i8 = icmp eq ptr %i.ba, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = atomicrmw sub ptr %i.bb, i32 1 acq_rel, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.m
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !126
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %.noexc.i unwind label %bb.n, !inline_history !12

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !292
  %.not.i.i9 = icmp eq ptr %i.bi, null
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !126
  %..i.i = select i1 %.not.i.i9, i64 8, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %..i.i
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.n, !inline_history !12

bb.n:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #40
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.l, %bb.m, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.o ], [ %i.ab, %bb.f ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %_ZNK8facebook5velox6Buffer9isMutableEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !491
  ret ptr %i.bq
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18clearStringBuffersEv:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !356    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !357  ; 2 uses
  %.not16 = icmp eq ptr %i.a, %i.c
  br i1 %.not16, label %._crit_edge18, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.01417 = phi ptr [ %i.a, %.preheader.lr.ph ], [ %i.j, %._crit_edge ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01417, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !353
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %.01417, i64 4
  br label %bb.b

._crit_edge18:                                    ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit, %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.01417, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.c
  br i1 %.not, label %._crit_edge18, label %.preheader

bb.b:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.ay, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit ] ; 3 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !352
  %i.l = add nsw i32 %i.k, %.015                  ; 2 uses
  %i.m = load i32, ptr %.01417, align 4, !tbaa !351
  %i.n = add nsw i32 %i.m, %.015                  ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !500  ; 4 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !1950, !nonnull !148, !align !383
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !425  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(94) %i.q, i32 noundef %i.n), !inline_history !1948
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !325
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %i.o, i32 noundef %i.x, i1 noundef zeroext true)
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !287  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !364
  %i.ab = and i8 %i.aa, 2
  %.not.i3.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i3.i.i, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i, label %bb.d, !prof !171

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #41
  unreachable

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i: ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !361
  %i.ae = zext i32 %i.l to i64                    ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !111
  %i.ai = and i64 %i.ae, 7
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !111
  %i.al = and i8 %i.ak, %i.ah
  store i8 %i.al, ptr %i.ag, align 1, !tbaa !111
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit

bb.e:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !1951, !nonnull !148, !align !383
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !496 ; 2 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !1950, !nonnull !148, !align !383
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !425 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !126
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(94) %i.ap, i32 noundef %i.n), !inline_history !1948
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !126
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 384
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(208) %i.an, i32 noundef %i.at), !inline_history !1948 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !111
  tail call void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE3setEiS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.o, i32 noundef %i.l, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit

_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit: ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i, %bb.e
  %i.ay = add nuw nsw i32 %.015, 1                ; 2 uses
  %i.az = load i32, ptr %i.f, align 4, !tbaa !353
  %i.ba = icmp slt i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.b, label %._crit_edge, !llvm.loop !1949
}

declare void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE26acquireSharedStringBuffersEPKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef) local_unnamed_addr #1

declare void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE3setEiS2_(ptr noundef nonnull align 8 dereferenceable(272), i32 noundef, i64, ptr) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE30transferAndUpdateStringBuffersEPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.151", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.std::pair.437", align 8    ; 4 uses
  %5 = alloca %"class.boost::intrusive_ptr", align 8 ; 5 uses
  %6 = alloca %"class.std::optional.295", align 1 ; 5 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.558", align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 11 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !501  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !501  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.aj
  %i.l = icmp eq ptr %.sroa.0106.3, %.sroa.12.1
  br i1 %i.l, label %.loopexit, label %bb.ak

bb.b:                                             ; preds = %.lr.ph, %bb.aj
  %.sroa.0106.0213 = phi ptr [ null, %.lr.ph ], [ %.sroa.0106.3, %bb.aj ] ; 13 uses
  %.sroa.12.0212 = phi ptr [ null, %.lr.ph ], [ %.sroa.12.1, %bb.aj ] ; 9 uses
  %.sroa.19.0211 = phi ptr [ null, %.lr.ph ], [ %.sroa.19.3, %bb.aj ] ; 8 uses
  %.sroa.0103.0210 = phi ptr [ %i.d, %.lr.ph ], [ %i.ee, %bb.aj ] ; 10 uses
  %i.m = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !287 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef %1)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  br i1 %i.q, label %bb.aj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !287 ; 3 uses
  %i.s = load i64, ptr %i.i, align 8, !tbaa !479  ; 2 uses
  %i.t = icmp ult i64 %i.s, 256
  br i1 %i.t, label %.loopexit131, label %bb.e, !prof !127

bb.e:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.v = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.u) ; 2 uses
  %i.w = lshr i64 %i.v, 24
  %i.x = or i64 %i.w, 128                         ; 3 uses
  %i.y = add i64 %i.v, %i.u                       ; 2 uses
  %i.z = shl nuw nsw i64 %i.x, 1
  %i.aa = or disjoint i64 %i.z, 1
  %i.ab = trunc nuw i64 %i.x to i8
  %i.ac = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ae = and i64 %i.s, 255                       ; 2 uses
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !475
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.023.i39.i.i.i = phi i64 [ %i.af, %bb.e ], [ %i.ba, %bb.i ]
  %.025.i38.i.i.i = phi i64 [ %i.y, %bb.e ], [ %i.bb, %bb.i ] ; 2 uses
  %i.ah = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i38.i.i.i, i64 range(i64 0, 256) %i.ae)
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.ag, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.ak, i32 0, i32 3, i32 1)
  %i.al = load <16 x i8>, ptr %i.ai, align 16     ; 2 uses
  %i.am = icmp eq <16 x i8> %i.al, %i.ad
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = and i16 %i.an, 16383
  %i.ap = zext nneg i16 %i.ao to i32
  %i.aq = icmp ne ptr %i.ai, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ar = extractelement <16 x i8> %i.al, i64 15
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.g, %bb.f
  %.sroa.012.0.i.i.i = phi i32 [ %i.ap, %bb.f ], [ %i.au, %bb.g ] ; 4 uses
  %.not.i.i.i = icmp eq i32 %.sroa.012.0.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i.i
  %i.as = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0.i.i.i, i1 true)
  %i.at = add nuw nsw i32 %.sroa.012.0.i.i.i, 16383
  %i.au = and i32 %i.at, %.sroa.012.0.i.i.i
  %i.av = zext nneg i32 %i.as to i64              ; 3 uses
  call void @llvm.assume(i1 %i.aq)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !568
  %i.ay = icmp eq ptr %i.r, %i.ax
  br i1 %i.ay, label %bb.j, label %.critedge.i.i.i.i, !prof !171, !llvm.loop !65

bb.h:                                             ; preds = %.critedge.i.i.i.i
  %i.az = icmp eq i8 %i.ar, 0
  br i1 %i.az, label %.loopexit131, label %bb.i, !prof !171

bb.i:                                             ; preds = %bb.h
  %i.ba = add i64 %.023.i39.i.i.i, -1             ; 2 uses
  %i.bb = add i64 %i.aa, %.025.i38.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i, label %.loopexit131, label %bb.f, !llvm.loop !66

bb.j:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.av
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr nonnull %i.bc, i64 %i.av, i64 %i.y, i64 %i.x)
          to label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit unwind label %bb.o

.loopexit131:                                     ; preds = %bb.d, %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr %i.r, ptr %i.a, align 8, !tbaa !568
  %i.bd = invoke noundef i64 @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %.loopexit131
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !1968
  store i64 %i.bd, ptr %7, align 16, !tbaa !111, !alias.scope !1969, !noalias !1968
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.be, align 16, !tbaa !111, !alias.scope !1969, !noalias !1968
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.181, i64 67, i64 20, ptr nonnull %7)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !1968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE30transferAndUpdateStringBuffersEPNS0_6memory10MemoryPoolEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.181) #41
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body74

bb.o:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body74

bb.p:                                             ; preds = %.loopexit131
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn52 = phi { ptr, i32 } [ %i.bi, %bb.q ], [ %i.bh, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.s:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %8, align 8, !tbaa !128   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !111
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %.pn54 = phi { ptr, i32 } [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn52, %bb.r ], [ %i.bj, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.body74

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  %i.bp = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !287, !noalias !1970, !nonnull !148, !noundef !148
  store ptr null, ptr %9, align 8, !tbaa !287, !alias.scope !1970
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !358, !noalias !1970
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !1970
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !1970
  store i8 0, ptr %i.j, align 1, !tbaa !360, !noalias !1970
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %5, i64 noundef %i.br, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i unwind label %bb.t, !noalias !1970

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i: ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit
  %i.bs = load ptr, ptr %5, align 8, !tbaa !287, !noalias !1970 ; 4 uses
  store ptr %i.bs, ptr %9, align 8, !tbaa !287, !alias.scope !1970
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.pre15.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !358, !noalias !1970
  %.pre.i = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !287, !noalias !1970
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !1970
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !1970
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !126, !noalias !1970
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !1970
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noundef %.pre.i, i64 noundef %.pre15.i)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge unwind label %bb.u, !noalias !1970

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i
  %.pre = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !287 ; 3 uses
  %.pre270 = load ptr, ptr %9, align 8, !tbaa !287 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !361 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.pre270, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !361 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !358 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0212, %.sroa.19.0211
  br i1 %.not.i.i, label %bb.v, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit.thread

bb.t:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !1970
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !1970
  br label %.body

bb.u:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit.thread: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge
  store ptr %i.bx, ptr %.sroa.12.0212, align 8, !tbaa !282
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0212, i64 8
  store ptr %i.bz, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !282
  %.sroa.795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0212, i64 16
  store i64 %i.cb, ptr %.sroa.795.0..sroa_idx, align 8, !tbaa !170
  %.sroa.12.2299 = getelementptr inbounds nuw i8, ptr %.sroa.12.0212, i64 24
  store ptr null, ptr %9, align 8, !tbaa !287
  store ptr %.pre270, ptr %.sroa.0103.0210, align 8, !tbaa !287
  br label %bb.z

bb.v:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge
  %i.ce = ptrtoint ptr %.sroa.12.0212 to i64
  %i.cf = ptrtoint ptr %.sroa.0106.0213 to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 6 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.w, label %_ZNKSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #41
          to label %.noexc60 unwind label %.loopexit.split-lp

.noexc60:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.ci = sdiv exact i64 %i.cg, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 384307168202282325)
  %i.cm = select i1 %i.ck, i64 384307168202282325, i64 %i.cl ; 3 uses
  %.not.i.i.i.i59 = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i59)
  %i.cn = mul nuw nsw i64 %i.cm, 24
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #38
          to label %.noexc61 unwind label %.loopexit133 ; 5 uses

.noexc61:                                         ; preds = %_ZNKSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.cg ; 4 uses
  store ptr %i.bx, ptr %i.cp, align 8, !tbaa !282
  %.sroa.6.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.bz, ptr %.sroa.6.0..sroa_idx93, align 8, !tbaa !282
  %.sroa.795.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %i.cb, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !170
  %i.cq = icmp sgt i64 %i.cg, 0
  br i1 %i.cq, label %bb.x, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

bb.x:                                             ; preds = %.noexc61
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.co, ptr align 8 %.sroa.0106.0213, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i: ; preds = %bb.x, %.noexc61
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0106.0213, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.0213, i64 noundef %i.cg) #39
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEE30transferAndUpdateStringBuffersEPNS0_6memory10MemoryPoolE:bb.a
_ZNK8facebook5velox10BaseVector8isNullAtEi.exit:  ; preds = %bb.ao
  %i.fe = lshr i64 %indvars.iv, 6
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !170
  %i.fh = and i64 %indvars.iv, 63
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = and i64 %i.fg, %i.fi
  %.not.i.i72 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i72, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread: ; preds = %bb.ao, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %indvars.iv ; 4 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !186 ; 3 uses
  %i.fm = icmp ult i32 %i.fl, 13
  br i1 %i.fm, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8            ; 4 uses
  br i1 %i.ey, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.ap, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ez, %bb.ap ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %.sroa.0106.3, %bb.ap ] ; 2 uses
  %i.fq = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.015.i.i, i64 %i.fq ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !676
  %i.ft = icmp ult ptr %i.fp, %i.fs               ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.fv = xor i64 %i.fq, -1
  %i.fw = add nsw i64 %.016.i.i, %i.fv
  %.sroa.011.1.i.i = select i1 %i.ft, ptr %.sroa.011.015.i.i, ptr %i.fu ; 5 uses
  %.1.i.i = select i1 %i.ft, i64 %i.fq, i64 %i.fw ; 2 uses
  %i.fx = icmp sgt i64 %.1.i.i, 0
  br i1 %i.fx, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit, !llvm.loop !1964

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.fy = icmp eq ptr %.sroa.011.1.i.i, %.sroa.0106.3
  br i1 %i.fy, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit
  %i.fz = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -24
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !676 ; 3 uses
  %.not = icmp ult ptr %i.fp, %i.ga
  br i1 %.not, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gb = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !1973
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gc
  %i.ge = icmp ult ptr %i.fp, %i.gd
  br i1 %i.ge, label %bb.as, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.gf = icmp slt i32 %i.fl, 0
  br i1 %i.gf, label %bb.at, label %bb.aw, !prof !127

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !1974
  store i32 %i.fl, ptr %2, align 16, !tbaa !111, !noalias !1974
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.gg, align 16, !tbaa !111, !noalias !1974
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.90, i64 11, i64 17, ptr nonnull %2)
          to label %.noexc73 unwind label %bb.ax

.noexc73:                                         ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !1974
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.90) #41
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %.noexc73
  unreachable

bb.av:                                            ; preds = %.noexc73
  %i.gh = landingpad { ptr, i32 }
          cleanup
  %i.gi = load ptr, ptr %3, align 8, !tbaa !128   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.av
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !111
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body74

bb.aw:                                            ; preds = %bb.as
  %i.gn = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !1975
  %i.gp = ptrtoint ptr %i.fp to i64
  %i.gq = ptrtoint ptr %i.ga to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = getelementptr inbounds i8, ptr %i.go, i64 %i.gr ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 1
  store i32 %i.gt, ptr %i.fn, align 4, !tbaa !111
  %.sroa.5.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.gs, ptr %.sroa.5.sroa.5.0..sroa_idx, align 8, !tbaa !111
  %.pre273 = load i32, ptr %i.eu, align 8, !tbaa !325
  br label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread

bb.ax:                                            ; preds = %bb.at
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body74

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread: ; preds = %bb.ap, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit, %bb.aw, %bb.ar, %bb.aq, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.gv = phi i32 [ %i.fc, %bb.ap ], [ %i.fc, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit ], [ %.pre273, %bb.aw ], [ %i.fc, %bb.ar ], [ %i.fc, %bb.aq ], [ %i.fc, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread ], [ %i.fc, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next, %i.gw
  br i1 %i.gx, label %bb.ao, label %.loopexit, !llvm.loop !1967

.loopexit:                                        ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit, %._crit_edge
  %.not.i.i.i76 = icmp eq ptr %.sroa.0106.3, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %.loopexit
  %i.gy = ptrtoint ptr %.sroa.19.3 to i64
  %i.gz = ptrtoint ptr %.sroa.0106.3 to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.3, i64 noundef %i.ha) #39
  br label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit: ; preds = %bb.a, %.loopexit, %bb.ay
  ret void

.body74:                                          ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.n, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.body, %bb.an, %bb.am
  %.sroa.19.5 = phi ptr [ %.sroa.19.0211, %bb.n ], [ %.sroa.19.3, %bb.an ], [ %.sroa.19.3, %bb.am ], [ %.sroa.19.0211, %bb.o ], [ %.sroa.19.2, %.body ], [ %.sroa.19.0211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.19.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.19.3, %bb.ax ]
  %.sroa.0106.5 = phi ptr [ %.sroa.0106.0213, %bb.n ], [ %.sroa.0106.3, %bb.an ], [ %.sroa.0106.3, %bb.am ], [ %.sroa.0106.0213, %bb.o ], [ %.sroa.0106.2, %.body ], [ %.sroa.0106.0213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0106.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.0106.3, %bb.ax ] ; 3 uses
  %.pn54.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %i.fb, %bb.an ], [ %i.fa, %bb.am ], [ %i.bg, %bb.o ], [ %.pn49.pn, %.body ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gu, %bb.ax ]
  %.not.i.i.i77 = icmp eq ptr %.sroa.0106.5, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit78, label %.thread

.thread:                                          ; preds = %.body74
  %i.hb = ptrtoint ptr %.sroa.19.5 to i64
  %i.hc = ptrtoint ptr %.sroa.0106.5 to i64
  %i.hd = sub i64 %i.hb, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.5, i64 noundef %i.hd) #39
  br label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit78

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit78: ; preds = %.body74, %.thread
  resume { ptr, i32 } %.pn54.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !479  ; 2 uses
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit, label %bb.b, !prof !127

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !568    ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.e) ; 2 uses
  %i.g = lshr i64 %i.f, 24
  %i.h = or i64 %i.g, 128                         ; 3 uses
  %i.i = add i64 %i.f, %i.e                       ; 2 uses
  %i.j = shl nuw nsw i64 %i.h, 1
  %i.k = or disjoint i64 %i.j, 1
  %i.l = trunc nuw i64 %i.h to i8
  %i.m = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.o = and i64 %i.b, 255                        ; 2 uses
  %i.p = shl nuw i64 1, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !475
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.023.i39.i.i = phi i64 [ %i.p, %bb.b ], [ %i.ak, %bb.f ]
  %.025.i38.i.i = phi i64 [ %i.i, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %i.r = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i38.i.i, i64 range(i64 0, 256) %i.o)
  %i.s = getelementptr inbounds nuw [128 x i8], ptr %i.q, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.u, i32 0, i32 3, i32 1)
  %i.v = load <16 x i8>, ptr %i.s, align 16       ; 2 uses
  %i.w = icmp eq <16 x i8> %i.v, %i.n
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = and i16 %i.x, 16383
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = icmp ne ptr %i.s, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ab = extractelement <16 x i8> %i.v, i64 15
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.d, %bb.c
  %.sroa.012.0.i.i = phi i32 [ %i.z, %bb.c ], [ %i.ae, %bb.d ] ; 4 uses
  %.not.i.i = icmp eq i32 %.sroa.012.0.i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i.i.i
  %i.ac = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0.i.i, i1 true)
  %i.ad = add nuw nsw i32 %.sroa.012.0.i.i, 16383
  %i.ae = and i32 %i.ad, %.sroa.012.0.i.i
  %i.af = zext nneg i32 %i.ac to i64              ; 3 uses
  tail call void @llvm.assume(i1 %i.aa)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !568
  %i.ai = icmp eq ptr %i.d, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.i.i.i, !prof !171, !llvm.loop !65

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.aj = icmp eq i8 %i.ab, 0
  br i1 %i.aj, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit, label %bb.f, !prof !171

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.023.i39.i.i, -1               ; 2 uses
  %i.al = add i64 %i.k, %.025.i38.i.i
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit, label %bb.c, !llvm.loop !66

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.am, i64 %i.af, i64 %i.i, i64 %i.h)
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit: ; preds = %bb.e, %bb.f, %bb.a, %bb.g
  %.1.i.i = phi i64 [ 0, %bb.a ], [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i64 %.1.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !479
  %i.c = add i64 %i.b, -256                       ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !479
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
  %i.f = lshr i64 %i.d, 1
  %i.g = ptrtoint ptr %1 to i64
  %i.h = or i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !586
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %i.c, 256
  br i1 %i.l, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.d, %bb.c
  br label %.critedge.i.i.i

bb.d:                                             ; preds = %thread-pre-split.i.i
  %.not19.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not19.i.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.c, %bb.d
  %i.o = phi i64 [ %i.q, %bb.d ], [ %2, %bb.c ]
  %i.p = phi ptr [ %i.r, %bb.d ], [ %1, %bb.c ]
  %i.q = add i64 %i.o, -1                         ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !tbaa !111
  %.not.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i, !prof !127, !llvm.loop !1976

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.017.i.i.i = phi ptr [ %i.u, %.critedge.i.i.i ], [ %i.n, %.critedge.i.i.i.preheader ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -128 ; 3 uses
  %i.v = load <16 x i8>, ptr %i.u, align 16, !tbaa !111
  %i.w = icmp slt <16 x i8> %i.v, zeroinitializer
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = and i16 %i.x, 16383                      ; 2 uses
  %.not2.i.i = icmp eq i16 %i.y, 0
  br i1 %.not2.i.i, label %.critedge.i.i.i, label %bb.e, !prof !127, !llvm.loop !1977

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.z, i1 true)
  %i.ab = xor i32 %i.aa, 31
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = icmp ne ptr %i.u, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -112
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e, %bb.b
  %.sroa.01.0.i = phi ptr [ null, %bb.b ], [ %i.af, %bb.e ], [ %i.r, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ], [ %i.q, %thread-pre-split.i.i ]
  %i.ag = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.ah = icmp samesign ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = lshr i64 %i.ag, 1
  %i.aj = ptrtoint ptr %.sroa.01.0.i to i64
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.i, align 8, !tbaa !170
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit: ; preds = %bb.a, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i
  %i.al = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -8
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %.neg.i.i.i ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %2 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !111
  %.not.i.i7 = icmp sgt i8 %i.ao, -1
  br i1 %.not.i.i7, label %bb.f, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEm.exit.i

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str) #45
  unreachable

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit
  store i8 0, ptr %i.an, align 1, !tbaa !111
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !567
  %.not.i = icmp ult i8 %i.aq, 16
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEm.exit.i
  %i.ar = shl i64 %4, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = load ptr, ptr %0, align 8, !tbaa !475   ; 4 uses
  %i.au = load i64, ptr %i.a, align 8, !tbaa !479
  %i.av = and i64 %i.au, 255                      ; 2 uses
  %i.aw = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %3, i64 range(i64 0, 256) %i.av) ; 3 uses
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.aw
  %i.ay = icmp eq ptr %i.ax, %i.am
  br i1 %i.ay, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.i, %bb.g
  %.010.lcssa.i = phi i8 [ 0, %bb.g ], [ -16, %bb.i ]
  %i.az = phi i64 [ %i.aw, %bb.g ], [ %i.bk, %bb.i ]
  %i.ba = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 14 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !567
  %i.bd = add i8 %i.bc, %.010.lcssa.i
  store i8 %i.bd, ptr %i.bb, align 2, !tbaa !567
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %i.be = phi i64 [ %i.bk, %bb.i ], [ %i.aw, %bb.g ]
  %.01126.i = phi i64 [ %i.bj, %bb.i ], [ %3, %bb.g ]
  %i.bf = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !585 ; 2 uses
  %.not.i17.i = icmp eq i8 %i.bh, -2
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bi = add i8 %i.bh, -1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !585
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.bj = add i64 %i.as, %.01126.i                ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bj, i64 range(i64 0, 256) %i.av) ; 3 uses
  %i.bl = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.bk
  %i.bm = icmp eq ptr %i.bl, %i.am
  br i1 %i.bm, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEm.exit.i, %.thread.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.4.i.i = alloca { ptr, i64 }, align 8     ; 4 uses
  %3 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %4 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %5 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %6 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %7 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %8 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %9 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %.sroa.4.i.i.i = alloca { ptr, i64 }, align 8   ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEET_SM_SM_T0_.exit
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_:bb.a
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !170
  %i.ei = and i64 %i.eh, %i.ee
  %i.ej = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ei)
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  %i.el = add nsw i32 %.1.i.i, %i.ek
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.el, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !563

bb.ac:                                            ; preds = %bb.ab
  %i.em = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27, !noalias !2001
  store i32 0, ptr %14, align 16, !tbaa !111, !alias.scope !2002, !noalias !2001
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.em, ptr %i.en, align 16, !tbaa !111, !alias.scope !2002, !noalias !2001
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.148, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27, !noalias !2001
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.148) #41
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load ptr, ptr %18, align 8, !tbaa !128  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.et = load i64, ptr %i.er, align 8, !tbaa !111
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.eo, %bb.af ], [ %i.ep, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !325
  %i.ex = sext i32 %i.ew to i64
  %i.ey = shl nsw i64 %i.ex, 4                    ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !362 ; 2 uses
  %.not23 = icmp ult i64 %i.fa, %i.ey
  br i1 %.not23, label %bb.ah, label %bb.am, !prof !127

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27, !noalias !2003
  store i64 %i.fa, ptr %13, align 16, !tbaa !111, !alias.scope !2004, !noalias !2003
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ey, ptr %i.fb, align 16, !tbaa !111, !alias.scope !2004, !noalias !2003
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.90, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27, !noalias !2003
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.90) #41
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.al:                                            ; preds = %bb.ai
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = load ptr, ptr %19, align 8, !tbaa !128  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.al
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !111
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fc, %bb.ak ], [ %i.fd, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.ap

bb.am:                                            ; preds = %.critedge
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !358
  %i.fl = icmp ult i64 %i.fk, %i.ey
  br i1 %i.fl, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.fm = load ptr, ptr %i.bz, align 8, !tbaa !126
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ey)
          to label %.thread unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.thread:                                          ; preds = %bb.z, %bb.am, %bb.an, %bb.ab
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fp, %bb.ao ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aw) #27
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.av) #27
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #27
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #27
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_ISA_EEvSC_iibSD_EUliE_EEviiSD_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.573) align 8 %2, ptr noundef byval(%class.anon.574) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !505, !range !147, !noundef !148
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !506
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !170
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = sext i32 %i.d to i64
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !2009
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 216
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !2010, !nonnull !148, !align !383
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ao, %bb.d ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !491
  %i.aj = or disjoint i64 %i.ah, %i.ad            ; 2 uses
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !331
  %i.am = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !181
  %i.an = add nuw i64 %.011.i, 9223372036854775807
  %i.ao = and i64 %i.an, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ao, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2005

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = sdiv i32 %0, 64                         ; 2 uses
  %i.aq = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ar
  %i.as = xor i64 %notmask.i.i35, -1
  %i.at = sub nsw i32 64, %i.aq
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl i64 %i.as, %i.au
  %i.aw = load i8, ptr %2, align 8, !tbaa !505, !range !147, !noundef !148
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !506
  %i.az = sext i32 %i.ap to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !170
  %i.bc = xor i8 %i.aw, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = xor i64 %i.bb, %i.be
  %i.bg = and i64 %i.bf, %i.av                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bg, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = shl nsw i32 %i.ap, 6
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = sext i32 %i.bi to i64
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !2009
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 216
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !2010, !nonnull !148, !align !383
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bg, %.preheader.i37 ], [ %i.bv, %bb.g ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !491
  %i.bq = or disjoint i64 %i.bo, %i.bk            ; 2 uses
  %i.br = getelementptr inbounds [16 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !331
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !181
  %i.bu = add i64 %.011.i38, -1
  %i.bv = and i64 %i.bu, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bv, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2005

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bw = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bw, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bx = load i8, ptr %3, align 8, !tbaa !508, !range !147, !noundef !148
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !509
  %i.ca = xor i8 %i.bx, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 216 ; 2 uses
  %i.ch = load ptr, ptr %i.cd, align 8, !nonnull !148, !align !383 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ci = phi i32 [ %i.bw, %.lr.ph ], [ %i.dj, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ci, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cj = sdiv i32 %.051, 64                      ; 3 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !170
  %i.cn = xor i64 %i.cm, %i.cc                    ; 2 uses
  switch i64 %i.cn, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.co = shl nsw i32 %i.cj, 6
  %i.cp = sext i32 %i.co to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cj, 6                    ; 2 uses
  %i.cr = add nuw i32 %i.cq, 64
  %i.cs = sext i32 %i.cr to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.ct = sext i32 %i.cq to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.ct, %.lr.ph21.i ], [ %i.cz, %bb.j ] ; 2 uses
  %i.cu = load ptr, ptr %i.cg, align 8, !tbaa !491
  %sext.i = shl i64 %.020.i, 32
  %i.cv = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.cw = getelementptr inbounds [16 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load ptr, ptr %i.ch, align 8, !tbaa !331
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !181
  %i.cz = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cs
  br i1 %i.da, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2006

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.di, %bb.k ] ; 3 uses
  %i.db = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dc = load ptr, ptr %i.cg, align 8, !tbaa !491
  %i.dd = or disjoint i64 %i.db, %i.cp            ; 2 uses
  %i.de = getelementptr inbounds [16 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load ptr, ptr %i.ch, align 8, !tbaa !331
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.df, i64 %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !181
  %i.dh = add i64 %.01519.i, -1
  %i.di = and i64 %i.dh, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.di, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !2007

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.dj = add nsw i32 %i.ci, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dj, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2008

bb.l:                                             ; preds = %._crit_edge
  %i.dk = ashr i32 %1, 6
  %i.dl = and i32 %1, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %notmask.i42 = shl nsw i64 -1, %i.dm
  %i.dn = xor i64 %notmask.i42, -1
  %i.do = load i8, ptr %2, align 8, !tbaa !505, !range !147, !noundef !148
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !506
  %i.dr = sext i32 %i.dk to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !170
  %i.du = xor i8 %i.do, 1
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = and i64 %i.dx, %i.dn                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.dy, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eb = sext i32 %i.d to i64
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !2009
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 216
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !2010, !nonnull !148, !align !383
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.dy, %.preheader.i44 ], [ %i.em, %bb.m ] ; 3 uses
  %i.ef = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !491
  %i.eh = or disjoint i64 %i.ef, %i.eb            ; 2 uses
  %i.ei = getelementptr inbounds [16 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load ptr, ptr %i.ee, align 8, !tbaa !331
  %i.ek = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i64 16, i1 false), !tbaa.struct !181
  %i.el = add nuw i64 %.011.i45, 9223372036854775807
  %i.em = and i64 %i.el, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.em, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !2005

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not4 = icmp eq ptr %i.b, null
  %i.c = ptrtoint ptr %i.b to i64
  br i1 %.not4, label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !249    ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !678, !range !147, !noundef !148
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !679  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !680
  %.not.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.c, ptr %i.i, align 8, !tbaa !250
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !679
  br label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit unwind label %bb.i

_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit: ; preds = %bb.f
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !250 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit, label %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2

_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2: ; preds = %bb.c, %bb.b, %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit
  %i.n = phi ptr [ %.pr.pre, %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit ], [ %i.b, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !265  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !294
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.g, %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !656  ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !657
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #39
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 120) #39
  br label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %bb.e, %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i
  ret void

bb.i:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #40
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !250    ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !265  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !294
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !656  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !657
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #39
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #39
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !679  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2029   ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #41
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #38 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !250
  store i64 %i.r, ptr %i.q, align 8, !tbaa !250
  store ptr null, ptr %2, align 8, !tbaa !250
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.w = add i64 %i.m, -8
  %i.x = sub i64 %i.w, %i.e
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.z
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.z
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox9functions12_GLOBAL__N_17Replace5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a

bb.aa:                                            ; preds = %bb.z
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !120
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

bb.ab:                                            ; preds = %bb.z
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i55 = phi i32 [ %i.bx, %bb.aa ], [ %i.ch, %bb.ab ]
  %i.ci = icmp eq i32 %.0.i.i.i.i55, 1
  br i1 %i.ci, label %bb.ac, label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !127

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #27
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.cj = load ptr, ptr %5, align 8, !tbaa !184   ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !126
  %i.cl = icmp eq ptr %i.ck, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorINS0_10StringViewEEE, i64 16)
  %i.cm = select i1 %i.cl, ptr %i.cj, ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %9, align 8
  store ptr %i.c, ptr %10, align 8
  store ptr %15, ptr %11, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.d, ptr %i.cn, align 8
  store ptr %i.cm, ptr %i.a, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.a, ptr %8, align 8
  %.sroa.2.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %.sroa.2.0..sroa_idx.i56, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %10, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %11, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !253, !range !147, !noundef !148
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i, label %bb.ad

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0.in.pre.i.i.i = load i8, ptr %i.co, align 4, !tbaa !132, !range !147
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !262
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.ae, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !263 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !264
  %i.cz = icmp eq i32 %i.cw, %i.cy
  br i1 %i.cz, label %bb.af, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.da = load ptr, ptr %1, align 8, !tbaa !265   ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.cw, 0
  br i1 %.not.i.i.i.i, label %bb.ag, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.db = and i32 %i.cw, 2147483584               ; 3 uses
  %i.dc = zext nneg i32 %i.db to i64
  %.not37.i.i.not.i.i.i115.not = icmp eq i32 %i.db, 0
  br i1 %.not37.i.i.not.i.i.i115.not, label %.critedge.i.i.i.i.i, label %.lr.ph

bb.ah:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i116, 64 ; 2 uses
  %.not37.i.i.not.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.dc
  br i1 %.not37.i.i.not.i.i.i, label %.lr.ph, label %.critedge.i.i.i.i.i, !llvm.loop !10

.lr.ph:                                           ; preds = %bb.ag, %bb.ah
  %indvars.iv.i.i.i116 = phi i64 [ %indvars.iv.next.i.i.i, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %i.dd = lshr exact i64 %indvars.iv.i.i.i116, 3
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !170
  %i.dg = icmp eq i64 %i.df, -1
  br i1 %i.dg, label %bb.ah, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, !llvm.loop !10

.critedge.i.i.i.i.i:                              ; preds = %bb.ah, %bb.ag
  %.not38.i.i.i.i.i = icmp eq i32 %i.cw, %i.db
  br i1 %.not38.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.critedge.i.i.i.i.i
  %i.dh = lshr i32 %i.cw, 6
  %i.di = and i32 %i.cw, 63
  %i.dj = zext nneg i32 %i.di to i64
  %notmask.i40.i.i.i.i.i = shl nsw i64 -1, %i.dj
  %i.dk = zext nneg i32 %i.dh to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !170
  %.demorgan.i.i.i = or i64 %i.dm, %notmask.i40.i.i.i.i.i
  %i.dn = icmp eq i64 %.demorgan.i.i.i, -1
  %i.do = zext i1 %i.dn to i16
  %i.dp = or disjoint i16 %i.do, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i: ; preds = %.lr.ph, %bb.ai, %.critedge.i.i.i.i.i, %bb.af, %bb.ae, %bb.ad
  %.sroa.0.0.insert.ext.i.i.i = phi i16 [ 256, %bb.ae ], [ 256, %bb.ad ], [ 257, %bb.af ], [ 257, %.critedge.i.i.i.i.i ], [ %i.dp, %bb.ai ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i, ptr %i.co, align 4
  %i.dq = trunc i16 %.sroa.0.0.insert.ext.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i
  %.0.in.i.i.i = phi i8 [ %.0.in.pre.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i ], [ %i.dq, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i ]
  %.0.i.i.i = trunc nuw i8 %.0.in.i.i.i to i1
  br i1 %.0.i.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !263 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !262 ; 2 uses
  %i.dv = icmp slt i32 %i.du, %i.ds
  br i1 %i.dv, label %.lr.ph.i.i, label %.loopexit75

.lr.ph.i.i:                                       ; preds = %bb.aj, %.noexc57
  %.06.i.i = phi i32 [ %i.dw, %.noexc57 ], [ %i.du, %bb.aj ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_17Replace13applyInternalIZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_ZNKS3_5applyES7_SE_SJ_SM_SN_EUliE0_ZNKS3_5applyES7_SE_SJ_SM_SN_EUliE1_EEvT_T0_T1_S7_PNS0_10FlatVectorINS0_10StringViewEEEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(40) %8, i32 noundef %.06.i.i)
          to label %.noexc57 unwind label %.loopexit

.noexc57:                                         ; preds = %.lr.ph.i.i
  %i.dw = add i32 %.06.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.dw, %i.ds
  br i1 %exitcond.not.i.i, label %.loopexit75, label %.lr.ph.i.i, !llvm.loop !2087

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.dx = load ptr, ptr %1, align 8, !tbaa !265   ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !262 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !263 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %8, i64 40, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %8, i64 40, i1 false)
  store i8 1, ptr %6, align 8
  %.sroa.25.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.dx, ptr %.sroa.25.0..sroa_idx.i.i.i.i, align 8
  store i8 1, ptr %7, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.dx, ptr %.sroa.28.0..sroa_idx.i.i.i.i, align 8
  %.not.i.i.i.i.i = icmp slt i32 %i.dz, %i.eb
  br i1 %.not.i.i.i.i.i, label %bb.al, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiiST_.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.ec = add i32 %i.dz, 63                       ; 2 uses
  %i.ed = srem i32 %i.ec, 64
  %i.ee = sub nsw i32 %i.ec, %i.ed                ; 6 uses
  %i.ef = and i32 %i.eb, -64                      ; 6 uses
  %i.eg = icmp slt i32 %i.ef, %i.ee
  br i1 %i.eg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eh = ashr i32 %i.eb, 6
  %i.ei = and i32 %i.eb, 63
  %i.ej = zext nneg i32 %i.ei to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.ej
  %i.ek = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.el = sub nsw i32 %i.ee, %i.dz                ; 2 uses
  %i.em = zext nneg i32 %i.el to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.em
  %i.en = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.eo = sub nsw i32 64, %i.el
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = shl i64 %i.en, %i.ep
  %i.er = and i64 %i.eq, %i.ek
  %i.es = sext i32 %i.eh to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !170
  %i.ev = and i64 %i.er, %i.eu                    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ev, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiiST_.exit.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.am, %.noexc58
  %.011.i.i.i.i.i.i = phi i64 [ %i.fa, %.noexc58 ], [ %i.ev, %bb.am ] ; 3 uses
  %i.ew = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i, i1 true)
  %i.ex = trunc nuw nsw i64 %i.ew to i32
  %i.ey = or disjoint i32 %i.ef, %i.ex
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_17Replace13applyInternalIZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_ZNKS3_5applyES7_SE_SJ_SM_SN_EUliE0_ZNKS3_5applyES7_SE_SJ_SM_SN_EUliE1_EEvT_T0_T1_S7_PNS0_10FlatVectorINS0_10StringViewEEEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i.i, i32 noundef %i.ey)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit

.noexc58:                                         ; preds = %.preheader.i.i.i.i.i.i
  %i.ez = add nuw i64 %.011.i.i.i.i.i.i, 9223372036854775807
  %i.fa = and i64 %i.ez, %.011.i.i.i.i.i.i        ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not10.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiiST_.exit.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !2088

bb.an:                                            ; preds = %bb.al
  %.not32.i.i.i.i.i = icmp eq i32 %i.dz, %i.ee
  br i1 %.not32.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUlimE_clEim.exit40.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fb = sdiv i32 %i.dz, 64                      ; 2 uses
  %i.fc = sub nsw i32 %i.ee, %i.dz                ; 2 uses
  %i.fd = zext nneg i32 %i.fc to i64
  %notmask.i.i35.i.i.i.i.i = shl nsw i64 -1, %i.fd
  %i.fe = xor i64 %notmask.i.i35.i.i.i.i.i, -1
  %i.ff = sub nsw i32 64, %i.fc
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = shl i64 %i.fe, %i.fg
  %i.fi = sext i32 %i.fb to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fi
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !170
  %i.fl = and i64 %i.fk, %i.fh                    ; 2 uses
  %.not.i36.i.i.i.i.i = icmp eq i64 %i.fl, 0
  br i1 %.not.i36.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUlimE_clEim.exit40.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i

.preheader.i37.i.i.i.i.i:                         ; preds = %bb.ao
  %i.fm = shl nsw i32 %i.fb, 6
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc59, %.preheader.i37.i.i.i.i.i
  %.011.i38.i.i.i.i.i = phi i64 [ %i.fl, %.preheader.i37.i.i.i.i.i ], [ %i.fr, %.noexc59 ] ; 3 uses
  %i.fn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i.i, i1 true)
  %i.fo = trunc nuw nsw i64 %i.fn to i32
  %i.fp = or disjoint i32 %i.fm, %i.fo
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_17Replace13applyInternalIZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_ZNKS3_5applyES7_SE_SJ_SM_SN_EUliE0_ZNKS3_5applyES7_SE_SJ_SM_SN_EUliE1_EEvT_T0_T1_S7_PNS0_10FlatVectorINS0_10StringViewEEEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i.i, i32 noundef %i.fp)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.ap
  %i.fq = add i64 %.011.i38.i.i.i.i.i, -1
  %i.fr = and i64 %i.fq, %.011.i38.i.i.i.i.i      ; 2 uses
  %.not10.i39.i.i.i.i.i = icmp eq i64 %i.fr, 0
  br i1 %.not10.i39.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUlimE_clEim.exit40.i.i.i.i.i, label %bb.ap, !llvm.loop !2088

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUlimE_clEim.exit40.i.i.i.i.i: ; preds = %.noexc59, %bb.ao, %bb.an
  %i.fs = add nsw i32 %i.ee, 64                   ; 2 uses
  %.not3350.i.i.i.i.i = icmp sgt i32 %i.fs, %i.ef
  br i1 %.not3350.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUlimE_clEim.exit40.i.i.i.i.i
  %.not34.i.i.i.i.i = icmp eq i32 %i.eb, %i.ef
  br i1 %.not34.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiiST_.exit.i.i, label %bb.at

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUlimE_clEim.exit40.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i
  %i.ft = phi i32 [ %i.gl, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.fs, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUlimE_clEim.exit40.i.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i.i = phi i32 [ %i.ft, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.ee, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUlimE_clEim.exit40.i.i.i.i.i ] ; 2 uses
  %i.fu = sdiv i32 %.051.i.i.i.i.i, 64            ; 3 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !170 ; 2 uses
  switch i64 %i.fx, label %.lr.ph.i.i.i.i.i.i [
    i64 -1, label %bb.aq
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.fy = shl nsw i32 %i.fu, 6
  br label %bb.as

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fz = shl nsw i32 %i.fu, 6                    ; 2 uses
  %i.ga = add i32 %i.fz, 64
  %i.gb = sext i32 %i.ga to i64
  %.0.off.i.i.i.i.i = add i32 %.051.i.i.i.i.i, 127
  %.not22.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i, 64
  br i1 %.not22.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph21.i.i.i.i.i.i

.lr.ph21.i.i.i.i.i.i:                             ; preds = %bb.aq
  %i.gc = sext i32 %i.fz to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc60, %.lr.ph21.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.gc, %.lr.ph21.i.i.i.i.i.i ], [ %i.ge, %.noexc60 ] ; 2 uses
  %i.gd = trunc i64 %.020.i.i.i.i.i.i to i32
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_17Replace13applyInternalIZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_ZNKS3_5applyES7_SE_SJ_SM_SN_EUliE0_ZNKS3_5applyES7_SE_SJ_SM_SN_EUliE1_EEvT_T0_T1_S7_PNS0_10FlatVectorINS0_10StringViewEEEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.3.0..sroa_idx.i.i.i.i, i32 noundef %i.gd)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc60:                                         ; preds = %bb.ar
  %i.ge = add nuw i64 %.020.i.i.i.i.i.i, 1        ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.gb
  br i1 %i.gf, label %bb.ar, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i, !llvm.loop !2089

bb.as:                                            ; preds = %.noexc61, %.lr.ph.i.i.i.i.i.i
  %.01519.i.i.i.i.i.i = phi i64 [ %i.fx, %.lr.ph.i.i.i.i.i.i ], [ %i.gk, %.noexc61 ] ; 3 uses
  %i.gg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i.i, i1 true)
  %i.gh = trunc nuw nsw i64 %i.gg to i32
  %i.gi = or disjoint i32 %i.fy, %i.gh
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_17Replace13applyInternalIZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_ZNKS3_5applyES7_SE_SJ_SM_SN_EUliE0_ZNKS3_5applyES7_SE_SJ_SM_SN_EUliE1_EEvT_T0_T1_S7_PNS0_10FlatVectorINS0_10StringViewEEEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.3.0..sroa_idx.i.i.i.i, i32 noundef %i.gi)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc61:                                         ; preds = %bb.as
  %i.gj = add i64 %.01519.i.i.i.i.i.i, -1
  %i.gk = and i64 %i.gj, %.01519.i.i.i.i.i.i      ; 2 uses
  %.not.i41.i.i.i.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not.i41.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.as, !llvm.loop !2090

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %.noexc60, %.noexc61, %bb.aq, %.lr.ph.i.i.i.i.i
  %i.gl = add nsw i32 %i.ft, 64                   ; 2 uses
  %.not33.i.i.i.i.i = icmp sgt i32 %i.gl, %i.ef
  br i1 %.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2091

bb.at:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.gm = ashr i32 %i.eb, 6
  %i.gn = and i32 %i.eb, 63
  %i.go = zext nneg i32 %i.gn to i64
  %notmask.i42.i.i.i.i.i = shl nsw i64 -1, %i.go
  %i.gp = xor i64 %notmask.i42.i.i.i.i.i, -1
  %i.gq = sext i32 %i.gm to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !170
  %i.gt = and i64 %i.gs, %i.gp                    ; 2 uses
  %.not.i43.i.i.i.i.i = icmp eq i64 %i.gt, 0
  br i1 %.not.i43.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiiST_.exit.i.i, label %.preheader.i44.i.i.i.i.i

.preheader.i44.i.i.i.i.i:                         ; preds = %bb.at, %.noexc62
  %.011.i45.i.i.i.i.i = phi i64 [ %i.gy, %.noexc62 ], [ %i.gt, %bb.at ] ; 3 uses
  %i.gu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i.i, i1 true)
  %i.gv = trunc nuw nsw i64 %i.gu to i32
  %i.gw = or disjoint i32 %i.ef, %i.gv
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_17Replace13applyInternalIZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_ZNKS3_5applyES7_SE_SJ_SM_SN_EUliE0_ZNKS3_5applyES7_SE_SJ_SM_SN_EUliE1_EEvT_T0_T1_S7_PNS0_10FlatVectorINS0_10StringViewEEEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i.i, i32 noundef %i.gw)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc62:                                         ; preds = %.preheader.i44.i.i.i.i.i
  %i.gx = add nuw i64 %.011.i45.i.i.i.i.i, 9223372036854775807
  %i.gy = and i64 %i.gx, %.011.i45.i.i.i.i.i      ; 2 uses
  %.not10.i46.i.i.i.i.i = icmp eq i64 %i.gy, 0
  br i1 %.not10.i46.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiiST_.exit.i.i, label %.preheader.i44.i.i.i.i.i, !llvm.loop !2088

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiiST_.exit.i.i: ; preds = %.noexc62, %.noexc58, %bb.at, %._crit_edge.i.i.i.i.i, %bb.am, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit75

.loopexit75:                                      ; preds = %.noexc57, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_17Replace13applyInternalIZNKS5_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE0_ZNKS5_5applyES9_SG_SL_SO_SP_EUliE1_EEvT_T0_T1_S9_PNS0_10FlatVectorINS0_10StringViewEEEEUliE_EEvPKmiiST_.exit.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !118 ; 8 uses
  %.not.i.i63 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i63, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %.loopexit75
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hc = load atomic i64, ptr %i.hb acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.hb, align 8, !tbaa !123
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !124
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !126
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #27, !inline_history !13
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !126
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #27, !inline_history !13
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aw:                                            ; preds = %bb.au
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i64 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i64, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.hb, align 8, !tbaa !120
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65

bb.ay:                                            ; preds = %bb.aw
  %i.ho = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i66 = phi i32 [ %i.he, %bb.ax ], [ %i.ho, %bb.ay ]
  %i.hp = icmp eq i32 %.0.i.i.i.i66, 1
  br i1 %i.hp, label %bb.az, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !127

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #27
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.loopexit75, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  ret void

bb.ba:                                            ; preds = %_ZNSt8optionalIN8facebook5velox10StringViewEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit50
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.p
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #27
  call void @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #27
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.hr, %bb.bb ], [ %i.hq, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.preheader.i.i.i.i.i.i
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.preheader.i44.i.i.i.i.i
  %lpad.loopexit79 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.as
  %lpad.loopexit82 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ar
  %lpad.loopexit85 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.bc
  %.pn31 = phi { ptr, i32 } [ %.pn, %bb.bc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit76, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit79, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit82, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit85, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp, %bb.o
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %.loopexit.split-lp ], [ %i.ay, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.j
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %bb.bd ], [ %i.ag, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.h
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %bb.be ], [ %i.x, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #27
  br label %.body

.body:                                            ; preds = %bb.f, %bb.bf
  %.pn31.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn, %bb.bf ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.bg

bb.bg:                                            ; preds = %.body, %bb.g
  %.pn31.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn.pn, %.body ], [ %i.w, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK8facebook5velox9functions12_GLOBAL__N_17Replace27propagateStringEncodingFromEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.117") align 8 captures(none) initializes((0, 25)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorImSaImEED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.a, ptr %0, align 8, !tbaa !265
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !460
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.d, align 8, !tbaa !294
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.e, align 8, !tbaa !284
  ret void
}

declare noundef zeroext i1 @_ZN8facebook5velox9functions24prepareFlatResultsVectorERSt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorERNS0_4exec7EvalCtxES5_RKS2_IKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(38), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN8facebook5velox7VARCHAREv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.595") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

end_hunk_8
