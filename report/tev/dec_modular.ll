Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_modular?download=true
inline.NumInlined: 1430
inline.NumDeleted: 612
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN3jxl19ModularFrameDecoder16FinalizeDecodingERKNS_11FrameHeaderEPNS_18PassesDecoderStateEPNS_10ThreadPoolEb:bb.a
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !161 ; 2 uses
  %.not6.i.i.i.i.i20 = icmp eq ptr %i.ev, %i.ex
  br i1 %.not6.i.i.i.i.i20, label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i26, label %.lr.ph.i.i.i.i.i21

.lr.ph.i.i.i.i.i21:                               ; preds = %bb.x, %.lr.ph.i.i.i.i.i21
  %.07.i.i.i.i.i22 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i21 ], [ %i.ex, %bb.x ]
  %i.ey = getelementptr inbounds i8, ptr %.07.i.i.i.i.i22, i64 -72 ; 4 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !167
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %i.ey) #22, !inline_history !1
  %.not.i.i.i.i.i23 = icmp eq ptr %i.ev, %i.ey
  br i1 %.not.i.i.i.i.i23, label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i24, label %.lr.ph.i.i.i.i.i21, !llvm.loop !0

_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i24: ; preds = %.lr.ph.i.i.i.i.i21
  %.pre1.i.i.i25 = load ptr, ptr %i.eu, align 8, !tbaa !131
  br label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i26

_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i26: ; preds = %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i24, %bb.x
  %i.fb = phi ptr [ %.pre1.i.i.i25, %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i24 ], [ %i.ev, %bb.x ] ; 2 uses
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !161
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !132
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fb to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fg) #25
  br label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i27

_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i27: ; preds = %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i26, %bb.w
  %i.fh = load ptr, ptr %8, align 8, !tbaa !130   ; 5 uses
  %.not.i.i1.i28 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i1.i28, label %_ZN3jxl5ImageD2Ev.exit36, label %bb.y

bb.y:                                             ; preds = %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i27
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !160 ; 2 uses
  %.not6.i.i.i.i2.i29 = icmp eq ptr %i.fh, %i.fj
  br i1 %.not6.i.i.i.i2.i29, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i35, label %.lr.ph.i.i.i.i3.i30

.lr.ph.i.i.i.i3.i30:                              ; preds = %bb.y, %.lr.ph.i.i.i.i3.i30
  %.07.i.i.i.i4.i31 = phi ptr [ %i.fk, %.lr.ph.i.i.i.i3.i30 ], [ %i.fj, %bb.y ] ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %.07.i.i.i.i4.i31, i64 -88 ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %.07.i.i.i.i4.i31, i64 -64
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fl) #22
  %.not.i.i.i.i5.i32 = icmp eq ptr %i.fh, %i.fk
  br i1 %.not.i.i.i.i5.i32, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i33, label %.lr.ph.i.i.i.i3.i30, !llvm.loop !2

_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i33: ; preds = %.lr.ph.i.i.i.i3.i30
  %.pre1.i.i6.i34 = load ptr, ptr %8, align 8, !tbaa !130
  br label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i35

_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i35: ; preds = %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i33, %bb.y
  %i.fm = phi ptr [ %.pre1.i.i6.i34, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i33 ], [ %i.fh, %bb.y ] ; 2 uses
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !160
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !129
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fr) #25
  br label %_ZN3jxl5ImageD2Ev.exit36

_ZN3jxl5ImageD2Ev.exit36:                         ; preds = %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i27, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %_ZN3jxl5ImageD2Ev.exit36
  %.sroa.038.2 = phi i32 [ %.sroa.038.1, %_ZN3jxl5ImageD2Ev.exit36 ], [ 0, %bb.a ]
  ret i32 %.sroa.038.2
}

