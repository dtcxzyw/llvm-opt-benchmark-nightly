Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/VC5Decompressor?download=true
inline.NumInlined: 1818
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZNK8rawspeed15VC5Decompressor7Wavelet11LowPassBand6decodeEv:bb.a
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit._crit_edge.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.t = icmp eq i32 %i.k, 0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.v = add nuw nsw i32 %.sroa.2.0.copyload, 8
  br i1 %i.t, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit._crit_edge.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.w = zext nneg i32 %i.q to i64
  %i.x = zext nneg i32 %i.k to i64
  %wide.trip.count40 = zext nneg i32 %i.n to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv37 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next38, %._crit_edge ] ; 2 uses
  %.sroa.012.032 = phi i64 [ 0, %.preheader.preheader ], [ %i.bf, %._crit_edge ]
  %.sroa.6.031 = phi i32 [ 0, %.preheader.preheader ], [ %i.bd, %._crit_edge ]
  %.sroa.1415.030 = phi i32 [ 0, %.preheader.preheader ], [ %.sroa.1415.2, %._crit_edge ]
  %i.y = mul nuw nsw i64 %indvars.iv37, %i.w
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.f, align 8
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.y
  br label %bb.c

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit._crit_edge.split: ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  ret void

._crit_edge:                                      ; preds = %bb.h
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit._crit_edge.split, label %.preheader, !llvm.loop !7014

bb.c:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.sroa.012.126 = phi i64 [ %.sroa.012.032, %.preheader ], [ %i.bf, %bb.h ] ; 2 uses
  %.sroa.6.125 = phi i32 [ %.sroa.6.031, %.preheader ], [ %i.bd, %bb.h ] ; 5 uses
  %.sroa.1415.124 = phi i32 [ %.sroa.1415.030, %.preheader ], [ %.sroa.1415.2, %bb.h ] ; 5 uses
  %i.aa = load i16, ptr %i.u, align 8, !tbaa !6962 ; 4 uses
  %i.ab = zext nneg i16 %i.aa to i32              ; 3 uses
  %i.ac = icmp samesign ult i32 %.sroa.6.125, 65
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp ne i16 %i.aa, 0
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp ult i16 %i.aa, 33
  tail call void @llvm.assume(i1 %i.ae)
  %.not.i.i = icmp samesign ult i32 %.sroa.6.125, %i.ab
  br i1 %.not.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.af = add nuw nsw i32 %.sroa.1415.124, 4      ; 2 uses
  %.not.i.i.i = icmp samesign ugt i32 %i.af, %.sroa.2.0.copyload
  br i1 %.not.i.i.i, label %bb.f, label %bb.e, !prof !6920

bb.e:                                             ; preds = %bb.d
  %i.ag = zext nneg i32 %.sroa.1415.124 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ag
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.ai = icmp samesign ugt i32 %.sroa.1415.124, %i.v
  br i1 %i.ai, label %.invoke, label %bb.g, !prof !6920

.invoke:                                          ; preds = %bb.f, %bb.b
  %i.aj = phi ptr [ @.str.38, %bb.b ], [ @.str.40, %bb.f ]
  %i.ak = phi ptr [ @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE, %bb.b ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.f ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak) #22
          to label %.cont unwind label %bb.i

.cont:                                            ; preds = %.invoke
  unreachable

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.2.0.copyload, i32 %.sroa.1415.124) ; 3 uses
  %i.al = add nuw nsw i32 %.sroa.speculated27.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.2.0.copyload, i32 %i.al)
  %i.am = sub nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.speculated27.i.i.i.i ; 2 uses
  %i.an = icmp samesign ult i32 %i.am, 5
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = zext nneg i32 %.sroa.speculated27.i.i.i.i to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ao
  %i.aq = zext nneg i32 %i.am to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.ap, i64 %i.aq, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.ah, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i)
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i32 %.sroa.6.125, 32
  %i.au = sub nuw nsw i32 32, %.sroa.6.125
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl nuw i64 %i.as, %i.av
  %i.ax = or i64 %i.aw, %.sroa.012.126
  br label %bb.h

