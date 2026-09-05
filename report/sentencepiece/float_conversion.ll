Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/float_conversion?download=true
inline.NumInlined: 822
inline.NumDeleted: 310
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatGNegativeExpSlowINS0_7uint128EEEvT_ibRKNS4_11FormatStateEEUlNS4_24FractionalDigitGeneratorEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE:bb.a
  %i.eh = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i4.i106.i.i.i.i.epil.init
  %i.ei = getelementptr i8, ptr %i.eh, i64 -4     ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !51
  %i.ek = zext i32 %i.ej to i64
  %i.el = mul nuw nsw i64 %i.ek, 10
  %i.em = add nuw nsw i64 %i.el, %.0610.i5.i107.i.i.i.i.epil.init ; 2 uses
  %i.en = trunc i64 %i.em to i32
  store i32 %i.en, ptr %i.ei, align 4, !tbaa !51
  %i.eo = lshr i64 %i.em, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i.unr-lcssa, %.preheader.i3.i105.i.i.i.i.epil.preheader
  %.lcssa150 = phi i64 [ %i.fk, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i.unr-lcssa ], [ %i.eo, %.preheader.i3.i105.i.i.i.i.epil.preheader ] ; 2 uses
  %i.ep = add i64 %i.ee, -1                       ; 4 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !51
  %i.es = icmp eq i32 %i.er, 0                    ; 3 uses
  %.val81241.i.i.i.i = select i1 %i.es, i64 %i.ep, i64 %.val81240.i.i.i.i ; 2 uses
  %.val77230.i.i.i.i = select i1 %i.es, i64 %i.ep, i64 %.val77231.i.i.i.i ; 2 uses
  %i.et = select i1 %i.es, i64 %i.ep, i64 %i.ee
  %i.eu = icmp eq i64 %.lcssa150, 9
  br i1 %i.eu, label %.lr.ph.split.i102.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.loopexit.split.loop.exit.i.i.i.i, !llvm.loop !10

.preheader.i3.i105.i.i.i.i:                       ; preds = %.preheader.i3.i105.i.i.i.i, %.preheader.i3.i105.i.i.i.i.preheader.new
  %.011.i4.i106.i.i.i.i = phi i64 [ %i.ee, %.preheader.i3.i105.i.i.i.i.preheader.new ], [ %i.fd, %.preheader.i3.i105.i.i.i.i ] ; 2 uses
  %.0610.i5.i107.i.i.i.i = phi i64 [ 0, %.preheader.i3.i105.i.i.i.i.preheader.new ], [ %i.fk, %.preheader.i3.i105.i.i.i.i ]
  %niter205 = phi i64 [ 0, %.preheader.i3.i105.i.i.i.i.preheader.new ], [ %niter205.next.1, %.preheader.i3.i105.i.i.i.i ]
  %i.ev = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i4.i106.i.i.i.i
  %i.ew = getelementptr i8, ptr %i.ev, i64 -4     ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !51
  %i.ey = zext i32 %i.ex to i64
  %i.ez = mul nuw nsw i64 %i.ey, 10
  %i.fa = add nuw nsw i64 %i.ez, %.0610.i5.i107.i.i.i.i ; 2 uses
  %i.fb = trunc i64 %i.fa to i32
  store i32 %i.fb, ptr %i.ew, align 4, !tbaa !51
  %i.fc = lshr i64 %i.fa, 32
  %i.fd = add i64 %.011.i4.i106.i.i.i.i, -2       ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.fd ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !51
  %i.fg = zext i32 %i.ff to i64
  %i.fh = mul nuw nsw i64 %i.fg, 10
  %i.fi = add nuw nsw i64 %i.fh, %i.fc            ; 2 uses
  %i.fj = trunc i64 %i.fi to i32
  store i32 %i.fj, ptr %i.fe, align 4, !tbaa !51
  %i.fk = lshr i64 %i.fi, 32                      ; 3 uses
  %niter205.next.1 = add nuw i64 %niter205, 2     ; 2 uses
  %niter205.ncmp.1 = icmp eq i64 %niter205.next.1, %unroll_iter204
  br i1 %niter205.ncmp.1, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i.unr-lcssa, label %.preheader.i3.i105.i.i.i.i, !llvm.loop !9

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.loopexit.split.loop.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i
  %i.fl = trunc nuw nsw i64 %.lcssa150 to i8
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.i.i.i.i: ; preds = %.lr.ph.split.i102.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.loopexit.split.loop.exit.i.i.i.i, %.lr.ph.i101.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i, %.lr.ph.i.i.i
  %.val81.i.i.i.i = phi i64 [ %spec.select284.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i ], [ %.val81238.i39.i.i.i, %.lr.ph.i.i.i ], [ %spec.select284.i.i.i.i, %.lr.ph.i101.i.i.i.i ], [ %.val81241.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.loopexit.split.loop.exit.i.i.i.i ], [ %.val81240.i.i.i.i, %.lr.ph.split.i102.i.i.i.i ] ; 3 uses
  %.val77233.i.i.i.i = phi i64 [ %spec.select285.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i ], [ 0, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i101.i.i.i.i ], [ %.val77230.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.loopexit.split.loop.exit.i.i.i.i ], [ %.val77231.i.i.i.i, %.lr.ph.split.i102.i.i.i.i ] ; 2 uses
  %storemerge.lcssa.i97.i.i.i.i = phi i8 [ %i.dh, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i ], [ 0, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i101.i.i.i.i ], [ %i.fl, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.loopexit.split.loop.exit.i.i.i.i ], [ 0, %.lr.ph.split.i102.i.i.i.i ] ; 4 uses
  %.sroa.2.0.lcssa.i98.i.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i ], [ 0, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i101.i.i.i.i ], [ %i.ef, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.loopexit.split.loop.exit.i.i.i.i ], [ %i.ef, %.lr.ph.split.i102.i.i.i.i ] ; 3 uses
  %i.fm = add i64 %.sroa.2.0.lcssa.i98.i.i.i.i, 1 ; 3 uses
  %i.fn = icmp ult i64 %i.fm, %.0123186.i43.i.i.i
  br i1 %i.fn, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.i.i.i.i
  %i.fo = icmp ugt i64 %i.fm, %.0123186.i43.i.i.i
  %i.fp = icmp sgt i8 %storemerge.lcssa.i97.i.i.i.i, 5
  %or.cond286.i.i.i.i = select i1 %i.fo, i1 true, i1 %i.fp
  br i1 %or.cond286.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.thread.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.i.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.i.i.i.i: ; preds = %bb.g
  %i.fq = icmp eq i8 %storemerge.lcssa.i97.i.i.i.i, 5 ; 2 uses
  %i.fr = icmp ne i64 %.val81.i.i.i.i, 0
  %spec.select.i111.i.i.i.i = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %spec.select.i111.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.thread.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.i.i.i.i
  %.not.i113.i.i.i.i = icmp eq i64 %.val81.i.i.i.i, 0
  %i.fs = select i1 %i.fq, i1 %.not.i113.i.i.i.i, i1 false
  br i1 %i.fs, label %bb.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.thread.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %.not70.i.i.i.i = icmp ne i64 %.sroa.2.0.lcssa.i98.i.i.i.i, 0
  %i.ft = and i8 %.val.i41.i.i.i, -127
  %i.fu = icmp eq i8 %i.ft, 1
  %i.fv = or i1 %i.fu, %.not70.i.i.i.i
  br label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.thread.i.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.thread.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.i.i.i.i, %bb.g
  %.056.i.i.i.i = phi i1 [ false, %bb.h ], [ true, %bb.g ], [ %i.fv, %bb.i ], [ true, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.i.i.i.i ] ; 2 uses
  %i.fw = icmp eq i64 %.0123186.i43.i.i.i, 1
  br i1 %i.fw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.thread.i.i.i.i
  %i.fx = sext i1 %.056.i.i.i.i to i8
  %i.fy = icmp eq i8 %.val.i41.i.i.i, %i.fx
  %i.fz = add i64 %.354187.i42.i.i.i, 1
  %spec.select76.i.i.i.i = select i1 %i.fy, i64 %i.fz, i64 0
  br label %.critedge.i.i.i.i

