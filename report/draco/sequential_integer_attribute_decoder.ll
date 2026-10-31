Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_decoder?download=true
inline.NumInlined: 2410
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20DecodePredictionDataEPNS_13DecoderBufferE:bb.a
  %i.ep = xor i64 %i.eo, -1
  %i.eq = load i64, ptr %i.el, align 8, !tbaa !186
  %i.er = and i64 %i.eq, %i.ep
  br label %_ZNSt14_Bit_referenceaSEb.exit.2

bb.ah:                                            ; preds = %bb.af
  %i.es = load i64, ptr %i.el, align 8, !tbaa !186
  %i.et = or i64 %i.es, %i.eo
  br label %_ZNSt14_Bit_referenceaSEb.exit.2

_ZNSt14_Bit_referenceaSEb.exit.2:                 ; preds = %bb.ah, %bb.ag
  %storemerge.2 = phi i64 [ %i.er, %bb.ag ], [ %i.et, %bb.ah ]
  store i64 %storemerge.2, ptr %i.el, align 8, !tbaa !186
  %i.eu = add nuw i32 %.047.2, 1                  ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.eu, %i.dc
  br i1 %exitcond.2.not, label %bb.ai, label %.preheader.2, !llvm.loop !355

bb.ai:                                            ; preds = %_ZNSt14_Bit_referenceaSEb.exit.2
  call void @_ZN5draco14RAnsBitDecoderD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ev = call fastcc noundef zeroext i1 @_ZN5draco12_GLOBAL__N_120DecodeVarintUnsignedIjEEbiPT_PNS_13DecoderBufferE(i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %1)
  br i1 %i.ev, label %bb.ak, label %.loopexit46

bb.ak:                                            ; preds = %bb.aj
  %i.ew = load i32, ptr %i.a, align 4, !tbaa !102 ; 6 uses
  %i.ex = load ptr, ptr %i.m, align 8, !tbaa !127
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 160
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !203 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !208
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !204
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = lshr exact i64 %i.ff, 2
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = icmp ugt i32 %i.ew, %i.fh
  br i1 %i.fi, label %.loopexit46, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not31.3 = icmp eq i32 %i.ew, 0
  br i1 %.not31.3, label %bb.au, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.fk = zext i32 %i.ew to i64                   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !143 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !144 ; 2 uses
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !143 ; 2 uses
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = shl nsw i64 %i.fs, 3
  %i.fu = zext i32 %i.fo to i64
  %i.fv = add nsw i64 %i.ft, %i.fu                ; 2 uses
  %i.fw = icmp ugt i64 %i.fv, %i.fk
  br i1 %i.fw, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fx = sub nuw nsw i64 %i.fk, %i.fv
  call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.fj, ptr %i.fm, i32 %i.fo, i64 noundef %i.fx, i1 noundef zeroext false)
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.3

bb.ao:                                            ; preds = %bb.am
  %i.fy = lshr i32 %i.ew, 6
  %.zext.3 = zext nneg i32 %i.fy to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.zext.3
  %i.ga = and i32 %i.ew, 63
  store ptr %i.fz, ptr %i.fl, align 8
  store i32 %i.ga, ptr %i.fn, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.3

_ZNSt6vectorIbSaIbEE6resizeEmb.exit.3:            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN5draco14RAnsBitDecoderC1Ev(ptr noundef nonnull align 8 dereferenceable(17) %2)
  %i.gb = invoke noundef zeroext i1 @_ZN5draco14RAnsBitDecoder13StartDecodingEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull %1)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.3
  br i1 %i.gb, label %.preheader.3, label %.critedge

.preheader.3:                                     ; preds = %bb.ap, %_ZNSt14_Bit_referenceaSEb.exit.3
  %.047.3 = phi i32 [ %i.go, %_ZNSt14_Bit_referenceaSEb.exit.3 ], [ 0, %bb.ap ] ; 3 uses
  %i.gc = invoke noundef zeroext i1 @_ZN5draco14RAnsBitDecoder13DecodeNextBitEv(ptr noundef nonnull align 8 dereferenceable(17) %2)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %.preheader.3
  %i.gd = load ptr, ptr %i.fj, align 8, !tbaa !143
  %i.ge = lshr i32 %.047.3, 6
  %.zext44.3 = zext nneg i32 %i.ge to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.zext44.3 ; 3 uses
  %i.gg = and i32 %.047.3, 63
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = shl nuw i64 1, %i.gh                    ; 2 uses
  br i1 %i.gc, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gj = xor i64 %i.gi, -1
  %i.gk = load i64, ptr %i.gf, align 8, !tbaa !186
  %i.gl = and i64 %i.gk, %i.gj
  br label %_ZNSt14_Bit_referenceaSEb.exit.3

bb.as:                                            ; preds = %bb.aq
  %i.gm = load i64, ptr %i.gf, align 8, !tbaa !186
  %i.gn = or i64 %i.gm, %i.gi
  br label %_ZNSt14_Bit_referenceaSEb.exit.3

_ZNSt14_Bit_referenceaSEb.exit.3:                 ; preds = %bb.as, %bb.ar
  %storemerge.3 = phi i64 [ %i.gl, %bb.ar ], [ %i.gn, %bb.as ]
  store i64 %storemerge.3, ptr %i.gf, align 8, !tbaa !186
  %i.go = add nuw i32 %.047.3, 1                  ; 2 uses
  %exitcond.3.not = icmp eq i32 %i.go, %i.ew
  br i1 %exitcond.3.not, label %bb.at, label %.preheader.3, !llvm.loop !355

bb.at:                                            ; preds = %_ZNSt14_Bit_referenceaSEb.exit.3
  call void @_ZN5draco14RAnsBitDecoderD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !54 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !55 ; 3 uses
  %i.gt = add i64 %i.gs, 4                        ; 3 uses
  %.not.i.i = icmp slt i64 %i.gq, %i.gt
  br i1 %.not.i.i, label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE20DecodePredictionDataEPNS_13DecoderBufferE.exit, label %bb.av

.critedge:                                        ; preds = %bb.ap, %bb.ae, %bb.t, %bb.i
  call void @_ZN5draco14RAnsBitDecoderD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit46

.loopexit46:                                      ; preds = %bb.c, %bb.d, %bb.n, %bb.o, %bb.y, %bb.z, %bb.aj, %bb.ak, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE20DecodePredictionDataEPNS_13DecoderBufferE.exit

bb.av:                                            ; preds = %bb.au
  %i.gu = load ptr, ptr %1, align 8, !tbaa !56    ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 %i.gs
  %i.gw = load i32, ptr %i.gv, align 1            ; 3 uses
  store i64 %i.gt, ptr %i.gr, align 8, !tbaa !55
  %i.gx = add i64 %i.gs, 8                        ; 2 uses
  %.not14.i.i = icmp slt i64 %i.gq, %i.gx
  br i1 %.not14.i.i, label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE20DecodePredictionDataEPNS_13DecoderBufferE.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gy = getelementptr inbounds i8, ptr %i.gu, i64 %i.gt
  %i.gz = load i32, ptr %i.gy, align 1            ; 3 uses
  store i64 %i.gx, ptr %i.gr, align 8, !tbaa !55
  %i.ha = icmp sgt i32 %i.gw, %i.gz
  br i1 %i.ha, label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE20DecodePredictionDataEPNS_13DecoderBufferE.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.gw, ptr %i.hb, align 4, !tbaa !174
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.gz, ptr %i.hc, align 8, !tbaa !175
  %i.hd = sext i32 %i.gz to i64
  %i.he = sext i32 %i.gw to i64
  %i.hf = sub nsw i64 %i.hd, %i.he                ; 2 uses
  %or.cond.i.i.i = icmp ult i64 %i.hf, 2147483647
  br i1 %or.cond.i.i.i, label %bb.ay, label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE20DecodePredictionDataEPNS_13DecoderBufferE.exit