bb.h:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i, %bb.c
  %.sroa.1415.2 = phi i32 [ %i.af, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i ], [ %.sroa.1415.124, %bb.c ] ; 2 uses
  %i.ay = phi i64 [ %i.ax, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i ], [ %.sroa.012.126, %bb.c ] ; 2 uses
  %i.az = phi i32 [ %i.at, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i ], [ %.sroa.6.125, %bb.c ]
  %i.ba = sub nuw nsw i32 64, %i.ab
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = lshr i64 %i.ay, %i.bb
  %i.bd = sub nsw i32 %i.az, %i.ab                ; 2 uses
  %i.be = zext nneg i16 %i.aa to i64
  %i.bf = shl i64 %i.ay, %i.be                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv
  %i.bh = trunc i64 %i.bc to i16
  store i16 %i.bh, ptr %i.bg, align 2, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !7015

bb.i:                                             ; preds = %.invoke, %bb.a
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed15VC5Decompressor7Wavelet12HighPassBand6decodeEv(ptr dead_on_unwind noalias writable sret(%"struct.rawspeed::VC5Decompressor::BandData") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %2 = alloca %class.DeRLVer, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7016, !nonnull !112, !align !122 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !6961 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !28 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load i16, ptr %i.d, align 8, !tbaa !6975 ; 2 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !7017
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i64 0, ptr %i.f, align 8, !tbaa !7019
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store i32 0, ptr %i.g, align 8, !tbaa !7021
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !7022
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !7023
  %i.j = icmp sgt i32 %.sroa.2.0.copyload, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ult i32 %.sroa.2.0.copyload, 4
  br i1 %i.k, label %bb.b, label %_ZZNK8rawspeed15VC5Decompressor7Wavelet12HighPassBand6decodeEvEN7DeRLVerC2ERKNS_20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS5_EEEENS_10Array1DRefIKhEEs.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.38, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE) #22
  unreachable