declare void @_ZN3jxl5ImageC1EP22JxlMemoryManagerStruct(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #6

declare void @_ZN3jxl5Image5CloneERKS0_(ptr dead_on_unwind writable sret(%"class.jxl::StatusOr") align 8, ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #6

declare void @_ZN3jxl5Image15undo_transformsERKNS_8weighted6HeaderEPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl19ModularFrameDecoder16DecodeQuantTableEP22JxlMemoryManagerStructmmPNS_9BitReaderEPNS_13QuantEncodingEmPS0_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #5 align 2 {
bb.a:
  %7 = alloca %"class.jxl::StatusOr", align 16    ; 14 uses
  %8 = alloca %"class.jxl::Image", align 16       ; 14 uses
  %9 = alloca %"struct.jxl::ModularOptions", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 224 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 2 uses
  %i.c = tail call i32 @_ZN3jxl8F16Coder4ReadEPNS_9BitReaderEPf(ptr noundef %3, ptr noundef nonnull %i.b) #22 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %i.b, align 8, !tbaa !16
  %i.f = fcmp olt float %i.e, f0x322BCC77
  br i1 %i.f, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN3jxl5Image6CreateEP22JxlMemoryManagerStructmmii(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %7, ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 8, i32 noundef 3) #22
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.h = load i32, ptr %i.g, align 16, !tbaa !128 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZN3jxl8StatusOrINS_5ImageEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.m = load <2 x ptr>, ptr %7, align 16, !tbaa !129, !noalias !524
  store <2 x ptr> %i.m, ptr %8, align 16, !tbaa !129, !alias.scope !524
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.u = load ptr, ptr %i.n, align 16, !tbaa !129, !noalias !524
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %7, i8 0, i64 24, i1 false), !noalias !524
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !131, !noalias !524
  %i.w = load <2 x ptr>, ptr %i.s, align 16, !tbaa !132, !noalias !524
  %i.x = insertelement <4 x ptr> poison, ptr %i.u, i64 0
  %i.y = insertelement <4 x ptr> %i.x, ptr %i.v, i64 1
  %i.z = shufflevector <2 x ptr> %i.w, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aa = shufflevector <4 x ptr> %i.y, <4 x ptr> %i.z, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.aa, ptr %i.k, align 16, !tbaa !133, !alias.scope !524
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false), !noalias !524
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ab, ptr noundef nonnull align 16 dereferenceable(48) %i.ac, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN3jxl14ModularOptionsC2Ev(ptr noundef nonnull align 8 dereferenceable(145) %9) #24
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp ult i64 %5, 17
  br i1 %i.ad, label %_ZNK3jxl15ModularStreamId2IDERKNS_15FrameDimensionsE.exit, label %.critedge

_ZNK3jxl15ModularStreamId2IDERKNS_15FrameDimensionsE.exit: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 248
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !193
  %i.ag = mul i64 %i.af, 3
  %i.ah = add nuw nsw i64 %5, 1
  %i.ai = add i64 %i.ah, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 280
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 304
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 472
  %i.am = call i32 @_ZN3jxl24ModularGenericDecompressEPNS_9BitReaderERNS_5ImageEPNS_11GroupHeaderEmPNS_14ModularOptionsEbPKNSt3__16vectorINS_20PropertyDecisionNodeENS8_9allocatorISA_EEEEPKNS_7ANSCodeEPKNS9_IhNSB_IhEEEEb(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef null, i64 noundef %i.ai, ptr noundef nonnull %9, i1 noundef zeroext true, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i1 noundef zeroext false) #22 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.critedge80, label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.ao = call i32 @_ZN3jxl24ModularGenericDecompressEPNS_9BitReaderERNS_5ImageEPNS_11GroupHeaderEmPNS_14ModularOptionsEbPKNSt3__16vectorINS_20PropertyDecisionNodeENS8_9allocatorISA_EEEEPKNS_7ANSCodeEPKNS9_IhNSB_IhEEEEb(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef null, i64 noundef 0, ptr noundef nonnull %9, i1 noundef zeroext true, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #22 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.critedge80, label %.critedge

.critedge80:                                      ; preds = %_ZNK3jxl15ModularStreamId2IDERKNS_15FrameDimensionsE.exit, %bb.f
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !16  ; 3 uses
  %.not70 = icmp eq ptr %i.aq, null
  br i1 %.not70, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge80
  %i.ar = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 3 uses
  %i.as = mul i64 %2, %1                          ; 2 uses
  %i.at = mul i64 %i.as, 3
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef %i.at) #24
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !16
  %.pre = load ptr, ptr %i.ar, align 8, !tbaa !343
  br label %bb.i