bb.k:                                             ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.thread.i.i.i.i
  %i.ga = add i64 %.0123186.i43.i.i.i, -1
  %i.gb = select i1 %.056.i.i.i.i, i64 %i.ga, i64 0
  br label %.critedge.i.i.i.i

bb.l:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.i.i.i.i
  %i.gc = icmp eq i8 %.val.i41.i.i.i, 0
  %i.gd = icmp eq i64 %.sroa.2.0.lcssa.i98.i.i.i.i, 0
  %or.cond4.i.i.i.i = and i1 %i.gc, %i.gd
  %i.ge = add i64 %.354187.i42.i.i.i, 1
  %.455.i.i.i.i = select i1 %or.cond4.i.i.i.i, i64 %i.ge, i64 0 ; 2 uses
  %i.gf = sub nuw i64 %.0123186.i43.i.i.i, %i.fm  ; 2 uses
  %.not.i90.i.i.i.i = icmp ne i8 %storemerge.lcssa.i97.i.i.i.i, 0
  %i.gg = icmp ne i64 %.val77233.i.i.i.i, 0
  %i.gh = select i1 %.not.i90.i.i.i.i, i1 true, i1 %i.gg
  br i1 %i.gh, label %.lr.ph.i.i.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph188.i.i.i.i, %bb.f, %bb.e
  %.1124.i.i.i.i = phi i64 [ %i.ck, %bb.e ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.k ], [ %i.cv, %.lr.ph188.i.i.i.i ], [ %i.gf, %bb.l ]
  %.7.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.e ], [ %i.ct, %bb.f ], [ %spec.select76.i.i.i.i, %bb.j ], [ %i.gb, %bb.k ], [ %i.ct, %.lr.ph188.i.i.i.i ], [ %.455.i.i.i.i, %bb.l ] ; 2 uses
  %.not72.i.i.i.i = icmp eq i64 %.7.i.i.i.i, 0
  %i.gi = select i1 %i.cq, i64 0, i64 %.1124.i.i.i.i
  %.8.i.i.i.i = select i1 %.not72.i.i.i.i, i64 %i.gi, i64 %.7.i.i.i.i ; 2 uses
  %i.gj = icmp sgt i32 %.450.i.i.i.i, 2
  br i1 %i.gj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.critedge.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !187, !nonnull !75, !align !84 ; 2 uses
  %.sroa.05.0.copyload.i.i.i.i = load i64, ptr %i.gl, align 16, !tbaa !32
  %.sroa.26.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %.sroa.26.0.copyload.i.i.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !tbaa !32
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !188, !nonnull !75, !align !83
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !51
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !189, !nonnull !75
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !43, !range !78, !noundef !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.gr, ptr %i.a, align 1, !tbaa !43
  store i64 %.8.i.i.i.i, ptr %i.b, align 8, !tbaa !32
  %i.gs = sub nsw i32 0, %i.go
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %i.by, ptr %2, align 8, !tbaa !45
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %i.gt, align 8, !tbaa !50
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.gu, align 8, !tbaa !47
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE(i64 %.sroa.05.0.copyload.i.i.i.i, i64 %.sroa.26.0.copyload.i.i.i.i, i32 noundef %i.gs, ptr nonnull %2, ptr nonnull @"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatENegativeExpSlowENS0_7uint128EibRKNS4_11FormatStateEmE3$_0vJNS4_24FractionalDigitGeneratorEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatGNegativeExpSlowINS1_7uint128EEEvT_ibRKNS3_11FormatStateEEUlNS3_24FractionalDigitGeneratorEE_JSA_EENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSE_.exit

bb.n:                                             ; preds = %.critedge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.by, i64 32, i1 false), !tbaa.struct !86
  %i.gv = trunc i64 %i.ca to i32
  %.neg73.i.i.i.i = add i32 %i.gv, 1
  %i.gw = add i32 %.neg73.i.i.i.i, %.450.i.i.i.i
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !38
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !187, !nonnull !75, !align !84 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ha, align 16, !tbaa !32
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !32
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !188, !nonnull !75, !align !83
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !51
  %i.he = sub nsw i32 0, %i.hd
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateEm(i64 %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i, i32 noundef %i.he, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %.8.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatGNegativeExpSlowINS1_7uint128EEEvT_ibRKNS3_11FormatStateEEUlNS3_24FractionalDigitGeneratorEE_JSA_EENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSE_.exit

_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatGNegativeExpSlowINS1_7uint128EEEvT_ibRKNS3_11FormatStateEEUlNS3_24FractionalDigitGeneratorEE_JSA_EENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSE_.exit: ; preds = %bb.m, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.g = sub i64 %i.f, %i.d                       ; 10 uses
  %i.h = sub nsw i64 %i.e, %i.g
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %iter.check218, label %bb.d

iter.check218:                                    ; preds = %bb.c
  %min.iters.check200 = icmp ult i64 %i.g, 8
  br i1 %min.iters.check200, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check201

vector.main.loop.iter.check201:                   ; preds = %iter.check218
  %min.iters.check202 = icmp ult i64 %i.g, 32
  br i1 %min.iters.check202, label %vec.epilog.ph222, label %vector.ph203

vector.ph203:                                     ; preds = %vector.main.loop.iter.check201
  %i.j = and i64 %i.g, 24
  %n.vec204 = and i64 %i.g, -32                   ; 5 uses
  %i.k = getelementptr i8, ptr %1, i64 %n.vec204
  %i.l = getelementptr i8, ptr %0, i64 %n.vec204
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next213, %vector.body205 ] ; 3 uses
  %next.gep207 = getelementptr i8, ptr %1, i64 %index206 ; 3 uses
  %next.gep208 = getelementptr i8, ptr %0, i64 %index206 ; 3 uses
  %i.m = getelementptr i8, ptr %next.gep208, i64 16 ; 2 uses
  %wide.load209 = load <16 x i8>, ptr %next.gep208, align 1, !tbaa !26, !alias.scope !212, !noalias !213
  %wide.load210 = load <16 x i8>, ptr %i.m, align 1, !tbaa !26, !alias.scope !212, !noalias !213
  %i.n = getelementptr i8, ptr %next.gep207, i64 16 ; 2 uses
  %wide.load211 = load <16 x i8>, ptr %next.gep207, align 1, !tbaa !26, !alias.scope !213
  %wide.load212 = load <16 x i8>, ptr %i.n, align 1, !tbaa !26, !alias.scope !213
  store <16 x i8> %wide.load211, ptr %next.gep208, align 1, !tbaa !26, !alias.scope !212, !noalias !213
  store <16 x i8> %wide.load212, ptr %i.m, align 1, !tbaa !26, !alias.scope !212, !noalias !213
  store <16 x i8> %wide.load209, ptr %next.gep207, align 1, !tbaa !26, !alias.scope !213
  store <16 x i8> %wide.load210, ptr %i.n, align 1, !tbaa !26, !alias.scope !213
  %index.next213 = add nuw i64 %index206, 32      ; 2 uses
  %i.o = icmp eq i64 %index.next213, %n.vec204
  br i1 %i.o, label %middle.block214, label %vector.body205, !llvm.loop !193