_ZZNK8rawspeed15VC5Decompressor7Wavelet12HighPassBand6decodeEvEN7DeRLVerC2ERKNS_20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS5_EEEENS_10Array1DRefIKhEEs.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i16 %i.e, ptr %i.l, align 8, !tbaa !7026
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 50 ; 4 uses
  store i16 0, ptr %i.m, align 2, !tbaa !7032
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 4 uses
  store i32 0, ptr %i.n, align 4, !tbaa !7033
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !113, !nonnull !112, !align !122 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !6966
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !6967
  tail call void @_ZN8rawspeed15VC5Decompressor8BandDataC2Eii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.q, i32 noundef %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !113, !nonnull !112, !align !122 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !6967 ; 2 uses
  %.not46 = icmp eq i32 %i.w, 0
  br i1 %.not46, label %._crit_edge48.thread, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZZNK8rawspeed15VC5Decompressor7Wavelet12HighPassBand6decodeEvEN7DeRLVerC2ERKNS_20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS5_EEEENS_10Array1DRefIKhEEs.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load i32, ptr %i.u, align 8, !tbaa !6966 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %._crit_edge48.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ac = add nuw nsw i32 %.sroa.2.0.copyload, 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = zext i32 %i.aa to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %.preheader.preheader
  %.pre.i2379 = phi i64 [ %.pre.i2381, %._crit_edge ], [ 0, %.preheader.preheader ]
  %3 = phi i32 [ %.promoted4369, %._crit_edge ], [ 0, %.preheader.preheader ]
  %i.ak = phi i32 [ %.promoted62, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.pre.i60 = phi i16 [ %.pre.i62, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.promoted = phi i32 [ %i.ei, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.01247 = phi i32 [ %i.ax, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.al = load i32, ptr %i.x, align 4             ; 2 uses
  %i.am = load i32, ptr %i.y, align 8
  %i.an = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ao = icmp sge i32 %i.an, %i.al
  %i.ap = icmp samesign ult i32 %.01247, %i.am
  %i.aq = mul nuw nsw i32 %i.an, %.01247
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.t, align 8
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ar
  %i.at = zext nneg i32 %i.al to i64
  br label %bb.c

._crit_edge48:                                    ; preds = %._crit_edge
  %i.au = icmp eq i32 %i.ei, 0
  br i1 %i.au, label %._crit_edge48.thread, label %.invoke109

._crit_edge48.thread:                             ; preds = %.preheader.lr.ph, %_ZZNK8rawspeed15VC5Decompressor7Wavelet12HighPassBand6decodeEvEN7DeRLVerC2ERKNS_20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS5_EEEENS_10Array1DRefIKhEEs.exit, %._crit_edge48
  %i.av = invoke i64 @_ZN8rawspeed15VC5Decompressor6getRLVERKNS_20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS2_EEEERNS_14BitStreamerMSBE(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc15 unwind label %bb.p   ; 2 uses

.noexc15:                                         ; preds = %._crit_edge48.thread
  %.sroa.01.0.extract.trunc.i.i = trunc i64 %i.av to i16 ; 2 uses
  %.sroa.43.0.extract.shift.i.i = lshr i64 %i.av, 32 ; 2 uses
  %.sroa.43.0.extract.trunc.i.i = trunc nuw i64 %.sroa.43.0.extract.shift.i.i to i32
  store i16 %.sroa.01.0.extract.trunc.i.i, ptr %i.m, align 2, !tbaa !29
  store i32 %.sroa.43.0.extract.trunc.i.i, ptr %i.n, align 4, !tbaa !28
  %.not1.i = icmp eq i16 %.sroa.01.0.extract.trunc.i.i, 1
  %.not2.i = icmp eq i64 %.sroa.43.0.extract.shift.i.i, 0
  %or.cond.i = and i1 %.not1.i, %.not2.i
  br i1 %or.cond.i, label %_ZZNK8rawspeed15VC5Decompressor7Wavelet12HighPassBand6decodeEvEN7DeRLVer13verifyIsAtEndEv.exit, label %.invoke109

.invoke109:                                       ; preds = %.noexc15, %._crit_edge48
  %i.aw = phi ptr [ @.str.43, %._crit_edge48 ], [ @.str.44, %.noexc15 ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.aw, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK8rawspeed15VC5Decompressor7Wavelet12HighPassBand6decodeEvEN7DeRLVer13verifyIsAtEndEv) #22
          to label %.cont110 unwind label %bb.p

.cont110:                                         ; preds = %.invoke109
  unreachable

._crit_edge:                                      ; preds = %..thread_crit_edge.i
  %i.ax = add nuw nsw i32 %.01247, 1              ; 2 uses
  %.not = icmp eq i32 %i.ax, %i.w
  br i1 %.not, label %._crit_edge48, label %.lr.ph, !llvm.loop !7034

bb.c:                                             ; preds = %.lr.ph, %..thread_crit_edge.i
  %.promoted8.i.i.i = phi i64 [ %.pre.i2379, %.lr.ph ], [ %.pre.i2381, %..thread_crit_edge.i ] ; 3 uses
  %.promoted4371 = phi i32 [ %3, %.lr.ph ], [ %.promoted4369, %..thread_crit_edge.i ] ; 7 uses
  %.promoted63 = phi i32 [ %i.ak, %.lr.ph ], [ %.promoted62, %..thread_crit_edge.i ] ; 6 uses
  %.pre.i = phi i16 [ %.pre.i60, %.lr.ph ], [ %.pre.i62, %..thread_crit_edge.i ]
  %i.ay = phi i32 [ %.promoted, %.lr.ph ], [ %i.ei, %..thread_crit_edge.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %..thread_crit_edge.i ] ; 3 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.d, label %..thread_crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.ba = icmp samesign ult i32 %.promoted63, 65
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp sgt i32 %.promoted4371, -1
  tail call void @llvm.assume(i1 %i.bb)
  %.not.i5.i = icmp samesign ult i32 %.promoted63, 32
  br i1 %.not.i5.i, label %bb.e, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bc = add nuw nsw i32 %.promoted4371, 4       ; 3 uses
  %.not.i.i.i = icmp samesign ugt i32 %i.bc, %.sroa.2.0.copyload
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !6920

bb.f:                                             ; preds = %bb.e
  %i.bd = zext nneg i32 %.promoted4371 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.bd
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.bf = icmp samesign ugt i32 %.promoted4371, %i.ac
  br i1 %i.bf, label %bb.h, label %bb.i, !prof !6920

bb.h:                                             ; preds = %bb.g
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.40, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv) #22
          to label %.noexc25 unwind label %bb.o

.noexc25:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.2.0.copyload, i32 %.promoted4371) ; 3 uses
  %i.bg = add nuw nsw i32 %.sroa.speculated27.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.2.0.copyload, i32 %i.bg)
  %i.bh = sub nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.speculated27.i.i.i.i ; 2 uses
  %i.bi = icmp samesign ult i32 %i.bh, 5
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = zext nneg i32 %.sroa.speculated27.i.i.i.i to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.bj
  %i.bl = zext nneg i32 %i.bh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bk, i64 %i.bl, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i: ; preds = %bb.i, %bb.f
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i = phi ptr [ %.sroa.0.i.i.i, %bb.i ], [ %i.be, %bb.f ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bm = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i)
  %i.bn = zext i32 %i.bm to i64
  %i.bo = or disjoint i32 %.promoted63, 32
  %i.bp = sub nuw nsw i32 32, %.promoted63
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl nuw i64 %i.bn, %i.bq
  %i.bs = or i64 %i.br, %.promoted8.i.i.i
  store i32 %i.bc, ptr %i.i, align 8, !tbaa !7023
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i: ; preds = %bb.d, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i
  %.promoted4370 = phi i32 [ %i.bc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i ], [ %.promoted4371, %bb.d ]
  %i.bt = phi i64 [ %i.bs, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i ], [ %.promoted8.i.i.i, %bb.d ] ; 2 uses
  %i.bu = phi i32 [ %i.bo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i ], [ %.promoted63, %bb.d ]
  %i.bv = lshr i64 %i.bt, 53                      ; 2 uses
  %i.bw = load ptr, ptr %i.ad, align 8, !tbaa !6946
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !28 ; 3 uses
  %i.bz = ashr i32 %i.by, 9
  %i.ca = and i32 %i.by, 255                      ; 4 uses
  %i.cb = icmp samesign ult i32 %i.ca, 33
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = sub nuw nsw i32 %i.bu, %i.ca            ; 3 uses
  store i32 %i.cc, ptr %i.g, align 8, !tbaa !7021
  %i.cd = zext nneg i32 %i.ca to i64
  %i.ce = shl i64 %i.bt, %i.cd                    ; 3 uses
  store i64 %i.ce, ptr %i.f, align 8, !tbaa !7019
  %.not18.i.i = icmp eq i32 %i.by, 0
  br i1 %.not18.i.i, label %bb.j, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit.i

bb.j:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i
  %i.cf = icmp eq i32 %i.ca, 0
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = add nsw i32 %i.cc, -11                  ; 2 uses
  store i32 %i.cg, ptr %i.g, align 8, !tbaa !7021
  %i.ch = shl i64 %i.ce, 11                       ; 2 uses
  store i64 %i.ch, ptr %i.f, align 8, !tbaa !7019
  %.sroa.0.0.extract.trunc.i.i = trunc nuw nsw i64 %i.bv to i32 ; 2 uses
  %i.ci = load ptr, ptr %i.af, align 8, !tbaa !6929
  %i.cj = load ptr, ptr %i.ae, align 8, !tbaa !6881
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 2
  %i.co = add nsw i64 %i.cn, -1                   ; 2 uses
  %i.cp = icmp ugt i64 %i.co, 11
  br i1 %i.cp, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.j
  %i.cq = load ptr, ptr %i.ag, align 8, !tbaa !6881
  %i.cr = load ptr, ptr %i.ah, align 8
  br label %bb.k

.loopexit.i.i:                                    ; preds = %bb.l, %bb.k
  %i.cs = icmp ugt i64 %i.co, %i.dd
  br i1 %i.cs, label %bb.k, label %._crit_edge.i.i

bb.k:                                             ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %i.ct = phi i32 [ %i.cg, %.lr.ph.i.i ], [ %i.cx, %.loopexit.i.i ] ; 3 uses
  %.sroa.0.031.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i, %.lr.ph.i.i ], [ %i.db, %.loopexit.i.i ]
  %.sroa.5.030.i.i = phi i8 [ 11, %.lr.ph.i.i ], [ %i.dc, %.loopexit.i.i ]
  %i.cu = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %i.cy, %.loopexit.i.i ] ; 2 uses
  %i.cv = icmp samesign ult i32 %i.ct, 65
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = icmp ne i32 %i.ct, 0
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = add nsw i32 %i.ct, -1                   ; 3 uses
  store i32 %i.cx, ptr %i.g, align 8, !tbaa !7021
  %i.cy = shl i64 %i.cu, 1                        ; 4 uses
  %i.cz = shl i32 %.sroa.0.031.i.i, 1
  %.lobit.i.i = lshr i64 %i.cu, 63
  %i.da = trunc nuw nsw i64 %.lobit.i.i to i32
  %i.db = or disjoint i32 %i.cz, %i.da            ; 3 uses
  %i.dc = add i8 %.sroa.5.030.i.i, 1              ; 4 uses
  %i.dd = zext i8 %i.dc to i64                    ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !28 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !28 ; 2 uses
  %.not28.i.i = icmp ult i32 %i.df, %i.dh
  br i1 %.not28.i.i, label %.critedge.preheader.i.i, label %.loopexit.i.i

