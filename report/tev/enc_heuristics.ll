Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_heuristics?download=true
inline.NumInlined: 3479
inline.NumDeleted: 1819
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN3jxl16ReconstructImageERKNS_11FrameHeaderERKNS_17PassesSharedStateERKNSt3__16vectorINS6_10unique_ptrINS_7ACImageENS6_14default_deleteIS9_EEEENS6_9allocatorISC_EEEEPNS_10ThreadPoolE:_ZN3jxl11FrameHeader10UpdateFlagEbm.exit
  store ptr %i.hf, ptr %i.cp, align 8, !tbaa !205
  %i.hl = getelementptr inbounds nuw i8, ptr %i.r, i64 344
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !276
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hp) #25
  br label %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i.i.i.i.i

_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i.i.i.i.i: ; preds = %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i.i.i.i.i, %bb.j
  %i.hq = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl13ColorEncodingE, i64 16), ptr %i.hq, align 8, !tbaa !114
  %i.hr = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !71 ; 4 uses
  %.not.i.i.i.i1.i.i.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i1.i.i.i.i.i, label %_ZNSt3__110unique_ptrIN3jxl13CodecMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i.i.i.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !72
  %i.hu = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !67
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.hs to i64
  %i.hy = sub i64 %i.hw, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef %i.hy) #25
  br label %_ZNSt3__110unique_ptrIN3jxl13CodecMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit

_ZNSt3__110unique_ptrIN3jxl13CodecMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i.i.i.i.i, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 1680) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl11FrameHeaderE, i64 16), ptr %5, align 8, !tbaa !114
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 344 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !277 ; 5 uses
  %.not.i.i.i66 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i66, label %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3__110unique_ptrIN3jxl13CodecMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit
  %i.ib = getelementptr inbounds nuw i8, ptr %5, i64 352 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !278 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.ia, %i.ic
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.id, %.lr.ph.i.i.i.i.i ], [ %i.ic, %bb.m ]
  %i.id = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -40 ; 4 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !114
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %i.id) #28, !inline_history !551
  %.not.i.i.i.i.i67 = icmp eq ptr %i.ia, %i.id
  br i1 %.not.i.i.i.i.i67, label %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !552

_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre1.i.i.i = load ptr, ptr %i.hz, align 8, !tbaa !277
  br label %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, %bb.m
  %i.ig = phi ptr [ %.pre1.i.i.i, %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i ], [ %i.ia, %bb.m ] ; 2 uses
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !278
  %i.ih = getelementptr inbounds nuw i8, ptr %5, i64 360
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !279
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ig to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.il) #25
  br label %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i, %_ZNSt3__110unique_ptrIN3jxl13CodecMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit
  %i.im = load ptr, ptr %i.db, align 8, !tbaa !76 ; 4 uses
  %.not.i.i1.i = icmp eq ptr %i.im, null
  br i1 %.not.i.i1.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i
  store ptr %i.im, ptr %i.dc, align 8, !tbaa !77
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 288
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !78
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.ir) #25
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit.i: ; preds = %bb.n, %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i
  %i.is = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.it = load i8, ptr %i.is, align 8
  %i.iu = trunc i8 %i.it to i1
  br i1 %i.iu, label %bb.o, label %_ZN3jxl11FrameHeaderD2Ev.exit

bb.o:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit.i
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !93
  %i.ix = load i64, ptr %i.is, align 8
  %i.iy = and i64 %i.ix, -2
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iy) #25
  br label %_ZN3jxl11FrameHeaderD2Ev.exit

_ZN3jxl11FrameHeaderD2Ev.exit:                    ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl11FrameHeaderC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(576) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl11FrameHeaderE, i64 16), ptr %0, align 8, !tbaa !114
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, ptr noundef nonnull align 8 dereferenceable(28) %i.b, i64 28, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl22YCbCrChromaSubsamplingE, i64 16), ptr %i.c, align 8, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.d, ptr noundef nonnull align 8 dereferenceable(14) %i.e, i64 14, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %i.g, i64 12, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !280
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load i64, ptr %i.n, align 8, !tbaa !93
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef %i.m, i64 noundef %i.o) #24
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit: ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl6PassesE, i64 16), ptr %i.p, align 8, !tbaa !114
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(140) %i.q, ptr noundef nonnull align 8 dereferenceable(140) %i.r, i64 140, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !76   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !77  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.y
  br i1 %.not.i.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8nn180100Em.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #27
  unreachable

_ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8nn180100Em.exit.i.i: ; preds = %bb.d
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #26 ; 4 uses
  store ptr %i.af, ptr %i.u, align 8, !tbaa !76
  store ptr %i.af, ptr %i.w, align 8, !tbaa !77
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad ; 2 uses
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr align 4 %i.y, i64 %i.ad, i1 false)
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !77
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2ERKS3_.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEEC2ERKS3_.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit, %_ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8nn180100Em.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.aj = load i64, ptr %i.ai, align 8
  store i64 %i.aj, ptr %i.ah, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl12BlendingInfoE, i64 16), ptr %i.ak, align 8, !tbaa !114
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.al, ptr noundef nonnull align 8 dereferenceable(25) %i.am, i64 25, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !277 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !278 ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.at, %i.ar
  br i1 %.not.i.i16, label %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEEC2ERKS5_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2ERKS3_.exit
  %2 = icmp slt i64 %i.aw, 0
  br i1 %2, label %bb.g, label %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNKSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.an) #27
  unreachable