bb.ay:                                            ; preds = %bb.ax
  %i.hg = trunc nuw nsw i64 %i.hf to i32          ; 2 uses
  %i.hh = add nuw nsw i32 %i.hg, 1                ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !176
  %i.hj = lshr i32 %i.hh, 1                       ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.hj, ptr %i.hk, align 8, !tbaa !177
  %i.hl = sub nsw i32 0, %i.hj
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !178
  %i.hn = and i32 %i.hg, 1
  %.not.i.i.i = icmp eq i32 %i.hn, 0
  br i1 %.not.i.i.i, label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE20DecodePredictionDataEPNS_13DecoderBufferE.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ho = add nsw i32 %i.hj, -1
  store i32 %i.ho, ptr %i.hk, align 8, !tbaa !177
  br label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE20DecodePredictionDataEPNS_13DecoderBufferE.exit

_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE20DecodePredictionDataEPNS_13DecoderBufferE.exit: ; preds = %bb.b, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %.loopexit46, %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit
  %.7 = phi i1 [ true, %bb.az ], [ false, %.loopexit46 ], [ false, %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit ], [ false, %bb.au ], [ false, %bb.aw ], [ false, %bb.av ], [ false, %bb.ax ], [ true, %bb.ay ], [ false, %bb.b ]
  ret i1 %.7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(260) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %6 = alloca [4 x %"class.std::vector.10"], align 16 ; 32 uses
  %i.b = alloca i32, align 4                      ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  store i32 %4, ptr %i.c, align 8, !tbaa !179
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = sext i32 %4 to i64                       ; 22 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118  ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = sub nuw nsw i64 %i.e, %i.l
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.n)
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.l, %i.e
  br i1 %i.o, label %bb.d, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.p
  br i1 %.not.i.i.i, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.d
  store ptr %i.p, ptr %i.f, align 8, !tbaa !118
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit

_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %6, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !102
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %bb.p

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8              ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !102  ; 3 uses
  %i.v = load i32, ptr %i.q, align 8, !tbaa !175  ; 2 uses
  %i.w = icmp sgt i32 %i.u, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i
  store i32 %i.v, ptr %i.x, align 4, !tbaa !102
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.r, align 4, !tbaa !174  ; 2 uses
  %i.z = icmp slt i32 %i.u, %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.y, ptr %i.aa, align 4, !tbaa !102
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %i.u, ptr %i.aa, align 4, !tbaa !102
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ab = load i32, ptr %i.c, align 8, !tbaa !179 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i.i, %i.ac
  br i1 %i.ad, label %bb.e, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i: ; preds = %bb.j
  %i.ae = icmp sgt i32 %i.ab, 0
  br i1 %i.ae, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

.lr.ph.i:                                         ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !102
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !102
  %i.ak = add i32 %i.aj, %i.ah                    ; 5 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !102
  %i.am = load i32, ptr %i.q, align 8, !tbaa !175
  %i.an = icmp sgt i32 %i.ak, %i.am
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %i.af, align 4, !tbaa !176
  %i.ap = sub nsw i32 %i.ak, %i.ao
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.aq = load i32, ptr %i.r, align 4, !tbaa !174
  %i.ar = icmp slt i32 %i.ak, %i.aq
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = load i32, ptr %i.af, align 4, !tbaa !176
  %i.at = add nsw i32 %i.as, %i.ak
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %bb.l
  %.sink.i = phi i32 [ %i.ap, %bb.l ], [ %i.at, %bb.n ]
  store i32 %.sink.i, ptr %i.al, align 4, !tbaa !102
  br label %bb.o

bb.o:                                             ; preds = %.sink.split.i, %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = load i32, ptr %i.c, align 8, !tbaa !179
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next.i, %i.av
  br i1 %i.aw, label %bb.k, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, !llvm.loop !2

bb.p:                                             ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr null, i64 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge311 unwind label %bb.z

._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge311: ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.phi.trans.insert312 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert312, align 16, !tbaa !118
  %.pre314 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge311
  %i.ax = phi ptr [ %.pre314, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge311 ], [ null, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit ] ; 2 uses
  %i.ay = phi ptr [ %.pre, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge311 ], [ null, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !102
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2                 ; 3 uses
  %i.be = icmp ult i64 %i.bd, %i.e
  br i1 %i.be, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.bf = icmp ugt i64 %i.bd, %i.e
  br i1 %i.bf, label %bb.r, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.e ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.ay, %i.bg
  br i1 %.not.i.i.1, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1:      ; preds = %bb.r
  store ptr %i.bg, ptr %i.az, align 16, !tbaa !118
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bi = sub nuw nsw i64 %i.e, %i.bd
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr %i.ay, i64 noundef %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1 unwind label %bb.z

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1:          ; preds = %bb.s, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !102
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !118 ; 3 uses
  %i.bm = load ptr, ptr %i.bj, align 16, !tbaa !58 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2                 ; 3 uses
  %i.br = icmp ult i64 %i.bq, %i.e
  br i1 %i.br, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1
  %i.bs = icmp ugt i64 %i.bq, %i.e
  br i1 %i.bs, label %bb.u, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.e ; 2 uses
  %.not.i.i.2 = icmp eq ptr %i.bl, %i.bt
  br i1 %.not.i.i.2, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2:      ; preds = %bb.u
  store ptr %i.bt, ptr %i.bk, align 8, !tbaa !118
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1
  %i.bu = sub nuw nsw i64 %i.e, %i.bq
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr %i.bl, i64 noundef %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2 unwind label %bb.z

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2:          ; preds = %bb.v, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !102
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 16, !tbaa !118 ; 3 uses
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !58 ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2                 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %i.e
  br i1 %i.cd, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2
  %i.ce = icmp ugt i64 %i.cc, %i.e
  br i1 %i.ce, label %bb.x, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.e ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.bx, %i.cf
  br i1 %.not.i.i.3, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3:      ; preds = %bb.x
  store ptr %i.cf, ptr %i.bw, align 16, !tbaa !118
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2
  %i.cg = sub nuw nsw i64 %i.e, %i.cc
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr %i.bx, i64 noundef %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3 unwind label %bb.z

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3:          ; preds = %bb.y, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.ch = load ptr, ptr %6, align 16, !tbaa !58
  %i.ci = load i32, ptr %i.c, align 8, !tbaa !179
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

bb.z:                                             ; preds = %bb.y, %bb.v, %bb.s, %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.bz

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit: ; preds = %bb.o, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !127 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !129
  %i.cp = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader unwind label %bb.ac ; 4 uses

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false), !tbaa !102
  %i.cq = icmp slt i32 %4, 0
  br i1 %i.cq, label %bb.aa, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.noexc132 unwind label %bb.ad

.noexc132:                                        ; preds = %bb.aa
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.not.i.i.i.i = icmp eq i32 %4, 0               ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cr = shl nuw nsw i64 %i.e, 2
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #19
          to label %.noexc133 unwind label %bb.ad ; 5 uses