bb.h:                                             ; preds = %.critedge80
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !344
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !343 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 2
  %i.bb = mul i64 %2, %1                          ; 2 uses
  %i.bc = mul i64 %i.bb, 3
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h, %bb.g
  %factor.op.mul114.pre-phi = phi i64 [ %i.bb, %bb.h ], [ %i.as, %bb.g ] ; 2 uses
  %i.be = phi ptr [ %i.aw, %bb.h ], [ %.pre, %bb.g ] ; 3 uses
  %.not72115.not = icmp eq i64 %2, 0
  %i.bf = load ptr, ptr %8, align 16              ; 6 uses
  %.not71112.not = icmp eq i64 %1, 0
  %or.cond = or i1 %.not72115.not, %.not71112.not
  br i1 %or.cond, label %.critedge, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !182
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !183
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.preheader.us.preheader, %..critedge74_crit_edge.us.us
  %.064116.us.us = phi i64 [ 0, %.preheader.us.preheader ], [ %i.bs, %..critedge74_crit_edge.us.us ] ; 3 uses
  %i.bk = mul i64 %i.bj, %.064116.us.us
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bl, i64 64) ]
  %i.bm = mul i64 %.064116.us.us, %1
  %i.bn = getelementptr [4 x i8], ptr %i.be, i64 %i.bm
  br label %bb.j

10:                                               ; preds = %bb.j
  %11 = add nuw i64 %.063113.us.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %11, %1
  br i1 %exitcond.not, label %..critedge74_crit_edge.us.us, label %bb.j, !llvm.loop !522

bb.j:                                             ; preds = %.lr.ph.us.us, %10
  %.063113.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %11, %10 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.063113.us.us
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !19 ; 2 uses
  %i.bq = getelementptr [4 x i8], ptr %i.bn, i64 %.063113.us.us
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !19
  %i.br = icmp slt i32 %i.bp, 1
  br i1 %i.br, label %.critedge, label %10

..critedge74_crit_edge.us.us:                     ; preds = %10
  %i.bs = add nuw i64 %.064116.us.us, 1           ; 2 uses
  %exitcond123.not = icmp eq i64 %i.bs, %2
  br i1 %exitcond123.not, label %..critedge76_crit_edge.split.us.us, label %.lr.ph.us.us, !llvm.loop !523

..critedge76_crit_edge.split.us.us:               ; preds = %..critedge74_crit_edge.us.us
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !182
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !183
  %i.bx = getelementptr [4 x i8], ptr %i.be, i64 %factor.op.mul114.pre-phi
  br label %.lr.ph.us.us.1