_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i: ; preds = %bb.f
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #26 ; 6 uses
  store ptr %i.ax, ptr %i.an, align 8, !tbaa !277
  store ptr %i.ax, ptr %i.ap, align 8, !tbaa !278
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store ptr %i.ay, ptr %i.aq, align 8, !tbaa !279
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %i.ar, %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i ] ; 2 uses
  %.01113.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.ax, %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl12BlendingInfoE, i64 16), ptr %.01113.i.i.i.i.i, align 8, !tbaa !114
  %i.az = getelementptr inbounds nuw i8, ptr %.01113.i.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.az, ptr noundef nonnull align 8 dereferenceable(25) %i.ba, i64 25, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01113.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.at
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !584

_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ax to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.ax, i64 %i.bf
  store ptr %i.bg, ptr %i.ap, align 8, !tbaa !278
  br label %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEEC2ERKS5_.exit

_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEEC2ERKS5_.exit: ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2ERKS3_.exit, %_ZNSt3__16vectorIN3jxl12BlendingInfoENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl14AnimationFrameE, i64 16), ptr %i.bh, align 8, !tbaa !114
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl10LoopFilterE, i64 16), ptr %i.bm, align 8, !tbaa !114
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 424
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(129) %i.bn, ptr noundef nonnull align 8 dereferenceable(129) %i.bo, i64 129, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  ret void
}

declare i32 @_ZN3jxl18OutputEncodingInfo15SetFromMetadataERKNS_13CodecMetadataE(ptr noundef nonnull align 8 dereferenceable(936), ptr noundef nonnull align 8 dereferenceable(1680)) local_unnamed_addr #4

declare i32 @_ZN3jxl18OutputEncodingInfo21MaybeSetColorEncodingERKNS_13ColorEncodingE(ptr noundef nonnull align 8 dereferenceable(936), ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN3jxl13ColorEncoding10LinearSRGBEb(i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN3jxl18PassesDecoderState4InitERKNS_11FrameHeaderE(ptr noundef nonnull align 8 dereferenceable(4552) %0, ptr noundef nonnull align 8 dereferenceable(576) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.jxl::Plane.61", align 8     ; 8 uses
  %3 = alloca %"class.std::__1::unique_ptr.157", align 8 ; 7 uses
  %4 = alloca %"class.jxl::StatusOr.62", align 8  ; 10 uses
  %5 = alloca %"class.jxl::Plane.61", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2808 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !259  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !590
  %i.f = uitofp i32 %i.e to float
  %i.g = fadd float %i.f, -2.000000e+00
  %i.h = tail call noundef float @powf(float noundef 8.000000e-01, float noundef %i.g) #28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2872
  store float %i.h, ptr %i.i, align 8, !tbaa !591
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !592
  %i.l = uitofp i32 %i.k to float
  %i.m = fadd float %i.l, -2.000000e+00
  %i.n = tail call noundef float @powf(float noundef 8.000000e-01, float noundef %i.m) #28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2876
  store float %i.n, ptr %i.o, align 4, !tbaa !593
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3016
  store ptr null, ptr %i.q, align 8, !tbaa !594
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !281
  store ptr %i.t, ptr %i.s, align 8, !tbaa !282
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3064
  store i8 0, ptr %i.u, align 8, !tbaa !595
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3065
  store i8 0, ptr %i.v, align 1, !tbaa !596
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3068
  store i32 1, ptr %i.w, align 4, !tbaa !597
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3088
  store atomic i32 0, ptr %i.x seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !207
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 456
  call void @_ZN3jxl18GetUpsamplingStageEP22JxlMemoryManagerStructRKNS_19CustomTransformDataEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::unique_ptr.157") align 8 %3, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(1220) %i.aa, i64 noundef 0, i64 noundef 3) #28
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !283
  store ptr null, ptr %3, align 8, !tbaa !283
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !283 ; 3 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !283
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit, label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEEaSB8nn180100EOS5_.exit

_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEEaSB8nn180100EOS5_.exit: ; preds = %bb.a
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #28, !inline_history !585
  %.pr = load ptr, ptr %3, align 8, !tbaa !283    ; 3 uses
  store ptr null, ptr %3, align 8, !tbaa !283
  %.not.i.i7 = icmp eq ptr %.pr, null
  br i1 %.not.i.i7, label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit, label %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i8

_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i8: ; preds = %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEEaSB8nn180100EOS5_.exit
  %i.ah = load ptr, ptr %.pr, align 8, !tbaa !114
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %.pr) #28, !inline_history !2
  br label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit

_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit: ; preds = %bb.a, %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEEaSB8nn180100EOS5_.exit, %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 452
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !284
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !259 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !598
  %i.ap = add i64 %i.ao, 4                        ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !599
  %i.as = add i64 %i.ar, 4                        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.at = icmp ult i64 %i.ap, 4294967296
  %i.au = icmp ult i64 %i.as, 4294967296
  %or.cond = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.av = trunc nuw i64 %i.as to i32
  %i.aw = trunc nuw i64 %i.ap to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !600
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %i.aw, i32 noundef %i.av, i64 noundef 4) #28, !noalias !600
  %i.ax = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %i.c, i64 noundef 0) #28, !noalias !600 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  br i1 %i.ay, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.ax, ptr %i.az, align 8, !tbaa !111, !alias.scope !600
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.c
  store i32 0, ptr %i.az, align 8, !tbaa !111, !alias.scope !600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.bb) #28
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !108, !noalias !600
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !108, !alias.scope !600
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.d, %.critedge.i
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bf) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !600
  %.pre = load i32, ptr %i.az, align 8, !tbaa !111 ; 2 uses
  %i.bg = icmp eq i32 %.pre, 0
  br i1 %i.bg, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(60) %4, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bj) #28
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !108, !noalias !601
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !108, !alias.scope !601
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2904
end_hunk_0