.noexc133:                                        ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.e ; 2 uses
  store i32 0, ptr %i.cs, align 4, !tbaa !102
  %i.cu = add nsw i64 %i.e, -1                    ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc133
  %i.cw = getelementptr i8, ptr %i.cs, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cw, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !102
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc133, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14.0 = phi ptr [ %i.ct, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ct, %.noexc133 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0208.0 = phi ptr [ %i.cs, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cs, %.noexc133 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 18 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !128 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !182
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !183 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 2                 ; 4 uses
  %i.dg = trunc i64 %i.df to i32
  %.not126270 = icmp slt i32 %i.dg, 2
  br i1 %.not126270, label %.critedge130, label %.lr.ph273

.lr.ph273:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 160 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 14 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.dn = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %umax307 = call i64 @llvm.umax.i64(i64 %i.df, i64 1) ; 2 uses
  %wide.trip.count309 = and i64 %i.df, 2147483647
  %scevgep = getelementptr i8, ptr %.sroa.0208.0, i64 %i.dn
  %min.iters.check396 = icmp ult i32 %4, 12
  %n.vec398 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n409 = icmp eq i64 %n.vec398, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.do = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check378 = icmp ult i32 %4, 8
  %n.vec380 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n389 = icmp eq i64 %n.vec380, %wide.trip.count.i
  %xtraiter416 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod417.not = icmp eq i64 %xtraiter416, 0
  %min.iters.check = icmp ult i32 %4, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %bb.ae

bb.ac:                                            ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit186

bb.ae:                                            ; preds = %.lr.ph273, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169
  %indvars.iv304 = phi i64 [ 1, %.lr.ph273 ], [ %indvars.iv.next305, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169 ] ; 9 uses
  %exitcond308.not = icmp eq i64 %indvars.iv304, %umax307
  br i1 %exitcond308.not, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %umax307, i64 noundef %i.df) #20
          to label %.noexc135 unwind label %bb.aj

.noexc135:                                        ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv304
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !185 ; 6 uses
  %.not233250 = icmp eq i32 %i.ds, -1
  br i1 %.not233250, label %.thread230, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ag
  %i.dt = load ptr, ptr %i.cm, align 8, !tbaa !143, !noalias !403
  %i.du = urem i32 %i.ds, 3
  %.not.i.i.i150 = icmp ne i32 %i.du, 0           ; 2 uses
  %i.dv = add i32 %i.ds, -1
  %i.dw = add i32 %i.ds, 2                        ; 2 uses
  %i.dx = icmp ne i32 %i.dw, -1
  %brmerge = or i1 %.not.i.i.i150, %i.dx
  %.mux = select i1 %.not.i.i.i150, i32 %i.dv, i32 %i.dw ; 3 uses
  %i.dy = lshr i32 %.mux, 6
  %.zext.i.i.i153 = zext nneg i32 %i.dy to i64
  %i.dz = and i32 %.mux, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = zext i32 %.mux to i64
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159
  %.083253 = phi i1 [ true, %.lr.ph ], [ %.184, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159 ] ; 3 uses
  %.085252 = phi i32 [ 0, %.lr.ph ], [ %.186, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159 ] ; 5 uses
  %.sroa.0198.0251 = phi i32 [ %i.ds, %.lr.ph ], [ %.sroa.0198.2, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159 ] ; 8 uses
  %i.ed = sext i32 %.085252 to i64
  %i.ee = getelementptr inbounds [24 x i8], ptr %6, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !58 ; 5 uses
  %i.eg = ptrtoaddr ptr %i.ef to i64              ; 2 uses
  %i.eh = lshr i32 %.sroa.0198.0251, 6
  %.zext.i.i.i = zext nneg i32 %i.eh to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.zext.i.i.i
  %i.ej = and i32 %.sroa.0198.0251, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl nuw i64 1, %i.ek
  %i.em = load i64, ptr %i.ei, align 8, !tbaa !186, !noalias !403
  %i.en = and i64 %i.em, %i.el
  %.not.i.i136 = icmp eq i64 %i.en, 0
  br i1 %.not.i.i136, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.ah
  %i.eo = load ptr, ptr %i.dh, align 8, !tbaa !203, !noalias !403
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = zext i32 %.sroa.0198.0251 to i64
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !183, !noalias !404
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.eq
  %i.et = load i32, ptr %i.es, align 4, !tbaa !185, !noalias !404 ; 5 uses
  %i.eu = icmp eq i32 %i.et, -1
  br i1 %i.eu, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread, label %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ev = zext i32 %i.et to i64
  %i.ew = load ptr, ptr %i.di, align 8, !tbaa !204, !noalias !405 ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ev
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !206, !noalias !405
  %i.ez = zext i32 %i.ey to i64
  %i.fa = load ptr, ptr %i.co, align 8, !tbaa !58 ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ez
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !102 ; 2 uses
  %i.fd = insertelement <2 x i32> poison, i32 %i.et, i64 0
  %i.fe = shufflevector <2 x i32> %i.fd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ff = add nuw <2 x i32> %i.fe, <i32 0, i32 1>
  %i.fg = urem <2 x i32> %i.ff, splat (i32 3)
  %i.fh = icmp eq <2 x i32> %i.fg, zeroinitializer ; 2 uses
  %i.fi = extractelement <2 x i1> %i.fh, i64 1
  %spec.select.i.i.i.i.v = select i1 %i.fi, i32 -2, i32 1
  %spec.select.i.i.i.i = add i32 %i.et, %spec.select.i.i.i.i.v
  %i.fj = zext i32 %spec.select.i.i.i.i to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !206, !noalias !406
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !102 ; 2 uses
  %i.fp = extractelement <2 x i1> %i.fh, i64 0
  %.sink.i.i12.i.v.i = select i1 %i.fp, i32 2, i32 -1
  %.sink.i.i12.i.i = add i32 %.sink.i.i12.i.v.i, %i.et
  %i.fq = zext i32 %.sink.i.i12.i.i to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !206, !noalias !407
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !102 ; 2 uses
  %i.fw = sext i32 %i.fc to i64
  %i.fx = icmp sgt i64 %indvars.iv304, %i.fw
  %i.fy = sext i32 %i.fo to i64
  %i.fz = icmp sgt i64 %indvars.iv304, %i.fy
  %or.cond.i = select i1 %i.fx, i1 %i.fz, i1 false
  %i.ga = sext i32 %i.fv to i64
  %i.gb = icmp sgt i64 %indvars.iv304, %i.ga
  %or.cond40.i = select i1 %or.cond.i, i1 %i.gb, i1 false
  br i1 %or.cond40.i, label %bb.ai, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.ai:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ai
  %i.gc = mul nsw i32 %i.fv, %4
  %i.gd = mul nsw i32 %i.fo, %4
  %i.ge = mul nsw i32 %i.fc, %4
  %i.gf = sext i32 %i.gd to i64                   ; 2 uses
  %i.gg = sext i32 %i.gc to i64                   ; 2 uses
  %i.gh = sext i32 %i.ge to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %2, i64 %i.gf ; 4 uses
  %invariant.gep48.i = getelementptr [4 x i8], ptr %2, i64 %i.gg ; 4 uses
  %invariant.gep50.i = getelementptr [4 x i8], ptr %2, i64 %i.gh ; 4 uses
  br i1 %min.iters.check396, label %.lr.ph.i138.preheader, label %vector.memcheck391

vector.memcheck391:                               ; preds = %.lr.ph.preheader.i
  %7 = sub i64 %i.eg, %i.a                        ; 2 uses
  %8 = shl nsw i64 %i.gh, 2
  %i.gi = sub i64 %8, %7
  %diff.check = icmp ugt i64 %i.gi, -32
  %i.gj = shl nsw i64 %i.gg, 2
  %i.gk = sub i64 %i.gj, %7
  %diff.check392 = icmp ugt i64 %i.gk, -32
  %conflict.rdx = or i1 %diff.check, %diff.check392
  %i.gl = shl nsw i64 %i.gf, 2
  %9 = add i64 %i.gl, %i.a
  %i.gm = sub i64 %9, %i.eg
  %diff.check393 = icmp ugt i64 %i.gm, -32
  %conflict.rdx394 = or i1 %conflict.rdx, %diff.check393
  br i1 %conflict.rdx394, label %.lr.ph.i138.preheader, label %vector.body399

vector.body399:                                   ; preds = %vector.memcheck391, %vector.body399
  %index400 = phi i64 [ %index.next407, %vector.body399 ], [ 0, %vector.memcheck391 ] ; 5 uses
  %i.gn = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index400 ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 16
  %wide.load401 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !102
  %wide.load402 = load <4 x i32>, ptr %i.go, align 4, !tbaa !102
  %i.gp = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %index400 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 16
  %wide.load403 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !102
  %wide.load404 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !102
  %i.gr = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %index400 ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  %wide.load405 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !102
  %wide.load406 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !102
  %i.gt = add <4 x i32> %wide.load403, %wide.load401
  %i.gu = add <4 x i32> %wide.load404, %wide.load402
  %i.gv = sub <4 x i32> %i.gt, %wide.load405
  %i.gw = sub <4 x i32> %i.gu, %wide.load406
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %index400 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store <4 x i32> %i.gv, ptr %i.gx, align 4, !tbaa !102
  store <4 x i32> %i.gw, ptr %i.gy, align 4, !tbaa !102
  %index.next407 = add nuw i64 %index400, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next407, %n.vec398
  br i1 %i.gz, label %middle.block408, label %vector.body399, !llvm.loop !372

middle.block408:                                  ; preds = %vector.body399
  br i1 %cmp.n409, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i138.preheader

.lr.ph.i138.preheader:                            ; preds = %vector.memcheck391, %.lr.ph.preheader.i, %middle.block408
  %indvars.iv.i139.ph = phi i64 [ 0, %vector.memcheck391 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec398, %middle.block408 ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i138.prol.loopexit, label %.lr.ph.i138.prol

.lr.ph.i138.prol:                                 ; preds = %.lr.ph.i138.preheader
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i139.ph
  %i.ha = load i32, ptr %gep.i.prol, align 4, !tbaa !102
  %gep49.i.prol = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.i139.ph
  %i.hb = load i32, ptr %gep49.i.prol, align 4, !tbaa !102
  %gep51.i.prol = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.i139.ph
  %i.hc = load i32, ptr %gep51.i.prol, align 4, !tbaa !102
  %i.hd = add i32 %i.hb, %i.ha
  %i.he = sub i32 %i.hd, %i.hc
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i139.ph
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !102
  %indvars.iv.next.i140.prol = or disjoint i64 %indvars.iv.i139.ph, 1
  br label %.lr.ph.i138.prol.loopexit

.lr.ph.i138.prol.loopexit:                        ; preds = %.lr.ph.i138.prol, %.lr.ph.i138.preheader
  %indvars.iv.i139.unr = phi i64 [ %indvars.iv.i139.ph, %.lr.ph.i138.preheader ], [ %indvars.iv.next.i140.prol, %.lr.ph.i138.prol ]
  %i.hg = icmp eq i64 %indvars.iv.i139.ph, %i.do
  br i1 %i.hg, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %.lr.ph.i138.prol.loopexit, %.lr.ph.i138
  %indvars.iv.i139 = phi i64 [ %indvars.iv.next.i140.1, %.lr.ph.i138 ], [ %indvars.iv.i139.unr, %.lr.ph.i138.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i139
  %i.hh = load i32, ptr %gep.i, align 4, !tbaa !102
  %gep49.i = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.i139
  %i.hi = load i32, ptr %gep49.i, align 4, !tbaa !102
  %gep51.i = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.i139
  %i.hj = load i32, ptr %gep51.i, align 4, !tbaa !102
  %i.hk = add i32 %i.hi, %i.hh
  %i.hl = sub i32 %i.hk, %i.hj
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i139
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !102
  %indvars.iv.next.i140 = add nuw nsw i64 %indvars.iv.i139, 1 ; 4 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i140
  %i.hn = load i32, ptr %gep.i.1, align 4, !tbaa !102
  %gep49.i.1 = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.next.i140
  %i.ho = load i32, ptr %gep49.i.1, align 4, !tbaa !102
  %gep51.i.1 = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.next.i140
  %i.hp = load i32, ptr %gep51.i.1, align 4, !tbaa !102
  %i.hq = add i32 %i.ho, %i.hn
  %i.hr = sub i32 %i.hq, %i.hp
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.next.i140
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !102
  %indvars.iv.next.i140.1 = add nuw nsw i64 %indvars.iv.i139, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i140.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i138, !llvm.loop !373

_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit: ; preds = %.lr.ph.i138.prol.loopexit, %.lr.ph.i138, %middle.block408, %bb.ai
  %i.ht = add nsw i32 %.085252, 1                 ; 2 uses
  %i.hu = icmp eq i32 %i.ht, 4
  br i1 %i.hu, label %.preheader238, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.aj:                                            ; preds = %bb.af
  %i.hv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %.sroa.0208.0, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIiSaIiEED2Ev.exit186, label %bb.bt

_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread: ; preds = %bb.ah, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %.186 = phi i32 [ %i.ht, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit ], [ %.085252, %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i ], [ %.085252, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ %.085252, %bb.ah ] ; 3 uses
  br i1 %.083253, label %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %bb.am

_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread
  %i.hw = add nuw i32 %.sroa.0198.0251, 1         ; 2 uses
  %i.hx = urem i32 %i.hw, 3
  %.not.i.i.i141 = icmp eq i32 %i.hx, 0
  %i.hy = add i32 %.sroa.0198.0251, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i141, i32 %i.hy, i32 %i.hw ; 4 uses
  %i.hz = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.hz, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ia = load ptr, ptr %i.cm, align 8, !tbaa !143, !noalias !408
  %i.ib = lshr i32 %spec.select.i.i.i, 6
  %.zext.i.i.i142 = zext nneg i32 %i.ib to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.zext.i.i.i142
  %i.id = and i32 %spec.select.i.i.i, 63
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = shl nuw i64 1, %i.ie
  %i.ig = load i64, ptr %i.ic, align 8, !tbaa !186, !noalias !408
  %i.ih = and i64 %i.ig, %i.if
  %.not.i.i143 = icmp eq i64 %i.ih, 0
  br i1 %.not.i.i143, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144: ; preds = %bb.ak
  %i.ii = load ptr, ptr %i.dh, align 8, !tbaa !203, !noalias !408
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = zext i32 %spec.select.i.i.i to i64
  %i.il = load ptr, ptr %i.ij, align 8, !tbaa !183, !noalias !409
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.ik
  %i.in = load i32, ptr %i.im, align 4, !tbaa !185, !noalias !409 ; 3 uses
  %i.io = icmp eq i32 %i.in, -1
  br i1 %i.io, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.al

bb.al:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144
  %i.ip = add nuw i32 %i.in, 1                    ; 2 uses
  %i.iq = urem i32 %i.ip, 3
  %.not.i.i1.i = icmp eq i32 %i.iq, 0
  %i.ir = add i32 %i.in, -2
  %spec.select.i.i2.i = select i1 %.not.i.i1.i, i32 %i.ir, i32 %i.ip
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.am:                                            ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread
  %i.is = urem i32 %.sroa.0198.0251, 3
  %.not.i.i.i145 = icmp eq i32 %i.is, 0
  br i1 %.not.i.i.i145, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.am
  %i.it = add i32 %.sroa.0198.0251, -1
  br label %bb.an

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.am
  %i.iu = add i32 %.sroa.0198.0251, 2             ; 2 uses
  %i.iv = icmp eq i32 %i.iu, -1
  br i1 %i.iv, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.an

bb.an:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i.i9.i = phi i32 [ %i.it, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.iu, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  %i.iw = load ptr, ptr %i.cm, align 8, !tbaa !143, !noalias !410
  %i.ix = lshr i32 %.sink.i.i9.i, 6
  %.zext.i.i.i146 = zext nneg i32 %i.ix to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.zext.i.i.i146
  %i.iz = and i32 %.sink.i.i9.i, 63
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = shl nuw i64 1, %i.ja
  %i.jc = load i64, ptr %i.iy, align 8, !tbaa !186, !noalias !410
  %i.jd = and i64 %i.jb, %i.jc
  %.not.i.i147 = icmp eq i64 %i.jd, 0
  br i1 %.not.i.i147, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148: ; preds = %bb.an
  %i.je = load ptr, ptr %i.dh, align 8, !tbaa !203, !noalias !410
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = zext i32 %.sink.i.i9.i to i64
  %i.jh = load ptr, ptr %i.jf, align 8, !tbaa !183, !noalias !411
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jg
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !185, !noalias !411 ; 4 uses
  %i.jk = icmp eq i32 %i.jj, -1
  br i1 %i.jk, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148
  %i.jl = urem i32 %i.jj, 3
  %.not.i.i1.i149 = icmp eq i32 %i.jl, 0
  br i1 %.not.i.i1.i149, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jm = add i32 %i.jj, -1
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.aq:                                            ; preds = %bb.ao
  %i.jn = add i32 %i.jj, 2
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.an, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148, %bb.ap, %bb.aq, %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.ak, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144, %bb.al
  %.sroa.0198.1 = phi i32 [ -1, %bb.ak ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144 ], [ %spec.select.i.i2.i, %bb.al ], [ -1, %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ %i.jm, %bb.ap ], [ %i.jn, %bb.aq ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148 ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ -1, %bb.an ] ; 3 uses
  %i.jo = icmp eq i32 %.sroa.0198.1, %i.ds
  br i1 %i.jo, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.jp = icmp eq i32 %.sroa.0198.1, -1
  %or.cond = and i1 %.083253, %i.jp
  br i1 %or.cond, label %bb.as, label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159

bb.as:                                            ; preds = %bb.ar
end_hunk_0
begin_hunk_1_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20DecodePredictionDataEPNS_13DecoderBufferE:bb.a

bb.ag:                                            ; preds = %bb.af
  %i.ej = xor i64 %i.ei, -1
  %i.ek = load i64, ptr %i.ef, align 8, !tbaa !186
  %i.el = and i64 %i.ek, %i.ej
  br label %_ZNSt14_Bit_referenceaSEb.exit.2

bb.ah:                                            ; preds = %bb.af
  %i.em = load i64, ptr %i.ef, align 8, !tbaa !186
  %i.en = or i64 %i.em, %i.ei
  br label %_ZNSt14_Bit_referenceaSEb.exit.2

_ZNSt14_Bit_referenceaSEb.exit.2:                 ; preds = %bb.ah, %bb.ag
  %storemerge.2 = phi i64 [ %i.el, %bb.ag ], [ %i.en, %bb.ah ]
  store i64 %storemerge.2, ptr %i.ef, align 8, !tbaa !186
  %i.eo = add nuw i32 %.047.2, 1                  ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.eo, %i.cy
  br i1 %exitcond.2.not, label %bb.ai, label %.preheader.2, !llvm.loop !675

bb.ai:                                            ; preds = %_ZNSt14_Bit_referenceaSEb.exit.2
  call void @_ZN5draco14RAnsBitDecoderD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ep = call fastcc noundef zeroext i1 @_ZN5draco12_GLOBAL__N_120DecodeVarintUnsignedIjEEbiPT_PNS_13DecoderBufferE(i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %1)
  br i1 %i.ep, label %bb.ak, label %.loopexit46

bb.ak:                                            ; preds = %bb.aj
  %i.eq = load i32, ptr %i.a, align 4, !tbaa !102 ; 6 uses
  %i.er = load ptr, ptr %i.m, align 8, !tbaa !133 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !208
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !204
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = lshr exact i64 %i.ex, 2
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = icmp ugt i32 %i.eq, %i.ez
  br i1 %i.fa, label %.loopexit46, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not31.3 = icmp eq i32 %i.eq, 0
  br i1 %.not31.3, label %bb.au, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.fc = zext i32 %i.eq to i64                   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !143 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !144 ; 2 uses
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !143 ; 2 uses
  %i.fi = ptrtoint ptr %i.fe to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = shl nsw i64 %i.fk, 3
  %i.fm = zext i32 %i.fg to i64
  %i.fn = add nsw i64 %i.fl, %i.fm                ; 2 uses
  %i.fo = icmp ugt i64 %i.fn, %i.fc
  br i1 %i.fo, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fp = sub nuw nsw i64 %i.fc, %i.fn
  call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.fb, ptr %i.fe, i32 %i.fg, i64 noundef %i.fp, i1 noundef zeroext false)
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.3

bb.ao:                                            ; preds = %bb.am
  %i.fq = lshr i32 %i.eq, 6
  %.zext.3 = zext nneg i32 %i.fq to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.zext.3
  %i.fs = and i32 %i.eq, 63
  store ptr %i.fr, ptr %i.fd, align 8
  store i32 %i.fs, ptr %i.ff, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.3

_ZNSt6vectorIbSaIbEE6resizeEmb.exit.3:            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN5draco14RAnsBitDecoderC1Ev(ptr noundef nonnull align 8 dereferenceable(17) %2)
  %i.ft = invoke noundef zeroext i1 @_ZN5draco14RAnsBitDecoder13StartDecodingEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull %1)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.3
  br i1 %i.ft, label %.preheader.3, label %.critedge

.preheader.3:                                     ; preds = %bb.ap, %_ZNSt14_Bit_referenceaSEb.exit.3
  %.047.3 = phi i32 [ %i.gg, %_ZNSt14_Bit_referenceaSEb.exit.3 ], [ 0, %bb.ap ] ; 3 uses
  %i.fu = invoke noundef zeroext i1 @_ZN5draco14RAnsBitDecoder13DecodeNextBitEv(ptr noundef nonnull align 8 dereferenceable(17) %2)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %.preheader.3
  %i.fv = load ptr, ptr %i.fb, align 8, !tbaa !143
  %i.fw = lshr i32 %.047.3, 6
  %.zext44.3 = zext nneg i32 %i.fw to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.zext44.3 ; 3 uses
  %i.fy = and i32 %.047.3, 63
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = shl nuw i64 1, %i.fz                    ; 2 uses
  br i1 %i.fu, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gb = xor i64 %i.ga, -1
  %i.gc = load i64, ptr %i.fx, align 8, !tbaa !186
  %i.gd = and i64 %i.gc, %i.gb
  br label %_ZNSt14_Bit_referenceaSEb.exit.3

bb.as:                                            ; preds = %bb.aq
  %i.ge = load i64, ptr %i.fx, align 8, !tbaa !186
  %i.gf = or i64 %i.ge, %i.ga
  br label %_ZNSt14_Bit_referenceaSEb.exit.3

_ZNSt14_Bit_referenceaSEb.exit.3:                 ; preds = %bb.as, %bb.ar
  %storemerge.3 = phi i64 [ %i.gd, %bb.ar ], [ %i.gf, %bb.as ]
  store i64 %storemerge.3, ptr %i.fx, align 8, !tbaa !186
  %i.gg = add nuw i32 %.047.3, 1                  ; 2 uses
  %exitcond.3.not = icmp eq i32 %i.gg, %i.eq
  br i1 %exitcond.3.not, label %bb.at, label %.preheader.3, !llvm.loop !675

bb.at:                                            ; preds = %_ZNSt14_Bit_referenceaSEb.exit.3
  call void @_ZN5draco14RAnsBitDecoderD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !54 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !55 ; 3 uses
  %i.gl = add i64 %i.gk, 4                        ; 3 uses
  %.not.i.i = icmp slt i64 %i.gi, %i.gl
  br i1 %.not.i.i, label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE20DecodePredictionDataEPNS_13DecoderBufferE.exit, label %bb.av

.critedge:                                        ; preds = %bb.ap, %bb.ae, %bb.t, %bb.i
  call void @_ZN5draco14RAnsBitDecoderD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit46

.loopexit46:                                      ; preds = %bb.c, %bb.d, %bb.n, %bb.o, %bb.y, %bb.z, %bb.aj, %bb.ak, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE20DecodePredictionDataEPNS_13DecoderBufferE.exit

bb.av:                                            ; preds = %bb.au
  %i.gm = load ptr, ptr %1, align 8, !tbaa !56    ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 %i.gk
  %i.go = load i32, ptr %i.gn, align 1            ; 3 uses
  store i64 %i.gl, ptr %i.gj, align 8, !tbaa !55
  %i.gp = add i64 %i.gk, 8                        ; 2 uses
  %.not14.i.i = icmp slt i64 %i.gi, %i.gp
  br i1 %.not14.i.i, label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE20DecodePredictionDataEPNS_13DecoderBufferE.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gq = getelementptr inbounds i8, ptr %i.gm, i64 %i.gl
  %i.gr = load i32, ptr %i.gq, align 1            ; 3 uses
  store i64 %i.gp, ptr %i.gj, align 8, !tbaa !55
  %i.gs = icmp sgt i32 %i.go, %i.gr
  br i1 %i.gs, label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE20DecodePredictionDataEPNS_13DecoderBufferE.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.go, ptr %i.gt, align 4, !tbaa !174
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.gr, ptr %i.gu, align 8, !tbaa !175
  %i.gv = sext i32 %i.gr to i64
  %i.gw = sext i32 %i.go to i64
  %i.gx = sub nsw i64 %i.gv, %i.gw                ; 2 uses
  %or.cond.i.i.i = icmp ult i64 %i.gx, 2147483647
  br i1 %or.cond.i.i.i, label %bb.ay, label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE20DecodePredictionDataEPNS_13DecoderBufferE.exit

bb.ay:                                            ; preds = %bb.ax
  %i.gy = trunc nuw nsw i64 %i.gx to i32          ; 2 uses
  %i.gz = add nuw nsw i32 %i.gy, 1                ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !176
  %i.hb = lshr i32 %i.gz, 1                       ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.hb, ptr %i.hc, align 8, !tbaa !177
  %i.hd = sub nsw i32 0, %i.hb
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !178
  %i.hf = and i32 %i.gy, 1
  %.not.i.i.i = icmp eq i32 %i.hf, 0
  br i1 %.not.i.i.i, label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE20DecodePredictionDataEPNS_13DecoderBufferE.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hg = add nsw i32 %i.hb, -1
  store i32 %i.hg, ptr %i.hc, align 8, !tbaa !177
  br label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE20DecodePredictionDataEPNS_13DecoderBufferE.exit

_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE20DecodePredictionDataEPNS_13DecoderBufferE.exit: ; preds = %bb.b, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %.loopexit46, %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit
  %.7 = phi i1 [ true, %bb.az ], [ false, %.loopexit46 ], [ false, %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit ], [ false, %bb.au ], [ false, %bb.aw ], [ false, %bb.av ], [ false, %bb.ax ], [ true, %bb.ay ], [ false, %bb.b ]
  ret i1 %.7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(260) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %6 = alloca [4 x %"class.std::vector.10"], align 16 ; 32 uses
  %i.b = alloca i32, align 4                      ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  store i32 %4, ptr %i.c, align 8, !tbaa !179
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = sext i32 %4 to i64                       ; 22 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118  ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = sub nuw nsw i64 %i.e, %i.l
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.n)
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.l, %i.e
  br i1 %i.o, label %bb.d, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.p
  br i1 %.not.i.i.i, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.d
  store ptr %i.p, ptr %i.f, align 8, !tbaa !118
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit

_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %6, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !102
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %bb.p

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8              ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !102  ; 3 uses
  %i.v = load i32, ptr %i.q, align 8, !tbaa !175  ; 2 uses
  %i.w = icmp sgt i32 %i.u, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i
  store i32 %i.v, ptr %i.x, align 4, !tbaa !102
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.r, align 4, !tbaa !174  ; 2 uses
  %i.z = icmp slt i32 %i.u, %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.y, ptr %i.aa, align 4, !tbaa !102
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %i.u, ptr %i.aa, align 4, !tbaa !102
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ab = load i32, ptr %i.c, align 8, !tbaa !179 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i.i, %i.ac
  br i1 %i.ad, label %bb.e, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i: ; preds = %bb.j
  %i.ae = icmp sgt i32 %i.ab, 0
  br i1 %i.ae, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

.lr.ph.i:                                         ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !102
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !102
  %i.ak = add i32 %i.aj, %i.ah                    ; 5 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !102
  %i.am = load i32, ptr %i.q, align 8, !tbaa !175
  %i.an = icmp sgt i32 %i.ak, %i.am
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %i.af, align 4, !tbaa !176
  %i.ap = sub nsw i32 %i.ak, %i.ao
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.aq = load i32, ptr %i.r, align 4, !tbaa !174
  %i.ar = icmp slt i32 %i.ak, %i.aq
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = load i32, ptr %i.af, align 4, !tbaa !176
  %i.at = add nsw i32 %i.as, %i.ak
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %bb.l
  %.sink.i = phi i32 [ %i.ap, %bb.l ], [ %i.at, %bb.n ]
  store i32 %.sink.i, ptr %i.al, align 4, !tbaa !102
  br label %bb.o

bb.o:                                             ; preds = %.sink.split.i, %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = load i32, ptr %i.c, align 8, !tbaa !179
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next.i, %i.av
  br i1 %i.aw, label %bb.k, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, !llvm.loop !2

bb.p:                                             ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr null, i64 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge304 unwind label %bb.z

._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge304: ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.phi.trans.insert305 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert305, align 16, !tbaa !118
  %.pre307 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge304
  %i.ax = phi ptr [ %.pre307, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge304 ], [ null, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit ] ; 2 uses
  %i.ay = phi ptr [ %.pre, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge304 ], [ null, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !102
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2                 ; 3 uses
  %i.be = icmp ult i64 %i.bd, %i.e
  br i1 %i.be, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.bf = icmp ugt i64 %i.bd, %i.e
  br i1 %i.bf, label %bb.r, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.e ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.ay, %i.bg
  br i1 %.not.i.i.1, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1:      ; preds = %bb.r
  store ptr %i.bg, ptr %i.az, align 16, !tbaa !118
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bi = sub nuw nsw i64 %i.e, %i.bd
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr %i.ay, i64 noundef %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1 unwind label %bb.z

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1:          ; preds = %bb.s, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !102
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !118 ; 3 uses
  %i.bm = load ptr, ptr %i.bj, align 16, !tbaa !58 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2                 ; 3 uses
  %i.br = icmp ult i64 %i.bq, %i.e
  br i1 %i.br, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1
  %i.bs = icmp ugt i64 %i.bq, %i.e
  br i1 %i.bs, label %bb.u, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.e ; 2 uses
  %.not.i.i.2 = icmp eq ptr %i.bl, %i.bt
  br i1 %.not.i.i.2, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2:      ; preds = %bb.u
  store ptr %i.bt, ptr %i.bk, align 8, !tbaa !118
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.1
  %i.bu = sub nuw nsw i64 %i.e, %i.bq
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr %i.bl, i64 noundef %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2 unwind label %bb.z

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2:          ; preds = %bb.v, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !102
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 16, !tbaa !118 ; 3 uses
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !58 ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2                 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %i.e
  br i1 %i.cd, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2
  %i.ce = icmp ugt i64 %i.cc, %i.e
  br i1 %i.ce, label %bb.x, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.e ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.bx, %i.cf
  br i1 %.not.i.i.3, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3:      ; preds = %bb.x
  store ptr %i.cf, ptr %i.bw, align 16, !tbaa !118
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.2
  %i.cg = sub nuw nsw i64 %i.e, %i.cc
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr %i.bx, i64 noundef %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3 unwind label %bb.z

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3:          ; preds = %bb.y, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.ch = load ptr, ptr %6, align 16, !tbaa !58
  %i.ci = load i32, ptr %i.c, align 8, !tbaa !179
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

bb.z:                                             ; preds = %bb.y, %bb.v, %bb.s, %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.bz

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit: ; preds = %bb.o, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.3
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !133 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !135
  %i.cp = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader unwind label %bb.ac ; 4 uses

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false), !tbaa !102
  %i.cq = icmp slt i32 %4, 0
  br i1 %i.cq, label %bb.aa, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.noexc132 unwind label %bb.ad

.noexc132:                                        ; preds = %bb.aa
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.not.i.i.i.i = icmp eq i32 %4, 0               ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cr = shl nuw nsw i64 %i.e, 2
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #19
          to label %.noexc133 unwind label %bb.ad ; 5 uses

.noexc133:                                        ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.e ; 2 uses
  store i32 0, ptr %i.cs, align 4, !tbaa !102
  %i.cu = add nsw i64 %i.e, -1                    ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc133
  %i.cw = getelementptr i8, ptr %i.cs, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cw, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !102
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc133, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14.0 = phi ptr [ %i.ct, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ct, %.noexc133 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0201.0 = phi ptr [ %i.cs, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cs, %.noexc133 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 18 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !134 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !182
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !183 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 2                 ; 4 uses
  %i.dg = trunc i64 %i.df to i32
  %.not126263 = icmp slt i32 %i.dg, 2
  br i1 %.not126263, label %.critedge130, label %.lr.ph266

.lr.ph266:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 14 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.dm = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %umax300 = call i64 @llvm.umax.i64(i64 %i.df, i64 1) ; 2 uses
  %wide.trip.count302 = and i64 %i.df, 2147483647
  %scevgep = getelementptr i8, ptr %.sroa.0201.0, i64 %i.dm
  %min.iters.check390 = icmp ult i32 %4, 12
  %n.vec392 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n403 = icmp eq i64 %n.vec392, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.dn = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check372 = icmp ult i32 %4, 8
  %n.vec374 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n383 = icmp eq i64 %n.vec374, %wide.trip.count.i
  %xtraiter410 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod411.not = icmp eq i64 %xtraiter410, 0
  %min.iters.check = icmp ult i32 %4, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %bb.ae

bb.ac:                                            ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit179

bb.ae:                                            ; preds = %.lr.ph266, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162
  %indvars.iv297 = phi i64 [ 1, %.lr.ph266 ], [ %indvars.iv.next298, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162 ] ; 9 uses
  %exitcond301.not = icmp eq i64 %indvars.iv297, %umax300
  br i1 %exitcond301.not, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %umax300, i64 noundef %i.df) #20
          to label %.noexc135 unwind label %bb.al

.noexc135:                                        ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv297
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !185 ; 6 uses
  %.not226243 = icmp eq i32 %i.dr, -1
  br i1 %.not226243, label %.thread223, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph: ; preds = %bb.ag
  %i.ds = load ptr, ptr %i.dh, align 8, !tbaa !183, !noalias !715
  %i.dt = urem i32 %i.dr, 3
  %.not.i.i145 = icmp ne i32 %i.dt, 0             ; 2 uses
  %i.du = add i32 %i.dr, -1
  %i.dv = add i32 %i.dr, 2                        ; 2 uses
  %i.dw = icmp ne i32 %i.dv, -1
  %brmerge = or i1 %.not.i.i145, %i.dw
  %.mux = select i1 %.not.i.i145, i32 %i.du, i32 %i.dv
  %i.dx = zext i32 %.mux to i64
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152
  %.083246 = phi i1 [ true, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.184, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152 ] ; 3 uses
  %.085245 = phi i32 [ 0, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.186, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152 ] ; 4 uses
  %.sroa.0191.0244 = phi i32 [ %i.dr, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.sroa.0191.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152 ] ; 6 uses
  %i.dy = sext i32 %.085245 to i64
  %i.dz = getelementptr inbounds [24 x i8], ptr %6, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !58 ; 5 uses
  %i.eb = ptrtoaddr ptr %i.ea to i64              ; 2 uses
  %i.ec = zext i32 %.sroa.0191.0244 to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !185, !noalias !715 ; 7 uses
  %i.ef = icmp eq i32 %i.ee, -1
  br i1 %i.ef, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.eg = zext i32 %i.ee to i64
  %i.eh = load ptr, ptr %i.cm, align 8, !tbaa !204, !noalias !716 ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.eg
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !206, !noalias !716
  %i.ek = zext i32 %i.ej to i64
  %i.el = load ptr, ptr %i.co, align 8, !tbaa !58 ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ek
  %i.en = load i32, ptr %i.em, align 4, !tbaa !102 ; 2 uses
  %i.eo = add nuw i32 %i.ee, 1                    ; 2 uses
  %i.ep = urem i32 %i.eo, 3
  %.not.i.i.i136 = icmp eq i32 %i.ep, 0
  %i.eq = add i32 %i.ee, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i136, i32 %i.eq, i32 %i.eo ; 2 uses
  %i.er = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.er, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %i.es = zext i32 %spec.select.i.i.i to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !206, !noalias !717
  %i.ev = zext i32 %i.eu to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i11.i.i = phi i64 [ %i.ev, %bb.ah ], [ 4294967295, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %storemerge.i11.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !102 ; 2 uses
  %i.ey = urem i32 %i.ee, 3
  %.not.i13.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i13.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i: ; preds = %bb.ai
  %i.ez = add i32 %i.ee, -1
  br label %bb.aj

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %bb.ai
  %i.fa = add i32 %i.ee, 2                        ; 2 uses
  %i.fb = icmp eq i32 %i.fa, -1
  br i1 %i.fb, label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i
  %.sink.i1428.i.i = phi i32 [ %i.ez, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i ], [ %i.fa, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.fc = zext i32 %.sink.i1428.i.i to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !206, !noalias !718
  %i.ff = zext i32 %i.fe to i64
  br label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %bb.aj, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i15.i.i = phi i64 [ %i.ff, %bb.aj ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %storemerge.i15.i.i
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !102 ; 2 uses
  %i.fi = sext i32 %i.en to i64
  %i.fj = icmp sgt i64 %indvars.iv297, %i.fi
  %i.fk = sext i32 %i.ex to i64
  %i.fl = icmp sgt i64 %indvars.iv297, %i.fk
  %or.cond.i = select i1 %i.fj, i1 %i.fl, i1 false
  %i.fm = sext i32 %i.fh to i64
  %i.fn = icmp sgt i64 %indvars.iv297, %i.fm
  %or.cond40.i = select i1 %or.cond.i, i1 %i.fn, i1 false
  br i1 %or.cond40.i, label %bb.ak, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.ak:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ak
  %i.fo = mul nsw i32 %i.fh, %4
  %i.fp = mul nsw i32 %i.ex, %4
  %i.fq = mul nsw i32 %i.en, %4
  %i.fr = sext i32 %i.fp to i64                   ; 2 uses
  %i.fs = sext i32 %i.fo to i64                   ; 2 uses
  %i.ft = sext i32 %i.fq to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %2, i64 %i.fr ; 4 uses
  %invariant.gep49.i = getelementptr [4 x i8], ptr %2, i64 %i.fs ; 4 uses
  %invariant.gep51.i = getelementptr [4 x i8], ptr %2, i64 %i.ft ; 4 uses
  br i1 %min.iters.check390, label %.lr.ph.i137.preheader, label %vector.memcheck385

vector.memcheck385:                               ; preds = %.lr.ph.preheader.i
  %7 = sub i64 %i.eb, %i.a                        ; 2 uses
  %8 = shl nsw i64 %i.ft, 2
  %i.fu = sub i64 %8, %7
  %diff.check = icmp ugt i64 %i.fu, -32
  %i.fv = shl nsw i64 %i.fs, 2
  %i.fw = sub i64 %i.fv, %7
  %diff.check386 = icmp ugt i64 %i.fw, -32
  %conflict.rdx = or i1 %diff.check, %diff.check386
  %i.fx = shl nsw i64 %i.fr, 2
  %9 = add i64 %i.fx, %i.a
  %i.fy = sub i64 %9, %i.eb
  %diff.check387 = icmp ugt i64 %i.fy, -32
  %conflict.rdx388 = or i1 %conflict.rdx, %diff.check387
  br i1 %conflict.rdx388, label %.lr.ph.i137.preheader, label %vector.body393

vector.body393:                                   ; preds = %vector.memcheck385, %vector.body393
  %index394 = phi i64 [ %index.next401, %vector.body393 ], [ 0, %vector.memcheck385 ] ; 5 uses
  %i.fz = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index394 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 16
  %wide.load395 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !102
  %wide.load396 = load <4 x i32>, ptr %i.ga, align 4, !tbaa !102
  %i.gb = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %index394 ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  %wide.load397 = load <4 x i32>, ptr %i.gb, align 4, !tbaa !102
  %wide.load398 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !102
  %i.gd = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %index394 ; 2 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 16
  %wide.load399 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !102
  %wide.load400 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !102
  %i.gf = add <4 x i32> %wide.load397, %wide.load395
  %i.gg = add <4 x i32> %wide.load398, %wide.load396
  %i.gh = sub <4 x i32> %i.gf, %wide.load399
  %i.gi = sub <4 x i32> %i.gg, %wide.load400
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index394 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store <4 x i32> %i.gh, ptr %i.gj, align 4, !tbaa !102
  store <4 x i32> %i.gi, ptr %i.gk, align 4, !tbaa !102
  %index.next401 = add nuw i64 %index394, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next401, %n.vec392
  br i1 %i.gl, label %middle.block402, label %vector.body393, !llvm.loop !690

middle.block402:                                  ; preds = %vector.body393
  br i1 %cmp.n403, label %.loopexit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %vector.memcheck385, %.lr.ph.preheader.i, %middle.block402
  %indvars.iv.i138.ph = phi i64 [ 0, %vector.memcheck385 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec392, %middle.block402 ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol

.lr.ph.i137.prol:                                 ; preds = %.lr.ph.i137.preheader
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i138.ph
  %i.gm = load i32, ptr %gep.i.prol, align 4, !tbaa !102
  %gep50.i.prol = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.i138.ph
  %i.gn = load i32, ptr %gep50.i.prol, align 4, !tbaa !102
  %gep52.i.prol = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.i138.ph
  %i.go = load i32, ptr %gep52.i.prol, align 4, !tbaa !102
  %i.gp = add i32 %i.gn, %i.gm
  %i.gq = sub i32 %i.gp, %i.go
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i138.ph
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !102
  %indvars.iv.next.i139.prol = or disjoint i64 %indvars.iv.i138.ph, 1
  br label %.lr.ph.i137.prol.loopexit

.lr.ph.i137.prol.loopexit:                        ; preds = %.lr.ph.i137.prol, %.lr.ph.i137.preheader
  %indvars.iv.i138.unr = phi i64 [ %indvars.iv.i138.ph, %.lr.ph.i137.preheader ], [ %indvars.iv.next.i139.prol, %.lr.ph.i137.prol ]
  %i.gs = icmp eq i64 %indvars.iv.i138.ph, %i.dn
  br i1 %i.gs, label %.loopexit, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137
  %indvars.iv.i138 = phi i64 [ %indvars.iv.next.i139.1, %.lr.ph.i137 ], [ %indvars.iv.i138.unr, %.lr.ph.i137.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i138
  %i.gt = load i32, ptr %gep.i, align 4, !tbaa !102
  %gep50.i = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.i138
  %i.gu = load i32, ptr %gep50.i, align 4, !tbaa !102
  %gep52.i = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.i138
  %i.gv = load i32, ptr %gep52.i, align 4, !tbaa !102
  %i.gw = add i32 %i.gu, %i.gt
  %i.gx = sub i32 %i.gw, %i.gv
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i138
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !102
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i138, 1 ; 4 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i139
  %i.gz = load i32, ptr %gep.i.1, align 4, !tbaa !102
  %gep50.i.1 = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.next.i139
  %i.ha = load i32, ptr %gep50.i.1, align 4, !tbaa !102
  %gep52.i.1 = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.next.i139
  %i.hb = load i32, ptr %gep52.i.1, align 4, !tbaa !102
  %i.hc = add i32 %i.ha, %i.gz
  %i.hd = sub i32 %i.hc, %i.hb
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i139
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !102
  %indvars.iv.next.i139.1 = add nuw nsw i64 %indvars.iv.i138, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i139.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.i137, !llvm.loop !691

.loopexit:                                        ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137, %middle.block402, %bb.ak
  %i.hf = add nsw i32 %.085245, 1                 ; 2 uses
  %i.hg = icmp eq i32 %i.hf, 4
  br i1 %i.hg, label %.preheader231, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.al:                                            ; preds = %bb.af
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i173 = icmp eq ptr %.sroa.0201.0, null
  br i1 %.not.i.i.i173, label %_ZNSt6vectorIiSaIiEED2Ev.exit179, label %bb.bt

_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, %.loopexit
  %.186 = phi i32 [ %i.hf, %.loopexit ], [ %.085245, %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i ], [ %.085245, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  br i1 %.083246, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %bb.an

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %i.hi = add nuw i32 %.sroa.0191.0244, 1         ; 2 uses
  %i.hj = urem i32 %i.hi, 3
  %.not.i.i140 = icmp eq i32 %i.hj, 0
  %i.hk = add i32 %.sroa.0191.0244, -2
  %spec.select.i.i = select i1 %.not.i.i140, i32 %i.hk, i32 %i.hi ; 2 uses
  %i.hl = icmp eq i32 %spec.select.i.i, -1
  br i1 %i.hl, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141: ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.hm = zext i32 %spec.select.i.i to i64
  %i.hn = load ptr, ptr %i.dh, align 8, !tbaa !183, !noalias !719
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hm
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !185, !noalias !719 ; 3 uses
  %i.hq = icmp eq i32 %i.hp, -1
  br i1 %i.hq, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.am

bb.am:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141
  %i.hr = add nuw i32 %i.hp, 1                    ; 2 uses
  %i.hs = urem i32 %i.hr, 3
  %.not.i1.i = icmp eq i32 %i.hs, 0
  %i.ht = add i32 %i.hp, -2
  %spec.select.i2.i = select i1 %.not.i1.i, i32 %i.ht, i32 %i.hr
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.an:                                            ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %i.hu = urem i32 %.sroa.0191.0244, 3
  %.not.i.i142 = icmp eq i32 %i.hu, 0
  br i1 %.not.i.i142, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.an
  %i.hv = add i32 %.sroa.0191.0244, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.an
  %i.hw = add i32 %.sroa.0191.0244, 2             ; 2 uses
  %i.hx = icmp eq i32 %i.hw, -1
  br i1 %i.hx, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i9.i = phi i32 [ %i.hv, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.hw, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  %i.hy = zext i32 %.sink.i9.i to i64
  %i.hz = load ptr, ptr %i.dh, align 8, !tbaa !183, !noalias !720
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hy
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !185, !noalias !720 ; 4 uses
  %i.ic = icmp eq i32 %i.ib, -1
  br i1 %i.ic, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143
  %i.id = urem i32 %i.ib, 3
  %.not.i1.i144 = icmp eq i32 %i.id, 0
  br i1 %.not.i1.i144, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ie = add i32 %i.ib, -1
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.aq:                                            ; preds = %bb.ao
  %i.if = add i32 %i.ib, 2
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143, %bb.ap, %bb.aq, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141, %bb.am
  %.sroa.0191.1 = phi i32 [ -1, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141 ], [ %spec.select.i2.i, %bb.am ], [ %i.ie, %bb.ap ], [ %i.if, %bb.aq ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143 ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  %i.ig = icmp eq i32 %.sroa.0191.1, %i.dr
  br i1 %i.ig, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ih = icmp eq i32 %.sroa.0191.1, -1
  %or.cond = and i1 %.083246, %i.ih
  br i1 %or.cond, label %bb.as, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152

bb.as:                                            ; preds = %bb.ar
  br i1 %brmerge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i147, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i147: ; preds = %bb.as
  %i.ii = load ptr, ptr %i.dh, align 8, !tbaa !183, !noalias !721
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.dx
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !185, !noalias !721 ; 4 uses
  %i.il = icmp eq i32 %i.ik, -1
  br i1 %i.il, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %bb.at

bb.at:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i147
  %i.im = urem i32 %i.ik, 3
  %.not.i1.i149 = icmp eq i32 %i.im, 0
  br i1 %.not.i1.i149, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.in = add i32 %i.ik, -1
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152

bb.av:                                            ; preds = %bb.at
  %i.io = add i32 %i.ik, 2
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152

_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152: ; preds = %bb.au, %bb.av, %bb.ar
  %.sroa.0191.2 = phi i32 [ %.sroa.0191.1, %bb.ar ], [ %i.in, %bb.au ], [ %i.io, %bb.av ] ; 2 uses
  %.184 = phi i1 [ %.083246, %bb.ar ], [ false, %bb.au ], [ false, %bb.av ]
  %.not226 = icmp eq i32 %.sroa.0191.2, -1
  br i1 %.not226, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, !llvm.loop !704

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge: ; preds = %bb.as, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i147, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ip = icmp sgt i32 %.186, 0
end_hunk_1