middle.block214:                                  ; preds = %vector.body205
  %cmp.n215 = icmp eq i64 %i.g, %n.vec204
  br i1 %cmp.n215, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %vec.epilog.iter.check220

vec.epilog.iter.check220:                         ; preds = %middle.block214
  %min.epilog.iters.check221 = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check221, label %.lr.ph.i.preheader, label %vec.epilog.ph222, !prof !216

vec.epilog.ph222:                                 ; preds = %vector.main.loop.iter.check201, %vec.epilog.iter.check220
  %vec.epilog.resume.val216 = phi i64 [ %n.vec204, %vec.epilog.iter.check220 ], [ 0, %vector.main.loop.iter.check201 ]
  %n.vec223 = and i64 %i.g, -8                    ; 4 uses
  %i.p = getelementptr i8, ptr %1, i64 %n.vec223
  %i.q = getelementptr i8, ptr %0, i64 %n.vec223
  br label %vec.epilog.vector.body224

vec.epilog.vector.body224:                        ; preds = %vec.epilog.vector.body224, %vec.epilog.ph222
  %index225 = phi i64 [ %vec.epilog.resume.val216, %vec.epilog.ph222 ], [ %index.next230, %vec.epilog.vector.body224 ] ; 3 uses
  %next.gep226 = getelementptr i8, ptr %1, i64 %index225 ; 2 uses
  %next.gep227 = getelementptr i8, ptr %0, i64 %index225 ; 2 uses
  %wide.load228 = load <8 x i8>, ptr %next.gep227, align 1, !tbaa !26, !alias.scope !212, !noalias !213
  %wide.load229 = load <8 x i8>, ptr %next.gep226, align 1, !tbaa !26, !alias.scope !213
  store <8 x i8> %wide.load229, ptr %next.gep227, align 1, !tbaa !26, !alias.scope !212, !noalias !213
  store <8 x i8> %wide.load228, ptr %next.gep226, align 1, !tbaa !26, !alias.scope !213
  %index.next230 = add nuw i64 %index225, 8       ; 2 uses
  %i.r = icmp eq i64 %index.next230, %n.vec223
  br i1 %i.r, label %vec.epilog.middle.block231, label %vec.epilog.vector.body224, !llvm.loop !194

vec.epilog.middle.block231:                       ; preds = %vec.epilog.vector.body224
  %cmp.n232 = icmp eq i64 %i.g, %n.vec223
  br i1 %cmp.n232, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check218, %vec.epilog.iter.check220, %vec.epilog.middle.block231
  %.010.i.ph = phi ptr [ %1, %iter.check218 ], [ %i.k, %vec.epilog.iter.check220 ], [ %i.p, %vec.epilog.middle.block231 ] ; 2 uses
  %.079.i.ph = phi ptr [ %0, %iter.check218 ], [ %i.l, %vec.epilog.iter.check220 ], [ %i.q, %vec.epilog.middle.block231 ] ; 3 uses
  %.079.i.ph244 = ptrtoaddr ptr %.079.i.ph to i64 ; 2 uses
  %i.s = sub i64 %i.f, %.079.i.ph244
  %xtraiter245 = and i64 %i.s, 3                  ; 2 uses
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.010.i.prol = phi ptr [ %i.w, %.lr.ph.i.prol ], [ %.010.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.079.i.prol = phi ptr [ %i.v, %.lr.ph.i.prol ], [ %.079.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter247 = phi i64 [ %prol.iter247.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.t = load i8, ptr %.079.i.prol, align 1, !tbaa !26
  %i.u = load i8, ptr %.010.i.prol, align 1, !tbaa !26
  store i8 %i.u, ptr %.079.i.prol, align 1, !tbaa !26
  store i8 %i.t, ptr %.010.i.prol, align 1, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %.079.i.prol, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.010.i.prol, i64 1 ; 2 uses
  %prol.iter247.next = add i64 %prol.iter247, 1   ; 2 uses
  %prol.iter247.cmp.not = icmp eq i64 %prol.iter247.next, %xtraiter245
  br i1 %prol.iter247.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !195

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.010.i.unr = phi ptr [ %.010.i.ph, %.lr.ph.i.preheader ], [ %i.w, %.lr.ph.i.prol ]
  %.079.i.unr = phi ptr [ %.079.i.ph, %.lr.ph.i.preheader ], [ %i.v, %.lr.ph.i.prol ]
  %i.x = sub i64 %.079.i.ph244, %i.f
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.010.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.079.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.079.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.z = load i8, ptr %.079.i, align 1, !tbaa !26
  %i.aa = load i8, ptr %.010.i, align 1, !tbaa !26
  store i8 %i.aa, ptr %.079.i, align 1, !tbaa !26
  store i8 %i.z, ptr %.010.i, align 1, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %.079.i, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !26
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !26
  store i8 %i.ae, ptr %i.ab, align 1, !tbaa !26
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %.079.i, i64 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i, i64 2 ; 2 uses
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !26
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !26
  store i8 %i.ai, ptr %i.af, align 1, !tbaa !26
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i, i64 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i, i64 3 ; 2 uses
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !26
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !26
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !26
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i.3 = icmp eq ptr %i.an, %1
  br i1 %.not.i.3, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.lr.ph.i, !llvm.loop !196

bb.d:                                             ; preds = %bb.c
  %i.ap = sub i64 %i.c, %i.f
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.e, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.g, %bb.d ], [ %.082.be, %.backedge ] ; 20 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 26 uses
  %i.ar = sub nsw i64 %.086, %.082                ; 16 uses
  %i.as = icmp slt i64 %.082, %i.ar
  br i1 %i.as, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i64 %.082, 1
  br i1 %i.at, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, label %bb.g

_ZSt4moveIPcS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f
  %i.au = load i8, ptr %.058, align 1, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %.058, i64 1
  %i.aw = getelementptr inbounds i8, ptr %.058, i64 %.086
  %gepdiff = add nsw i64 %.086, -1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.058, ptr nonnull align 1 %i.av, i64 %gepdiff, i1 false)
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -1
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !26
  br label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.f
  %i.ay = icmp sgt i64 %i.ar, 0
  br i1 %i.ay, label %iter.check, label %._crit_edge110

iter.check:                                       ; preds = %bb.g
  %i.az = getelementptr i8, ptr %.058, i64 %.082  ; 7 uses
  %min.iters.check = icmp ult i64 %i.ar, 4
  br i1 %min.iters.check, label %.lr.ph109.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.058, i64 %i.ar
  %scevgep135 = getelementptr i8, ptr %.058, i64 %.086
  %bound0 = icmp ult ptr %.058, %scevgep135
  %bound1 = icmp ult ptr %i.az, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph109.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check136 = icmp ult i64 %i.ar, 32
  br i1 %min.iters.check136, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.ar, 28
  %n.vec = and i64 %i.ar, 9223372036854775776     ; 6 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 %n.vec
  %i.bc = getelementptr i8, ptr %.058, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.az, i64 %index ; 3 uses
  %next.gep137 = getelementptr i8, ptr %.058, i64 %index ; 3 uses
  %i.bd = getelementptr i8, ptr %next.gep137, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep137, align 1, !tbaa !26, !alias.scope !218, !noalias !219
  %wide.load138 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !26, !alias.scope !218, !noalias !219
  %i.be = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load139 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !26, !alias.scope !219
  %wide.load140 = load <16 x i8>, ptr %i.be, align 1, !tbaa !26, !alias.scope !219
  store <16 x i8> %wide.load139, ptr %next.gep137, align 1, !tbaa !26, !alias.scope !218, !noalias !219
  store <16 x i8> %wide.load140, ptr %i.bd, align 1, !tbaa !26, !alias.scope !218, !noalias !219
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !26, !alias.scope !219
  store <16 x i8> %wide.load138, ptr %i.be, align 1, !tbaa !26, !alias.scope !219
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge110, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph109.preheader, label %vec.epilog.ph, !prof !220

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec142 = and i64 %i.ar, 9223372036854775804  ; 5 uses
  %i.bg = getelementptr i8, ptr %i.az, i64 %n.vec142
  %i.bh = getelementptr i8, ptr %.058, i64 %n.vec142 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index143 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next148, %vec.epilog.vector.body ] ; 3 uses
  %next.gep144 = getelementptr i8, ptr %i.az, i64 %index143 ; 2 uses
  %next.gep145 = getelementptr i8, ptr %.058, i64 %index143 ; 2 uses
  %wide.load146 = load <4 x i8>, ptr %next.gep145, align 1, !tbaa !26, !alias.scope !218, !noalias !219
  %wide.load147 = load <4 x i8>, ptr %next.gep144, align 1, !tbaa !26, !alias.scope !219
  store <4 x i8> %wide.load147, ptr %next.gep145, align 1, !tbaa !26, !alias.scope !218, !noalias !219
  store <4 x i8> %wide.load146, ptr %next.gep144, align 1, !tbaa !26, !alias.scope !219
  %index.next148 = add nuw i64 %index143, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next148, %n.vec142
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !201

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n149 = icmp eq i64 %i.ar, %n.vec142
  br i1 %cmp.n149, label %._crit_edge110, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054107.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec142, %vec.epilog.middle.block ] ; 3 uses
  %.055106.ph = phi ptr [ %i.az, %iter.check ], [ %i.az, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ] ; 2 uses
  %.159105.ph = phi ptr [ %.058, %iter.check ], [ %.058, %vector.memcheck ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ] ; 2 uses
  %i.bj = sub i64 %.086, %.082
  %xtraiter241 = and i64 %i.bj, 3                 ; 2 uses
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol

.lr.ph109.prol:                                   ; preds = %.lr.ph109.preheader, %.lr.ph109.prol
  %.054107.prol = phi i64 [ %i.bo, %.lr.ph109.prol ], [ %.054107.ph, %.lr.ph109.preheader ]
  %.055106.prol = phi ptr [ %i.bn, %.lr.ph109.prol ], [ %.055106.ph, %.lr.ph109.preheader ] ; 3 uses
  %.159105.prol = phi ptr [ %i.bm, %.lr.ph109.prol ], [ %.159105.ph, %.lr.ph109.preheader ] ; 3 uses
  %prol.iter243 = phi i64 [ %prol.iter243.next, %.lr.ph109.prol ], [ 0, %.lr.ph109.preheader ]
  %i.bk = load i8, ptr %.159105.prol, align 1, !tbaa !26
  %i.bl = load i8, ptr %.055106.prol, align 1, !tbaa !26
  store i8 %i.bl, ptr %.159105.prol, align 1, !tbaa !26
  store i8 %i.bk, ptr %.055106.prol, align 1, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %.159105.prol, i64 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.055106.prol, i64 1 ; 2 uses
  %i.bo = add nuw nsw i64 %.054107.prol, 1        ; 2 uses
  %prol.iter243.next = add i64 %prol.iter243, 1   ; 2 uses
  %prol.iter243.cmp.not = icmp eq i64 %prol.iter243.next, %xtraiter241
  br i1 %prol.iter243.cmp.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol, !llvm.loop !202

.lr.ph109.prol.loopexit:                          ; preds = %.lr.ph109.prol, %.lr.ph109.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph109.preheader ], [ %i.bm, %.lr.ph109.prol ]
  %.054107.unr = phi i64 [ %.054107.ph, %.lr.ph109.preheader ], [ %i.bo, %.lr.ph109.prol ]
  %.055106.unr = phi ptr [ %.055106.ph, %.lr.ph109.preheader ], [ %i.bn, %.lr.ph109.prol ]
  %.159105.unr = phi ptr [ %.159105.ph, %.lr.ph109.preheader ], [ %i.bm, %.lr.ph109.prol ]
  %i.bp = sub i64 %.054107.ph, %.086
  %i.bq = add i64 %i.bp, %.082
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109, %middle.block, %vec.epilog.middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.bh, %vec.epilog.middle.block ], [ %i.bc, %middle.block ], [ %.lcssa.unr, %.lr.ph109.prol.loopexit ], [ %i.ch, %.lr.ph109 ]
  %i.bs = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.bs, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109
  %.054107 = phi i64 [ %i.cj, %.lr.ph109 ], [ %.054107.unr, %.lr.ph109.prol.loopexit ]
  %.055106 = phi ptr [ %i.ci, %.lr.ph109 ], [ %.055106.unr, %.lr.ph109.prol.loopexit ] ; 6 uses
  %.159105 = phi ptr [ %i.ch, %.lr.ph109 ], [ %.159105.unr, %.lr.ph109.prol.loopexit ] ; 6 uses
  %i.bt = load i8, ptr %.159105, align 1, !tbaa !26
  %i.bu = load i8, ptr %.055106, align 1, !tbaa !26
  store i8 %i.bu, ptr %.159105, align 1, !tbaa !26
  store i8 %i.bt, ptr %.055106, align 1, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %.159105, i64 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.055106, i64 1 ; 2 uses
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !26
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !26
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !26
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %.159105, i64 2 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.055106, i64 2 ; 2 uses
  %i.cb = load i8, ptr %i.bz, align 1, !tbaa !26
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !26
  store i8 %i.cc, ptr %i.bz, align 1, !tbaa !26
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !26
  %i.cd = getelementptr inbounds nuw i8, ptr %.159105, i64 3 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.055106, i64 3 ; 2 uses
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !26
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !26
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !26
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !26
  %i.ch = getelementptr inbounds nuw i8, ptr %.159105, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.055106, i64 4
  %i.cj = add nuw nsw i64 %.054107, 4             ; 2 uses
  %exitcond118.not.3 = icmp eq i64 %i.cj, %i.ar
  br i1 %exitcond118.not.3, label %._crit_edge110, label %.lr.ph109, !llvm.loop !203

bb.h:                                             ; preds = %._crit_edge110
  %i.ck = sub nsw i64 %.082, %i.bs
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cl = icmp eq i64 %i.ar, 1
  %i.cm = getelementptr i8, ptr %.058, i64 %.086  ; 9 uses
  br i1 %i.cl, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -1 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !26
  %i.cp = add nsw i64 %.086, -1                   ; 2 uses
  %i.cq = icmp sgt i64 %.086, 2
  br i1 %i.cq, label %bb.k, label %bb.l, !prof !55