.critedge.preheader.i.i:                          ; preds = %bb.k
  %i.di = zext i32 %i.df to i64
  %wide.trip.count.i.i = zext i32 %i.dh to i64
  br label %.critedge.i.i

bb.l:                                             ; preds = %.critedge.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.critedge.i.i, !llvm.loop !7036

.critedge.i.i:                                    ; preds = %bb.l, %.critedge.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.di, %.critedge.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.l ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.i.i ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !6923
  %i.dm = icmp eq i8 %i.dc, %i.dl
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = load i32, ptr %i.dj, align 4, !tbaa !6921
  %i.do = icmp eq i32 %i.dn, %i.db
  br i1 %i.do, label %_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit.i, label %bb.l

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i
  store i64 %i.cy, ptr %i.f, align 8, !tbaa !7019
  %i.dp = zext i8 %i.dc to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.5.0.lcssa.i.i = phi i32 [ %i.dp, %._crit_edge.i.i ], [ 11, %bb.j ]
  %.sroa.0.0.lcssa.i.i = phi i32 [ %i.db, %._crit_edge.i.i ], [ %.sroa.0.0.extract.trunc.i.i, %bb.j ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.41, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %.sroa.0.0.lcssa.i.i, i32 noundef %.sroa.5.0.lcssa.i.i) #22
          to label %.noexc26 unwind label %bb.o