.lr.ph.us.us.1:                                   ; preds = %..critedge74_crit_edge.us.us.1, %..critedge76_crit_edge.split.us.us
  %.064116.us.us.1 = phi i64 [ 0, %..critedge76_crit_edge.split.us.us ], [ %i.ch, %..critedge74_crit_edge.us.us.1 ] ; 3 uses
  %i.by = mul i64 %i.bw, %.064116.us.us.1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.by ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bz, i64 64) ]
  %i.ca = mul i64 %.064116.us.us.1, %1
  %i.cb = getelementptr [4 x i8], ptr %i.bx, i64 %i.ca
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.us.us.1
  %.063113.us.us.1 = phi i64 [ 0, %.lr.ph.us.us.1 ], [ %i.cg, %bb.l ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.063113.us.us.1
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !19 ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %i.cb, i64 %.063113.us.us.1
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !19
  %i.cf = icmp slt i32 %i.cd, 1
  br i1 %i.cf, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = add nuw i64 %.063113.us.us.1, 1         ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.cg, %1
  br i1 %exitcond.1.not, label %..critedge74_crit_edge.us.us.1, label %bb.k, !llvm.loop !522

..critedge74_crit_edge.us.us.1:                   ; preds = %bb.l
  %i.ch = add nuw i64 %.064116.us.us.1, 1         ; 2 uses
  %exitcond123.1.not = icmp eq i64 %i.ch, %2
  br i1 %exitcond123.1.not, label %..critedge76_crit_edge.split.us.us.1, label %.lr.ph.us.us.1, !llvm.loop !523

..critedge76_crit_edge.split.us.us.1:             ; preds = %..critedge74_crit_edge.us.us.1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 216
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !182
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bf, i64 192
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !183
  %.idx = shl i64 %factor.op.mul114.pre-phi, 3
  %i.cm = getelementptr i8, ptr %i.be, i64 %.idx
  br label %.lr.ph.us.us.2

.lr.ph.us.us.2:                                   ; preds = %..critedge74_crit_edge.us.us.2, %..critedge76_crit_edge.split.us.us.1
  %.064116.us.us.2 = phi i64 [ 0, %..critedge76_crit_edge.split.us.us.1 ], [ %i.cw, %..critedge74_crit_edge.us.us.2 ] ; 3 uses
  %i.cn = mul i64 %i.cl, %.064116.us.us.2
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.co, i64 64) ]
  %i.cp = mul i64 %.064116.us.us.2, %1
  %i.cq = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.us.us.2
  %.063113.us.us.2 = phi i64 [ 0, %.lr.ph.us.us.2 ], [ %i.cv, %bb.n ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.063113.us.us.2
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !19 ; 2 uses
  %i.ct = getelementptr [4 x i8], ptr %i.cq, i64 %.063113.us.us.2
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !19
  %i.cu = icmp slt i32 %i.cs, 1
  br i1 %i.cu, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = add nuw i64 %.063113.us.us.2, 1         ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.cv, %1
  br i1 %exitcond.2.not, label %..critedge74_crit_edge.us.us.2, label %bb.m, !llvm.loop !522

..critedge74_crit_edge.us.us.2:                   ; preds = %bb.n
  %i.cw = add nuw i64 %.064116.us.us.2, 1         ; 2 uses
  %exitcond123.2.not = icmp eq i64 %i.cw, %2
  br i1 %exitcond123.2.not, label %.critedge, label %.lr.ph.us.us.2, !llvm.loop !523

.critedge:                                        ; preds = %bb.j, %bb.k, %..critedge74_crit_edge.us.us.2, %bb.m, %bb.i, %bb.h, %bb.f, %_ZNK3jxl15ModularStreamId2IDERKNS_15FrameDimensionsE.exit, %bb.e
  %.sroa.092.0 = phi i32 [ 0, %..critedge74_crit_edge.us.us.2 ], [ 1, %bb.h ], [ %i.ao, %bb.f ], [ %i.am, %_ZNK3jxl15ModularStreamId2IDERKNS_15FrameDimensionsE.exit ], [ 1, %bb.e ], [ 0, %bb.i ], [ 1, %bb.m ], [ 1, %bb.k ], [ 1, %bb.j ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !168 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i, label %_ZN3jxl15HistogramParamsD2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 112
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !169
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !170
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cy to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.de) #25
  br label %_ZN3jxl15HistogramParamsD2Ev.exit.i

_ZN3jxl15HistogramParamsD2Ev.exit.i:              ; preds = %bb.o, %.critedge
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !143 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i, label %_ZN3jxl14ModularOptionsD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN3jxl15HistogramParamsD2Ev.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !171
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !172
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dg to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dm) #25
  br label %_ZN3jxl14ModularOptionsD2Ev.exit

_ZN3jxl14ModularOptionsD2Ev.exit:                 ; preds = %_ZN3jxl15HistogramParamsD2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.dn = load ptr, ptr %i.o, align 8, !tbaa !131 ; 5 uses
  %.not.i.i.i81 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i81, label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZN3jxl14ModularOptionsD2Ev.exit
  %i.do = load ptr, ptr %i.q, align 16, !tbaa !161 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.dn, %i.do
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i ], [ %i.do, %bb.q ]
  %i.dp = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 4 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !167
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %i.dp) #22, !inline_history !1
  %.not.i.i.i.i.i = icmp eq ptr %i.dn, %i.dp
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre1.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !131
  br label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, %bb.q
  %i.ds = phi ptr [ %.pre1.i.i.i, %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i ], [ %i.dn, %bb.q ] ; 2 uses
  store ptr %i.dn, ptr %i.q, align 16, !tbaa !161
  %i.dt = load ptr, ptr %i.r, align 8, !tbaa !132
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #25
  br label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i, %_ZN3jxl14ModularOptionsD2Ev.exit
  %i.dx = load ptr, ptr %8, align 16, !tbaa !130  ; 5 uses
  %.not.i.i1.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i1.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i
  %i.dy = load ptr, ptr %i.j, align 8, !tbaa !160 ; 2 uses
  %.not6.i.i.i.i2.i = icmp eq ptr %i.dx, %i.dy
  br i1 %.not6.i.i.i.i2.i, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i3.i

.lr.ph.i.i.i.i3.i:                                ; preds = %bb.r, %.lr.ph.i.i.i.i3.i
  %.07.i.i.i.i4.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i3.i ], [ %i.dy, %bb.r ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %.07.i.i.i.i4.i, i64 -88 ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %.07.i.i.i.i4.i, i64 -64
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ea) #22
  %.not.i.i.i.i5.i = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i.i.i.i5.i, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i3.i, !llvm.loop !2