bb.k:                                             ; preds = %bb.j
  %i.cr = getelementptr inbounds nuw i8, ptr %.058, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull align 1 %.058, i64 %i.cp, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.l:                                             ; preds = %bb.j
  %i.cs = icmp eq i64 %i.cp, 1
  br i1 %i.cs, label %bb.m, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ct = load i8, ptr %.058, align 1, !tbaa !26
  store i8 %i.ct, ptr %i.cn, align 1, !tbaa !26
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.k, %bb.l, %bb.m
  store i8 %i.co, ptr %.058, align 1, !tbaa !26
  br label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit

bb.n:                                             ; preds = %bb.i
  %i.cu = sub i64 0, %i.ar
  %i.cv = getelementptr i8, ptr %i.cm, i64 %i.cu  ; 8 uses
  %i.cw = icmp sgt i64 %.082, 0
  br i1 %i.cw, label %iter.check176, label %._crit_edge

iter.check176:                                    ; preds = %bb.n
  %min.iters.check158 = icmp ult i64 %.082, 8
  br i1 %min.iters.check158, label %.lr.ph.preheader, label %vector.memcheck153

vector.memcheck153:                               ; preds = %iter.check176
  %scevgep154 = getelementptr i8, ptr %.058, i64 %i.ar
  %bound0155 = icmp ult ptr %.058, %i.cm
  %bound1156 = icmp ult ptr %scevgep154, %i.cv
  %found.conflict157 = and i1 %bound0155, %bound1156
  br i1 %found.conflict157, label %.lr.ph.preheader, label %vector.main.loop.iter.check159

vector.main.loop.iter.check159:                   ; preds = %vector.memcheck153
  %min.iters.check160 = icmp ult i64 %.082, 32
  br i1 %min.iters.check160, label %vec.epilog.ph180, label %vector.ph161

vector.ph161:                                     ; preds = %vector.main.loop.iter.check159
  %i.cx = and i64 %.082, 24
  %n.vec162 = and i64 %.082, 9223372036854775776  ; 5 uses
  %i.cy = sub nsw i64 0, %n.vec162                ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cm, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cv, i64 %i.cy
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next171, %vector.body163 ] ; 2 uses
  %i.db = sub i64 0, %index164                    ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.cm, i64 %i.db ; 2 uses
  %next.gep166 = getelementptr i8, ptr %i.cv, i64 %i.db ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %next.gep166, i64 -16 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %next.gep166, i64 -32 ; 2 uses
  %wide.load167 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !26, !alias.scope !221, !noalias !222
  %wide.load168 = load <16 x i8>, ptr %i.dd, align 1, !tbaa !26, !alias.scope !221, !noalias !222
  %i.de = getelementptr inbounds i8, ptr %next.gep165, i64 -16 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %next.gep165, i64 -32 ; 2 uses
  %wide.load169 = load <16 x i8>, ptr %i.de, align 1, !tbaa !26, !alias.scope !222
  %wide.load170 = load <16 x i8>, ptr %i.df, align 1, !tbaa !26, !alias.scope !222
  store <16 x i8> %wide.load169, ptr %i.dc, align 1, !tbaa !26, !alias.scope !221, !noalias !222
  store <16 x i8> %wide.load170, ptr %i.dd, align 1, !tbaa !26, !alias.scope !221, !noalias !222
  store <16 x i8> %wide.load167, ptr %i.de, align 1, !tbaa !26, !alias.scope !222
  store <16 x i8> %wide.load168, ptr %i.df, align 1, !tbaa !26, !alias.scope !222
  %index.next171 = add nuw i64 %index164, 32      ; 2 uses
  %i.dg = icmp eq i64 %index.next171, %n.vec162
  br i1 %i.dg, label %middle.block172, label %vector.body163, !llvm.loop !207

middle.block172:                                  ; preds = %vector.body163
  %cmp.n173 = icmp eq i64 %.082, %n.vec162
  br i1 %cmp.n173, label %._crit_edge, label %vec.epilog.iter.check178

vec.epilog.iter.check178:                         ; preds = %middle.block172
  %min.epilog.iters.check179 = icmp eq i64 %i.cx, 0
  br i1 %min.epilog.iters.check179, label %.lr.ph.preheader, label %vec.epilog.ph180, !prof !216

vec.epilog.ph180:                                 ; preds = %vector.main.loop.iter.check159, %vec.epilog.iter.check178
  %vec.epilog.resume.val174 = phi i64 [ %n.vec162, %vec.epilog.iter.check178 ], [ 0, %vector.main.loop.iter.check159 ]
  %n.vec181 = and i64 %.082, 9223372036854775800  ; 4 uses
  %i.dh = sub nsw i64 0, %n.vec181                ; 2 uses
  %i.di = getelementptr i8, ptr %i.cm, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.cv, i64 %i.dh
  br label %vec.epilog.vector.body182

vec.epilog.vector.body182:                        ; preds = %vec.epilog.vector.body182, %vec.epilog.ph180
  %index183 = phi i64 [ %vec.epilog.resume.val174, %vec.epilog.ph180 ], [ %index.next188, %vec.epilog.vector.body182 ] ; 2 uses
  %i.dk = sub i64 0, %index183                    ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.cm, i64 %i.dk
  %next.gep185 = getelementptr i8, ptr %i.cv, i64 %i.dk
  %i.dl = getelementptr inbounds i8, ptr %next.gep185, i64 -8 ; 2 uses
  %wide.load186 = load <8 x i8>, ptr %i.dl, align 1, !tbaa !26, !alias.scope !221, !noalias !222
  %i.dm = getelementptr inbounds i8, ptr %next.gep184, i64 -8 ; 2 uses
  %wide.load187 = load <8 x i8>, ptr %i.dm, align 1, !tbaa !26, !alias.scope !222
  store <8 x i8> %wide.load187, ptr %i.dl, align 1, !tbaa !26, !alias.scope !221, !noalias !222
  store <8 x i8> %wide.load186, ptr %i.dm, align 1, !tbaa !26, !alias.scope !222
  %index.next188 = add nuw i64 %index183, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.dn, label %vec.epilog.middle.block189, label %vec.epilog.vector.body182, !llvm.loop !208