.noexc26:                                         ; preds = %.loopexit
  unreachable

_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit.i: ; preds = %.critedge.i.i
  store i64 %i.cy, ptr %i.f, align 8, !tbaa !7019
  %i.dq = load ptr, ptr %i.ai, align 8, !tbaa !6881
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !28
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit.i: ; preds = %_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit.i, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i
  %.promoted67 = phi i32 [ %i.cc, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i ], [ %i.cx, %_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit.i ] ; 3 uses
  %i.dt = phi i64 [ %i.ce, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i ], [ %i.cy, %_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit.i ] ; 3 uses
  %.0.i.i = phi i32 [ %i.bz, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i ], [ %i.ds, %_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit.i ] ; 2 uses
  %i.du = lshr i32 %.0.i.i, 9
  %i.dv = trunc i32 %i.du to i16                  ; 3 uses
  %.not.i24 = icmp eq i16 %i.dv, 0
  br i1 %.not.i24, label %.noexc20, label %bb.m

bb.m:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit.i
  %i.dw = icmp ne i32 %.promoted67, 0
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = add nsw i32 %.promoted67, -1            ; 2 uses
  store i32 %i.dx, ptr %i.g, align 8, !tbaa !7021
  %i.dy = shl i64 %i.dt, 1                        ; 2 uses
  store i64 %i.dy, ptr %i.f, align 8, !tbaa !7019
  %i.dz = sub i16 0, %i.dv
  %.not467.i = icmp slt i64 %i.dt, 0
  %spec.select.i = select i1 %.not467.i, i16 %i.dz, i16 %i.dv
  br label %.noexc20