_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i3.i
  %.pre1.i.i6.i = load ptr, ptr %8, align 16, !tbaa !130
  br label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, %bb.r
  %i.eb = phi ptr [ %.pre1.i.i6.i, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i ], [ %i.dx, %bb.r ] ; 2 uses
  store ptr %i.dx, ptr %i.j, align 8, !tbaa !160
  %i.ec = load ptr, ptr %i.k, align 16, !tbaa !129
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #25
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i, %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.pr = load i32, ptr %i.g, align 16, !tbaa !128
  %i.eg = icmp eq i32 %.pr, 0
  br i1 %i.eg, label %bb.t, label %_ZN3jxl8StatusOrINS_5ImageEED2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.eh = load ptr, ptr %i.p, align 8, !tbaa !131 ; 5 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i82, label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ei = load ptr, ptr %i.s, align 16, !tbaa !161 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.eh, %i.ei
  br i1 %.not6.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.u, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i ], [ %i.ei, %bb.u ]
  %i.ej = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -72 ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !167
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %i.ej) #22, !inline_history !3
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eh, %i.ej
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre1.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !131
  br label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i.i

_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i.i: ; preds = %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i.i, %bb.u
  %i.em = phi ptr [ %.pre1.i.i.i.i, %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i.i ], [ %i.eh, %bb.u ] ; 2 uses
  store ptr %i.eh, ptr %i.s, align 16, !tbaa !161
  %i.en = load ptr, ptr %i.t, align 8, !tbaa !132
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #25
  br label %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i.i

_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i.i, %bb.t
  %i.er = load ptr, ptr %7, align 16, !tbaa !130  ; 5 uses
  %.not.i.i1.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i1.i.i, label %_ZN3jxl8StatusOrINS_5ImageEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i.i
  %i.es = load ptr, ptr %i.l, align 8, !tbaa !160 ; 2 uses
  %.not6.i.i.i.i2.i.i = icmp eq ptr %i.er, %i.es
  br i1 %.not6.i.i.i.i2.i.i, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i3.i.i

.lr.ph.i.i.i.i3.i.i:                              ; preds = %bb.v, %.lr.ph.i.i.i.i3.i.i
  %.07.i.i.i.i4.i.i = phi ptr [ %i.et, %.lr.ph.i.i.i.i3.i.i ], [ %i.es, %bb.v ] ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %.07.i.i.i.i4.i.i, i64 -88 ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %.07.i.i.i.i4.i.i, i64 -64
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.eu) #22
  %.not.i.i.i.i5.i.i = icmp eq ptr %i.er, %i.et
  br i1 %.not.i.i.i.i5.i.i, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i3.i.i, !llvm.loop !2

_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i3.i.i
  %.pre1.i.i6.i.i = load ptr, ptr %7, align 16, !tbaa !130
  br label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i.i

_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i.i: ; preds = %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i.i, %bb.v
  %i.ev = phi ptr [ %.pre1.i.i6.i.i, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i.i ], [ %i.er, %bb.v ] ; 2 uses
  store ptr %i.er, ptr %i.l, align 8, !tbaa !160
  %i.ew = load ptr, ptr %i.n, align 16, !tbaa !129
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #25
  br label %_ZN3jxl8StatusOrINS_5ImageEED2Ev.exit

_ZN3jxl8StatusOrINS_5ImageEED2Ev.exit:            ; preds = %bb.c, %bb.s, %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i.i, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i.i
  %.sroa.092.1110 = phi i32 [ %.sroa.092.0, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i.i ], [ %.sroa.092.0, %bb.s ], [ %.sroa.092.0, %_ZNSt3__16vectorIN3jxl9TransformENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i.i ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.w

bb.w:                                             ; preds = %bb.b, %bb.a, %_ZN3jxl8StatusOrINS_5ImageEED2Ev.exit
  %.sroa.092.2 = phi i32 [ %i.c, %bb.a ], [ %.sroa.092.1110, %_ZN3jxl8StatusOrINS_5ImageEED2Ev.exit ], [ 1, %bb.b ]
  ret i32 %.sroa.092.2
}

declare i32 @_ZN3jxl8F16Coder4ReadEPNS_9BitReaderEPf(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.c, label %bb.c, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #27
end_hunk_0