vec.epilog.middle.block189:                       ; preds = %vec.epilog.vector.body182
  %cmp.n190 = icmp eq i64 %.082, %n.vec181
  br i1 %cmp.n190, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck153, %iter.check176, %vec.epilog.iter.check178, %vec.epilog.middle.block189
  %.0104.ph = phi i64 [ 0, %iter.check176 ], [ 0, %vector.memcheck153 ], [ %n.vec162, %vec.epilog.iter.check178 ], [ %n.vec181, %vec.epilog.middle.block189 ] ; 3 uses
  %.052103.ph = phi ptr [ %i.cm, %iter.check176 ], [ %i.cm, %vector.memcheck153 ], [ %i.cz, %vec.epilog.iter.check178 ], [ %i.di, %vec.epilog.middle.block189 ] ; 2 uses
  %.260102.ph = phi ptr [ %i.cv, %iter.check176 ], [ %i.cv, %vector.memcheck153 ], [ %i.da, %vec.epilog.iter.check178 ], [ %i.dj, %vec.epilog.middle.block189 ] ; 2 uses
  %xtraiter = and i64 %.082, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0104.prol = phi i64 [ %i.ds, %.lr.ph.prol ], [ %.0104.ph, %.lr.ph.preheader ]
  %.052103.prol = phi ptr [ %i.dp, %.lr.ph.prol ], [ %.052103.ph, %.lr.ph.preheader ]
  %.260102.prol = phi ptr [ %i.do, %.lr.ph.prol ], [ %.260102.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.do = getelementptr inbounds i8, ptr %.260102.prol, i64 -1 ; 4 uses
  %i.dp = getelementptr inbounds i8, ptr %.052103.prol, i64 -1 ; 4 uses
  %i.dq = load i8, ptr %i.do, align 1, !tbaa !26
  %i.dr = load i8, ptr %i.dp, align 1, !tbaa !26
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !26
  store i8 %i.dq, ptr %i.dp, align 1, !tbaa !26
  %i.ds = add nuw nsw i64 %.0104.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !209

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0104.unr = phi i64 [ %.0104.ph, %.lr.ph.preheader ], [ %i.ds, %.lr.ph.prol ]
  %.052103.unr = phi ptr [ %.052103.ph, %.lr.ph.preheader ], [ %i.dp, %.lr.ph.prol ]
  %.260102.unr = phi ptr [ %.260102.ph, %.lr.ph.preheader ], [ %i.do, %.lr.ph.prol ]
  %i.dt = sub nsw i64 %.0104.ph, %.082
  %i.du = icmp ugt i64 %i.dt, -4
  br i1 %i.du, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block172, %vec.epilog.middle.block189, %bb.n
  %.260.lcssa = phi ptr [ %i.cv, %bb.n ], [ %.058, %middle.block172 ], [ %.058, %vec.epilog.middle.block189 ], [ %.058, %.lr.ph ], [ %.058, %.lr.ph.prol.loopexit ]
  %i.dv = srem i64 %.086, %i.ar                   ; 2 uses
  %.not = icmp eq i64 %i.dv, 0
  br i1 %.not, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.ar, %._crit_edge ]
  %.082.be = phi i64 [ %i.ck, %bb.h ], [ %i.dv, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !210

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0104 = phi i64 [ %i.em, %.lr.ph ], [ %.0104.unr, %.lr.ph.prol.loopexit ]
  %.052103 = phi ptr [ %i.ej, %.lr.ph ], [ %.052103.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.260102 = phi ptr [ %i.ei, %.lr.ph ], [ %.260102.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.dw = getelementptr inbounds i8, ptr %.260102, i64 -1 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %.052103, i64 -1 ; 2 uses
  %i.dy = load i8, ptr %i.dw, align 1, !tbaa !26
  %i.dz = load i8, ptr %i.dx, align 1, !tbaa !26
  store i8 %i.dz, ptr %i.dw, align 1, !tbaa !26
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !26
  %i.ea = getelementptr inbounds i8, ptr %.260102, i64 -2 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %.052103, i64 -2 ; 2 uses
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !26
  %i.ed = load i8, ptr %i.eb, align 1, !tbaa !26
  store i8 %i.ed, ptr %i.ea, align 1, !tbaa !26
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !26
  %i.ee = getelementptr inbounds i8, ptr %.260102, i64 -3 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.052103, i64 -3 ; 2 uses
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !26
  %i.eh = load i8, ptr %i.ef, align 1, !tbaa !26
  store i8 %i.eh, ptr %i.ee, align 1, !tbaa !26
  store i8 %i.eg, ptr %i.ef, align 1, !tbaa !26
  %i.ei = getelementptr inbounds i8, ptr %.260102, i64 -4 ; 3 uses
  %i.ej = getelementptr inbounds i8, ptr %.052103, i64 -4 ; 3 uses
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !26
  %i.el = load i8, ptr %i.ej, align 1, !tbaa !26
  store i8 %i.el, ptr %i.ei, align 1, !tbaa !26
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !26
  %i.em = add nuw nsw i64 %.0104, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.em, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !211

_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit:         ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block214, %vec.epilog.middle.block231, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.aq, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit ], [ %i.aq, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit ], [ %1, %middle.block214 ], [ %1, %.lr.ph.i.prol.loopexit ], [ %1, %vec.epilog.middle.block231 ], [ %1, %.lr.ph.i ], [ %i.aq, %._crit_edge110 ], [ %i.aq, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatGNegativeExpSlowImEEvT_ibRKNS2_11FormatStateE(i64 noundef %0, i32 noundef range(i32 -2147483648, -128) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i8, align 1                       ; 2 uses
  %4 = alloca %class.anon.29, align 8             ; 7 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !32
  store i32 %1, ptr %i.b, align 4, !tbaa !51
  %i.d = zext i1 %2 to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !43
  %i.e = sub nsw i32 0, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %3, ptr %4, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.b, ptr %i.g, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.c, ptr %i.h, align 8, !tbaa !47
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE(i64 %0, i64 0, i32 noundef %i.e, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatGNegativeExpSlowImEEvT_ibRKNS4_11FormatStateEEUlNS4_24FractionalDigitGeneratorEE_vJSA_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatGFastImEEvT_ibRKNS2_11FormatStateE(i64 noundef %0, i32 noundef range(i32 -128, 2147483595) %1, i1 noundef zeroext %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [199 x i8], align 16              ; 4 uses
  %i.b = alloca [34 x i8], align 16               ; 8 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %.thread356, label %bb.b

.thread356:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val192 = load i64, ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val193 = load ptr, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val193, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !25
  %.fr398 = freeze i8 %i.f
  %i.g = and i8 %.fr398, 8
  %.not271 = icmp eq i8 %i.g, 0                   ; 3 uses
  %.pre-phi = select i1 %.not271, i64 0, i64 %.val192
  %spec.select419 = select i1 %.not271, ptr @.str.8, ptr @.str.7
  %i.h = select i1 %.not271, i64 1, i64 2
  tail call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 %i.h, ptr nonnull %spec.select419, i64 noundef 0, i64 noundef %.pre-phi, i64 0, ptr nonnull @.str.4)
  br label %bb.bo

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 11 uses
  %i.j = icmp sgt i32 %1, -1
  br i1 %i.j, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 true)
  %i.l = trunc nuw nsw i64 %i.k to i32
  %reass.sub = add nuw i32 %1, 64
  %i.m = sub nuw i32 %reass.sub, %i.l
  %i.n = icmp slt i32 %i.m, 65
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = zext nneg i32 %1 to i64
  %i.p = shl i64 %0, %i.o
  %i.q = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEmPc(i64 noundef %i.p, ptr noundef nonnull %i.i)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = zext i64 %0 to i128
  %i.s = zext nneg i32 %1 to i128
  %i.t = shl i128 %i.r, %i.s                      ; 2 uses
  %i.u = trunc i128 %i.t to i64
  %i.v = lshr i128 %i.t, 64
  %i.w = trunc nuw i128 %i.v to i64
  %i.x = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferENS0_7uint128EPc(i64 %i.u, i64 %i.w, ptr noundef nonnull %i.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = phi ptr [ %i.q, %bb.d ], [ %i.x, %bb.e ] ; 6 uses
  store i8 48, ptr %i.y, align 1, !tbaa !26
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = ptrtoint ptr %i.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 4 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !38 ; 3 uses
  %i.ag = add i64 %i.af, 2                        ; 2 uses
  %i.ah = icmp ugt i64 %i.ab, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatGFastImEEvT_ibRKNS2_11FormatStateEENKUlPcS8_mmE_clES8_S8_mm.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ag ; 4 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = sub i64 %i.z, %i.aj                     ; 2 uses
  %i.al = ashr i64 %i.ak, 2                       ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.g
  %i.an = and i64 %i.ak, -4
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.ai, i64 %i.an ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.k, %.lr.ph.preheader.i.i.i.i.i.i
  %.050.i.i.i.i.i.i = phi i64 [ %i.as, %bb.k ], [ %i.al, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02949.i.i.i.i.i.i = phi ptr [ %i.ar, %bb.k ], [ %i.ai, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i = load i8, ptr %.02949.i.i.i.i.i.i, align 1, !tbaa !26
  %.not35.i.i.i.i.i.i = icmp eq i8 %.029.val32.i.i.i.i.i.i, 48
end_hunk_0
begin_hunk_1_@llvm.assume
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"_ZTSN4absl12lts_2026052620FormatConversionCharE", !17, i64 0}
!22 = !{!"_ZTSN4absl12lts_2026052619str_format_internal5FlagsE", !17, i64 0}
!23 = !{!"_ZTSN4absl12lts_202605269LengthModE", !17, i64 0}
!24 = !{!"_ZTSN4absl12lts_2026052619str_format_internal24FormatConversionSpecImplE", !21, i64 0, !22, i64 1, !23, i64 2, !18, i64 4, !18, i64 8}
!25 = !{!24, !22, i64 1}
!26 = !{!17, !17, i64 0}
!27 = !{!24, !21, i64 0}
!28 = !{!24, !18, i64 4}
!29 = !{!24, !18, i64 8}
!30 = !{!"long", !17, i64 0}
!31 = !{!"_ZTSN4absl12lts_202605267uint128E", !30, i64 0, !30, i64 8}
!32 = !{!30, !30, i64 0}
!33 = !{!"any pointer", !17, i64 0}
!34 = !{!"p1 _ZTSN4absl12lts_2026052619str_format_internal24FormatConversionSpecImplE", !33, i64 0}
!35 = !{!"p1 _ZTSN4absl12lts_2026052619str_format_internal14FormatSinkImplE", !33, i64 0}
!36 = !{!"_ZTSN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatStateE", !17, i64 0, !30, i64 8, !34, i64 16, !35, i64 24}
!37 = !{!36, !17, i64 0}
!38 = !{!36, !30, i64 8}
!39 = !{!34, !34, i64 0}
!40 = !{!36, !35, i64 24}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = !{!"bool", !17, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"p1 _ZTSN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatStateE", !33, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"p1 bool", !33, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"p1 long", !33, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!18, !18, i64 0}
!52 = !{!"p1 _ZTSN4absl12lts_202605267uint128E", !33, i64 0}
!53 = !{!"p1 int", !33, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!56 = !{!36, !34, i64 16}
!57 = !{!"_ZTSN4absl12lts_2026052619str_format_internal17FormatRawSinkImplE", !33, i64 0, !33, i64 8}
!58 = !{!"p1 omnipotent char", !33, i64 0}
!59 = !{!"_ZTSN4absl12lts_2026052619str_format_internal14FormatSinkImplE", !57, i64 0, !30, i64 16, !58, i64 24, !17, i64 32}
!60 = !{!59, !30, i64 16}
!61 = !{!59, !58, i64 24}
!62 = !{!57, !33, i64 8}
!63 = !{!57, !33, i64 0}
!64 = !{!"llvm.loop.peeled.count", i32 1}
!65 = !{!33, !33, i64 0}
!66 = !{!"_ZTSN4absl12lts_2026052611FunctionRefIFvNS0_19str_format_internal12_GLOBAL__N_115BinaryToDecimalEEEE", !17, i64 0, !33, i64 8}
!67 = !{!"_ZTSZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEEEUlNS0_4SpanIjEEE_", !66, i64 0, !31, i64 16, !18, i64 32}
!68 = !{!67, !18, i64 32}
!69 = !{!"_ZTSSt5arrayIcLm9EE", !17, i64 0}
!70 = !{!"_ZTSN4absl12lts_202605264SpanIjEE", !53, i64 0, !30, i64 8}
!71 = !{!"_ZTSN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimalE", !30, i64 0, !30, i64 8, !69, i64 16, !30, i64 32, !70, i64 40}
!72 = !{!71, !30, i64 32}
!73 = !{!71, !30, i64 8}
!74 = !{!71, !30, i64 0}
!75 = !{}
!76 = !{i64 8}
!77 = !{!70, !53, i64 0}
!78 = !{i8 0, i8 2}
!79 = !{!"_ZTSN4absl12lts_2026052611FunctionRefIFvNS0_19str_format_internal12_GLOBAL__N_124FractionalDigitGeneratorEEEE", !17, i64 0, !33, i64 8}
!80 = !{!"_ZTSZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEEEUlNS0_4SpanIjEEE_", !79, i64 0, !31, i64 16, !18, i64 32}
!81 = !{!80, !18, i64 32}
!82 = !{!"llvm.loop.unswitch.partial.disable"}
!83 = !{i64 4}
!84 = !{i64 16}
!85 = !{!35, !35, i64 0}
!86 = !{i64 0, i64 1, !26, i64 8, i64 8, !32, i64 16, i64 8, !39, i64 24, i64 8, !85}
!87 = distinct !{!87, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19DecomposeIeEENS2_10DecomposedIT_EES5_"}
!88 = distinct !{!88, !87, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19DecomposeIeEENS2_10DecomposedIT_EES5_: argument 0"}
!89 = distinct !{!89, !48}
!90 = distinct !{!90, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_131PrintFractionalDigitsScientificENS0_7uint128EPcimb"}
!91 = distinct !{!91, !90, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_131PrintFractionalDigitsScientificENS0_7uint128EPcimb: argument 0"}
!92 = distinct !{!92, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_131PrintFractionalDigitsScientificENS0_7uint128EPcimb"}
!93 = distinct !{!93, !92, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_131PrintFractionalDigitsScientificENS0_7uint128EPcimb: argument 0"}
!94 = distinct !{!94, !48}
!95 = distinct !{!95, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_131PrintFractionalDigitsScientificENS0_7uint128EPcimb"}
!96 = distinct !{!96, !95, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_131PrintFractionalDigitsScientificENS0_7uint128EPcimb: argument 0"}
!97 = distinct !{!97, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_131PrintFractionalDigitsScientificENS0_7uint128EPcimb"}
!98 = distinct !{!98, !97, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_131PrintFractionalDigitsScientificENS0_7uint128EPcimb: argument 0"}
!99 = distinct !{!99, !48}
!100 = distinct !{!100, !48}
!101 = !{!88}
!102 = !{!"_ZTSN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110DecomposedIeEE", !31, i64 0, !18, i64 16}
!103 = !{!102, !18, i64 16}
!104 = !{!91}
!105 = !{!93}
!106 = !{!52, !52, i64 0}
!107 = !{!96}
!108 = !{!98}
!109 = distinct !{!109, !48}
!110 = distinct !{!110, !48}
!111 = distinct !{!111, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_131PrintFractionalDigitsScientificEmPcimb"}
!112 = distinct !{!112, !111, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_131PrintFractionalDigitsScientificEmPcimb: argument 0"}
!113 = distinct !{!113, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_131PrintFractionalDigitsScientificENS0_7uint128EPcimb"}
!114 = distinct !{!114, !113, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_131PrintFractionalDigitsScientificENS0_7uint128EPcimb: argument 0"}
!115 = distinct !{!115, !48}
!116 = distinct !{!116, !48}
!117 = !{!112}
!118 = !{!114}
!119 = !{!"branch_weights", i32 127, i32 1}
!120 = !{!"branch_weights", i32 255873, i32 127}
!121 = distinct !{!121, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE"}
!122 = distinct !{!122, !121, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE: argument 0"}
!123 = !{!122}
!124 = distinct !{!124, !48}
!125 = distinct !{!125, !48}
!126 = distinct !{!126, !48}
!127 = distinct !{!127, !48}
!128 = distinct !{null, null, null, null, null}
!129 = !{!66, !33, i64 8}
!130 = distinct !{!130, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE"}
!131 = distinct !{!131, !130, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE: argument 0"}
!132 = distinct !{null, null, null, null, null, null, null}
!133 = distinct !{null, null, null, null, null, null, null}
!134 = distinct !{null, null, null, null, null, null}
!135 = distinct !{!135, !64}
!136 = !{!"_ZTSZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS2_11FormatStateEbE3$_0", !44, i64 0, !46, i64 8}
!137 = !{!136, !44, i64 0}
!138 = !{!131}
!139 = !{!136, !46, i64 8}
!140 = distinct !{!140, !48}
!141 = distinct !{null, null, null, null, null}
!142 = !{!79, !33, i64 8}
!143 = distinct !{null, null, null, null, null, null, null}
!144 = !{!"_ZTSZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateEmE3$_0", !44, i64 0, !49, i64 8}
!145 = !{!144, !44, i64 0}
!146 = !{!144, !49, i64 8}
!147 = distinct !{!147, !48}
!148 = distinct !{!148, !48}
!149 = distinct !{null, null, null}
!150 = distinct !{null, null}
!151 = distinct !{!151, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE"}
!152 = distinct !{!152, !151, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE: argument 0"}
!153 = !{!152}
!154 = distinct !{!154, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE"}
!155 = distinct !{!155, !154, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE: argument 0"}
!156 = distinct !{null, null, null, null, null, null, null}
!157 = distinct !{null, null, null, null, null, null, null, null}
!158 = distinct !{null, null, null, null, null, null, null}
!159 = distinct !{null, null, null, null, null, null}
!160 = !{!"_ZTSZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmE3$_0", !44, i64 0, !49, i64 8, !46, i64 16}
!161 = !{!160, !44, i64 0}
!162 = !{!160, !49, i64 8}
!163 = !{!155}
!164 = !{!160, !46, i64 16}
!165 = distinct !{!165, !48}
!166 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !30, i64 0, !58, i64 8}
!167 = !{!166, !30, i64 0}
!168 = !{!166, !58, i64 8}
!169 = !{!58, !58, i64 0}
!170 = distinct !{!170, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE"}
!171 = distinct !{!171, !170, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE: argument 0"}
!172 = distinct !{null, null, null, null, null, null, null}
!173 = distinct !{null, null, null, null, null, null, null}
!174 = distinct !{null, null, null, null, null, null}
!175 = !{!"_ZTSZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatENegativeExpSlowENS0_7uint128EibRKNS2_11FormatStateEmE3$_0", !44, i64 0, !49, i64 8, !46, i64 16}
!176 = !{!175, !44, i64 0}
!177 = !{!175, !49, i64 8}
!178 = !{!171}
!179 = !{!175, !46, i64 16}
!180 = !{!"_ZTSZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatGPositiveExpSlowINS0_7uint128EEEvT_ibRKNS2_11FormatStateEEUlNS2_15BinaryToDecimalEE_", !44, i64 0, !52, i64 8, !53, i64 16, !46, i64 24}
!181 = !{!180, !44, i64 0}
!182 = !{!180, !52, i64 8}
!183 = !{!180, !53, i64 16}
!184 = !{!180, !46, i64 24}
!185 = !{!"_ZTSZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatGNegativeExpSlowINS0_7uint128EEEvT_ibRKNS2_11FormatStateEEUlNS2_24FractionalDigitGeneratorEE_", !44, i64 0, !52, i64 8, !53, i64 16, !46, i64 24}
!186 = !{!185, !44, i64 0}
!187 = !{!185, !52, i64 8}
!188 = !{!185, !53, i64 16}
!189 = !{!185, !46, i64 24}
!190 = distinct !{!190, !"LVerDomain"}
!191 = distinct !{!191, !190}
!192 = distinct !{!192, !190}
!193 = distinct !{!193, !48, !214, !215}
!194 = distinct !{!194, !48, !214, !215}
!195 = distinct !{!195, !217}
!196 = distinct !{!196, !48, !214}
!197 = distinct !{!197, !"LVerDomain"}
!198 = distinct !{!198, !197}
!199 = distinct !{!199, !197}
!200 = distinct !{!200, !48, !214, !215}
!201 = distinct !{!201, !48, !214, !215}
!202 = distinct !{!202, !217}
!203 = distinct !{!203, !48, !214}
!204 = distinct !{!204, !"LVerDomain"}
!205 = distinct !{!205, !204}
!206 = distinct !{!206, !204}
!207 = distinct !{!207, !48, !214, !215}
!208 = distinct !{!208, !48, !214, !215}
!209 = distinct !{!209, !217}
!210 = distinct !{!210, !48}
!211 = distinct !{!211, !48, !214}
!212 = !{!191}
!213 = !{!192}
!214 = !{!"llvm.loop.isvectorized", i32 1}
!215 = !{!"llvm.loop.unroll.runtime.disable"}
!216 = !{!"branch_weights", i32 8, i32 24}
!217 = !{!"llvm.loop.unroll.disable"}
!218 = !{!198}
!219 = !{!199}
!220 = !{!"branch_weights", i32 4, i32 28}
!221 = !{!205}
!222 = !{!206}
!223 = distinct !{!223, !48}
!224 = distinct !{!224, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_131PrintFractionalDigitsScientificEmPcimb"}
!225 = distinct !{!225, !224, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_131PrintFractionalDigitsScientificEmPcimb: argument 0"}
!226 = distinct !{!226, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_131PrintFractionalDigitsScientificENS0_7uint128EPcimb"}
!227 = distinct !{!227, !226, !"_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_131PrintFractionalDigitsScientificENS0_7uint128EPcimb: argument 0"}
!228 = !{!225}
!229 = !{!227}
!230 = !{!"_ZTSZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatGPositiveExpSlowImEEvT_ibRKNS2_11FormatStateEEUlNS2_15BinaryToDecimalEE_", !44, i64 0, !49, i64 8, !53, i64 16, !46, i64 24}
!231 = !{!230, !44, i64 0}
!232 = !{!230, !49, i64 8}
!233 = !{!230, !53, i64 16}
!234 = !{!230, !46, i64 24}
!235 = !{!"_ZTSZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatGNegativeExpSlowImEEvT_ibRKNS2_11FormatStateEEUlNS2_24FractionalDigitGeneratorEE_", !44, i64 0, !49, i64 8, !53, i64 16, !46, i64 24}
!236 = !{!235, !44, i64 0}
!237 = !{!235, !49, i64 8}
!238 = !{!235, !53, i64 16}
!239 = !{!235, !46, i64 24}
end_hunk_1