.noexc20:                                         ; preds = %bb.m, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit.i
  %.pre.i2382 = phi i64 [ %i.dt, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit.i ], [ %i.dy, %bb.m ]
  %.promoted66 = phi i32 [ %.promoted67, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit.i ], [ %i.dx, %bb.m ]
  %.0.i = phi i16 [ 0, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit.i ], [ %spec.select.i, %bb.m ] ; 2 uses
  %i.ea = and i32 %.0.i.i, 511                    ; 3 uses
  store i16 %.0.i, ptr %i.m, align 2, !tbaa !29
  store i32 %i.ea, ptr %i.n, align 4, !tbaa !28
  %i.eb = tail call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.0.i, i16 %i.e) ; 2 uses
  %i.ec = extractvalue { i16, i1 } %i.eb, 1
  br i1 %i.ec, label %.invoke, label %bb.n

bb.n:                                             ; preds = %.noexc20
  %i.ed = extractvalue { i16, i1 } %i.eb, 0       ; 2 uses
  store i16 %i.ed, ptr %i.m, align 2, !tbaa !7032
  %i.ee = icmp eq i32 %i.ea, 0
  br i1 %i.ee, label %.invoke, label %..thread_crit_edge.i

.invoke:                                          ; preds = %bb.n, %.noexc20
  %i.ef = phi ptr [ @.str.42, %.noexc20 ], [ @.str.39, %bb.n ]
  %i.eg = phi ptr [ @__PRETTY_FUNCTION__._ZZZNK8rawspeed15VC5Decompressor7Wavelet12HighPassBand6decodeEvEN7DeRLVer6decodeEvENKUlsE_clEs, %.noexc20 ], [ @__PRETTY_FUNCTION__._ZZNK8rawspeed15VC5Decompressor7Wavelet12HighPassBand6decodeEvEN7DeRLVer6decodeEv, %bb.n ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.eg) #22
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

..thread_crit_edge.i:                             ; preds = %bb.c, %bb.n
  %.pre.i2381 = phi i64 [ %.pre.i2382, %bb.n ], [ %.promoted8.i.i.i, %bb.c ] ; 2 uses
  %.promoted4369 = phi i32 [ %.promoted4370, %bb.n ], [ %.promoted4371, %bb.c ] ; 2 uses
  %.promoted62 = phi i32 [ %.promoted66, %bb.n ], [ %.promoted63, %bb.c ] ; 2 uses
  %.pre.i62 = phi i16 [ %i.ed, %bb.n ], [ %.pre.i, %bb.c ] ; 3 uses
  %i.eh = phi i32 [ %i.ea, %bb.n ], [ %i.ay, %bb.c ]
  %i.ei = add nsw i32 %i.eh, -1                   ; 4 uses
  store i32 %i.ei, ptr %i.n, align 4, !tbaa !7033
  tail call void @llvm.assume(i1 %i.ao)
  %i.ej = icmp samesign ult i64 %indvars.iv, %i.at
  tail call void @llvm.assume(i1 %i.ej)
  tail call void @llvm.assume(i1 %i.ap)
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv
  store i16 %.pre.i62, ptr %i.ek, align 2, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not13 = icmp eq i64 %indvars.iv.next, %i.aj
  br i1 %.not13, label %._crit_edge, label %bb.c, !llvm.loop !7037

bb.o:                                             ; preds = %.invoke, %.loopexit, %bb.h
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %.invoke109, %._crit_edge48.thread
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.el, %bb.o ], [ %i.em, %bb.p ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !79 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !77
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.et) #34
  br label %_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit

_ZN8rawspeed15VC5Decompressor8BandDataD2Ev.exit:  ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %.pn

_ZZNK8rawspeed15VC5Decompressor7Wavelet12HighPassBand6decodeEvEN7DeRLVer13verifyIsAtEndEv.exit: ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8rawspeed15VC5Decompressor30createWaveletBandDecodingTasksERb(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1000) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !6752
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !129
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %1) #35, !call_target !5650
  %.val = load i8, ptr %1, align 1, !tbaa !109, !range !111, !noundef !112
  %i.j = trunc nuw i8 %.val to i1
  br i1 %i.j, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !124  ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !6752
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !129
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %1) #35, !call_target !5650
  %.val.1 = load i8, ptr %1, align 1, !tbaa !109, !range !111, !noundef !112
  %i.t = trunc nuw i8 %.val.1 to i1
  br i1 %i.t, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !123
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !124  ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !6752
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !129
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(88) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 1 dereferenceable(1) %1) #35, !call_target !5650
  %.val.2 = load i8, ptr %1, align 1, !tbaa !109, !range !111, !noundef !112
  %i.ad = trunc nuw i8 %.val.2 to i1
  br i1 %i.ad, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !123
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !124 ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !6752
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !129
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %1) #35, !call_target !5650
  %.val.3 = load i8, ptr %1, align 1, !tbaa !109, !range !111, !noundef !112
  %i.an = trunc nuw i8 %.val.3 to i1
  br i1 %i.an, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.c
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !124 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !6752
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !129
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 1 dereferenceable(1) %1) #35, !call_target !5650
  %.val.150 = load i8, ptr %1, align 1, !tbaa !109, !range !111, !noundef !112
  %i.aw = trunc nuw i8 %.val.150 to i1
  br i1 %i.aw, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.ax = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !124 ; 2 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !6752
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !129
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(88) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %1) #35, !call_target !5650
  %.val.1.152 = load i8, ptr %1, align 1, !tbaa !109, !range !111, !noundef !112
  %i.bf = trunc nuw i8 %.val.1.152 to i1
  br i1 %i.bf, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !123
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !124 ; 2 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !6752
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !129
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(88) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %1) #35, !call_target !5650
  %.val.2.154 = load i8, ptr %1, align 1, !tbaa !109, !range !111, !noundef !112
  %i.bo = trunc nuw i8 %.val.2.154 to i1
  br i1 %i.bo, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = load ptr, ptr %i.ae, align 8, !tbaa !123
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !124 ; 2 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !6752
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !129
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(88) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 1 dereferenceable(1) %1) #35, !call_target !5650
  %.val.3.156 = load i8, ptr %1, align 1, !tbaa !109, !range !111, !noundef !112
  %i.bx = trunc nuw i8 %.val.3.156 to i1
  br i1 %i.bx, label %.loopexit, label %.critedge.157

.critedge.157:                                    ; preds = %bb.f
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !124 ; 2 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !6752
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !129
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(88) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 1 dereferenceable(1) %1) #35, !call_target !5650
  %.val.260 = load i8, ptr %1, align 1, !tbaa !109, !range !111, !noundef !112
  %i.cg = trunc nuw i8 %.val.260 to i1
  br i1 %i.cg, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.critedge.157
  %i.ch = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !124 ; 2 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !6752
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !129
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(88) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 1 dereferenceable(1) %1) #35, !call_target !5650
  %.val.1.262 = load i8, ptr %1, align 1, !tbaa !109, !range !111, !noundef !112
  %i.cp = trunc nuw i8 %.val.1.262 to i1
  br i1 %i.cp, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cq = load ptr, ptr %i.u, align 8, !tbaa !123
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !124 ; 2 uses
  %i.ct = load ptr, ptr %0, align 8, !tbaa !6752
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !129
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  tail call void %i.cx(ptr noundef nonnull align 8 dereferenceable(88) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 1 dereferenceable(1) %1) #35, !call_target !5650
  %.val.2.264 = load i8, ptr %1, align 1, !tbaa !109, !range !111, !noundef !112
  %i.cy = trunc nuw i8 %.val.2.264 to i1
  br i1 %i.cy, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_0
